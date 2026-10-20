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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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

/-! ## A227192.P8287732312763243379

`A227183(n+1)+A000217(A005811(n+1)-1)`
-/

namespace A227192.P8287732312763243379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (n + 1) + A000217 (A005811 (n + 1) - 1).toNat

end

end A227192.P8287732312763243379

noncomputable section

/-- A227192: Sum of the partial sums of the run lengths of binary expansion of n, when starting scanning from the least significant end; Row sums of A227188 and A227738.

Offset 1, canonical program `A227192.P8287732312763243379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227192 (n : ℕ) : ℤ :=
  A227192.P8287732312763243379.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A227192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256993.P4133820312878921263

`1+a(A256992(n+1)-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256993.P4133820312878921263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A256992 (n + 1) - 1).toNat

end

end A256993.P4133820312878921263

noncomputable section

/-- A256993: a(1) = 0; for n > 1, a(n) = 1 + a(A256992(n)).

Offset 1, canonical program `A256993.P4133820312878921263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256993 (n : ℕ) : ℤ :=
  (A256993.P4133820312878921263.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246016.P18249855041277099865

`(-1)^A055941(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246016.P18249855041277099865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A055941 n : ℤ)

end

end A246016.P18249855041277099865

noncomputable section

/-- A246016: a(n) = (-1)^A055941(n).

Offset 0, canonical program `A246016.P18249855041277099865`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246016.P18249855041277099865.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255071.P3876478389989175484

`A255061(n+2)-A255061(n+1)`
-/

namespace A255071.P3876478389989175484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255061 (n + 2) - A255061 (n + 1)

end

end A255071.P3876478389989175484

noncomputable section

/-- A255071: Number of steps required to reach (2^n)-2 from 2^(n+1)-2 by iterating the map x -> x - (number of runs in binary representation of x).

Offset 1, canonical program `A255071.P3876478389989175484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255071 (n : ℕ) : ℤ :=
  A255071.P3876478389989175484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256991.P15627668895340715446

`A256992(n+1)-A079559(n+1)`
-/

namespace A256991.P15627668895340715446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (n + 1) - A079559 (n + 1)

end

end A256991.P15627668895340715446

noncomputable section

/-- A256991: If A079559(n) = 1, a(n) = A213714(n) - 1, otherwise a(n) = A234017(n).

Offset 1, canonical program `A256991.P15627668895340715446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256991 (n : ℕ) : ℤ :=
  A256991.P15627668895340715446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135561.P11630210511762814417

`2^A135560(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135561.P11630210511762814417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A135560 (n + 1) : ℤ) - 1

end

end A135561.P11630210511762814417

noncomputable section

/-- A135561: a(n) = 2^A135560(n) - 1.

Offset 1, canonical program `A135561.P11630210511762814417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135561.P11630210511762814417.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182582.P17036911180797299518

`A000035(A169611(n+1))`
-/

namespace A182582.P17036911180797299518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A169611 (n + 1)).toNat

end

end A182582.P17036911180797299518

noncomputable section

/-- A182582: a(n) = (A096268(n-1) + A182581(n)) mod 2.

Offset 1, canonical program `A182582.P17036911180797299518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182582 (n : ℕ) : ℤ :=
  A182582.P17036911180797299518.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A214682.P13810190927759854394

`(n+1)/A056832(n+1)`
-/

namespace A214682.P13810190927759854394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056832 (n + 1) : ℚ)

end

end A214682.P13810190927759854394

noncomputable section

/-- A214682: Remove 2's that do not contribute to a factor of 4 from the prime factorization of n.

Offset 1, canonical program `A214682.P13810190927759854394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214682 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A214682.P13810190927759854394.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A214682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246425.P2871816530660975141

`((6*n+4)/2^A087230(n)-(2*n+1))/2`
-/

namespace A246425.P2871816530660975141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n + 4 : ℚ) / (2 : ℚ) ^ (A087230 n : ℤ) - (2 * n + 1 : ℚ)) / 2

end

end A246425.P2871816530660975141

noncomputable section

/-- A246425: In the Collatz 3x+1 problem: start at an odd number 2n+1 and find the next odd number 2m+1 in the trajectory; then a(n) = m-n.

Offset 0, canonical program `A246425.P2871816530660975141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246425 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A246425.P2871816530660975141.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268355.P15495533362919716179

`8^A244413(n+1)`
-/

namespace A268355.P15495533362919716179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A244413 (n + 1) : ℤ)

end

end A268355.P15495533362919716179

noncomputable section

/-- A268355: Highest power of 8 dividing n.

Offset 1, canonical program `A268355.P15495533362919716179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268355.P15495533362919716179.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309873.P5021135503689677303

`1-2*A096268(n)`
-/

namespace A309873.P5021135503689677303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A096268 n

end

end A309873.P5021135503689677303

noncomputable section

/-- A309873: Period-doubling turn sequence, +1 when the 2-adic valuation of n is even or -1 when odd.

Offset 1, canonical program `A309873.P5021135503689677303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873 (n : ℕ) : ℤ :=
  A309873.P5021135503689677303.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132740.P2204999059884889025

`(n+1)/A132741(n+1)`
-/

namespace A132740.P2204999059884889025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132741 (n + 1) : ℚ)

end

end A132740.P2204999059884889025

noncomputable section

/-- A132740: Largest divisor of n coprime to 10.

Offset 1, canonical program `A132740.P2204999059884889025`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132740 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132740.P2204999059884889025.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135523.P14903418965496847472

`A135560(n+1)-1`
-/

namespace A135523.P14903418965496847472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (n + 1) - 1

end

end A135523.P14903418965496847472

noncomputable section

/-- A135523: a(n) = A007814(n) + A209229(n).

Offset 1, canonical program `A135523.P14903418965496847472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135523 (n : ℕ) : ℤ :=
  A135523.P14903418965496847472.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A209675.P11812002563473211177

`A003484(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209675.P11812002563473211177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (2 * (n + 1))

end

end A209675.P11812002563473211177

noncomputable section

/-- A209675: Radon function at even positions: a(n) = A003484(2*n).

Offset 1, canonical program `A209675.P11812002563473211177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209675 (n : ℕ) : ℤ :=
  A209675.P11812002563473211177.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A209675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285388.P13702077894044627960

`(n+1)*A201555(n+1)/2^A285717(n+1)`
-/

namespace A285388.P13702077894044627960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A201555 (n + 1) : ℚ) / (2 : ℚ) ^ (A285717 (n + 1) : ℤ)

end

end A285388.P13702077894044627960

noncomputable section

/-- A285388: a(n) = numerator of ((1/n) * Sum_{k=0..n^2-1} binomial(2k,k)/4^k).

Offset 1, canonical program `A285388.P13702077894044627960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285388.P13702077894044627960.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285406.P13392758496350615043

`A056220(n+1)-A285717(n+1)`
-/

namespace A285406.P13392758496350615043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 1) - A285717 (n + 1)

end

end A285406.P13392758496350615043

noncomputable section

/-- A285406: Base-2 logarithm of denominator of Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k)*n).

Offset 1, canonical program `A285406.P13392758496350615043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285406 (n : ℕ) : ℤ :=
  A285406.P13392758496350615043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285406.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132778.P15237329709094283098

`A111650(n+1)-A051340(n)`
-/

namespace A132778.P15237329709094283098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A051340 n

end

end A132778.P15237329709094283098

noncomputable section

/-- A132778: Triangle read by rows, n-1 terms of (2n - 1) followed by n.

Offset 1, canonical program `A132778.P15237329709094283098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132778 (n : ℕ) : ℤ :=
  A132778.P15237329709094283098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133610.P10004266105813786459

`∑[A053616(n)]`
-/

namespace A133610.P10004266105813786459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P10004266105813786459

noncomputable section

/-- A133610: Partial sums of pyramidal sequence A053616.

Offset 0, canonical program `A133610.P10004266105813786459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133610 (n : ℕ) : ℤ :=
  A133610.P10004266105813786459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134199.P15346679385903110320

`A002260(n+1)+2*A132440(n)`
-/

namespace A134199.P15346679385903110320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 2 * A132440 n

end

end A134199.P15346679385903110320

noncomputable section

/-- A134199: A002260 + A134082 - I as infinite lower triangular matrices; I = Identity matrix.

Offset 0, canonical program `A134199.P15346679385903110320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134199 (n : ℕ) : ℤ :=
  A134199.P15346679385903110320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134352.P10374233049189694274

`A131577(A128621(n+1))`
-/

namespace A134352.P10374233049189694274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A128621 (n + 1)).toNat

end

end A134352.P10374233049189694274

noncomputable section

/-- A134352: A130123 * A128174.

Offset 0, canonical program `A134352.P10374233049189694274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134352 (n : ℕ) : ℤ :=
  A134352.P10374233049189694274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134402.P6512888230481502878

`A132440(abs(1-n))`
-/

namespace A134402.P6512888230481502878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 |1 - (n : ℤ)|.toNat

end

end A134402.P6512888230481502878

noncomputable section

/-- A134402: Triangle read by rows, for n > 0, n zeros followed by n.

Offset 0, canonical program `A134402.P6512888230481502878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134402 (n : ℕ) : ℤ :=
  A134402.P6512888230481502878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134866.P4777858240526918943

`∑{d}[A003989(n+1), #]`
-/

namespace A134866.P4777858240526918943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A134866.P4777858240526918943

noncomputable section

/-- A134866: Table read by antidiagonals: T(n,k) = sigma(gcd(n,k)).

Offset 1, canonical program `A134866.P4777858240526918943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134866 (n : ℕ) : ℤ :=
  (A134866.P4777858240526918943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135764.P14448543870011279856

`A075302(n)+1`
-/

namespace A135764.P14448543870011279856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075302 n + 1

end

end A135764.P14448543870011279856

noncomputable section

/-- A135764: Distribute the natural numbers in columns based on the occurrence of "2" in each prime factorization; square array A(row,col) = 2^(row-1) * ((2*col)-1), read by descending antidiagonals.

Offset 1, canonical program `A135764.P14448543870011279856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135764 (n : ℕ) : ℤ :=
  A135764.P14448543870011279856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135853.P16818106393424875175

`A134868(n+1)*A135278(n)`
-/

namespace A135853.P16818106393424875175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) * A135278 n

end

end A135853.P16818106393424875175

noncomputable section

/-- A135853: A103516 * A007318 as an infinite lower triangular matrix.

Offset 0, canonical program `A135853.P16818106393424875175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135853 (n : ℕ) : ℤ :=
  A135853.P16818106393424875175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138139.P8390411299693681906

`A005145(A106255(n+1))`
-/

namespace A138139.P8390411299693681906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A106255 (n + 1)).toNat

end

end A138139.P8390411299693681906

noncomputable section

/-- A138139: Triangle read by rows: row n contains n terms and each column lists the prime numbers A000040.

Offset 1, canonical program `A138139.P8390411299693681906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138139 (n : ℕ) : ℤ :=
  A138139.P8390411299693681906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138451.P15770755837948932279

`A122220(n+1)-A138450(n+1)`
-/

namespace A138451.P15770755837948932279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122220 (n + 1) - A138450 (n + 1)

end

end A138451.P15770755837948932279

noncomputable section

/-- A138451: a(n) = (prime(n)^6-prime(n)^2)/60.

Offset 1, canonical program `A138451.P15770755837948932279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138451 (n : ℕ) : ℤ :=
  A138451.P15770755837948932279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138458.P4441180293552606245

`A138456(n+1)-A138457(n+1)`
-/

namespace A138458.P4441180293552606245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138456 (n + 1) - A138457 (n + 1)

end

end A138458.P4441180293552606245

noncomputable section

/-- A138458: a(n) = ((n-th prime)^6-(n-th prime)^4)/24.

Offset 1, canonical program `A138458.P4441180293552606245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138458 (n : ℕ) : ℤ :=
  A138458.P4441180293552606245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139040.P11713275014664133717

`A000930(A077605(n+1)+A053616(n))`
-/

namespace A139040.P11713275014664133717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A077605 (n + 1) + A053616 n).toNat

end

end A139040.P11713275014664133717

noncomputable section

/-- A139040: Triangle read by rows: each row is an initial segment of the terms of A000930 followed by its reflection.

Offset 1, canonical program `A139040.P11713275014664133717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A139040 (n : ℕ) : ℤ :=
  A139040.P11713275014664133717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A139040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139601.P11016005463994312656

`A086271(n+1)-A128139(n)`
-/

namespace A139601.P11016005463994312656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) - A128139 n

end

end A139601.P11016005463994312656

noncomputable section

/-- A139601: Square array of polygonal numbers read by ascending antidiagonals: T(n, k) = (n + 1)*(k - 1)*k/2 + k.

Offset 0, canonical program `A139601.P11016005463994312656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139601 (n : ℕ) : ℤ :=
  A139601.P11016005463994312656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140785.P9396782372112234493

`A000040(n+2)-A000040(n+2)%A076368(n+2)`
-/

namespace A140785.P9396782372112234493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - Int.tmod (A000040 (n + 2)) (A076368 (n + 2))

end

end A140785.P9396782372112234493

noncomputable section

/-- A140785: a(n) = the single integer k, where p(n) <= k <= p(n+1), that is divisible by (p(n+1)-p(n)+1), where p(n) is the n-th prime.

Offset 1, canonical program `A140785.P9396782372112234493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140785 (n : ℕ) : ℤ :=
  A140785.P9396782372112234493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140880.P7790259496823977085

`A063929(n+1)*A074909(n)`
-/

namespace A140880.P7790259496823977085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) * A074909 n

end

end A140880.P7790259496823977085

noncomputable section

/-- A140880: Triangle read by rows, T(n,k) = Gamma(n+3)/(Gamma(k+1)*Gamma(n-k+1)) for n>=0 and 0<=k<=n.

Offset 0, canonical program `A140880.P7790259496823977085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140880 (n : ℕ) : ℤ :=
  A140880.P7790259496823977085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141388.P760566885152609055

`A098360(n+1)-A137688(n)`
-/

namespace A141388.P760566885152609055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (n + 1) - A137688 n

end

end A141388.P760566885152609055

noncomputable section

/-- A141388: Triangle T(n, k) = ( k*(n-k+1) )^3 - 2^(n-1), read by rows.

Offset 1, canonical program `A141388.P760566885152609055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141388 (n : ℕ) : ℤ :=
  A141388.P760566885152609055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141429.P4768663951979483283

`A127738(n+1)+1`
-/

namespace A141429.P4768663951979483283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127738 (n + 1) + 1

end

end A141429.P4768663951979483283

noncomputable section

/-- A141429: Triangle T(n, k) = (k+1)*(n-k+1), read by rows.

Offset 1, canonical program `A141429.P4768663951979483283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141429 (n : ℕ) : ℤ :=
  A141429.P4768663951979483283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141433.P6649970107262301922

`A141431(n+1)-A002262(n)`
-/

namespace A141433.P6649970107262301922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141431 (n + 1) - A002262 n

end

end A141433.P6649970107262301922

noncomputable section

/-- A141433: Triangle T(n, k) = (k-1)*(3*n-k), read by rows.

Offset 1, canonical program `A141433.P6649970107262301922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141433 (n : ℕ) : ℤ :=
  A141433.P6649970107262301922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141543.P279450556099849721

`A130266(A061579(n))-∑[A010054(n)]`
-/

namespace A141543.P279450556099849721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141543.P279450556099849721

noncomputable section

/-- A141543: Triangle T(n,k) read by rows: T(n,2k)=k, T(n,2k+1) = k-n, for 0<=k<=n.

Offset 0, canonical program `A141543.P279450556099849721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A141543 (n : ℕ) : ℤ :=
  A141543.P279450556099849721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A141543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141611.P818972280660966004

`(A131923(n)-A003056(n))*A003991(n+1)`
-/

namespace A141611.P818972280660966004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131923 n - A003056 n) * A003991 (n + 1)

end

end A141611.P818972280660966004

noncomputable section

/-- A141611: Triangle read by rows: T(n, k) = (n-k+1)*(k+1)*binomial(n, k).

Offset 0, canonical program `A141611.P818972280660966004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141611 (n : ℕ) : ℤ :=
  A141611.P818972280660966004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141678.P15377472097087936516

`A094565(A014132(n+1))-A094565(n+1)`
-/

namespace A141678.P15377472097087936516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094565 (A014132 (n + 1)).toNat - A094565 (n + 1)

end

end A141678.P15377472097087936516

noncomputable section

/-- A141678: Symmetrical triangle of coefficients based on invert transform of A001906.

Offset 1, canonical program `A141678.P15377472097087936516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141678 (n : ℕ) : ℤ :=
  A141678.P15377472097087936516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143070.P1854669171373980450

`eq[1, A000120(A080791(n))]`
-/

namespace A143070.P1854669171373980450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080791 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143070.P1854669171373980450

noncomputable section

/-- A143070: A positive integer n is included if the number of 0's in the binary representation of n is a power of 2 (including being possibly 1).

Offset 1, canonical program `A143070.P1854669171373980450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A143070 (n : ℕ) : ℤ :=
  (A143070.P1854669171373980450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2833 terms. -/
def A143070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143088.P10381068236285559706

`2*(A130328(n)-A130321(n))+1`
-/

namespace A143088.P10381068236285559706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130328 n - A130321 n) + 1

end

end A143088.P10381068236285559706

noncomputable section

/-- A143088: Triangle T(n,m) = (2^(m+1) - 1) * (2^(n-m+1) - 1), read by rows, 0 <= m <= n.

Offset 0, canonical program `A143088.P10381068236285559706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143088 (n : ℕ) : ℤ :=
  A143088.P10381068236285559706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143901.P12353677997150197209

`floor(A059036(n)/2)+1`
-/

namespace A143901.P12353677997150197209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059036 n : ℚ) / 2⌋ + 1

end

end A143901.P12353677997150197209

noncomputable section

/-- A143901: Rectangular array R by antidiagonals: R(m,n) = floor((m*n+1)/2).

Offset 1, canonical program `A143901.P12353677997150197209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143901 (n : ℕ) : ℤ :=
  A143901.P12353677997150197209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143902.P5916339437029833280

`ceil(A059036(n)/2)`
-/

namespace A143902.P5916339437029833280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059036 n : ℚ) / 2⌉

end

end A143902.P5916339437029833280

noncomputable section

/-- A143902: Rectangular array R by antidiagonals: R(m,n) = number of black squares.

Offset 1, canonical program `A143902.P5916339437029833280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143902 (n : ℕ) : ℤ :=
  A143902.P5916339437029833280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143976.P15673367063394364256

`ceil(A098352(n+1)/6)`
-/

namespace A143976.P15673367063394364256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098352 (n + 1) : ℚ) / 6⌉

end

end A143976.P15673367063394364256

noncomputable section

/-- A143976: Rectangular array R by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares having x + y == 1 (mod 3); then R(m,n) is the number of UNmarked squares in the rectangle [0,m] X [0,n].

Offset 1, canonical program `A143976.P15673367063394364256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A143976 (n : ℕ) : ℤ :=
  A143976.P15673367063394364256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A143976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143977.P12984671264075313918

`floor(A059036(n)/3)+1`
-/

namespace A143977.P12984671264075313918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059036 n : ℚ) / 3⌋ + 1

end

end A143977.P12984671264075313918

noncomputable section

/-- A143977: Rectangular array R by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares having |x-y| == 0 (mod 3); then R(m,n) is the number of marked squares in the rectangle [0,m] X [0,n].

Offset 1, canonical program `A143977.P12984671264075313918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A143977 (n : ℕ) : ℤ :=
  A143977.P12984671264075313918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A143977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144000.P3782749524518294279

`A004396(n+1)-A004396(n-A059036(n))`
-/

namespace A144000.P3782749524518294279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) - A004396 ((n : ℤ) - A059036 n).toNat

end

end A144000.P3782749524518294279

noncomputable section

/-- A144000: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which x + y == 0 (mod 3); then R(m,n) is the number of marked squares in the rectangle [0,m]x[0,n].

Offset 1, canonical program `A144000.P3782749524518294279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144000 (n : ℕ) : ℤ :=
  A144000.P3782749524518294279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144216.P6608110429712062976

`1-A128139(n)+n`
-/

namespace A144216.P6608110429712062976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A128139 n + (n : ℤ)

end

end A144216.P6608110429712062976

noncomputable section

/-- A144216: C(m,2)+C(n,2), m>=1, n>=1: a rectangular array R read by antidiagonals.

Offset 1, canonical program `A144216.P6608110429712062976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144216 (n : ℕ) : ℤ :=
  A144216.P6608110429712062976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144217.P17527769007908988650

`val(A131816(n), 2)`
-/

namespace A144217.P17527769007908988650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131816 n).toNat 2

end

end A144217.P17527769007908988650

noncomputable section

/-- A144217: Weight array of A144216: a rectangular array by antidiagonals.

Offset 1, canonical program `A144217.P17527769007908988650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144217 (n : ℕ) : ℤ :=
  (A144217.P17527769007908988650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144334.P8719362573491474286

`A144328(n+1)*A144330(n)`
-/

namespace A144334.P8719362573491474286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) * A144330 n

end

end A144334.P8719362573491474286

noncomputable section

/-- A144334: Triangle read by rows, A144328^2.

Offset 1, canonical program `A144334.P8719362573491474286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144334 (n : ℕ) : ℤ :=
  A144334.P8719362573491474286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144754.P1139666669672371896

`eq[1, ∑{e}[A080791(n), #]]`
-/

namespace A144754.P1139666669672371896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144754.P1139666669672371896

noncomputable section

/-- A144754: Integers that have a prime number of 0's in their binary expansion.

Offset 1, canonical program `A144754.P1139666669672371896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A144754 (n : ℕ) : ℤ :=
  (A144754.P1139666669672371896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A144754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145677.P4837885424705967050

`abs(A132013(abs(1-n)))`
-/

namespace A145677.P4837885424705967050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A132013 |1 - (n : ℤ)|.toNat)|

end

end A145677.P4837885424705967050

noncomputable section

/-- A145677: Triangle T(n, k) read by rows: T(n, 0) = 1, T(n, n) = n, n>0, T(n,k) = 0, 0 < k < n-1.

Offset 0, canonical program `A145677.P4837885424705967050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145677 (n : ℕ) : ℤ :=
  A145677.P4837885424705967050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152088.P16024274241794701574

`eq[A032741(n)+1, A080791(n)]`
-/

namespace A152088.P16024274241794701574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152088.P16024274241794701574

noncomputable section

/-- A152088: Positive integers k that when written in binary have exactly the same number of (non-leading) 0's as the number of divisors of k.

Offset 1, canonical program `A152088.P16024274241794701574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. -/
def A152088 (n : ℕ) : ℤ :=
  (A152088.P16024274241794701574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. -/
def A152088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153869.P16225442478312210075

`A132440(abs(A132440(n+1)-n))`
-/

namespace A153869.P16225442478312210075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 |A132440 (n + 1) - (n : ℤ)|.toNat

end

end A153869.P16225442478312210075

noncomputable section

/-- A153869: Triangle read by rows, A129186 * A128064(unsigned).

Offset 1, canonical program `A153869.P16225442478312210075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153869 (n : ℕ) : ℤ :=
  A153869.P16225442478312210075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154120.P5175712412237171774

`A119502(n)*A152818(n)`
-/

namespace A154120.P5175712412237171774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A152818 n

end

end A154120.P5175712412237171774

noncomputable section

/-- A154120: Array read by antidiagonals: T(n,k) = (k+1)^n*(n+k)!.

Offset 0, canonical program `A154120.P5175712412237171774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. -/
def A154120 (n : ℕ) : ℤ :=
  A154120.P5175712412237171774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. -/
def A154120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154271.P2223287504034096637

`Δ[A056832(a(A002264(n))+1)]` with `a(0)=1`
-/

namespace A154271.P2223287504034096637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A056832 (f1 (A002264 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P2223287504034096637

noncomputable section

/-- A154271: Dirichlet inverse of A154272; Fully multiplicative with a(3^e) = (-1)^e, a(p^e) = 0 for primes p <> 3.

Offset 1, canonical program `A154271.P2223287504034096637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154271 (n : ℕ) : ℤ :=
  A154271.P2223287504034096637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154614.P14846977641239755938

`A092283(n+1)+A059036(n)`
-/

namespace A154614.P14846977641239755938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092283 (n + 1) + A059036 n

end

end A154614.P14846977641239755938

noncomputable section

/-- A154614: Triangle read by rows where T(m,n) = m*n + m + n - 1, 1<=n<=m.

Offset 1, canonical program `A154614.P14846977641239755938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154614 (n : ℕ) : ℤ :=
  A154614.P14846977641239755938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154684.P4294763165931368592

`A151890(n)+A131421(n+1)`
-/

namespace A154684.P4294763165931368592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n + A131421 (n + 1)

end

end A154684.P4294763165931368592

noncomputable section

/-- A154684: Triangle read by rows where T(m,n)=2mn + m + n - 3, 1<=n<=m.

Offset 1, canonical program `A154684.P4294763165931368592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154684 (n : ℕ) : ℤ :=
  A154684.P4294763165931368592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154957.P3447130498153354160

`A106314(n+1)%2`
-/

namespace A154957.P3447130498153354160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106314 (n + 1)) 2

end

end A154957.P3447130498153354160

noncomputable section

/-- A154957: A symmetric (0,1)-triangle.

Offset 0, canonical program `A154957.P3447130498153354160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154957 (n : ℕ) : ℤ :=
  A154957.P3447130498153354160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156074.P3527024655164453660

`A086800(n+1)+3-A104887(n+1)`
-/

namespace A156074.P3527024655164453660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (n + 1) + (3 - A104887 (n + 1))

end

end A156074.P3527024655164453660

noncomputable section

/-- A156074: Triangle read by rows: T(n, k) = 3 + prime(n+1) - prime(k+1) - prime(n-k+1).

Offset 0, canonical program `A156074.P3527024655164453660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156074 (n : ℕ) : ℤ :=
  A156074.P3527024655164453660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156367.P12894126842777466498

`A002262(n)!*A085478(n)`
-/

namespace A156367.P12894126842777466498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A085478 n

end

end A156367.P12894126842777466498

noncomputable section

/-- A156367: Triangle T(n, k) = binomial(n+k, 2*k)*k!, read by rows.

Offset 0, canonical program `A156367.P12894126842777466498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A156367 (n : ℕ) : ℤ :=
  A156367.P12894126842777466498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A156367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156607.P10129258563701118720

`∑{digits}[A000040(n+1), A101660(2*#²-#)]`
-/

namespace A156607.P10129258563701118720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A101660 (2 * x ^ 2 - x)).sum

end

end A156607.P10129258563701118720

noncomputable section

/-- A156607: a(n) = number of odd decimal digits of n-th prime + number of prime decimal digits of n-th prime.

Offset 1, canonical program `A156607.P10129258563701118720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156607 (n : ℕ) : ℤ :=
  A156607.P10129258563701118720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156717.P8230165376730895281

`A085478(n)+A054142(n)`
-/

namespace A156717.P8230165376730895281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n + A054142 n

end

end A156717.P8230165376730895281

noncomputable section

/-- A156717: Triangle read by rows: T(n,m) = binomial(n + m - 1, 2*m) + binomial(2*n - m - 2, 2*(n - m - 1)).

Offset 1, canonical program `A156717.P8230165376730895281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156717 (n : ℕ) : ℤ :=
  A156717.P8230165376730895281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157512.P12851112804959864328

`and(-2, ∑[A157502(n+1)])`
-/

namespace A157512.P12851112804959864328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P12851112804959864328

noncomputable section

/-- A157512: Partial sums of A157502.

Offset 1, canonical program `A157512.P12851112804959864328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157512 (n : ℕ) : ℤ :=
  A157512.P12851112804959864328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158747.P1474725733549586908

`A000040(A086800(n+1)+1)`
-/

namespace A158747.P1474725733549586908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A086800 (n + 1) + 1).toNat

end

end A158747.P1474725733549586908

noncomputable section

/-- A158747: Triangle read by rows: T(n,m)=prime( 1+prime(n+1)-prime(m+1) ).

Offset 0, canonical program `A158747.P1474725733549586908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158747 (n : ℕ) : ℤ :=
  A158747.P1474725733549586908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159638.P8621361562681332473

`1-A159637(n)`
-/

namespace A159638.P8621361562681332473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A159637 n

end

end A159638.P8621361562681332473

noncomputable section

/-- A159638: Start with [1] and repeatedly apply the map 0 -> [01/10], 1 -> [10/01].

Offset 0, canonical program `A159638.P8621361562681332473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159638 (n : ℕ) : ℤ :=
  A159638.P8621361562681332473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159919.P16525752381521222348

`A173395(n+1)+A059036(n)`
-/

namespace A159919.P16525752381521222348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173395 (n + 1) + A059036 n

end

end A159919.P16525752381521222348

noncomputable section

/-- A159919: A square array of numbers, read by antidiagonals, called Sundaram's sieve.

Offset 1, canonical program `A159919.P16525752381521222348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159919 (n : ℕ) : ℤ :=
  A159919.P16525752381521222348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161152.P4512711989289517509

`eq[1, gcd(n, A080791(n))]`
-/

namespace A161152.P4512711989289517509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A080791 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161152.P4512711989289517509

noncomputable section

/-- A161152: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n.

Offset 1, canonical program `A161152.P4512711989289517509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161152 (n : ℕ) : ℤ :=
  (A161152.P4512711989289517509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161156.P1156421313180752501

`∩[A161154(n+1), comp[A161155(n+1)]]`
-/

namespace A161156.P1156421313180752501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161154 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161155 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A161156.P1156421313180752501

noncomputable section

/-- A161156: Positive integers n such that {the number of (non-leading) 0's in the binary representation of n} is coprime to n, and {the number of 1's in the binary representation of n} is coprime to n, but {the number of digits in the binary representation of n} is not coprime to n.

Offset 1, canonical program `A161156.P1156421313180752501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A161156 (n : ℕ) : ℤ :=
  (A161156.P1156421313180752501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A161156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161641.P16868169590258597238

`eq[0, A096268(floor(n/4))]`
-/

namespace A161641.P16868169590258597238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161641.P16868169590258597238

noncomputable section

/-- A161641: Positions n such that A010060(n) + A010060(n+4) = 1.

Offset 1, canonical program `A161641.P16868169590258597238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161641 (n : ℕ) : ℤ :=
  (A161641.P16868169590258597238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161817.P11412616101657124378

`eq[A035263(n+1), A039963(ceil(n/2))]`
-/

namespace A161817.P11412616101657124378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161817.P11412616101657124378

noncomputable section

/-- A161817: Positions n such that A010060(n) = A010060(n+5).

Offset 1, canonical program `A161817.P11412616101657124378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161817 (n : ℕ) : ℤ :=
  (A161817.P11412616101657124378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162188.P9451871027428952620

`lt[∏{e}[n, #+1], A076368(n+1)-1]`
-/

namespace A162188.P9451871027428952620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A162188.P9451871027428952620

noncomputable section

/-- A162188: Numbers k such that A001223(k) > A000005(k).

Offset 1, canonical program `A162188.P9451871027428952620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5054 terms. -/
def A162188 (n : ℕ) : ℤ :=
  (A162188.P9451871027428952620.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5054 terms. -/
def A162188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164279.P1036385505928145271

`3^A000523(n+1)*(2/3)^(A088696(n+1)-1)`
-/

namespace A164279.P1036385505928145271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000523 (n + 1) : ℤ) * ((2 : ℚ) / 3) ^ (A088696 (n + 1) - 1 : ℤ)

end

end A164279.P1036385505928145271

noncomputable section

/-- A164279: Triangle of 2^n terms per row, a Petoukhov sequence generated from (3,2).

Offset 0, canonical program `A164279.P1036385505928145271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164279.P1036385505928145271.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164281.P1689118351507972365

`A011782(A088696(n+1))`
-/

namespace A164281.P1689118351507972365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A088696 (n + 1)).toNat

end

end A164281.P1689118351507972365

noncomputable section

/-- A164281: Triangle read by rows, a Petoukhov sequence (cf. A164279) generated from (1,2).

Offset 0, canonical program `A164281.P1689118351507972365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164281 (n : ℕ) : ℤ :=
  A164281.P1689118351507972365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164874.P12027345168690341492

`A030130(n+2)`
-/

namespace A164874.P12027345168690341492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 2)

end

end A164874.P12027345168690341492

noncomputable section

/-- A164874: Triangle read by rows: T(1,1)=2; T(n,k)=2*T(n-1,k)+1, 1<=k

Offset 1, canonical program `A164874.P12027345168690341492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A164874 (n : ℕ) : ℤ :=
  A164874.P12027345168690341492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A164874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165680.P5117045185547673148

`val(A135293(n), 3)!`
-/

namespace A165680.P5117045185547673148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A135293 n).toNat 3)

end

end A165680.P5117045185547673148

noncomputable section

/-- A165680: Triangle of the divisors of the coefficients of triangles A138771 and A165675.

Offset 1, canonical program `A165680.P5117045185547673148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A165680 (n : ℕ) : ℤ :=
  (A165680.P5117045185547673148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A165680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166065.P3490208905278104305

`A057728(n+1)+Δ[A010054(n)]`
-/

namespace A166065.P3490208905278104305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166065.P3490208905278104305

noncomputable section

/-- A166065: Triangle, read by rows, given by [0,1,1,0,0,0,0,0,0,0,...] DELTA [2,-1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A166065.P3490208905278104305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166065 (n : ℕ) : ℤ :=
  A166065.P3490208905278104305.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166065.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A168258.P8738172613031762915

`A115514(1-A053616(n)+n)`
-/

namespace A168258.P8738172613031762915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (1 - A053616 n + (n : ℤ)).toNat

end

end A168258.P8738172613031762915

noncomputable section

/-- A168258: Triangle read by rows, A101688 * A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A168258.P8738172613031762915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168258 (n : ℕ) : ℤ :=
  A168258.P8738172613031762915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168281.P1468629803331935945

`2*A106314(n+1)`
-/

namespace A168281.P1468629803331935945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106314 (n + 1)

end

end A168281.P1468629803331935945

noncomputable section

/-- A168281: Triangle T(n,m) = 2*(min(n - m + 1, m))^2 read by rows.

Offset 1, canonical program `A168281.P1468629803331935945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168281 (n : ℕ) : ℤ :=
  A168281.P1468629803331935945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171127.P17353130976212097611

`eq[2, A169611(n+1)]+1`
-/

namespace A171127.P17353130976212097611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171127.P17353130976212097611

noncomputable section

/-- A171127: Numbers k such that A169611(k) = 2.

Offset 1, canonical program `A171127.P17353130976212097611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1759 terms. -/
def A171127 (n : ℕ) : ℤ :=
  (A171127.P17353130976212097611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1759 terms. -/
def A171127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171233.P2556039700440970836

`A171232(n+1)+A077049(n+1)`
-/

namespace A171233.P2556039700440970836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171232 (n + 1) + A077049 (n + 1)

end

end A171233.P2556039700440970836

noncomputable section

/-- A171233: Array, T(n,k) = 2*(n/k), if n mod k = 0; otherwise, T(n,k) = 1. Read by antidiagonals.

Offset 1, canonical program `A171233.P2556039700440970836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171233 (n : ℕ) : ℤ :=
  A171233.P2556039700440970836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171241.P9264165893758049052

`eq[3, A169611(n+1)]+1`
-/

namespace A171241.P9264165893758049052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171241.P9264165893758049052

noncomputable section

/-- A171241: Numbers k such that A169611(k) = 3.

Offset 1, canonical program `A171241.P9264165893758049052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A171241 (n : ℕ) : ℤ :=
  (A171241.P9264165893758049052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. -/
def A171241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171822.P12324693438503934281

`A054142(n)*A085478(n)`
-/

namespace A171822.P12324693438503934281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n * A085478 n

end

end A171822.P12324693438503934281

noncomputable section

/-- A171822: Triangle T(n,k) = binomial(2*n-k, k)*binomial(n+k, 2*k), read by rows.

Offset 0, canonical program `A171822.P12324693438503934281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7808 terms. -/
def A171822 (n : ℕ) : ℤ :=
  A171822.P12324693438503934281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7808 terms. -/
def A171822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171824.P9505180745158428969

`A092392(n)+A046899(n)`
-/

namespace A171824.P9505180745158428969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n + A046899 n

end

end A171824.P9505180745158428969

noncomputable section

/-- A171824: Triangle T(n,k)= binomial(n + k,n) + binomial(2*n-k,n) read by rows.

Offset 0, canonical program `A171824.P9505180745158428969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171824 (n : ℕ) : ℤ :=
  A171824.P9505180745158428969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172066.P636120753324226920

`Δ[A172065(n)-∑[A172063(n)]]`
-/

namespace A172066.P636120753324226920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172065 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172066.P636120753324226920

noncomputable section

/-- A172066: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=9.

Offset 0, canonical program `A172066.P636120753324226920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172066 (n : ℕ) : ℤ :=
  A172066.P636120753324226920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172515.P12895407565169366813

`A134868(Δ[A059563(3*n+4)])`
-/

namespace A172515.P12895407565169366813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059563 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (f1 (n + 1) - f1 n).toNat

end

end A172515.P12895407565169366813

noncomputable section

/-- A172515: First differences of A172513.

Offset 1, canonical program `A172515.P12895407565169366813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A172515 (n : ℕ) : ℤ :=
  A172515.P12895407565169366813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A172515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173261.P1878570650276901774

`A128221(A278818(n)+1)`
-/

namespace A173261.P1878570650276901774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128221 (A278818 n + 1).toNat

end

end A173261.P1878570650276901774

noncomputable section

/-- A173261: Array T(n,k) read by antidiagonals: T(n,2k)=1, T(n,2k+1)=n, n>=2, k>=0.

Offset 2, canonical program `A173261.P1878570650276901774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173261 (n : ℕ) : ℤ :=
  A173261.P1878570650276901774.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174449.P6656457030094331191

`A159623(A183572(n+1))*A159623(n)`
-/

namespace A174449.P6656457030094331191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 (A183572 (n + 1)).toNat * A159623 n

end

end A174449.P6656457030094331191

noncomputable section

/-- A174449: Triangle T(n, k, q) = n!*(n+1)!*q^k/((n-k)!(n-k+1)!) if floor(n/2) > k-1, otherwise n!*(n+1)!*q^(n-k)/(k!*(k+1)!) for q = 1, read by rows.

Offset 0, canonical program `A174449.P6656457030094331191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174449 (n : ℕ) : ℤ :=
  A174449.P6656457030094331191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174497.P1872965432205280036

`A005145(n+2)%A086800(A014132(n+1))`
-/

namespace A174497.P1872965432205280036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 2)) (A086800 (A014132 (n + 1)).toNat)

end

end A174497.P1872965432205280036

noncomputable section

/-- A174497: Triangle read by rows: T(n,k) = prime(n) mod (prime(n+1) - prime(k)) for 0 < k < n+1.

Offset 1, canonical program `A174497.P1872965432205280036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A174497 (n : ℕ) : ℤ :=
  A174497.P1872965432205280036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A174497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174996.P1086725186471035298

`(A065342(n+1)-1)%A037126(n+1)`
-/

namespace A174996.P1086725186471035298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065342 (n + 1) - 1) (A037126 (n + 1))

end

end A174996.P1086725186471035298

noncomputable section

/-- A174996: Triangle read by rows: T(n,k) = (prime(n)-1) mod prime(k).

Offset 1, canonical program `A174996.P1086725186471035298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174996 (n : ℕ) : ℤ :=
  A174996.P1086725186471035298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A174996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175332.P10633603557300615745

`A130321(n)+A043569(n+1)`
-/

namespace A175332.P10633603557300615745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A043569 (n + 1)

end

end A175332.P10633603557300615745

noncomputable section

/-- A175332: Numbers whose binary expansion is of the form 11+0*.

Offset 1, canonical program `A175332.P10633603557300615745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175332 (n : ℕ) : ℤ :=
  A175332.P10633603557300615745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175382.P11062849655442964285

`comp[A175381(n+1)-1]+1`
-/

namespace A175382.P11062849655442964285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175381 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175382.P11062849655442964285

noncomputable section

/-- A175382: Positive integers n for which there is at least one positive integer k whose binary expansion occurs as a substring in the binary expansion of n but does not divide n.

Offset 1, canonical program `A175382.P11062849655442964285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175382 (n : ℕ) : ℤ :=
  (A175382.P11062849655442964285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176644.P3173982943581009546

`A118185(n)*A158117(n)`
-/

namespace A176644.P3173982943581009546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118185 n * A158117 n

end

end A176644.P3173982943581009546

noncomputable section

/-- A176644: Triangle T(n, k) = 40^(k*(n-k)), read by rows.

Offset 0, canonical program `A176644.P3173982943581009546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A176644 (n : ℕ) : ℤ :=
  A176644.P3173982943581009546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A176644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176787.P17062270663618039594

`A084348(A212342(n+1))`
-/

namespace A176787.P17062270663618039594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084348 (A212342 (n + 1)).toNat

end

end A176787.P17062270663618039594

noncomputable section

/-- A176787: a(n) = (0!-1!+2!-3!....(-1)^(n-1)*(n-1)!) mod n.

Offset 1, canonical program `A176787.P17062270663618039594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A176787 (n : ℕ) : ℤ :=
  A176787.P17062270663618039594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A176787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176793.P313651183802322861

`A173787(A061579(n))*A173787(n)+1`
-/

namespace A176793.P313651183802322861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (A061579 n).toNat * A173787 n + 1

end

end A176793.P313651183802322861

noncomputable section

/-- A176793: A symmetrical triangle read by rows: T(n, k) = 2^n*(q^k - 1)*(q^(n - k) - 1) + 1, where q = 2.

Offset 0, canonical program `A176793.P313651183802322861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A176793 (n : ℕ) : ℤ :=
  A176793.P313651183802322861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A176793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177226.P14998823732912339926

`A000079(A086800(n+1))%A005145(n+1)`
-/

namespace A177226.P14998823732912339926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A086800 (n + 1)).toNat) (A005145 (n + 1))

end

end A177226.P14998823732912339926

noncomputable section

/-- A177226: Triangle read by rows: T(n, k) = 2^(prime(n) - prime(k)) mod prime(n), 1 <= k <= n.

Offset 1, canonical program `A177226.P14998823732912339926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177226 (n : ℕ) : ℤ :=
  A177226.P14998823732912339926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177263.P1420338553077097761

`Δ[A162608(n)+A003422(A025581(n))]`
-/

namespace A177263.P1420338553077097761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 n + A003422 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177263.P1420338553077097761

noncomputable section

/-- A177263: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k as the last entry in the first block (1<=k<=n).

Offset 1, canonical program `A177263.P1420338553077097761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177263 (n : ℕ) : ℤ :=
  A177263.P1420338553077097761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177990.P655360059528610579

`2-A133083(n+1)`
-/

namespace A177990.P655360059528610579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A133083 (n + 1)

end

end A177990.P655360059528610579

noncomputable section

/-- A177990: Triangle read by rows, variant of A070909, a cellular automaton.

Offset 1, canonical program `A177990.P655360059528610579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177990 (n : ℕ) : ℤ :=
  A177990.P655360059528610579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178831.P15740046059794676434

`A000217(A002260(n+1))*A047969(A061579(n))`
-/

namespace A178831.P15740046059794676434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A047969 (A061579 n).toNat

end

end A178831.P15740046059794676434

noncomputable section

/-- A178831: Rectangular array T(n,k) = binomial(n+1,2)*(n^k - (n-1)^k) read by antidiagonals.

Offset 1, canonical program `A178831.P15740046059794676434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4391 terms. -/
def A178831 (n : ℕ) : ℤ :=
  A178831.P15740046059794676434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4391 terms. -/
def A178831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181743.P11765594585100182491

`A007814(A181741(n+1)+1)`
-/

namespace A181743.P11765594585100182491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A181741 (n + 1) + 1).toNat

end

end A181743.P11765594585100182491

noncomputable section

/-- A181743: The exponent k which defines A181741(n) = 2^t-2^k-1.

Offset 1, canonical program `A181743.P11765594585100182491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181743 (n : ℕ) : ℤ :=
  A181743.P11765594585100182491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182660.P6706947886669951299

`A107782(n*floor(-(xor(n, -n)/(n+1))))`
-/

namespace A182660.P6706947886669951299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 ((n : ℤ) * ⌊-((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / (n + 1 : ℚ))⌋).toNat

end

end A182660.P6706947886669951299

noncomputable section

/-- A182660: a(2^(k+1)) = k; 0 everywhere else.

Offset 0, canonical program `A182660.P6706947886669951299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182660 (n : ℕ) : ℤ :=
  A182660.P6706947886669951299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182664.P15945012330009958967

`A088828(n+1)+A157502(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182664.P15945012330009958967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1) + A157502 (n + 1)

end

end A182664.P15945012330009958967

noncomputable section

/-- A182664: a(n) = A088828(n) + A157502(n).

Offset 1, canonical program `A182664.P15945012330009958967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088828, A157502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182664 (n : ℕ) : ℤ :=
  A182664.P15945012330009958967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088828, A157502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A182664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183110.P12340529520489190935

`A128064(n)+a(n-1)` with `a(0)=1`
-/

namespace A183110.P12340529520489190935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128064 n + a (n - 1)

end

end A183110.P12340529520489190935

noncomputable section

/-- A183110: Period-length of the ultimate periodic behavior of the orbit of a list [1,1,1,...,1] of n 1's under the mapping defined in the comments.

Offset 1, canonical program `A183110.P12340529520489190935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A183110 (n : ℕ) : ℤ :=
  A183110.P12340529520489190935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A183110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184097.P12072055477747539760

`A184096(A003989(n+1))`
-/

namespace A184097.P12072055477747539760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184096 (A003989 (n + 1)).toNat

end

end A184097.P12072055477747539760

noncomputable section

/-- A184097: T(n,k)=Half the number of nXk toroidal binary arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

Offset 1, canonical program `A184097.P12072055477747539760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A184097 (n : ℕ) : ℤ :=
  A184097.P12072055477747539760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A184097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184248.P3384310769192450285

`p?[n+1-A166597(n+1)%A166597(n)]`
-/

namespace A184248.P3384310769192450285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A166597 (n + 1)) (A166597 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184248.P3384310769192450285

noncomputable section

/-- A184248: Primes, q, such that for three consecutive primes, p, q & r, with p

Offset 1, canonical program `A184248.P3384310769192450285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184248 (n : ℕ) : ℤ :=
  A184248.P3384310769192450285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A184248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185376.P12395458477438105240

`A185333(2*(n+1))`
-/

namespace A185376.P12395458477438105240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185333 (2 * (n + 1))

end

end A185376.P12395458477438105240

noncomputable section

/-- A185376: Number of binary necklaces of 2n beads for which a cut exists producing a palindrome.

Offset 1, canonical program `A185376.P12395458477438105240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185376 (n : ℕ) : ℤ :=
  A185376.P12395458477438105240.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185914.P13255273733279209154

`A004736(n+1)-A053616(n)`
-/

namespace A185914.P13255273733279209154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A053616 n

end

end A185914.P13255273733279209154

noncomputable section

/-- A185914: Array: T(n,k)=k-n+1 for k>=n; T(n,k)=0 for k

Offset 1, canonical program `A185914.P13255273733279209154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185914 (n : ℕ) : ℤ :=
  A185914.P13255273733279209154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188080.P17840173988894253734

`record[(n+1)*A000007(n*A188079(n+1))]`
-/

namespace A188080.P17840173988894253734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000007 ((n : ℤ) * A188079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P17840173988894253734

noncomputable section

/-- A188080: Positions of 0 in A188079; complement of A188081.

Offset 1, canonical program `A188080.P17840173988894253734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A188080 (n : ℕ) : ℤ :=
  A188080.P17840173988894253734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A188080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188081.P10757998736830450152

`∩[A188078(n+1)+1, A188078(n+1)]`
-/

namespace A188081.P10757998736830450152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188081.P10757998736830450152

noncomputable section

/-- A188081: Positions of 1 in A188079; complement of A188080.

Offset 1, canonical program `A188081.P10757998736830450152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188081 (n : ℕ) : ℤ :=
  (A188081.P10757998736830450152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. -/
def A188081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188215.P11536711810283268516

`A080791(n)+A006257(n)`
-/

namespace A188215.P11536711810283268516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A006257 n

end

end A188215.P11536711810283268516

noncomputable section

/-- A188215: Starting with an empty list, n is inserted after the a(n)th element such that the binary representations of the list's elements are always sorted lexicographically.

Offset 0, canonical program `A188215.P11536711810283268516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A188215 (n : ℕ) : ℤ :=
  A188215.P11536711810283268516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A188215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188713.P11943041166088798751

`∩[A100724(n+1), A099627(n)]`
-/

namespace A188713.P11943041166088798751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188713.P11943041166088798751

noncomputable section

/-- A188713: Primes of the form 2^x + 2^y - 1.

Offset 1, canonical program `A188713.P11943041166088798751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A188713 (n : ℕ) : ℤ :=
  (A188713.P11943041166088798751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A188713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189013.P15026936849006250875

`comp[A189012(n+1)-1]+1`
-/

namespace A189013.P15026936849006250875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189012 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189013.P15026936849006250875

noncomputable section

/-- A189013: Positions of 1 in A189011; complement of A189012.

Offset 1, canonical program `A189013.P15026936849006250875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189013 (n : ℕ) : ℤ :=
  (A189013.P15026936849006250875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190907.P5674583236946865434

`A057977(A002262(n))*A085478(n)`
-/

namespace A190907.P5674583236946865434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (A002262 n).toNat * A085478 n

end

end A190907.P5674583236946865434

noncomputable section

/-- A190907: Triangle read by rows: T(n,k) = binomial(n+k, n-k) k! / (floor(k/2)! * floor((k+2)/2)!).

Offset 0, canonical program `A190907.P5674583236946865434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190907 (n : ℕ) : ℤ :=
  A190907.P5674583236946865434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190909.P4455590788614055220

`A056040(A002262(n))*A085478(n)`
-/

namespace A190909.P4455590788614055220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002262 n).toNat * A085478 n

end

end A190909.P4455590788614055220

noncomputable section

/-- A190909: Triangle read by rows: T(n,k) = binomial(n+k,n-k) * k! / floor(k/2)!^2.

Offset 0, canonical program `A190909.P4455590788614055220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190909 (n : ℕ) : ℤ :=
  A190909.P4455590788614055220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191019.P4122170196560416808

`p?[n*A011585(n)]`
-/

namespace A191019.P4122170196560416808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191019.P4122170196560416808

noncomputable section

/-- A191019: Rational primes that decompose in the quadratic field Q(sqrt(-19)).

Offset 1, canonical program `A191019.P4122170196560416808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A191019 (n : ℕ) : ℤ :=
  A191019.P4122170196560416808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. -/
def A191019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191063.P9795136441190372636

`p?[n*(A000038(n)-A011585(n))]`
-/

namespace A191063.P9795136441190372636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000038 n - A011585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191063.P9795136441190372636

noncomputable section

/-- A191063: Primes that are not squares mod 19.

Offset 1, canonical program `A191063.P9795136441190372636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A191063 (n : ℕ) : ℤ :=
  A191063.P9795136441190372636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A191063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191217.P5086974476563652864

`eq[1, A336937(n+1)]+1`
-/

namespace A191217.P5086974476563652864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191217.P5086974476563652864

noncomputable section

/-- A191217: Numbers k such that sigma(k) is congruent to 2 modulo 4.

Offset 1, canonical program `A191217.P5086974476563652864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7385 terms. -/
def A191217 (n : ℕ) : ℤ :=
  (A191217.P5086974476563652864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7385 terms. -/
def A191217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191898.P7435542862714692241

`∏{p}[A003989(n+1), 1-#]`
-/

namespace A191898.P7435542862714692241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))

end

end A191898.P7435542862714692241

noncomputable section

/-- A191898: Symmetric square array read by antidiagonals: T(n,1)=1, T(1,k)=1, T(n,k) = -Sum_{i=1..k-1} T(n-i,k) for n >= k, -Sum_{i=1..n-1} T(k-i,n) for n < k.

Offset 1, canonical program `A191898.P7435542862714692241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191898 (n : ℕ) : ℤ :=
  A191898.P7435542862714692241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193739.P1597501357748841903

`A065033(A143956(n+1)-1)`
-/

namespace A193739.P1597501357748841903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A143956 (n + 1) - 1).toNat

end

end A193739.P1597501357748841903

noncomputable section

/-- A193739: Mirror of the triangle A193738.

Offset 0, canonical program `A193739.P1597501357748841903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193739 (n : ℕ) : ℤ :=
  A193739.P1597501357748841903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193819.P15604382937138326338

`A059268(n)*A153861(n)`
-/

namespace A193819.P15604382937138326338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A153861 n

end

end A193819.P15604382937138326338

noncomputable section

/-- A193819: Mirror of the triangle A193818.

Offset 0, canonical program `A193819.P15604382937138326338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193819 (n : ℕ) : ℤ :=
  A193819.P15604382937138326338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193973.P2420014072884717063

`A134464(n+1)+A077028(n)`
-/

namespace A193973.P2420014072884717063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134464 (n + 1) + A077028 n

end

end A193973.P2420014072884717063

noncomputable section

/-- A193973: Triangular array: the fission of (p(n,x)) by (q(n,x)), where p(n,x)=x*p(n-1,x)+n+1 with p(0,x)=1, and q(n,x)=x*p(n-1,x)+1 with p(0,x)=1.

Offset 0, canonical program `A193973.P2420014072884717063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193973 (n : ℕ) : ℤ :=
  A193973.P2420014072884717063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193976.P17233718569355432960

`A104634(n+1)+abs(A122432(n))`
-/

namespace A193976.P17233718569355432960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + |A122432 n|

end

end A193976.P17233718569355432960

noncomputable section

/-- A193976: Mirror of the triangle A193975.

Offset 0, canonical program `A193976.P17233718569355432960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193976 (n : ℕ) : ℤ :=
  A193976.P17233718569355432960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196389.P4708616426695059720

`A167374(n)+A132440(n)`
-/

namespace A196389.P4708616426695059720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n + A132440 n

end

end A196389.P4708616426695059720

noncomputable section

/-- A196389: Triangle T(n,k), read by rows, given by (0,1,-1,0,0,0,0,0,0,0,...) DELTA (1,0,0,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A196389.P4708616426695059720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196389 (n : ℕ) : ℤ :=
  A196389.P4708616426695059720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199011.P10695752317706914514

`A153861(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A199011.P10695752317706914514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A153861 n - a (n - 1)

end

end A199011.P10695752317706914514

noncomputable section

/-- A199011: Triangle T(n,k), read by rows, given by (1,1,-1,1,0,0,0,0,0,0,0,...) DELTA (0,1,0,0,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A199011.P10695752317706914514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199011 (n : ℕ) : ℤ :=
  A199011.P10695752317706914514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A200146.P12842493773213650661

`(A009998(n)*A033918(n+1))%∑[A073423(n)]`
-/

namespace A200146.P12842493773213650661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009998 n * A033918 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200146.P12842493773213650661

noncomputable section

/-- A200146: Triangle read by rows: T(n, k) = mod(k^(n - 1), n), where 1 <= k < n.

Offset 2, canonical program `A200146.P12842493773213650661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A200146 (n : ℕ) : ℤ :=
  A200146.P12842493773213650661.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. -/
def A200146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202363.P4425557384897359934

`A127739(n+1)*A162608(A061579(n))`
-/

namespace A202363.P4425557384897359934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) * A162608 (A061579 n).toNat

end

end A202363.P4425557384897359934

noncomputable section

/-- A202363: Triangular array read by rows: T(n,k) is the number of inversion pairs ( p(i) < p(j) with i>j ) that are separated by exactly k elements in all n-permutations (where the permutation is represented in one line notation); n>=2, 0<=k<=n-2.

Offset 2, canonical program `A202363.P4425557384897359934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A202363 (n : ℕ) : ℤ :=
  A202363.P4425557384897359934.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A202363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203990.P14919765066385001405

`A106314(n+1)+A003991(n+1)`
-/

namespace A203990.P14919765066385001405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106314 (n + 1) + A003991 (n + 1)

end

end A203990.P14919765066385001405

noncomputable section

/-- A203990: Symmetric matrix based on f(i,j) = (i+j)*min(i,j), by antidiagonals.

Offset 1, canonical program `A203990.P14919765066385001405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203990 (n : ℕ) : ℤ :=
  A203990.P14919765066385001405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203996.P4927933465799713350

`A094053(n+1)+A185908(n+1)+1`
-/

namespace A203996.P4927933465799713350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (A185908 (n + 1) + 1)

end

end A203996.P4927933465799713350

noncomputable section

/-- A203996: Symmetric matrix based on f(i,j)=min{i(j+1),j(i+1)}, by antidiagonals.

Offset 1, canonical program `A203996.P4927933465799713350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203996 (n : ℕ) : ℤ :=
  A203996.P4927933465799713350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204116.P12422762952399923659

`A000225(A003989(n+1))`
-/

namespace A204116.P12422762952399923659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A003989 (n + 1)).toNat

end

end A204116.P12422762952399923659

noncomputable section

/-- A204116: Symmetric matrix based on f(i,j) = gcd(2^i-1, 2^j-1), by antidiagonals.

Offset 1, canonical program `A204116.P12422762952399923659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204116 (n : ℕ) : ℤ :=
  A204116.P12422762952399923659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204154.P17367594193220542085

`A111650(n+1)-A204028(n+1)`
-/

namespace A204154.P17367594193220542085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A204028 (n + 1)

end

end A204154.P17367594193220542085

noncomputable section

/-- A204154: Symmetric matrix based on f(i,j) = max(2i-j, 2j-i), by antidiagonals.

Offset 1, canonical program `A204154.P17367594193220542085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204154 (n : ℕ) : ℤ :=
  A204154.P17367594193220542085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204173.P5209315876622248264

`A027656(floor(log2(A131816(n))))`
-/

namespace A204173.P5209315876622248264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Nat.log 2 (A131816 n).toNat)

end

end A204173.P5209315876622248264

noncomputable section

/-- A204173: Symmetric matrix based on f(i,j)=(2i-1 if max(i,j) is odd, and 0 otherwise), by antidiagonals.

Offset 1, canonical program `A204173.P5209315876622248264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204173 (n : ℕ) : ℤ :=
  A204173.P5209315876622248264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204246.P3171406654780179534

`A204244(n+1)/A128227(n)`
-/

namespace A204246.P3171406654780179534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204244 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A204246.P3171406654780179534

noncomputable section

/-- A204246: Array given by f(i,1)=1, f(1,j)=1, f(i,i)=(i-1)!, and f(i,j)=0 otherwise, read by antidiagonals.

Offset 1, canonical program `A204246.P3171406654780179534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A204246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204246.P3171406654780179534.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A204246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204427.P7701524078715562329

`3-A204257(n+1)`
-/

namespace A204427.P7701524078715562329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A204257 (n + 1)

end

end A204427.P7701524078715562329

noncomputable section

/-- A204427: Infinite matrix: f(i,j)=(2i+j+2 mod 3), read by antidiagonals.

Offset 1, canonical program `A204427.P7701524078715562329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204427 (n : ℕ) : ℤ :=
  A204427.P7701524078715562329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204560.P13805510480467334471

`round(∑[A073423(n)²]/4)`
-/

namespace A204560.P13805510480467334471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A204560.P13805510480467334471

noncomputable section

/-- A204560: Symmetric matrix: f(i,j)=floor[(2i+2j+4)/4]-floor[(i+j+2)/4], by (constant) antidiagonals.

Offset 1, canonical program `A204560.P13805510480467334471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204560 (n : ℕ) : ℤ :=
  A204560.P13805510480467334471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204562.P5690255054464803021

`ceil(∑[(A073423(n)/2)²])`
-/

namespace A204562.P5690255054464803021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A073423 n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A204562.P5690255054464803021

noncomputable section

/-- A204562: Symmetric matrix: f(i,j) = floor((2i+2j+6)/4)-floor((i+j+3)/4), by (constant) antidiagonals.

Offset 1, canonical program `A204562.P5690255054464803021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204562 (n : ℕ) : ℤ :=
  A204562.P5690255054464803021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204985.P5770110306113503825

`2*A130328(n)`
-/

namespace A204985.P5770110306113503825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130328 n

end

end A204985.P5770110306113503825

noncomputable section

/-- A204985: Ordered differences of numbers 2^k for k>=1.

Offset 1, canonical program `A204985.P5770110306113503825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204985 (n : ℕ) : ℤ :=
  A204985.P5770110306113503825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205016.P2286842531164054448

`2*A193974(n)`
-/

namespace A205016.P2286842531164054448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193974 n

end

end A205016.P2286842531164054448

noncomputable section

/-- A205016: Ordered differences of oblong numbers.

Offset 1, canonical program `A205016.P2286842531164054448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205016 (n : ℕ) : ℤ :=
  A205016.P2286842531164054448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205128.P17383454080453045407

`A103217(n)+A098352(n+1)`
-/

namespace A205128.P17383454080453045407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n + A098352 (n + 1)

end

end A205128.P17383454080453045407

noncomputable section

/-- A205128: Ordered differences of distinct hexagonal numbers.

Offset 1, canonical program `A205128.P17383454080453045407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205128 (n : ℕ) : ℤ :=
  A205128.P17383454080453045407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205559.P2583783127805785041

`eq[3, gcd(3, A204890(n+1))]+1`
-/

namespace A205559.P2583783127805785041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205559.P2583783127805785041

noncomputable section

/-- A205559: Positions of multiples of 3 in A204890 (differences of primes).

Offset 1, canonical program `A205559.P2583783127805785041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A205559 (n : ℕ) : ℤ :=
  (A205559.P2583783127805785041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A205559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205676.P6623450324532988599

`eq[4, gcd(4, A204890(n+1))]+1`
-/

namespace A205676.P6623450324532988599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205676.P6623450324532988599

noncomputable section

/-- A205676: Positions of multiples of 4 in A204890 (differences of primes).

Offset 1, canonical program `A205676.P6623450324532988599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205676 (n : ℕ) : ℤ :=
  (A205676.P6623450324532988599.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205683.P17912161422184643973

`eq[5, gcd(5, A204890(n+1))]+1`
-/

namespace A205683.P17912161422184643973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205683.P17912161422184643973

noncomputable section

/-- A205683: Positions of multiples of 5 in A204890 (differences of primes).

Offset 1, canonical program `A205683.P17912161422184643973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A205683 (n : ℕ) : ℤ :=
  (A205683.P17912161422184643973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. -/
def A205683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205697.P9126172670200338830

`lt[A204890(n+1)%7, 1]+1`
-/

namespace A205697.P9126172670200338830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (n + 1)) 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A205697.P9126172670200338830

noncomputable section

/-- A205697: Positions of multiples of 7 in A204890 (differences of primes).

Offset 1, canonical program `A205697.P9126172670200338830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205697 (n : ℕ) : ℤ :=
  (A205697.P9126172670200338830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205711.P11359309019057096152

`eq[9, dr(A204890(n+1))]+1`
-/

namespace A205711.P11359309019057096152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A204890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205711.P11359309019057096152

noncomputable section

/-- A205711: Positions of multiples of 9 in A204890 (differences of primes).

Offset 1, canonical program `A205711.P11359309019057096152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205711 (n : ℕ) : ℤ :=
  (A205711.P11359309019057096152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. -/
def A205711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206735.P9027577083690455181

`A153861(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A206735.P9027577083690455181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153861 (n - 1) - a (n - 1)

end

end A206735.P9027577083690455181

noncomputable section

/-- A206735: Triangle T(n,k), read by rows, given by (0, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A206735.P9027577083690455181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206735 (n : ℕ) : ℤ :=
  A206735.P9027577083690455181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207409.P10666545104290844078

`A204890(n+1)%A037126(n+1)`
-/

namespace A207409.P10666545104290844078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (n + 1)) (A037126 (n + 1))

end

end A207409.P10666545104290844078

noncomputable section

/-- A207409: Triangular array: T(n,k) = prime(n) mod prime(k), 1 <= k < n.

Offset 2, canonical program `A207409.P10666545104290844078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207409 (n : ℕ) : ℤ :=
  A207409.P10666545104290844078.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207607.P5273861874523714085

`2*A085478(n)-A165253(n)`
-/

namespace A207607.P5273861874523714085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085478 n - A165253 n

end

end A207607.P5273861874523714085

noncomputable section

/-- A207607: Triangle of coefficients of polynomials v(n,x) jointly generated with A207606; see Formula section.

Offset 1, canonical program `A207607.P5273861874523714085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207607 (n : ℕ) : ℤ :=
  A207607.P5273861874523714085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207621.P2290235971314170358

`A078812(n)+A085478(n)-A165253(n)`
-/

namespace A207621.P2290235971314170358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n + (A085478 n - A165253 n)

end

end A207621.P2290235971314170358

noncomputable section

/-- A207621: Triangle of coefficients of polynomials v(n,x) jointly generated with A207620; see the Formula section.

Offset 1, canonical program `A207621.P2290235971314170358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207621 (n : ℕ) : ℤ :=
  A207621.P2290235971314170358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208460.P13240887097619534066

`A004736(eq[A002260(n+1), A003989(n+1)]+1)`
-/

namespace A208460.P13240887097619534066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A208460.P13240887097619534066

noncomputable section

/-- A208460: Triangle read by rows: T(n,k) = n minus the k-th proper divisor of n.

Offset 2, canonical program `A208460.P13240887097619534066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A208460 (n : ℕ) : ℤ :=
  A208460.P13240887097619534066.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A208460.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A210188.P4006108130984620707

`A078812(n)+A085478(n)-A010054(n)`
-/

namespace A210188.P4006108130984620707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n + (A085478 n - A010054 n)

end

end A210188.P4006108130984620707

noncomputable section

/-- A210188: Triangle of coefficients of polynomials v(n,x) jointly generated with A210187; see the Formula section.

Offset 1, canonical program `A210188.P4006108130984620707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210188 (n : ℕ) : ℤ :=
  A210188.P4006108130984620707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210381.P17433135722675622372

`A074909(n)-A198321(n+1)`
-/

namespace A210381.P17433135722675622372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A198321 (n + 1)

end

end A210381.P17433135722675622372

noncomputable section

/-- A210381: Triangle by rows, derived from the beheaded Pascal's triangle, A074909.

Offset 0, canonical program `A210381.P17433135722675622372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210381 (n : ℕ) : ℤ :=
  A210381.P17433135722675622372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213584.P14777536116696346004

`A213579(comp[∑[n]])-A003057(n+2)`
-/

namespace A213584.P14777536116696346004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A003057 (n + 2)

end

end A213584.P14777536116696346004

noncomputable section

/-- A213584: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = n-1+h, where F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213584.P14777536116696346004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213584 (n : ℕ) : ℤ :=
  A213584.P14777536116696346004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213750.P11543633709042919296

`2*A213500(n+1)-abs(A122432(n))`
-/

namespace A213750.P11543633709042919296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213500 (n + 1) - |A122432 n|

end

end A213750.P11543633709042919296

noncomputable section

/-- A213750: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 2*(n-1+h)-1, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213750.P11543633709042919296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213750 (n : ℕ) : ℤ :=
  A213750.P11543633709042919296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213751.P3389573996948061720

`A104634(n+1)+A062707(n)`
-/

namespace A213751.P3389573996948061720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + A062707 n

end

end A213751.P3389573996948061720

noncomputable section

/-- A213751: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213751.P3389573996948061720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213751 (n : ℕ) : ℤ :=
  A213751.P3389573996948061720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213768.P6784078122479010732

`2*A213579(n+1)-A104582(n+1)`
-/

namespace A213768.P6784078122479010732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213579 (n + 1) - A104582 (n + 1)

end

end A213768.P6784078122479010732

noncomputable section

/-- A213768: Rectangular array: (row n) = b**c, where b(h) = F(h), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213768.P6784078122479010732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213768 (n : ℕ) : ℤ :=
  A213768.P6784078122479010732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214398.P18344074257619641285

`C(A185910(n+1)-1, A025581(n))`
-/

namespace A214398.P18344074257619641285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185910 (n + 1) - 1).toNat (A025581 n).toNat

end

end A214398.P18344074257619641285

noncomputable section

/-- A214398: Triangle where the g.f. of column k is 1/(1-x)^(k^2) for k>=1, as read by rows n>=1.

Offset 1, canonical program `A214398.P18344074257619641285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A214398 (n : ℕ) : ℤ :=
  (A214398.P18344074257619641285.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. -/
def A214398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218234.P3405762265077975232

`A028310(A132440(n))-1`
-/

namespace A218234.P3405762265077975232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A132440 n).toNat - 1

end

end A218234.P3405762265077975232

noncomputable section

/-- A218234: Infinitesimal generator for padded Pascal matrix A097805 (as lower triangular matrices).

Offset 0, canonical program `A218234.P3405762265077975232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218234 (n : ℕ) : ℤ :=
  A218234.P3405762265077975232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218346.P7761468565434163924

`A066846(A007401(n+1))`
-/

namespace A218346.P7761468565434163924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 (A007401 (n + 1)).toNat

end

end A218346.P7761468565434163924

noncomputable section

/-- A218346: Numbers of the form a^a + b^b, with a > b > 0.

Offset 1, canonical program `A218346.P7761468565434163924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A218346 (n : ℕ) : ℤ :=
  A218346.P7761468565434163924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. -/
def A218346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219238.P3363625506201266281

`ceil(A178952(3*(n+1))/6)`
-/

namespace A219238.P3363625506201266281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178952 (3 * (n + 1)) : ℚ) / 6⌉

end

end A219238.P3363625506201266281

noncomputable section

/-- A219238: Coefficient table for the first differences of table A047971: Coefficients of the difference of Gauss polynomials [n+3,3]_q - [n+2,3]_q.

Offset 0, canonical program `A219238.P3363625506201266281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A219238 (n : ℕ) : ℤ :=
  A219238.P3363625506201266281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A219238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219525.P6968393615433371645

`A003991(n+1)-A178952(n+1)`
-/

namespace A219525.P6968393615433371645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A178952 (n + 1)

end

end A219525.P6968393615433371645

noncomputable section

/-- A219525: T(n,k)=Sum of neighbor maps: log base 2 of the number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their king-move neighbors in a random 0..1 nXk array.

Offset 1, canonical program `A219525.P6968393615433371645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A219525 (n : ℕ) : ℤ :=
  A219525.P6968393615433371645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A219525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219694.P18132781621014480692

`A076112(n+1)*A132159(n)`
-/

namespace A219694.P18132781621014480692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A132159 n

end

end A219694.P18132781621014480692

noncomputable section

/-- A219694: Triangular array read by rows: T(n,k) is the number of functions f:{1,2,...,n} -> {1,2,...,n} that have exactly k nonrecurrent elements; n>=1, 0<=k<=n-1.

Offset 1, canonical program `A219694.P18132781621014480692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A219694 (n : ℕ) : ℤ :=
  A219694.P18132781621014480692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A219694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224380.P18395391775735731980

`4*A224195(n+1)-1`
-/

namespace A224380.P18395391775735731980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A224195 (n + 1) - 1

end

end A224380.P18395391775735731980

noncomputable section

/-- A224380: Table read by antidiagonals of numbers of form (2^n -1)*2^(m+2) + 3 where n>=1, m>=1.

Offset 1, canonical program `A224380.P18395391775735731980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224380 (n : ℕ) : ℤ :=
  A224380.P18395391775735731980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226534.P11872375198540827166

`(2*A000040(n+2))%A076368(n+2)`
-/

namespace A226534.P11872375198540827166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000040 (n + 2)) (A076368 (n + 2))

end

end A226534.P11872375198540827166

noncomputable section

/-- A226534: a(n) = (p(n+1) + p(n) - 1) mod (p(n+1) - p(n) + 1) where p(n) is the n-th prime.

Offset 1, canonical program `A226534.P11872375198540827166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226534 (n : ℕ) : ℤ :=
  A226534.P11872375198540827166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A226534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226827.P13006153795325612832

`2*A226793(n+1)`
-/

namespace A226827.P13006153795325612832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226793 (n + 1)

end

end A226827.P13006153795325612832

noncomputable section

/-- A226827: Numbers of the form 3^j + 9^k, for j and k >= 0.

Offset 1, canonical program `A226827.P13006153795325612832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226827 (n : ℕ) : ℤ :=
  A226827.P13006153795325612832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226857.P16696691752831286021

`record[A098356(A038722(n+1)+4)]`
-/

namespace A226857.P16696691752831286021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 (A038722 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226857.P16696691752831286021

noncomputable section

/-- A226857: Numbers that are both the sum of two Fibonacci numbers and the product of two Fibonacci numbers.

Offset 1, canonical program `A226857.P16696691752831286021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. -/
def A226857 (n : ℕ) : ℤ :=
  A226857.P16696691752831286021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. -/
def A226857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227071.P9639457389400369433

`A132741(A028310(n))+A057427(n)`
-/

namespace A227071.P9639457389400369433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (A028310 n).toNat + A057427 n

end

end A227071.P9639457389400369433

noncomputable section

/-- A227071: Let s(m) = the set of k > 0 such that k^m ends with k. Then a(n) = least m such that s(m) = s(n).

Offset 1, canonical program `A227071.P9639457389400369433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227071 (n : ℕ) : ℤ :=
  A227071.P9639457389400369433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227471.P1173354223507232729

`1+A023512(n+1)`
-/

namespace A227471.P1173354223507232729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A023512 (n + 1)

end

end A227471.P1173354223507232729

noncomputable section

/-- A227471: Position of first 0 in the binary representation of prime(n), starting the count of positions at 1 for the least significant bit.

Offset 1, canonical program `A227471.P1173354223507232729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227471 (n : ℕ) : ℤ :=
  A227471.P1173354223507232729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231600.P14215800754998338730

`A096268(A087734(n))`
-/

namespace A231600.P14215800754998338730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A087734 n).toNat

end

end A231600.P14215800754998338730

noncomputable section

/-- A231600: Output of a finite state automaton generating the period doubling sequence, when fed with binary representation of n, read from right to left.

Offset 0, canonical program `A231600.P14215800754998338730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231600 (n : ℕ) : ℤ :=
  A231600.P14215800754998338730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236376.P3394991007226096712

`A078812(A028310(n))-A165253(n)`
-/

namespace A236376.P3394991007226096712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A028310 n).toNat - A165253 n

end

end A236376.P3394991007226096712

noncomputable section

/-- A236376: Riordan array ((1-x+x^2)/(1-x)^2, x/(1-x)^2).

Offset 0, canonical program `A236376.P3394991007226096712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236376 (n : ℕ) : ℤ :=
  A236376.P3394991007226096712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239320.P15770930766220237267

`eq[1, A006287(A006287(A006287(n)))]`
-/

namespace A239320.P15770930766220237267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006287 (A006287 (A006287 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239320.P15770930766220237267

noncomputable section

/-- A239320: Ternary happy numbers.

Offset 1, canonical program `A239320.P15770930766220237267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A239320 (n : ℕ) : ℤ :=
  (A239320.P15770930766220237267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A239320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239712.P16933719049344234265

`A239708(n+1)-1`
-/

namespace A239712.P16933719049344234265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239708 (n + 1) - 1

end

end A239712.P16933719049344234265

noncomputable section

/-- A239712: Primes of the form m = 2^i + 2^j - 1, where i > j >= 0.

Offset 1, canonical program `A239712.P16933719049344234265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239712 (n : ℕ) : ℤ :=
  A239712.P16933719049344234265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239906.P4184436720645207913

`A239904(n)-A014082(n)`
-/

namespace A239906.P4184436720645207913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - A014082 n

end

end A239906.P4184436720645207913

noncomputable section

/-- A239906: Let cn(n,k) denote the number of times 11..1 (k 1's) appears in the binary representation of n; a(n) = n - cn(n,1) + cn(n,2) - cn(n,3).

Offset 0, canonical program `A239906.P4184436720645207913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239906 (n : ℕ) : ℤ :=
  A239906.P4184436720645207913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241016.P17235815299495894716

`A162613(n+1)+n`
-/

namespace A241016.P17235815299495894716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162613 (n + 1) + (n : ℤ)

end

end A241016.P17235815299495894716

noncomputable section

/-- A241016: Triangle read by rows: T(n, k) = sum of k-th row of n X n square filled with the numbers 1 through n^2 reading across rows left-to-right.

Offset 1, canonical program `A241016.P17235815299495894716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A241016 (n : ℕ) : ℤ :=
  A241016.P17235815299495894716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A241016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242224.P7022419707306435246

`(A050873(n+1)+2)*A051537(n+1)`
-/

namespace A242224.P7022419707306435246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050873 (n + 1) + 2) * A051537 (n + 1)

end

end A242224.P7022419707306435246

noncomputable section

/-- A242224: Triangular array T read by rows, T(n, k) = n*k*(gcd(n,k)+2)/gcd(n,k)^2.

Offset 1, canonical program `A242224.P7022419707306435246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A242224 (n : ℕ) : ℤ :=
  A242224.P7022419707306435246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A242224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243109.P8775223338170402151

`n-A171942(A062383(n)-n)`
-/

namespace A243109.P8775223338170402151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A171942 (A062383 n - (n : ℤ)).toNat

end

end A243109.P8775223338170402151

noncomputable section

/-- A243109: a(n) is the largest number smaller than n and having the same Hamming weight as n, or n if no such number exist.

Offset 0, canonical program `A243109.P8775223338170402151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243109 (n : ℕ) : ℤ :=
  A243109.P8775223338170402151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243614.P16613195315274380214

`A174980(eq[A000120(n), A037227(n+1)])`
-/

namespace A243614.P16613195315274380214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A243614.P16613195315274380214

noncomputable section

/-- A243614: Irregular triangular array of numerators of the positive rational numbers ordered as in Comments.

Offset 1, canonical program `A243614.P16613195315274380214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A243614 (n : ℕ) : ℤ :=
  A243614.P16613195315274380214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A243614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244418.P1931432828472560221

`A151890(n)+1`
-/

namespace A244418.P1931432828472560221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n + 1

end

end A244418.P1931432828472560221

noncomputable section

/-- A244418: Triangle read by rows T(n,m) = n*m +(n-1)*(m-1), for n >= m >= 1.

Offset 1, canonical program `A244418.P1931432828472560221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244418 (n : ℕ) : ℤ :=
  A244418.P1931432828472560221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244880.P11603938914214109691

`∑[∑[A160838(n)]]`
-/

namespace A244880.P11603938914214109691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244880.P11603938914214109691

noncomputable section

/-- A244880: Number of magic labelings of the cycle-of-loops graph LOOP X C_8 having magic sum n, where LOOP is the 1-vertex, 1-loop-edge graph.

Offset 0, canonical program `A244880.P11603938914214109691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244880 (n : ℕ) : ℤ :=
  A244880.P11603938914214109691.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245188.P10749449264260825276

`A005681(n+1)-1`
-/

namespace A245188.P10749449264260825276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005681 (n + 1) - 1

end

end A245188.P10749449264260825276

noncomputable section

/-- A245188: Trajectory of 1 under repeated applications of the morphism 0->12, 1->13, 2->20, 3->21.

Offset 0, canonical program `A245188.P10749449264260825276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245188 (n : ℕ) : ℤ :=
  A245188.P10749449264260825276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245650.P3892271656114421038

`p?[A245071(n+1)]`
-/

namespace A245650.P3892271656114421038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245650.P3892271656114421038

noncomputable section

/-- A245650: Primes in the sequence 12*n - prime(n), (A245071).

Offset 1, canonical program `A245650.P3892271656114421038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245650 (n : ℕ) : ℤ :=
  A245650.P3892271656114421038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247875.P746312147594678811

`lt[A135416(or(n+1, 2*n)+1), A059126(n)]`
-/

namespace A247875.P746312147594678811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (Nat.lor (n + 1) (2 * n) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247875.P746312147594678811

noncomputable section

/-- A247875: Numbers that are even or whose binary expansions contain one or more pairs of adjacent zeros when odd.

Offset 1, canonical program `A247875.P746312147594678811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247875 (n : ℕ) : ℤ :=
  (A247875.P746312147594678811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249732.P18279508953089269777

`A048967(n)-A163000(n)`
-/

namespace A249732.P18279508953089269777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n - A163000 n

end

end A249732.P18279508953089269777

noncomputable section

/-- A249732: Number of (not necessarily distinct) multiples of 4 on row n of Pascal's triangle.

Offset 0, canonical program `A249732.P18279508953089269777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A249732 (n : ℕ) : ℤ :=
  A249732.P18279508953089269777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A249732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250742.P16714809823875082383

`4*A131816(n)+2`
-/

namespace A250742.P16714809823875082383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131816 n + 2

end

end A250742.P16714809823875082383

noncomputable section

/-- A250742: T(n,k) = Number of (n+1) X (k+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nonincreasing x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250742.P16714809823875082383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. -/
def A250742 (n : ℕ) : ℤ :=
  A250742.P16714809823875082383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. -/
def A250742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251751.P14863279123700905689

`A251750(n+1)-A104144(n)`
-/

namespace A251751.P14863279123700905689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251750 (n + 1) - A104144 n

end

end A251751.P14863279123700905689

noncomputable section

/-- A251751: 9-step Fibonacci sequence starting with 0,0,1,0,0,0,0,0,0.

Offset 0, canonical program `A251751.P14863279123700905689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251751 (n : ℕ) : ℤ :=
  A251751.P14863279123700905689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251752.P3616439645300721180

`A251750(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A251752.P3616439645300721180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A251750 n - a (n - 2)

end

end A251752.P3616439645300721180

noncomputable section

/-- A251752: 9-step Fibonacci sequence starting with 0,1,0,0,0,0,0,0,0.

Offset 0, canonical program `A251752.P3616439645300721180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251752 (n : ℕ) : ℤ :=
  A251752.P3616439645300721180.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A251752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253084.P6786471095183434490

`and(A047999(n), A085478(n))`
-/

namespace A253084.P6786471095183434490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A085478 n)

end

end A253084.P6786471095183434490

noncomputable section

/-- A253084: Triangle read by rows: T(n,k) = {binomial(n+k,n-k)*binomial(n,k)} mod 2, 0 <= k <= n.

Offset 0, canonical program `A253084.P6786471095183434490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253084 (n : ℕ) : ℤ :=
  A253084.P6786471095183434490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253146.P8353781513861575822

`A131225(A185180(n+1))`
-/

namespace A253146.P8353781513861575822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131225 (A185180 (n + 1)).toNat

end

end A253146.P8353781513861575822

noncomputable section

/-- A253146: A fractal tree, read by rows: for n > 2, T(n,1) = T(n-1,1)+2, T(n,n) = T(n-1,1)+3, and for k=2..n-1, T(n,k) = T(n-2,k-1).

Offset 1, canonical program `A253146.P8353781513861575822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A253146 (n : ℕ) : ℤ :=
  A253146.P8353781513861575822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A253146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253972.P8307719435572186236

`A065091(lt[2, A237881(n+1)])`
-/

namespace A253972.P8307719435572186236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A253972.P8307719435572186236

noncomputable section

/-- A253972: Primes p such that p + nextprime(p) is divisible by 8.

Offset 1, canonical program `A253972.P8307719435572186236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253972 (n : ℕ) : ℤ :=
  A253972.P8307719435572186236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254107.P2033463997681992724

`A005187(A130128(n+1))-A002262(n)`
-/

namespace A254107.P2033463997681992724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A130128 (n + 1)).toNat - A002262 n

end

end A254107.P2033463997681992724

noncomputable section

/-- A254107: Transposed dispersion of A055938.

Offset 1, canonical program `A254107.P2033463997681992724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254107 (n : ℕ) : ℤ :=
  A254107.P2033463997681992724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254398.P5626578418110395062

`7-3*A073423(n)`
-/

namespace A254398.P5626578418110395062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - 3 * A073423 n

end

end A254398.P5626578418110395062

noncomputable section

/-- A254398: Final digits of A237424 in decimal representation.

Offset 1, canonical program `A254398.P5626578418110395062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254398 (n : ℕ) : ℤ :=
  A254398.P5626578418110395062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255121.P16313667486751775912

`∑[char[A255062(n+1)]]`
-/

namespace A255121.P16313667486751775912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255121.P16313667486751775912

noncomputable section

/-- A255121: After zero, each n occurs A255071(n) times.

Offset 0, canonical program `A255121.P16313667486751775912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A255121 (n : ℕ) : ℤ :=
  (A255121.P16313667486751775912.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 722 terms. -/
def A255121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255812.P10331550004199229261

`A009998(n)/A152656(n)*A119502(n)`
-/

namespace A255812.P10331550004199229261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) / (A152656 n : ℚ) * (A119502 n : ℚ)

end

end A255812.P10331550004199229261

noncomputable section

/-- A255812: Rectangular array: row n gives the denominators in the positive convolutory n-th root of (1,1,1,...).

Offset 1, canonical program `A255812.P10331550004199229261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A255812 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255812.P10331550004199229261.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A255812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257508.P829939405799321122

`record[A257507(A152271(n))]`
-/

namespace A257508.P829939405799321122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257508.P829939405799321122

noncomputable section

/-- A257508: Next-to-leaf vertices in binary beanstalk; Numbers n for which A257265(n) = 1.

Offset 1, canonical program `A257508.P829939405799321122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A257508 (n : ℕ) : ℤ :=
  A257508.P829939405799321122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. -/
def A257508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257512.P6741828352315066934

`A257507(A055938(2*(n+1)))`
-/

namespace A257512.P6741828352315066934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A055938 (2 * (n + 1))).toNat

end

end A257512.P6741828352315066934

noncomputable section

/-- A257512: Those vertices of the binary beanstalk whose children are both leaves.

Offset 1, canonical program `A257512.P6741828352315066934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A257512 (n : ℕ) : ℤ :=
  A257512.P6741828352315066934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A257512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257791.P16391820715187016324

`4*A054582(n)`
-/

namespace A257791.P16391820715187016324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A054582 n

end

end A257791.P16391820715187016324

noncomputable section

/-- A257791: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = 2^(n+1)*(2*k - 1), n,k >= 1.

Offset 1, canonical program `A257791.P16391820715187016324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257791 (n : ℕ) : ℤ :=
  A257791.P16391820715187016324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258415.P4473213064253829696

`A151575(A004736(n+1))+A054582(n)`
-/

namespace A258415.P4473213064253829696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 (A004736 (n + 1)).toNat + A054582 n

end

end A258415.P4473213064253829696

noncomputable section

/-- A258415: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (2 + 2^(n-1)*(6*k - 3 + 2*(-1)^n))/3, n,k >= 1.

Offset 1, canonical program `A258415.P4473213064253829696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258415 (n : ℕ) : ℤ :=
  A258415.P4473213064253829696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259030.P661161244229555766

`A080891(A259445(n+1)+A065883(3*(n+1)))`
-/

namespace A259030.P661161244229555766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A259445 (n + 1) + A065883 (3 * (n + 1))).toNat

end

end A259030.P661161244229555766

noncomputable section

/-- A259030: a(n) is multiplicative with a(2^e) = -(1 - (-1)^e) / 2 if e > 0, a(p^e) = Kronecker(5, p)^e if p > 2.

Offset 1, canonical program `A259030.P661161244229555766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A259030 (n : ℕ) : ℤ :=
  A259030.P661161244229555766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A259030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259334.P13494176114006813757

`A122525(∑[char[∑[n]]]²-n)`
-/

namespace A259334.P13494176114006813757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122525 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A259334.P13494176114006813757

noncomputable section

/-- A259334: Triangle read by rows: T(n, k) = k * (n - 1)! * n^(n - k - 1) / (n - k)!.

Offset 1, canonical program `A259334.P13494176114006813757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A259334 (n : ℕ) : ℤ :=
  A259334.P13494176114006813757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A259334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259572.P4293494890795653436

`A004526(A004247(n)+A003989(n+1))`
-/

namespace A259572.P4293494890795653436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004247 n + A003989 (n + 1)).toNat

end

end A259572.P4293494890795653436

noncomputable section

/-- A259572: Reciprocity array of 0; rectangular, read by antidiagonals.

Offset 1, canonical program `A259572.P4293494890795653436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259572 (n : ℕ) : ℤ :=
  A259572.P4293494890795653436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260518.P2775929053660389639

`A260114(2*n+1)/6`
-/

namespace A260518.P2775929053660389639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260114 (2 * n + 1) : ℚ) / 6

end

end A260518.P2775929053660389639

noncomputable section

/-- A260518: Expansion of psi(x)^2 * f(-x^3)^3 / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260518.P2775929053660389639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260518.P2775929053660389639.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261445.P1983018921288395960

`A260109(2*n)`
-/

namespace A261445.P1983018921288395960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260109 (2 * n)

end

end A261445.P1983018921288395960

noncomputable section

/-- A261445: Expansion of f(x, x^3) * f(x, x^2)^3 in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A261445.P1983018921288395960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261445 (n : ℕ) : ℤ :=
  A261445.P1983018921288395960.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261642.P1445011013006414723

`A009998(n)*A051129(n+2)`
-/

namespace A261642.P1445011013006414723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A051129 (n + 2)

end

end A261642.P1445011013006414723

noncomputable section

/-- A261642: Triangle, read by rows, where T(n,k) = (k^2 + k)^(n-k) for k=1..n and n>=1.

Offset 1, canonical program `A261642.P1445011013006414723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A261642 (n : ℕ) : ℤ :=
  A261642.P1445011013006414723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A261642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262354.P4317031643290507164

`gcd(A138404(n+1), A244509(n+1))`
-/

namespace A262354.P4317031643290507164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138404 (n + 1)) (A244509 (n + 1))

end

end A262354.P4317031643290507164

noncomputable section

/-- A262354: a(n) is the number of 2 X 2 matrices over Z_p with determinant in {1,-1} where p = prime(n).

Offset 1, canonical program `A262354.P4317031643290507164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262354 (n : ℕ) : ℤ :=
  (A262354.P4317031643290507164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263021.P16204132987011673581

`A260109(Δ[n²])/3`
-/

namespace A263021.P16204132987011673581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A263021.P16204132987011673581

noncomputable section

/-- A263021: Expansion of f(-x^3)^6 / (phi(-x) * phi(-x^3)) in powers of x where phi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A263021.P16204132987011673581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263021 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263021.P16204132987011673581.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264731.P3119576634127097994

`A000040(A054582(n))`
-/

namespace A264731.P3119576634127097994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054582 n).toNat

end

end A264731.P3119576634127097994

noncomputable section

/-- A264731: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = prime(2^(n-1)*(2*k-1)), n,k >= 1.

Offset 1, canonical program `A264731.P3119576634127097994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054582, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A264731 (n : ℕ) : ℤ :=
  A264731.P3119576634127097994.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A054582, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A264731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267369.P3092922467413671371

`(n+1)²-A267368(n)`
-/

namespace A267369.P3092922467413671371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267368 n

end

end A267369.P3092922467413671371

noncomputable section

/-- A267369: Total number of OFF (white) cells after n iterations of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267369.P3092922467413671371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267369 (n : ℕ) : ℤ :=
  A267369.P3092922467413671371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267446.P12235518874921593537

`∑[A267445(n)]`
-/

namespace A267446.P12235518874921593537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267446.P12235518874921593537

noncomputable section

/-- A267446: Total number of ON (black) cells after n iterations of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267446.P12235518874921593537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267446 (n : ℕ) : ℤ :=
  A267446.P12235518874921593537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267447.P294490523274346836

`Δ[n²]-A267445(n)`
-/

namespace A267447.P294490523274346836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267445 n

end

end A267447.P294490523274346836

noncomputable section

/-- A267447: Number of OFF (white) cells in the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267447.P294490523274346836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267447 (n : ℕ) : ℤ :=
  A267447.P294490523274346836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267864.P5040665294763150187

`A225975(2*A054531(n+1))`
-/

namespace A267864.P5040665294763150187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (2 * A054531 (n + 1)).toNat

end

end A267864.P5040665294763150187

noncomputable section

/-- A267864: Denominator triangle for A267863: T(n, k) = denominator((n - 2*k)/(2*n)), n >= 1, k = 1, ..., n.

Offset 1, canonical program `A267864.P5040665294763150187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267864 (n : ℕ) : ℤ :=
  A267864.P5040665294763150187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268477.P4055541825993668443

`p?[A268415(n+1)]`
-/

namespace A268477.P4055541825993668443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268477.P4055541825993668443

noncomputable section

/-- A268477: Balanced odious primes: primes with an odd number of runs of 1's in their binary expansion.

Offset 1, canonical program `A268477.P4055541825993668443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. -/
def A268477 (n : ℕ) : ℤ :=
  A268477.P4055541825993668443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. -/
def A268477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269529.P254350868632863170

`A020985(A005351(n))`
-/

namespace A269529.P254350868632863170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A005351 n).toNat

end

end A269529.P254350868632863170

noncomputable section

/-- A269529: An analog of the Golay-Rudin-Shapiro sequence (A020985) in base -2 (see comments).

Offset 0, canonical program `A269529.P254350868632863170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269529 (n : ℕ) : ℤ :=
  A269529.P254350868632863170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271709.P2626185223326178723

`A131816(n)+1`
-/

namespace A271709.P2626185223326178723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + 1

end

end A271709.P2626185223326178723

noncomputable section

/-- A271709: Table T(n,k) = 2^n + 2^k read by antidiagonals.

Offset 0, canonical program `A271709.P2626185223326178723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271709 (n : ℕ) : ℤ :=
  A271709.P2626185223326178723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272356.P11442915012957242635

`∑[A182986(n+1)]%4`
-/

namespace A272356.P11442915012957242635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A272356.P11442915012957242635

noncomputable section

/-- A272356: (Sum_{i=1..n} prime(i)) mod 4.

Offset 0, canonical program `A272356.P11442915012957242635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272356 (n : ℕ) : ℤ :=
  A272356.P11442915012957242635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272356.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A274602.P2824057014041455408

`A059036(n)+2*A062707(n)`
-/

namespace A274602.P2824057014041455408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + 2 * A062707 n

end

end A274602.P2824057014041455408

noncomputable section

/-- A274602: Triangle read by rows: T(n,k) = k*(n-k+1)^2 + n - k, 0 <= k <= n.

Offset 1, canonical program `A274602.P2824057014041455408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274602 (n : ℕ) : ℤ :=
  A274602.P2824057014041455408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274773.P11672624379083383188

`2*A053616(n)+1`
-/

namespace A274773.P11672624379083383188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053616 n + 1

end

end A274773.P11672624379083383188

noncomputable section

/-- A274773: a(n) = floor(sqrt(2*n-1) + 1/2) - abs(2*(n-1) - (floor(sqrt(2*n-1) + 1/2))^2) + 1.

Offset 1, canonical program `A274773.P11672624379083383188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773 (n : ℕ) : ℤ :=
  A274773.P11672624379083383188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276162.P7641497976450170306

`a(n-round(sqrt(2*n)))*A003989(n+1)` with `a(0)=1`
-/

namespace A276162.P7641497976450170306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat * A003989 (n + 1)

end

end A276162.P7641497976450170306

noncomputable section

/-- A276162: Square array read by antidiagonals: T(n,k) = Product_{i = 1..k} gcd(n, i).

Offset 1, canonical program `A276162.P7641497976450170306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276162 (n : ℕ) : ℤ :=
  A276162.P7641497976450170306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276985.P4240912874753505783

`2*A193862(n)`
-/

namespace A276985.P4240912874753505783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193862 n

end

end A276985.P4240912874753505783

noncomputable section

/-- A276985: Triangle read by rows: T(n,k) = number of k-dimensional elements in an n-dimensional cross-polytope, n>=1, 0<=k

Offset 1, canonical program `A276985.P4240912874753505783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276985 (n : ℕ) : ℤ :=
  A276985.P4240912874753505783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277227.P5944869305107030698

`A054531((2*n)%(n+1)+1)`
-/

namespace A277227.P5944869305107030698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (2 * n % (n + 1) + 1)

end

end A277227.P5944869305107030698

noncomputable section

/-- A277227: Triangular array T read by rows: T(n,k) gives the additive orders k modulo n, for k = 0,1, ..., n-1.

Offset 1, canonical program `A277227.P5944869305107030698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277227 (n : ℕ) : ℤ :=
  A277227.P5944869305107030698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279064.P15784993445143598710

`eq[A010052(2*n)+A010052(n), A050605(n+1)]`
-/

namespace A279064.P15784993445143598710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n) + A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279064.P15784993445143598710

noncomputable section

/-- A279064: Numbers n such that the sum of numbers less than n that do not divide n is even.

Offset 1, canonical program `A279064.P15784993445143598710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A279064 (n : ℕ) : ℤ :=
  (A279064.P15784993445143598710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A279064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280411.P16062598287580684843

`A309761(∑[xor(1, n)])`
-/

namespace A280411.P16062598287580684843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280411.P16062598287580684843

noncomputable section

/-- A280411: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A280411.P16062598287580684843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280411 (n : ℕ) : ℤ :=
  A280411.P16062598287580684843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280843.P6908964579885282676

`A049502(A000203(n+1))`
-/

namespace A280843.P6908964579885282676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A000203 (n + 1)).toNat

end

end A280843.P6908964579885282676

noncomputable section

/-- A280843: a(n) = A049502(sigma(n)).

Offset 1, canonical program `A280843.P6908964579885282676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280843 (n : ℕ) : ℤ :=
  A280843.P6908964579885282676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281497.P13334527158016198165

`A049502(A003188(n+1))`
-/

namespace A281497.P13334527158016198165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A003188 (n + 1)).toNat

end

end A281497.P13334527158016198165

noncomputable section

/-- A281497: Write n in binary reflected Gray code and sum the positions where there is a '1' followed immediately to the left by a '0', counting the rightmost digit as position 1.

Offset 1, canonical program `A281497.P13334527158016198165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281497 (n : ℕ) : ℤ :=
  A281497.P13334527158016198165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281881.P16857394866510108787

`∑[A010054(n)]*A267849(n)`
-/

namespace A281881.P16857394866510108787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A267849 n

end

end A281881.P16857394866510108787

noncomputable section

/-- A281881: Triangle read by rows: T(n,k) (n>=1, 2<=k<=n+1) is the number of k-sequences of balls colored with at most n colors such that exactly one ball is of a color seen previously in the sequence.

Offset 1, canonical program `A281881.P16857394866510108787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A281881 (n : ℕ) : ℤ :=
  A281881.P16857394866510108787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A281881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285192.P8636717589507868454

`floor(A082046(n)/2)`
-/

namespace A285192.P8636717589507868454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082046 n : ℚ) / 2⌋

end

end A285192.P8636717589507868454

noncomputable section

/-- A285192: Array read by antidiagonals: T(n,k) = n*k*(3+n*k)/2 (n >= 0, k >= 0).

Offset 0, canonical program `A285192.P8636717589507868454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285192 (n : ℕ) : ℤ :=
  A285192.P8636717589507868454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285474.P15837645706445647605

`A309761(∑[A266303(n)])`
-/

namespace A285474.P15837645706445647605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285474.P15837645706445647605

noncomputable section

/-- A285474: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285474.P15837645706445647605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285474 (n : ℕ) : ℤ :=
  A285474.P15837645706445647605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285541.P13893119404520415230

`A309761(∑[A266981(n)])`
-/

namespace A285541.P13893119404520415230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285541.P13893119404520415230

noncomputable section

/-- A285541: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285541.P13893119404520415230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A285541 (n : ℕ) : ℤ :=
  A285541.P13893119404520415230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A285541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285962.P11120950042759192256

`∑[A036578(abs(1-n))!]`
-/

namespace A285962.P11120950042759192256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A036578 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285962.P11120950042759192256

noncomputable section

/-- A285962: Positions of 1 in A285960; complement of A285961.

Offset 1, canonical program `A285962.P11120950042759192256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285962 (n : ℕ) : ℤ :=
  (A285962.P11120950042759192256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286108.P8792181165033674960

`A221146(n)+A057944(n)`
-/

namespace A286108.P8792181165033674960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221146 n + A057944 n

end

end A286108.P8792181165033674960

noncomputable section

/-- A286108: Square array read by antidiagonals: A(n,k) = T(2*(n AND k), n XOR k), where T(n,k) is sequence A001477 considered as a two-dimensional table, AND is bitwise-and (A004198) and XOR is bitwise-xor (A003987).

Offset 0, canonical program `A286108.P8792181165033674960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286108 (n : ℕ) : ℤ :=
  A286108.P8792181165033674960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287957.P9450790223427472973

`gcd(A000217(A132411(n)), A003989(n+1))`
-/

namespace A287957.P9450790223427472973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A132411 n).toNat) (A003989 (n + 1))

end

end A287957.P9450790223427472973

noncomputable section

/-- A287957: Table read by antidiagonals: T(n, k) = greatest common recursive divisor of n and k; n > 0 and k > 0.

Offset 1, canonical program `A287957.P9450790223427472973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A287957 (n : ℕ) : ℤ :=
  (A287957.P9450790223427472973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A287957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288778.P10589450671550986941

`A059036(n)*A233543(n)`
-/

namespace A288778.P10589450671550986941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n * A233543 n

end

end A288778.P10589450671550986941

noncomputable section

/-- A288778: Triangle read by rows (1<=k<=n): T(n,k) = (n-k+1)*k! - (k-1)!

Offset 1, canonical program `A288778.P10589450671550986941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A288778 (n : ℕ) : ℤ :=
  A288778.P10589450671550986941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A288778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288870.P11047461779992407775

`A054582(n)+1`
-/

namespace A288870.P11047461779992407775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n + 1

end

end A288870.P11047461779992407775

noncomputable section

/-- A288870: Triangle T from array A(k,n) = (2*k+1)*2^n + 1, k >=0, n >= 0 read by downwards antidiagonals.

Offset 0, canonical program `A288870.P11047461779992407775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288870 (n : ℕ) : ℤ :=
  A288870.P11047461779992407775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290232.P11019390822315618094

`A309761(A093005(n+1))`
-/

namespace A290232.P11019390822315618094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A093005 (n + 1)).toNat

end

end A290232.P11019390822315618094

noncomputable section

/-- A290232: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290232.P11019390822315618094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290232 (n : ℕ) : ℤ :=
  A290232.P11019390822315618094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290450.P10399462195155768375

`p?[A076368(n+2)%5*A000040(n+1)]`
-/

namespace A290450.P10399462195155768375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076368 (n + 2)) 5 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290450.P10399462195155768375

noncomputable section

/-- A290450: Primes with property that the next prime has the same last digit.

Offset 1, canonical program `A290450.P10399462195155768375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A290450 (n : ℕ) : ℤ :=
  A290450.P10399462195155768375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A290450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299763.P9872008477996207838

`1+A182986(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299763.P9872008477996207838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A182986 (n + 1)

end

end A299763.P9872008477996207838

noncomputable section

/-- A299763: a(n) = 1 + A182986(n).

Offset 1, canonical program `A299763.P9872008477996207838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299763 (n : ℕ) : ℤ :=
  A299763.P9872008477996207838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300401.P1723382779798005769

`A139600(A061579(n))+A139600(n)`
-/

namespace A300401.P1723382779798005769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A061579 n).toNat + A139600 n

end

end A300401.P1723382779798005769

noncomputable section

/-- A300401: Array T(n,k) = n*(binomial(k, 2) + 1) + k*(binomial(n, 2) + 1) read by antidiagonals.

Offset 0, canonical program `A300401.P1723382779798005769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300401 (n : ℕ) : ℤ :=
  A300401.P1723382779798005769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305722.P15996365835608789780

`∑[A019564(n)]`
-/

namespace A305722.P15996365835608789780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305722.P15996365835608789780

noncomputable section

/-- A305722: Crystal ball sequence for the lattice C_8.

Offset 0, canonical program `A305722.P15996365835608789780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305722 (n : ℕ) : ℤ :=
  A305722.P15996365835608789780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305723.P14653554493018338077

`∑[A035746(n)]`
-/

namespace A305723.P14653554493018338077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305723.P14653554493018338077

noncomputable section

/-- A305723: Crystal ball sequence for the lattice C_9.

Offset 0, canonical program `A305723.P14653554493018338077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305723 (n : ℕ) : ℤ :=
  A305723.P14653554493018338077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306546.P4171820241899143861

`A006370(A259445(n+1))`
-/

namespace A306546.P4171820241899143861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A259445 (n + 1)).toNat

end

end A306546.P4171820241899143861

noncomputable section

/-- A306546: Modified Collatz Map such that odd numbers are treated the same, but even numbers have all factors of 2 removed.

Offset 1, canonical program `A306546.P4171820241899143861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306546 (n : ℕ) : ℤ :=
  A306546.P4171820241899143861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308569.P15723191268736136864

`∑{d}[A002260(n+1), #^A094053(n+1)]`
-/

namespace A308569.P15723191268736136864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A094053 (n + 1) : ℤ)

end

end A308569.P15723191268736136864

noncomputable section

/-- A308569: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals, where A(n,k) is Sum_{d|n} d^(k*n).

Offset 1, canonical program `A308569.P15723191268736136864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A308569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308569.P15723191268736136864.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A308569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313202.P16962560134668645847

`A004396(n)+A313053(n)-A004525(n)`
-/

namespace A313202.P16962560134668645847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313053 n - A004525 n)

end

end A313202.P16962560134668645847

noncomputable section

/-- A313202: Coordination sequence Gal.4.96.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313202.P16962560134668645847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A313202 (n : ℕ) : ℤ :=
  A313202.P16962560134668645847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A313202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313525.P8743535936701336269

`2*A313506(n)-A313476(n)`
-/

namespace A313525.P8743535936701336269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313506 n - A313476 n

end

end A313525.P8743535936701336269

noncomputable section

/-- A313525: Coordination sequence Gal.6.249.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313525.P8743535936701336269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313525 (n : ℕ) : ℤ :=
  A313525.P8743535936701336269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A313525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313595.P182879092079943348

`2*A313575(n)-A313565(n)`
-/

namespace A313595.P182879092079943348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313575 n - A313565 n

end

end A313595.P182879092079943348

noncomputable section

/-- A313595: Coordination sequence Gal.6.464.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313595.P182879092079943348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A313595 (n : ℕ) : ℤ :=
  A313595.P182879092079943348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A313595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313682.P7898542429883627702

`A047263(n+1)+A313476(n)-n`
-/

namespace A313682.P7898542429883627702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A313476 n - (n : ℤ))

end

end A313682.P7898542429883627702

noncomputable section

/-- A313682: Coordination sequence Gal.5.55.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313682.P7898542429883627702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A313682 (n : ℕ) : ℤ :=
  A313682.P7898542429883627702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A313682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313736.P16871043691306963978

`A313053(n)+A004396(A004396(n))`
-/

namespace A313736.P16871043691306963978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + A004396 (A004396 n).toNat

end

end A313736.P16871043691306963978

noncomputable section

/-- A313736: Coordination sequence Gal.6.363.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313736.P16871043691306963978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313736 (n : ℕ) : ℤ :=
  A313736.P16871043691306963978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A313736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313739.P2057595720554128706

`A004525(n)+A313698(n)-A004396(A004525(n))`
-/

namespace A313739.P2057595720554128706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313698 n - A004396 (A004525 n).toNat)

end

end A313739.P2057595720554128706

noncomputable section

/-- A313739: Coordination sequence Gal.6.159.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313739.P2057595720554128706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313739 (n : ℕ) : ℤ :=
  A313739.P2057595720554128706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313956.P5999280833725996003

`2*A313875(n)-A313782(n)`
-/

namespace A313956.P5999280833725996003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313875 n - A313782 n

end

end A313956.P5999280833725996003

noncomputable section

/-- A313956: Coordination sequence Gal.6.652.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313956.P5999280833725996003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A313956 (n : ℕ) : ℤ :=
  A313956.P5999280833725996003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A313956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314020.P15849566854326766126

`A313476(n)+Δ[A011858(n)]`
-/

namespace A314020.P15849566854326766126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + (f1 (n + 1) - f1 n)

end

end A314020.P15849566854326766126

noncomputable section

/-- A314020: Coordination sequence Gal.6.247.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314020.P15849566854326766126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2392 terms. -/
def A314020 (n : ℕ) : ℤ :=
  A314020.P15849566854326766126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2392 terms. -/
def A314020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314203.P8872604243500081186

`A265227(n+1)+A313476(n)-n`
-/

namespace A314203.P8872604243500081186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A313476 n - (n : ℤ))

end

end A314203.P8872604243500081186

noncomputable section

/-- A314203: Coordination sequence Gal.5.88.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314203.P8872604243500081186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314203 (n : ℕ) : ℤ :=
  A314203.P8872604243500081186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314220.P5659571598859034226

`A313053(n)+n`
-/

namespace A314220.P5659571598859034226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + (n : ℤ)

end

end A314220.P5659571598859034226

noncomputable section

/-- A314220: Coordination sequence Gal.5.306.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314220.P5659571598859034226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A314220 (n : ℕ) : ℤ :=
  A314220.P5659571598859034226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A314220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314959.P7859421504801099217

`A004525(n)+A314899(n)-A004396(A004525(n))`
-/

namespace A314959.P7859421504801099217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314899 n - A004396 (A004525 n).toNat)

end

end A314959.P7859421504801099217

noncomputable section

/-- A314959: Coordination sequence Gal.6.340.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314959.P7859421504801099217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A314959 (n : ℕ) : ℤ :=
  A314959.P7859421504801099217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A314959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315053.P5459368638815230742

`A004396(n)+A314899(n)-A004525(n)`
-/

namespace A315053.P5459368638815230742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314899 n - A004525 n)

end

end A315053.P5459368638815230742

noncomputable section

/-- A315053: Coordination sequence Gal.6.345.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315053.P5459368638815230742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315053 (n : ℕ) : ℤ :=
  A315053.P5459368638815230742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315333.P16393821972172640477

`A315275(n)+A008676(A016777(n))`
-/

namespace A315333.P16393821972172640477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315275 n + A008676 (A016777 n).toNat

end

end A315333.P16393821972172640477

noncomputable section

/-- A315333: Coordination sequence Gal.5.292.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315333.P16393821972172640477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A315333 (n : ℕ) : ℤ :=
  A315333.P16393821972172640477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A315333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315335.P12030960458542249

`A314899(n)+A004396(n)`
-/

namespace A315335.P12030960458542249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A004396 n

end

end A315335.P12030960458542249

noncomputable section

/-- A315335: Coordination sequence Gal.6.624.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315335.P12030960458542249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315335 (n : ℕ) : ℤ :=
  A315335.P12030960458542249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315412.P16716451552511901256

`abs(A008592(n)-A313255(n))`
-/

namespace A315412.P16716451552511901256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313255 n|

end

end A315412.P16716451552511901256

noncomputable section

/-- A315412: Coordination sequence Gal.5.141.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315412.P16716451552511901256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315412 (n : ℕ) : ℤ :=
  A315412.P16716451552511901256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315479.P4180751109111946087

`A313698(n)+A004525(n)`
-/

namespace A315479.P4180751109111946087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n + A004525 n

end

end A315479.P4180751109111946087

noncomputable section

/-- A315479: Coordination sequence Gal.6.210.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315479.P4180751109111946087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2260 terms. -/
def A315479 (n : ℕ) : ℤ :=
  A315479.P4180751109111946087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2260 terms. -/
def A315479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315481.P74549118950222558

`A330025(n)+A313782(n)`
-/

namespace A315481.P74549118950222558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313782 n

end

end A315481.P74549118950222558

noncomputable section

/-- A315481: Coordination sequence Gal.5.139.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315481.P74549118950222558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315481 (n : ℕ) : ℤ :=
  A315481.P74549118950222558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A315481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315518.P4860043378548832056

`A315468(n)+A110654(A057354(n))`
-/

namespace A315518.P4860043378548832056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n + A110654 (A057354 n).toNat

end

end A315518.P4860043378548832056

noncomputable section

/-- A315518: Coordination sequence Gal.5.291.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315518.P4860043378548832056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A315518 (n : ℕ) : ℤ :=
  A315518.P4860043378548832056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A315518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315549.P12001438916279019003

`A314899(n)+n`
-/

namespace A315549.P12001438916279019003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + (n : ℤ)

end

end A315549.P12001438916279019003

noncomputable section

/-- A315549: Coordination sequence Gal.6.628.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315549.P12001438916279019003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315549 (n : ℕ) : ℤ :=
  A315549.P12001438916279019003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315630.P1935897935145256014

`2*A313476(n)-A008574(n)`
-/

namespace A315630.P1935897935145256014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313476 n - A008574 n

end

end A315630.P1935897935145256014

noncomputable section

/-- A315630: Coordination sequence Gal.6.233.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315630.P1935897935145256014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A315630 (n : ℕ) : ℤ :=
  A315630.P1935897935145256014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A315630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315684.P8057506164725959055

`A313476(n)+n`
-/

namespace A315684.P8057506164725959055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + (n : ℤ)

end

end A315684.P8057506164725959055

noncomputable section

/-- A315684: Coordination sequence Gal.5.291.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315684.P8057506164725959055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A315684 (n : ℕ) : ℤ :=
  A315684.P8057506164725959055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A315684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315739.P13129759353165828185

`A315680(n)+Δ[A011862(n)]`
-/

namespace A315739.P13129759353165828185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315680 n + (f1 (n + 1) - f1 n)

end

end A315739.P13129759353165828185

noncomputable section

/-- A315739: Coordination sequence Gal.5.135.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315739.P13129759353165828185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315739 (n : ℕ) : ℤ :=
  A315739.P13129759353165828185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315761.P1947908363640495384

`A330025(n)+A314252(n)`
-/

namespace A315761.P1947908363640495384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314252 n

end

end A315761.P1947908363640495384

noncomputable section

/-- A315761: Coordination sequence Gal.5.295.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315761.P1947908363640495384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A315761 (n : ℕ) : ℤ :=
  A315761.P1947908363640495384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A315761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316715.P11769109710965712386

`A107782(2*A003726(n+1))+1`
-/

namespace A316715.P11769109710965712386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (2 * A003726 (n + 1)).toNat + 1

end

end A316715.P11769109710965712386

noncomputable section

/-- A316715: a(n) is the number of 1s in A316713(n). That is, a(n) is the number of B-sequences (A278039) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316715.P11769109710965712386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316715 (n : ℕ) : ℤ :=
  A316715.P11769109710965712386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316715.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A321490.P3505959311792862823

`A070216(n+1)*A108872(n+1)`
-/

namespace A321490.P3505959311792862823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) * A108872 (n + 1)

end

end A321490.P3505959311792862823

noncomputable section

/-- A321490: Triangular table T[n,k] = (n+k)(n^2+k^2), 1 <= k <= n = 1, 2, 3, ...; read by rows.

Offset 1, canonical program `A321490.P3505959311792862823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321490 (n : ℕ) : ℤ :=
  A321490.P3505959311792862823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322550.P8618684598971273122

`A003990(n+1)²/(A002260(n+1)*A003989(n+1))`
-/

namespace A322550.P8618684598971273122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) ^ 2 : ℚ) / (A002260 (n + 1) * A003989 (n + 1) : ℚ)

end

end A322550.P8618684598971273122

noncomputable section

/-- A322550: Table read by ascending antidiagonals: T(n, k) is the minimum number of cubes necessary to fill a right square prism with base area n^2 and height k.

Offset 1, canonical program `A322550.P8618684598971273122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322550.P8618684598971273122.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324472.P9683868638575580254

`A038459(A059126(3*n+1))%(n+1)`
-/

namespace A324472.P9683868638575580254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038459 (A059126 (3 * n + 1)).toNat) (n + 1 : ℤ)

end

end A324472.P9683868638575580254

noncomputable section

/-- A324472: a(n) = 1000 mod n.

Offset 1, canonical program `A324472.P9683868638575580254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A324472 (n : ℕ) : ℤ :=
  A324472.P9683868638575580254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A324472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132775.P15677657073027087239

`A007318(n)*A131507(n)`
-/

namespace A132775.P15677657073027087239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A131507 n

end

end A132775.P15677657073027087239

noncomputable section

/-- A132775: A007818 * A132774.

Offset 0, canonical program `A132775.P15677657073027087239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132775 (n : ℕ) : ℤ :=
  A132775.P15677657073027087239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133084.P4031868736069884571

`A007318(n)+A007318(n+1)*A060510(n+1)`
-/

namespace A133084.P4031868736069884571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A007318 (n + 1) * A060510 (n + 1)

end

end A133084.P4031868736069884571

noncomputable section

/-- A133084: A007318 * A133080.

Offset 1, canonical program `A133084.P4031868736069884571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133084 (n : ℕ) : ℤ :=
  A133084.P4031868736069884571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133138.P17820506567274985276

`A097806(n)+A007318(n)`
-/

namespace A133138.P17820506567274985276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n + A007318 n

end

end A133138.P17820506567274985276

noncomputable section

/-- A133138: Triangle T(n,k) of the coefficients of the polynomials Q(n,x)=(1+x)[(1+x)^(n-1)+x^(n-1)], Q(0,x)=2.

Offset 0, canonical program `A133138.P17820506567274985276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133138 (n : ℕ) : ℤ :=
  A133138.P17820506567274985276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133341.P495050647053459279

`A135278(n)*A232089(n)`
-/

namespace A133341.P495050647053459279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A232089 n

end

end A133341.P495050647053459279

noncomputable section

/-- A133341: A007318 * A134312.

Offset 0, canonical program `A133341.P495050647053459279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133341 (n : ℕ) : ℤ :=
  A133341.P495050647053459279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133371.P3126096384400858780

`A007318(n)*A001022(A025581(n))`
-/

namespace A133371.P3126096384400858780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001022 (A025581 n).toNat

end

end A133371.P3126096384400858780

noncomputable section

/-- A133371: Triangle read by rows: T(i,j) is the number of i-permutations of 14 objects a,b,c,d,e,f,g,h,i,j,k,l,m,n, with repetition allowed, containing j a's.

Offset 0, canonical program `A133371.P3126096384400858780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. -/
def A133371 (n : ℕ) : ℤ :=
  A133371.P3126096384400858780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. -/
def A133371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133935.P2681092979472692680

`A007318(n)*A093178(A002260(n+1))`
-/

namespace A133935.P2681092979472692680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A093178 (A002260 (n + 1)).toNat

end

end A133935.P2681092979472692680

noncomputable section

/-- A133935: A007318 * A093178 as a diagonalized matrix.

Offset 0, canonical program `A133935.P2681092979472692680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133935 (n : ℕ) : ℤ :=
  A133935.P2681092979472692680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134058.P11194950066351416818

`2*A007318(and(1, a(n-1))+n)` with `a(0)=1`
-/

namespace A134058.P11194950066351416818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A007318 (Int.land 1 (a (n - 1)) + (n : ℤ)).toNat

end

end A134058.P11194950066351416818

noncomputable section

/-- A134058: Triangle T(n, k) = 2*binomial(n, k) with T(0, 0) = 1, read by rows.

Offset 0, canonical program `A134058.P11194950066351416818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134058 (n : ℕ) : ℤ :=
  A134058.P11194950066351416818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134059.P4235307889070285583

`3%(2*(n+1))*A007318(n)`
-/

namespace A134059.P4235307889070285583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 % (2 * (n + 1)) : ℕ) : ℤ) * A007318 n

end

end A134059.P4235307889070285583

noncomputable section

/-- A134059: Triangle T(n, k) = 3*binomial(n,k) with T(0, 0) = 1, read by rows.

Offset 0, canonical program `A134059.P4235307889070285583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134059 (n : ℕ) : ℤ :=
  A134059.P4235307889070285583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134239.P17118463381127374769

`A127952(n+1)+A003506(n+1)`
-/

namespace A134239.P17118463381127374769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 (n + 1) + A003506 (n + 1)

end

end A134239.P17118463381127374769

noncomputable section

/-- A134239: A127899(unsigned) * A007318.

Offset 0, canonical program `A134239.P17118463381127374769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A134239 (n : ℕ) : ℤ :=
  A134239.P17118463381127374769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A134239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134310.P5762516781671223903

`A173786(n-A123578(n))-1`
-/

namespace A134310.P5762516781671223903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 ((n : ℤ) - A123578 n).toNat - 1

end

end A134310.P5762516781671223903

noncomputable section

/-- A134310: (A000012 * A134309 + A134309 * A000012) - A000012, where the sequences are interpreted as lower triangular matrices.

Offset 0, canonical program `A134310.P5762516781671223903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134310 (n : ℕ) : ℤ :=
  A134310.P5762516781671223903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134315.P18118181357833699062

`A158780(A132774(n+1))`
-/

namespace A134315.P18118181357833699062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A132774 (n + 1)).toNat

end

end A134315.P18118181357833699062

noncomputable section

/-- A134315: A134309 * A097806.

Offset 1, canonical program `A134315.P18118181357833699062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134315 (n : ℕ) : ℤ :=
  A134315.P18118181357833699062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134398.P15547992659748660228

`A007318(n)+A004247(n)`
-/

namespace A134398.P15547992659748660228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A004247 n

end

end A134398.P15547992659748660228

noncomputable section

/-- A134398: Triangle read by rows: T(n, k) = (k-1)*(n-k) + binomial(n-1,k-1).

Offset 1, canonical program `A134398.P15547992659748660228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134398 (n : ℕ) : ℤ :=
  A134398.P15547992659748660228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134400.P18111942240929711886

`A007318(n)*A028310(A003056(n))`
-/

namespace A134400.P18111942240929711886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A028310 (A003056 n).toNat

end

end A134400.P18111942240929711886

noncomputable section

/-- A134400: M * A007318, where M = triangle with (1, 1, 2, 3, ...) in the main diagonal and the rest zeros.

Offset 0, canonical program `A134400.P18111942240929711886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134400 (n : ℕ) : ℤ :=
  A134400.P18111942240929711886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134417.P13500567794768261021

`A007318(n)*A133632(A002260(n+1))`
-/

namespace A134417.P13500567794768261021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A133632 (A002260 (n + 1)).toNat

end

end A134417.P13500567794768261021

noncomputable section

/-- A134417: Triangle read by rows: T(n,k) = binomial(n,k)*A133632(k + 1).

Offset 0, canonical program `A134417.P13500567794768261021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134417 (n : ℕ) : ℤ :=
  A134417.P13500567794768261021.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134484.P5349206259711963594

`A011782(A329854(n))²*A007318(n)`
-/

namespace A134484.P5349206259711963594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A329854 n).toNat ^ 2 * A007318 n

end

end A134484.P5349206259711963594

noncomputable section

/-- A134484: Triangle, read by rows, where T(n,k) = 2^[n*(n-1) - k*(k-1)] * binomial(n,k) for n>=k>=0.

Offset 0, canonical program `A134484.P5349206259711963594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A134484 (n : ℕ) : ℤ :=
  A134484.P5349206259711963594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A134484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134832.P13040656617122990359

`A007318(n)*A000757(A025581(n))`
-/

namespace A134832.P13040656617122990359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000757 (A025581 n).toNat

end

end A134832.P13040656617122990359

noncomputable section

/-- A134832: Triangle of succession numbers for circular permutations.

Offset 0, canonical program `A134832.P13040656617122990359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2628 terms. -/
def A134832 (n : ℕ) : ℤ :=
  A134832.P13040656617122990359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2628 terms. -/
def A134832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134870.P924456470311345683

`A051731(n+1)+1-A103451(n)`
-/

namespace A134870.P924456470311345683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (1 - A103451 n)

end

end A134870.P924456470311345683

noncomputable section

/-- A134870: A051731 + A000012 - A103451.

Offset 1, canonical program `A134870.P924456470311345683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870 (n : ℕ) : ℤ :=
  A134870.P924456470311345683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135091.P12373944751708945877

`A002426(A002262(n))*A007318(n)`
-/

namespace A135091.P12373944751708945877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (A002262 n).toNat * A007318 n

end

end A135091.P12373944751708945877

noncomputable section

/-- A135091: A007318 * triangle M, where M = A002426 * 0^(n-k), 0<=k<=n.

Offset 0, canonical program `A135091.P12373944751708945877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135091 (n : ℕ) : ℤ :=
  A135091.P12373944751708945877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135227.P11035620043874226728

`A007318(A198954(n)+n)`
-/

namespace A135227.P11035620043874226728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A198954 n + (n : ℤ)).toNat

end

end A135227.P11035620043874226728

noncomputable section

/-- A135227: Triangle A000012 * A135225, read by rows.

Offset 0, canonical program `A135227.P11035620043874226728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135227 (n : ℕ) : ℤ :=
  A135227.P11035620043874226728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135368.P3412412809127182481

`A166597(12*(n+1))/2`
-/

namespace A135368.P3412412809127182481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166597 (12 * (n + 1)) : ℚ) / 2

end

end A135368.P3412412809127182481

noncomputable section

/-- A135368: a(n) = (nextprime(12*n) - previousprime(12*n))/2.

Offset 1, canonical program `A135368.P3412412809127182481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A135368 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135368.P3412412809127182481.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A135368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135837.P1451698449987845866

`A007318(n)*A060546(A002262(n))`
-/

namespace A135837.P1451698449987845866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A060546 (A002262 n).toNat

end

end A135837.P1451698449987845866

noncomputable section

/-- A135837: A007318 * a triangle with (1, 2, 2, 4, 4, 8, 8, ...) in the main diagonal and the rest zeros.

Offset 1, canonical program `A135837.P1451698449987845866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135837 (n : ℕ) : ℤ :=
  A135837.P1451698449987845866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135838.P15074898654047059787

`A007318(n)*A060546(A003056(n))`
-/

namespace A135838.P15074898654047059787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A060546 (A003056 n).toNat

end

end A135838.P15074898654047059787

noncomputable section

/-- A135838: Triangle read by rows: T(n,k) = 2^floor(n/2)*binomial(n-1,k-1).

Offset 1, canonical program `A135838.P15074898654047059787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135838 (n : ℕ) : ℤ :=
  A135838.P15074898654047059787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136125.P2982316925870976645

`gcd(Δ[A094310(n+1)], A136572(n))`
-/

namespace A136125.P2982316925870976645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A136572 n)

end

end A136125.P2982316925870976645

noncomputable section

/-- A136125: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which the size of the last cycle is k (the cycles are ordered by increasing smallest elements; 1 <= k <=n).

Offset 1, canonical program `A136125.P2982316925870976645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A136125 (n : ℕ) : ℤ :=
  (A136125.P2982316925870976645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A136125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136216.P9104417109461140886

`A007318(n)*A008544(A025581(n))`
-/

namespace A136216.P9104417109461140886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008544 (A025581 n).toNat

end

end A136216.P9104417109461140886

noncomputable section

/-- A136216: Triangle T, read by rows, where T(n,k) = A008544(n-k)*C(n,k) where A008544 equals the triple factorials in column 0.

Offset 0, canonical program `A136216.P9104417109461140886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A136216 (n : ℕ) : ℤ :=
  A136216.P9104417109461140886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A136216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136535.P11251443088563950437

`A132812(n+1)-A007318(n+1)*A198321(n+1)`
-/

namespace A136535.P11251443088563950437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132812 (n + 1) - A007318 (n + 1) * A198321 (n + 1)

end

end A136535.P11251443088563950437

noncomputable section

/-- A136535: A128064 * A001263.

Offset 1, canonical program `A136535.P11251443088563950437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136535 (n : ℕ) : ℤ :=
  A136535.P11251443088563950437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136573.P11929683925808503740

`A233543(n)+A119502(A245300(n))-1`
-/

namespace A136573.P11929683925808503740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n + (A119502 (A245300 n).toNat - 1)

end

end A136573.P11929683925808503740

noncomputable section

/-- A136573: Triangle read by rows: (A000012 * A136572 + A136572 * A000012) - A000012.

Offset 0, canonical program `A136573.P11929683925808503740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A136573 (n : ℕ) : ℤ :=
  A136573.P11929683925808503740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A136573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137260.P7284618185643126145

`A162608(n)-A166350(n+1)`
-/

namespace A137260.P7284618185643126145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 n - A166350 (n + 1)

end

end A137260.P7284618185643126145

noncomputable section

/-- A137260: Triangle T(n, k) = k*(n-1)! - k!, read by rows.

Offset 1, canonical program `A137260.P7284618185643126145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A137260 (n : ℕ) : ℤ :=
  A137260.P7284618185643126145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A137260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137268.P14198878865993767981

`A051129(n+2)*A166350(n+1)`
-/

namespace A137268.P14198878865993767981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 2) * A166350 (n + 1)

end

end A137268.P14198878865993767981

noncomputable section

/-- A137268: Triangle T(n, k) = k! * (k+1)^(n-k), read by rows.

Offset 1, canonical program `A137268.P14198878865993767981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A137268 (n : ℕ) : ℤ :=
  A137268.P14198878865993767981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A137268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138070.P9399023133838687128

`A138114(A106255(n+1))`
-/

namespace A138070.P9399023133838687128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A106255 (n + 1)).toNat

end

end A138070.P9399023133838687128

noncomputable section

/-- A138070: Triangle read by rows: row n lists the successive digits of A135697(n), the palindromic number formed from the reflected decimal expansion of Pi.

Offset 1, canonical program `A138070.P9399023133838687128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138070 (n : ℕ) : ℤ :=
  A138070.P9399023133838687128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139262.P8524009422663711179

`A097070(n+1)-A081294(n)`
-/

namespace A139262.P8524009422663711179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 1) - A081294 n

end

end A139262.P8524009422663711179

noncomputable section

/-- A139262: Total number of two-element anti-chains over all ordered trees on n edges.

Offset 0, canonical program `A139262.P8524009422663711179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A139262 (n : ℕ) : ℤ :=
  A139262.P8524009422663711179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A139262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139526.P8121772475475467117

`A007318(n)*A076112(n+1)`
-/

namespace A139526.P8121772475475467117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A076112 (n + 1)

end

end A139526.P8121772475475467117

noncomputable section

/-- A139526: Triangle A061356 read right to left.

Offset 2, canonical program `A139526.P8121772475475467117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A139526 (n : ℕ) : ℤ :=
  A139526.P8121772475475467117.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A139526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140280.P15285720908636328681

`A007954(A007318(n))`
-/

namespace A140280.P15285720908636328681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007318 n).toNat

end

end A140280.P15285720908636328681

noncomputable section

/-- A140280: Product of digits of values in Pascal's triangle, by rows.

Offset 0, canonical program `A140280.P15285720908636328681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140280 (n : ℕ) : ℤ :=
  A140280.P15285720908636328681.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A140280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140682.P8275354965430538715

`A109004(n)-A007318(n)`
-/

namespace A140682.P8275354965430538715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n - A007318 n

end

end A140682.P8275354965430538715

noncomputable section

/-- A140682: Triangle T(n,k) = gcd(n,k)-binomial(n,k), 0<=k<=n.

Offset 0, canonical program `A140682.P8275354965430538715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140682 (n : ℕ) : ℤ :=
  A140682.P8275354965430538715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140977.P14132471099768097264

`A171942(A001316(2*n+1)+2+n)+1+n`
-/

namespace A140977.P14132471099768097264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (A001316 (2 * n + 1) + 2 + (n : ℤ)).toNat + 1 + (n : ℤ)

end

end A140977.P14132471099768097264

noncomputable section

/-- A140977: a(n) is the smallest integer > n that has the same number of (nonleading) zeros in its binary representation as n has.

Offset 1, canonical program `A140977.P14132471099768097264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140977 (n : ℕ) : ℤ :=
  A140977.P14132471099768097264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141657.P6051655849065492727

`p?[A307985(A072473(n+1))]`
-/

namespace A141657.P6051655849065492727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (A072473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141657.P6051655849065492727

noncomputable section

/-- A141657: a(n) = (prime(2*m)-prime(m))/6 where m is the n-th positive integer such that (prime(2*m)-prime(m))/6 is prime.

Offset 1, canonical program `A141657.P6051655849065492727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A141657 (n : ℕ) : ℤ :=
  A141657.P6051655849065492727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A141657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141665.P1503714888046973662

`A007318(n)*A056594(A002262(n))`
-/

namespace A141665.P1503714888046973662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056594 (A002262 n).toNat

end

end A141665.P1503714888046973662

noncomputable section

/-- A141665: A signed half of Pascal's triangle A007318: p(x,n) = (1+I*x)^n; t(n,m) = real part of coefficients(p(x,n)).

Offset 0, canonical program `A141665.P1503714888046973662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141665 (n : ℕ) : ℤ :=
  A141665.P1503714888046973662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142243.P5346729811082170933

`A062344(n)*A106187(n)`
-/

namespace A142243.P5346729811082170933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 n * A106187 n

end

end A142243.P5346729811082170933

noncomputable section

/-- A142243: Triangle T(n,k) = binomial(2*n,k) *binomial(2*n-2*k,n-k), read by rows; 0<=k<=n.

Offset 0, canonical program `A142243.P5346729811082170933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8430 terms. -/
def A142243 (n : ℕ) : ℤ :=
  A142243.P5346729811082170933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8430 terms. -/
def A142243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142971.P11295584291541300663

`-(A051731(n+1)*A061397(A054531(n+1)))`
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

/-! ## A143110.P1100247901521213873

`A143425(n+1)%3`
-/

namespace A143110.P1100247901521213873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143425 (n + 1)) 3

end

end A143110.P1100247901521213873

noncomputable section

/-- A143110: Triangle read by rows, A051731 * A000034 * 0^(n-k), 1<=k<=n.

Offset 1, canonical program `A143110.P1100247901521213873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143110 (n : ℕ) : ℤ :=
  A143110.P1100247901521213873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143110.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143333.P4500561417353850854

`A007318(n)*A047999(n)`
-/

namespace A143333.P4500561417353850854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A047999 n

end

end A143333.P4500561417353850854

noncomputable section

/-- A143333: Pascal's triangle binomial(n,m) read by rows, all even elements replaced by zero.

Offset 0, canonical program `A143333.P4500561417353850854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143333 (n : ℕ) : ℤ :=
  A143333.P4500561417353850854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143593.P13769069135629193761

`A022998(A143956(n+1))`
-/

namespace A143593.P13769069135629193761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A143956 (n + 1)).toNat

end

end A143593.P13769069135629193761

noncomputable section

/-- A143593: Triangle read by rows, square of A238303 (an infinite lower triangular matrix with 1's in the first column and the rest 2's).

Offset 1, canonical program `A143593.P13769069135629193761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143593 (n : ℕ) : ℤ :=
  A143593.P13769069135629193761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144079.P16455601221658546994

`abs(A113473(n+1)-A144078(n+1))`
-/

namespace A144079.P16455601221658546994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113473 (n + 1) - A144078 (n + 1)|

end

end A144079.P16455601221658546994

noncomputable section

/-- A144079: a(n) = the number of digits in the binary representation of n that equal the corresponding digit in the binary reversal of n. (I.e., a(n) = number of 0's in n XOR A030101(n).)

Offset 1, canonical program `A144079.P16455601221658546994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144079 (n : ℕ) : ℤ :=
  A144079.P16455601221658546994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144084.P15154162313279112689

`A007318(n)*A008279(n)`
-/

namespace A144084.P15154162313279112689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008279 n

end

end A144084.P15154162313279112689

noncomputable section

/-- A144084: T(n,k) is the number of partial bijections of height k (height(alpha) = |Im(alpha)|) of an n-element set.

Offset 0, canonical program `A144084.P15154162313279112689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A144084 (n : ℕ) : ℤ :=
  A144084.P15154162313279112689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A144084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144403.P18283006545070846630

`2*C(A007318(n), 2)-1`
-/

namespace A144403.P18283006545070846630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (A007318 n).toNat 2 : ℤ) - 1

end

end A144403.P18283006545070846630

noncomputable section

/-- A144403: Triangle T(n, k) = binomial(n, k)^2 - binomial(n, k) - 1, read by rows.

Offset 0, canonical program `A144403.P18283006545070846630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144403 (n : ℕ) : ℤ :=
  A144403.P18283006545070846630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144404.P1827414218033536067

`A144390(A007318(n))`
-/

namespace A144404.P1827414218033536067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144390 (A007318 n).toNat

end

end A144404.P1827414218033536067

noncomputable section

/-- A144404: Triangle T(n,k) = 3*binomial(n, k)^2 - binomial(n, k) - 1, read by rows.

Offset 0, canonical program `A144404.P1827414218033536067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144404 (n : ℕ) : ℤ :=
  A144404.P1827414218033536067.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145224.P15372820718121127702

`A007318(n)*A003221(A025581(n))`
-/

namespace A145224.P15372820718121127702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A003221 (A025581 n).toNat

end

end A145224.P15372820718121127702

noncomputable section

/-- A145224: Triangle read by rows: T(n,k) is the number of even permutations (of an n-set) with exactly k fixed points.

Offset 0, canonical program `A145224.P15372820718121127702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145224 (n : ℕ) : ℤ :=
  A145224.P15372820718121127702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145225.P16601938539536274568

`A007318(n)*A000387(A025581(n))`
-/

namespace A145225.P16601938539536274568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000387 (A025581 n).toNat

end

end A145225.P16601938539536274568

noncomputable section

/-- A145225: Triangle read by rows: T(n,k) is the number of odd permutations (of an n-set) with exactly k fixed points.

Offset 0, canonical program `A145225.P16601938539536274568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145225 (n : ℕ) : ℤ :=
  A145225.P16601938539536274568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A145225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145398.P13757038828564537059

`A007429(n+1)+A145378(n+1)-A327096(n+1)`
-/

namespace A145398.P13757038828564537059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A145378 (n + 1) - A327096 (n + 1))

end

end A145398.P13757038828564537059

noncomputable section

/-- A145398: a(n) = Sum_{d|n} sigma(d) - Sum_{2c|n} sigma(c) + 4*Sum_{4b|n} sigma(b).

Offset 1, canonical program `A145398.P13757038828564537059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145398 (n : ℕ) : ℤ :=
  A145398.P13757038828564537059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145398.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152198.P9677035182009018168

`A007318(n-C(ceil(sqrt(n)), 2))`
-/

namespace A152198.P9677035182009018168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n - Nat.choose ⌈Real.sqrt (n : ℝ)⌉.toNat 2)

end

end A152198.P9677035182009018168

noncomputable section

/-- A152198: Triangle read by rows, A007318 rows repeated.

Offset 0, canonical program `A152198.P9677035182009018168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152198 (n : ℕ) : ℤ :=
  A152198.P9677035182009018168.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152905.P10328363192187516747

`A007318(floor(n/2))`
-/

namespace A152905.P10328363192187516747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 2⌋.toNat

end

end A152905.P10328363192187516747

noncomputable section

/-- A152905: Irregular triangle read by rows, numbers in A007318 repeated .

Offset 0, canonical program `A152905.P10328363192187516747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152905 (n : ℕ) : ℤ :=
  A152905.P10328363192187516747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152906.P12804490832586299334

`A007318(floor(n/3))`
-/

namespace A152906.P12804490832586299334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 3⌋.toNat

end

end A152906.P12804490832586299334

noncomputable section

/-- A152906: Irregular triangle read by rows, numbers in A007318 repeated three times .

Offset 0, canonical program `A152906.P12804490832586299334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152906 (n : ℕ) : ℤ :=
  A152906.P12804490832586299334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153491.P5433564092227727412

`11*A007318(n)-8`
-/

namespace A153491.P5433564092227727412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A007318 n - 8

end

end A153491.P5433564092227727412

noncomputable section

/-- A153491: Triangle T(n,m)= 11*binomial(n,k) - 8 read by rows, 0<=k<=n.

Offset 0, canonical program `A153491.P5433564092227727412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153491 (n : ℕ) : ℤ :=
  A153491.P5433564092227727412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154234.P4965962223340030436

`A130855(n)%A000005(A134868(n+1))`
-/

namespace A154234.P4965962223340030436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130855 n) (A000005 (A134868 (n + 1)).toNat)

end

end A154234.P4965962223340030436

noncomputable section

/-- A154234: Triangle read by rows: T(n,k) = (n mod d(k)), where d(i) is the number of divisors of i.

Offset 1, canonical program `A154234.P4965962223340030436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154234 (n : ℕ) : ℤ :=
  A154234.P4965962223340030436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154314.P5025358904430600657

`∪[A023745(n+1), A031948(n+1)]`
-/

namespace A154314.P5025358904430600657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154314.P5025358904430600657

noncomputable section

/-- A154314: Numbers with not more than two distinct digits in ternary representation.

Offset 1, canonical program `A154314.P5025358904430600657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154314 (n : ℕ) : ℤ :=
  (A154314.P5025358904430600657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154372.P6688553905253270137

`A007318(n)*A009998(n)`
-/

namespace A154372.P6688553905253270137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A009998 n

end

end A154372.P6688553905253270137

noncomputable section

/-- A154372: Triangle T(n,k) = (k+1)^(n-k)*binomial(n,k).

Offset 0, canonical program `A154372.P6688553905253270137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3344 terms. -/
def A154372 (n : ℕ) : ℤ :=
  A154372.P6688553905253270137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3344 terms. -/
def A154372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155495.P14503625525191731558

`A007318(n)*A086645(n)`
-/

namespace A155495.P14503625525191731558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A086645 n

end

end A155495.P14503625525191731558

noncomputable section

/-- A155495: Triangle read by rows: t(n,m) = binomial(2*n,2*m) * binomial(n,m).

Offset 0, canonical program `A155495.P14503625525191731558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6608 terms. -/
def A155495 (n : ℕ) : ℤ :=
  A155495.P14503625525191731558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6608 terms. -/
def A155495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155798.P11174002557651804679

`A155797(n)+A007318(n)`
-/

namespace A155798.P11174002557651804679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + A007318 n

end

end A155798.P11174002557651804679

noncomputable section

/-- A155798: Triangle read by rows: t(n,k)=Binomial[n, k] + Binomial[k*(n - k), n].

Offset 0, canonical program `A155798.P11174002557651804679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2043 terms. -/
def A155798 (n : ℕ) : ℤ :=
  A155798.P11174002557651804679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2043 terms. -/
def A155798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157635.P5484707962841766784

`ceil(A157632(n)/3)`
-/

namespace A157635.P5484707962841766784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157632 n : ℚ) / 3⌉

end

end A157635.P5484707962841766784

noncomputable section

/-- A157635: Triangle read by rows: T(n,m) = 1 if n*m*(n-m) = 0, and n*m*(n-m) otherwise.

Offset 0, canonical program `A157635.P5484707962841766784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157635 (n : ℕ) : ℤ :=
  A157635.P5484707962841766784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157694.P9738583196815750906

`A007318(lcm(n, C(2, A068527(2*n))))`
-/

namespace A157694.P9738583196815750906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.lcm n (Nat.choose 2 (A068527 (2 * n)).toNat))

end

end A157694.P9738583196815750906

noncomputable section

/-- A157694: Triangle read by rows: the Pascal triangle A007318 with all elements replaced by 1 which do not equal the central binomial coefficients.

Offset 0, canonical program `A157694.P9738583196815750906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157694 (n : ℕ) : ℤ :=
  A157694.P9738583196815750906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159834.P7982339477551282037

`A007318(n)*A001464(A025581(n))`
-/

namespace A159834.P7982339477551282037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001464 (A025581 n).toNat

end

end A159834.P7982339477551282037

noncomputable section

/-- A159834: Coefficient array of Hermite_H(n, (x-1)/sqrt(2))/(sqrt(2))^n.

Offset 0, canonical program `A159834.P7982339477551282037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A159834 (n : ℕ) : ℤ :=
  A159834.P7982339477551282037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A159834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161642.P15049293823349012266

`gcd(lcm(A007318(n+1), a(n-1)), A007318(n))` with `a(0)=1`
-/

namespace A161642.P15049293823349012266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (Int.lcm (A007318 (n + 1)) (a (n - 1) : ℤ) : ℤ) (A007318 n)

end

end A161642.P15049293823349012266

noncomputable section

/-- A161642: Triangle (by rows): T(n,k) = A007318(n,k) / A003989(n+1,k+1).

Offset 0, canonical program `A161642.P15049293823349012266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161642 (n : ℕ) : ℤ :=
  (A161642.P15049293823349012266.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162801.P8102485252760729664

`A058296(n+1)%Δ[n²]²`
-/

namespace A162801.P8102485252760729664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058296 (n + 1)) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A162801.P8102485252760729664

noncomputable section

/-- A162801: Bisection of A162800.

Offset 1, canonical program `A162801.P8102485252760729664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162801 (n : ℕ) : ℤ :=
  A162801.P8102485252760729664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162990.P15423079187994431436

`A094310(A014132(n+1))^2`
-/

namespace A162990.P15423079187994431436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A014132 (n + 1)).toNat ^ 2

end

end A162990.P15423079187994431436

noncomputable section

/-- A162990: Triangle of polynomial coefficients related to 3F2([1,n+1,n+1],[n+2,n+2],z).

Offset 1, canonical program `A162990.P15423079187994431436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A162990 (n : ℕ) : ℤ :=
  A162990.P15423079187994431436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A162990.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A164887.P8444353184396680170

`record[A080343(n)*A209492(n)]`
-/

namespace A164887.P8444353184396680170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080343 n * A209492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164887.P8444353184396680170

noncomputable section

/-- A164887: a(n) = smallest number that leads to a new fixed point under the base-2 Kaprekar map of A164884.

Offset 1, canonical program `A164887.P8444353184396680170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A164887 (n : ℕ) : ℤ :=
  A164887.P8444353184396680170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A164887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165201.P17103045525566951744

`A000007(n)+Δ[A164651(n)]`
-/

namespace A165201.P17103045525566951744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A165201.P17103045525566951744

noncomputable section

/-- A165201: Expansion of 1/(1-x*c(x)^3), c(x) the g.f. of A000108.

Offset 0, canonical program `A165201.P17103045525566951744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A165201 (n : ℕ) : ℤ :=
  A165201.P17103045525566951744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A165201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165203.P6511348831486964080

`Δ[A026726(n)]`
-/

namespace A165203.P6511348831486964080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165203.P6511348831486964080

noncomputable section

/-- A165203: Expansion of (1+x)*c(x)^3/(1-x*c(x)^3), c(x) the g.f. of A000108.

Offset 0, canonical program `A165203.P6511348831486964080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A165203 (n : ℕ) : ℤ :=
  A165203.P6511348831486964080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A165203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166282.P3565531868312319310

`2*A047999(n)-A167274(n)`
-/

namespace A166282.P3565531868312319310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047999 n - A167274 n

end

end A166282.P3565531868312319310

noncomputable section

/-- A166282: Matrix inverse of Sierpinski's triangle (A047999, Pascal's triangle mod 2).

Offset 0, canonical program `A166282.P3565531868312319310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166282 (n : ℕ) : ℤ :=
  A166282.P3565531868312319310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166535.P307768964407928215

`eq[A000007(n), A014082(A279645(n))]`
-/

namespace A166535.P307768964407928215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A279645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166535.P307768964407928215

noncomputable section

/-- A166535: Positive integers whose binary representation does not contain a run of more than three consecutive 0's or 1's.

Offset 1, canonical program `A166535.P307768964407928215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4432 terms. -/
def A166535 (n : ℕ) : ℤ :=
  (A166535.P307768964407928215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4432 terms. -/
def A166535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166687.P18219030986989704232

`A001481(n+1)+1`
-/

namespace A166687.P18219030986989704232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 1

end

end A166687.P18219030986989704232

noncomputable section

/-- A166687: Numbers of the form x^2 + y^2 + 1, x, y integers.

Offset 1, canonical program `A166687.P18219030986989704232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687 (n : ℕ) : ℤ :=
  A166687.P18219030986989704232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169615.P2865630802981082709

`A357814(lt[1, A104763(n+1)])`
-/

namespace A169615.P2865630802981082709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A169615.P2865630802981082709

noncomputable section

/-- A169615: Triangular array: T(n,k)=floor(F(n+k)/F(k)), k=1,2,...,n-2; n>=3, where F=A000045 (Fibonacci numbers).

Offset 1, canonical program `A169615.P2865630802981082709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. -/
def A169615 (n : ℕ) : ℤ :=
  A169615.P2865630802981082709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. -/
def A169615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171128.P1141198525169525433

`A007318(n)*A002426(A025581(n))`
-/

namespace A171128.P1141198525169525433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A002426 (A025581 n).toNat

end

end A171128.P1141198525169525433

noncomputable section

/-- A171128: A117852*A130595 as lower triangular matrices.

Offset 0, canonical program `A171128.P1141198525169525433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171128 (n : ℕ) : ℤ :=
  A171128.P1141198525169525433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171650.P15428970908307897054

`A007318(n)*A026641(A025581(n))`
-/

namespace A171650.P15428970908307897054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026641 (A025581 n).toNat

end

end A171650.P15428970908307897054

noncomputable section

/-- A171650: Triangle T, read by rows : T(n,k) = A007318(n,k)*A026641(n-k).

Offset 0, canonical program `A171650.P15428970908307897054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A171650 (n : ℕ) : ℤ :=
  A171650.P15428970908307897054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A171650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171670.P17266629762442056093

`A007318(n)*A005773(A025581(n))`
-/

namespace A171670.P17266629762442056093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005773 (A025581 n).toNat

end

end A171670.P17266629762442056093

noncomputable section

/-- A171670: Triangle T read by rows : T(n,k)= A007318(n,k)*A005773(n-k).

Offset 0, canonical program `A171670.P17266629762442056093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171670 (n : ℕ) : ℤ :=
  A171670.P17266629762442056093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171700.P7889605556974686210

`A156663(n+1)*A198321(n+1)`
-/

namespace A171700.P7889605556974686210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 (n + 1) * A198321 (n + 1)

end

end A171700.P7889605556974686210

noncomputable section

/-- A171700: Triangle T : T(n,k)= A007318(n,k)*a(n-k) with a(0)=0 and a(n)= A077957(n-1) for n>0.

Offset 0, canonical program `A171700.P7889605556974686210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A171700 (n : ℕ) : ℤ :=
  A171700.P7889605556974686210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A171700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171730.P9109354056744307278

`A193922(n)+char[∑[n+1]]`
-/

namespace A171730.P9109354056744307278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171730.P9109354056744307278

noncomputable section

/-- A171730: Triangle of differences of Fibonacci numbers, rows descending.

Offset 1, canonical program `A171730.P9109354056744307278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171730 (n : ℕ) : ℤ :=
  A171730.P9109354056744307278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172319.P930179998604293317

`∑[A258800(n)]+1`
-/

namespace A172319.P930179998604293317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172319.P930179998604293317

noncomputable section

/-- A172319: 10th column of A172119.

Offset 0, canonical program `A172319.P930179998604293317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A172319 (n : ℕ) : ℤ :=
  A172319.P930179998604293317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A172319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173256.P14061795327720257061

`∑[A001481(n+1)]`
-/

namespace A173256.P14061795327720257061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P14061795327720257061

noncomputable section

/-- A173256: Partial sums of A001481.

Offset 1, canonical program `A173256.P14061795327720257061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173256 (n : ℕ) : ℤ :=
  A173256.P14061795327720257061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173671.P14753156303300427843

`comp[A254027(n)]`
-/

namespace A173671.P14753156303300427843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254027 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173671.P14753156303300427843

noncomputable section

/-- A173671: Positive integers that cannot be expressed as 3^m-2^n where m and n are integers.

Offset 1, canonical program `A173671.P14753156303300427843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173671 (n : ℕ) : ℤ :=
  (A173671.P14753156303300427843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174032.P17895363886377361052

`A005187(A007318(n))`
-/

namespace A174032.P17895363886377361052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A007318 n).toNat

end

end A174032.P17895363886377361052

noncomputable section

/-- A174032: Triangle T(n, k) = Sum_{j>=0} floor(binomial(n, k)/2^j), read by rows.

Offset 0, canonical program `A174032.P17895363886377361052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A174032 (n : ℕ) : ℤ :=
  A174032.P17895363886377361052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A174032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174037.P9722223957527867773

`A080277(A007318(n))`
-/

namespace A174037.P9722223957527867773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (A007318 n).toNat

end

end A174037.P9722223957527867773

noncomputable section

/-- A174037: Triangle T(n, k, q) = Sum_{j>=0} q^j * floor(binomial(n, k)/2^j) with q = 2, read by rows.

Offset 0, canonical program `A174037.P9722223957527867773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A174037 (n : ℕ) : ℤ :=
  A174037.P9722223957527867773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A174037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174373.P18021089655363768877

`A007918(A007318(n))`
-/

namespace A174373.P18021089655363768877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A007318 n).toNat

end

end A174373.P18021089655363768877

noncomputable section

/-- A174373: Triangle T(n,m) = nextprime(binomial(n,m)) read by rows.

Offset 0, canonical program `A174373.P18021089655363768877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174373 (n : ℕ) : ℤ :=
  A174373.P18021089655363768877.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174690.P2784647028738832059

`A196347(n)-A033312(A003056(n))`
-/

namespace A174690.P2784647028738832059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196347 n - A033312 (A003056 n).toNat

end

end A174690.P2784647028738832059

noncomputable section

/-- A174690: Triangle T(n, k) = n!*binomial(n, k) - n! + 1, read by rows.

Offset 0, canonical program `A174690.P2784647028738832059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1913 terms. -/
def A174690 (n : ℕ) : ℤ :=
  A174690.P2784647028738832059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1913 terms. -/
def A174690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175992.P4475088882485289309

`and(A051731(n+1), A071762(n))`
-/

namespace A175992.P4475088882485289309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A071762 n)

end

end A175992.P4475088882485289309

noncomputable section

/-- A175992: Triangle T(n,k) read by rows. If n=k then 0, else if k divides n then 1 else 0.

Offset 1, canonical program `A175992.P4475088882485289309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A175992 (n : ℕ) : ℤ :=
  A175992.P4475088882485289309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A175992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176228.P12776521110466897369

`A007318(n)+A108037(n)+1`
-/

namespace A176228.P12776521110466897369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A108037 n + 1)

end

end A176228.P12776521110466897369

noncomputable section

/-- A176228: Triangle read by rows: T(n,k) = binomial(n,k) + Fibonacci(n) + 1.

Offset 0, canonical program `A176228.P12776521110466897369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176228 (n : ℕ) : ℤ :=
  A176228.P12776521110466897369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176348.P5045138411392960695

`A007318(n)*A176346(n)`
-/

namespace A176348.P5045138411392960695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A176346 n

end

end A176348.P5045138411392960695

noncomputable section

/-- A176348: Triangle, read by rows: T(n, k) = binomial(n, k)*(1 + 2*(n+1) - (k+1)*floor((n+1)/(k+1)) - (n-k+1)* floor((n+1)/(n-k+1))).

Offset 0, canonical program `A176348.P5045138411392960695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176348 (n : ℕ) : ℤ :=
  A176348.P5045138411392960695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176988.P11168993376640129873

`A064789(A218890(n+1))`
-/

namespace A176988.P11168993376640129873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A218890 (n + 1)).toNat

end

end A176988.P11168993376640129873

noncomputable section

/-- A176988: Triangle read by rows, which contains Noll's indices of Zernike polynomials in row n sorted along increasing index of the azimuthal quantum number.

Offset 0, canonical program `A176988.P11168993376640129873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A176988 (n : ℕ) : ℤ :=
  A176988.P11168993376640129873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A176988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178129.P7515760070660203896

`A007318(C(3, n))*∑[A050508(n)]`
-/

namespace A178129.P7515760070660203896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178129.P7515760070660203896

noncomputable section

/-- A178129: Partial sums of A050508.

Offset 0, canonical program `A178129.P7515760070660203896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178129 (n : ℕ) : ℤ :=
  A178129.P7515760070660203896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178301.P7325407682476030006

`A007318(n)*A178300(n+1)`
-/

namespace A178301.P7325407682476030006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A178300 (n + 1)

end

end A178301.P7325407682476030006

noncomputable section

/-- A178301: Triangle T(n,k) = binomial(n,k)*binomial(n+k+1,n+1) read by rows, 0 <= k <= n.

Offset 0, canonical program `A178301.P7325407682476030006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9134 terms. -/
def A178301 (n : ℕ) : ℤ :=
  A178301.P7325407682476030006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9134 terms. -/
def A178301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178821.P8724143194613652531

`C(A003056(n)+4, 4)*A007318(n)`
-/

namespace A178821.P8724143194613652531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n + 4).toNat 4 : ℤ) * A007318 n

end

end A178821.P8724143194613652531

noncomputable section

/-- A178821: Triangle read by rows: T(n,k) = binomial(n+4,4) * binomial(n,k), 0 <= k <= n.

Offset 0, canonical program `A178821.P8724143194613652531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178821 (n : ℕ) : ℤ :=
  A178821.P8724143194613652531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178822.P8504719000700470492

`C(A003056(n)+5, 5)*A007318(n)`
-/

namespace A178822.P8504719000700470492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n + 5).toNat 5 : ℤ) * A007318 n

end

end A178822.P8504719000700470492

noncomputable section

/-- A178822: Triangle read by rows: T(n,k) = C(n+5,5) * C(n,k), 0 <= k <= n.

Offset 0, canonical program `A178822.P8504719000700470492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178822 (n : ℕ) : ℤ :=
  A178822.P8504719000700470492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181543.P15440393251094073346

`A007318(n)^3`
-/

namespace A181543.P15440393251094073346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 3

end

end A181543.P15440393251094073346

noncomputable section

/-- A181543: Triangle of cubed binomial coefficients, T(n,k) = C(n,k)^3, read by rows.

Offset 0, canonical program `A181543.P15440393251094073346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A181543 (n : ℕ) : ℤ :=
  A181543.P15440393251094073346.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A181543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181701.P6858604762767290858

`A011782(ceil(log2(A181741(n+1)+2)))*A181741(n+1)`
-/

namespace A181701.P6858604762767290858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ⌈Real.logb 2 (A181741 (n + 1) + 2 : ℝ)⌉.toNat * A181741 (n + 1)

end

end A181701.P6858604762767290858

noncomputable section

/-- A181701: Near-perfect numbers (A181595) of the form 2^(t-1)*(2^t-2^k-1), where 2^t-2^k-1 is prime, k>=1, t>k.

Offset 1, canonical program `A181701.P6858604762767290858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A181701 (n : ℕ) : ℤ :=
  A181701.P6858604762767290858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A181701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181738.P3608034959652289532

`A007318(n)*A138230(A025581(n))`
-/

namespace A181738.P3608034959652289532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A138230 (A025581 n).toNat

end

end A181738.P3608034959652289532

noncomputable section

/-- A181738: T(n, k) is the coefficient of x^k of the polynomial p(n) which is defined as the scalar part of P(n) = Q(x+1, 1, 1, 1) * P(n-1) for n > 0 and P(0) = Q(1, 0, 0, 0) where Q(a, b, c, d) is a quaternion, triangle read by rows.

Offset 0, canonical program `A181738.P3608034959652289532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A181738 (n : ℕ) : ℤ :=
  A181738.P3608034959652289532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A181738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182167.P1515146561545747847

`A053616(A002708(n+1)+∑[n])`
-/

namespace A182167.P1515146561545747847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A002708 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A182167.P1515146561545747847

noncomputable section

/-- A182167: Min( f(n), n-f(n) ), where f(n) = A002708(n) = Fibonacci(n) mod n.

Offset 1, canonical program `A182167.P1515146561545747847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A182167 (n : ℕ) : ℤ :=
  A182167.P1515146561545747847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A182167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185342.P17628851280790117132

`2*A033999(A002262(n))*A193862(n)`
-/

namespace A185342.P17628851280790117132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033999 (A002262 n).toNat * A193862 n)

end

end A185342.P17628851280790117132

noncomputable section

/-- A185342: Triangle of successive recurrences in columns of A117317(n).

Offset 0, canonical program `A185342.P17628851280790117132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A185342 (n : ℕ) : ℤ :=
  A185342.P17628851280790117132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A185342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185384.P10083727125216535924

`A000045(A128076(n+1))*A007318(n)`
-/

namespace A185384.P10083727125216535924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128076 (n + 1)).toNat * A007318 n

end

end A185384.P10083727125216535924

noncomputable section

/-- A185384: A binomial transform of Fibonacci numbers.

Offset 0, canonical program `A185384.P10083727125216535924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185384 (n : ℕ) : ℤ :=
  A185384.P10083727125216535924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188322.P2194308858124452839

`record[n+1-A188321(n+1)-A188321(n+1)]`
-/

namespace A188322.P2194308858124452839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A188321 (n + 1) - A188321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188322.P2194308858124452839

noncomputable section

/-- A188322: Positions of 0 in A188321; complement of A188323.

Offset 1, canonical program `A188322.P2194308858124452839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4645 terms. -/
def A188322 (n : ℕ) : ℤ :=
  A188322.P2194308858124452839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4645 terms. -/
def A188322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188371.P14841229343104294779

`A188321(A188374(n+1)+n)`
-/

namespace A188371.P14841229343104294779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (A188374 (n + 1) + (n : ℤ)).toNat

end

end A188371.P14841229343104294779

noncomputable section

/-- A188371: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=6, [ ]=floor.

Offset 1, canonical program `A188371.P14841229343104294779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188371 (n : ℕ) : ℤ :=
  A188371.P14841229343104294779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189913.P8568618300615823938

`A007318(n)*A057977(A002262(n))`
-/

namespace A189913.P8568618300615823938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057977 (A002262 n).toNat

end

end A189913.P8568618300615823938

noncomputable section

/-- A189913: Triangle read by rows: T(n,k) = binomial(n, k) * k! / (floor(k/2)! * floor((k+2)/2)!).

Offset 0, canonical program `A189913.P8568618300615823938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A189913 (n : ℕ) : ℤ :=
  A189913.P8568618300615823938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A189913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191687.P8080504616464100748

`A192396(n)+A070909(n)`
-/

namespace A191687.P8080504616464100748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192396 n + A070909 n

end

end A191687.P8080504616464100748

noncomputable section

/-- A191687: Table T(n,k) = ceiling((1/2)*((k+1)^n+(1+(-1)^k)/2)) read by antidiagonals.

Offset 0, canonical program `A191687.P8080504616464100748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A191687 (n : ℕ) : ℤ :=
  A191687.P8080504616464100748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A191687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193673.P9491466020906011608

`A007318(n)*A007051(A025581(n))`
-/

namespace A193673.P9491466020906011608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007051 (A025581 n).toNat

end

end A193673.P9491466020906011608

noncomputable section

/-- A193673: Triangle given by p(n,k)=(coefficient of x^(n-k) in (1/2) ((x+3)^n+(x+1)^n)), 0<=k<=n.

Offset 0, canonical program `A193673.P9491466020906011608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193673 (n : ℕ) : ℤ :=
  A193673.P9491466020906011608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193820.P15219830096764478184

`A007318(n)+a(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A193820.P15219830096764478184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007318 n + Int.tmod (a (n - 2)) (a (n - 1))

end

end A193820.P15219830096764478184

noncomputable section

/-- A193820: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(x+1)^n and q(n,x)=x^n+x^(n-1)+...+x+1.

Offset 0, canonical program `A193820.P15219830096764478184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193820 (n : ℕ) : ℤ :=
  A193820.P15219830096764478184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193820.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A195153.P11953675593454716449

`A128227(lt[A051731(n+1), A051731(n+2)])`
-/

namespace A195153.P11953675593454716449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195153.P11953675593454716449

noncomputable section

/-- A195153: Irregular triangle read by rows in which row n lists numbers d-1 that do not divide n, where d divides n.

Offset 3, canonical program `A195153.P11953675593454716449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A195153 (n : ℕ) : ℤ :=
  A195153.P11953675593454716449.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A195153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199985.P15200555582612975294

`2*A034050(n+1)-A131664(n+1)`
-/

namespace A199985.P15200555582612975294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034050 (n + 1) - A131664 (n + 1)

end

end A199985.P15200555582612975294

noncomputable section

/-- A199985: Numbers with digital product = 5.

Offset 1, canonical program `A199985.P15200555582612975294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199985 (n : ℕ) : ℤ :=
  A199985.P15200555582612975294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A199985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204203.P18355877739269611644

`2*A054143(n)-A007318(n)`
-/

namespace A204203.P18355877739269611644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - A007318 n

end

end A204203.P18355877739269611644

noncomputable section

/-- A204203: Triangle based on (0,1/4,1) averaging array.

Offset 1, canonical program `A204203.P18355877739269611644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204203 (n : ℕ) : ℤ :=
  A204203.P18355877739269611644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204906.P7021400860210866951

`A204898(A080036(n+1))`
-/

namespace A204906.P7021400860210866951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (A080036 (n + 1)).toNat

end

end A204906.P7021400860210866951

noncomputable section

/-- A204906: Ordered differences of primes >=5.

Offset 1, canonical program `A204906.P7021400860210866951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A204906 (n : ℕ) : ℤ :=
  A204906.P7021400860210866951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A204906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206429.P13329034163071246304

`A003057(n+2)*A061356(n+2)`
-/

namespace A206429.P13329034163071246304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A061356 (n + 2)

end

end A206429.P13329034163071246304

noncomputable section

/-- A206429: Triangular array read by rows. T(n,k) is the number of rooted labeled trees on n nodes such that the root node has degree k. n>=2, 1<=k<=n-1.

Offset 2, canonical program `A206429.P13329034163071246304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A206429 (n : ℕ) : ℤ :=
  A206429.P13329034163071246304.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A206429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207536.P11378481812331935203

`A034839(n+1)/A034867(n+1)*A105070(n+2)`
-/

namespace A207536.P11378481812331935203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034839 (n + 1) : ℚ) / (A034867 (n + 1) : ℚ) * (A105070 (n + 2) : ℚ)

end

end A207536.P11378481812331935203

noncomputable section

/-- A207536: Triangle of coefficients of polynomials u(n,x) jointly generated with A105070; see Formula section.

Offset 1, canonical program `A207536.P11378481812331935203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207536.P11378481812331935203.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208058.P9863792287481975596

`A162608(A083920(n))/A233543(n)`
-/

namespace A208058.P9863792287481975596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162608 (A083920 n).toNat : ℚ) / (A233543 n : ℚ)

end

end A208058.P9863792287481975596

noncomputable section

/-- A208058: Triangle by rows relating to the factorials, generated from A002260.

Offset 0, canonical program `A208058.P9863792287481975596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A208058 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208058.P9863792287481975596.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A208058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208330.P13404258337089435429

`A001045(A002260(n+1))*A007318(n)`
-/

namespace A208330.P13404258337089435429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002260 (n + 1)).toNat * A007318 n

end

end A208330.P13404258337089435429

noncomputable section

/-- A208330: Triangle of coefficients of polynomials u(n,x) jointly generated with A208331; see the Formula section.

Offset 1, canonical program `A208330.P13404258337089435429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208330 (n : ℕ) : ℤ :=
  A208330.P13404258337089435429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208331.P5338589986649235062

`A007318(n)*A283642(A002262(n))`
-/

namespace A208331.P5338589986649235062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A283642 (A002262 n).toNat

end

end A208331.P5338589986649235062

noncomputable section

/-- A208331: Triangle of coefficients of polynomials v(n,x) jointly generated with A208330; see the Formula section.

Offset 1, canonical program `A208331.P5338589986649235062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208331 (n : ℕ) : ℤ :=
  A208331.P5338589986649235062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208656.P8927906641783300416

`A002024(n+1)*A135278(n)-A007318(n)`
-/

namespace A208656.P8927906641783300416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A135278 n - A007318 n

end

end A208656.P8927906641783300416

noncomputable section

/-- A208656: Triangle T(n, k) = n*C(n,k) - C(n-1,k-1), 1 <= k <= n, read by rows.

Offset 1, canonical program `A208656.P8927906641783300416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208656 (n : ℕ) : ℤ :=
  A208656.P8927906641783300416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208657.P11812723099242280050

`∑[A010054(n)]*A074909(n)-A007318(n)`
-/

namespace A208657.P11812723099242280050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A074909 n - A007318 n

end

end A208657.P11812723099242280050

noncomputable section

/-- A208657: Triangular array read by rows: n*binomial(n,n-k+1)-binomial(n-1,n-k) with k = 1..n, n >= 1.

Offset 1, canonical program `A208657.P11812723099242280050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208657 (n : ℕ) : ℤ :=
  A208657.P11812723099242280050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208765.P12855794489750420101

`A007318(n)*A026597(A002262(n))`
-/

namespace A208765.P12855794489750420101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026597 (A002262 n).toNat

end

end A208765.P12855794489750420101

noncomputable section

/-- A208765: Triangle of coefficients of polynomials u(n,x) jointly generated with A208766; see the Formula section.

Offset 1, canonical program `A208765.P12855794489750420101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208765 (n : ℕ) : ℤ :=
  A208765.P12855794489750420101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208766.P11036257821405102068

`A007318(n)*A026581(A002262(n))`
-/

namespace A208766.P11036257821405102068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026581 (A002262 n).toNat

end

end A208766.P11036257821405102068

noncomputable section

/-- A208766: Triangle of coefficients of polynomials v(n,x) jointly generated with A208765; see the Formula section.

Offset 1, canonical program `A208766.P11036257821405102068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208766 (n : ℕ) : ℤ :=
  A208766.P11036257821405102068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209427.P3656500487483528647

`A007318(n)^∑[char[∑[n+1]]]`
-/

namespace A209427.P3656500487483528647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209427.P3656500487483528647

noncomputable section

/-- A209427: T(n,k) = binomial(n,k)^n.

Offset 0, canonical program `A209427.P3656500487483528647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A209427 (n : ℕ) : ℤ :=
  A209427.P3656500487483528647.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A209427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209613.P17854172900491838855

`A209615(n+1)*A260109(A025480(n))`
-/

namespace A209613.P17854172900491838855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) * A260109 (A025480 n).toNat

end

end A209613.P17854172900491838855

noncomputable section

/-- A209613: Expansion of q * phi(-q^2)^2 * psi(q^3) * psi(-q^3)^2 / psi(q) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A209613.P17854172900491838855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209613 (n : ℕ) : ℤ :=
  A209613.P17854172900491838855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209619.P9978242392383801944

`p?[A175078(A076368(n+1))+A040976(n+1)]`
-/

namespace A209619.P9978242392383801944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A076368 (n + 1)).toNat + A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209619.P9978242392383801944

noncomputable section

/-- A209619: Primes separated from their previous adjacent primes by a composite number of successive composites.

Offset 1, canonical program `A209619.P9978242392383801944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209619 (n : ℕ) : ℤ :=
  A209619.P9978242392383801944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A209619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210190.P939011334498092116

`A105070(Δ[A055087(n)]+n+1)`
-/

namespace A210190.P939011334498092116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A210190.P939011334498092116

noncomputable section

/-- A210190: Triangle of coefficients of polynomials v(n,x) jointly generated with A210189; see the Formula section.

Offset 1, canonical program `A210190.P939011334498092116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210190 (n : ℕ) : ℤ :=
  A210190.P939011334498092116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A210190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210196.P11515123120557541586

`A059268(n)*A124927(n)`
-/

namespace A210196.P11515123120557541586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A124927 n

end

end A210196.P11515123120557541586

noncomputable section

/-- A210196: Triangle of coefficients of polynomials v(n,x) jointly generated with A210195; see the Formula section.

Offset 1, canonical program `A210196.P11515123120557541586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210196 (n : ℕ) : ℤ :=
  A210196.P11515123120557541586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211059.P885985816871605879

`(n+1)^4-A211058(n+1)`
-/

namespace A211059.P885985816871605879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A211058 (n + 1)

end

end A211059.P885985816871605879

noncomputable section

/-- A211059: Number of 2 X 2 matrices having all terms in {1,...,n} and positive determinant.

Offset 1, canonical program `A211059.P885985816871605879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A211059 (n : ℕ) : ℤ :=
  A211059.P885985816871605879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A211059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211067.P18215761913343296145

`A211064(n+1)-A211066(n+1)`
-/

namespace A211067.P18215761913343296145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211064 (n + 1) - A211066 (n + 1)

end

end A211067.P18215761913343296145

noncomputable section

/-- A211067: Number of 2 X 2 matrices having all terms in {1,...,n} and positive even determinant.

Offset 1, canonical program `A211067.P18215761913343296145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211067 (n : ℕ) : ℤ :=
  A211067.P18215761913343296145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216303.P11345559073059710455

`eq[A063143(n+1), A179816(n)]`
-/

namespace A216303.P11345559073059710455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216303.P11345559073059710455

noncomputable section

/-- A216303: Numbers k such that 10k+1 and 10k+3 are prime but 10k+7 and 10k+9 are composite.

Offset 1, canonical program `A216303.P11345559073059710455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A216303 (n : ℕ) : ℤ :=
  (A216303.P11345559073059710455.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A216303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216304.P5647230312299655537

`eq[A063155(n+1), A179816(n)]`
-/

namespace A216304.P5647230312299655537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216304.P5647230312299655537

noncomputable section

/-- A216304: Values of k such that 10*k+1 and 10*k+7 alone are prime between 10*k and 10*k+9.

Offset 1, canonical program `A216304.P5647230312299655537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A216304 (n : ℕ) : ℤ :=
  (A216304.P5647230312299655537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A216304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216305.P1116429648597264212

`floor(A141026(n+1)/10)`
-/

namespace A216305.P1116429648597264212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141026 (n + 1) : ℚ) / 10⌋

end

end A216305.P1116429648597264212

noncomputable section

/-- A216305: Values of k such that 10*k+1 and 10*k+9 alone are prime between 10*k and 10*k+9.

Offset 1, canonical program `A216305.P1116429648597264212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216305 (n : ℕ) : ℤ :=
  A216305.P1116429648597264212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A216305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216307.P12968432811877988105

`eq[A179816(n), A305074(n+1)]`
-/

namespace A216307.P12968432811877988105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216307.P12968432811877988105

noncomputable section

/-- A216307: Values of k such that 10*k+3 and 10*k+9 alone are prime between 10*k and 10*k+9.

Offset 1, canonical program `A216307.P12968432811877988105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A216307 (n : ℕ) : ℤ :=
  (A216307.P12968432811877988105.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. -/
def A216307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216319.P7848709272495986412

`A038566(eq[1, A038566(n+1)%2]+1)`
-/

namespace A216319.P7848709272495986412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038566 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216319.P7848709272495986412

noncomputable section

/-- A216319: Irregular triangle: row n lists the odd numbers of the reduced residue system modulo n.

Offset 1, canonical program `A216319.P7848709272495986412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216319 (n : ℕ) : ℤ :=
  A216319.P7848709272495986412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217285.P5556931970969609807

`A007318(eq[0, A053186(A003056(n))])`
-/

namespace A217285.P5556931970969609807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217285.P5556931970969609807

noncomputable section

/-- A217285: Irregular triangle read by rows: T(n,k) is the number of labeled relations on n nodes with exactly k edges; n>=0, 0<=k<=n^2.

Offset 0, canonical program `A217285.P5556931970969609807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. -/
def A217285 (n : ℕ) : ℤ :=
  A217285.P5556931970969609807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. -/
def A217285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218281.P6360784936974079113

`∑[record[2*A251750(n)]]+1`
-/

namespace A218281.P6360784936974079113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218281.P6360784936974079113

noncomputable section

/-- A218281: Hilltop maps: number of n X 1 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal or vertical neighbor in a random 0..4 n X 1 array.

Offset 1, canonical program `A218281.P6360784936974079113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A218281 (n : ℕ) : ℤ :=
  A218281.P6360784936974079113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A218281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221877.P9761697283966523475

`A004736(n+1)*A124927(n)`
-/

namespace A221877.P9761697283966523475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A124927 n

end

end A221877.P9761697283966523475

noncomputable section

/-- A221877: Triangle read by rows: T(n,k) = number of order-preserving or order-reversing full contraction mappings (of an n-chain) with height exactly k.

Offset 1, canonical program `A221877.P9761697283966523475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221877 (n : ℕ) : ℤ :=
  A221877.P9761697283966523475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225682.P5315572198372636391

`-(((n-(Δ[n²]+(n-comp[∑[n]])²))%3+1)*A007318(n))`
-/

namespace A225682.P5315572198372636391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Int.tmod ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2)) 3 + 1) * A007318 n)

end

end A225682.P5315572198372636391

noncomputable section

/-- A225682: Triangle read by rows: T(n,k) (0 <= k <= n) = chi(k)*binomial(n,k), where chi(k) = 1,-1,0 according as k == 0,1,2 mod 3.

Offset 0, canonical program `A225682.P5315572198372636391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225682 (n : ℕ) : ℤ :=
  A225682.P5315572198372636391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226194.P16380617872470380368

`(-1)^n*A053692(n)`
-/

namespace A226194.P16380617872470380368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053692 n

end

end A226194.P16380617872470380368

noncomputable section

/-- A226194: Expansion of f(-x^1, -x^7) * f(-x^3, -x^5) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A226194.P16380617872470380368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226194 (n : ℕ) : ℤ :=
  A226194.P16380617872470380368.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227408.P7610701793903841046

`∩[A352776(n+1), A352785(n+1)]`
-/

namespace A227408.P7610701793903841046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227408.P7610701793903841046

noncomputable section

/-- A227408: Set of all n, where n = r(s(n)) = s(r(n)), given that r(n) = n+bitcount(n), s(n) = n-bitcount(n), and bitcount(n) is the count of binary 1's in n.

Offset 1, canonical program `A227408.P7610701793903841046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A227408 (n : ℕ) : ℤ :=
  (A227408.P7610701793903841046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A227408.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A229035.P11532377418008714060

`∑[A082233(n)]`
-/

namespace A229035.P11532377418008714060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P11532377418008714060

noncomputable section

/-- A229035: Partial sums of A082233 (read sequentially meandering).

Offset 1, canonical program `A229035.P11532377418008714060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229035 (n : ℕ) : ℤ :=
  A229035.P11532377418008714060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233295.P11776928920388201262

`A059268(n)*A125165(n)`
-/

namespace A233295.P11776928920388201262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A125165 n

end

end A233295.P11776928920388201262

noncomputable section

/-- A233295: Riordan array ((1+x)/(1-x)^3, 2*x/(1-x)).

Offset 0, canonical program `A233295.P11776928920388201262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233295 (n : ℕ) : ℤ :=
  A233295.P11776928920388201262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236192.P3828994098142585195

`A163000(∑[A284938(2*n+5)])%2`
-/

namespace A236192.P3828994098142585195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 2

end

end A236192.P3828994098142585195

noncomputable section

/-- A236192: a(n) = |{0 < k < n: p = phi(k) + phi(n-k)/4 + 1, prime(p)^2 + (2*p)^2 and p^2 + (2*prime(p))^2 are all prime}|, where phi(.) is Euler's totient function.

Offset 1, canonical program `A236192.P3828994098142585195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A236192 (n : ℕ) : ℤ :=
  A236192.P3828994098142585195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A236192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238160.P10222375909662323985

`A026729(n)+abs(A057094(n))`
-/

namespace A238160.P10222375909662323985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n + |A057094 n|

end

end A238160.P10222375909662323985

noncomputable section

/-- A238160: A skewed version of triangular array A029653.

Offset 0, canonical program `A238160.P10222375909662323985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238160 (n : ℕ) : ℤ :=
  A238160.P10222375909662323985.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238367.P4066745215504090495

`A103517(lt[A337923(3*(n+1)), A001221(n+1)])`
-/

namespace A238367.P4066745215504090495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A238367.P4066745215504090495

noncomputable section

/-- A238367: Even numbers n such that n is not divisible by 2^d where d is the number of distinct odd prime factors of n.

Offset 1, canonical program `A238367.P4066745215504090495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A238367 (n : ℕ) : ℤ :=
  A238367.P4066745215504090495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A238367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239019.P9482424271055956090

`A028310(∪[A020338(n+1), A074842(n+1)])`
-/

namespace A239019.P9482424271055956090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074842 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A239019.P9482424271055956090

noncomputable section

/-- A239019: Numbers which are not primitive words over the alphabet {0,...,9} (when written in base 10).

Offset 1, canonical program `A239019.P9482424271055956090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A239019 (n : ℕ) : ℤ :=
  A239019.P9482424271055956090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A239019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239304.P17607192891470452994

`A209278(A057028(n+1))`
-/

namespace A239304.P17607192891470452994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A057028 (n + 1)).toNat

end

end A239304.P17607192891470452994

noncomputable section

/-- A239304: Triangle of permutations corresponding to the compressed square roots of Gray code * bit-reversal permutation (A239303).

Offset 1, canonical program `A239304.P17607192891470452994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A239304 (n : ℕ) : ℤ :=
  A239304.P17607192891470452994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A239304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239504.P16697227297432891706

`∑{digits}[n^10, A007318(A007318(#))]`
-/

namespace A239504.P16697227297432891706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A239504.P16697227297432891706

noncomputable section

/-- A239504: Number of digits in the decimal expansion of n^10 (A008454).

Offset 0, canonical program `A239504.P16697227297432891706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239504 (n : ℕ) : ℤ :=
  A239504.P16697227297432891706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242253.P7785784206183266084

`A175078(A076368(n+2))+1`
-/

namespace A242253.P7785784206183266084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A076368 (n + 2)).toNat + 1

end

end A242253.P7785784206183266084

noncomputable section

/-- A242253: Number of primes in the primes-greedy sum (defined at A242252) for the n-th odd prime.

Offset 1, canonical program `A242253.P7785784206183266084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242253 (n : ℕ) : ℤ :=
  A242253.P7785784206183266084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A242253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243759.P8460389810584286974

`A007949(A007318(n))`
-/

namespace A243759.P8460389810584286974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A007318 n).toNat

end

end A243759.P8460389810584286974

noncomputable section

/-- A243759: Triangle T(m,k): exponent of the highest power of 3 dividing the binomial coefficient binomial(m,k).

Offset 0, canonical program `A243759.P8460389810584286974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243759 (n : ℕ) : ℤ :=
  A243759.P8460389810584286974.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243987.P14044502209302201752

`A051731(n+1)+a(n-1)%A002260(n+1)` with `a(0)=1`
-/

namespace A243987.P14044502209302201752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051731 (n + 1) + Int.tmod (a (n - 1)) (A002260 (n + 1))

end

end A243987.P14044502209302201752

noncomputable section

/-- A243987: Triangle read by rows: T(n, k) is the number of divisors of n that are less than or equal to k for 1 <= k <= n.

Offset 1, canonical program `A243987.P14044502209302201752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243987 (n : ℕ) : ℤ :=
  A243987.P14044502209302201752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245211.P9459255729961917414

`A060640(n+1)-A038040(n+1)`
-/

namespace A245211.P9459255729961917414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060640 (n + 1) - A038040 (n + 1)

end

end A245211.P9459255729961917414

noncomputable section

/-- A245211: a(n) = Sum_{(d

Offset 1, canonical program `A245211.P9459255729961917414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A060640, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245211 (n : ℕ) : ℤ :=
  A245211.P9459255729961917414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A060640, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245536.P3272298368546471376

`∏{e}[A163511(A054429(n+1)), #-1]`
-/

namespace A245536.P3272298368546471376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A245536.P3272298368546471376

noncomputable section

/-- A245536: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=k-r-1, or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=(k-r-1)*a(j).

Offset 1, canonical program `A245536.P3272298368546471376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A245536 (n : ℕ) : ℤ :=
  A245536.P3272298368546471376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A245536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249095.P14931875295036221106

`A007318(((n+1)²%A122800(n+1))%(n+1))`
-/

namespace A249095.P14931875295036221106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (Int.tmod ((n + 1) ^ 2 : ℤ) (A122800 (n + 1))) (n + 1 : ℤ)).toNat

end

end A249095.P14931875295036221106

noncomputable section

/-- A249095: Triangle read by rows: interleaving successive pairs of rows of Pascal's triangle.

Offset 0, canonical program `A249095.P14931875295036221106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249095 (n : ℕ) : ℤ :=
  A249095.P14931875295036221106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250440.P12929212090251733005

`(A250430(n+1)/A250428(n+1))²*A250438(n+1)`
-/

namespace A250440.P12929212090251733005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A250430 (n + 1) : ℚ) / (A250428 (n + 1) : ℚ)) ^ 2 * (A250438 (n + 1) : ℚ)

end

end A250440.P12929212090251733005

noncomputable section

/-- A250440: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250440.P12929212090251733005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250440 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A250440.P12929212090251733005.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251969.P6991737648331539879

`A250426(n+1)/A250427(n+1)*A250439(n+1)`
-/

namespace A251969.P6991737648331539879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250426 (n + 1) : ℚ) / (A250427 (n + 1) : ℚ) * (A250439 (n + 1) : ℚ)

end

end A251969.P6991737648331539879

noncomputable section

/-- A251969: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A251969.P6991737648331539879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A251969.P6991737648331539879.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252501.P5084084635245530048

`C(∑[2*char[∑[n]]]-1, n-C(∑[char[∑[n]]], 2))*A007318(n)`
-/

namespace A252501.P5084084635245530048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1).toNat ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) * A007318 n

end

end A252501.P5084084635245530048

noncomputable section

/-- A252501: Triangle T read by rows: T(n,k) = binomial(2*n+1,k)*binomial(n,k), n>=0, 0<=k<=n.

Offset 0, canonical program `A252501.P5084084635245530048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7826 terms. -/
def A252501 (n : ℕ) : ℤ :=
  A252501.P5084084635245530048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7826 terms. -/
def A252501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254609.P13882312572663627123

`gcd(25, A007318(n))`
-/

namespace A254609.P13882312572663627123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 25 (A007318 n)

end

end A254609.P13882312572663627123

noncomputable section

/-- A254609: Triangle read by rows: T(n,k) = A243757(n)/(A243757(k)*A243757(n-k)).

Offset 0, canonical program `A254609.P13882312572663627123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A254609 (n : ℕ) : ℤ :=
  (A254609.P13882312572663627123.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A254609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255171.P878351036913062245

`A072473(n+2)-A072473(n+1)`
-/

namespace A255171.P878351036913062245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 2) - A072473 (n + 1)

end

end A255171.P878351036913062245

noncomputable section

/-- A255171: First differences of A072473.

Offset 1, canonical program `A255171.P878351036913062245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255171 (n : ℕ) : ℤ :=
  A255171.P878351036913062245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255935.P3423858100455783659

`A007318(n)+A197870(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255935.P3423858100455783659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A197870 (n + 1)

end

end A255935.P3423858100455783659

noncomputable section

/-- A255935: Triangle read by rows: a(n) = Pascal's triangle A007318(n) + A197870(n+1).

Offset 0, canonical program `A255935.P3423858100455783659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A197870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255935 (n : ℕ) : ℤ :=
  A255935.P3423858100455783659.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A197870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256098.P9109279517395957021

`A054531(record[A056023(n+1)])`
-/

namespace A256098.P9109279517395957021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256098.P9109279517395957021

noncomputable section

/-- A256098: Denominators for the numerators A256097.

Offset 1, canonical program `A256098.P9109279517395957021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A256098 (n : ℕ) : ℤ :=
  A256098.P9109279517395957021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A256098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256435.P229463995676631497

`A001481(n+2)-A001481(n+1)`
-/

namespace A256435.P229463995676631497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2) - A001481 (n + 1)

end

end A256435.P229463995676631497

noncomputable section

/-- A256435: First differences of sums of two squares.

Offset 1, canonical program `A256435.P229463995676631497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256435 (n : ℕ) : ℤ :=
  A256435.P229463995676631497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258029.P1433885203408479246

`A139313(n+1)-A001223(A064149(n+1))`
-/

namespace A258029.P1433885203408479246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1) - A001223 (A064149 (n + 1)).toNat

end

end A258029.P1433885203408479246

noncomputable section

/-- A258029: Numbers prime(k) such that D(prime(k), 3) = 0, where D( * , 3) = 3rd difference.

Offset 1, canonical program `A258029.P1433885203408479246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258029 (n : ℕ) : ℤ :=
  A258029.P1433885203408479246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A258029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258832.P14663651183616388296

`(-1)^n*A121444(n)`
-/

namespace A258832.P14663651183616388296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121444 n

end

end A258832.P14663651183616388296

noncomputable section

/-- A258832: Expansion of psi(-x^3) * f(-x, x^2) in powers of x where psi(), f(,) are Ramanujan theta functions.

Offset 0, canonical program `A258832.P14663651183616388296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258832 (n : ℕ) : ℤ :=
  A258832.P14663651183616388296.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258934.P655756384477978096

`A072473(n+2)/2`
-/

namespace A258934.P655756384477978096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072473 (n + 2) : ℚ) / 2

end

end A258934.P655756384477978096

noncomputable section

/-- A258934: Half the difference between the 2n-th prime and the n-th prime, starting from n=2.

Offset 2, canonical program `A258934.P655756384477978096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A258934.P655756384477978096.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260415.P18335187104503907792

`A121444(2*n)`
-/

namespace A260415.P18335187104503907792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (2 * n)

end

end A260415.P18335187104503907792

noncomputable section

/-- A260415: Expansion of f(x, x^2) * f(x^4, x^8) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A260415.P18335187104503907792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A260415 (n : ℕ) : ℤ :=
  A260415.P18335187104503907792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A260415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260516.P12748464856549383251

`A121444(Δ[n²])`
-/

namespace A260516.P12748464856549383251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A260516.P12748464856549383251

noncomputable section

/-- A260516: Expansion of f(x, x^2) * f(x^2, x^10) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A260516.P12748464856549383251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260516 (n : ℕ) : ℤ :=
  A260516.P12748464856549383251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261365.P9709362867991470275

`A007318(eq[1, A032741(A003056(n))])`
-/

namespace A261365.P9709362867991470275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261365.P9709362867991470275

noncomputable section

/-- A261365: Prime-numbered rows of Pascal's triangle.

Offset 1, canonical program `A261365.P9709362867991470275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. -/
def A261365 (n : ℕ) : ℤ :=
  A261365.P9709362867991470275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. -/
def A261365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265029.P2055403291823061890

`Δ[A264619(n)]`
-/

namespace A265029.P2055403291823061890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265029.P2055403291823061890

noncomputable section

/-- A265029: First differences of A264619.

Offset 1, canonical program `A265029.P2055403291823061890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265029 (n : ℕ) : ℤ :=
  A265029.P2055403291823061890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266282.P9763437976714295326

`A266978(n)*A267704(n)`
-/

namespace A266282.P9763437976714295326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266978 n * A267704 n

end

end A266282.P9763437976714295326

noncomputable section

/-- A266282: Triangle read by rows giving successive states of cellular automaton generated by "Rule 13" initiated with a single ON (black) cell.

Offset 0, canonical program `A266282.P9763437976714295326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266282 (n : ℕ) : ℤ :=
  A266282.P9763437976714295326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266640.P4776473646735869985

`A265754(A054429(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266640.P4776473646735869985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (A054429 (n + 1)).toNat

end

end A266640.P4776473646735869985

noncomputable section

/-- A266640: Reversed reduced frequency counts for A004001: a(n) = A265754(A054429(n)).

Offset 1, canonical program `A266640.P4776473646735869985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A265754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266640 (n : ℕ) : ℤ :=
  A266640.P4776473646735869985.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A265754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267309.P7821699450119643871

`∑[2*∑{d}[2*(n+1), A086932(#)]]`
-/

namespace A267309.P7821699450119643871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), A086932 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P7821699450119643871

noncomputable section

/-- A267309: Number of discrete vectors with integral components and integral length <= n in a 3-dimensional vector space (Partial sums of A016725).

Offset 1, canonical program `A267309.P7821699450119643871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A267309 (n : ℕ) : ℤ :=
  A267309.P7821699450119643871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A267309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267651.P14970341382206143241

`2*∑{d}[2*(n+1), A086932(#)]`
-/

namespace A267651.P14970341382206143241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A086932 d)

end

end A267651.P14970341382206143241

noncomputable section

/-- A267651: Number of ways to write n^2 as a sum of three squares: a(n) = A005875(n^2).

Offset 1, canonical program `A267651.P14970341382206143241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A267651 (n : ℕ) : ℤ :=
  A267651.P14970341382206143241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A267651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267673.P5790354617243130186

`(1-A075438(n))^n`
-/

namespace A267673.P5790354617243130186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A075438 n) ^ n

end

end A267673.P5790354617243130186

noncomputable section

/-- A267673: Triangle read by rows giving successive states of cellular automaton generated by "Rule 195" initiated with a single ON (black) cell.

Offset 0, canonical program `A267673.P5790354617243130186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267673 (n : ℕ) : ℤ :=
  A267673.P5790354617243130186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268412.P6473001848089326556

`comp[A268415(n+1)]`
-/

namespace A268412.P6473001848089326556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268412.P6473001848089326556

noncomputable section

/-- A268412: Balanced evil numbers: numbers with an even number of runs of 1's in their binary expansion.

Offset 0, canonical program `A268412.P6473001848089326556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268412 (n : ℕ) : ℤ :=
  (A268412.P6473001848089326556.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271653.P7087006881751362329

`p?[A072473(n+1)+A031215(n+1)]`
-/

namespace A271653.P7087006881751362329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P7087006881751362329

noncomputable section

/-- A271653: Primes of the form 2*prime(2k) - prime(k).

Offset 1, canonical program `A271653.P7087006881751362329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A271653 (n : ℕ) : ℤ :=
  A271653.P7087006881751362329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A271653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272042.P14624273689638821498

`A072473(n+1)+A031215(n+1)`
-/

namespace A272042.P14624273689638821498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A031215 (n + 1)

end

end A272042.P14624273689638821498

noncomputable section

/-- A272042: a(n) = 2*prime(2n) - prime(n).

Offset 1, canonical program `A272042.P14624273689638821498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031215, A072473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272042 (n : ℕ) : ℤ :=
  A272042.P14624273689638821498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031215, A072473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272670.P8882871833830041873

`2*A161604(n+1)`
-/

namespace A272670.P8882871833830041873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161604 (n + 1)

end

end A272670.P8882871833830041873

noncomputable section

/-- A272670: Numbers whose binary expansion is not palindromic but which when reversed and leading zeros omitted, does form a palindrome.

Offset 1, canonical program `A272670.P8882871833830041873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272670 (n : ℕ) : ℤ :=
  A272670.P8882871833830041873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272718.P14404705752265822826

`A018806(n+1)-A178881(n+1)`
-/

namespace A272718.P14404705752265822826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) - A178881 (n + 1)

end

end A272718.P14404705752265822826

noncomputable section

/-- A272718: Partial sums of gcd-sum sequence A018804.

Offset 1, canonical program `A272718.P14404705752265822826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, A178881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272718 (n : ℕ) : ℤ :=
  A272718.P14404705752265822826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, A178881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273529.P14030670400839210133

`p?[A017077(A064816(n+1))]`
-/

namespace A273529.P14030670400839210133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A064816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273529.P14030670400839210133

noncomputable section

/-- A273529: Primes p of the form x^2 + y^2 such that p+1 is the sum of the two nonzero squares in exactly 2 ways.

Offset 1, canonical program `A273529.P14030670400839210133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A273529 (n : ℕ) : ℤ :=
  A273529.P14030670400839210133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A273529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275198.P7066260242528723624

`A070696(A007318(n))`
-/

namespace A275198.P7066260242528723624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A007318 n).toNat

end

end A275198.P7066260242528723624

noncomputable section

/-- A275198: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 14.

Offset 0, canonical program `A275198.P7066260242528723624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275198 (n : ℕ) : ℤ :=
  A275198.P7066260242528723624.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275716.P7951773903952206727

`ceil(A163511(4*n+3)/3)`
-/

namespace A275716.P7951773903952206727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163511 (4 * n + 3) : ℚ) / 3⌉

end

end A275716.P7951773903952206727

noncomputable section

/-- A275716: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = A273669(a(n)), a(2n+1) = A273664(a(n)).

Offset 0, canonical program `A275716.P7951773903952206727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A275716 (n : ℕ) : ℤ :=
  A275716.P7951773903952206727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A275716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275953.P16174222313952605767

`A265906(n+2)-A265906(n+1)`
-/

namespace A275953.P16174222313952605767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265906 (n + 2) - A265906 (n + 1)

end

end A275953.P16174222313952605767

noncomputable section

/-- A275953: First differences of A265906; second differences of A265905.

Offset 1, canonical program `A275953.P16174222313952605767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275953 (n : ℕ) : ℤ :=
  A275953.P16174222313952605767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276792.P14653190003130318019

`A276788(n+1)+A276789(n+1)+1`
-/

namespace A276792.P14653190003130318019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276788 (n + 1) + A276789 (n + 1) + 1

end

end A276792.P14653190003130318019

noncomputable section

/-- A276792: First differences of A003146.

Offset 1, canonical program `A276792.P14653190003130318019`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276788, A276789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276792 (n : ℕ) : ℤ :=
  A276792.P14653190003130318019.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276788, A276789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276795.P13975714103099137732

`xor(A003817(n), A264619(n))`
-/

namespace A276795.P13975714103099137732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 n) (A264619 n)

end

end A276795.P13975714103099137732

noncomputable section

/-- A276795: Folding numbers with an odd number of bits (see A277238 for definition).

Offset 1, canonical program `A276795.P13975714103099137732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276795 (n : ℕ) : ℤ :=
  A276795.P13975714103099137732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276934.P15106644444833656235

`A276933(n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276934.P15106644444833656235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276933 n : ℚ) / 6

end

end A276934.P15106644444833656235

noncomputable section

/-- A276934: Row 3 of A276616: a(n) = A276933(n) / 6.

Offset 0, canonical program `A276934.P15106644444833656235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276934.P15106644444833656235.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276952.P13654825874652364893

`A276950(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A276952.P13654825874652364893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276950 n + a (n - 1)

end

end A276952.P13654825874652364893

noncomputable section

/-- A276952: Partial sums of A276950.

Offset 0, canonical program `A276952.P13654825874652364893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276952 (n : ℕ) : ℤ :=
  A276952.P13654825874652364893.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277219.P4583255546027378714

`A007318(n)*A011782(A329854(n))`
-/

namespace A277219.P4583255546027378714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011782 (A329854 n).toNat

end

end A277219.P4583255546027378714

noncomputable section

/-- A277219: Triangle read by rows: T(n,k) is the number of independent sets of size k over all simple labeled graphs on n nodes, n>=0, 0<=k<=n.

Offset 0, canonical program `A277219.P4583255546027378714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A277219 (n : ℕ) : ℤ :=
  A277219.P4583255546027378714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A277219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277287.P3519925831238150495

`A000984(n)+A257838(n)`
-/

namespace A277287.P3519925831238150495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A257838 n

end

end A277287.P3519925831238150495

noncomputable section

/-- A277287: a(n) = binomial(2*n,n) + Sum_{k=1..n} binomial(2*n-k,n-k)*Fibonacci(k).

Offset 0, canonical program `A277287.P3519925831238150495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277287 (n : ℕ) : ℤ :=
  A277287.P3519925831238150495.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279416.P9763162876256978290

`A141419(n+1)-A049727(n)`
-/

namespace A279416.P9763162876256978290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A049727 n

end

end A279416.P9763162876256978290

noncomputable section

/-- A279416: Triangle read by rows: T(n,k), n >= k >= 1, is the number of grid points below the diagonal of an n X k grid.

Offset 1, canonical program `A279416.P9763162876256978290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279416 (n : ℕ) : ℤ :=
  A279416.P9763162876256978290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279417.P17402926163399653354

`A112367(n)+A049727(n)`
-/

namespace A279417.P17402926163399653354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A049727 n

end

end A279417.P17402926163399653354

noncomputable section

/-- A279417: Triangle read by rows: T(n,k), n >= k >= 1, is the number of grid points on or below the diagonal of an n X k grid.

Offset 1, canonical program `A279417.P17402926163399653354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279417 (n : ℕ) : ℤ :=
  A279417.P17402926163399653354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281492.P13006118302952997106

`A121444(3*n)`
-/

namespace A281492.P13006118302952997106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (3 * n)

end

end A281492.P13006118302952997106

noncomputable section

/-- A281492: Expansion of f(x, x^3) * f(x^4, x^5) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281492.P13006118302952997106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A281492 (n : ℕ) : ℤ :=
  A281492.P13006118302952997106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A281492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282234.P11292878467166924070

`A007932(A000045(n+1))`
-/

namespace A282234.P11292878467166924070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A000045 (n + 1)).toNat

end

end A282234.P11292878467166924070

noncomputable section

/-- A282234: a(n) = Fibonacci(n) represented in bijective base-3 numeration.

Offset 1, canonical program `A282234.P11292878467166924070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282234 (n : ℕ) : ℤ :=
  A282234.P11292878467166924070.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286158.P5292968706533474857

`A048158(n+1)+A000217(A234575(n+1))`
-/

namespace A286158.P5292968706533474857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A000217 (A234575 (n + 1)).toNat

end

end A286158.P5292968706533474857

noncomputable section

/-- A286158: Lower triangular region of array A286156.

Offset 1, canonical program `A286158.P5292968706533474857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286158 (n : ℕ) : ℤ :=
  A286158.P5292968706533474857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292618.P456009917632285157

`A022891(eq[1, A022890(n+2)-A022890(n+1)]+1)`
-/

namespace A292618.P456009917632285157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022890 (n + 2) - A022890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292618.P456009917632285157

noncomputable section

/-- A292618: The first prime of 8 consecutive primes a, b, c, d, e, f, g, h such that a + g = c + e and b + h = d + f.

Offset 1, canonical program `A292618.P456009917632285157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A292618 (n : ℕ) : ℤ :=
  A292618.P456009917632285157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A292618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293959.P4536624460785763287

`A265754(n+1)-1`
-/

namespace A293959.P4536624460785763287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (n + 1) - 1

end

end A293959.P4536624460785763287

noncomputable section

/-- A293959: Construct a triangle T(n,k) (0 <= k <= n) of strings of integers, where T(0,0) = {0}, T(n,n) = {n}, and otherwise T(n,k) is the concatenation of T(n-1,k-1) and T(n-1,k). The sequence is obtained by reading across the rows of the triangle, concatenating the successive strings.

Offset 0, canonical program `A293959.P4536624460785763287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A293959 (n : ℕ) : ℤ :=
  A293959.P4536624460785763287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A293959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295112.P4111876458135597642

`n-∑[∑[A168058(n)]]`
-/

namespace A295112.P4111876458135597642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168058 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295112.P4111876458135597642

noncomputable section

/-- A295112: a(n) = Sum_{k=0..n} binomial(n,2*k)*binomial(2*k,k)/(2*k-1).

Offset 0, canonical program `A295112.P4111876458135597642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A295112 (n : ℕ) : ℤ :=
  A295112.P4111876458135597642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A295112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304570.P4550797118024341307

`A304569(n+1)-A051731(n+1)`
-/

namespace A304570.P4550797118024341307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304569 (n + 1) - A051731 (n + 1)

end

end A304570.P4550797118024341307

noncomputable section

/-- A304570: Triangle read by rows: T(n,k) = 1 if k | n^e with e > 1 and n mod k != 0, T(n,k) = 0 otherwise (1 <= k <= n).

Offset 1, canonical program `A304570.P4550797118024341307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304570 (n : ℕ) : ℤ :=
  A304570.P4550797118024341307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304817.P8075664180131459050

`A183096(n+1)+1`
-/

namespace A304817.P8075664180131459050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (n + 1) + 1

end

end A304817.P8075664180131459050

noncomputable section

/-- A304817: Number of divisors of n that are either 1 or not a perfect power.

Offset 1, canonical program `A304817.P8075664180131459050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817 (n : ℕ) : ℤ :=
  A304817.P8075664180131459050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308199.P4084788755827198599

`A278040(n)-1`
-/

namespace A308199.P4084788755827198599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n - 1

end

end A308199.P4084788755827198599

noncomputable section

/-- A308199: The tribonacci representation of a(n) is obtained by appending 0,0 to the tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A308199.P4084788755827198599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308199 (n : ℕ) : ℤ :=
  A308199.P4084788755827198599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310504.P464538820079187203

`2*A313053(n)-A008574(n)`
-/

namespace A310504.P464538820079187203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313053 n - A008574 n

end

end A310504.P464538820079187203

noncomputable section

/-- A310504: Coordination sequence Gal.6.329.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310504.P464538820079187203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A310504 (n : ℕ) : ℤ :=
  A310504.P464538820079187203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A310504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311691.P15690846151857527722

`A313698(n)-A057354(2*n+1)`
-/

namespace A311691.P15690846151857527722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A057354 (2 * n + 1)

end

end A311691.P15690846151857527722

noncomputable section

/-- A311691: Coordination sequence Gal.5.60.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311691.P15690846151857527722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A311691 (n : ℕ) : ℤ :=
  A311691.P15690846151857527722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A311691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312194.P11075138989351160431

`A314899(n)-A134667(A004525(n))`
-/

namespace A312194.P11075138989351160431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n - A134667 (A004525 n).toNat

end

end A312194.P11075138989351160431

noncomputable section

/-- A312194: Coordination sequence Gal.6.156.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312194.P11075138989351160431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A312194 (n : ℕ) : ℤ :=
  A312194.P11075138989351160431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A312194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312210.P10071697695240117449

`A311196(n)+A312206(n)-A008574(n)`
-/

namespace A312210.P10071697695240117449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + (A312206 n - A008574 n)

end

end A312210.P10071697695240117449

noncomputable section

/-- A312210: Coordination sequence Gal.6.159.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312210.P10071697695240117449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2326 terms. -/
def A312210 (n : ℕ) : ℤ :=
  A312210.P10071697695240117449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2326 terms. -/
def A312210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312979.P10469328530055326609

`A310398(n)+A014019(n+3)`
-/

namespace A312979.P10469328530055326609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A014019 (n + 3)

end

end A312979.P10469328530055326609

noncomputable section

/-- A312979: Coordination sequence Gal.6.247.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312979.P10469328530055326609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A312979 (n : ℕ) : ℤ :=
  A312979.P10469328530055326609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A312979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313118.P9114111145320884075

`A312976(n)+Δ[A011864(n)]`
-/

namespace A313118.P9114111145320884075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312976 n + (f1 (n + 1) - f1 n)

end

end A313118.P9114111145320884075

noncomputable section

/-- A313118: Coordination sequence Gal.6.234.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313118.P9114111145320884075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A313118 (n : ℕ) : ℤ :=
  A313118.P9114111145320884075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A313118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313592.P2623346939342566519

`abs(A008592(n)-A313853(n))`
-/

namespace A313592.P2623346939342566519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313853 n|

end

end A313592.P2623346939342566519

noncomputable section

/-- A313592: Coordination sequence Gal.6.347.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313592.P2623346939342566519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313592 (n : ℕ) : ℤ :=
  A313592.P2623346939342566519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313912.P13734627626942033207

`abs(A008592(n)-A313515(n))`
-/

namespace A313912.P13734627626942033207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313515 n|

end

end A313912.P13734627626942033207

noncomputable section

/-- A313912: Coordination sequence Gal.6.207.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313912.P13734627626942033207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313912 (n : ℕ) : ℤ :=
  A313912.P13734627626942033207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313927.P15646847580110018084

`A313125(n)+A004396(n)`
-/

namespace A313927.P15646847580110018084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A004396 n

end

end A313927.P15646847580110018084

noncomputable section

/-- A313927: Coordination sequence Gal.5.135.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313927.P15646847580110018084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2229 terms. -/
def A313927 (n : ℕ) : ℤ :=
  A313927.P15646847580110018084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2229 terms. -/
def A313927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313935.P10691927420047468944

`A313772(n)+A002264(A030118(n))`
-/

namespace A313935.P10691927420047468944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n + A002264 (A030118 n).toNat

end

end A313935.P10691927420047468944

noncomputable section

/-- A313935: Coordination sequence Gal.6.651.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313935.P10691927420047468944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A313935 (n : ℕ) : ℤ :=
  A313935.P10691927420047468944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A313935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314059.P15361203540330467185

`A310398(n)+A004525(n)`
-/

namespace A314059.P15361203540330467185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A004525 n

end

end A314059.P15361203540330467185

noncomputable section

/-- A314059: Coordination sequence Gal.6.652.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314059.P15361203540330467185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A314059 (n : ℕ) : ℤ :=
  A314059.P15361203540330467185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. -/
def A314059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314118.P650591932633737003

`A310398(n)+A314829(n)-A008574(n)`
-/

namespace A314118.P650591932633737003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + (A314829 n - A008574 n)

end

end A314118.P650591932633737003

noncomputable section

/-- A314118: Coordination sequence Gal.6.652.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314118.P650591932633737003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. -/
def A314118 (n : ℕ) : ℤ :=
  A314118.P650591932633737003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. -/
def A314118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314201.P5631130414281267533

`A004396(n)+A314085(n)-A004525(A004396(n))`
-/

namespace A314201.P5631130414281267533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314085 n - A004525 (A004396 n).toNat)

end

end A314201.P5631130414281267533

noncomputable section

/-- A314201: Coordination sequence Gal.6.157.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314201.P5631130414281267533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A314201 (n : ℕ) : ℤ :=
  A314201.P5631130414281267533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A314201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314225.P10774632468107869878

`A008458(n)+A310501(n)-A314210(n)`
-/

namespace A314225.P10774632468107869878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A310501 n - A314210 n)

end

end A314225.P10774632468107869878

noncomputable section

/-- A314225: Coordination sequence Gal.5.316.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314225.P10774632468107869878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314225 (n : ℕ) : ℤ :=
  A314225.P10774632468107869878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314720.P2366857365604543786

`abs(A008592(n)-A314210(n))`
-/

namespace A314720.P2366857365604543786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314210 n|

end

end A314720.P2366857365604543786

noncomputable section

/-- A314720: Coordination sequence Gal.6.245.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314720.P2366857365604543786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314720 (n : ℕ) : ℤ :=
  A314720.P2366857365604543786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315024.P11300834451067595507

`A314885(n)+Δ[A011864(n)]`
-/

namespace A315024.P11300834451067595507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314885 n + (f1 (n + 1) - f1 n)

end

end A315024.P11300834451067595507

noncomputable section

/-- A315024: Coordination sequence Gal.6.196.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315024.P11300834451067595507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315024 (n : ℕ) : ℤ :=
  A315024.P11300834451067595507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315060.P16370269308654090789

`A313855(n)-A330025(n-A330025(n))`
-/

namespace A315060.P16370269308654090789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313855 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315060.P16370269308654090789

noncomputable section

/-- A315060: Coordination sequence Gal.5.141.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315060.P16370269308654090789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A315060 (n : ℕ) : ℤ :=
  A315060.P16370269308654090789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A315060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315319.P8559741598565083215

`abs(A008592(n)-A310398(n))`
-/

namespace A315319.P8559741598565083215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310398 n|

end

end A315319.P8559741598565083215

noncomputable section

/-- A315319: Coordination sequence Gal.5.289.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315319.P8559741598565083215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315319 (n : ℕ) : ℤ :=
  A315319.P8559741598565083215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315326.P6667046397507400523

`2*A314885(n)-A008574(n)`
-/

namespace A315326.P6667046397507400523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314885 n - A008574 n

end

end A315326.P6667046397507400523

noncomputable section

/-- A315326: Coordination sequence Gal.6.204.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315326.P6667046397507400523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315326 (n : ℕ) : ℤ :=
  A315326.P6667046397507400523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315421.P8258673194195671996

`A313515(n)+A004525(n)`
-/

namespace A315421.P8258673194195671996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313515 n + A004525 n

end

end A315421.P8258673194195671996

noncomputable section

/-- A315421: Coordination sequence Gal.6.356.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315421.P8258673194195671996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315421 (n : ℕ) : ℤ :=
  A315421.P8258673194195671996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315459.P17608540704289415769

`A315681(n)-∑[A022003(n)]`
-/

namespace A315459.P17608540704289415769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315459.P17608540704289415769

noncomputable section

/-- A315459: Coordination sequence Gal.6.134.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315459.P17608540704289415769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315459 (n : ℕ) : ℤ :=
  A315459.P17608540704289415769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315509.P2705733174138675004

`abs(A008592(n)-A312976(n))`
-/

namespace A315509.P2705733174138675004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312976 n|

end

end A315509.P2705733174138675004

noncomputable section

/-- A315509: Coordination sequence Gal.6.633.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315509.P2705733174138675004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A315509 (n : ℕ) : ℤ :=
  A315509.P2705733174138675004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A315509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315635.P8833083240830505052

`A315172(n)+A008612(A016813(n))`
-/

namespace A315635.P8833083240830505052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315172 n + A008612 (A016813 n).toNat

end

end A315635.P8833083240830505052

noncomputable section

/-- A315635: Coordination sequence Gal.5.138.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315635.P8833083240830505052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315635 (n : ℕ) : ℤ :=
  A315635.P8833083240830505052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315874.P5730925477117979781

`A047448(n+1)+A004525(A315832(n)+A047448(n+1))`
-/

namespace A315874.P5730925477117979781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + A004525 (A315832 n + A047448 (n + 1)).toNat

end

end A315874.P5730925477117979781

noncomputable section

/-- A315874: Coordination sequence Gal.5.211.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315874.P5730925477117979781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. -/
def A315874 (n : ℕ) : ℤ :=
  A315874.P5730925477117979781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. -/
def A315874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318491.P1337820018592044348

`lcm(n+1, A060640(n+1))/(n+1)`
-/

namespace A318491.P1337820018592044348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A060640 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A318491.P1337820018592044348

noncomputable section

/-- A318491: a(n) is the numerator of Sum_{d|n} Sum_{j|d} 1/j.

Offset 1, canonical program `A318491.P1337820018592044348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318491.P1337820018592044348.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318492.P15145094631320190754

`(n+1)/gcd(n+1, A060640(n+1))`
-/

namespace A318492.P15145094631320190754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060640 (n + 1)) : ℚ)

end

end A318492.P15145094631320190754

noncomputable section

/-- A318492: a(n) is the denominator of Sum_{d|n} Sum_{j|d} 1/j.

Offset 1, canonical program `A318492.P15145094631320190754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318492 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318492.P15145094631320190754.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319972.P7349616405294569184

`7*A278040(n)+6*A278039(n)+4*(n+1)+13`
-/

namespace A319972.P7349616405294569184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A278040 n + 6 * A278039 n + (4 * (n + 1) : ℤ) + 13

end

end A319972.P7349616405294569184

noncomputable section

/-- A319972: a(n) = A003146(A003146(n)).

Offset 1, canonical program `A319972.P7349616405294569184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319972 (n : ℕ) : ℤ :=
  A319972.P7349616405294569184.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322127.P10117294907008591163

`A007318(n)/gcd(A007318(n), A166350(n+1))`
-/

namespace A322127.P10117294907008591163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd (A007318 n) (A166350 (n + 1)) : ℚ)

end

end A322127.P10117294907008591163

noncomputable section

/-- A322127: Triangular array, read by rows: T(n,k) = numerator of binomial(n-1, n-k)/k!, 1 <= k <= n.

Offset 1, canonical program `A322127.P10117294907008591163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A322127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322127.P10117294907008591163.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A322127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322128.P9004028817101297461

`lcm(A007318(n), A166350(n+1))/A007318(n)`
-/

namespace A322128.P9004028817101297461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007318 n) (A166350 (n + 1)) : ℚ) / (A007318 n : ℚ)

end

end A322128.P9004028817101297461

noncomputable section

/-- A322128: Triangular array, read by rows: T(n,k) = denominator of binomial(n-1, n-k)/k!, 1 <= k <= n.

Offset 1, canonical program `A322128.P9004028817101297461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A322128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322128.P9004028817101297461.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A322128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322409.P9722259027104702857

`A278040(A278040(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322409.P9722259027104702857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278040 n).toNat

end

end A322409.P9722259027104702857

noncomputable section

/-- A322409: Compound tribonacci sequence with a(n) = A278040(A278040(n)), for n >= 0.

Offset 0, canonical program `A322409.P9722259027104702857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322409 (n : ℕ) : ℤ :=
  A322409.P9722259027104702857.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322410.P10476249854560897128

`A278040(A278039(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322410.P10476249854560897128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278039 n).toNat

end

end A322410.P10476249854560897128

noncomputable section

/-- A322410: Compound tribonacci sequence with a(n) = A278040(A278039(n)), for n >= 0.

Offset 0, canonical program `A322410.P10476249854560897128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322410 (n : ℕ) : ℤ :=
  A322410.P10476249854560897128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322431.P11477619645148095533

`eq[0, A121444(n)]`
-/

namespace A322431.P11477619645148095533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322431.P11477619645148095533

noncomputable section

/-- A322431: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^10 is zero.

Offset 1, canonical program `A322431.P11477619645148095533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3981 terms. -/
def A322431 (n : ℕ) : ℤ :=
  (A322431.P11477619645148095533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3981 terms. -/
def A322431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323901.P12439125084005686553

`A002487(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323901.P12439125084005686553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163511 n).toNat

end

end A323901.P12439125084005686553

noncomputable section

/-- A323901: a(n) = A002487(A163511(n)).

Offset 0, canonical program `A323901.P12439125084005686553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323901 (n : ℕ) : ℤ :=
  A323901.P12439125084005686553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324183.P17718046273459172401

`A000005(A163511(n))`
-/

namespace A324183.P17718046273459172401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A163511 n).toNat

end

end A324183.P17718046273459172401

noncomputable section

/-- A324183: a(n) = d(A163511(n)), where d(n) is A000005, the number of divisors of n.

Offset 0, canonical program `A324183.P17718046273459172401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324183 (n : ℕ) : ℤ :=
  A324183.P17718046273459172401.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324184.P13572072800245294565

`A000203(A163511(n))`
-/

namespace A324184.P13572072800245294565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A163511 n).toNat

end

end A324184.P13572072800245294565

noncomputable section

/-- A324184: a(n) = sigma(A163511(n)).

Offset 0, canonical program `A324184.P13572072800245294565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324184 (n : ℕ) : ℤ :=
  A324184.P13572072800245294565.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324185.P14252950843010352268

`A033879(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324185.P14252950843010352268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A163511 n).toNat

end

end A324185.P14252950843010352268

noncomputable section

/-- A324185: Deficiency of n permuted by A163511: a(n) = A033879(A163511(n)) = 2*A163511(n) - sigma(A163511(n)).

Offset 0, canonical program `A324185.P14252950843010352268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324185 (n : ℕ) : ℤ :=
  A324185.P14252950843010352268.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324186.P10448595320496770779

`A000593(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324186.P10448595320496770779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A163511 n).toNat

end

end A324186.P10448595320496770779

noncomputable section

/-- A324186: Sum of odd divisors permuted by A163511: a(n) = A000593(A163511(n)).

Offset 0, canonical program `A324186.P10448595320496770779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324186 (n : ℕ) : ℤ :=
  A324186.P10448595320496770779.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324188.P10044735737893625335

`A324121(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324188.P10044735737893625335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A163511 n).toNat

end

end A324188.P10044735737893625335

noncomputable section

/-- A324188: a(n) = A324121(A163511(n)).

Offset 0, canonical program `A324188.P10044735737893625335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324188 (n : ℕ) : ℤ :=
  A324188.P10044735737893625335.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324189.P7792579227676348933

`A324122(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324189.P7792579227676348933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (A163511 n).toNat

end

end A324189.P7792579227676348933

noncomputable section

/-- A324189: a(n) = A324122(A163511(n)).

Offset 0, canonical program `A324189.P7792579227676348933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324122, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324189 (n : ℕ) : ℤ :=
  A324189.P7792579227676348933.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A324122, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133562.P2922805213875527912

`A131686(n+3)+A069484(n+1)`
-/

namespace A133562.P2922805213875527912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (n + 3) + A069484 (n + 1)

end

end A133562.P2922805213875527912

noncomputable section

/-- A133562: Numbers which are the sum of the squares of seven consecutive primes.

Offset 1, canonical program `A133562.P2922805213875527912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A133562 (n : ℕ) : ℤ :=
  A133562.P2922805213875527912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A133562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138507.P4063493995487370764

`(-1)^n*A109091(n+1)`
-/

namespace A138507.P4063493995487370764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109091 (n + 1)

end

end A138507.P4063493995487370764

noncomputable section

/-- A138507: Expansion of (f(q)^5 / f(q^5) - 1) / 5 in powers of q where f() is a Ramanujan theta function.

Offset 1, canonical program `A138507.P4063493995487370764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138507 (n : ℕ) : ℤ :=
  A138507.P4063493995487370764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138686.P6359265090745063621

`p?[A138685(n+1)]`
-/

namespace A138686.P6359265090745063621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138686.P6359265090745063621

noncomputable section

/-- A138686: Primes in A138685.

Offset 1, canonical program `A138686.P6359265090745063621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A138686 (n : ℕ) : ℤ :=
  A138686.P6359265090745063621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A138686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139102.P10379063909804235442

`A139104(n+1)/2`
-/

namespace A139102.P10379063909804235442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139104 (n + 1) : ℚ) / 2

end

end A139102.P10379063909804235442

noncomputable section

/-- A139102: Numbers whose binary representation shows the distribution of prime numbers up to the n-th prime minus 1, using "0" for primes and "1" for nonprime numbers.

Offset 1, canonical program `A139102.P10379063909804235442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139104, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139102.P10379063909804235442.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139104, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139858.P3447086168202137661

`∩[A107137(n+1), A107181(n+1)]`
-/

namespace A139858.P3447086168202137661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P3447086168202137661

noncomputable section

/-- A139858: Primes of the form 8x^2+8xy+17y^2.

Offset 1, canonical program `A139858.P3447086168202137661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858 (n : ℕ) : ℤ :=
  (A139858.P3447086168202137661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A139858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139879.P5833802946474482157

`∩[A106972(n+1), A107181(n+1)]`
-/

namespace A139879.P5833802946474482157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P5833802946474482157

noncomputable section

/-- A139879: Primes of the form 12x^2+12xy+17y^2.

Offset 1, canonical program `A139879.P5833802946474482157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139879 (n : ℕ) : ℤ :=
  (A139879.P5833802946474482157.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139893.P10485135326994439594

`∪[A139991(n+1), A139997(n+1)]`
-/

namespace A139893.P10485135326994439594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P10485135326994439594

noncomputable section

/-- A139893: Primes of the form 14x^2+15y^2.

Offset 1, canonical program `A139893.P10485135326994439594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139893 (n : ℕ) : ℤ :=
  (A139893.P10485135326994439594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140026.P1796538295663725552

`∩[A139850(n+1), A139912(n+1)]`
-/

namespace A140026.P1796538295663725552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140026.P1796538295663725552

noncomputable section

/-- A140026: Primes of the form 35x^2+39y^2.

Offset 1, canonical program `A140026.P1796538295663725552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140026 (n : ℕ) : ℤ :=
  (A140026.P1796538295663725552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4988 terms. -/
def A140026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140807.P3846438794985278792

`floor(A175297(n+2)/(A175298(n+1)-2))`
-/

namespace A140807.P3846438794985278792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175297 (n + 2) : ℚ) / (A175298 (n + 1) - 2 : ℚ)⌋

end

end A140807.P3846438794985278792

noncomputable section

/-- A140807: a(n) is the largest integer such that n^k is palindromic in binary for all nonnegative integers k that are <= a(n).

Offset 2, canonical program `A140807.P3846438794985278792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A140807 (n : ℕ) : ℤ :=
  A140807.P3846438794985278792.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A140807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141136.P2567257724211778372

`A140853(A008578(n+1))`
-/

namespace A141136.P2567257724211778372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A008578 (n + 1)).toNat

end

end A141136.P2567257724211778372

noncomputable section

/-- A141136: a(n) = prime(prime(A028815(n) - 1) - 1) - 1.

Offset 0, canonical program `A141136.P2567257724211778372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141136 (n : ℕ) : ℤ :=
  A141136.P2567257724211778372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A141136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141208.P7923699408276574517

`A140853(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`
-/

namespace A141208.P7923699408276574517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A141208.P7923699408276574517

noncomputable section

/-- A141208: a(n) = prime(prime(prime(n) - 1) - 1) - 1, where prime(n) = n-th prime.

Offset 1, canonical program `A141208.P7923699408276574517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141208 (n : ℕ) : ℤ :=
  A141208.P7923699408276574517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A141208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141515.P3806519598676135324

`A067774(n+1)-1`
-/

namespace A141515.P3806519598676135324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1) - 1

end

end A141515.P3806519598676135324

noncomputable section

/-- A141515: a(n) = phi(A067774(n)) where phi is Euler totient function.

Offset 1, canonical program `A141515.P3806519598676135324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141515 (n : ℕ) : ℤ :=
  A141515.P3806519598676135324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142339.P3986988199601511842

`p?[A087461(n+2)-A000040(n+2)]`
-/

namespace A142339.P3986988199601511842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142339.P3986988199601511842

noncomputable section

/-- A142339: Primes of the form (p(2*n)-p(n))/2, where p(n)=n-th prime.

Offset 1, canonical program `A142339.P3986988199601511842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A142339 (n : ℕ) : ℤ :=
  A142339.P3986988199601511842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A142339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143127.P4022789189732155568

`2*A083356(n+1)-A000330(floor(sqrt(n+1)))`
-/

namespace A143127.P4022789189732155568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083356 (n + 1) - A000330 (Nat.sqrt (n + 1))

end

end A143127.P4022789189732155568

noncomputable section

/-- A143127: a(n) = Sum_{k=1..n} k*d(k) where d(k) is the number of divisors of k.

Offset 1, canonical program `A143127.P4022789189732155568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083356, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143127 (n : ℕ) : ℤ :=
  A143127.P4022789189732155568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083356, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A146564.P5455940889942169782

`3*A046079(2*(n+1))+1`
-/

namespace A146564.P5455940889942169782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046079 (2 * (n + 1)) + 1

end

end A146564.P5455940889942169782

noncomputable section

/-- A146564: a(n) is the number of solutions of the equation k*n/(k-n) = c. k,c integers.

Offset 1, canonical program `A146564.P5455940889942169782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146564 (n : ℕ) : ℤ :=
  A146564.P5455940889942169782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147297.P13953450478721727119

`record[A108154(4*(n+1)+2)]`
-/

namespace A147297.P13953450478721727119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (4 * (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147297.P13953450478721727119

noncomputable section

/-- A147297: Primes of the form (2k)^2 + 3(2k + 1)^2.

Offset 1, canonical program `A147297.P13953450478721727119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A147297 (n : ℕ) : ℤ :=
  A147297.P13953450478721727119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A147297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152468.P16510196203380355296

`A000040(A288041(n+1))`
-/

namespace A152468.P16510196203380355296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A288041 (n + 1)).toNat

end

end A152468.P16510196203380355296

noncomputable section

/-- A152468: Smallest of five consecutive primes whose sum is a prime.

Offset 1, canonical program `A152468.P16510196203380355296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152468 (n : ℕ) : ℤ :=
  A152468.P16510196203380355296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156047.P16289712834107389922

`A094310(comp[∑[n]])+A058298(n+2)`
-/

namespace A156047.P16289712834107389922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A058298 (n + 2)

end

end A156047.P16289712834107389922

noncomputable section

/-- A156047: Triangle read by rows: T(n, k) = (n+1)!*(1/k + 1/(n-k+1)).

Offset 1, canonical program `A156047.P16289712834107389922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A156047 (n : ℕ) : ℤ :=
  A156047.P16289712834107389922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A156047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156308.P5650562989107457170

`A078812(n)/A033184(n+1)*A092392(n)`
-/

namespace A156308.P5650562989107457170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078812 n : ℚ) / (A033184 (n + 1) : ℚ) * (A092392 n : ℚ)

end

end A156308.P5650562989107457170

noncomputable section

/-- A156308: Inverse of triangle S(n,m) defined by sequence A156290, n >= 1, 1 <= m <= n.

Offset 1, canonical program `A156308.P5650562989107457170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156308 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156308.P5650562989107457170.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157226.P2232521618856525876

`floor(A304182(n+1)/2)`
-/

namespace A157226.P2232521618856525876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304182 (n + 1) : ℚ) / 2⌋

end

end A157226.P2232521618856525876

noncomputable section

/-- A157226: Number of primitive inequivalent sublattices of square lattice having mirrors parallel to the sides of the unit cell of the parent lattice of index n.

Offset 1, canonical program `A157226.P2232521618856525876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157226 (n : ℕ) : ℤ :=
  A157226.P2232521618856525876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A157226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157328.P4452604043700386186

`2^n*A064062(n)`
-/

namespace A157328.P4452604043700386186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A064062 n

end

end A157328.P4452604043700386186

noncomputable section

/-- A157328: Expansion of 1/(1-2x*c(4x)) with c(x) g.f. of Catalan numbers (A000108).

Offset 0, canonical program `A157328.P4452604043700386186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157328 (n : ℕ) : ℤ :=
  A157328.P4452604043700386186.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158949.P10603836199365168216

`∑{d}[n+1, A060724(#)*A063445((n+1)/#)]`
-/

namespace A158949.P10603836199365168216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158949.P10603836199365168216

noncomputable section

/-- A158949: Inverse Moebius transform of A065958.

Offset 1, canonical program `A158949.P10603836199365168216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158949 (n : ℕ) : ℤ :=
  A158949.P10603836199365168216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159077.P14146349899783805996

`A008475(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159077.P14146349899783805996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + 1

end

end A159077.P14146349899783805996

noncomputable section

/-- A159077: a(n) = A008475(n) + 1.

Offset 1, canonical program `A159077.P14146349899783805996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159077 (n : ℕ) : ℤ :=
  A159077.P14146349899783805996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A159965.P13351060524147672347

`A193635(A061579(n))`
-/

namespace A159965.P13351060524147672347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A061579 n).toNat

end

end A159965.P13351060524147672347

noncomputable section

/-- A159965: Riordan array (1/sqrt(1-4x), (1-2x-(1-3x)c(x))/(x*sqrt(1-4x))), c(x) the g.f. of A000108.

Offset 0, canonical program `A159965.P13351060524147672347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A159965 (n : ℕ) : ℤ :=
  A159965.P13351060524147672347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A159965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160370.P9712212650284585240

`∩[A244778(n+1), A288022(n+1)]`
-/

namespace A160370.P9712212650284585240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160370.P9712212650284585240

noncomputable section

/-- A160370: Smaller member p of a pair (p,p+6) of consecutive primes in different centuries.

Offset 1, canonical program `A160370.P9712212650284585240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A160370 (n : ℕ) : ℤ :=
  (A160370.P9712212650284585240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A160370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161515.P1171096934450615199

`A033999(n)*A035185(A017077(n))`
-/

namespace A161515.P1171096934450615199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A035185 (A017077 n).toNat

end

end A161515.P1171096934450615199

noncomputable section

/-- A161515: Expansion of q-series Sum_{n >= 0} (-1)^n*q^(n*(n + 1)/2)*(1 - q)*(1 - q^2)*...*(1 - q^n) / ((1 + q)*(1 + q^2)*(1 + q^3)*...*(1 + q^n)).

Offset 0, canonical program `A161515.P1171096934450615199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161515 (n : ℕ) : ℤ :=
  A161515.P1171096934450615199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161516.P1475536178005719579

`(-1)^n*A035185(abs(1-8*n))`
-/

namespace A161516.P1475536178005719579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035185 |1 - (8 * n : ℤ)|.toNat

end

end A161516.P1475536178005719579

noncomputable section

/-- A161516: Expansion of 1 + 2*Sum_{n >= 1} (-q)^n*(1 + q^2)*(1 + q^4)*...*(1 + q^(2*k - 2))/ ((1 - q)*(1 - q^3)*...*(1 - q^(2*n - 1))).

Offset 0, canonical program `A161516.P1475536178005719579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161516 (n : ℕ) : ℤ :=
  A161516.P1475536178005719579.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A161516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162306.P11821351337870936000

`A002260(eq[1, A304569(n+1)]+1)`
-/

namespace A162306.P11821351337870936000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A162306.P11821351337870936000

noncomputable section

/-- A162306: Irregular triangle in which row n contains the numbers <= n whose prime factors are a subset of prime factors of n.

Offset 1, canonical program `A162306.P11821351337870936000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A162306 (n : ℕ) : ℤ :=
  A162306.P11821351337870936000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A162306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167022.P9505370295991698775

`A000007(n)-A007971(n)`
-/

namespace A167022.P9505370295991698775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A007971 n

end

end A167022.P9505370295991698775

noncomputable section

/-- A167022: Expansion of sqrt(1 - 2*x - 3*x^2) in powers of x.

Offset 0, canonical program `A167022.P9505370295991698775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A167022 (n : ℕ) : ℤ :=
  A167022.P9505370295991698775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A167022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167515.P2764876312369213402

`A000203(n+1)-A008475(n+1)`
-/

namespace A167515.P2764876312369213402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008475 (n + 1)

end

end A167515.P2764876312369213402

noncomputable section

/-- A167515: The sum over the divisors of n, except the maximum-prime-power divisors collected in A008475.

Offset 1, canonical program `A167515.P2764876312369213402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167515 (n : ℕ) : ℤ :=
  A167515.P2764876312369213402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171727.P1096727604738501956

`A091591(p?[A040976(n+1)])`
-/

namespace A171727.P1096727604738501956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171727.P1096727604738501956

noncomputable section

/-- A171727: The number of twin prime pairs in the interval (p^2,p*q), where (p,q) runs over the twin prime pairs (A001359(n),A006512(n)).

Offset 1, canonical program `A171727.P1096727604738501956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A171727 (n : ℕ) : ℤ :=
  A171727.P1096727604738501956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A171727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172016.P3154640750281185273

`∪[A121764(n+1)-2, A121764(n+1)]`
-/

namespace A172016.P3154640750281185273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172016.P3154640750281185273

noncomputable section

/-- A172016: Numbers of the form 6*k-+1 such that 6*k-1=nonprime and 6*k+1=prime.

Offset 1, canonical program `A172016.P3154640750281185273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172016 (n : ℕ) : ℤ :=
  (A172016.P3154640750281185273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174940.P16857254554969626556

`∑{d}[n+1, A046692(#)*A174932((n+1)/#)]`
-/

namespace A174940.P16857254554969626556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A174932 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174940.P16857254554969626556

noncomputable section

/-- A174940: a(n) = Sum_{d|n} A007955(d) * A008683(n/d) = Sum_{d|n} A007955(d) * mu(n/d), where A007955(m) = number of divisors of m.

Offset 1, canonical program `A174940.P16857254554969626556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174940 (n : ℕ) : ℤ :=
  A174940.P16857254554969626556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175632.P6445020047984440906

`Δ[record[A062302(n+1)]]`
-/

namespace A175632.P6445020047984440906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175632.P6445020047984440906

noncomputable section

/-- A175632: Maximal run length of primes of the form A025584(n), A025584(n)+2, A025584(n)+4, ...

Offset 1, canonical program `A175632.P6445020047984440906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A175632 (n : ℕ) : ℤ :=
  A175632.P6445020047984440906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A175632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176992.P8811251635075281909

`2*A092392(n)-A033184(n+1)`
-/

namespace A176992.P8811251635075281909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092392 n - A033184 (n + 1)

end

end A176992.P8811251635075281909

noncomputable section

/-- A176992: Triangle T(n,k) = binomial(2n-k+1, n+1) read by rows, 0 <= k <= n.

Offset 0, canonical program `A176992.P8811251635075281909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176992 (n : ℕ) : ℤ :=
  A176992.P8811251635075281909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178180.P18394938514477420911

`eq[A022457(A028310(n)), A066066(n+1)]`
-/

namespace A178180.P18394938514477420911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178180.P18394938514477420911

noncomputable section

/-- A178180: Numbers k such that prime(2k) mod prime(k) = prime(2k+2) mod prime(k+1).

Offset 1, canonical program `A178180.P18394938514477420911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A178180 (n : ℕ) : ℤ :=
  (A178180.P18394938514477420911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A178180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178792.P3240755536533390895

`1/3*(4*2^n*A000984(n)-A064062(n))`
-/

namespace A178792.P3240755536533390895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * ((4 * 2 ^ n : ℤ) * A000984 n - A064062 n : ℚ)

end

end A178792.P3240755536533390895

noncomputable section

/-- A178792: Dot product of the rows of triangle A046899 with vector (1,2,4,8,...) (= A000079).

Offset 0, canonical program `A178792.P3240755536533390895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178792 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178792.P3240755536533390895.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180470.P2474495911484694414

`A065995(n+1)-A008864(n+1)`
-/

namespace A180470.P2474495911484694414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065995 (n + 1) - A008864 (n + 1)

end

end A180470.P2474495911484694414

noncomputable section

/-- A180470: a(n) = -prime(n) + prime(n + prime(n)) - 1.

Offset 1, canonical program `A180470.P2474495911484694414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180470 (n : ℕ) : ℤ :=
  A180470.P2474495911484694414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182358.P2961937439020807832

`eq[1, A295664(n+1)]+1`
-/

namespace A182358.P2961937439020807832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182358.P2961937439020807832

noncomputable section

/-- A182358: Numbers n for which the number of divisors of n is congruent to 2 mod 4.

Offset 1, canonical program `A182358.P2961937439020807832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9941 terms. -/
def A182358 (n : ℕ) : ℤ :=
  (A182358.P2961937439020807832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9941 terms. -/
def A182358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183060.P15810136757882234641

`floor(A147562(n)/2+n)`
-/

namespace A183060.P15810136757882234641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147562 n : ℚ) / 2 + (n : ℚ)⌋

end

end A183060.P15810136757882234641

noncomputable section

/-- A183060: Number of "ON" cells at n-th stage in a simple 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A183060.P15810136757882234641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A183060 (n : ℕ) : ℤ :=
  A183060.P15810136757882234641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A183060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185632.P15082878415161927803

`record[A108154(A018252(n+1)+1)]`
-/

namespace A185632.P15082878415161927803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185632.P15082878415161927803

noncomputable section

/-- A185632: Primes of the form n^2 + n + 1 where n is nonprime.

Offset 1, canonical program `A185632.P15082878415161927803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185632 (n : ℕ) : ℤ :=
  A185632.P15082878415161927803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185717.P5465608127689346911

`A121443(2*n+1)`
-/

namespace A185717.P5465608127689346911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (2 * n + 1)

end

end A185717.P5465608127689346911

noncomputable section

/-- A185717: Expansion of q^(-1) * c(q^2) * (c(q) - c(q^4)) / 9 in powers of q^2 where c() is a cubic AGM theta function.

Offset 0, canonical program `A185717.P5465608127689346911`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185717 (n : ℕ) : ℤ :=
  A185717.P5465608127689346911.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185938.P17107618719082406059

`∩[A054643(n+1), A121762(n+1)]`
-/

namespace A185938.P17107618719082406059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P17107618719082406059

noncomputable section

/-- A185938: First of a run of 3 or more consecutive primes which are congruent to 2 (mod 3).

Offset 1, canonical program `A185938.P17107618719082406059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A185938 (n : ℕ) : ℤ :=
  (A185938.P17107618719082406059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A185938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185978.P8182532355553636214

`filter[A051533(n+1), A123110(#)]`
-/

namespace A185978.P8182532355553636214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A185978.P8182532355553636214

noncomputable section

/-- A185978: Nontriangular numbers which are the sum of two (positive) triangular numbers.

Offset 1, canonical program `A185978.P8182532355553636214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A185978 (n : ℕ) : ℤ :=
  A185978.P8182532355553636214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A185978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186193.P2513860863626863232

`2*(A153083(n+1)+5)`
-/

namespace A186193.P2513860863626863232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153083 (n + 1) + 5)

end

end A186193.P2513860863626863232

noncomputable section

/-- A186193: Numbers k such that k!! is divisible by (k+1).

Offset 1, canonical program `A186193.P2513860863626863232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186193 (n : ℕ) : ℤ :=
  A186193.P2513860863626863232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188318.P11824684918398518309

`A188321(A083035(n+1)+n+1)`
-/

namespace A188318.P11824684918398518309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (A083035 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188318.P11824684918398518309

noncomputable section

/-- A188318: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A188318.P11824684918398518309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188318 (n : ℕ) : ℤ :=
  A188318.P11824684918398518309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189986.P2460908165640344182

`filter[A385350(n+2), A373978(#)]`
-/

namespace A189986.P2460908165640344182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A189986.P2460908165640344182

noncomputable section

/-- A189986: Numbers of the form 4k+1 having exactly 4 divisors.

Offset 1, canonical program `A189986.P2460908165640344182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A189986 (n : ℕ) : ℤ :=
  A189986.P2460908165640344182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A189986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191228.P7558607639382217669

`A107347(∑[C(2, ∑{e}[n+1, #+1])])`
-/

namespace A191228.P7558607639382217669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191228.P7558607639382217669

noncomputable section

/-- A191228: Greatest Ramanujan prime index less than x, eta(x).

Offset 1, canonical program `A191228.P7558607639382217669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191228 (n : ℕ) : ℤ :=
  A191228.P7558607639382217669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192144.P13402227133429832230

`A192146(n+1)+A192146(n+1)-A192255(n+1)`
-/

namespace A192144.P13402227133429832230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192146 (n + 1) + (A192146 (n + 1) - A192255 (n + 1))

end

end A192144.P13402227133429832230

noncomputable section

/-- A192144: 1-sequence of reduction of hexagonal numbers sequence by x^2 -> x+1.

Offset 1, canonical program `A192144.P13402227133429832230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A192144 (n : ℕ) : ℤ :=
  A192144.P13402227133429832230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A192144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195064.P1281476350292998118

`∪[A035928(n+1), A195063(n+1)]`
-/

namespace A195064.P1281476350292998118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195064.P1281476350292998118

noncomputable section

/-- A195064: Numbers n such that BCR(n) is not greater than n, where BCR = binary-complement-and-reverse = A036044.

Offset 1, canonical program `A195064.P1281476350292998118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195064 (n : ℕ) : ℤ :=
  (A195064.P1281476350292998118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207622.P11482556725908799106

`A000079(n%floor(sqrt(n+1)))*A207616(n+1)`
-/

namespace A207622.P11482556725908799106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n % Nat.sqrt (n + 1)) * A207616 (n + 1)

end

end A207622.P11482556725908799106

noncomputable section

/-- A207622: Triangle of coefficients of polynomials u(n,x) jointly generated with A207623; see the Formula section.

Offset 1, canonical program `A207622.P11482556725908799106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207622 (n : ℕ) : ℤ :=
  A207622.P11482556725908799106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213815.P11762082547027423412

`Δ[A000034(n)+2*A107817(n)]`
-/

namespace A213815.P11762082547027423412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 2 * A107817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213815.P11762082547027423412

noncomputable section

/-- A213815: Arithmetic mean of next a(n) successive nonnegative integers is prime.

Offset 1, canonical program `A213815.P11762082547027423412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A213815 (n : ℕ) : ℤ :=
  A213815.P11762082547027423412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A213815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214506.P9224525650957294672

`(A033873(n)+A000007(n))%10`
-/

namespace A214506.P9224525650957294672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033873 n + A000007 n) 10

end

end A214506.P9224525650957294672

noncomputable section

/-- A214506: Last digit of the smallest prime number in base 10 with n digits.

Offset 1, canonical program `A214506.P9224525650957294672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A214506 (n : ℕ) : ℤ :=
  A214506.P9224525650957294672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A214506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216098.P11989965352199446682

`p?[A073273(n+1)]`
-/

namespace A216098.P11989965352199446682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216098.P11989965352199446682

noncomputable section

/-- A216098: Primes that are equal to the floor of the geometric mean of the previous prime and the following prime.

Offset 1, canonical program `A216098.P11989965352199446682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A216098 (n : ℕ) : ℤ :=
  A216098.P11989965352199446682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. -/
def A216098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216292.P8549922877224519400

`floor(A078494(n+1)/10)`
-/

namespace A216292.P8549922877224519400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078494 (n + 1) : ℚ) / 10⌋

end

end A216292.P8549922877224519400

noncomputable section

/-- A216292: Values of k such that there is exactly one prime between 10k and 10k + 9.

Offset 1, canonical program `A216292.P8549922877224519400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216292 (n : ℕ) : ℤ :=
  A216292.P8549922877224519400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216292.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216309.P13475268406436914155

`A078494(eq[1, A078494(n+1)%5]+1)`
-/

namespace A216309.P13475268406436914155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216309.P13475268406436914155

noncomputable section

/-- A216309: The prime ending in 1 is the only prime in a decade.

Offset 1, canonical program `A216309.P13475268406436914155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A216309 (n : ℕ) : ℤ :=
  A216309.P13475268406436914155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A216309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216310.P16292608153891418272

`A078494(eq[3, A078494(n+1)%5]+1)`
-/

namespace A216310.P16292608153891418272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216310.P16292608153891418272

noncomputable section

/-- A216310: The prime ending in 3 is the only prime in a decade.

Offset 1, canonical program `A216310.P16292608153891418272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A216310 (n : ℕ) : ℤ :=
  A216310.P16292608153891418272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2530 terms. -/
def A216310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216311.P1626925230596813176

`A078494(eq[2, A078494(n+1)%5]+1)`
-/

namespace A216311.P1626925230596813176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078494 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216311.P1626925230596813176

noncomputable section

/-- A216311: The prime ending in 7 is the only prime in a decade.

Offset 1, canonical program `A216311.P1626925230596813176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A216311 (n : ℕ) : ℤ :=
  A216311.P1626925230596813176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A216311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216312.P9687480174034920457

`∩[A030433(n+1), A078494(n+1)]`
-/

namespace A216312.P9687480174034920457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216312.P9687480174034920457

noncomputable section

/-- A216312: The prime ending in 9 is the only prime in a decade.

Offset 1, canonical program `A216312.P9687480174034920457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A216312 (n : ℕ) : ℤ :=
  (A216312.P9687480174034920457.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A216312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216784.P9078993099628633723

`∑{p}[(n+1)²+1, A266974(#)]`
-/

namespace A216784.P9078993099628633723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A266974 p

end

end A216784.P9078993099628633723

noncomputable section

/-- A216784: a(n) is the number of distinct prime divisors of n^2 + 1 of the form m^2 + 1.

Offset 1, canonical program `A216784.P9078993099628633723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A216784 (n : ℕ) : ℤ :=
  A216784.P9078993099628633723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A216784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221837.P10112316691659458481

`A046079(n+1)²`
-/

namespace A221837.P10112316691659458481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) ^ 2

end

end A221837.P10112316691659458481

noncomputable section

/-- A221837: Number of integer Heron triangles of height n such that the angles adjacent to the base are not right.

Offset 1, canonical program `A221837.P10112316691659458481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221837 (n : ℕ) : ℤ :=
  A221837.P10112316691659458481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A222416.P10129870324317811238

`A008475(C(a(n-2), n)+n+1)` with `a(0)=1, a(1)=2`
-/

namespace A222416.P10129870324317811238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008475 (Nat.choose (a (n - 2)).toNat n + n + 1)

end

end A222416.P10129870324317811238

noncomputable section

/-- A222416: If n = Product (p_j^k_j) then a(n) = Sum (p_j^k_j) (a(1) = 1 by convention).

Offset 1, canonical program `A222416.P10129870324317811238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222416 (n : ℕ) : ℤ :=
  A222416.P10129870324317811238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224715.P6193958608171359175

`A062302(A171526(n+1))`
-/

namespace A224715.P6193958608171359175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (A171526 (n + 1)).toNat

end

end A224715.P6193958608171359175

noncomputable section

/-- A224715: The number of unordered partitions {a,b} of prime(n) such that a or b is a nonnegative composite and the other is prime.

Offset 1, canonical program `A224715.P6193958608171359175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224715 (n : ℕ) : ℤ :=
  A224715.P6193958608171359175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225781.P10701421741266103451

`p?[2*A027699(n+1)-1]`
-/

namespace A225781.P10701421741266103451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027699 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225781.P10701421741266103451

noncomputable section

/-- A225781: Numbers k such that both k and (k+1)/2 are primes and evil.

Offset 1, canonical program `A225781.P10701421741266103451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A225781 (n : ℕ) : ℤ :=
  A225781.P10701421741266103451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A225781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226132.P3984057379380350820

`(-1)^n*A121443(n+1)`
-/

namespace A226132.P3984057379380350820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121443 (n + 1)

end

end A226132.P3984057379380350820

noncomputable section

/-- A226132: Expansion of - c(-q) * c(q^2) / 9 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A226132.P3984057379380350820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226132 (n : ℕ) : ℤ :=
  A226132.P3984057379380350820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A226132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227930.P13147228824602789360

`∩[A095282(n+1), A176620(n+1)]`
-/

namespace A227930.P13147228824602789360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P13147228824602789360

noncomputable section

/-- A227930: Primes p such that p-1 and p+1 have an even Hamming weight.

Offset 1, canonical program `A227930.P13147228824602789360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3485 terms. -/
def A227930 (n : ℕ) : ℤ :=
  (A227930.P13147228824602789360.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3485 terms. -/
def A227930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229615.P13961732512820352190

`A111932(n+2)-A121443(n+2)`
-/

namespace A229615.P13961732512820352190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111932 (n + 2) - A121443 (n + 2)

end

end A229615.P13961732512820352190

noncomputable section

/-- A229615: Expansion of q^2 * psi(q^3)^6 / psi(q)^2 in powers of q where psi() is a Ramanujan theta function.

Offset 2, canonical program `A229615.P13961732512820352190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229615 (n : ℕ) : ℤ :=
  A229615.P13961732512820352190.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A229615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230078.P11379375135510385140

`comp[2*C(A008475(n+1), n)]`
-/

namespace A230078.P11379375135510385140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A008475 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230078.P11379375135510385140

noncomputable section

/-- A230078: Complement of A138929: positive integers not of the form 2*p^k, k >= 0, p a prime (also 2).

Offset 1, canonical program `A230078.P11379375135510385140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230078 (n : ℕ) : ℤ :=
  (A230078.P11379375135510385140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230851.P4807682974501842405

`eq[0, A357761(A028310(n))]`
-/

namespace A230851.P4807682974501842405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357761 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230851.P4807682974501842405

noncomputable section

/-- A230851: Numbers with divisors which are half odious (A000069) and half evil (A001969).

Offset 1, canonical program `A230851.P4807682974501842405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3466 terms. -/
def A230851 (n : ℕ) : ℤ :=
  (A230851.P4807682974501842405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3466 terms. -/
def A230851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232356.P2356897415690345151

`2*A121443(n+1)-A111932(n+1)`
-/

namespace A232356.P2356897415690345151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A111932 (n + 1)

end

end A232356.P2356897415690345151

noncomputable section

/-- A232356: Expansion of 2/9 * c(q) * c(q^2) - q * (psi(q) * psi(q^3))^2 in powers of q where psi() is a Ramanujan theta function and c(q) is a cubic AGM theta function.

Offset 1, canonical program `A232356.P2356897415690345151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, A121443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A232356 (n : ℕ) : ℤ :=
  A232356.P2356897415690345151.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, A121443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A232356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232533.P1925257348327096795

`∑[A057661(n+1)]`
-/

namespace A232533.P1925257348327096795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232533.P1925257348327096795

noncomputable section

/-- A232533: a(n) = Sum_{i=1...n} Sum_{j=1..i} lcm(i,j)/i.

Offset 1, canonical program `A232533.P1925257348327096795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232533 (n : ℕ) : ℤ :=
  A232533.P1925257348327096795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234999.P3604876205550161988

`p?[ceil(A027699(n+1)/2)]`
-/

namespace A234999.P3604876205550161988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027699 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234999.P3604876205550161988

noncomputable section

/-- A234999: Primes p such that the p-th evil number is prime; 2 together with evil primes p such that 2p - 1 is prime.

Offset 1, canonical program `A234999.P3604876205550161988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A234999 (n : ℕ) : ℤ :=
  A234999.P3604876205550161988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. -/
def A234999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235866.P13257973449972346556

`eq[1, A324873(n+1)]+1`
-/

namespace A235866.P13257973449972346556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A235866.P13257973449972346556

noncomputable section

/-- A235866: G-cyclic numbers: numbers n such that gcd(n,A060968(n))=1.

Offset 1, canonical program `A235866.P13257973449972346556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235866 (n : ℕ) : ℤ :=
  (A235866.P13257973449972346556.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237500.P16062265895415662057

`∑[2*A011946(n+1)]`
-/

namespace A237500.P16062265895415662057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237500.P16062265895415662057

noncomputable section

/-- A237500: Number of binary strings of length 2n which contain the ones' complement of each of their two halves.

Offset 1, canonical program `A237500.P16062265895415662057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A237500 (n : ℕ) : ℤ :=
  A237500.P16062265895415662057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A237500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238950.P10491739874639615946

`A062799(n+1)-A238951(n+1)`
-/

namespace A238950.P10491739874639615946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1) - A238951 (n + 1)

end

end A238950.P10491739874639615946

noncomputable section

/-- A238950: Number of arcs from even to odd level vertices in divisor lattice D(n).

Offset 1, canonical program `A238950.P10491739874639615946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A238951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238950 (n : ℕ) : ℤ :=
  A238950.P10491739874639615946.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062799, A238951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A238950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241534.P3870875932930930674

`∑{d}[n+1, A046079(#)]`
-/

namespace A241534.P3870875932930930674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046079 d

end

end A241534.P3870875932930930674

noncomputable section

/-- A241534: Number of integer arithmetic means of 2 distinct divisors of n.

Offset 1, canonical program `A241534.P3870875932930930674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241534 (n : ℕ) : ℤ :=
  A241534.P3870875932930930674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241571.P15390613395399299711

`A153083(n+1)-2`
-/

namespace A241571.P15390613395399299711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153083 (n + 1) - 2

end

end A241571.P15390613395399299711

noncomputable section

/-- A241571: Numbers n such that 2*n+15 is not a prime.

Offset 1, canonical program `A241571.P15390613395399299711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241571 (n : ℕ) : ℤ :=
  A241571.P15390613395399299711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255264.P17478786461012927538

`A147562(A048645(n+1))`
-/

namespace A255264.P17478786461012927538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (A048645 (n + 1)).toNat

end

end A255264.P17478786461012927538

noncomputable section

/-- A255264: Total number of ON cells in the "Ulam-Warburton" two-dimensional cellular automaton of A147562 after A048645(n) generations.

Offset 1, canonical program `A255264.P17478786461012927538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, A147562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255264 (n : ℕ) : ℤ :=
  A255264.P17478786461012927538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, A147562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256239.P12780554241417040292

`6*n*A256226(n)`
-/

namespace A256239.P12780554241417040292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) * A256226 n

end

end A256239.P12780554241417040292

noncomputable section

/-- A256239: Sum of all the parts in the partitions of 6n into 6 parts.

Offset 0, canonical program `A256239.P12780554241417040292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256239 (n : ℕ) : ℤ :=
  A256239.P12780554241417040292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256602.P14275851301488169315

`∩[A038874(n+1), A121764(n+1)]`
-/

namespace A256602.P14275851301488169315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P14275851301488169315

noncomputable section

/-- A256602: Primes of form 12*k + 1 and not a twin prime.

Offset 1, canonical program `A256602.P14275851301488169315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3782 terms. -/
def A256602 (n : ℕ) : ℤ :=
  (A256602.P14275851301488169315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3782 terms. -/
def A256602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258383.P13211642193045278784

`Δ[A258432(n+1)]`
-/

namespace A258383.P13211642193045278784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258383.P13211642193045278784

noncomputable section

/-- A258383: Run lengths of consecutive identical terms in A062234.

Offset 1, canonical program `A258383.P13211642193045278784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258383 (n : ℕ) : ℤ :=
  A258383.P13211642193045278784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259829.P12670832268435850877

`(-1)^floor((n+1)/2)*A035185(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259829.P12670832268435850877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A035185 (n + 1) : ℚ)

end

end A259829.P12670832268435850877

noncomputable section

/-- A259829: a(n) = (-1)^floor(n/2) * A035185(n).

Offset 1, canonical program `A259829.P12670832268435850877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A259829.P12670832268435850877.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262708.P6887640225270983865

`A086304(n+1)+or(5, A090722(n+4))`
-/

namespace A262708.P6887640225270983865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + Int.lor 5 (A090722 (n + 4))

end

end A262708.P6887640225270983865

noncomputable section

/-- A262708: a(n) = p-(p/5) where p = prime(n) and (p/5) is a Legendre symbol.

Offset 4, canonical program `A262708.P6887640225270983865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262708 (n : ℕ) : ℤ :=
  A262708.P6887640225270983865.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266459.P6080024581555885958

`A267001(A020703(n+1)-1)`
-/

namespace A266459.P6080024581555885958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267001 (A020703 (n + 1) - 1).toNat

end

end A266459.P6080024581555885958

noncomputable section

/-- A266459: Triangle read by rows giving successive states of cellular automaton generated by "Rule 27" initiated with a single ON (black) cell.

Offset 0, canonical program `A266459.P6080024581555885958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266459 (n : ℕ) : ℤ :=
  A266459.P6080024581555885958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266669.P16161379745779361122

`A266605(A020703(n+1)-1)`
-/

namespace A266669.P16161379745779361122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 (A020703 (n + 1) - 1).toNat

end

end A266669.P16161379745779361122

noncomputable section

/-- A266669: Triangle read by rows giving successive states of cellular automaton generated by "Rule 53" initiated with a single ON (black) cell.

Offset 0, canonical program `A266669.P16161379745779361122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266669 (n : ℕ) : ℤ :=
  A266669.P16161379745779361122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267679.P2639550459389939186

`(1-(A267349(n)+A266174(n)))²`
-/

namespace A267679.P2639550459389939186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A267349 n + A266174 n)) ^ 2

end

end A267679.P2639550459389939186

noncomputable section

/-- A267679: Triangle read by rows giving successive states of cellular automaton generated by "Rule 201" initiated with a single ON (black) cell.

Offset 0, canonical program `A267679.P2639550459389939186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267679 (n : ℕ) : ℤ :=
  A267679.P2639550459389939186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270428.P3446457217873923368

`eq[1, A355825(n+1)]+1`
-/

namespace A270428.P3446457217873923368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270428.P3446457217873923368

noncomputable section

/-- A270428: Exponentially odious numbers: 1 together with positive integers n such that all exponents in prime factorization of n are odious numbers (A000069).

Offset 1, canonical program `A270428.P3446457217873923368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428 (n : ℕ) : ℤ :=
  (A270428.P3446457217873923368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273409.P13603559143851020891

`∑[A147562(n+1)+1-a(n-1)]` with `a(0)=1`
-/

namespace A273409.P13603559143851020891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A147562 (n + 1) + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273409.P13603559143851020891

noncomputable section

/-- A273409: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 678", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273409.P13603559143851020891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4490 terms. -/
def A273409 (n : ℕ) : ℤ :=
  A273409.P13603559143851020891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4490 terms. -/
def A273409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274359.P5756310034310855443

`∩[A005237(n+1), A030634(n+1)]`
-/

namespace A274359.P5756310034310855443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274359.P5756310034310855443

noncomputable section

/-- A274359: Numbers k such that k and k+1 both have 16 divisors.

Offset 1, canonical program `A274359.P5756310034310855443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A274359 (n : ℕ) : ℤ :=
  (A274359.P5756310034310855443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A274359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275606.P16564742963572456798

`A328818(n)²%3`
-/

namespace A275606.P16564742963572456798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328818 n ^ 2) 3

end

end A275606.P16564742963572456798

noncomputable section

/-- A275606: Spiral constructed on the nodes of the triangular net such that a(n) = signum(A274920(n)).

Offset 0, canonical program `A275606.P16564742963572456798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A275606 (n : ℕ) : ℤ :=
  A275606.P16564742963572456798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A275606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276931.P10992499058279843691

`A276932(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276931.P10992499058279843691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276932 n : ℚ) / 2

end

end A276931.P10992499058279843691

noncomputable section

/-- A276931: Row 2 of A276616: a(n) = A276932(n)/2.

Offset 0, canonical program `A276931.P10992499058279843691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276931.P10992499058279843691.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278998.P826195583929111342

`lt[0, A109091(n+1)]`
-/

namespace A278998.P826195583929111342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278998.P826195583929111342

noncomputable section

/-- A278998: Numbers of the form (5h+1)*5^k-1 or (5h+4)*5^k-1 for h,k in N.

Offset 1, canonical program `A278998.P826195583929111342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278998 (n : ℕ) : ℤ :=
  (A278998.P826195583929111342.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278999.P7909097224008119104

`lt[A109091(n+1), 0]`
-/

namespace A278999.P7909097224008119104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278999.P7909097224008119104

noncomputable section

/-- A278999: Numbers of the form (5h+2)*5^k-1 or (5h+3)*5^k-1 for h,k in N.

Offset 1, canonical program `A278999.P7909097224008119104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278999 (n : ℕ) : ℤ :=
  (A278999.P7909097224008119104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281490.P3523098735893646296

`A307597(9*n+7)`
-/

namespace A281490.P3523098735893646296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (9 * n + 7)

end

end A281490.P3523098735893646296

noncomputable section

/-- A281490: Expansion of f(x, x^3) * f(x, x^8) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281490.P3523098735893646296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281490 (n : ℕ) : ℤ :=
  A281490.P3523098735893646296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281491.P16396584514886976107

`A307597(9*n+4)`
-/

namespace A281491.P16396584514886976107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (9 * n + 4)

end

end A281491.P16396584514886976107

noncomputable section

/-- A281491: Expansion of f(x, x^3) * f(x^2, x^7) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281491.P16396584514886976107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281491 (n : ℕ) : ℤ :=
  A281491.P16396584514886976107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284203.P3141137211132390266

`∑{d}[n+1, A164292(#)]`
-/

namespace A284203.P3141137211132390266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A164292 d

end

end A284203.P3141137211132390266

noncomputable section

/-- A284203: Number of twin prime (A001097) divisors of n.

Offset 1, canonical program `A284203.P3141137211132390266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A284203 (n : ℕ) : ℤ :=
  A284203.P3141137211132390266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A284203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284599.P274400123540582278

`∑{d}[n+1, #*A164292(#)]`
-/

namespace A284599.P274400123540582278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A164292 d

end

end A284599.P274400123540582278

noncomputable section

/-- A284599: Sum of twin prime (A001097) divisors of n.

Offset 1, canonical program `A284599.P274400123540582278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284599 (n : ℕ) : ℤ :=
  A284599.P274400123540582278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284777.P2957116488474719438

`xor(1, A284776(n+2))`
-/

namespace A284777.P2957116488474719438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284776 (n + 2))

end

end A284777.P2957116488474719438

noncomputable section

/-- A284777: Positions of 1 in A284775; complement of A284776.

Offset 1, canonical program `A284777.P2957116488474719438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284777 (n : ℕ) : ℤ :=
  A284777.P2957116488474719438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284795.P7559142428192758508

`lt[3, and(6, A284775(A065033(n+1))+3)]+n+1`
-/

namespace A284795.P7559142428192758508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A284775 (A065033 (n + 1)).toNat + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + (n + 1)

end

end A284795.P7559142428192758508

noncomputable section

/-- A284795: Positions of 0's in A284793.

Offset 1, canonical program `A284795.P7559142428192758508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284795 (n : ℕ) : ℤ :=
  (A284795.P7559142428192758508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284817.P1561688684894145384

`2*(n+1)-1-A284776(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284817.P1561688684894145384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - A284776 (n + 1)

end

end A284817.P1561688684894145384

noncomputable section

/-- A284817: a(n) = 2n - 1 - A284776(n).

Offset 1, canonical program `A284817.P1561688684894145384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284817 (n : ℕ) : ℤ :=
  A284817.P1561688684894145384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285788.P13809897660344118351

`filter[A038566(n+1), A005171(#)]`
-/

namespace A285788.P13809897660344118351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A285788.P13809897660344118351

noncomputable section

/-- A285788: Irregular triangle T(n,m): nonprime 1 <= k <= n such that n and k are coprime.

Offset 1, canonical program `A285788.P13809897660344118351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A285788 (n : ℕ) : ℤ :=
  A285788.P13809897660344118351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A285788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286046.P6614005406053025473

`A286044(n+1)+A286049(n+2)-A286044(n+2)`
-/

namespace A286046.P6614005406053025473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (n + 1) + (A286049 (n + 2) - A286044 (n + 2))

end

end A286046.P6614005406053025473

noncomputable section

/-- A286046: {011->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286046.P6614005406053025473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286046 (n : ℕ) : ℤ :=
  A286046.P6614005406053025473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286064.P11784658490324997277

`char[A286066(n+1)-1]`
-/

namespace A286064.P11784658490324997277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286064.P11784658490324997277

noncomputable section

/-- A286064: {0110->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286064.P11784658490324997277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286064 (n : ℕ) : ℤ :=
  (A286064.P11784658490324997277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286691.P8678306413782919878

`1-A286801((n+1)%3+n)`
-/

namespace A286691.P8678306413782919878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286801 ((n + 1) % 3 + n)

end

end A286691.P8678306413782919878

noncomputable section

/-- A286691: {0->010, 1->110}-transform of the Pell word, A171588.

Offset 1, canonical program `A286691.P8678306413782919878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286691 (n : ℕ) : ℤ :=
  A286691.P8678306413782919878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286875.P4619628546979306351

`A008475(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`
-/

namespace A286875.P4619628546979306351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A286875.P4619628546979306351

noncomputable section

/-- A286875: If n = Product (p_j^k_j) then a(n) = Sum (k_j >= 2, p_j^k_j).

Offset 1, canonical program `A286875.P4619628546979306351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286875 (n : ℕ) : ℤ :=
  A286875.P4619628546979306351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287105.P8825308527181193328

`A287075(n+1)-n`
-/

namespace A287105.P8825308527181193328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287075 (n + 1) - (n : ℤ)

end

end A287105.P8825308527181193328

noncomputable section

/-- A287105: Positions of 0 in A287104.

Offset 1, canonical program `A287105.P8825308527181193328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287105 (n : ℕ) : ℤ :=
  A287105.P8825308527181193328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287304.P8493549014237283987

`p?[A020333(n+1)+1]`
-/

namespace A287304.P8493549014237283987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020333 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287304.P8493549014237283987

noncomputable section

/-- A287304: Primes that can be generated by the concatenation in base 5, in ascending order, of two consecutive integers read in base 10.

Offset 1, canonical program `A287304.P8493549014237283987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A287304 (n : ℕ) : ℤ :=
  A287304.P8493549014237283987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A287304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294239.P5796757410913678531

`(n+1)*A294235(n+1)`
-/

namespace A294239.P5796757410913678531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294235 (n + 1)

end

end A294239.P5796757410913678531

noncomputable section

/-- A294239: Sum of the parts in the partitions of n into two parts with larger part nonsquarefree.

Offset 1, canonical program `A294239.P5796757410913678531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294239 (n : ℕ) : ℤ :=
  A294239.P5796757410913678531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295284.P15282882058059058098

`A294235(n+1)-Δ[A294234(n)]`
-/

namespace A295284.P15282882058059058098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295284.P15282882058059058098

noncomputable section

/-- A295284: Number of partitions of n into two distinct parts such that the larger part is nonsquarefree.

Offset 1, canonical program `A295284.P15282882058059058098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295284 (n : ℕ) : ℤ :=
  A295284.P15282882058059058098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300852.P6997038708606362003

`∑{d}[n+1, #*#%2]-A300893(n+1)`
-/

namespace A300852.P6997038708606362003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) - A300893 (n + 1)

end

end A300852.P6997038708606362003

noncomputable section

/-- A300852: L.g.f.: log(Product_{k>=1} (1 + x^prime(k))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A300852.P6997038708606362003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300852 (n : ℕ) : ℤ :=
  A300852.P6997038708606362003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301690.P1630092406018096562

`A006368(A315832(n)-A047448(n+1))`
-/

namespace A301690.P1630092406018096562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315832 n - A047448 (n + 1)).toNat

end

end A301690.P1630092406018096562

noncomputable section

/-- A301690: Coordination sequence for node of type V1 in "krf" 2-D tiling (or net).

Offset 0, canonical program `A301690.P1630092406018096562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2889 terms. -/
def A301690 (n : ℕ) : ℤ :=
  A301690.P1630092406018096562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2889 terms. -/
def A301690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301691.P10328658122602155112

`∑[A006368(A315832(n)-A047448(n+1))]`
-/

namespace A301691.P10328658122602155112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315832 n - A047448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301691.P10328658122602155112

noncomputable section

/-- A301691: Partial sums of A301690.

Offset 0, canonical program `A301691.P10328658122602155112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A301691 (n : ℕ) : ℤ :=
  A301691.P10328658122602155112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A301691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303481.P903145872744022410

`(n+1)*A303385(n+1)`
-/

namespace A303481.P903145872744022410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A303385 (n + 1)

end

end A303481.P903145872744022410

noncomputable section

/-- A303481: Total volume of the family of rectangular prisms with dimensions p, q and p + q where p divides q, n = p + q and p < q.

Offset 1, canonical program `A303481.P903145872744022410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303481 (n : ℕ) : ℤ :=
  A303481.P903145872744022410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304326.P14717502684146888168

`A034444(n+1)-A304327(n+1)`
-/

namespace A304326.P14717502684146888168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A304327 (n + 1)

end

end A304326.P14717502684146888168

noncomputable section

/-- A304326: Number of ways to write n as a product of a number that is not a perfect power and a squarefree number.

Offset 1, canonical program `A304326.P14717502684146888168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304326 (n : ℕ) : ℤ :=
  A304326.P14717502684146888168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311261.P2737762260615231918

`4*n+A028310(n)+A313480(n)-A315680(n)`
-/

namespace A311261.P2737762260615231918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A028310 n + (A313480 n - A315680 n))

end

end A311261.P2737762260615231918

noncomputable section

/-- A311261: Coordination sequence Gal.5.97.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311261.P2737762260615231918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A311261 (n : ℕ) : ℤ :=
  A311261.P2737762260615231918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A311261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311548.P8775752580352239183

`A314971(n)-A004396(n)`
-/

namespace A311548.P8775752580352239183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314971 n - A004396 n

end

end A311548.P8775752580352239183

noncomputable section

/-- A311548: Coordination sequence Gal.5.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311548.P8775752580352239183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A311548 (n : ℕ) : ℤ :=
  A311548.P8775752580352239183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A311548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313089.P10705222389675751159

`abs(A008592(n)-A315478(n))`
-/

namespace A313089.P10705222389675751159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315478 n|

end

end A313089.P10705222389675751159

noncomputable section

/-- A313089: Coordination sequence Gal.6.221.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313089.P10705222389675751159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A313089 (n : ℕ) : ℤ :=
  A313089.P10705222389675751159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A313089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313153.P1548300830717326996

`abs(A008592(n)-A315446(n))`
-/

namespace A313153.P1548300830717326996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315446 n|

end

end A313153.P1548300830717326996

noncomputable section

/-- A313153: Coordination sequence Gal.5.113.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313153.P1548300830717326996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313153 (n : ℕ) : ℤ :=
  A313153.P1548300830717326996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313589.P17445481109569787276

`abs(A008592(n)-A313855(n))`
-/

namespace A313589.P17445481109569787276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313855 n|

end

end A313589.P17445481109569787276

noncomputable section

/-- A313589: Coordination sequence Gal.5.141.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313589.P17445481109569787276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313589 (n : ℕ) : ℤ :=
  A313589.P17445481109569787276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313610.P10900153276771282228

`A314708(n)+Δ[A011858(n)]`
-/

namespace A313610.P10900153276771282228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + (f1 (n + 1) - f1 n)

end

end A313610.P10900153276771282228

noncomputable section

/-- A313610: Coordination sequence Gal.5.136.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313610.P10900153276771282228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. -/
def A313610 (n : ℕ) : ℤ :=
  A313610.P10900153276771282228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. -/
def A313610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313696.P9738400648610204729

`A313543(n)+Δ[A011864(n)]`
-/

namespace A313696.P9738400648610204729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313543 n + (f1 (n + 1) - f1 n)

end

end A313696.P9738400648610204729

noncomputable section

/-- A313696: Coordination sequence Gal.6.327.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313696.P9738400648610204729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A313696 (n : ℕ) : ℤ :=
  A313696.P9738400648610204729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A313696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313887.P5397836189599980398

`abs(A008592(n)-A313543(n))`
-/

namespace A313887.P5397836189599980398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313543 n|

end

end A313887.P5397836189599980398

noncomputable section

/-- A313887: Coordination sequence Gal.6.331.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313887.P5397836189599980398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313887 (n : ℕ) : ℤ :=
  A313887.P5397836189599980398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313908.P15756257840792461538

`abs(A008592(n)-A313519(n))`
-/

namespace A313908.P15756257840792461538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313519 n|

end

end A313908.P15756257840792461538

noncomputable section

/-- A313908: Coordination sequence Gal.6.639.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313908.P15756257840792461538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A313908 (n : ℕ) : ℤ :=
  A313908.P15756257840792461538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A313908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314072.P13997368567095779612

`A314129(n)-A238470(3*n)`
-/

namespace A314072.P13997368567095779612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314129 n - A238470 (3 * n)

end

end A314072.P13997368567095779612

noncomputable section

/-- A314072: Coordination sequence Gal.5.312.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314072.P13997368567095779612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314072 (n : ℕ) : ℤ :=
  A314072.P13997368567095779612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314244.P5686595112287362026

`A004396(A314157(n))+2*n`
-/

namespace A314244.P5686595112287362026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314157 n).toNat + (2 * n : ℤ)

end

end A314244.P5686595112287362026

noncomputable section

/-- A314244: Coordination sequence Gal.6.644.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314244.P5686595112287362026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A314244 (n : ℕ) : ℤ :=
  A314244.P5686595112287362026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A314244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314668.P7034939924142127577

`A008458(n)+A008576(n)-A312101(n)`
-/

namespace A314668.P7034939924142127577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A312101 n)

end

end A314668.P7034939924142127577

noncomputable section

/-- A314668: Coordination sequence Gal.6.115.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314668.P7034939924142127577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A314668 (n : ℕ) : ℤ :=
  A314668.P7034939924142127577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A314668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314706.P17212367775506694373

`A008458(n)+A008576(n)-A311861(n)`
-/

namespace A314706.P17212367775506694373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311861 n)

end

end A314706.P17212367775506694373

noncomputable section

/-- A314706: Coordination sequence Gal.6.130.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314706.P17212367775506694373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A314706 (n : ℕ) : ℤ :=
  A314706.P17212367775506694373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A314706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314736.P3794098761063289759

`A314428(n)+A004396(A006369(n)-A004396(n))`
-/

namespace A314736.P3794098761063289759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314428 n + A004396 (A006369 n - A004396 n).toNat

end

end A314736.P3794098761063289759

noncomputable section

/-- A314736: Coordination sequence Gal.5.115.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314736.P3794098761063289759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A314736 (n : ℕ) : ℤ :=
  A314736.P3794098761063289759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A314736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314832.P15623759407353891444

`abs(A008592(n)-A314157(n))`
-/

namespace A314832.P15623759407353891444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314157 n|

end

end A314832.P15623759407353891444

noncomputable section

/-- A314832: Coordination sequence Gal.6.245.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314832.P15623759407353891444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314832 (n : ℕ) : ℤ :=
  A314832.P15623759407353891444.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314890.P4689153716661690256

`abs(A008592(n)-A314127(n))`
-/

namespace A314890.P4689153716661690256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314127 n|

end

end A314890.P4689153716661690256

noncomputable section

/-- A314890: Coordination sequence Gal.6.152.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314890.P4689153716661690256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A314890 (n : ℕ) : ℤ :=
  A314890.P4689153716661690256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A314890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314974.P14920294554282777166

`A004396(n)+A314742(n)-A004525(A004396(n))`
-/

namespace A314974.P14920294554282777166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314742 n - A004525 (A004396 n).toNat)

end

end A314974.P14920294554282777166

noncomputable section

/-- A314974: Coordination sequence Gal.6.343.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314974.P14920294554282777166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314974 (n : ℕ) : ℤ :=
  A314974.P14920294554282777166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315188.P8680427825676772158

`2*A315478(n)-A008458(n)`
-/

namespace A315188.P8680427825676772158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315478 n - A008458 n

end

end A315188.P8680427825676772158

noncomputable section

/-- A315188: Coordination sequence Gal.6.265.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315188.P8680427825676772158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315188 (n : ℕ) : ℤ :=
  A315188.P8680427825676772158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315264.P7587987662611308662

`abs(10*n-A310455(n))`
-/

namespace A315264.P7587987662611308662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310455 n|

end

end A315264.P7587987662611308662

noncomputable section

/-- A315264: Coordination sequence Gal.6.328.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315264.P7587987662611308662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A315264 (n : ℕ) : ℤ :=
  A315264.P7587987662611308662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A315264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317295.P6293647833958562741

`filter[A084345(n+2), A347523(#)]`
-/

namespace A317295.P6293647833958562741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A317295.P6293647833958562741

noncomputable section

/-- A317295: Numbers with a composite number of 1's in their binary expansion.

Offset 1, canonical program `A317295.P6293647833958562741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9985 terms. -/
def A317295 (n : ℕ) : ℤ :=
  A317295.P6293647833958562741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9985 terms. -/
def A317295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324507.P9101657935171306601

`A211776(n+1)/A007955(n+1)*A324506(n+1)`
-/

namespace A324507.P9101657935171306601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A324506 (n + 1) : ℚ)

end

end A324507.P9101657935171306601

noncomputable section

/-- A324507: a(n) = denominator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

Offset 1, canonical program `A324507.P9101657935171306601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324507 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324507.P9101657935171306601.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137927.P5814170655149962823

`A307892(n+1)/A007956(n+1)`
-/

namespace A137927.P5814170655149962823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307892 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ)

end

end A137927.P5814170655149962823

noncomputable section

/-- A137927: a(n) = the largest divisor of A000005(n) that is coprime to n. (A000005(n) = the number of positive divisors of n.).

Offset 1, canonical program `A137927.P5814170655149962823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A137927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137927.P5814170655149962823.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A137927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161344.P6462224275357060055

`2*A046022(n+2)`
-/

namespace A161344.P6462224275357060055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046022 (n + 2)

end

end A161344.P6462224275357060055

noncomputable section

/-- A161344: Numbers k with A033676(k)=2, where A033676 is the largest divisor <= sqrt(k).

Offset 1, canonical program `A161344.P6462224275357060055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161344 (n : ℕ) : ℤ :=
  A161344.P6462224275357060055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175787.P10024478366857533250

`A046022(n+2)`
-/

namespace A175787.P10024478366857533250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2)

end

end A175787.P10024478366857533250

noncomputable section

/-- A175787: Primes together with 4.

Offset 1, canonical program `A175787.P10024478366857533250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175787 (n : ℕ) : ℤ :=
  A175787.P10024478366857533250.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179209.P12612083223401161415

`ceil(A081765(n+1)/2)`
-/

namespace A179209.P12612083223401161415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081765 (n + 1) : ℚ) / 2⌉

end

end A179209.P12612083223401161415

noncomputable section

/-- A179209: Numbers k such that 2^(2*k-1) mod (2*k+1) = 2.

Offset 1, canonical program `A179209.P12612083223401161415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179209 (n : ℕ) : ℤ :=
  A179209.P12612083223401161415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196499.P3306308880413504659

`comp[2*comp[A004613(n+1)]]`
-/

namespace A196499.P3306308880413504659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A196499.P3306308880413504659

noncomputable section

/-- A196499: Numbers k such that the greatest residue of the congruence x^k (mod k) equals k-1 for x in [0..k-1].

Offset 1, canonical program `A196499.P3306308880413504659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196499 (n : ℕ) : ℤ :=
  (A196499.P3306308880413504659.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199854.P12173923621709400113

`p?[2*A004613(n+1)+1]`
-/

namespace A199854.P12173923621709400113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004613 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199854.P12173923621709400113

noncomputable section

/-- A199854: Primes of the form 1 + m^2 + n^2 with gcd(m,n)=1.

Offset 1, canonical program `A199854.P12173923621709400113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. -/
def A199854 (n : ℕ) : ℤ :=
  A199854.P12173923621709400113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. -/
def A199854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220656.P9197403006323816996

`A220655(n+1)+1`
-/

namespace A220656.P9197403006323816996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220655 (n + 1) + 1

end

end A220656.P9197403006323816996

noncomputable section

/-- A220656: The positions of those permutations in A030298 where the first element is not fixed.

Offset 1, canonical program `A220656.P9197403006323816996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220656 (n : ℕ) : ℤ :=
  A220656.P9197403006323816996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220663.P5128857220396618442

`n+1-A220662(n+1)`
-/

namespace A220663.P5128857220396618442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A220662 (n + 1)

end

end A220663.P5128857220396618442

noncomputable section

/-- A220663: Irregular table: row n (n>=1) consists of numbers 0..A084556(n)-1.

Offset 1, canonical program `A220663.P5128857220396618442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220663 (n : ℕ) : ℤ :=
  A220663.P5128857220396618442.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226025.P10601113510136016391

`lt[2, A325937(n+1)]+1`
-/

namespace A226025.P10601113510136016391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A226025.P10601113510136016391

noncomputable section

/-- A226025: Odd composite numbers that are not squares of primes.

Offset 1, canonical program `A226025.P10601113510136016391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226025 (n : ℕ) : ℤ :=
  (A226025.P10601113510136016391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236407.P10884246669097330149

`A002003(n)+n`
-/

namespace A236407.P10884246669097330149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n + (n : ℤ)

end

end A236407.P10884246669097330149

noncomputable section

/-- A236407: a(n) = 2*Sum_{k=0..n-1} C(n-1,k)*C(n+k,k) + n.

Offset 0, canonical program `A236407.P10884246669097330149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236407 (n : ℕ) : ℤ :=
  A236407.P10884246669097330149.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A250094.P12324605883810777152

`eq[0, A348510(n+1)]+1`
-/

namespace A250094.P12324605883810777152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A250094.P12324605883810777152

noncomputable section

/-- A250094: Positive integers k such that the numerator of the harmonic mean of the divisors of k is equal to k.

Offset 1, canonical program `A250094.P12324605883810777152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8109 terms. -/
def A250094 (n : ℕ) : ℤ :=
  (A250094.P12324605883810777152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8109 terms. -/
def A250094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260943.P13799869845502598163

`A246838(2*n)`
-/

namespace A260943.P13799869845502598163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246838 (2 * n)

end

end A260943.P13799869845502598163

noncomputable section

/-- A260943: Expansion of psi(-x^2) * chi(x^3) * f(x^6) in powers of x where psi(), chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260943.P13799869845502598163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260943 (n : ℕ) : ℤ :=
  A260943.P13799869845502598163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260944.P7625123260759502148

`A112609(n)*A131713(n)`
-/

namespace A260944.P7625123260759502148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112609 n * A131713 n

end

end A260944.P7625123260759502148

noncomputable section

/-- A260944: Expansion of phi(-x^4) * psi(-x^6) / chi(-x^3) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A260944.P7625123260759502148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260944 (n : ℕ) : ℤ :=
  A260944.P7625123260759502148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267423.P14088695122642526854

`A267525(n)*A267676(n)`
-/

namespace A267423.P14088695122642526854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 n * A267676 n

end

end A267423.P14088695122642526854

noncomputable section

/-- A267423: Triangle read by rows giving successive states of cellular automaton generated by "Rule 133" initiated with a single ON (black) cell.

Offset 0, canonical program `A267423.P14088695122642526854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267423 (n : ℕ) : ℤ :=
  A267423.P14088695122642526854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277855.P13714581098425057374

`A055881(eq[A099563(n+1), A265893(n)])`
-/

namespace A277855.P13714581098425057374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277855.P13714581098425057374

noncomputable section

/-- A277855: Irregular triangle read by rows: T(n,k) is the maximum length of the longest common subsequence of k distinct permutations of n items with n>=1 and 1<=k<=n!

Offset 1, canonical program `A277855.P13714581098425057374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A277855 (n : ℕ) : ℤ :=
  A277855.P13714581098425057374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A277855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310396.P16584741270594359869

`A130824(n)+A092038(A314157(n)-A130824(n))`
-/

namespace A310396.P16584741270594359869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A092038 (A314157 n - A130824 n).toNat

end

end A310396.P16584741270594359869

noncomputable section

/-- A310396: Coordination sequence Gal.6.320.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310396.P16584741270594359869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A310396 (n : ℕ) : ℤ :=
  A310396.P16584741270594359869.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A310396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310404.P2932539923178756672

`A310378(n)+A004525(A310420(n)-A310378(n))`
-/

namespace A310404.P2932539923178756672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310378 n + A004525 (A310420 n - A310378 n).toNat

end

end A310404.P2932539923178756672

noncomputable section

/-- A310404: Coordination sequence Gal.6.338.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310404.P2932539923178756672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310404 (n : ℕ) : ℤ :=
  A310404.P2932539923178756672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310520.P9429967964652236068

`abs(A008592(n)-A315186(n))`
-/

namespace A310520.P9429967964652236068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315186 n|

end

end A310520.P9429967964652236068

noncomputable section

/-- A310520: Coordination sequence Gal.6.331.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310520.P9429967964652236068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A310520 (n : ℕ) : ℤ :=
  A310520.P9429967964652236068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A310520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311165.P16138864998668461834

`A008574(n)+A313803(n)-A313799(n)`
-/

namespace A311165.P16138864998668461834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313803 n - A313799 n)

end

end A311165.P16138864998668461834

noncomputable section

/-- A311165: Coordination sequence Gal.5.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311165.P16138864998668461834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311165 (n : ℕ) : ℤ :=
  A311165.P16138864998668461834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311549.P16203180800236196570

`A314742(n)-A004525(A004396(n))`
-/

namespace A311549.P16203180800236196570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n - A004525 (A004396 n).toNat

end

end A311549.P16203180800236196570

noncomputable section

/-- A311549: Coordination sequence Gal.6.132.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311549.P16203180800236196570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A311549 (n : ℕ) : ℤ :=
  A311549.P16203180800236196570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A311549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311889.P1219721333135851208

`A008574(n)+A004396(A312507(n)-A008574(n))`
-/

namespace A311889.P1219721333135851208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A312507 n - A008574 n).toNat

end

end A311889.P1219721333135851208

noncomputable section

/-- A311889: Coordination sequence Gal.6.129.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311889.P1219721333135851208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A311889 (n : ℕ) : ℤ :=
  A311889.P1219721333135851208.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A311889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311907.P15737395164403453455

`A313894(n)-(A313803(n)-A313799(n)+n)`
-/

namespace A311907.P15737395164403453455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - (A313803 n - A313799 n + (n : ℤ))

end

end A311907.P15737395164403453455

noncomputable section

/-- A311907: Coordination sequence Gal.5.78.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311907.P15737395164403453455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311907 (n : ℕ) : ℤ :=
  A311907.P15737395164403453455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313639.P9445063185818086660

`abs(A008592(n)-A313825(n))`
-/

namespace A313639.P9445063185818086660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313825 n|

end

end A313639.P9445063185818086660

noncomputable section

/-- A313639: Coordination sequence Gal.6.204.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313639.P9445063185818086660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313639 (n : ℕ) : ℤ :=
  A313639.P9445063185818086660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314032.P4483602225519338393

`abs(A008592(n)-(A315329(n)+A312507(n))/2)`
-/

namespace A314032.P4483602225519338393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A008592 n : ℚ) - (A315329 n + A312507 n : ℚ) / 2|

end

end A314032.P4483602225519338393

noncomputable section

/-- A314032: Coordination sequence Gal.6.324.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314032.P4483602225519338393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A314032.P4483602225519338393.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317594.P6397274018169493983

`A038459(A013598(n+1))+A023443(n)`
-/

namespace A317594.P6397274018169493983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A013598 (n + 1)).toNat + A023443 n

end

end A317594.P6397274018169493983

noncomputable section

/-- A317594: Lexicographically first sequence of different terms such that erasing the last three digits of a(n+1) and adding this new reshaped integer to a(n) gives back a(n+1).

Offset 1, canonical program `A317594.P6397274018169493983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A317594 (n : ℕ) : ℤ :=
  A317594.P6397274018169493983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A317594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323760.P7258766165293403016

`A325030(n+1)/gcd(A324987(n+1), A325030(n+1))`
-/

namespace A323760.P7258766165293403016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (Int.gcd (A324987 (n + 1)) (A325030 (n + 1)) : ℚ)

end

end A323760.P7258766165293403016

noncomputable section

/-- A323760: Numerator of Product_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k and tau(k) = the number of the divisors of k.

Offset 1, canonical program `A323760.P7258766165293403016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A323760 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323760.P7258766165293403016.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A323760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139969.P6360869808431639067

`∪[A140036(n+1), A140041(n+1)]`
-/

namespace A139969.P6360869808431639067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139969.P6360869808431639067

noncomputable section

/-- A139969: Primes of the form 21x^2+22y^2.

Offset 1, canonical program `A139969.P6360869808431639067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139969 (n : ℕ) : ℤ :=
  (A139969.P6360869808431639067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179652.P13750183402564225664

`A112559(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179652.P13750183402564225664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112559 (n + 1) : ℚ) / 3

end

end A179652.P13750183402564225664

noncomputable section

/-- A179652: (A175600(n)-5)/48 or A112559(n)/3.

Offset 1, canonical program `A179652.P13750183402564225664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A179652.P13750183402564225664.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289614.P14969575610608167341

`A289615(n)+A289616(n)-A289652(n)`
-/

namespace A289614.P14969575610608167341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289615 n + A289616 n - A289652 n

end

end A289614.P14969575610608167341

noncomputable section

/-- A289614: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 283) or the same sequence for the mesh pattern (12, 433).

Offset 0, canonical program `A289614.P14969575610608167341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289615, A289616, A289652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289614 (n : ℕ) : ℤ :=
  A289614.P14969575610608167341.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289615, A289616, A289652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A313023.P12828604169227298714

`A004525(A004396(n))+A313228(n)-A004396(n)`
-/

namespace A313023.P12828604169227298714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313228 n - A004396 n)

end

end A313023.P12828604169227298714

noncomputable section

/-- A313023: Coordination sequence Gal.6.130.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313023.P12828604169227298714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A313023 (n : ℕ) : ℤ :=
  A313023.P12828604169227298714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A313023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314156.P13342112998699093357

`A313779(n)+∑[A022003(n)]`
-/

namespace A314156.P13342112998699093357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314156.P13342112998699093357

noncomputable section

/-- A314156: Coordination sequence Gal.6.651.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314156.P13342112998699093357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314156 (n : ℕ) : ℤ :=
  A314156.P13342112998699093357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315410.P5887304458522211187

`abs(A008592(n)-A313259(n))`
-/

namespace A315410.P5887304458522211187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313259 n|

end

end A315410.P5887304458522211187

noncomputable section

/-- A315410: Coordination sequence Gal.6.322.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315410.P5887304458522211187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315410 (n : ℕ) : ℤ :=
  A315410.P5887304458522211187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314165.P12623348579880038257

`A310465(n)+A004525(A008458(n)-A310465(n))`
-/

namespace A314165.P12623348579880038257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310465 n + A004525 (A008458 n - A310465 n).toNat

end

end A314165.P12623348579880038257

noncomputable section

/-- A314165: Coordination sequence Gal.5.307.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314165.P12623348579880038257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314165 (n : ℕ) : ℤ :=
  A314165.P12623348579880038257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315254.P4856332562113004887

`abs(A008592(n)-A310465(n))`
-/

namespace A315254.P4856332562113004887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310465 n|

end

end A315254.P4856332562113004887

noncomputable section

/-- A315254: Coordination sequence Gal.6.232.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315254.P4856332562113004887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A315254 (n : ℕ) : ℤ :=
  A315254.P4856332562113004887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A315254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133450.P13159197385161977339

`A056929(2*(n+1))`
-/

namespace A133450.P13159197385161977339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056929 (2 * (n + 1))

end

end A133450.P13159197385161977339

noncomputable section

/-- A133450: Difference between 4*n^2 and the average of the two prime numbers which bracket this number.

Offset 1, canonical program `A133450.P13159197385161977339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133450 (n : ℕ) : ℤ :=
  A133450.P13159197385161977339.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140466.P2617124052483112329

`4*A002088(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140466.P2617124052483112329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002088 n

end

end A140466.P2617124052483112329

noncomputable section

/-- A140466: a(n) = 4*A002088(n).

Offset 0, canonical program `A140466.P2617124052483112329`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140466 (n : ℕ) : ℤ :=
  A140466.P2617124052483112329.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140706.P6727605883007889005

`A143519(n+1)+Δ[A002088(n)]`
-/

namespace A140706.P6727605883007889005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (n + 1) + (f1 (n + 1) - f1 n)

end

end A140706.P6727605883007889005

noncomputable section

/-- A140706: A054525 * A014683; a(n) = Sum_{d|n} mu(d)*A014683(n/d).

Offset 1, canonical program `A140706.P6727605883007889005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140706 (n : ℕ) : ℤ :=
  A140706.P6727605883007889005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143270.P7173211897729135477

`(n+1)*A002088(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143270.P7173211897729135477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002088 (n + 1)

end

end A143270.P7173211897729135477

noncomputable section

/-- A143270: a(n) = n*A002088(n).

Offset 1, canonical program `A143270.P7173211897729135477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143270 (n : ℕ) : ℤ :=
  A143270.P7173211897729135477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153051.P15552689692595928018

`A153049(n+1)+2`
-/

namespace A153051.P15552689692595928018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1) + 2

end

end A153051.P15552689692595928018

noncomputable section

/-- A153051: Numbers n>=9 such that 2*n-17 is not a prime.

Offset 1, canonical program `A153051.P15552689692595928018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153051 (n : ℕ) : ℤ :=
  A153051.P15552689692595928018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155752.P6228689506561445427

`A029707(n+1)-1`
-/

namespace A155752.P6228689506561445427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 1

end

end A155752.P6228689506561445427

noncomputable section

/-- A155752: Where 2's occur in the prime differences A001223.

Offset 1, canonical program `A155752.P6228689506561445427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155752 (n : ℕ) : ℤ :=
  A155752.P6228689506561445427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158301.P14699896372540319621

`A158207(n)/A000034(A289207(n))`
-/

namespace A158301.P14699896372540319621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158207 n : ℚ) / (A000034 (A289207 n).toNat : ℚ)

end

end A158301.P14699896372540319621

noncomputable section

/-- A158301: Denominator of Bernoulli(n, -5/6).

Offset 0, canonical program `A158301.P14699896372540319621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158301 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158301.P14699896372540319621.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A158301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162417.P3385297954225530343

`2*(n+2)-A058043(n+2)`
-/

namespace A162417.P3385297954225530343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A058043 (n + 2)

end

end A162417.P3385297954225530343

noncomputable section

/-- A162417: Find max {primes such that p < n^2, n = 2,3,...}, then the gap g(n) between that prime and its successor. This sequence is the sequence of differences {2n - g(n)}.

Offset 2, canonical program `A162417.P3385297954225530343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162417 (n : ℕ) : ℤ :=
  A162417.P3385297954225530343.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163405.P4015231014055549183

`A141468(n+1)+A163400(n+1)`
-/

namespace A163405.P4015231014055549183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A163400 (n + 1)

end

end A163405.P4015231014055549183

noncomputable section

/-- A163405: a(n) = (n-th nonprime) + (number of bits in binary expansion of n-th nonprime).

Offset 1, canonical program `A163405.P4015231014055549183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, A163400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163405 (n : ℕ) : ℤ :=
  A163405.P4015231014055549183.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, A163400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166039.P12293682533427347331

`A166037(n+1)+A002808(n+1)`
-/

namespace A166039.P12293682533427347331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1) + A002808 (n + 1)

end

end A166039.P12293682533427347331

noncomputable section

/-- A166039: Sums of three consecutive nonprimes A141468.

Offset 1, canonical program `A166039.P12293682533427347331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166039 (n : ℕ) : ℤ :=
  A166039.P12293682533427347331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166685.P7030529592364102208

`record[A093178(A166037(n+1))]`
-/

namespace A166685.P7030529592364102208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A166037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166685.P7030529592364102208

noncomputable section

/-- A166685: Odd numbers that are the sum of two consecutive nonprimes.

Offset 1, canonical program `A166685.P7030529592364102208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166685 (n : ℕ) : ℤ :=
  A166685.P7030529592364102208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167611.P18150780174357713727

`filter[A166037(n+1), A005171(#)]`
-/

namespace A167611.P18150780174357713727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A167611.P18150780174357713727

noncomputable section

/-- A167611: Nonprimes that are the sum of two consecutive nonprimes.

Offset 1, canonical program `A167611.P18150780174357713727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7872 terms. -/
def A167611 (n : ℕ) : ℤ :=
  A167611.P18150780174357713727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7872 terms. -/
def A167611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168271.P11427339168696885429

`A007821(n+1)-A144570(n+1)`
-/

namespace A168271.P11427339168696885429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A144570 (n + 1)

end

end A168271.P11427339168696885429

noncomputable section

/-- A168271: a(n) = prime(nonprime(n)) - nonprime(prime(n)).

Offset 1, canonical program `A168271.P11427339168696885429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, A144570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168271 (n : ℕ) : ℤ :=
  A168271.P11427339168696885429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, A144570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168279.P12753250464981237638

`A144570(n+2)-A000040(n+2)`
-/

namespace A168279.P12753250464981237638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144570 (n + 2) - A000040 (n + 2)

end

end A168279.P12753250464981237638

noncomputable section

/-- A168279: (n+1)-th prime nonprime minus (n+1)-th prime.

Offset 1, canonical program `A168279.P12753250464981237638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A144570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168279 (n : ℕ) : ℤ :=
  A168279.P12753250464981237638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A144570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168563.P15869300188145346420

`A161671(n+3)`
-/

namespace A168563.P15869300188145346420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 3)

end

end A168563.P15869300188145346420

noncomputable section

/-- A168563: a(n) = (n-th prime > 3) minus (n-th composite number).

Offset 1, canonical program `A168563.P15869300188145346420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168563 (n : ℕ) : ℤ :=
  A168563.P15869300188145346420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174199.P10669363603211169854

`A137921(2*(n+1))`
-/

namespace A174199.P10669363603211169854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (2 * (n + 1))

end

end A174199.P10669363603211169854

noncomputable section

/-- A174199: Bisection of A137921.

Offset 1, canonical program `A174199.P10669363603211169854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174199 (n : ℕ) : ℤ :=
  A174199.P10669363603211169854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178834.P16895514089838133752

`A102839(n+1)-A109196(n+2)`
-/

namespace A178834.P16895514089838133752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102839 (n + 1) - A109196 (n + 2)

end

end A178834.P16895514089838133752

noncomputable section

/-- A178834: a(n) counts anti-chains of size two in "0,1,2" Motzkin trees on n edges.

Offset 0, canonical program `A178834.P16895514089838133752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A178834 (n : ℕ) : ℤ :=
  A178834.P16895514089838133752.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A178834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179485.P14706537653666994913

`∩[A087695(n+1), A323139(n+1)]`
-/

namespace A179485.P14706537653666994913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179485.P14706537653666994913

noncomputable section

/-- A179485: Sums of two successive primes s such that s+-3 are primes.

Offset 1, canonical program `A179485.P14706537653666994913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A179485 (n : ℕ) : ℤ :=
  (A179485.P14706537653666994913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A179485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181733.P2943246372235819364

`A139708(n+1)-A092323(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181733.P2943246372235819364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (n + 1) - A092323 (n + 1)

end

end A181733.P2943246372235819364

noncomputable section

/-- A181733: a(n) = A139708(n) - A092323(n).

Offset 1, canonical program `A181733.P2943246372235819364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181733 (n : ℕ) : ℤ :=
  A181733.P2943246372235819364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139708, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A195150.P8159304006399446490

`A137921(n+1)-1`
-/

namespace A195150.P8159304006399446490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (n + 1) - 1

end

end A195150.P8159304006399446490

noncomputable section

/-- A195150: Number of divisors d of n such that d-1 does not divide n.

Offset 1, canonical program `A195150.P8159304006399446490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195150 (n : ℕ) : ℤ :=
  A195150.P8159304006399446490.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A195150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199918.P12463137671005930238

`A178902(n)%2`
-/

namespace A199918.P12463137671005930238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178902 n) 2

end

end A199918.P12463137671005930238

noncomputable section

/-- A199918: Expansion of false theta series variation of Euler's pentagonal number series in powers of x.

Offset 0, canonical program `A199918.P12463137671005930238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199918 (n : ℕ) : ℤ :=
  A199918.P12463137671005930238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206258.P13828075839344405108

`8*A002088(n+1)-3`
-/

namespace A206258.P13828075839344405108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002088 (n + 1) - 3

end

end A206258.P13828075839344405108

noncomputable section

/-- A206258: 1/8 the number of 2 X 2 -n..n arrays with a 2 X 2 -n..n inverse, i.e., with determinant +-1.

Offset 1, canonical program `A206258.P13828075839344405108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206258 (n : ℕ) : ℤ :=
  A206258.P13828075839344405108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209979.P11777341507779048097

`4*A209978(n)`
-/

namespace A209979.P11777341507779048097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A209978 n

end

end A209979.P11777341507779048097

noncomputable section

/-- A209979: Number of unimodular 2 X 2 matrices having all elements in {1,2,...,n}.

Offset 0, canonical program `A209979.P11777341507779048097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209979 (n : ℕ) : ℤ :=
  A209979.P11777341507779048097.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A218147.P2989802918495991465

`A079458(n+3)/4`
-/

namespace A218147.P2989802918495991465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 3) : ℚ) / 4

end

end A218147.P2989802918495991465

noncomputable section

/-- A218147: Degree of minimal polynomial satisfied by exp(8*Pi*phi_2(1/n,1/n)), where phi_2 is defined in the Comments.

Offset 3, canonical program `A218147.P2989802918495991465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218147 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A218147.P2989802918495991465.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079458, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A218147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A220789.P11763178928776331104

`comp[A092058(n+1)-2]+2`
-/

namespace A220789.P11763178928776331104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A220789.P11763178928776331104

noncomputable section

/-- A220789: Numbers n such that 2*prime(n)^2 - 1 is not prime.

Offset 1, canonical program `A220789.P11763178928776331104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220789 (n : ℕ) : ℤ :=
  (A220789.P11763178928776331104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A220789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224212.P18102868260642251365

`A000196(n)+A014200(n)+1`
-/

namespace A224212.P18102868260642251365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (A014200 n + 1)

end

end A224212.P18102868260642251365

noncomputable section

/-- A224212: Number of nonnegative solutions to x^2 + y^2 <= n.

Offset 0, canonical program `A224212.P18102868260642251365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224212 (n : ℕ) : ℤ :=
  A224212.P18102868260642251365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236568.P5918031760574523688

`p?[A029707(n+1)-2]`
-/

namespace A236568.P5918031760574523688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P5918031760574523688

noncomputable section

/-- A236568: Primes p with prime(p + 2) + 2 prime.

Offset 1, canonical program `A236568.P5918031760574523688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A236568 (n : ℕ) : ℤ :=
  A236568.P5918031760574523688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A236568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237526.P3622557248388023722

`A014200(n)-floor(sqrt(n))`
-/

namespace A237526.P3622557248388023722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n - (Nat.sqrt n : ℤ)

end

end A237526.P3622557248388023722

noncomputable section

/-- A237526: a(n) = number of unit squares in the first quadrant of a disk of radius sqrt(n) centered at the origin of a square lattice.

Offset 0, canonical program `A237526.P3622557248388023722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237526 (n : ℕ) : ℤ :=
  A237526.P3622557248388023722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238111.P18207636509686923299

`Δ[2*A176006(n)]`
-/

namespace A238111.P18207636509686923299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238111.P18207636509686923299

noncomputable section

/-- A238111: Twice the large Schroeder numbers A006318.

Offset 0, canonical program `A238111.P18207636509686923299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A238111 (n : ℕ) : ℤ :=
  A238111.P18207636509686923299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A238111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243353.P14485821994603971352

`A163511(A180201(n))`
-/

namespace A243353.P14485821994603971352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A180201 n).toNat

end

end A243353.P14485821994603971352

noncomputable section

/-- A243353: Permutation of natural numbers which maps between the partitions as encoded in A227739 (binary based system, zero-based) to A112798 (prime-index based system, one-based).

Offset 0, canonical program `A243353.P14485821994603971352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A243353 (n : ℕ) : ℤ :=
  A243353.P14485821994603971352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A243353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255584.P14636303961363921140

`A033570(A130800(n+1))`
-/

namespace A255584.P14636303961363921140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 (A130800 (n + 1)).toNat

end

end A255584.P14636303961363921140

noncomputable section

/-- A255584: Semiprimes of the form (4*n + 1)*(6*n + 1) = 24*n^2 + 10*n + 1.

Offset 1, canonical program `A255584.P14636303961363921140`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255584 (n : ℕ) : ℤ :=
  A255584.P14636303961363921140.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255607.P13320469364282797644

`A130800(n+1)/2`
-/

namespace A255607.P13320469364282797644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130800 (n + 1) : ℚ) / 2

end

end A255607.P13320469364282797644

noncomputable section

/-- A255607: Numbers n such that both 4*n+1 and 6*n+1 are primes.

Offset 1, canonical program `A255607.P13320469364282797644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255607.P13320469364282797644.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255607.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256449.P3394376339508603245

`A256447(n+1)-A256448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256449.P3394376339508603245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) - A256448 (n + 1)

end

end A256449.P3394376339508603245

noncomputable section

/-- A256449: a(n) = A256447(n) - A256448(n).

Offset 1, canonical program `A256449.P3394376339508603245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, A256448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256449 (n : ℕ) : ℤ :=
  A256449.P3394376339508603245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, A256448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256465.P12543537309397973393

`A105673(n+1)+A057655(n)`
-/

namespace A256465.P12543537309397973393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) + A057655 n

end

end A256465.P12543537309397973393

noncomputable section

/-- A256465: Number of points in a circle of squared radius n, points on the circle counted half.

Offset 1, canonical program `A256465.P12543537309397973393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256465 (n : ℕ) : ℤ :=
  A256465.P12543537309397973393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256468.P15833489412511418299

`A256447(n+1)-1`
-/

namespace A256468.P15833489412511418299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) - 1

end

end A256468.P15833489412511418299

noncomputable section

/-- A256468: Number of primes between prime(n)^2 and prime(n)*prime(n+1).

Offset 1, canonical program `A256468.P15833489412511418299`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256468 (n : ℕ) : ℤ :=
  A256468.P15833489412511418299.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256469.P956244140118081997

`A256448(n+1)+2`
-/

namespace A256469.P956244140118081997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256448 (n + 1) + 2

end

end A256469.P956244140118081997

noncomputable section

/-- A256469: Number of primes between prime(n)*prime(n+1) and prime(n+1)^2.

Offset 1, canonical program `A256469.P956244140118081997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256469 (n : ℕ) : ℤ :=
  A256469.P956244140118081997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259488.P209394129755622119

`∩[A029707(n+1), A096477(n+1)]`
-/

namespace A259488.P209394129755622119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259488.P209394129755622119

noncomputable section

/-- A259488: Positive integers k with prime(k)+2 and prime(prime(k))+2 both prime.

Offset 1, canonical program `A259488.P209394129755622119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A259488 (n : ℕ) : ℤ :=
  (A259488.P209394129755622119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A259488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259942.P4163868911876891632

`lt[A224787(abs(1-n)+1), n]`
-/

namespace A259942.P4163868911876891632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A259942.P4163868911876891632

noncomputable section

/-- A259942: Numbers that are larger than or equal to the sum of the cubes of their prime factors (with multiplicity).

Offset 1, canonical program `A259942.P4163868911876891632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A259942 (n : ℕ) : ℤ :=
  (A259942.P4163868911876891632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A259942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260379.P15405294900718504998

`∩[A091633(n+1), A386025(n+1)]`
-/

namespace A260379.P15405294900718504998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P15405294900718504998

noncomputable section

/-- A260379: Primes having only {1, 3, 7} as digits.

Offset 1, canonical program `A260379.P15405294900718504998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1552 terms. -/
def A260379 (n : ℕ) : ℤ :=
  (A260379.P15405294900718504998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1552 terms. -/
def A260379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262607.P1412352662528498706

`A002002(n)+Δ[A176006(n)]`
-/

namespace A262607.P1412352662528498706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + (f1 (n + 1) - f1 n)

end

end A262607.P1412352662528498706

noncomputable section

/-- A262607: Sum_{k=0..n} ((k+1)*binomial(n+1,k)*binomial(2*n-k,n))/(n+1).

Offset 0, canonical program `A262607.P1412352662528498706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A262607 (n : ℕ) : ℤ :=
  A262607.P1412352662528498706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A262607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262991.P2037548391319313371

`A262868(n+1)+A262869(n+1)`
-/

namespace A262991.P2037548391319313371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (n + 1) + A262869 (n + 1)

end

end A262991.P2037548391319313371

noncomputable section

/-- A262991: Number of squarefree numbers among the parts of the partitions of n into two parts.

Offset 1, canonical program `A262991.P2037548391319313371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262868, A262869, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262991 (n : ℕ) : ℤ :=
  A262991.P2037548391319313371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262868, A262869, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267135.P1163518685697158345

`2*(n+1)-A138971(n+1)`
-/

namespace A267135.P1163518685697158345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A138971 (n + 1)

end

end A267135.P1163518685697158345

noncomputable section

/-- A267135: a(n) = n minus the number of primes of form 4m + 1 that are less than n-th prime of form 4m + 3.

Offset 1, canonical program `A267135.P1163518685697158345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267135 (n : ℕ) : ℤ :=
  A267135.P1163518685697158345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268087.P6457942966447393227

`A162909(n+1)+A162910(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268087.P6457942966447393227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 (n + 1) + A162910 (n + 1)

end

end A268087.P6457942966447393227

noncomputable section

/-- A268087: a(n) = A162909(n) + A162910(n).

Offset 1, canonical program `A268087.P6457942966447393227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162909, A162910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268087 (n : ℕ) : ℤ :=
  A268087.P6457942966447393227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162909, A162910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274920.P7331687866389573952

`(12-A328818(n))%3`
-/

namespace A274920.P7331687866389573952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (12 - A328818 n) 3

end

end A274920.P7331687866389573952

noncomputable section

/-- A274920: Spiral constructed on the nodes of the triangular net in which each new term is the least nonnegative integers distinct from its neighbors.

Offset 0, canonical program `A274920.P7331687866389573952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A274920 (n : ℕ) : ℤ :=
  A274920.P7331687866389573952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A274920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281022.P5626948431027533782

`2*A230117(n+2)+1`
-/

namespace A281022.P5626948431027533782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230117 (n + 2) + 1

end

end A281022.P5626948431027533782

noncomputable section

/-- A281022: Single (or isolated or non-twin) primes that are also safe primes.

Offset 1, canonical program `A281022.P5626948431027533782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281022 (n : ℕ) : ℤ :=
  A281022.P5626948431027533782.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283988.P2763794539889423270

`A283978(2*(n+1)-1)`
-/

namespace A283988.P2763794539889423270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (2 * (n + 1) - 1)

end

end A283988.P2763794539889423270

noncomputable section

/-- A283988: a(n) = A002487(n-1) AND A002487(n), where AND is bitwise-and (A004198).

Offset 1, canonical program `A283988.P2763794539889423270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283988 (n : ℕ) : ℤ :=
  A283988.P2763794539889423270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284061.P12909766225176381168

`A000720(A087112(comp[∑[n]]))`
-/

namespace A284061.P12909766225176381168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A087112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A284061.P12909766225176381168

noncomputable section

/-- A284061: Triangle read by rows: T(n,k) = pi(prime(k) * prime(n+1)).

Offset 1, canonical program `A284061.P12909766225176381168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A284061 (n : ℕ) : ℤ :=
  A284061.P12909766225176381168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A284061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284447.P16300961384300992767

`A092569(A258996(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284447.P16300961384300992767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A258996 (n + 1)).toNat

end

end A284447.P16300961384300992767

noncomputable section

/-- A284447: Permutation of the positive integers: a(n) = A258996(A092569(n)) = A092569(A258996(n)).

Offset 1, canonical program `A284447.P16300961384300992767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284447 (n : ℕ) : ℤ :=
  A284447.P16300961384300992767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284460.P11071859189159221971

`A231550(A258996(n+1))`
-/

namespace A284460.P11071859189159221971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A258996 (n + 1)).toNat

end

end A284460.P11071859189159221971

noncomputable section

/-- A284460: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A245327/A245328 into the enumeration system A002487/A002487' (Calkin-Wilf), and A020651/A020650 (Yu-Ting inverted) into A162911/A162912(Drib).

Offset 1, canonical program `A284460.P11071859189159221971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231550, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284460 (n : ℕ) : ℤ :=
  A284460.P11071859189159221971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231550, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286609.P10170324973133728481

`eq[char[A286608(n+1)], A000007(n)]`
-/

namespace A286609.P10170324973133728481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286609.P10170324973133728481

noncomputable section

/-- A286609: Numbers k for which the binary representation of the primes that divide k (A087207) is more than k.

Offset 1, canonical program `A286609.P10170324973133728481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8070 terms. -/
def A286609 (n : ℕ) : ℤ :=
  (A286609.P10170324973133728481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8070 terms. -/
def A286609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287375.P16270847010936485648

`2*A287374(n+1)`
-/

namespace A287375.P16270847010936485648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287374 (n + 1)

end

end A287375.P16270847010936485648

noncomputable section

/-- A287375: Positions of 2 in A101666.

Offset 1, canonical program `A287375.P16270847010936485648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287375 (n : ℕ) : ℤ :=
  A287375.P16270847010936485648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289496.P2094922246552871225

`A289493(A103517(n))-A289495(n+1)`
-/

namespace A289496.P2094922246552871225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A103517 n).toNat - A289495 (n + 1)

end

end A289496.P2094922246552871225

noncomputable section

/-- A289496: Number of primes in the interval [5n, 6n].

Offset 1, canonical program `A289496.P2094922246552871225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289496 (n : ℕ) : ℤ :=
  A289496.P2094922246552871225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289499.P16333506063555151706

`A289495(2*(n+1))-A289500(n+1)`
-/

namespace A289499.P16333506063555151706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (2 * (n + 1)) - A289500 (n + 1)

end

end A289499.P16333506063555151706

noncomputable section

/-- A289499: Number of primes in the interval [8n, 9n].

Offset 1, canonical program `A289499.P16333506063555151706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289499 (n : ℕ) : ℤ :=
  A289499.P16333506063555151706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305801.P4138315772594876190

`A305800(n+1)+A157928(n)`
-/

namespace A305801.P4138315772594876190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + A157928 n

end

end A305801.P4138315772594876190

noncomputable section

/-- A305801: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n is an odd prime, with f(n) = n for all other n.

Offset 1, canonical program `A305801.P4138315772594876190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305801 (n : ℕ) : ℤ :=
  A305801.P4138315772594876190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317840.P16169374628325330660

`A002487(n+1)-A317839(n+1)`
-/

namespace A317840.P16169374628325330660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A317839 (n + 1)

end

end A317840.P16169374628325330660

noncomputable section

/-- A317840: Difference between Stern's Diatomic sequence (A002487) and its Möbius transform (A317839).

Offset 1, canonical program `A317840.P16169374628325330660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317840 (n : ℕ) : ℤ :=
  A317840.P16169374628325330660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318448.P18323809931802074675

`A318447(n+1)+A294898(n+1)`
-/

namespace A318448.P18323809931802074675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318447 (n + 1) + A294898 (n + 1)

end

end A318448.P18323809931802074675

noncomputable section

/-- A318448: a(n) = Sum_{d|n} A294898(d), where A294898(d) = A005187(d) - sigma(d).

Offset 1, canonical program `A318448.P18323809931802074675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318448 (n : ℕ) : ℤ :=
  A318448.P18323809931802074675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318652.P1218394255038798337

`A046645(n+1)-A318513(n+1)`
-/

namespace A318652.P1218394255038798337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A318513 (n + 1)

end

end A318652.P1218394255038798337

noncomputable section

/-- A318652: The 2-adic valuation of A046644(n)/A318512(n) (A318651).

Offset 1, canonical program `A318652.P1218394255038798337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652 (n : ℕ) : ℤ :=
  A318652.P1218394255038798337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318789.P4717079052724776887

`n+3-A330547(A000720(n+3))`
-/

namespace A318789.P4717079052724776887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A330547 (A000720 (n + 3)).toNat

end

end A318789.P4717079052724776887

noncomputable section

/-- A318789: For n >= 3, a(n) is equal to n-1 plus the alternating sum of all consecutive prime gaps between odd primes <= n.

Offset 3, canonical program `A318789.P4717079052724776887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318789 (n : ℕ) : ℤ :=
  A318789.P4717079052724776887.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319997.P3728645225630001544

`A043529(n)*A349444(n+1)`
-/

namespace A319997.P3728645225630001544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A349444 (n + 1)

end

end A319997.P3728645225630001544

noncomputable section

/-- A319997: a(n) = Sum_{d|n, d is odd} mu(n/d)*d, where mu(n) is Moebius function A008683.

Offset 1, canonical program `A319997.P3728645225630001544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319997 (n : ℕ) : ℤ :=
  A319997.P3728645225630001544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324187.P6887987960075682770

`A106315(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324187.P6887987960075682770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A163511 n).toNat

end

end A324187.P6887987960075682770

noncomputable section

/-- A324187: a(n) = A106315(A163511(n)).

Offset 0, canonical program `A324187.P6887987960075682770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324187 (n : ℕ) : ℤ :=
  A324187.P6887987960075682770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324187.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324194.P16246264380367185644

`A192895(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324194.P16246264380367185644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A163511 n).toNat

end

end A324194.P16246264380367185644

noncomputable section

/-- A324194: A000120-deficiency of n permuted by A163511: a(n) = A192895(A163511(n)).

Offset 0, canonical program `A324194.P16246264380367185644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324194 (n : ℕ) : ℤ :=
  A324194.P16246264380367185644.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324659.P451335093830536093

`A318468(n+1)/2`
-/

namespace A324659.P451335093830536093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318468 (n + 1) : ℚ) / 2

end

end A324659.P451335093830536093

noncomputable section

/-- A324659: a(n) = (1/2)*A318468(n), where A318468(n) is bitwise-AND of 2*n and sigma(n).

Offset 1, canonical program `A324659.P451335093830536093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324659.P451335093830536093.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133674.P17491123718751258836

`abs(Δ[A061395(n+1)])`
-/

namespace A133674.P17491123718751258836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133674.P17491123718751258836

noncomputable section

/-- A133674: a(n) = |A061395(n+1) - A061395(n)|.

Offset 1, canonical program `A133674.P17491123718751258836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133674 (n : ℕ) : ℤ :=
  A133674.P17491123718751258836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134193.P13179869624210931457

`A001511(A297404(n+1)+1)`
-/

namespace A134193.P13179869624210931457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A297404 (n + 1) + 1).toNat

end

end A134193.P13179869624210931457

noncomputable section

/-- A134193: a(1) = 1; for n>1, a(n) = the smallest positive integer not occurring among the exponents in the prime-factorization of n.

Offset 1, canonical program `A134193.P13179869624210931457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134193 (n : ℕ) : ℤ :=
  A134193.P13179869624210931457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137222.P5944416911786828449

`∑[ceil(Δ[A061395(n+1)]/(n+1)^4)]`
-/

namespace A137222.P5944416911786828449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) - f2 n : ℚ) / ((n + 1) ^ 4 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137222.P5944416911786828449

noncomputable section

/-- A137222: Partial sums of A087429.

Offset 1, canonical program `A137222.P5944416911786828449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137222 (n : ℕ) : ℤ :=
  A137222.P5944416911786828449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137794.P4088568533380436255

`A287170(n+1)!%2`
-/

namespace A137794.P4088568533380436255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A287170 (n + 1)).toNat % 2

end

end A137794.P4088568533380436255

noncomputable section

/-- A137794: Characteristic function of numbers having no prime gaps in their factorization.

Offset 1, canonical program `A137794.P4088568533380436255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137794 (n : ℕ) : ℤ :=
  (A137794.P4088568533380436255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139709.P10417153833088246719

`A007088(A139708(n+1))`
-/

namespace A139709.P10417153833088246719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A139708 (n + 1)).toNat

end

end A139709.P10417153833088246719

noncomputable section

/-- A139709: Take n in binary. Rotate the binary digits to the left until a 1 once again appears as the leftmost digit. a(n) is result written in binary.

Offset 1, canonical program `A139709.P10417153833088246719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139709 (n : ℕ) : ℤ :=
  A139709.P10417153833088246719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140254.P10954065600151529999

`∑{d}[n+1, A007427(#)*A140255((n+1)/#)]`
-/

namespace A140254.P10954065600151529999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A140255 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140254.P10954065600151529999

noncomputable section

/-- A140254: Mobius transform of A014963.

Offset 1, canonical program `A140254.P10954065600151529999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140254 (n : ℕ) : ℤ :=
  A140254.P10954065600151529999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140265.P1410062122565116902

`A140263(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140265.P1410062122565116902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 n + 1

end

end A140265.P1410062122565116902

noncomputable section

/-- A140265: Permutation of natural numbers: a(n) = A140263(n-1)+1.

Offset 1, canonical program `A140265.P1410062122565116902`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140265 (n : ℕ) : ℤ :=
  A140265.P1410062122565116902.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140944.P4876710666983306882

`A065620(A173787(n))`
-/

namespace A140944.P4876710666983306882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A173787 n).toNat

end

end A140944.P4876710666983306882

noncomputable section

/-- A140944: Triangle T(n,k) read by rows, the k-th term of the n-th differences of the Jacobsthal sequence A001045.

Offset 0, canonical program `A140944.P4876710666983306882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A140944 (n : ℕ) : ℤ :=
  A140944.P4876710666983306882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A140944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152537.P6416251787973897900

`a(n-1)+a(n-1)-A257628(n)` with `a(0)=1`
-/

namespace A152537.P6416251787973897900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A257628 n)

end

end A152537.P6416251787973897900

noncomputable section

/-- A152537: Convolution sequence: this sequence convolved with A000041 gives powers of 2, (A000079).

Offset 0, canonical program `A152537.P6416251787973897900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A152537 (n : ℕ) : ℤ :=
  A152537.P6416251787973897900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A152537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153086.P1539337215457405017

`A095277(n+1)-1`
-/

namespace A153086.P1539337215457405017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095277 (n + 1) - 1

end

end A153086.P1539337215457405017

noncomputable section

/-- A153086: Numbers n such that 4*n+7 is not prime.

Offset 1, canonical program `A153086.P1539337215457405017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153086 (n : ℕ) : ℤ :=
  A153086.P1539337215457405017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156244.P7860944318460919725

`A078649(2*(n+1))`
-/

namespace A156244.P7860944318460919725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (2 * (n + 1))

end

end A156244.P7860944318460919725

noncomputable section

/-- A156244: Bisection of A078649.

Offset 1, canonical program `A156244.P7860944318460919725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156244 (n : ℕ) : ℤ :=
  A156244.P7860944318460919725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156245.P8092038638020984923

`A078649(2*n+1)`
-/

namespace A156245.P8092038638020984923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (2 * n + 1)

end

end A156245.P8092038638020984923

noncomputable section

/-- A156245: Bisection of A078649.

Offset 1, canonical program `A156245.P8092038638020984923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156245 (n : ℕ) : ℤ :=
  A156245.P8092038638020984923.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156256.P13404197385732133803

`A078649(n+2)-A078649(n+1)-2`
-/

namespace A156256.P13404197385732133803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 2) - A078649 (n + 1) - 2

end

end A156256.P13404197385732133803

noncomputable section

/-- A156256: Number of 1's separating successive 2's in the Kolakoski sequence A000002.

Offset 1, canonical program `A156256.P13404197385732133803`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156256 (n : ℕ) : ℤ :=
  A156256.P13404197385732133803.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156257.P13237227130742340145

`A000002(A078649(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156257.P13237227130742340145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078649 (n + 1) + 1).toNat

end

end A156257.P13237227130742340145

noncomputable section

/-- A156257: Digit of runs of length 2 in the Kolakoski sequence A000002: a(n) = A000002(A078649(n)).

Offset 1, canonical program `A156257.P13237227130742340145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156257 (n : ℕ) : ℤ :=
  A156257.P13237227130742340145.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156258.P4976708628411436766

`1/2*(A000002(A078649(n+1))-A000002(A078649(n+1)+2)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156258.P4976708628411436766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000002 (A078649 (n + 1)).toNat - A000002 (A078649 (n + 1) + 2).toNat + 1 : ℚ)

end

end A156258.P4976708628411436766

noncomputable section

/-- A156258: a(n)=(1/2)*(A000002(A078649(n))-A000002(A078649(n)+2)+1).

Offset 1, canonical program `A156258.P4976708628411436766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156258 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156258.P4976708628411436766.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156259.P16246596672154107662

`1/2*(A000002(A078649(n+1)+2)-A000002(A078649(n+1))+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156259.P16246596672154107662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000002 (A078649 (n + 1) + 2).toNat - A000002 (A078649 (n + 1)).toNat + 1 : ℚ)

end

end A156259.P16246596672154107662

noncomputable section

/-- A156259: a(n)=(1/2)*(A000002(A078649(n)+2)-A000002(A078649(n))+1).

Offset 1, canonical program `A156259.P16246596672154107662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156259.P16246596672154107662.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156265.P11083405800392652458

`3*(n+1)-A078649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156265.P11083405800392652458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A078649 (n + 1)

end

end A156265.P11083405800392652458

noncomputable section

/-- A156265: a(n)=3*n-A078649(n).

Offset 1, canonical program `A156265.P11083405800392652458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156265 (n : ℕ) : ℤ :=
  A156265.P11083405800392652458.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156267.P4727819822386795291

`A054353(2*(n+1))-A078649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156267.P4727819822386795291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * (n + 1)) - A078649 (n + 1)

end

end A156267.P4727819822386795291

noncomputable section

/-- A156267: a(n)=A054353(2*n)-A078649(n).

Offset 1, canonical program `A156267.P4727819822386795291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156267 (n : ℕ) : ℤ :=
  A156267.P4727819822386795291.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156267.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156268.P6336594155207146855

`2*A054353(n+1)-A078649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156268.P6336594155207146855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054353 (n + 1) - A078649 (n + 1)

end

end A156268.P6336594155207146855

noncomputable section

/-- A156268: a(n)=2*A054353(n)-A078649(n).

Offset 1, canonical program `A156268.P6336594155207146855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156268 (n : ℕ) : ℤ :=
  A156268.P6336594155207146855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156352.P2115846142684251298

`A078649(A054353(n+1)-(n+1)+1)-A054353(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156352.P2115846142684251298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (A054353 (n + 1) - (n + 1 : ℤ) + 1).toNat - A054353 (n + 1)

end

end A156352.P2115846142684251298

noncomputable section

/-- A156352: a(n)=A078649(A054353(n)-n+1)-A054353(n).

Offset 1, canonical program `A156352.P2115846142684251298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156352 (n : ℕ) : ℤ :=
  A156352.P2115846142684251298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156749.P11962410097344092513

`-A066520(2*(n+1)+1)`
-/

namespace A156749.P11962410097344092513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A066520 (2 * (n + 1) + 1)

end

end A156749.P11962410097344092513

noncomputable section

/-- A156749: For all numbers k(n) congruent to -1 or +1 (mod 4) starting with k(n) = {3,5,7,9,11,...}, a(k(n)) is incremented by the congruence (mod 4) if k(n) is prime and by 0 if k(n) is composite.

Offset 1, canonical program `A156749.P11962410097344092513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156749 (n : ℕ) : ℤ :=
  A156749.P11962410097344092513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156877.P7902119984331590274

`A156874(n+1)+A156875(n+1)-A156876(n+1)`
-/

namespace A156877.P7902119984331590274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (n + 1) + A156875 (n + 1) - A156876 (n + 1)

end

end A156877.P7902119984331590274

noncomputable section

/-- A156877: Number of primes <= n that are safe primes and also Sophie Germain primes.

Offset 1, canonical program `A156877.P7902119984331590274`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156874, A156875, A156876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156877 (n : ℕ) : ℤ :=
  A156877.P7902119984331590274.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156874, A156875, A156876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156878.P8707209131953386678

`A000720(n+1)-A156876(n+1)`
-/

namespace A156878.P8707209131953386678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A156876 (n + 1)

end

end A156878.P8707209131953386678

noncomputable section

/-- A156878: Number of primes <= n that are neither safe primes and nor Sophie Germain primes.

Offset 1, canonical program `A156878.P8707209131953386678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A156876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156878 (n : ℕ) : ℤ :=
  A156878.P8707209131953386678.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A156876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160597.P15569161753854345137

`(n+1)/A058663(n+2)`
-/

namespace A160597.P15569161753854345137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A058663 (n + 2) : ℚ)

end

end A160597.P15569161753854345137

noncomputable section

/-- A160597: Denominator of coresilience C(n) = (n - phi(n))/(n-1).

Offset 2, canonical program `A160597.P15569161753854345137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160597.P15569161753854345137.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162911.P13044090797899104373

`A002487(A258996(n+1))`
-/

namespace A162911.P13044090797899104373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A258996 (n + 1)).toNat

end

end A162911.P13044090797899104373

noncomputable section

/-- A162911: Numerators of drib tree fractions, where drib is the bit-reversal permutation tree of the Bird tree.

Offset 1, canonical program `A162911.P13044090797899104373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162911 (n : ℕ) : ℤ :=
  A162911.P13044090797899104373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162912.P15780371086772788936

`A002487(1+A258996(n+1))`
-/

namespace A162912.P15780371086772788936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A258996 (n + 1)).toNat

end

end A162912.P15780371086772788936

noncomputable section

/-- A162912: Denominators of drib tree fractions, where drib is the bit-reversal permutation tree of the Bird tree.

Offset 1, canonical program `A162912.P15780371086772788936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162912 (n : ℕ) : ℤ :=
  A162912.P15780371086772788936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162912.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163468.P8406828026260451703

`2+A065897(n+1)`
-/

namespace A163468.P8406828026260451703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A065897 (n + 1)

end

end A163468.P8406828026260451703

noncomputable section

/-- A163468: Indices k such that half of the k-th nonprime nonnegative integer is prime.

Offset 1, canonical program `A163468.P8406828026260451703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163468 (n : ℕ) : ℤ :=
  A163468.P8406828026260451703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164980.P4043780184913040080

`A008624(Δ[A061395(A164901(n+1))])`
-/

namespace A164980.P4043780184913040080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A164901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (f1 (n + 1) - f1 n).toNat

end

end A164980.P4043780184913040080

noncomputable section

/-- A164980: Number of primes between consecutive terms of A164901.

Offset 1, canonical program `A164980.P4043780184913040080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3499 terms. -/
def A164980 (n : ℕ) : ℤ :=
  A164980.P4043780184913040080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3499 terms. -/
def A164980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172072.P14384555314162830453

`record[A061395(A151800(3*n)+6)]`
-/

namespace A172072.P14384555314162830453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A151800 (3 * n) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172072.P14384555314162830453

noncomputable section

/-- A172072: Numbers k such that either prime(k) - 5/2 +- 7/2 is prime.

Offset 1, canonical program `A172072.P14384555314162830453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A172072 (n : ℕ) : ℤ :=
  A172072.P14384555314162830453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A172072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173229.P8938795864355033648

`A046953(n+1)-A046954(n+2)`
-/

namespace A173229.P8938795864355033648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) - A046954 (n + 2)

end

end A173229.P8938795864355033648

noncomputable section

/-- A173229: a(n) is the n-th number m such that 6m-1 is composite minus the n-th number k such that 6k+1 is composite.

Offset 1, canonical program `A173229.P8938795864355033648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173229 (n : ℕ) : ℤ :=
  A173229.P8938795864355033648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173231.P14587032377011786533

`A046953(n+1)+A046954(n+2)`
-/

namespace A173231.P14587032377011786533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) + A046954 (n + 2)

end

end A173231.P14587032377011786533

noncomputable section

/-- A173231: a(n) is the n-th number m such that 6*m-1 is composite plus the n-th number k such that 6*k+1 is composite.

Offset 1, canonical program `A173231.P14587032377011786533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173231 (n : ℕ) : ℤ :=
  A173231.P14587032377011786533.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174009.P5463232597024446893

`record[A061395(xor(1, A174008(n+1))+1)]`
-/

namespace A174009.P5463232597024446893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.xor 1 (A174008 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P5463232597024446893

noncomputable section

/-- A174009: Indices of the primes appearing in A174008.

Offset 1, canonical program `A174009.P5463232597024446893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A174009 (n : ℕ) : ℤ :=
  A174009.P5463232597024446893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. -/
def A174009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175154.P10023110274526491753

`record[A061395(n²+11+n)]`
-/

namespace A175154.P10023110274526491753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n ^ 2 + 11 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175154.P10023110274526491753

noncomputable section

/-- A175154: a(n) = prime index of A048059(n).

Offset 1, canonical program `A175154.P10023110274526491753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A175154 (n : ℕ) : ℤ :=
  A175154.P10023110274526491753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A175154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176095.P15886254613354820992

`A053158(2*(n+1))%(n+1)`
-/

namespace A176095.P15886254613354820992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053158 (2 * (n + 1))) (n + 1 : ℤ)

end

end A176095.P15886254613354820992

noncomputable section

/-- A176095: a(n) = n - phi(2*n), where phi() is the Euler totient A000010().

Offset 1, canonical program `A176095.P15886254613354820992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176095 (n : ℕ) : ℤ :=
  A176095.P15886254613354820992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177149.P5149190234469406226

`A061395(p?[A052034(n+1)])`
-/

namespace A177149.P5149190234469406226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177149.P5149190234469406226

noncomputable section

/-- A177149: Indices n such that the sums of the squares of the digits of prime(n) are prime.

Offset 1, canonical program `A177149.P5149190234469406226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1818 terms. -/
def A177149 (n : ℕ) : ℤ :=
  A177149.P5149190234469406226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1818 terms. -/
def A177149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177997.P12061995829486224257

`p?[A065897(n+1)]`
-/

namespace A177997.P12061995829486224257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177997.P12061995829486224257

noncomputable section

/-- A177997: p and A002808(p)/2 are both prime.

Offset 1, canonical program `A177997.P12061995829486224257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A177997 (n : ℕ) : ℤ :=
  A177997.P12061995829486224257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A177997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180444.P10879276139773560671

`A053158(n+2)-2`
-/

namespace A180444.P10879276139773560671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 2) - 2

end

end A180444.P10879276139773560671

noncomputable section

/-- A180444: a(n) equals the number of bispecial Sturmian words of length n, that is words which are prefix to two words of length n+1, and likewise suffix. Note that prefix and suffix are not independent, unless the word is also palindromic: see A000010.

Offset 0, canonical program `A180444.P10879276139773560671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180444 (n : ℕ) : ℤ :=
  A180444.P10879276139773560671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181988.P6768559129986484408

`A001511(n+1)*A003602(n+1)`
-/

namespace A181988.P6768559129986484408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A003602 (n + 1)

end

end A181988.P6768559129986484408

noncomputable section

/-- A181988: If n is odd, a(n) = (n+1)/2; if n is even, a(n) = a(n/2) + A003602(n).

Offset 1, canonical program `A181988.P6768559129986484408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181988 (n : ℕ) : ℤ :=
  A181988.P6768559129986484408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184776.P6747012226356231733

`A061395(A184774(n+1)+A000007(n+4))`
-/

namespace A184776.P6747012226356231733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A184774 (n + 1) + A000007 (n + 4)).toNat

end

end A184776.P6747012226356231733

noncomputable section

/-- A184776: Numbers m such that prime(m) is of the form floor(k*sqrt(2)); complement of A184779.

Offset 1, canonical program `A184776.P6747012226356231733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6740 terms. -/
def A184776 (n : ℕ) : ℤ :=
  A184776.P6747012226356231733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6740 terms. -/
def A184776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184795.P7757484182494400038

`A061395(p?[floor(n*ϕ²)])`
-/

namespace A184795.P7757484182494400038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P7757484182494400038

noncomputable section

/-- A184795: Numbers m such that prime(m) is of the form floor(k*s), where s=(3+sqrt(5))/2; complement of A184793.

Offset 1, canonical program `A184795.P7757484182494400038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3619 terms. -/
def A184795 (n : ℕ) : ℤ :=
  A184795.P7757484182494400038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3619 terms. -/
def A184795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184804.P5256680205815034056

`A061395(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P5256680205815034056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P5256680205815034056

noncomputable section

/-- A184804: Numbers m such that prime(m) is of the form floor(k*sqrt(5)); complement of A184807.

Offset 1, canonical program `A184804.P5256680205815034056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4260 terms. -/
def A184804 (n : ℕ) : ℤ :=
  A184804.P5256680205815034056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4260 terms. -/
def A184804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184811.P17820329255503839465

`A061395(p?[floor((n+1)/(sqrt(6)-2))])`
-/

namespace A184811.P17820329255503839465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184811.P17820329255503839465

noncomputable section

/-- A184811: Numbers m such that prime(m) has the form floor(r*k), where r=sqrt(3/2); complement of A184810.

Offset 1, canonical program `A184811.P17820329255503839465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A184811 (n : ℕ) : ℤ :=
  A184811.P17820329255503839465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. -/
def A184811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184861.P8608652935001601078

`A061395(p?[round(ϕ*n)])`
-/

namespace A184861.P8608652935001601078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P8608652935001601078

noncomputable section

/-- A184861: Numbers m such that prime(m) is of the form floor(nr+h), where r=(1+sqrt(5))/2 and h=1/2; complement of A184864.

Offset 1, canonical program `A184861.P8608652935001601078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5897 terms. -/
def A184861 (n : ℕ) : ℤ :=
  A184861.P8608652935001601078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5897 terms. -/
def A184861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184874.P12081557824146837878

`A061395(p?[A184871(n+1)])`
-/

namespace A184874.P12081557824146837878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P12081557824146837878

noncomputable section

/-- A184874: Numbers m such that prime(m) is of the form k+floor(ks/r)+floor(kt/r), where r=log(2), s=log(3), t=log(5).

Offset 1, canonical program `A184874.P12081557824146837878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. -/
def A184874 (n : ℕ) : ℤ :=
  A184874.P12081557824146837878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. -/
def A184874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186742.P13904402004995400067

`ceil(A257628(n+1)/2)`
-/

namespace A186742.P13904402004995400067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A257628 (n + 1) : ℚ) / 2⌉

end

end A186742.P13904402004995400067

noncomputable section

/-- A186742: Expansion of f(x, x^11) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A186742.P13904402004995400067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186742 (n : ℕ) : ℤ :=
  A186742.P13904402004995400067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192618.P9154005034484997042

`record[A008475(A002731(n+1))²]`
-/

namespace A192618.P9154005034484997042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A002731 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192618.P9154005034484997042

noncomputable section

/-- A192618: Prime powers p^k with even exponents k > 0 such that (1 + p^k)/2 is prime.

Offset 1, canonical program `A192618.P9154005034484997042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192618 (n : ℕ) : ℤ :=
  A192618.P9154005034484997042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194370.P18385211741053095968

`lt[A190763(A003602(n+1)), A001952(n+1)]`
-/

namespace A194370.P18385211741053095968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190763 (A003602 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194370.P18385211741053095968

noncomputable section

/-- A194370: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(2) and < > denotes fractional part.

Offset 1, canonical program `A194370.P18385211741053095968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3169 terms. -/
def A194370 (n : ℕ) : ℤ :=
  (A194370.P18385211741053095968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3169 terms. -/
def A194370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196227.P1038827225562638311

`2*A209978(n)`
-/

namespace A196227.P1038827225562638311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209978 n

end

end A196227.P1038827225562638311

noncomputable section

/-- A196227: Number of 2 X 2 integer matrices with elements from {1,...,n} whose determinant is 1.

Offset 0, canonical program `A196227.P1038827225562638311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196227 (n : ℕ) : ℤ :=
  A196227.P1038827225562638311.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A199716.P7143510606697811794

`∩[A046953(n+1), A272902(n+1)]`
-/

namespace A199716.P7143510606697811794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199716.P7143510606697811794

noncomputable section

/-- A199716: Numbers k such that 6k-5 and 6k-1 are both composite.

Offset 1, canonical program `A199716.P7143510606697811794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A199716 (n : ℕ) : ℤ :=
  (A199716.P7143510606697811794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A199716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203623.P1383915864646164806

`a(n-1)+A061395(n+1)` with `a(0)=0`
-/

namespace A203623.P1383915864646164806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A061395 (n + 1)

end

end A203623.P1383915864646164806

noncomputable section

/-- A203623: Partial sums of A061395.

Offset 1, canonical program `A203623.P1383915864646164806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A203623 (n : ℕ) : ℤ :=
  A203623.P1383915864646164806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A203623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209268.P13650169059364209089

`A000217(A007814(n+1)+A003602(n+1))-A007814(n+1)`
-/

namespace A209268.P13650169059364209089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007814 (n + 1) + A003602 (n + 1)).toNat - A007814 (n + 1)

end

end A209268.P13650169059364209089

noncomputable section

/-- A209268: Inverse permutation A054582.

Offset 1, canonical program `A209268.P13650169059364209089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209268 (n : ℕ) : ℤ :=
  A209268.P13650169059364209089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219646.P1459568560880754385

`∑[A219642(n)]`
-/

namespace A219646.P1459568560880754385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219646.P1459568560880754385

noncomputable section

/-- A219646: Partial sums of A219642.

Offset 0, canonical program `A219646.P1459568560880754385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219646 (n : ℕ) : ℤ :=
  A219646.P1459568560880754385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221865.P10154145289672600813

`eq[A055671(n), A060278(n+2)]`
-/

namespace A221865.P10154145289672600813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221865.P10154145289672600813

noncomputable section

/-- A221865: The nonprimes k such that k + 2 is either a prime or a semiprime.

Offset 1, canonical program `A221865.P10154145289672600813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A221865 (n : ℕ) : ℤ :=
  (A221865.P10154145289672600813.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A221865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227132.P9151109300955143811

`eq[4, 4/a(A257687(n))]` with `a(0)=1`
-/

namespace A227132.P9151109300955143811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  4 / f2 (A257687 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A227132.P9151109300955143811

noncomputable section

/-- A227132: Numbers k for which there is an odd number of nonzero digits when k is written in the factorial base (A007623).

Offset 1, canonical program `A227132.P9151109300955143811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227132 (n : ℕ) : ℤ :=
  (A227132.P9151109300955143811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227153.P14249677092312730531

`a(A257687(n))*A099563(n)` with `a(0)=1`
-/

namespace A227153.P14249677092312730531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A257687 n).toNat * A099563 n

end

end A227153.P14249677092312730531

noncomputable section

/-- A227153: Product of nonzero digits of n in factorial base.

Offset 0, canonical program `A227153.P14249677092312730531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227153 (n : ℕ) : ℤ :=
  A227153.P14249677092312730531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241920.P14941516816984529543

`∑[char[∑[A061395(n+1)]+1]]+1`
-/

namespace A241920.P14941516816984529543
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A241920.P14941516816984529543

noncomputable section

/-- A241920: After a(1)=1, each n appears A061395(n) times, where A061395 gives the index of the largest prime factor of n.

Offset 1, canonical program `A241920.P14941516816984529543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241920 (n : ℕ) : ℤ :=
  (A241920.P14941516816984529543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243291.P16902629913632114201

`n+1-A061395(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243291.P16902629913632114201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A061395 (n + 1)

end

end A243291.P16902629913632114201

noncomputable section

/-- A243291: Difference between n and the index of its largest prime factor: a(n) = n - A061395(n).

Offset 1, canonical program `A243291.P16902629913632114201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243291 (n : ℕ) : ℤ :=
  A243291.P16902629913632114201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243747.P6224960804244215047

`A035184(A259445(n+2))-A002325(n+2)`
-/

namespace A243747.P6224960804244215047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (A259445 (n + 2)).toNat - A002325 (n + 2)

end

end A243747.P6224960804244215047

noncomputable section

/-- A243747: Expansion of (phi(q) - phi(q^2))^2 / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 2, canonical program `A243747.P6224960804244215047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243747 (n : ℕ) : ℤ :=
  A243747.P6224960804244215047.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A243747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244988.P9750402699729934966

`∑[(A061395(n+1)+1)%2]`
-/

namespace A244988.P9750402699729934966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P9750402699729934966

noncomputable section

/-- A244988: a(n) = n - A244989(n).

Offset 1, canonical program `A244988.P9750402699729934966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244988 (n : ℕ) : ℤ :=
  A244988.P9750402699729934966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244990.P13046816219310750522

`eq[2, gcd(2, A061395(n+1))]+1`
-/

namespace A244990.P13046816219310750522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A061395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244990.P13046816219310750522

noncomputable section

/-- A244990: After 1, numbers whose greatest prime factor is a prime with an even index; n such that A061395(n) is even.

Offset 1, canonical program `A244990.P13046816219310750522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244990 (n : ℕ) : ℤ :=
  (A244990.P13046816219310750522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244991.P9429980419197300237

`eq[1, A061395(n+1)%2]+1`
-/

namespace A244991.P9429980419197300237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244991.P9429980419197300237

noncomputable section

/-- A244991: Numbers whose greatest prime factor is a prime with an odd index; n such that A006530(n) is in A031368.

Offset 1, canonical program `A244991.P9429980419197300237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244991 (n : ℕ) : ℤ :=
  (A244991.P9429980419197300237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244992.P11847278491513242211

`A000035(A061395(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244992.P11847278491513242211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061395 (n + 1)).toNat

end

end A244992.P11847278491513242211

noncomputable section

/-- A244992: Characteristic function for A244991: a(n) = A000035(A061395(n)).

Offset 1, canonical program `A244992.P11847278491513242211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244992 (n : ℕ) : ℤ :=
  A244992.P11847278491513242211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246160.P12838974675095138970

`A246159(n)+A065620(n)`
-/

namespace A246160.P12838974675095138970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 n + A065620 n

end

end A246160.P12838974675095138970

noncomputable section

/-- A246160: Inverse function to the injection A065621.

Offset 0, canonical program `A246160.P12838974675095138970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, A246159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246160 (n : ℕ) : ℤ :=
  A246160.P12838974675095138970.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, A246159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246514.P17080311736656765169

`A065897(n+1)-A014689(n+1)`
-/

namespace A246514.P17080311736656765169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) - A014689 (n + 1)

end

end A246514.P17080311736656765169

noncomputable section

/-- A246514: Number of composite numbers between prime(n) and 2*prime(n) exclusive.

Offset 1, canonical program `A246514.P17080311736656765169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246514 (n : ℕ) : ℤ :=
  A246514.P17080311736656765169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248514.P12001065706870817028

`ceil(A003602(eq[1, A010060(n)])/2)`
-/

namespace A248514.P12001065706870817028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2⌉

end

end A248514.P12001065706870817028

noncomputable section

/-- A248514: Fractal sequence of the dispersion of the "odious numbers".

Offset 1, canonical program `A248514.P12001065706870817028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A248514 (n : ℕ) : ℤ :=
  A248514.P12001065706870817028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A248514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249725.P5047833433213757881

`1+((A003602(n+1)+A007814(n+1))²+A007814(n+1)-A003602(n+1))/2`
-/

namespace A249725.P5047833433213757881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((A003602 (n + 1) + A007814 (n + 1)) ^ 2 + A007814 (n + 1) - A003602 (n + 1) : ℚ) / 2

end

end A249725.P5047833433213757881

noncomputable section

/-- A249725: Inverse permutation to A135764.

Offset 1, canonical program `A249725.P5047833433213757881`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249725.P5047833433213757881.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251723.P8283630235415226138

`A054272(n+2)-A054272(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251723.P8283630235415226138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 2) - A054272 (n + 1)

end

end A251723.P8283630235415226138

noncomputable section

/-- A251723: First differences of A054272, A250473 and A250474: a(n) = A054272(n+1) - A054272(n).

Offset 1, canonical program `A251723.P8283630235415226138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251723 (n : ℕ) : ℤ :=
  A251723.P8283630235415226138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A251723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252464.P11274602121942962009

`A061395(n+1)+A252736(n+1)`
-/

namespace A252464.P11274602121942962009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + A252736 (n + 1)

end

end A252464.P11274602121942962009

noncomputable section

/-- A252464: a(1) = 0, a(2n) = 1 + a(n), a(2n+1) = 1 + a(A064989(2n+1)); also binary width of terms of A156552 and A243071.

Offset 1, canonical program `A252464.P11274602121942962009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, A252736, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252464 (n : ℕ) : ℤ :=
  A252464.P11274602121942962009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, A252736, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257511.P4810453012359406512

`A265333(n)+a(A257687(n))` with `a(0)=0, a(1)=1`
-/

namespace A257511.P4810453012359406512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A265333 n + a (A257687 n).toNat

end

end A257511.P4810453012359406512

noncomputable section

/-- A257511: Number of 1's in factorial base representation of n (A007623).

Offset 0, canonical program `A257511.P4810453012359406512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, A265333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257511 (n : ℕ) : ℤ :=
  A257511.P4810453012359406512.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, A265333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A257511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257541.P8288380593275451200

`A061395(n+2)-∑{e}[n+2, #]`
-/

namespace A257541.P8288380593275451200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A257541.P8288380593275451200

noncomputable section

/-- A257541: The rank of the partition with Heinz number n.

Offset 2, canonical program `A257541.P8288380593275451200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A257541 (n : ℕ) : ℤ :=
  A257541.P8288380593275451200.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A257541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257686.P2460600263462736737

`n-A257687(n)`
-/

namespace A257686.P2460600263462736737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257687 n

end

end A257686.P2460600263462736737

noncomputable section

/-- A257686: a(0) = 0, for n >= 1: a(n) = A099563(n) * A048764(n).

Offset 0, canonical program `A257686.P2460600263462736737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257686 (n : ℕ) : ℤ :=
  A257686.P2460600263462736737.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257686.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258747.P12775887819017485008

`A129134(3*n+1)`
-/

namespace A258747.P12775887819017485008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (3 * n + 1)

end

end A258747.P12775887819017485008

noncomputable section

/-- A258747: Expansion of chi(-x) * f(x^3) * f(-x^6) in powers of x where chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A258747.P12775887819017485008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258747 (n : ℕ) : ℤ :=
  A258747.P12775887819017485008.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258747.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258764.P1236951229725799684

`A129134(3*n+2)`
-/

namespace A258764.P1236951229725799684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (3 * n + 2)

end

end A258764.P1236951229725799684

noncomputable section

/-- A258764: Expansion of chi(-x^2) * psi(-x^3)^2 in powers of x where psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A258764.P1236951229725799684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258764 (n : ℕ) : ℤ :=
  A258764.P1236951229725799684.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259067.P7320704414048657284

`A007953(A033549(n+1))`
-/

namespace A259067.P7320704414048657284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A033549 (n + 1)).toNat

end

end A259067.P7320704414048657284

noncomputable section

/-- A259067: Sum of digits of Honaker primes (A033548).

Offset 1, canonical program `A259067.P7320704414048657284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A033549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259067 (n : ℕ) : ℤ :=
  A259067.P7320704414048657284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A033549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A259067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261081.P15491907119103926316

`A219642(A000045(n+2)-1)`
-/

namespace A261081.P15491907119103926316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A000045 (n + 2) - 1).toNat

end

end A261081.P15491907119103926316

noncomputable section

/-- A261081: a(n) = number of steps required to reach 0 from F(n+2)-1 by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

Offset 0, canonical program `A261081.P15491907119103926316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261081 (n : ℕ) : ℤ :=
  A261081.P15491907119103926316.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261091.P14200442498164629939

`A219642(A000045(n+2))-A219642(A000045(n+1))`
-/

namespace A261091.P14200442498164629939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A000045 (n + 2)).toNat - A219642 (A000045 (n + 1)).toNat

end

end A261091.P14200442498164629939

noncomputable section

/-- A261091: a(n) = number of steps required to reach F(n+1)-1 from F(n+2)-1 by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

Offset 0, canonical program `A261091.P14200442498164629939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261091 (n : ℕ) : ℤ :=
  A261091.P14200442498164629939.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262086.P14964271048277246364

`eq[A219428(n+3), A219428(n+13)]+3`
-/

namespace A262086.P14964271048277246364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A262086.P14964271048277246364

noncomputable section

/-- A262086: Numbers k such that phi(k + 10) = phi(k) + 10, where phi(k) = A000010(k) is Euler's totient function.

Offset 1, canonical program `A262086.P14964271048277246364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A262086 (n : ℕ) : ℤ :=
  (A262086.P14964271048277246364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. -/
def A262086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267967.P6857388283747575084

`2*A162592(n+1)`
-/

namespace A267967.P6857388283747575084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162592 (n + 1)

end

end A267967.P6857388283747575084

noncomputable section

/-- A267967: Integers n such that n^n is the sum of two nonzero squares while n is not.

Offset 1, canonical program `A267967.P6857388283747575084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267967 (n : ℕ) : ℤ :=
  A267967.P6857388283747575084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268384.P16231980144868817348

`a(A246159(n))` with `a(0)=0, a(1)=1`
-/

namespace A268384.P16231980144868817348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A246159 n).toNat

end

end A268384.P16231980144868817348

noncomputable section

/-- A268384: Characteristic function of A001317.

Offset 0, canonical program `A268384.P16231980144868817348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268384 (n : ℕ) : ℤ :=
  (A268384.P16231980144868817348.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268631.P11656545596258421338

`A006579(n+1)-n`
-/

namespace A268631.P11656545596258421338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) - (n : ℤ)

end

end A268631.P11656545596258421338

noncomputable section

/-- A268631: Number of ordered pairs (a,b) of positive integers less than n with the property that n divides ab.

Offset 1, canonical program `A268631.P11656545596258421338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268631 (n : ℕ) : ℤ :=
  A268631.P11656545596258421338.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268631.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268719.P9072516025595210906

`A268715(A245300(n))`
-/

namespace A268719.P9072516025595210906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268715 (A245300 n).toNat

end

end A268719.P9072516025595210906

noncomputable section

/-- A268719: Triangular table T(n>=0,k=0..n) = A003188(A006068(n) + A006068(k)), read by rows as A(0,0), A(1,0), A(1,1), A(2,0), A(2,1), A(2,2), ...

Offset 0, canonical program `A268719.P9072516025595210906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3914 terms. -/
def A268719 (n : ℕ) : ℤ :=
  A268719.P9072516025595210906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3914 terms. -/
def A268719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273494.P14320960571010168640

`A245325(n+1)+A245326(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273494.P14320960571010168640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (n + 1) + A245326 (n + 1)

end

end A273494.P14320960571010168640

noncomputable section

/-- A273494: a(n) = A245325(n) + A245326(n).

Offset 1, canonical program `A273494.P14320960571010168640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245325, A245326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273494 (n : ℕ) : ℤ :=
  A273494.P14320960571010168640.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245325, A245326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275340.P3805728007378759890

`A113502(n+1)+1`
-/

namespace A275340.P3805728007378759890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (n + 1) + 1

end

end A275340.P3805728007378759890

noncomputable section

/-- A275340: Nontrivial centered polygonal numbers: numbers of the form A101321(n,k) where n >= 1 and k >= 2.

Offset 1, canonical program `A275340.P3805728007378759890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275340 (n : ℕ) : ℤ :=
  A275340.P3805728007378759890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277822.P8229571769565338857

`A268726(and(A001969(n+1), A006257(n)))`
-/

namespace A277822.P8229571769565338857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (Int.land (A001969 (n + 1)) (A006257 n)).toNat

end

end A277822.P8229571769565338857

noncomputable section

/-- A277822: a(n) = index of the column where n is located in array A277880.

Offset 0, canonical program `A277822.P8229571769565338857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277822 (n : ℕ) : ℤ :=
  A277822.P8229571769565338857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279622.P1478079407013024484

`lt[2, A004396(A061395(n+1))]+1`
-/

namespace A279622.P1478079407013024484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A061395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279622.P1478079407013024484

noncomputable section

/-- A279622: Numbers with a prime factor greater than 5.

Offset 1, canonical program `A279622.P1478079407013024484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279622 (n : ℕ) : ℤ :=
  (A279622.P1478079407013024484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280815.P16401283528998720651

`A049502(A051953(n+1))`
-/

namespace A280815.P16401283528998720651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A051953 (n + 1)).toNat

end

end A280815.P16401283528998720651

noncomputable section

/-- A280815: a(n) = A049502(cototient(n)).

Offset 1, canonical program `A280815.P16401283528998720651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280815 (n : ℕ) : ℤ :=
  A280815.P16401283528998720651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280815.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283427.P12910337542420709598

`record[A054272(n+1)%(A033046(n)+1)]`
-/

namespace A283427.P12910337542420709598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054272 (n + 1)) (A033046 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283427.P12910337542420709598

noncomputable section

/-- A283427: a(n) is the number of consecutive smallest prime totatives of primorial A002110(n).

Offset 1, canonical program `A283427.P12910337542420709598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A283427 (n : ℕ) : ℤ :=
  A283427.P12910337542420709598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A283427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283977.P3008186910418949964

`A283976(n)-A283978(n)`
-/

namespace A283977.P3008186910418949964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n - A283978 n

end

end A283977.P3008186910418949964

noncomputable section

/-- A283977: a(2n) = A002487(n), a(2n+1) = A002487(n) XOR A002487(n+1), where XOR is bitwise-xor (A003987).

Offset 0, canonical program `A283977.P3008186910418949964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, A283978, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283977 (n : ℕ) : ℤ :=
  A283977.P3008186910418949964.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, A283978, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284288.P13047089995370413038

`eq[1, A296084(n+2)]+2`
-/

namespace A284288.P13047089995370413038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296084 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284288.P13047089995370413038

noncomputable section

/-- A284288: Numbers n such that the average of the strong divisors of n is an integer.

Offset 1, canonical program `A284288.P13047089995370413038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. -/
def A284288 (n : ℕ) : ℤ :=
  (A284288.P13047089995370413038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. -/
def A284288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285725.P10187750537591551827

`A061395(n+1)-((n-1)%2+1)`
-/

namespace A285725.P10187750537591551827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - (Int.tmod ((n : ℤ) - 1) 2 + 1)

end

end A285725.P10187750537591551827

noncomputable section

/-- A285725: a(1) = 0; for n > 1, a(n) = A252735(n) - A000035(n).

Offset 1, canonical program `A285725.P10187750537591551827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285725 (n : ℕ) : ℤ :=
  A285725.P10187750537591551827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288931.P10856556094994457970

`filter[n+1, A288929(#)]`
-/

namespace A288931.P10856556094994457970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288929 (f1 j) = 1) n)

end

end A288931.P10856556094994457970

noncomputable section

/-- A288931: Positions of 1 in A288929; complement of A288930.

Offset 1, canonical program `A288931.P10856556094994457970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6662 terms. -/
def A288931 (n : ℕ) : ℤ :=
  (A288931.P10856556094994457970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6662 terms. -/
def A288931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291711.P15975325620196948492

`A007953(A381579(n+1))`
-/

namespace A291711.P15975325620196948492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A381579 (n + 1)).toNat

end

end A291711.P15975325620196948492

noncomputable section

/-- A291711: The minimum number of coins needed to pay for n units in the currency system of values 1, 3, 8, 21, 55, 144, ..., Fibonacci(2k), ...

Offset 1, canonical program `A291711.P15975325620196948492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A381579, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291711 (n : ℕ) : ℤ :=
  A291711.P15975325620196948492.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A381579, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304183.P16998250907067850540

`(A001615(n+1)-A304182(n+1))/2`
-/

namespace A304183.P16998250907067850540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A304182 (n + 1) : ℚ) / 2

end

end A304183.P16998250907067850540

noncomputable section

/-- A304183: Number of primitive inequivalent oblique sublattices of rectangular lattice of index n.

Offset 1, canonical program `A304183.P16998250907067850540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A304182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304183 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304183.P16998250907067850540.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A304182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A316345.P14622171126567751218

`1-A151666(A246159(n))`
-/

namespace A316345.P14622171126567751218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A151666 (A246159 n).toNat

end

end A316345.P14622171126567751218

noncomputable section

/-- A316345: An example of a word that is uniform morphic and recurrent, but neither pure morphic nor primitive morphic.

Offset 0, canonical program `A316345.P14622171126567751218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316345 (n : ℕ) : ℤ :=
  A316345.P14622171126567751218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318445.P14423617105751206309

`A211779(n+1)+A318447(n+1)`
-/

namespace A318445.P14423617105751206309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + A318447 (n + 1)

end

end A318445.P14423617105751206309

noncomputable section

/-- A318445: a(n) = Sum_{d|n, d

Offset 1, canonical program `A318445.P14423617105751206309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211779, A318447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318445 (n : ℕ) : ℤ :=
  A318445.P14423617105751206309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211779, A318447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318467.P11021242539617747831

`A224880(n+1)-2*A318468(n+1)`
-/

namespace A318467.P11021242539617747831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - 2 * A318468 (n + 1)

end

end A318467.P11021242539617747831

noncomputable section

/-- A318467: a(n) = 2*n XOR A000203(n), where XOR is bitwise-xor (A003987) and A000203 = sum of divisors.

Offset 1, canonical program `A318467.P11021242539617747831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318467 (n : ℕ) : ℤ :=
  A318467.P11021242539617747831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318468, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319796.P9183521595932726378

`eq[gcd(2, n), A347950(n+1)]+1`
-/

namespace A319796.P9183521595932726378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319796.P9183521595932726378

noncomputable section

/-- A319796: Even numbers that have middle divisors, where "middle divisor" means a divisor in the half-open interval [sqrt(n/2), sqrt(n*2)).

Offset 1, canonical program `A319796.P9183521595932726378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9579 terms. -/
def A319796 (n : ℕ) : ℤ :=
  (A319796.P9183521595932726378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9579 terms. -/
def A319796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322432.P15750206088003482334

`eq[0, A121361(n)]`
-/

namespace A322432.P15750206088003482334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P15750206088003482334

noncomputable section

/-- A322432: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^14 is zero.

Offset 1, canonical program `A322432.P15750206088003482334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A322432 (n : ℕ) : ℤ :=
  (A322432.P15750206088003482334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A322432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323701.P14769873866229796665

`Δ[A061395(2*A076873(n+1))]`
-/

namespace A323701.P14769873866229796665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A076873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P14769873866229796665

noncomputable section

/-- A323701: a(n) is the number of primes p such that A007504(n) <= p < A007504(n+1).

Offset 1, canonical program `A323701.P14769873866229796665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A323701 (n : ℕ) : ℤ :=
  A323701.P14769873866229796665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A323701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324045.P1593717203067298836

`A033879(n+1)+A324047(n+1)-A053158(n+1)`
-/

namespace A324045.P1593717203067298836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A324047 (n + 1) - A053158 (n + 1))

end

end A324045.P1593717203067298836

noncomputable section

/-- A324045: a(n) = A000010(n) - A106316(n).

Offset 1, canonical program `A324045.P1593717203067298836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324045 (n : ℕ) : ℤ :=
  A324045.P1593717203067298836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133477.P12030713238640017958

`A073185(n+1)-1`
-/

namespace A133477.P12030713238640017958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073185 (n + 1) - 1

end

end A133477.P12030713238640017958

noncomputable section

/-- A133477: Sum of cubefree divisors of n excluding 1.

Offset 1, canonical program `A133477.P12030713238640017958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133477 (n : ℕ) : ℤ :=
  A133477.P12030713238640017958.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134269.P13392884201192576431

`∑{d}[n+1, floor(A000010(n+1+#)/(n+1))]`
-/

namespace A134269.P13392884201192576431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(A000010 (n + 1 + d) : ℚ) / (n + 1 : ℚ)⌋

end

end A134269.P13392884201192576431

noncomputable section

/-- A134269: Number of solutions to the equation p^k - p^(k-1) = n, where k is a positive integer and p is prime.

Offset 1, canonical program `A134269.P13392884201192576431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134269 (n : ℕ) : ℤ :=
  A134269.P13392884201192576431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143231.P5537858308455081862

`A000010(n+1)*A002088(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143231.P5537858308455081862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A002088 (n + 1)

end

end A143231.P5537858308455081862

noncomputable section

/-- A143231: a(n) = A000010(n) * A002088(n).

Offset 1, canonical program `A143231.P5537858308455081862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143231 (n : ℕ) : ℤ :=
  A143231.P5537858308455081862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145541.P1388174157055416916

`eq[A000120(n+1), A056169(n+1)]+1`
-/

namespace A145541.P1388174157055416916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A145541.P1388174157055416916

noncomputable section

/-- A145541: A positive integer n is included if (the number of 1's in the binary representation of n) = (the number of exponents equal to 1 in the prime factorization of n).

Offset 1, canonical program `A145541.P1388174157055416916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A145541 (n : ℕ) : ℤ :=
  (A145541.P1388174157055416916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A145541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153034.P227806529242985448

`A003714(A001690(n+1)-1)`
-/

namespace A153034.P227806529242985448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A001690 (n + 1) - 1).toNat

end

end A153034.P227806529242985448

noncomputable section

/-- A153034: Numbers with adjacent 0's and no adjacent 1's in binary expansion.

Offset 1, canonical program `A153034.P227806529242985448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9981 terms. -/
def A153034 (n : ℕ) : ℤ :=
  A153034.P227806529242985448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9981 terms. -/
def A153034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153154.P7572810253408837238

`A003188(A341916(A341916(n)))`
-/

namespace A153154.P7572810253408837238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A341916 (A341916 n).toNat).toNat

end

end A153154.P7572810253408837238

noncomputable section

/-- A153154: Permutation of natural numbers: A059893-conjugate of A006068.

Offset 0, canonical program `A153154.P7572810253408837238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153154 (n : ℕ) : ℤ :=
  A153154.P7572810253408837238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A153154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156900.P15113045615155499423

`A000015(record[∏{p}[n, #]])`
-/

namespace A156900.P15113045615155499423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A156900.P15113045615155499423

noncomputable section

/-- A156900: a(n) = the smallest prime power >= the n-th positive squarefree integer.

Offset 1, canonical program `A156900.P15113045615155499423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A156900 (n : ℕ) : ℤ :=
  A156900.P15113045615155499423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A156900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159917.P11472049628818432676

`A003714(n)%4`
-/

namespace A159917.P11472049628818432676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003714 n) 4

end

end A159917.P11472049628818432676

noncomputable section

/-- A159917: Fixed point of the morphism 0 -> 01, 1 -> 2, 2 -> 01, starting from a(0) = 0.

Offset 0, canonical program `A159917.P11472049628818432676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159917 (n : ℕ) : ℤ :=
  A159917.P11472049628818432676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160889.P4866696132334601097

`A059376(n+1)/A000010(n+1)`
-/

namespace A160889.P4866696132334601097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160889.P4866696132334601097

noncomputable section

/-- A160889: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 4.

Offset 1, canonical program `A160889.P4866696132334601097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160889.P4866696132334601097.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160891.P12024979058820824222

`A059377(n+1)/A000010(n+1)`
-/

namespace A160891.P12024979058820824222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160891.P12024979058820824222

noncomputable section

/-- A160891: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 5.

Offset 1, canonical program `A160891.P12024979058820824222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160891.P12024979058820824222.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160893.P16935836706349167096

`A059378(n+1)/A000010(n+1)`
-/

namespace A160893.P16935836706349167096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160893.P16935836706349167096

noncomputable section

/-- A160893: a(n) = Sum_{d|n} Möbius(n/d)*d^5/phi(n).

Offset 1, canonical program `A160893.P16935836706349167096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160893.P16935836706349167096.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160895.P2150078273942846583

`A069091(n+1)/A000010(n+1)`
-/

namespace A160895.P2150078273942846583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160895.P2150078273942846583

noncomputable section

/-- A160895: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 7.

Offset 1, canonical program `A160895.P2150078273942846583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160895.P2150078273942846583.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160897.P16752404958731061009

`A069092(n+1)/A000010(n+1)`
-/

namespace A160897.P16752404958731061009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160897.P16752404958731061009

noncomputable section

/-- A160897: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 8.

Offset 1, canonical program `A160897.P16752404958731061009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160897 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160897.P16752404958731061009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160908.P5544833388897247786

`A069093(n+1)/A000010(n+1)`
-/

namespace A160908.P5544833388897247786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160908.P5544833388897247786

noncomputable section

/-- A160908: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 9.

Offset 1, canonical program `A160908.P5544833388897247786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160908.P5544833388897247786.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160953.P8938375607108306963

`A069094(n+1)/A000010(n+1)`
-/

namespace A160953.P8938375607108306963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160953.P8938375607108306963

noncomputable section

/-- A160953: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 10.

Offset 1, canonical program `A160953.P8938375607108306963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160953.P8938375607108306963.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160957.P14327442583971557876

`A069095(n+1)/A000010(n+1)`
-/

namespace A160957.P14327442583971557876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069095 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A160957.P14327442583971557876

noncomputable section

/-- A160957: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 11.

Offset 1, canonical program `A160957.P14327442583971557876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160957 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160957.P14327442583971557876.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162728.P11930583018672427365

`A000010(n+1)*A090740(n+1)`
-/

namespace A162728.P11930583018672427365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A090740 (n + 1)

end

end A162728.P11930583018672427365

noncomputable section

/-- A162728: G.f.: x/(1-x) = Sum_{n>=1} a(n)*log(1+x^n)/n.

Offset 1, canonical program `A162728.P11930583018672427365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162728 (n : ℕ) : ℤ :=
  A162728.P11930583018672427365.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162728.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163109.P21367379206329699

`A000010(A000005(n+1))`
-/

namespace A163109.P21367379206329699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 1)).toNat

end

end A163109.P21367379206329699

noncomputable section

/-- A163109: a(n) = phi(tau(n)).

Offset 1, canonical program `A163109.P21367379206329699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163109 (n : ℕ) : ℤ :=
  A163109.P21367379206329699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163368.P2070462197677030160

`A000010(A062069(n+1))`
-/

namespace A163368.P2070462197677030160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062069 (n + 1)).toNat

end

end A163368.P2070462197677030160

noncomputable section

/-- A163368: a(n) = phi(sigma(tau(n))).

Offset 1, canonical program `A163368.P2070462197677030160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163368 (n : ℕ) : ℤ :=
  A163368.P2070462197677030160.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164876.P16113870689143514141

`record[(n+1)²-A000203(n+1)*A000010(n+1)]`
-/

namespace A164876.P16113870689143514141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000203 (n + 1) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164876.P16113870689143514141

noncomputable section

/-- A164876: Record differences for n^2 - phi(n)*sigma(n).

Offset 1, canonical program `A164876.P16113870689143514141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A164876 (n : ℕ) : ℤ :=
  A164876.P16113870689143514141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 441 terms. -/
def A164876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164941.P10750457642055664605

`∑{d}[n+1, A000010(#)^floor(n/#)]`
-/

namespace A164941.P10750457642055664605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d : ℚ) ^ (⌊(n : ℚ) / (d : ℚ)⌋ : ℤ)

end

end A164941.P10750457642055664605

noncomputable section

/-- A164941: a(n) = Sum_{d|n} phi(n/d)^(d-1).

Offset 1, canonical program `A164941.P10750457642055664605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A164941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164941.P10750457642055664605.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A164941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166362.P15440525138620438344

`A000010(A018252(n+1))`
-/

namespace A166362.P15440525138620438344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A018252 (n + 1)).toNat

end

end A166362.P15440525138620438344

noncomputable section

/-- A166362: a(n) = phi(nonprime(n)).

Offset 1, canonical program `A166362.P15440525138620438344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166362 (n : ℕ) : ℤ :=
  A166362.P15440525138620438344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171262.P14994919271324457303

`eq[2*A000010(n+2), A000010(n+1)]+1`
-/

namespace A171262.P14994919271324457303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171262.P14994919271324457303

noncomputable section

/-- A171262: Numbers k such that phi(k) = 2*phi(k+1).

Offset 1, canonical program `A171262.P14994919271324457303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A171262 (n : ℕ) : ℤ :=
  (A171262.P14994919271324457303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A171262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171743.P3977573141868605585

`A000010(A001043(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171743.P3977573141868605585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001043 (n + 1)).toNat

end

end A171743.P3977573141868605585

noncomputable section

/-- A171743: a(n) = A000010(A001043(n)).

Offset 1, canonical program `A171743.P3977573141868605585`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171743 (n : ℕ) : ℤ :=
  A171743.P3977573141868605585.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172042.P6434497082481578345

`A000010(A083553(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172042.P6434497082481578345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A083553 (n + 1)).toNat

end

end A172042.P6434497082481578345

noncomputable section

/-- A172042: a(n) = A000010(A083553(n)).

Offset 1, canonical program `A172042.P6434497082481578345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A083553, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172042 (n : ℕ) : ℤ :=
  A172042.P6434497082481578345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A083553, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173327.P8802107638902619474

`eq[A000005(A000010(n+1)), A008472(n+1)]+1`
-/

namespace A173327.P8802107638902619474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173327.P8802107638902619474

noncomputable section

/-- A173327: Numbers k such that tau(phi(k))= sopf(k).

Offset 1, canonical program `A173327.P8802107638902619474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A173327 (n : ℕ) : ℤ :=
  (A173327.P8802107638902619474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A173327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173589.P18260503600219272099

`A003714(eq[3, A007895(n)])`
-/

namespace A173589.P18260503600219272099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173589.P18260503600219272099

noncomputable section

/-- A173589: Integers whose binary representation contains exactly three 1's, no two 1's being adjacent.

Offset 1, canonical program `A173589.P18260503600219272099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 679 terms. -/
def A173589 (n : ℕ) : ℤ :=
  A173589.P18260503600219272099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 679 terms. -/
def A173589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175732.P1828120795872806297

`gcd(A000010(n+1), A001615(n+1))`
-/

namespace A175732.P1828120795872806297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A001615 (n + 1))

end

end A175732.P1828120795872806297

noncomputable section

/-- A175732: a(n) = gcd(phi(n), psi(n)).

Offset 1, canonical program `A175732.P1828120795872806297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175732 (n : ℕ) : ℤ :=
  (A175732.P1828120795872806297.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176842.P18407075080678213704

`a(n-A000010(∑{e}[n+1, #]))+1` with `a(0)=0`
-/

namespace A176842.P18407075080678213704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat + 1

end

end A176842.P18407075080678213704

noncomputable section

/-- A176842: The number of iterations of the map x -> x - phi(bigomega(x)) needed to reach 1 starting at x=n.

Offset 1, canonical program `A176842.P18407075080678213704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176842 (n : ℕ) : ℤ :=
  (A176842.P18407075080678213704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179179.P432816049346132752

`A000010(n+1)-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179179.P432816049346132752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A001221 (n + 1)

end

end A179179.P432816049346132752

noncomputable section

/-- A179179: a(n) = phi(n) - omega(n) = A000010(n) - A001221(n).

Offset 1, canonical program `A179179.P432816049346132752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179179 (n : ℕ) : ℤ :=
  A179179.P432816049346132752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179243.P2943662787813260629

`eq[4, A219641(A104324(n))]`
-/

namespace A179243.P2943662787813260629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A104324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179243.P2943662787813260629

noncomputable section

/-- A179243: Numbers that have three terms in their Zeckendorf representation.

Offset 1, canonical program `A179243.P2943662787813260629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 969 terms. -/
def A179243 (n : ℕ) : ℤ :=
  (A179243.P2943662787813260629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 969 terms. -/
def A179243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179244.P8742142216849556960

`eq[3, A007318(A104324(n))]`
-/

namespace A179244.P8742142216849556960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A104324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179244.P8742142216849556960

noncomputable section

/-- A179244: Numbers that have 4 terms in their Zeckendorf representation.

Offset 1, canonical program `A179244.P8742142216849556960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3060 terms. -/
def A179244 (n : ℕ) : ℤ :=
  (A179244.P8742142216849556960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3060 terms. -/
def A179244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180633.P2164913276918581847

`1+a(A000010(n)-1)` with `a(0)=0, a(1)=1`
-/

namespace A180633.P2164913276918581847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A000010 n - 1).toNat

end

end A180633.P2164913276918581847

noncomputable section

/-- A180633: a(n) is the number of iterations of function f(x) = phi(x)-1 needed before zero is reached, when starting from the initial value x = n.

Offset 0, canonical program `A180633.P2164913276918581847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180633 (n : ℕ) : ℤ :=
  (A180633.P2164913276918581847.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180643.P1113260082687038800

`eq[1, A053000(A000010(n+1))]+1`
-/

namespace A180643.P1113260082687038800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180643.P1113260082687038800

noncomputable section

/-- A180643: Numbers n such that 1+phi(n)^2 is prime. Phi is the Euler totient function.

Offset 1, canonical program `A180643.P1113260082687038800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A180643 (n : ℕ) : ℤ :=
  (A180643.P1113260082687038800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. -/
def A180643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182576.P13232943474279536911

`ceil(A104324(n²)/2)`
-/

namespace A182576.P13232943474279536911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104324 (n ^ 2) : ℚ) / 2⌉

end

end A182576.P13232943474279536911

noncomputable section

/-- A182576: Number of 1's in the Zeckendorf representation of n^2.

Offset 0, canonical program `A182576.P13232943474279536911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A182576 (n : ℕ) : ℤ :=
  A182576.P13232943474279536911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A182576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182816.P15538426458893494896

`∏{p}[n+1, gcd(n, A000010(#))+1]`
-/

namespace A182816.P15538426458893494896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.gcd (n : ℤ) (A000010 p) + 1)

end

end A182816.P15538426458893494896

noncomputable section

/-- A182816: Number of values b in Z/nZ such that b^n = b.

Offset 1, canonical program `A182816.P15538426458893494896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182816 (n : ℕ) : ℤ :=
  (A182816.P15538426458893494896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186749.P7600764789252532083

`A000010(A051953(n+1)+3)`
-/

namespace A186749.P7600764789252532083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A051953 (n + 1) + 3).toNat

end

end A186749.P7600764789252532083

noncomputable section

/-- A186749: a(n) = phi(n - phi(n) + 3).

Offset 1, canonical program `A186749.P7600764789252532083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A186749 (n : ℕ) : ℤ :=
  A186749.P7600764789252532083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A186749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188020.P10686154921417870516

`A003849(n)*A188470(A123070(n+1))`
-/

namespace A188020.P10686154921417870516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n * A188470 (A123070 (n + 1)).toNat

end

end A188020.P10686154921417870516

noncomputable section

/-- A188020: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=7, [ ]=floor.

Offset 1, canonical program `A188020.P10686154921417870516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188020 (n : ℕ) : ℤ :=
  A188020.P10686154921417870516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188666.P9499919298409577918

`A000015(∑[n%2]+1)`
-/

namespace A188666.P9499919298409577918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188666.P9499919298409577918

noncomputable section

/-- A188666: Largest m <= n such that lcm(m, m+1, ..., n) = lcm(1, 2, ..., n).

Offset 1, canonical program `A188666.P9499919298409577918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188666 (n : ℕ) : ℤ :=
  A188666.P9499919298409577918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190503.P4853042845525181551

`eq[1, A000203(n+1)%A000203(A000010(n+1))+1]+1`
-/

namespace A190503.P4853042845525181551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000203 (A000010 (n + 1)).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190503.P4853042845525181551

noncomputable section

/-- A190503: Numbers k such that sigma(phi(k)) divides sigma(k).

Offset 1, canonical program `A190503.P4853042845525181551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A190503 (n : ℕ) : ℤ :=
  (A190503.P4853042845525181551.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. -/
def A190503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193453.P6993732054623460770

`A001227(A000010(n+1))`
-/

namespace A193453.P6993732054623460770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000010 (n + 1)).toNat

end

end A193453.P6993732054623460770

noncomputable section

/-- A193453: Number of odd divisors of phi(n).

Offset 1, canonical program `A193453.P6993732054623460770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193453 (n : ℕ) : ℤ :=
  A193453.P6993732054623460770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193454.P14726844864907007468

`A000593(A000010(n+1))`
-/

namespace A193454.P14726844864907007468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000010 (n + 1)).toNat

end

end A193454.P14726844864907007468

noncomputable section

/-- A193454: Sum of odd divisors of phi(n).

Offset 1, canonical program `A193454.P14726844864907007468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193454 (n : ℕ) : ℤ :=
  A193454.P14726844864907007468.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A193454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A195609.P9577754204178047134

`eq[1, A134451(A268726(n)+n)]`
-/

namespace A195609.P9577754204178047134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A268726 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195609.P9577754204178047134

noncomputable section

/-- A195609: Numbers n such that Sum_{i=1..n} A(i) = A(n)*A(n+1)/4, where A(n) = A000069(n).

Offset 1, canonical program `A195609.P9577754204178047134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A195609 (n : ℕ) : ℤ :=
  (A195609.P9577754204178047134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. -/
def A195609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196524.P17782809021198449445

`A048691(n+1)*A000010(n+1)`
-/

namespace A196524.P17782809021198449445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) * A000010 (n + 1)

end

end A196524.P17782809021198449445

noncomputable section

/-- A196524: a(n) = phi(n)*tau(n^2).

Offset 1, canonical program `A196524.P17782809021198449445`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A196524 (n : ℕ) : ℤ :=
  A196524.P17782809021198449445.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A048691, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A196524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197218.P5916423780579939464

`A000010(A000032(n))`
-/

namespace A197218.P5916423780579939464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000032 n).toNat

end

end A197218.P5916423780579939464

noncomputable section

/-- A197218: a(n) = phi(Lucas(n)).

Offset 0, canonical program `A197218.P5916423780579939464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197218 (n : ℕ) : ℤ :=
  A197218.P5916423780579939464.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A197218.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197219.P1176045312080678236

`A000032(floor(A000010(n)+a(n-1))-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A197219.P1176045312080678236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 (A000010 n + a (n - 1) - a (n - 1)).toNat

end

end A197219.P1176045312080678236

noncomputable section

/-- A197219: a(0) = 2, a(n) = Lucas(phi(n)) for n > 0.

Offset 0, canonical program `A197219.P1176045312080678236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A197219 (n : ℕ) : ℤ :=
  A197219.P1176045312080678236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A197219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199514.P11177618966910493986

`(A066779(n+2)-A066779(n+1))/A009195(n+2)`
-/

namespace A199514.P11177618966910493986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066779 (n + 2) - A066779 (n + 1) : ℚ) / (A009195 (n + 2) : ℚ)

end

end A199514.P11177618966910493986

noncomputable section

/-- A199514: Numerators of zeros to a symmetric polynomial. Numerators of mu(n)^2*(n/(n - phi(n))).

Offset 2, canonical program `A199514.P11177618966910493986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199514 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A199514.P11177618966910493986.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A199514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202393.P11597859668486268077

`A010888(A019506(n+1))`
-/

namespace A202393.P11597859668486268077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A019506 (n + 1)).toNat

end

end A202393.P11597859668486268077

noncomputable section

/-- A202393: Digital root of Hoax Numbers A019506.

Offset 1, canonical program `A202393.P11597859668486268077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202393 (n : ℕ) : ℤ :=
  A202393.P11597859668486268077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A210845.P13189797381442615972

`lt[A003557(A000010(2*(n+1))), 3]+1`
-/

namespace A210845.P13189797381442615972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000010 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A210845.P13189797381442615972

noncomputable section

/-- A210845: Values n for which A055034(n) is squarefree.

Offset 1, canonical program `A210845.P13189797381442615972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. -/
def A210845 (n : ℕ) : ℤ :=
  (A210845.P13189797381442615972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. -/
def A210845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213540.P1206337804366464910

`A003714(n)*8+3`
-/

namespace A213540.P1206337804366464910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n * 8 + 3

end

end A213540.P1206337804366464910

noncomputable section

/-- A213540: Numbers k such that k AND k*2 = 2, where AND is the bitwise AND operator.

Offset 1, canonical program `A213540.P1206337804366464910`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213540 (n : ℕ) : ℤ :=
  A213540.P1206337804366464910.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214287.P11295175971518832110

`p?[A000010(n+1)-1]`
-/

namespace A214287.P11295175971518832110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214287.P11295175971518832110

noncomputable section

/-- A214287: Primes of the form phi(n)-1 sorted by increasing n, where phi is the Euler totient function.

Offset 1, canonical program `A214287.P11295175971518832110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214287 (n : ℕ) : ℤ :=
  A214287.P11295175971518832110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214288.P3436294397742324961

`p?[A000010(n+1)+1]`
-/

namespace A214288.P3436294397742324961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214288.P3436294397742324961

noncomputable section

/-- A214288: Primes of the form phi(n)+1 sorted by increasing n, where phi is the Euler totient function.

Offset 1, canonical program `A214288.P3436294397742324961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214288 (n : ℕ) : ℤ :=
  A214288.P3436294397742324961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214974.P2106782757956089730

`eq[A007895(n+1), A116543(n+1)]+1`
-/

namespace A214974.P2106782757956089730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A214974.P2106782757956089730

noncomputable section

/-- A214974: Numbers k for which A116543(k) = A007895(k); i.e., the Lucas and Zeckendorf representations of k have the same length.

Offset 1, canonical program `A214974.P2106782757956089730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A214974 (n : ℕ) : ℤ :=
  (A214974.P2106782757956089730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2368 terms. -/
def A214974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214975.P9208562958097402134

`lt[A116543(n), A007895(n)]`
-/

namespace A214975.P9208562958097402134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214975.P9208562958097402134

noncomputable section

/-- A214975: Numbers k for which A116543(k) < A007895(k); i.e., the Lucas representation of k is shorter than the Zeckendorf representation.

Offset 1, canonical program `A214975.P9208562958097402134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A214975 (n : ℕ) : ℤ :=
  (A214975.P9208562958097402134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4028 terms. -/
def A214975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214976.P15271784311769597705

`lt[A007895(n), A116543(n)]`
-/

namespace A214976.P15271784311769597705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214976.P15271784311769597705

noncomputable section

/-- A214976: Numbers k for which A116543(k) > A007895(k); i.e., the Lucas representation of k is longer than the Zeckendorf representation.

Offset 1, canonical program `A214976.P15271784311769597705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. -/
def A214976 (n : ℕ) : ℤ :=
  (A214976.P15271784311769597705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3604 terms. -/
def A214976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214977.P6749457083996536388

`∑[A116543(n+1)]`
-/

namespace A214977.P6749457083996536388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214977.P6749457083996536388

noncomputable section

/-- A214977: Number of terms in Lucas representations of 1,2,...,n.

Offset 1, canonical program `A214977.P6749457083996536388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214977 (n : ℕ) : ℤ :=
  A214977.P6749457083996536388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216836.P6437354700397976852

`eq[0, A000010(n+1)%A007953(n+1)]+1`
-/

namespace A216836.P6437354700397976852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A007953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216836.P6437354700397976852

noncomputable section

/-- A216836: Numbers n such that sum of decimal digits of n divides phi(n).

Offset 1, canonical program `A216836.P6437354700397976852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2688 terms. -/
def A216836 (n : ℕ) : ℤ :=
  (A216836.P6437354700397976852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2688 terms. -/
def A216836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217139.P16840314535765683681

`eq[A000010(C(3, n)+n), A000010(n+12)]`
-/

namespace A217139.P16840314535765683681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 3 n + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217139.P16840314535765683681

noncomputable section

/-- A217139: Numbers n such that phi(n) = phi(n+12), with Euler's totient function phi = A000010.

Offset 1, canonical program `A217139.P16840314535765683681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A217139 (n : ℕ) : ℤ :=
  (A217139.P16840314535765683681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. -/
def A217139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217863.P4277841558715900929

`A000010(A003418(n+1))`
-/

namespace A217863.P4277841558715900929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003418 (n + 1)).toNat

end

end A217863.P4277841558715900929

noncomputable section

/-- A217863: a(n) = phi(lcm(1,2,3,...,n)), where phi is Euler's totient function.

Offset 1, canonical program `A217863.P4277841558715900929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217863 (n : ℕ) : ℤ :=
  A217863.P4277841558715900929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217863.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219638.P10933090665757419275

`comp[n-ceil(A104324(n)/2)]`
-/

namespace A219638.P10933090665757419275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(A104324 n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219638.P10933090665757419275

noncomputable section

/-- A219638: Complement of A219640. Natural numbers that do not occur in A219641.

Offset 1, canonical program `A219638.P10933090665757419275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219638 (n : ℕ) : ℤ :=
  (A219638.P10933090665757419275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225530.P14142544683776780979

`A000010(C(2, n²)+n)`
-/

namespace A225530.P14142544683776780979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (n ^ 2) + n)

end

end A225530.P14142544683776780979

noncomputable section

/-- A225530: Number of ordered pairs (i,j) with i,j >= 0, i + j = n and gcd(i,j) <= 1.

Offset 0, canonical program `A225530.P14142544683776780979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A225530 (n : ℕ) : ℤ :=
  A225530.P14142544683776780979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A225530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226133.P1863923535064680015

`eq[2, A051709(24*n+1)]`
-/

namespace A226133.P1863923535064680015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (24 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226133.P1863923535064680015

noncomputable section

/-- A226133: Integers of the form (p*q-1)/24 where p < q are primes.

Offset 1, canonical program `A226133.P1863923535064680015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A226133 (n : ℕ) : ℤ :=
  (A226133.P1863923535064680015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. -/
def A226133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226385.P8581291142238122846

`lt[A336551(A000010(n+1)), A336551(n+1)]+1`
-/

namespace A226385.P8581291142238122846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226385.P8581291142238122846

noncomputable section

/-- A226385: Numbers n such that rad(phi(n)) > phi(rad(n)), where rad(n) is the squarefree kernel of n, and phi is Euler's totient function.

Offset 1, canonical program `A226385.P8581291142238122846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A226385 (n : ℕ) : ℤ :=
  (A226385.P8581291142238122846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A226385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226586.P1032371712486698964

`A152677(n+3)-A000010(A028982(n+3))`
-/

namespace A226586.P1032371712486698964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152677 (n + 3) - A000010 (A028982 (n + 3)).toNat

end

end A226586.P1032371712486698964

noncomputable section

/-- A226586: Odd values of sigma(n) - phi(n) in the order of appearance and with repetition.

Offset 1, canonical program `A226586.P1032371712486698964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. -/
def A226586 (n : ℕ) : ℤ :=
  A226586.P1032371712486698964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. -/
def A226586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228232.P13142545516159782405

`A057427(n)+2*A348196(n+1)`
-/

namespace A228232.P13142545516159782405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 2 * A348196 (n + 1)

end

end A228232.P13142545516159782405

noncomputable section

/-- A228232: Number of strict Gaussian primes of norm less than or equal to n in the first quadrant.

Offset 1, canonical program `A228232.P13142545516159782405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228232 (n : ℕ) : ℤ :=
  A228232.P13142545516159782405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228498.P13150910257080311854

`A000203((n+1)²)+A000010((n+1)²)-2*(n+1)²`
-/

namespace A228498.P13150910257080311854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) + A000010 ((n + 1) ^ 2) - (2 * (n + 1) ^ 2 : ℤ)

end

end A228498.P13150910257080311854

noncomputable section

/-- A228498: a(n) = sigma(n^2) + phi(n^2) - 2n^2.

Offset 1, canonical program `A228498.P13150910257080311854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228498 (n : ℕ) : ℤ :=
  A228498.P13150910257080311854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230834.P9285383202588386292

`∪[A001248(n+1), A107890(n+1)]`
-/

namespace A230834.P9285383202588386292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230834.P9285383202588386292

noncomputable section

/-- A230834: Loeschian semiprimes: semiprimes of the form x^2 + x*y + y^2.

Offset 1, canonical program `A230834.P9285383202588386292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230834 (n : ℕ) : ℤ :=
  (A230834.P9285383202588386292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230918.P10922405315956518655

`record[gcd(n+1, A002378(A009195(n+1)-1))]`
-/

namespace A230918.P10922405315956518655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002378 (A009195 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230918.P10922405315956518655

noncomputable section

/-- A230918: Numbers k such that phi(k)^phi(k) == gcd(k, phi(k)) (mod k), where phi is the Euler totient function.

Offset 1, canonical program `A230918.P10922405315956518655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3146 terms. -/
def A230918 (n : ℕ) : ℤ :=
  (A230918.P10922405315956518655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3146 terms. -/
def A230918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231099.P2171262129548700046

`p?[A000010(A000203(n+1))+A295302(n+1)+1+n]`
-/

namespace A231099.P2171262129548700046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat + (A295302 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231099.P2171262129548700046

noncomputable section

/-- A231099: Primes expressible as phi(sigma(n)) + sigma(phi(n)), in order of their occurrence.

Offset 1, canonical program `A231099.P2171262129548700046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A231099 (n : ℕ) : ℤ :=
  A231099.P2171262129548700046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A231099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233541.P8613134617587554925

`A000203(n+1)+A000010(n+1)+A000005(n+1)`
-/

namespace A233541.P8613134617587554925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1) + A000005 (n + 1)

end

end A233541.P8613134617587554925

noncomputable section

/-- A233541: a(n) = sigma(n) + phi(n) + d(n).

Offset 1, canonical program `A233541.P8613134617587554925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233541 (n : ℕ) : ℤ :=
  A233541.P8613134617587554925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A233541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240502.P14660137439257369676

`A034386(n)/A055204(A028310(n))`
-/

namespace A240502.P14660137439257369676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A055204 (A028310 n).toNat : ℚ)

end

end A240502.P14660137439257369676

noncomputable section

/-- A240502: Product of primes appearing in the factorization of n! with even exponents.

Offset 0, canonical program `A240502.P14660137439257369676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A240502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240502.P14660137439257369676.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A240502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245497.P11908119768427537626

`A000010(n+3)²/2`
-/

namespace A245497.P11908119768427537626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) ^ 2 : ℚ) / 2

end

end A245497.P11908119768427537626

noncomputable section

/-- A245497: a(n) = phi(n)^2/2, where phi(n) = A000010(n), the Euler totient function.

Offset 3, canonical program `A245497.P11908119768427537626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245497 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245497.P11908119768427537626.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247068.P6299063819757752497

`p?[A003714(n)]`
-/

namespace A247068.P6299063819757752497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247068.P6299063819757752497

noncomputable section

/-- A247068: Primes whose base-2 expansion has no two consecutive 1's.

Offset 1, canonical program `A247068.P6299063819757752497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A247068 (n : ℕ) : ℤ :=
  A247068.P6299063819757752497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. -/
def A247068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249242.P1072947971439864743

`filter[A357696(n+1), A008966(#)]`
-/

namespace A249242.P1072947971439864743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A249242.P1072947971439864743

noncomputable section

/-- A249242: Squarefree primitive abundant numbers (using the second definition: having no abundant proper divisors, cf. A091191).

Offset 1, canonical program `A249242.P1072947971439864743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. -/
def A249242 (n : ℕ) : ℤ :=
  A249242.P1072947971439864743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. -/
def A249242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249353.P10664740351747725873

`A000010(n+1)+A051027(n+1)`
-/

namespace A249353.P10664740351747725873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A051027 (n + 1)

end

end A249353.P10664740351747725873

noncomputable section

/-- A249353: a(n) = phi(n) + sigma(sigma(n)).

Offset 1, canonical program `A249353.P10664740351747725873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249353 (n : ℕ) : ℤ :=
  A249353.P10664740351747725873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A249353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255385.P15739975789967617263

`A000203(n+1)+A000010(n+1)-A000005(n+1)`
-/

namespace A255385.P15739975789967617263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1) - A000005 (n + 1)

end

end A255385.P15739975789967617263

noncomputable section

/-- A255385: a(n) = sigma(n) + phi(n) - tau(n).

Offset 1, canonical program `A255385.P15739975789967617263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255385 (n : ℕ) : ℤ :=
  A255385.P15739975789967617263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258434.P9590208974942017901

`A000290(n+1)-A000010(n+1)`
-/

namespace A258434.P9590208974942017901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A000010 (n + 1)

end

end A258434.P9590208974942017901

noncomputable section

/-- A258434: n^2 - phi(n).

Offset 1, canonical program `A258434.P9590208974942017901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258434 (n : ℕ) : ℤ :=
  A258434.P9590208974942017901.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261092.P3361888197169044314

`char[A219640(n)]`
-/

namespace A261092.P3361888197169044314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A261092.P3361888197169044314

noncomputable section

/-- A261092: First differences of A261093; characteristic function for A219640.

Offset 0, canonical program `A261092.P3361888197169044314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261092 (n : ℕ) : ℤ :=
  (A261092.P3361888197169044314.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261095.P11813985126909535147

`A219640(n+1)-A219640(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261095.P11813985126909535147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (n + 1) - A219640 n

end

end A261095.P11813985126909535147

noncomputable section

/-- A261095: First differences of A219640: a(n) = A219640(n+1) - A219640(n).

Offset 0, canonical program `A261095.P11813985126909535147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261095 (n : ℕ) : ℤ :=
  A261095.P11813985126909535147.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261872.P10858790068857773858

`A010874(A000010(n+1))`
-/

namespace A261872.P10858790068857773858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A000010 (n + 1)).toNat

end

end A261872.P10858790068857773858

noncomputable section

/-- A261872: a(n) = phi(n) mod 5, where phi is the Euler totient function.

Offset 1, canonical program `A261872.P10858790068857773858`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261872 (n : ℕ) : ℤ :=
  A261872.P10858790068857773858.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264724.P4341267038982265979

`A000290(n+1)+A000010(n+1)`
-/

namespace A264724.P4341267038982265979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + A000010 (n + 1)

end

end A264724.P4341267038982265979

noncomputable section

/-- A264724: a(n) = n^2 + phi(n).

Offset 1, canonical program `A264724.P4341267038982265979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264724 (n : ℕ) : ℤ :=
  A264724.P4341267038982265979.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A264724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A271187.P2014690052428888649

`A007913(A007318(n))`
-/

namespace A271187.P2014690052428888649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007318 n).toNat

end

end A271187.P2014690052428888649

noncomputable section

/-- A271187: Triangle T(n,k) read by rows: T(n,k) is the squarefree part of C(n,k).

Offset 0, canonical program `A271187.P2014690052428888649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A271187 (n : ℕ) : ℤ :=
  A271187.P2014690052428888649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A271187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272040.P17165963704395840071

`A000010(A000129(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272040.P17165963704395840071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000129 (n + 1)).toNat

end

end A272040.P17165963704395840071

noncomputable section

/-- A272040: a(n) = A000010(A000129(n)).

Offset 1, canonical program `A272040.P17165963704395840071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272040 (n : ℕ) : ℤ :=
  A272040.P17165963704395840071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276503.P3868539189465671820

`eq[A000010(n+11), A000010(n+1)]+1`
-/

namespace A276503.P3868539189465671820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276503.P3868539189465671820

noncomputable section

/-- A276503: Numbers n such that phi(n) = phi(n+10), with Euler's totient function phi = A000010.

Offset 1, canonical program `A276503.P3868539189465671820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A276503 (n : ℕ) : ℤ :=
  (A276503.P3868539189465671820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A276503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277331.P10020327164330900423

`A253563(A003714(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277331.P10020327164330900423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A003714 n).toNat

end

end A277331.P10020327164330900423

noncomputable section

/-- A277331: a(n) = A253563(A003714(n)).

Offset 0, canonical program `A277331.P10020327164330900423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277331 (n : ℕ) : ℤ :=
  A277331.P10020327164330900423.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277335.P13601565206693033398

`3*A003714(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277335.P13601565206693033398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003714 n

end

end A277335.P13601565206693033398

noncomputable section

/-- A277335: Fibbinary numbers multiplied by three: a(n) = 3*A003714(n); Numbers where all 1-bits occur in runs of even length.

Offset 0, canonical program `A277335.P13601565206693033398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277335 (n : ℕ) : ℤ :=
  A277335.P13601565206693033398.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280577.P14731675543969906002

`A000010(n+1)+A004526(n+1)`
-/

namespace A280577.P14731675543969906002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A004526 (n + 1)

end

end A280577.P14731675543969906002

noncomputable section

/-- A280577: a(n) = eulerphi(n) + floor(n/2).

Offset 1, canonical program `A280577.P14731675543969906002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280577 (n : ℕ) : ℤ :=
  A280577.P14731675543969906002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280799.P17483720520370020034

`A049502(A000010(n+1))`
-/

namespace A280799.P17483720520370020034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A000010 (n + 1)).toNat

end

end A280799.P17483720520370020034

noncomputable section

/-- A280799: a(n) = A049502(phi(n)).

Offset 1, canonical program `A280799.P17483720520370020034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280799 (n : ℕ) : ℤ :=
  A280799.P17483720520370020034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280877.P16270623710386896264

`lt[A000010(A028310(n)), A256502(n+1)]`
-/

namespace A280877.P16270623710386896264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280877.P16270623710386896264

noncomputable section

/-- A280877: Occurrences of decrease of the probability density P(a(n)) of coprime numbers k,m, satisfying 1 <= k <= a(n) and 1 <= m <= a(n); i.e., P(a(n)) < P(a(n)-1).

Offset 1, canonical program `A280877.P16270623710386896264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A280877 (n : ℕ) : ℤ :=
  (A280877.P16270623710386896264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. -/
def A280877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283808.P7073396927989824590

`record[gcd(n+1, (n+1)%A000010(A000010(n+1)))]`
-/

namespace A283808.P7073396927989824590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A000010 (A000010 (n + 1)).toNat))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283808.P7073396927989824590

noncomputable section

/-- A283808: Numbers k such that phi(phi(k)) divides k, where phi(k) is A000010(k).

Offset 1, canonical program `A283808.P7073396927989824590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A283808 (n : ℕ) : ℤ :=
  (A283808.P7073396927989824590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A283808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285183.P13386231580568449647

`round(A328260(n+1)/A000010(n+1))`
-/

namespace A285183.P13386231580568449647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A328260 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))

end

end A285183.P13386231580568449647

noncomputable section

/-- A285183: Nearest integer to n*omega(n)/phi(n).

Offset 1, canonical program `A285183.P13386231580568449647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285183 (n : ℕ) : ℤ :=
  A285183.P13386231580568449647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286568.P15358631486427401094

`1/2*(2+(A000010(n+1)+A286357(n+1))²-A000010(n+1)-3*A286357(n+1))`
-/

namespace A286568.P15358631486427401094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A000010 (n + 1) + A286357 (n + 1)) ^ 2 - A000010 (n + 1) - 3 * A286357 (n + 1) : ℚ)

end

end A286568.P15358631486427401094

noncomputable section

/-- A286568: Compound filter (phi(n) & 2-adic valuation of sigma(n)): a(n) = P(A000010(n), A286357(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286568.P15358631486427401094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286568 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286568.P15358631486427401094.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290434.P16415859728572519795

`eq[A000010(A001414(n+1)+1), A288654(n+1)]+1`
-/

namespace A290434.P16415859728572519795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001414 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A290434.P16415859728572519795

noncomputable section

/-- A290434: Semiprimes of the form pq such that p+q+1 is prime.

Offset 1, canonical program `A290434.P16415859728572519795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2727 terms. -/
def A290434 (n : ℕ) : ℤ :=
  (A290434.P16415859728572519795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2727 terms. -/
def A290434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291756.P7501113078620905802

`1/2*(2+(A003557(n+1)+A000010(n+1))²-A003557(n+1)-3*A000010(n+1))`
-/

namespace A291756.P7501113078620905802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A003557 (n + 1) + A000010 (n + 1)) ^ 2 - A003557 (n + 1) - 3 * A000010 (n + 1) : ℚ)

end

end A291756.P7501113078620905802

noncomputable section

/-- A291756: Compound filter: a(n) = P(A003557(n), A000010(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A291756.P7501113078620905802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291756.P7501113078620905802.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292786.P1789774906474236372

`A001615(n+1)-A000010(n+1)`
-/

namespace A292786.P1789774906474236372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - A000010 (n + 1)

end

end A292786.P1789774906474236372

noncomputable section

/-- A292786: a(n) = psi(n) - phi(n).

Offset 1, canonical program `A292786.P1789774906474236372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292786 (n : ℕ) : ℤ :=
  A292786.P1789774906474236372.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A292786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294283.P1633113175361013834

`A294060(n+1)+A262871(A028310(n))`
-/

namespace A294283.P1633113175361013834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (n + 1) + A262871 (A028310 n).toNat

end

end A294283.P1633113175361013834

noncomputable section

/-- A294283: Sum of the larger parts of the partitions of n into two distinct parts with smaller part squarefree.

Offset 1, canonical program `A294283.P1633113175361013834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294283 (n : ℕ) : ℤ :=
  A294283.P1633113175361013834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294442.P13782676266892454172

`A093873(A092754(n+1))`
-/

namespace A294442.P13782676266892454172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A092754 (n + 1)).toNat

end

end A294442.P13782676266892454172

noncomputable section

/-- A294442: Kepler's tree of fractions, read across rows (the fraction i/j is represented as the pair i,j).

Offset 0, canonical program `A294442.P13782676266892454172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A294442 (n : ℕ) : ℤ :=
  A294442.P13782676266892454172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A294442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295313.P4164146466195802631

`A009195(A000203(n+1))`
-/

namespace A295313.P4164146466195802631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A000203 (n + 1)).toNat

end

end A295313.P4164146466195802631

noncomputable section

/-- A295313: a(n) = gcd(sigma(n), phi(sigma(n))).

Offset 1, canonical program `A295313.P4164146466195802631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295313 (n : ℕ) : ℤ :=
  A295313.P4164146466195802631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295500.P6030466195170645878

`A000010(A024023(n+1))`
-/

namespace A295500.P6030466195170645878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A024023 (n + 1)).toNat

end

end A295500.P6030466195170645878

noncomputable section

/-- A295500: a(n) = phi(3^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295500.P6030466195170645878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295500 (n : ℕ) : ℤ :=
  A295500.P6030466195170645878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295502.P2320973420440957742

`A000010(A024049(n+1))`
-/

namespace A295502.P2320973420440957742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A024049 (n + 1)).toNat

end

end A295502.P2320973420440957742

noncomputable section

/-- A295502: a(n) = phi(5^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295502.P2320973420440957742`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295502 (n : ℕ) : ℤ :=
  A295502.P2320973420440957742.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295660.P1297563117309372631

`A000120(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295660.P1297563117309372631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000010 (n + 1)).toNat

end

end A295660.P1297563117309372631

noncomputable section

/-- A295660: Binary weight of Euler phi: a(n) = A000120(A000010(n)).

Offset 1, canonical program `A295660.P1297563117309372631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295660 (n : ℕ) : ℤ :=
  A295660.P1297563117309372631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295661.P311646455530732485

`lt[1, A056191(n+1)]+1`
-/

namespace A295661.P311646455530732485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A295661.P311646455530732485

noncomputable section

/-- A295661: Numbers with at least one odd exponent larger than one in their prime factorization.

Offset 1, canonical program `A295661.P311646455530732485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A295661 (n : ℕ) : ℤ :=
  (A295661.P311646455530732485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A295661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295663.P17834831274286769221

`A295664(n+1)-A056169(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295663.P17834831274286769221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1) - A056169 (n + 1)

end

end A295663.P17834831274286769221

noncomputable section

/-- A295663: a(n) = A295664(n) - A056169(n); 2-adic valuation of tau(n) minus the number of unitary prime divisors of n.

Offset 1, canonical program `A295663.P17834831274286769221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A295664, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295663 (n : ℕ) : ℤ :=
  A295663.P17834831274286769221.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A295664, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296023.P3653154413069258971

`2*eq[gcd(2*n+1, A000010(2*n+1)), A054024(n+1)]+1`
-/

namespace A296023.P3653154413069258971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A000010 (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A296023.P3653154413069258971

noncomputable section

/-- A296023: Numbers n such that there is precisely 1 group of order n and 2 of order n + 1.

Offset 1, canonical program `A296023.P3653154413069258971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A296023 (n : ℕ) : ℤ :=
  (A296023.P3653154413069258971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A296023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297086.P2157316894102876955

`A063524(A009195(n+1))`
-/

namespace A297086.P2157316894102876955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009195 (n + 1)).toNat

end

end A297086.P2157316894102876955

noncomputable section

/-- A297086: a(n) = 1 if gcd(n, phi(n)) == 1 otherwise 0.

Offset 1, canonical program `A297086.P2157316894102876955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297086 (n : ℕ) : ℤ :=
  A297086.P2157316894102876955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297170.P563848719445015889

`gcd(A000010(n+1), A001065(n+1))`
-/

namespace A297170.P563848719445015889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A001065 (n + 1))

end

end A297170.P563848719445015889

noncomputable section

/-- A297170: a(n) = gcd(phi(n), sigma(n)-n).

Offset 1, canonical program `A297170.P563848719445015889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297170 (n : ℕ) : ℤ :=
  (A297170.P563848719445015889.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297250.P2128841080923313740

`lt[A257075(A330740(n)), 0]`
-/

namespace A297250.P2128841080923313740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A330740 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297250.P2128841080923313740

noncomputable section

/-- A297250: Numbers whose base-3 digits having equal up-variation and down-variation; see Comments.

Offset 1, canonical program `A297250.P2128841080923313740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A297250 (n : ℕ) : ℤ :=
  (A297250.P2128841080923313740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A297250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299822.P17822751971997811856

`A000010(n+1)*A007947(n+1)`
-/

namespace A299822.P17822751971997811856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A007947 (n + 1)

end

end A299822.P17822751971997811856

noncomputable section

/-- A299822: Product of Euler's totient and the squarefree kernel, a(n) = phi(n)*rad(n).

Offset 1, canonical program `A299822.P17822751971997811856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A299822 (n : ℕ) : ℤ :=
  A299822.P17822751971997811856.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A299822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300718.P14759680827716810888

`A000010(n+1)-A300717(n+1)`
-/

namespace A300718.P14759680827716810888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A300717 (n + 1)

end

end A300718.P14759680827716810888

noncomputable section

/-- A300718: Möbius transform of A010848, number of numbers k <= n such that at least one prime factor of n is not a prime factor of k.

Offset 1, canonical program `A300718.P14759680827716810888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A300717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300718 (n : ℕ) : ℤ :=
  A300718.P14759680827716810888.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A300717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305876.P10182350532949549985

`A003714(2^n)`
-/

namespace A305876.P10182350532949549985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (2 ^ n)

end

end A305876.P10182350532949549985

noncomputable section

/-- A305876: a(n) = Fibbinary(2^n).

Offset 0, canonical program `A305876.P10182350532949549985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305876 (n : ℕ) : ℤ :=
  A305876.P10182350532949549985.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305876.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306369.P8843425213670804087

`A000010(n+1)+A069359(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306369.P8843425213670804087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A069359 (n + 1)

end

end A306369.P8843425213670804087

noncomputable section

/-- A306369: a(n) = A000010(n) + A069359(n).

Offset 1, canonical program `A306369.P8843425213670804087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306369 (n : ℕ) : ℤ :=
  A306369.P8843425213670804087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307342.P15063499458322460120

`eq[4, A318473(n+1)]+1`
-/

namespace A307342.P15063499458322460120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307342.P15063499458322460120

noncomputable section

/-- A307342: Products of four primes, except fourth powers of primes.

Offset 1, canonical program `A307342.P15063499458322460120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9186 terms. -/
def A307342 (n : ℕ) : ℤ :=
  (A307342.P15063499458322460120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9186 terms. -/
def A307342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308470.P9784018281340306768

`A004526(gcd(A000010(n+1), A005563(2*n+1)))`
-/

namespace A308470.P9784018281340306768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.gcd (A000010 (n + 1)) (A005563 (2 * n + 1)))

end

end A308470.P9784018281340306768

noncomputable section

/-- A308470: a(n) = (gcd(phi(n), 4*n^2 - 1) - 1)/2, where phi is A000010, Euler's totient function.

Offset 1, canonical program `A308470.P9784018281340306768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A308470 (n : ℕ) : ℤ :=
  A308470.P9784018281340306768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A308470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308735.P3671418607265980863

`∩[A074173(n+1)-2, A074173(n+1)]`
-/

namespace A308735.P3671418607265980863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074173 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308735.P3671418607265980863

noncomputable section

/-- A308735: Numbers k such that k, k+2, k+4 are of the form p^2*q where p and q are distinct primes.

Offset 1, canonical program `A308735.P3671418607265980863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A308735 (n : ℕ) : ℤ :=
  (A308735.P3671418607265980863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A308735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309076.P2241331786193624643

`A356327(A003714(n))`
-/

namespace A309076.P2241331786193624643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 (A003714 n).toNat

end

end A309076.P2241331786193624643

noncomputable section

/-- A309076: The Zeckendorf representation of n read as a NegaFibonacci representation.

Offset 0, canonical program `A309076.P2241331786193624643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A309076 (n : ℕ) : ℤ :=
  A309076.P2241331786193624643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A309076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309369.P13434162935675506423

`∑{d}[n+1, A000010((n+1)/#)^#]`
-/

namespace A309369.P13434162935675506423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A309369.P13434162935675506423

noncomputable section

/-- A309369: a(n) = Sum_{d|n} phi(n/d)^d, where phi = Euler totient function (A000010).

Offset 1, canonical program `A309369.P13434162935675506423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A309369 (n : ℕ) : ℤ :=
  A309369.P13434162935675506423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A309369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316388.P4019904871240066925

`a(A000010(n+1)-1)+a(A051953(n+1)-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A316388.P4019904871240066925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (A000010 (n + 1) - 1).toNat + a (A051953 (n + 1) - 1).toNat

end

end A316388.P4019904871240066925

noncomputable section

/-- A316388: a(n) = a(phi(n)) + a(n-phi(n)) with a(1) = a(2) = a(3) = 1.

Offset 1, canonical program `A316388.P4019904871240066925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316388 (n : ℕ) : ℤ :=
  (A316388.P4019904871240066925.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316388.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317841.P1605425394467167167

`A000010(n+1)-A317839(n+1)`
-/

namespace A317841.P1605425394467167167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A317839 (n + 1)

end

end A317841.P1605425394467167167

noncomputable section

/-- A317841: Möbius transform of A284013 (= n - A002487(n)), where A002487 is Stern's Diatomic sequence.

Offset 1, canonical program `A317841.P1605425394467167167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A317839, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A317841 (n : ℕ) : ℤ :=
  A317841.P1605425394467167167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A317839, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A317841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318840.P4824797439622119668

`A000010(n+1)-A063994(n+1)`
-/

namespace A318840.P4824797439622119668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A063994 (n + 1)

end

end A318840.P4824797439622119668

noncomputable section

/-- A318840: a(n) = phi(n) - Product_{primes p dividing n} gcd(p-1, n-1).

Offset 1, canonical program `A318840.P4824797439622119668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318840 (n : ℕ) : ℤ :=
  A318840.P4824797439622119668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319340.P918367480918848699

`A000010(n+1)+A023900(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319340.P918367480918848699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A023900 (n + 1)

end

end A319340.P918367480918848699

noncomputable section

/-- A319340: Sum of Euler totient function and its Dirichlet inverse: a(n) = A000010(n) + A023900(n).

Offset 1, canonical program `A319340.P918367480918848699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319340 (n : ℕ) : ℤ :=
  A319340.P918367480918848699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319341.P11516969970215772159

`A000010(n+1)-A173557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319341.P11516969970215772159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A173557 (n + 1)

end

end A319341.P11516969970215772159

noncomputable section

/-- A319341: a(n) = A000010(n) - A173557(n).

Offset 1, canonical program `A319341.P11516969970215772159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319341 (n : ℕ) : ℤ :=
  A319341.P11516969970215772159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324291.P13103428598125600832

`∏{p}[n+1, A000040(n%A000010(#)+1)]`
-/

namespace A324291.P13103428598125600832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 (Int.tmod (n : ℤ) (A000010 p) + 1).toNat

end

end A324291.P13103428598125600832

noncomputable section

/-- A324291: Product prime(1+((n-1) mod (p-1))), where p ranges over distinct prime divisors of n.

Offset 1, canonical program `A324291.P13103428598125600832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324291 (n : ℕ) : ℤ :=
  A324291.P13103428598125600832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134420.P15726290882906623320

`∩[A069987(n+1), A134406(n+1)]`
-/

namespace A134420.P15726290882906623320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134420.P15726290882906623320

noncomputable section

/-- A134420: Composite squarefree numbers of the form k^2 + 1.

Offset 1, canonical program `A134420.P15726290882906623320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8853 terms. -/
def A134420 (n : ℕ) : ℤ :=
  (A134420.P15726290882906623320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8853 terms. -/
def A134420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180198.P17584943030396836814

`A180200(A180200(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180198.P17584943030396836814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A180200 n).toNat

end

end A180198.P17584943030396836814

noncomputable section

/-- A180198: a(n) = A180200(A180200(n)).

Offset 0, canonical program `A180198.P17584943030396836814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180198 (n : ℕ) : ℤ :=
  A180198.P17584943030396836814.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180772.P1089154253406948827

`A174088(n+1)-(n+1)`
-/

namespace A180772.P1089154253406948827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174088 (n + 1) - (n + 1 : ℤ)

end

end A180772.P1089154253406948827

noncomputable section

/-- A180772: Number of distinct solutions to the congruence x(1)*x(2) == 0 (mod n), with x() only in 1..n-1.

Offset 1, canonical program `A180772.P1089154253406948827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180772 (n : ℕ) : ℤ :=
  A180772.P1089154253406948827.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180772.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219009.P4084313568037727888

`∑{d}[n+1, A007427(#)*A063775((n+1)/#)]`
-/

namespace A219009.P4084313568037727888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A063775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A219009.P4084313568037727888

noncomputable section

/-- A219009: Coefficients of the Dirichlet series for zeta(4s)/zeta(s).

Offset 1, canonical program `A219009.P4084313568037727888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219009 (n : ℕ) : ℤ :=
  A219009.P4084313568037727888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225520.P8131934353027779697

`2*∑{d}[n+1, A259936(#)]`
-/

namespace A225520.P8131934353027779697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A259936 d)

end

end A225520.P8131934353027779697

noncomputable section

/-- A225520: The number of subsets of the set of divisors of n in which elements are pairwise coprime.

Offset 1, canonical program `A225520.P8131934353027779697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A225520 (n : ℕ) : ℤ :=
  A225520.P8131934353027779697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A225520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240668.P2555984127848424708

`val(A336510(2*(n+1))+1, 2)`
-/

namespace A240668.P2555984127848424708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336510 (2 * (n + 1)) + 1).toNat 2

end

end A240668.P2555984127848424708

noncomputable section

/-- A240668: Number of the first odd exponents in the prime power factorization of (2*n)!.

Offset 1, canonical program `A240668.P2555984127848424708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A240668 (n : ℕ) : ℤ :=
  (A240668.P2555984127848424708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. -/
def A240668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247122.P6428135620263079881

`∩[A104213(n+1), A119450(n+1)]`
-/

namespace A247122.P6428135620263079881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247122.P6428135620263079881

noncomputable section

/-- A247122: Primes p such that the digit sum of p is an odd composite number.

Offset 1, canonical program `A247122.P6428135620263079881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1761 terms. -/
def A247122 (n : ℕ) : ℤ :=
  (A247122.P6428135620263079881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1761 terms. -/
def A247122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259980.P4270422269286264128

`p?[A030515(n+1)-1]+1`
-/

namespace A259980.P4270422269286264128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A259980.P4270422269286264128

noncomputable section

/-- A259980: Numbers that are 1+prime and have 4 proper divisors.

Offset 1, canonical program `A259980.P4270422269286264128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A259980 (n : ℕ) : ℤ :=
  A259980.P4270422269286264128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A259980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262978.P15795800057724418315

`eq[1, A272334(2*(n+1))]+1`
-/

namespace A262978.P15795800057724418315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262978.P15795800057724418315

noncomputable section

/-- A262978: Exponents n such that 2^n-1 and 2^n+1 are squarefree.

Offset 1, canonical program `A262978.P15795800057724418315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A262978 (n : ℕ) : ℤ :=
  (A262978.P15795800057724418315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A262978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268641.P593264094722309301

`record[A007913(sqrt(A233409(n+1)))]`
-/

namespace A268641.P593264094722309301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (Real.sqrt (A233409 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268641.P593264094722309301

noncomputable section

/-- A268641: Squarefree numbers k such that k^2 + 1 and k^2 - 1 are also squarefree.

Offset 1, canonical program `A268641.P593264094722309301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3871 terms. -/
def A268641 (n : ℕ) : ℤ :=
  A268641.P593264094722309301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3871 terms. -/
def A268641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294061.P13855633599967279508

`A294285(n+1)-A294284(n+1)`
-/

namespace A294061.P13855633599967279508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294285 (n + 1) - A294284 (n + 1)

end

end A294061.P13855633599967279508

noncomputable section

/-- A294061: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the larger part squarefree.

Offset 1, canonical program `A294061.P13855633599967279508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294061 (n : ℕ) : ℤ :=
  A294061.P13855633599967279508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295662.P12288310833318385704

`A162642(n+1)-A056169(n+1)`
-/

namespace A295662.P12288310833318385704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A056169 (n + 1)

end

end A295662.P12288310833318385704

noncomputable section

/-- A295662: Number of odd exponents larger than one in the canonical prime factorization of n.

Offset 1, canonical program `A295662.P12288310833318385704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295662 (n : ℕ) : ℤ :=
  A295662.P12288310833318385704.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A316523.P9130007244371439540

`A162642(n+1)-A162641(n+1)`
-/

namespace A316523.P9130007244371439540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1) - A162641 (n + 1)

end

end A316523.P9130007244371439540

noncomputable section

/-- A316523: Number of odd multiplicities minus number of even multiplicities in the canonical prime factorization of n.

Offset 1, canonical program `A316523.P9130007244371439540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162641, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316523 (n : ℕ) : ℤ :=
  A316523.P9130007244371439540.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162641, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157104.P9758464400275007178

`A003415(A004709(n+1))`
-/

namespace A157104.P9758464400275007178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004709 (n + 1)).toNat

end

end A157104.P9758464400275007178

noncomputable section

/-- A157104: Arithmetic derivative of cubefree numbers.

Offset 1, canonical program `A157104.P9758464400275007178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A157104 (n : ℕ) : ℤ :=
  A157104.P9758464400275007178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. -/
def A157104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168036.P2098310487666722677

`A003415(n)-n`
-/

namespace A168036.P2098310487666722677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - (n : ℤ)

end

end A168036.P2098310487666722677

noncomputable section

/-- A168036: Difference between n' and n, where n' is the arithmetic derivative of n (A003415).

Offset 0, canonical program `A168036.P2098310487666722677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168036 (n : ℕ) : ℤ :=
  A168036.P2098310487666722677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168386.P1656891563129057732

`A003415(A006882(n))`
-/

namespace A168386.P1656891563129057732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006882 n).toNat

end

end A168386.P1656891563129057732

noncomputable section

/-- A168386: Arithmetic derivative of the double factorial of n.

Offset 0, canonical program `A168386.P1656891563129057732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168386 (n : ℕ) : ℤ :=
  A168386.P1656891563129057732.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181421.P7941151460370424266

`eq[A003415(n), A053000(A013634(n))]`
-/

namespace A181421.P7941151460370424266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A013634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181421.P7941151460370424266

noncomputable section

/-- A181421: Primes such that the square of the sum of itself and next prime, when added to 1 is a prime.

Offset 1, canonical program `A181421.P7941151460370424266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A181421 (n : ℕ) : ℤ :=
  (A181421.P7941151460370424266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A181421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186647.P15378219803120056282

`eq[A000034(n), A003415(A007953(n))]`
-/

namespace A186647.P15378219803120056282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186647.P15378219803120056282

noncomputable section

/-- A186647: Even numbers whose decimal digits sum to a prime.

Offset 1, canonical program `A186647.P15378219803120056282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A186647 (n : ℕ) : ℤ :=
  (A186647.P15378219803120056282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A186647.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192083.P12204997390210467682

`A003415(A056798(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192083.P12204997390210467682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A056798 (n + 1)).toNat

end

end A192083.P12204997390210467682

noncomputable section

/-- A192083: Arithmetic derivative of squares of prime powers: a(n) = A003415(A056798(n)).

Offset 1, canonical program `A192083.P12204997390210467682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A056798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192083 (n : ℕ) : ℤ :=
  A192083.P12204997390210467682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A056798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211991.P15084257827643114560

`A003415(n+1)-A001065(n+1)`
-/

namespace A211991.P15084257827643114560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A001065 (n + 1)

end

end A211991.P15084257827643114560

noncomputable section

/-- A211991: Difference between the arithmetic derivative of n and the sum of proper divisors of n.

Offset 1, canonical program `A211991.P15084257827643114560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211991 (n : ℕ) : ℤ :=
  A211991.P15084257827643114560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A211991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216887.P7016313047720049362

`eq[A003415(A050376(2*(n+2))), A003415(n)]`
-/

namespace A216887.P7016313047720049362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A050376 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216887.P7016313047720049362

noncomputable section

/-- A216887: Primes p such that x^67 = 2 has a solution mod p.

Offset 1, canonical program `A216887.P7016313047720049362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887 (n : ℕ) : ℤ :=
  (A216887.P7016313047720049362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225856.P11800117262539165010

`floor(sqrt(sqrt(A225892(n+1))))`
-/

namespace A225856.P11800117262539165010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A225892 (n + 1) : ℝ))⌋

end

end A225856.P11800117262539165010

noncomputable section

/-- A225856: Primes p such that p^2 + 1 is squarefree.

Offset 1, canonical program `A225856.P11800117262539165010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225856 (n : ℕ) : ℤ :=
  A225856.P11800117262539165010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229341.P12246436327909898701

`A000005(A003415(n+2))`
-/

namespace A229341.P12246436327909898701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003415 (n + 2)).toNat

end

end A229341.P12246436327909898701

noncomputable section

/-- A229341: a(n) = tau(n'), the number of divisors of the arithmetic derivative of n.

Offset 2, canonical program `A229341.P12246436327909898701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229341 (n : ℕ) : ℤ :=
  A229341.P12246436327909898701.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229342.P3262806412783250556

`A000203(A003415(n+2))`
-/

namespace A229342.P3262806412783250556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003415 (n + 2)).toNat

end

end A229342.P3262806412783250556

noncomputable section

/-- A229342: a(n) = sigma(n'), the sum of divisors of the arithmetic derivative of n.

Offset 2, canonical program `A229342.P3262806412783250556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229342 (n : ℕ) : ℤ :=
  A229342.P3262806412783250556.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229344.P6312581941137850236

`A002321(abs(A003415(n+1)-1)+1)`
-/

namespace A229344.P6312581941137850236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (|A003415 (n + 1) - 1| + 1).toNat

end

end A229344.P6312581941137850236

noncomputable section

/-- A229344: Mertens's function of the arithmetic derivative of n: a(n) = M(n'), a(1) = 0.

Offset 1, canonical program `A229344.P6312581941137850236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A229344 (n : ℕ) : ℤ :=
  A229344.P6312581941137850236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A229344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229511.P11562683010761712362

`eq[1, A002260(A003415(n)+1)]`
-/

namespace A229511.P11562683010761712362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P11562683010761712362

noncomputable section

/-- A229511: Numbers k whose arithmetic derivative (k') is a triangular number.

Offset 0, canonical program `A229511.P11562683010761712362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A229511 (n : ℕ) : ℤ :=
  (A229511.P11562683010761712362.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A229511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229523.P13832945066902845341

`A190121(10^n)`
-/

namespace A229523.P13832945066902845341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190121 (10 ^ n)

end

end A229523.P13832945066902845341

noncomputable section

/-- A229523: Partial sum of the arithmetic derivative A003415 (A190121) up to 10^n.

Offset 0, canonical program `A229523.P13832945066902845341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229523 (n : ℕ) : ℤ :=
  A229523.P13832945066902845341.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230595.P9035268919760195541

`A008615(C(5, A305809(n+1)))`
-/

namespace A230595.P9035268919760195541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Nat.choose 5 (A305809 (n + 1)).toNat)

end

end A230595.P9035268919760195541

noncomputable section

/-- A230595: Number of ways to write n as n = x*y, where x and y are primes, 1 <= x <= n, 1 <= y <= n.

Offset 1, canonical program `A230595.P9035268919760195541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230595 (n : ℕ) : ℤ :=
  A230595.P9035268919760195541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231946.P13868030303102611269

`∑[A003415(n+1)^3]`
-/

namespace A231946.P13868030303102611269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231946.P13868030303102611269

noncomputable section

/-- A231946: Partial sums of the third power of the arithmetic derivative function A003415.

Offset 1, canonical program `A231946.P13868030303102611269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231946 (n : ℕ) : ℤ :=
  A231946.P13868030303102611269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235711.P5553264463072486028

`A003415(A002620(n))`
-/

namespace A235711.P5553264463072486028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002620 n).toNat

end

end A235711.P5553264463072486028

noncomputable section

/-- A235711: Arithmetic derivative of quarter squares.

Offset 0, canonical program `A235711.P5553264463072486028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235711 (n : ℕ) : ℤ :=
  A235711.P5553264463072486028.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240332.P2811997264391864732

`∑[A014016(n)]*A014016(A003415(n))`
-/

namespace A240332.P2811997264391864732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A014016 (A003415 n).toNat

end

end A240332.P2811997264391864732

noncomputable section

/-- A240332: Inverse of 49th cyclotomic polynomial.

Offset 0, canonical program `A240332.P2811997264391864732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A240332 (n : ℕ) : ℤ :=
  A240332.P2811997264391864732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A240332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245838.P8667444233947326687

`A003415(A016777(n+1))`
-/

namespace A245838.P8667444233947326687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A016777 (n + 1)).toNat

end

end A245838.P8667444233947326687

noncomputable section

/-- A245838: Arithmetic derivative of (3*n + 1), n >= 1, (A016777)'.

Offset 1, canonical program `A245838.P8667444233947326687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245838 (n : ℕ) : ℤ :=
  A245838.P8667444233947326687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258057.P7998122190271459586

`A003415(n+1)-A003415(n)`
-/

namespace A258057.P7998122190271459586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A003415 n

end

end A258057.P7998122190271459586

noncomputable section

/-- A258057: First differences of the arithmetic derivative sequence A003415.

Offset 0, canonical program `A258057.P7998122190271459586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258057 (n : ℕ) : ℤ :=
  A258057.P7998122190271459586.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258197.P15390791753644415480

`A003415(A007318(n))`
-/

namespace A258197.P15390791753644415480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007318 n).toNat

end

end A258197.P15390791753644415480

noncomputable section

/-- A258197: Arithmetic derivative of Pascal's triangle.

Offset 0, canonical program `A258197.P15390791753644415480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A258197 (n : ℕ) : ℤ :=
  A258197.P15390791753644415480.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A258197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258290.P2763848387023428005

`A003415(A000984(n))`
-/

namespace A258290.P2763848387023428005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000984 n).toNat

end

end A258290.P2763848387023428005

noncomputable section

/-- A258290: Arithmetic derivative of central binomial coefficients, cf. A000984.

Offset 0, canonical program `A258290.P2763848387023428005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258290 (n : ℕ) : ℤ :=
  A258290.P2763848387023428005.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260620.P4707896754255925943

`A003415(A000178(n))`
-/

namespace A260620.P4707896754255925943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000178 n).toNat

end

end A260620.P4707896754255925943

noncomputable section

/-- A260620: Arithmetic derivative of superfactorial(n).

Offset 0, canonical program `A260620.P4707896754255925943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260620 (n : ℕ) : ℤ :=
  A260620.P4707896754255925943.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260624.P16422047914652395802

`A003415(A002808(n+1))`
-/

namespace A260624.P16422047914652395802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002808 (n + 1)).toNat

end

end A260624.P16422047914652395802

noncomputable section

/-- A260624: a(n) = arithmetic derivative of the n-th composite number.

Offset 1, canonical program `A260624.P16422047914652395802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A260624 (n : ℕ) : ℤ :=
  A260624.P16422047914652395802.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A260624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277455.P11217868120756742316

`A003415(A001006(n))`
-/

namespace A277455.P11217868120756742316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001006 n).toNat

end

end A277455.P11217868120756742316

noncomputable section

/-- A277455: Arithmetic derivatives of the Motzkin numbers.

Offset 0, canonical program `A277455.P11217868120756742316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277455 (n : ℕ) : ℤ :=
  A277455.P11217868120756742316.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300252.P5081431345107026110

`A003415(n+1)-A300251(n+1)`
-/

namespace A300252.P5081431345107026110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A300251 (n + 1)

end

end A300252.P5081431345107026110

noncomputable section

/-- A300252: Difference between arithmetic derivative (A003415) and its Möbius transform (A300251).

Offset 1, canonical program `A300252.P5081431345107026110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300252 (n : ℕ) : ℤ :=
  A300252.P5081431345107026110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300253.P12261115453388229747

`gcd(A003415(n+1), A300251(n+1))`
-/

namespace A300253.P12261115453388229747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A300251 (n + 1))

end

end A300253.P12261115453388229747

noncomputable section

/-- A300253: GCD of arithmetic derivative (A003415) and its Möbius transform (A300251).

Offset 1, canonical program `A300253.P12261115453388229747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300253 (n : ℕ) : ℤ :=
  (A300253.P12261115453388229747.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317990.P13986122005631344601

`2^A317992(n+2)`
-/

namespace A317990.P13986122005631344601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A317992 (n + 2) : ℤ)

end

end A317990.P13986122005631344601

noncomputable section

/-- A317990: Number of genera of the real quadratic field Q(sqrt(k)), k squarefree > 1.

Offset 2, canonical program `A317990.P13986122005631344601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317990.P13986122005631344601.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319683.P12610436916634477773

`A319684(n+1)-A003415(n+1)`
-/

namespace A319683.P12610436916634477773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - A003415 (n + 1)

end

end A319683.P12610436916634477773

noncomputable section

/-- A319683: Sum of A003415(d) over the proper divisors d of n, where A003415 is arithmetic derivative.

Offset 1, canonical program `A319683.P12610436916634477773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A319684, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319683 (n : ℕ) : ℤ :=
  A319683.P12610436916634477773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A319684, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320584.P6049506944665547150

`eq[1, A003415(A182324(n)-n)]`
-/

namespace A320584.P6049506944665547150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A182324 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P6049506944665547150

noncomputable section

/-- A320584: Numbers whose first digit is prime.

Offset 1, canonical program `A320584.P6049506944665547150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4444 terms. -/
def A320584 (n : ℕ) : ℤ :=
  (A320584.P6049506944665547150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4444 terms. -/
def A320584.provenance : SequenceMachineLib.Provenance := .conjectured

