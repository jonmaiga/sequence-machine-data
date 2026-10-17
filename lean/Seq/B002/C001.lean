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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A046818.P4833358550115723064

`A000120(3*n+1)`
-/

namespace A046818.P4833358550115723064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n + 1)

end

end A046818.P4833358550115723064

noncomputable section

/-- A046818: Number of 1's in binary expansion of 3n+1.

Offset 0, canonical program `A046818.P4833358550115723064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046818 (n : ℕ) : ℤ :=
  A046818.P4833358550115723064.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046818.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046820.P8521944609786113338

`A000120(5*n)`
-/

namespace A046820.P8521944609786113338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (5 * n)

end

end A046820.P8521944609786113338

noncomputable section

/-- A046820: Number of 1's in binary expansion of 5n.

Offset 0, canonical program `A046820.P8521944609786113338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046820 (n : ℕ) : ℤ :=
  A046820.P8521944609786113338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048881.P16567064232951496228

`A000120(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048881.P16567064232951496228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - 1

end

end A048881.P16567064232951496228

noncomputable section

/-- A048881: a(n) = A000120(n+1) - 1 = wt(n+1) - 1.

Offset 0, canonical program `A048881.P16567064232951496228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048881 (n : ℕ) : ℤ :=
  A048881.P16567064232951496228.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050476.P4852240921440524385

`A000984(n)+5*A001791(n)`
-/

namespace A050476.P4852240921440524385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 5 * A001791 n

end

end A050476.P4852240921440524385

noncomputable section

/-- A050476: a(n) = C(n)*(6*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050476.P4852240921440524385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050476 (n : ℕ) : ℤ :=
  A050476.P4852240921440524385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050477.P1271674813469624088

`A000984(n)+6*A001791(n)`
-/

namespace A050477.P1271674813469624088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 6 * A001791 n

end

end A050477.P1271674813469624088

noncomputable section

/-- A050477: a(n) = C(n)*(7*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050477.P1271674813469624088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050477 (n : ℕ) : ℤ :=
  A050477.P1271674813469624088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050478.P11948312383121739126

`A000984(n)+7*A001791(n)`
-/

namespace A050478.P11948312383121739126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 7 * A001791 n

end

end A050478.P11948312383121739126

noncomputable section

/-- A050478: a(n) = C(n)*(8*n+1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050478.P11948312383121739126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050478 (n : ℕ) : ℤ :=
  A050478.P11948312383121739126.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050479.P17354006399765808413

`A000984(n)+8*A001791(n)`
-/

namespace A050479.P17354006399765808413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 8 * A001791 n

end

end A050479.P17354006399765808413

noncomputable section

/-- A050479: a(n) = C(n)*(9*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050479.P17354006399765808413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050479 (n : ℕ) : ℤ :=
  A050479.P17354006399765808413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050489.P16526552866551306306

`A000984(n)+9*A001791(n)`
-/

namespace A050489.P16526552866551306306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 9 * A001791 n

end

end A050489.P16526552866551306306

noncomputable section

/-- A050489: a(n) = C(n)*(10*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050489.P16526552866551306306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050489 (n : ℕ) : ℤ :=
  A050489.P16526552866551306306.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050493.P3448081831434903334

`A000120(A000217(n))`
-/

namespace A050493.P3448081831434903334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000217 n).toNat

end

end A050493.P3448081831434903334

noncomputable section

/-- A050493: a(n) = sum of binary digits of n-th triangular number.

Offset 0, canonical program `A050493.P3448081831434903334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050493 (n : ℕ) : ℤ :=
  A050493.P3448081831434903334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051133.P10428894217481512850

`1/2*A000984(n+1)*A000217(n)`
-/

namespace A051133.P10428894217481512850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000984 (n + 1) : ℚ) * (A000217 n : ℚ)

end

end A051133.P10428894217481512850

noncomputable section

/-- A051133: a(n) = binomial(2n,n)*n*(2n+1)/2.

Offset 0, canonical program `A051133.P10428894217481512850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051133.P10428894217481512850.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051924.P8102808700337142797

`A001700(n)+A001791(n)`
-/

namespace A051924.P8102808700337142797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + A001791 n

end

end A051924.P8102808700337142797

noncomputable section

/-- A051924: a(n) = binomial(2*n,n) - binomial(2*n-2,n-1); or (3n-2)*C(n-1), where C = Catalan numbers (A000108).

Offset 1, canonical program `A051924.P8102808700337142797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051924 (n : ℕ) : ℤ :=
  A051924.P8102808700337142797.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051944.P8157116428899209073

`A000984(n)+3*A001791(n)`
-/

namespace A051944.P8157116428899209073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 3 * A001791 n

end

end A051944.P8157116428899209073

noncomputable section

/-- A051944: a(n) = C(n)*(4*n+1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A051944.P8157116428899209073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051944 (n : ℕ) : ℤ :=
  A051944.P8157116428899209073.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051945.P12563148972350424108

`A000984(n)+4*A001791(n)`
-/

namespace A051945.P12563148972350424108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 4 * A001791 n

end

end A051945.P12563148972350424108

noncomputable section

/-- A051945: a(n) = C(n)*(5*n+1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A051945.P12563148972350424108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051945 (n : ℕ) : ℤ :=
  A051945.P12563148972350424108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053840.P4860895383705530862

`A010874(A053824(n))`
-/

namespace A053840.P4860895383705530862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A053824 n).toNat

end

end A053840.P4860895383705530862

noncomputable section

/-- A053840: (Sum of digits of n written in base 5) modulo 5.

Offset 0, canonical program `A053840.P4860895383705530862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053840 (n : ℕ) : ℤ :=
  A053840.P4860895383705530862.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054652.P17368560212762667573

`n!*A002720(n)`
-/

namespace A054652.P17368560212762667573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002720 n

end

end A054652.P17368560212762667573

noncomputable section

/-- A054652: Number of acyclic orientations of the Hamming graph (K_2) x (K_n).

Offset 0, canonical program `A054652.P17368560212762667573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054652 (n : ℕ) : ℤ :=
  A054652.P17368560212762667573.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054868.P12564420483956128132

`A000120(A000120(n))`
-/

namespace A054868.P12564420483956128132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat

end

end A054868.P12564420483956128132

noncomputable section

/-- A054868: Sum of bits of sum of bits of n: a(n) = wt(wt(n)).

Offset 0, canonical program `A054868.P12564420483956128132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054868 (n : ℕ) : ℤ :=
  A054868.P12564420483956128132.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054888.P1121100851620150953

`A203976(A004277(n))`
-/

namespace A054888.P1121100851620150953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (A004277 n).toNat

end

end A054888.P1121100851620150953

noncomputable section

/-- A054888: Layer counting sequence for hyperbolic tessellation by regular pentagons of angle Pi/2.

Offset 0, canonical program `A054888.P1121100851620150953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054888 (n : ℕ) : ℤ :=
  A054888.P1121100851620150953.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055461.P3025188043753293136

`A004736(n+1)²`
-/

namespace A055461.P3025188043753293136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2

end

end A055461.P3025188043753293136

noncomputable section

/-- A055461: Square decrescendo subsequences: triangle T(n,k) = (n-k)^2, n >= 1, 0 <= k < n.

Offset 1, canonical program `A055461.P3025188043753293136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055461 (n : ℕ) : ℤ :=
  A055461.P3025188043753293136.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057212.P15780615681694366480

`1-A057211(n+1)`
-/

namespace A057212.P15780615681694366480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057211 (n + 1)

end

end A057212.P15780615681694366480

noncomputable section

/-- A057212: n-th run has length n.

Offset 1, canonical program `A057212.P15780615681694366480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057212 (n : ℕ) : ℤ :=
  A057212.P15780615681694366480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057428.P2999489532230392221

`-A057427(n)`
-/

namespace A057428.P2999489532230392221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057427 n

end

end A057428.P2999489532230392221

noncomputable section

/-- A057428: Sign(-n): a(n) = 1 if -n > 0, = -1 if -n < 0, = 0 if n = 0.

Offset 0, canonical program `A057428.P2999489532230392221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057428 (n : ℕ) : ℤ :=
  A057428.P2999489532230392221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057527.P524985246487583325

`a(n-1)*A055462(n)` with `a(0)=1`
-/

namespace A057527.P524985246487583325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A055462 n

end

end A057527.P524985246487583325

noncomputable section

/-- A057527: 4th level factorials: product of first n superduperfactorials.

Offset 0, canonical program `A057527.P524985246487583325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057527 (n : ℕ) : ℤ :=
  A057527.P524985246487583325.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059304.P7987591590417581669

`A000079(n)*A000984(n)`
-/

namespace A059304.P7987591590417581669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000984 n

end

end A059304.P7987591590417581669

noncomputable section

/-- A059304: a(n) = 2^n * (2*n)! / (n!)^2.

Offset 0, canonical program `A059304.P7987591590417581669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059304 (n : ℕ) : ℤ :=
  A059304.P7987591590417581669.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060550.P2251018908041164968

`(A060547(n+1)-A060548(n+1))/2`
-/

namespace A060550.P2251018908041164968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060547 (n + 1) - A060548 (n + 1) : ℚ) / 2

end

end A060550.P2251018908041164968

noncomputable section

/-- A060550: a(n) is the number of distinct patterns (modulo geometric D_3-operations) with no other than strict 120-degree rotational symmetry which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement.

Offset 1, canonical program `A060550.P2251018908041164968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060550.P2251018908041164968.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061104.P7332019098736278192

`A051885(n²)`
-/

namespace A061104.P7332019098736278192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n ^ 2)

end

end A061104.P7332019098736278192

noncomputable section

/-- A061104: Smallest number whose sum of digits is n^2.

Offset 0, canonical program `A061104.P7332019098736278192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061104 (n : ℕ) : ℤ :=
  A061104.P7332019098736278192.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061105.P5475709166663149495

`A051885(n^3)`
-/

namespace A061105.P5475709166663149495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n ^ 3)

end

end A061105.P5475709166663149495

noncomputable section

/-- A061105: Smallest number whose sum of digits is n^3.

Offset 0, canonical program `A061105.P5475709166663149495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061105 (n : ℕ) : ℤ :=
  A061105.P5475709166663149495.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061213.P18150382600562520076

`A006472(n+2)+1`
-/

namespace A061213.P18150382600562520076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006472 (n + 2) + 1

end

end A061213.P18150382600562520076

noncomputable section

/-- A061213: a(n) = 1 + product of first n positive triangular numbers (A000217).

Offset 1, canonical program `A061213.P18150382600562520076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061213 (n : ℕ) : ℤ :=
  A061213.P18150382600562520076.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061885.P4567764245783084005

`n+A057944(n)`
-/

namespace A061885.P4567764245783084005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A057944 n

end

end A061885.P4567764245783084005

noncomputable section

/-- A061885: n + largest triangular number less than or equal to n.

Offset 0, canonical program `A061885.P4567764245783084005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061885 (n : ℕ) : ℤ :=
  A061885.P4567764245783084005.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061887.P2068287062233991160

`n+A048760(n)`
-/

namespace A061887.P2068287062233991160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A048760 n

end

end A061887.P2068287062233991160

noncomputable section

/-- A061887: n + largest square less than or equal to n; numbers in the range [2k^2,2k^2+2k] for some k.

Offset 0, canonical program `A061887.P2068287062233991160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061887 (n : ℕ) : ℤ :=
  A061887.P2068287062233991160.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062970.P9271376026130432570

`A001923(n)+1`
-/

namespace A062970.P9271376026130432570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n + 1

end

end A062970.P9271376026130432570

noncomputable section

/-- A062970: a(n) = 1 + Sum_{j=1..n} j^j.

Offset 0, canonical program `A062970.P9271376026130432570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062970 (n : ℕ) : ℤ :=
  A062970.P9271376026130432570.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064038.P15280687467531965894

`A026741(A000217(n))`
-/

namespace A064038.P15280687467531965894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000217 n).toNat

end

end A064038.P15280687467531965894

noncomputable section

/-- A064038: Numerator of average number of swaps needed to bubble sort a string of n distinct letters.

Offset 1, canonical program `A064038.P15280687467531965894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064038 (n : ℕ) : ℤ :=
  A064038.P15280687467531965894.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065034.P15700108238515394926

`A005248(n)+1`
-/

namespace A065034.P15700108238515394926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n + 1

end

end A065034.P15700108238515394926

noncomputable section

/-- A065034: a(n) = Lucas(2*n) + 1.

Offset 0, canonical program `A065034.P15700108238515394926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065034 (n : ℕ) : ℤ :=
  A065034.P15700108238515394926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065734.P4170492142303936260

`A048760(A000203(n+1))`
-/

namespace A065734.P4170492142303936260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000203 (n + 1)).toNat

end

end A065734.P4170492142303936260

noncomputable section

/-- A065734: Largest square <= sigma(n).

Offset 1, canonical program `A065734.P4170492142303936260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065734 (n : ℕ) : ℤ :=
  A065734.P4170492142303936260.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065738.P10550845341086057778

`A048760(A000984(n))`
-/

namespace A065738.P10550845341086057778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000984 n).toNat

end

end A065738.P10550845341086057778

noncomputable section

/-- A065738: Largest square <= binomial(2n,n).

Offset 0, canonical program `A065738.P10550845341086057778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065738 (n : ℕ) : ℤ :=
  A065738.P10550845341086057778.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065738.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066802.P18056673962600003327

`A000984(3*n)`
-/

namespace A066802.P18056673962600003327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (3 * n)

end

end A066802.P18056673962600003327

noncomputable section

/-- A066802: a(n) = binomial(6*n,3*n).

Offset 0, canonical program `A066802.P18056673962600003327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066802 (n : ℕ) : ℤ :=
  A066802.P18056673962600003327.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070031.P4889884996952388328

`2*A000245(n+1)-A000108(n+1)`
-/

namespace A070031.P4889884996952388328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000245 (n + 1) - A000108 (n + 1)

end

end A070031.P4889884996952388328

noncomputable section

/-- A070031: Expansion of (1+x*C)*C^3, where C = (1-sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A070031.P4889884996952388328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070031 (n : ℕ) : ℤ :=
  A070031.P4889884996952388328.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070857.P5345200539959730910

`2*A002057(n)-A000245(n+1)`
-/

namespace A070857.P5345200539959730910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002057 n - A000245 (n + 1)

end

end A070857.P5345200539959730910

noncomputable section

/-- A070857: Expansion of (1+x*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A070857.P5345200539959730910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070857 (n : ℕ) : ℤ :=
  A070857.P5345200539959730910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071858.P17336919292413007964

`A010872(A000120(n))`
-/

namespace A071858.P17336919292413007964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000120 n).toNat

end

end A071858.P17336919292413007964

noncomputable section

/-- A071858: (Number of 1's in binary expansion of n) mod 3.

Offset 0, canonical program `A071858.P17336919292413007964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071858 (n : ℕ) : ℤ :=
  A071858.P17336919292413007964.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072638.P14031279018864755668

`A006894(n+1)-1`
-/

namespace A072638.P14031279018864755668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006894 (n + 1) - 1

end

end A072638.P14031279018864755668

noncomputable section

/-- A072638: Number of unary-binary rooted trees of height at most n.

Offset 0, canonical program `A072638.P14031279018864755668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072638 (n : ℕ) : ℤ :=
  A072638.P14031279018864755668.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072638.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A077953.P11656144037597956834

`A077925(floor(n/2))`
-/

namespace A077953.P11656144037597956834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 ⌊(n : ℚ) / 2⌋.toNat

end

end A077953.P11656144037597956834

noncomputable section

/-- A077953: Expansion of 1/(1-x+2*x^2-2*x^3).

Offset 0, canonical program `A077953.P11656144037597956834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077953 (n : ℕ) : ℤ :=
  A077953.P11656144037597956834.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079559.P11581718101175624469

`A043545(n+1)*a(n+1-A053644(n+1))` with `a(0)=1`
-/

namespace A079559.P11581718101175624469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A043545 (n + 1) * a ((n : ℤ) + (1 - A053644 (n + 1))).toNat

end

end A079559.P11581718101175624469

noncomputable section

/-- A079559: Number of partitions of n into distinct parts of the form 2^j-1, j=1,2,....

Offset 0, canonical program `A079559.P11581718101175624469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079559 (n : ℕ) : ℤ :=
  A079559.P11581718101175624469.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079559.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A081670.P4067361899818869049

`A000984(n)+2*A003462(n)`
-/

namespace A081670.P4067361899818869049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 2 * A003462 n

end

end A081670.P4067361899818869049

noncomputable section

/-- A081670: a(n) = 3^n-1+C(2n,n).

Offset 0, canonical program `A081670.P4067361899818869049`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081670 (n : ℕ) : ℤ :=
  A081670.P4067361899818869049.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085374.P8964828129887748589

`A001700(n)*A000292(n+1)`
-/

namespace A085374.P8964828129887748589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A000292 (n + 1)

end

end A085374.P8964828129887748589

noncomputable section

/-- A085374: a(n) = binomial(2n+1, n+1)*binomial(n+3, 3).

Offset 0, canonical program `A085374.P8964828129887748589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085374 (n : ℕ) : ℤ :=
  A085374.P8964828129887748589.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085781.P17061533660048159159

`2*A001700(n)-A000079(n)`
-/

namespace A085781.P17061533660048159159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001700 n - A000079 n

end

end A085781.P17061533660048159159

noncomputable section

/-- A085781: a(n) = 2*binomial(2*n+1,n+1) - 2^n.

Offset 0, canonical program `A085781.P17061533660048159159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085781 (n : ℕ) : ℤ :=
  A085781.P17061533660048159159.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085781.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A090763.P10945600944732506763

`(n+1)*A005809(n+1)/3`
-/

namespace A090763.P10945600944732506763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A005809 (n + 1) : ℚ) / 3

end

end A090763.P10945600944732506763

noncomputable section

/-- A090763: a(n) = (3*n+3)!/(3*n!*(2*n+2)!).

Offset 0, canonical program `A090763.P10945600944732506763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090763.P10945600944732506763.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090816.P4122459984160275442

`A005809(n)*A016777(n)`
-/

namespace A090816.P4122459984160275442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A016777 n

end

end A090816.P4122459984160275442

noncomputable section

/-- A090816: a(n) = (3*n+1)!/((2*n)! * n!).

Offset 0, canonical program `A090816.P4122459984160275442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090816 (n : ℕ) : ℤ :=
  A090816.P4122459984160275442.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048619.P16767299098900104543

`A180000(n+1)/A152271(n)`
-/

namespace A048619.P16767299098900104543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) : ℚ) / (A152271 n : ℚ)

end

end A048619.P16767299098900104543

noncomputable section

/-- A048619: a(n) = LCM(binomial(n,0), ..., binomial(n,n)) / binomial(n,floor(n/2)).

Offset 0, canonical program `A048619.P16767299098900104543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048619.P16767299098900104543.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053601.P7804858873248441211

`A002884(n)/n!`
-/

namespace A053601.P7804858873248441211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 n : ℚ) / (Nat.factorial n : ℚ)

end

end A053601.P7804858873248441211

noncomputable section

/-- A053601: Number of bases of an n-dimensional vector space over GF(2).

Offset 0, canonical program `A053601.P7804858873248441211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053601 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053601.P7804858873248441211.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053837.P1951223835563838367

`A010879(A007953(n))`
-/

namespace A053837.P1951223835563838367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007953 n).toNat

end

end A053837.P1951223835563838367

noncomputable section

/-- A053837: Sum of digits of n modulo 10.

Offset 0, canonical program `A053837.P1951223835563838367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053837 (n : ℕ) : ℤ :=
  A053837.P1951223835563838367.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053838.P12960240221396794079

`A010872(A053735(n))`
-/

namespace A053838.P12960240221396794079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A053735 n).toNat

end

end A053838.P12960240221396794079

noncomputable section

/-- A053838: a(n) = (sum of digits of n written in base 3) modulo 3.

Offset 0, canonical program `A053838.P12960240221396794079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053838 (n : ℕ) : ℤ :=
  A053838.P12960240221396794079.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053839.P2067355896077085715

`A010873(A053737(n))`
-/

namespace A053839.P2067355896077085715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A053737 n).toNat

end

end A053839.P2067355896077085715

noncomputable section

/-- A053839: a(n) = (sum of digits of n written in base 4) modulo 4.

Offset 0, canonical program `A053839.P2067355896077085715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053839 (n : ℕ) : ℤ :=
  A053839.P2067355896077085715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053841.P1470426052583301090

`A010875(A053827(n))`
-/

namespace A053841.P1470426052583301090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A053827 n).toNat

end

end A053841.P1470426052583301090

noncomputable section

/-- A053841: (Sum of digits of n written in base 6) modulo 6.

Offset 0, canonical program `A053841.P1470426052583301090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053841 (n : ℕ) : ℤ :=
  A053841.P1470426052583301090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054563.P17816310526759205414

`A373733(n)-A000292(n)`
-/

namespace A054563.P17816310526759205414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373733 n - A000292 n

end

end A054563.P17816310526759205414

noncomputable section

/-- A054563: a(n) = n*(n^2 - 1)*(n + 2)*(n^2 + 4*n + 6)/72.

Offset 0, canonical program `A054563.P17816310526759205414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054563 (n : ℕ) : ℤ :=
  A054563.P17816310526759205414.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055262.P5810071582875388114

`n+A007953(a(n-1))` with `a(0)=0`
-/

namespace A055262.P5810071582875388114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) + A007953 (a (n - 1)).toNat

end

end A055262.P5810071582875388114

noncomputable section

/-- A055262: n + sum of digits of a(n-1).

Offset 0, canonical program `A055262.P5810071582875388114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055262 (n : ℕ) : ℤ :=
  A055262.P5810071582875388114.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055263.P15720072045721252872

`A007953(n+a(n-1))` with `a(0)=0`
-/

namespace A055263.P15720072045721252872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007953 ((n : ℤ) + a (n - 1)).toNat

end

end A055263.P15720072045721252872

noncomputable section

/-- A055263: a(n) = Sum of digits of (n + a(n-1)).

Offset 0, canonical program `A055263.P15720072045721252872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055263 (n : ℕ) : ℤ :=
  A055263.P15720072045721252872.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056007.P10071170248464593128

`A071797(A000079(n))`
-/

namespace A056007.P10071170248464593128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A000079 n).toNat

end

end A056007.P10071170248464593128

noncomputable section

/-- A056007: Difference between 2^n and largest square strictly less than 2^n.

Offset 0, canonical program `A056007.P10071170248464593128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056007 (n : ℕ) : ℤ :=
  A056007.P10071170248464593128.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056791.P10588008937732959129

`A000120(n)+A070939(n)`
-/

namespace A056791.P10588008937732959129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A070939 n

end

end A056791.P10588008937732959129

noncomputable section

/-- A056791: Weight of binary expansion of n + length of binary expansion of n.

Offset 0, canonical program `A056791.P10588008937732959129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056791 (n : ℕ) : ℤ :=
  A056791.P10588008937732959129.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056792.P13266386025487519892

`A000120(n)+A070939(n)-1`
-/

namespace A056792.P13266386025487519892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A070939 n - 1

end

end A056792.P13266386025487519892

noncomputable section

/-- A056792: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) multiplying by 2.

Offset 0, canonical program `A056792.P13266386025487519892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056792 (n : ℕ) : ℤ :=
  A056792.P13266386025487519892.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056792.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057147.P6552464879974957451

`n*A007953(n)`
-/

namespace A057147.P6552464879974957451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007953 n

end

end A057147.P6552464879974957451

noncomputable section

/-- A057147: a(n) = n times sum of digits of n.

Offset 0, canonical program `A057147.P6552464879974957451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057147 (n : ℕ) : ℤ :=
  A057147.P6552464879974957451.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062028.P8420805724104474199

`n+A007953(n)`
-/

namespace A062028.P8420805724104474199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A007953 n

end

end A062028.P8420805724104474199

noncomputable section

/-- A062028: a(n) = n + sum of the digits of n.

Offset 0, canonical program `A062028.P8420805724104474199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062028 (n : ℕ) : ℤ :=
  A062028.P8420805724104474199.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062785.P8716232642993824825

`A000203(n+1)*A048050(n+1)`
-/

namespace A062785.P8716232642993824825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A048050 (n + 1)

end

end A062785.P8716232642993824825

noncomputable section

/-- A062785: a(n) = Chowla's function of n * sigma(n).

Offset 1, canonical program `A062785.P8716232642993824825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062785 (n : ℕ) : ℤ :=
  A062785.P8716232642993824825.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063787.P12602735104160766302

`A000120(A086799(n+1))`
-/

namespace A063787.P12602735104160766302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086799 (n + 1)).toNat

end

end A063787.P12602735104160766302

noncomputable section

/-- A063787: a(2^k) = k + 1 and a(2^k + i) = 1 + a(i) for k >= 0 and 0 < i < 2^k.

Offset 1, canonical program `A063787.P12602735104160766302`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063787 (n : ℕ) : ℤ :=
  A063787.P12602735104160766302.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065128.P10641093618533566819

`2^n²*A002884(n)`
-/

namespace A065128.P10641093618533566819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * A002884 n

end

end A065128.P10641093618533566819

noncomputable section

/-- A065128: Number of invertible n X n matrices mod 4 (i.e., over the ring Z_4).

Offset 0, canonical program `A065128.P10641093618533566819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065128 (n : ℕ) : ℤ :=
  A065128.P10641093618533566819.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065363.P10338292447349607337

`A053735(2*n)-A053735(n)`
-/

namespace A065363.P10338292447349607337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (2 * n) - A053735 n

end

end A065363.P10338292447349607337

noncomputable section

/-- A065363: Sum of balanced ternary digits in n. Replace 3^k with 1 in balanced ternary expansion of n.

Offset 0, canonical program `A065363.P10338292447349607337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065363 (n : ℕ) : ℤ :=
  A065363.P10338292447349607337.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066106.P205978337921741403

`4*A129889(n+1)`
-/

namespace A066106.P205978337921741403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A129889 (n + 1)

end

end A066106.P205978337921741403

noncomputable section

/-- A066106: a(2n) = (2n)(2n+2); a(2n+1) = 4n + 4.

Offset 0, canonical program `A066106.P205978337921741403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066106 (n : ℕ) : ℤ :=
  A066106.P205978337921741403.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067040.P6507352666235301990

`n^A007953(n)`
-/

namespace A067040.P6507352666235301990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A007953 n : ℤ)

end

end A067040.P6507352666235301990

noncomputable section

/-- A067040: a(n) = n^(sum of digits of n).

Offset 0, canonical program `A067040.P6507352666235301990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067040.P6507352666235301990.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067342.P529008459942700744

`A007953(A000203(n+1))`
-/

namespace A067342.P529008459942700744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000203 (n + 1)).toNat

end

end A067342.P529008459942700744

noncomputable section

/-- A067342: Sum of decimal digits of sum of divisors of n.

Offset 1, canonical program `A067342.P529008459942700744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067342 (n : ℕ) : ℤ :=
  A067342.P529008459942700744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067397.P1658473277541325480

`(A053735(n)+A053735(n+1)-A053735(2*n)-1)/2`
-/

namespace A067397.P1658473277541325480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 n + A053735 (n + 1) - A053735 (2 * n) - 1 : ℚ) / 2

end

end A067397.P1658473277541325480

noncomputable section

/-- A067397: Maximal power of 3 that divides n-th Catalan number.

Offset 0, canonical program `A067397.P1658473277541325480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067397 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067397.P1658473277541325480.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075269.P16329555458538880526

`(-1)^n*A215602(n)`
-/

namespace A075269.P16329555458538880526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215602 n

end

end A075269.P16329555458538880526

noncomputable section

/-- A075269: Product of Lucas numbers and inverted Lucas numbers: a(n)=A000032(n)*A075193(n).

Offset 0, canonical program `A075269.P16329555458538880526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075269 (n : ℕ) : ℤ :=
  A075269.P16329555458538880526.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075269.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A046864.P8515681666187092735

`A051885(A000040(n+1))`
-/

namespace A046864.P8515681666187092735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A000040 (n + 1)).toNat

end

end A046864.P8515681666187092735

noncomputable section

/-- A046864: Smallest number whose digits sum to n-th prime.

Offset 1, canonical program `A046864.P8515681666187092735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A046864 (n : ℕ) : ℤ :=
  A046864.P8515681666187092735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A046864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046971.P1759314852335327146

`∏[char[A045716(n+1)-1]+1]`
-/

namespace A046971.P1759314852335327146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046971.P1759314852335327146

noncomputable section

/-- A046971: Maximal value of number of unitary divisors (see A034444) for integers in binary order range of n.

Offset 1, canonical program `A046971.P1759314852335327146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A046971 (n : ℕ) : ℤ :=
  (A046971.P1759314852335327146.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A046971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047670.P11744031878755806296

`(A001848(n)+A001847(n+1))/2`
-/

namespace A047670.P11744031878755806296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001848 n + A001847 (n + 1) : ℚ) / 2

end

end A047670.P11744031878755806296

noncomputable section

/-- A047670: Row 6 of array in A047666.

Offset 1, canonical program `A047670.P11744031878755806296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A047670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047670.P11744031878755806296.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A047670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048152.P2833726449597687178

`(A004736(n+1)-1)²%A002024(n+1)`
-/

namespace A048152.P2833726449597687178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A004736 (n + 1) - 1) ^ 2) (A002024 (n + 1))

end

end A048152.P2833726449597687178

noncomputable section

/-- A048152: Triangular array T read by rows: T(n,k) = k^2 mod n, for 1 <= k <= n, n >= 1.

Offset 1, canonical program `A048152.P2833726449597687178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048152 (n : ℕ) : ℤ :=
  A048152.P2833726449597687178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048572.P13017132504727043006

`A007953(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A048572.P13017132504727043006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007953 (a (n - 1) * a (n - 2)).toNat

end

end A048572.P13017132504727043006

noncomputable section

/-- A048572: a(n) = sum of digits of a(n-1)*a(n-2).

Offset 1, canonical program `A048572.P13017132504727043006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048572 (n : ℕ) : ℤ :=
  A048572.P13017132504727043006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048633.P1441411904083909438

`gcd(A001405(n+1), A034386(n+1))`
-/

namespace A048633.P1441411904083909438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (n + 1)) (A034386 (n + 1))

end

end A048633.P1441411904083909438

noncomputable section

/-- A048633: Largest squarefree number dividing n-th central binomial coefficient C(n,[ n/2 ]).

Offset 1, canonical program `A048633.P1441411904083909438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A048633 (n : ℕ) : ℤ :=
  (A048633.P1441411904083909438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A048633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048733.P10785183318991941354

`A048730(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048733.P10785183318991941354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048730 n : ℚ) / 4

end

end A048733.P10785183318991941354

noncomputable section

/-- A048733: a(n) = A048730(n)/4.

Offset 0, canonical program `A048733.P10785183318991941354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048733.P10785183318991941354.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048849.P2641125424009730594

`A048848(n+1)+A006093(n+1)`
-/

namespace A048849.P2641125424009730594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048848 (n + 1) + A006093 (n + 1)

end

end A048849.P2641125424009730594

noncomputable section

/-- A048849: a(n) = prime(phi(n)) + phi(prime(n)).

Offset 1, canonical program `A048849.P2641125424009730594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048849 (n : ℕ) : ℤ :=
  A048849.P2641125424009730594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048851.P1853448986789239219

`A000040(n+1)²+A000040(A028310(n))²`
-/

namespace A048851.P1853448986789239219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + A000040 (A028310 n).toNat ^ 2

end

end A048851.P1853448986789239219

noncomputable section

/-- A048851: Length of hypotenuse squared in right triangle formed by a prime spiral plotted in Cartesian coordinates.

Offset 1, canonical program `A048851.P1853448986789239219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048851 (n : ℕ) : ℤ :=
  A048851.P1853448986789239219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048852.P731177147256561861

`A000040(n+1)*Δ[A000040(A028310(n))]`
-/

namespace A048852.P731177147256561861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A048852.P731177147256561861

noncomputable section

/-- A048852: Difference between b^2 (in c^2=a^2+b^2) and product of successive prime pairs.

Offset 0, canonical program `A048852.P731177147256561861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048852 (n : ℕ) : ℤ :=
  A048852.P731177147256561861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049001.P16714800471455782698

`A001248(n+1)-2`
-/

namespace A049001.P16714800471455782698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - 2

end

end A049001.P16714800471455782698

noncomputable section

/-- A049001: a(n) = prime(n)^2 - 2.

Offset 1, canonical program `A049001.P16714800471455782698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049001 (n : ℕ) : ℤ :=
  A049001.P16714800471455782698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049031.P15455535512012466543

`2*A000292(A057353(n))*A110655(n)`
-/

namespace A049031.P15455535512012466543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000292 (A057353 n).toNat * A110655 n)

end

end A049031.P15455535512012466543

noncomputable section

/-- A049031: Maximization of sums of cubes of integer differences (b_[ i ]-i)^3 over permutations {b_[ i ], for i-1,2,...,n} on first n integers.

Offset 1, canonical program `A049031.P15455535512012466543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049031 (n : ℕ) : ℤ :=
  A049031.P15455535512012466543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049032.P6256970175047943519

`A000292(A057353(n))*A110655(n)`
-/

namespace A049032.P6256970175047943519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A057353 n).toNat * A110655 n

end

end A049032.P6256970175047943519

noncomputable section

/-- A049032: A049031/2.

Offset 1, canonical program `A049032.P6256970175047943519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049032 (n : ℕ) : ℤ :=
  A049032.P6256970175047943519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049098.P8844519897010937386

`p?[A013929(n+1)-1]`
-/

namespace A049098.P8844519897010937386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P8844519897010937386

noncomputable section

/-- A049098: Primes p such that p+1 is divisible by a square.

Offset 1, canonical program `A049098.P8844519897010937386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049098 (n : ℕ) : ℤ :=
  A049098.P8844519897010937386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049229.P12251038394700142042

`p?[A013929(n+1)+2]`
-/

namespace A049229.P12251038394700142042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P12251038394700142042

noncomputable section

/-- A049229: Primes p such that p-2 is not squarefree.

Offset 1, canonical program `A049229.P12251038394700142042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5668 terms. -/
def A049229 (n : ℕ) : ℤ :=
  A049229.P12251038394700142042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5668 terms. -/
def A049229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049232.P8046376036610074650

`p?[A013929(n+1)-2]`
-/

namespace A049232.P8046376036610074650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049232.P8046376036610074650

noncomputable section

/-- A049232: Primes p such that p+2 is divisible by a square.

Offset 1, canonical program `A049232.P8046376036610074650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5630 terms. -/
def A049232 (n : ℕ) : ℤ :=
  A049232.P8046376036610074650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5630 terms. -/
def A049232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049296.P11557902124767277285

`Δ[A008364(n+1)]`
-/

namespace A049296.P11557902124767277285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049296.P11557902124767277285

noncomputable section

/-- A049296: First differences of A008364. Also first differences of reduced residue system (RRS) for 4th primorial number, A002110(4)=210.

Offset 1, canonical program `A049296.P11557902124767277285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A049296 (n : ℕ) : ℤ :=
  A049296.P11557902124767277285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A049296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049416.P18422635801172898222

`∑[A049415(n+1)]`
-/

namespace A049416.P18422635801172898222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049416.P18422635801172898222

noncomputable section

/-- A049416: Largest number whose square has n digits.

Offset 1, canonical program `A049416.P18422635801172898222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A049416 (n : ℕ) : ℤ :=
  A049416.P18422635801172898222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A049416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049445.P7939714702885269085

`lt[lcm(n, A000120(n)), 2*n]`
-/

namespace A049445.P7939714702885269085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000120 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049445.P7939714702885269085

noncomputable section

/-- A049445: Numbers k with the property that the number of 1's in binary expansion of k (see A000120) divides k.

Offset 1, canonical program `A049445.P7939714702885269085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1764 terms. -/
def A049445 (n : ℕ) : ℤ :=
  (A049445.P7939714702885269085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1764 terms. -/
def A049445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049612.P3661608275935080557

`A062109(n)-A058396(n)`
-/

namespace A049612.P3661608275935080557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062109 n - A058396 n

end

end A049612.P3661608275935080557

noncomputable section

/-- A049612: a(n) = T(n,3), array T as in A049600.

Offset 0, canonical program `A049612.P3661608275935080557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A049612 (n : ℕ) : ℤ :=
  A049612.P3661608275935080557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A049612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049614.P5818696899068743169

`A000142(n)/A034386(n)`
-/

namespace A049614.P5818696899068743169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A034386 n : ℚ)

end

end A049614.P5818696899068743169

noncomputable section

/-- A049614: n! divided by its squarefree kernel.

Offset 0, canonical program `A049614.P5818696899068743169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049614.P5818696899068743169.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049803.P12540868050358314249

`(n*∑[A032766(A038500(n+1))])%(n+1)`
-/

namespace A049803.P12540868050358314249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A038500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A049803.P12540868050358314249

noncomputable section

/-- A049803: a(n) = n mod 3 + n mod 9 + ... + n mod 3^k, where 3^k <= n < 3^(k+1).

Offset 1, canonical program `A049803.P12540868050358314249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049803 (n : ℕ) : ℤ :=
  A049803.P12540868050358314249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049865.P13992076794767324350

`a(A047994(n+1)-1)+1` with `a(0)=0`
-/

namespace A049865.P13992076794767324350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A047994 (n + 1) - 1).toNat + 1

end

end A049865.P13992076794767324350

noncomputable section

/-- A049865: Number of iterations of unitary totient function (A047994) required to reach 1 from n.

Offset 1, canonical program `A049865.P13992076794767324350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049865 (n : ℕ) : ℤ :=
  (A049865.P13992076794767324350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050141.P47162817265067321

`2*A005614(n)+1`
-/

namespace A050141.P47162817265067321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005614 n + 1

end

end A050141.P47162817265067321

noncomputable section

/-- A050141: a(n) = 2*floor((n+1)*phi) - 2*floor(n*phi) - 1 where phi = (1 + sqrt(5))/2 is the golden ratio.

Offset 1, canonical program `A050141.P47162817265067321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050141 (n : ℕ) : ℤ :=
  A050141.P47162817265067321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050469.P17801092767341696516

`Δ[xor(n, floor(n/2))]*A050457(n+1)`
-/

namespace A050469.P17801092767341696516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050457 (n + 1)

end

end A050469.P17801092767341696516

noncomputable section

/-- A050469: a(n) = Sum_{ d divides n, n/d=1 mod 4} d - Sum_{ d divides n, n/d=3 mod 4} d.

Offset 1, canonical program `A050469.P17801092767341696516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050469 (n : ℕ) : ℤ :=
  A050469.P17801092767341696516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051123.P10788588402784793583

`A000045(n+2)-A051122(n)`
-/

namespace A051123.P10788588402784793583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A051122 n

end

end A051123.P10788588402784793583

noncomputable section

/-- A051123: a(n) = Fibonacci(n) OR Fibonacci(n+1).

Offset 0, canonical program `A051123.P10788588402784793583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A051123 (n : ℕ) : ℤ :=
  A051123.P10788588402784793583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A051123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051349.P2414547720400107792

`a(n-1)+A018252(n)` with `a(0)=0`
-/

namespace A051349.P2414547720400107792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A018252 n

end

end A051349.P2414547720400107792

noncomputable section

/-- A051349: Sum of first n nonprimes.

Offset 0, canonical program `A051349.P2414547720400107792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051349 (n : ℕ) : ℤ :=
  A051349.P2414547720400107792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051495.P15782650112282475523

`A086161(n)*A152271(A004396(n))`
-/

namespace A051495.P15782650112282475523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n * A152271 (A004396 n).toNat

end

end A051495.P15782650112282475523

noncomputable section

/-- A051495: Expansion of (1 + x + 2*x^2 - x^3 + x^4)/(1 - 3*x^3 + 3*x^6 - x^9).

Offset 0, canonical program `A051495.P15782650112282475523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051495 (n : ℕ) : ℤ :=
  A051495.P15782650112282475523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051638.P16959337953879523921

`∑{d}[A006047(n), A026741(#)]`
-/

namespace A051638.P16959337953879523921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026741 d

end

end A051638.P16959337953879523921

noncomputable section

/-- A051638: a(n) = Sum_{k=0..n} (C(n,k) mod 3).

Offset 0, canonical program `A051638.P16959337953879523921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051638 (n : ℕ) : ℤ :=
  A051638.P16959337953879523921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051803.P17294987635553116970

`eq[1, A051802(A051801(n))]`
-/

namespace A051803.P17294987635553116970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051803.P17294987635553116970

noncomputable section

/-- A051803: Numbers with nonzero multiplicative digital root 1.

Offset 1, canonical program `A051803.P17294987635553116970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A051803 (n : ℕ) : ℤ :=
  (A051803.P17294987635553116970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A051803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051804.P929861666918418574

`eq[2, A051802(n)]`
-/

namespace A051804.P929861666918418574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051804.P929861666918418574

noncomputable section

/-- A051804: Numbers with nonzero multiplicative digital root 2.

Offset 1, canonical program `A051804.P929861666918418574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. -/
def A051804 (n : ℕ) : ℤ :=
  (A051804.P929861666918418574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. -/
def A051804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051805.P10692238855703908079

`eq[3, A051802(n)]`
-/

namespace A051805.P10692238855703908079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051805.P10692238855703908079

noncomputable section

/-- A051805: Numbers with nonzero multiplicative digital root 3.

Offset 1, canonical program `A051805.P10692238855703908079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A051805 (n : ℕ) : ℤ :=
  (A051805.P10692238855703908079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A051805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051806.P3686198131234600742

`eq[4, A051802(n)]`
-/

namespace A051806.P3686198131234600742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051806.P3686198131234600742

noncomputable section

/-- A051806: Numbers with nonzero multiplicative digital root 4.

Offset 1, canonical program `A051806.P3686198131234600742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A051806 (n : ℕ) : ℤ :=
  (A051806.P3686198131234600742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A051806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051807.P4293244900954420581

`eq[5, A051802(n)]`
-/

namespace A051807.P4293244900954420581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051807.P4293244900954420581

noncomputable section

/-- A051807: Numbers with nonzero multiplicative digital root 5.

Offset 1, canonical program `A051807.P4293244900954420581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. -/
def A051807 (n : ℕ) : ℤ :=
  (A051807.P4293244900954420581.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. -/
def A051807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051808.P3656897858601393824

`eq[6, A051802(n)]`
-/

namespace A051808.P3656897858601393824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051808.P3656897858601393824

noncomputable section

/-- A051808: Numbers with nonzero multiplicative digital root 6.

Offset 1, canonical program `A051808.P3656897858601393824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A051808 (n : ℕ) : ℤ :=
  (A051808.P3656897858601393824.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A051808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051809.P8083613344598909675

`eq[7, A051802(n)]`
-/

namespace A051809.P8083613344598909675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051809.P8083613344598909675

noncomputable section

/-- A051809: Numbers with nonzero multiplicative digital root 7.

Offset 1, canonical program `A051809.P8083613344598909675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A051809 (n : ℕ) : ℤ :=
  (A051809.P8083613344598909675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A051809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051810.P7616896201699025823

`eq[8, A051802(n)]`
-/

namespace A051810.P7616896201699025823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051810.P7616896201699025823

noncomputable section

/-- A051810: Numbers with nonzero multiplicative digital root 8.

Offset 1, canonical program `A051810.P7616896201699025823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A051810 (n : ℕ) : ℤ :=
  (A051810.P7616896201699025823.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A051810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051811.P7186394499949268145

`lt[8, A051802(n)]`
-/

namespace A051811.P7186394499949268145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051811.P7186394499949268145

noncomputable section

/-- A051811: Numbers with nonzero multiplicative digital root 9.

Offset 1, canonical program `A051811.P7186394499949268145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051811 (n : ℕ) : ℤ :=
  (A051811.P7186394499949268145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051830.P18057110438361940045

`C(A006093(n+1)-1, 2)%5`
-/

namespace A051830.P18057110438361940045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006093 (n + 1) - 1).toNat 2 % 5

end

end A051830.P18057110438361940045

noncomputable section

/-- A051830: a(n) = Fibonacci(p(n)+1) mod p(n), where p(n) is the n-th prime.

Offset 1, canonical program `A051830.P18057110438361940045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051830 (n : ℕ) : ℤ :=
  (A051830.P18057110438361940045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051834.P17065733870883630534

`(2*(A001248(n+1)-1))%5`
-/

namespace A051834.P17065733870883630534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A001248 (n + 1) - 1)) 5

end

end A051834.P17065733870883630534

noncomputable section

/-- A051834: a(n) = Fibonacci(Pn-1) mod Pn, where Pn is the n-th prime.

Offset 1, canonical program `A051834.P17065733870883630534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051834 (n : ℕ) : ℤ :=
  A051834.P17065733870883630534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052204.P10723228008587755201

`2*A052203(n)-A005810(n)`
-/

namespace A052204.P10723228008587755201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052203 n - A005810 n

end

end A052204.P10723228008587755201

noncomputable section

/-- A052204: a(n) = (5n+1)*C(4n,n)/(3n+1).

Offset 0, canonical program `A052204.P10723228008587755201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A052204 (n : ℕ) : ℤ :=
  A052204.P10723228008587755201.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A052204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052282.P8537123680179149703

`∑[A008627(n)-A058212(A052938(n))]`
-/

namespace A052282.P8537123680179149703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n - A058212 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052282.P8537123680179149703

noncomputable section

/-- A052282: Number of 3 X 3 stochastic matrices under row and column permutations.

Offset 0, canonical program `A052282.P8537123680179149703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052282 (n : ℕ) : ℤ :=
  A052282.P8537123680179149703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052769.P5138098286952425402

`n*A052760(abs(1-n))`
-/

namespace A052769.P5138098286952425402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052760 |1 - (n : ℤ)|.toNat

end

end A052769.P5138098286952425402

noncomputable section

/-- A052769: E.g.f.: x^3*(exp(x)-1)^2.

Offset 0, canonical program `A052769.P5138098286952425402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A052769 (n : ℕ) : ℤ :=
  A052769.P5138098286952425402.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A052769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052777.P1349421382293424451

`n*A052761(abs(1-n))`
-/

namespace A052777.P1349421382293424451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052761 |1 - (n : ℤ)|.toNat

end

end A052777.P1349421382293424451

noncomputable section

/-- A052777: E.g.f.: x^2*(exp(x)-1)^3.

Offset 0, canonical program `A052777.P1349421382293424451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A052777 (n : ℕ) : ℤ :=
  A052777.P1349421382293424451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A052777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052964.P8414944058425265013

`A173125(n+1)+A173126(n+1)-A054877(n+1)`
-/

namespace A052964.P8414944058425265013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 (n + 1) + (A173126 (n + 1) - A054877 (n + 1))

end

end A052964.P8414944058425265013

noncomputable section

/-- A052964: Expansion of (1-x)/((1-2x)(1+x-x^2)).

Offset 0, canonical program `A052964.P8414944058425265013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A052964 (n : ℕ) : ℤ :=
  A052964.P8414944058425265013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A052964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052977.P5794547248361580462

`A052972(n+1)-Δ[A254685(n)]`
-/

namespace A052977.P5794547248361580462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052972 (n + 1) - (f1 (n + 1) - f1 n)

end

end A052977.P5794547248361580462

noncomputable section

/-- A052977: Expansion of (1-x)(1+x)/(1 - x - x^2 - x^3 + x^5).

Offset 0, canonical program `A052977.P5794547248361580462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A052977 (n : ℕ) : ℤ :=
  A052977.P5794547248361580462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A052977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053188.P18303623970101524975

`A053615(A056847(n))`
-/

namespace A053188.P18303623970101524975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A056847 n).toNat

end

end A053188.P18303623970101524975

noncomputable section

/-- A053188: Distance from n to nearest square.

Offset 0, canonical program `A053188.P18303623970101524975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053188 (n : ℕ) : ℤ :=
  A053188.P18303623970101524975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053192.P5933089044224272292

`(n+1)^3-A053191(n+1)`
-/

namespace A053192.P5933089044224272292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A053191 (n + 1)

end

end A053192.P5933089044224272292

noncomputable section

/-- A053192: a(n) is the cototient of n^3.

Offset 1, canonical program `A053192.P5933089044224272292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053192 (n : ℕ) : ℤ :=
  A053192.P5933089044224272292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053225.P1720383942302282191

`A053222(A053224(n+1))`
-/

namespace A053225.P1720383942302282191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A053224 (n + 1)).toNat

end

end A053225.P1720383942302282191

noncomputable section

/-- A053225: First differences of sigma(n) that are positive.

Offset 1, canonical program `A053225.P1720383942302282191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A053225 (n : ℕ) : ℤ :=
  A053225.P1720383942302282191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A053225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053228.P2496063461288682118

`lt[0, A053223(n+1)]+1`
-/

namespace A053228.P2496063461288682118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053228.P2496063461288682118

noncomputable section

/-- A053228: n for which second differences of sigma(n) are positive.

Offset 1, canonical program `A053228.P2496063461288682118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4851 terms. -/
def A053228 (n : ℕ) : ℤ :=
  (A053228.P2496063461288682118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4851 terms. -/
def A053228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053229.P8465332529038904274

`lt[A053223(n+1), 0]+1`
-/

namespace A053229.P8465332529038904274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053229.P8465332529038904274

noncomputable section

/-- A053229: Numbers n for which second differences of sigma(n) are negative.

Offset 1, canonical program `A053229.P8465332529038904274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. -/
def A053229 (n : ℕ) : ℤ :=
  (A053229.P8465332529038904274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. -/
def A053229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053230.P8529302224406390971

`A053224(n+2)-A053224(n+1)`
-/

namespace A053230.P8529302224406390971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 2) - A053224 (n + 1)

end

end A053230.P8529302224406390971

noncomputable section

/-- A053230: First differences between numbers k for which sigma(k) < sigma(k+1).

Offset 1, canonical program `A053230.P8529302224406390971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053230 (n : ℕ) : ℤ :=
  A053230.P8529302224406390971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053241.P3444779152513090390

`eq[2, A053238(n+1)]+1`
-/

namespace A053241.P3444779152513090390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053241.P3444779152513090390

noncomputable section

/-- A053241: Numbers k such that A053238(k) = 2.

Offset 1, canonical program `A053241.P3444779152513090390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8492 terms. -/
def A053241 (n : ℕ) : ℤ :=
  (A053241.P3444779152513090390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8492 terms. -/
def A053241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053246.P12887110105512609269

`A053222(A028310(n)+1)-1`
-/

namespace A053246.P12887110105512609269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A028310 n + 1).toNat - 1

end

end A053246.P12887110105512609269

noncomputable section

/-- A053246: First differences of chowla(n).

Offset 1, canonical program `A053246.P12887110105512609269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053246 (n : ℕ) : ℤ :=
  A053246.P12887110105512609269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053309.P10600181619937881038

`∑[A053308(n)]`
-/

namespace A053309.P10600181619937881038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053309.P10600181619937881038

noncomputable section

/-- A053309: Partial sums of A053308.

Offset 0, canonical program `A053309.P10600181619937881038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A053309 (n : ℕ) : ℤ :=
  A053309.P10600181619937881038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A053309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053369.P5866451683777517223

`(n+2)*Δ[A081293(n)]`
-/

namespace A053369.P5866451683777517223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A053369.P5866451683777517223

noncomputable section

/-- A053369: Linear recursion with Catalan numbers.

Offset 0, canonical program `A053369.P5866451683777517223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A053369 (n : ℕ) : ℤ :=
  A053369.P5866451683777517223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A053369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053460.P13665849281510210424

`eq[A000035(n), A008651(A142150(n))]`
-/

namespace A053460.P13665849281510210424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053460.P13665849281510210424

noncomputable section

/-- A053460: The 120 points of the 600-cell exactly integrate homogeneous polynomials of degree n.

Offset 1, canonical program `A053460.P13665849281510210424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A053460 (n : ℕ) : ℤ :=
  (A053460.P13665849281510210424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A053460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053569.P272504737771079334

`∑{d}[A007369(n+1), #]`
-/

namespace A053569.P272504737771079334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053569.P272504737771079334

noncomputable section

/-- A053569: Sum of divisors of numbers which cannot be sum of divisors of any number.

Offset 1, canonical program `A053569.P272504737771079334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053569 (n : ℕ) : ℤ :=
  (A053569.P272504737771079334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053850.P12600137398159799687

`A013929(eq[1, A013929(n+1)%2]+1)`
-/

namespace A053850.P12600137398159799687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013929 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053850.P12600137398159799687

noncomputable section

/-- A053850: Odd numbers divisible by a square > 1.

Offset 1, canonical program `A053850.P12600137398159799687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053850 (n : ℕ) : ℤ :=
  A053850.P12600137398159799687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054012.P12555440370121058311

`A054009(A054011(n+1))`
-/

namespace A054012.P12555440370121058311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (A054011 (n + 1)).toNat

end

end A054012.P12555440370121058311

noncomputable section

/-- A054012: Nonzero values of n read modulo (number of proper divisors of n).

Offset 1, canonical program `A054012.P12555440370121058311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054012 (n : ℕ) : ℤ :=
  A054012.P12555440370121058311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054067.P7097243798565487157

`A019587(n+1)+∑[n]`
-/

namespace A054067.P7097243798565487157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054067.P7097243798565487157

noncomputable section

/-- A054067: Position of first appearance of n in A054065.

Offset 1, canonical program `A054067.P7097243798565487157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054067 (n : ℕ) : ℤ :=
  A054067.P7097243798565487157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054108.P12292871805328763714

`A000984(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A054108.P12292871805328763714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 (n + 1) - a (n - 1)

end

end A054108.P12292871805328763714

noncomputable section

/-- A054108: a(n) = (-1)^(n+1)*Sum_{k=0..n+1}(-1)^k*binomial(2*k,k).

Offset 0, canonical program `A054108.P12292871805328763714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054108 (n : ℕ) : ℤ :=
  A054108.P12292871805328763714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054114.P2092372370366146121

`∑[A001700(n)]*A036453(n+1)`
-/

namespace A054114.P2092372370366146121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A036453 (n + 1)

end

end A054114.P2092372370366146121

noncomputable section

/-- A054114: T(2n+1,n), array T as in A054110.

Offset 0, canonical program `A054114.P2092372370366146121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054114 (n : ℕ) : ℤ :=
  A054114.P2092372370366146121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054122.P7130601607095019707

`ceil((n+1)/2*A047891(n+1))`
-/

namespace A054122.P7130601607095019707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A047891 (n + 1) : ℚ)⌉

end

end A054122.P7130601607095019707

noncomputable section

/-- A054122: T(2n,n), array T as in A054120.

Offset 0, canonical program `A054122.P7130601607095019707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A054122 (n : ℕ) : ℤ :=
  A054122.P7130601607095019707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A054122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054385.P13327735877817480647

`A022843(n+1)-A014246(n+1)`
-/

namespace A054385.P13327735877817480647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) - A014246 (n + 1)

end

end A054385.P13327735877817480647

noncomputable section

/-- A054385: Beatty sequence for e/(e-1); complement of A022843.

Offset 1, canonical program `A054385.P13327735877817480647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054385 (n : ℕ) : ℤ :=
  A054385.P13327735877817480647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054406.P6533506216585096645

`ceil((A003512(n+1)+n)/2)`
-/

namespace A054406.P6533506216585096645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003512 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A054406.P6533506216585096645

noncomputable section

/-- A054406: Beatty sequence for (3+sqrt 3)/2; complement of A022838.

Offset 1, canonical program `A054406.P6533506216585096645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054406 (n : ℕ) : ℤ :=
  A054406.P6533506216585096645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054444.P480886182038389124

`∑[A029907(Δ[n²])]`
-/

namespace A054444.P480886182038389124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054444.P480886182038389124

noncomputable section

/-- A054444: Even-indexed terms of A001629(n), n >= 2, (Fibonacci convolution).

Offset 0, canonical program `A054444.P480886182038389124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A054444 (n : ℕ) : ℤ :=
  A054444.P480886182038389124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A054444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054459.P14953385742709259650

`2*A006645(n+2)-A000129(n+1)`
-/

namespace A054459.P14953385742709259650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006645 (n + 2) - A000129 (n + 1)

end

end A054459.P14953385742709259650

noncomputable section

/-- A054459: A001333(n), n >= 1, convolved with itself.

Offset 0, canonical program `A054459.P14953385742709259650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054459 (n : ℕ) : ℤ :=
  A054459.P14953385742709259650.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054460.P9460801062302457116

`A364619(n+1)+A364619(n+2)`
-/

namespace A054460.P9460801062302457116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364619 (n + 1) + A364619 (n + 2)

end

end A054460.P9460801062302457116

noncomputable section

/-- A054460: A001333(n), n >= 1, convolved twice with itself.

Offset 0, canonical program `A054460.P9460801062302457116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A054460 (n : ℕ) : ℤ :=
  A054460.P9460801062302457116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A054460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054542.P2109901209092788677

`ceil(A000984(n)/(n+2))`
-/

namespace A054542.P2109901209092788677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000984 n : ℚ) / (n + 2 : ℚ)⌉

end

end A054542.P2109901209092788677

noncomputable section

/-- A054542: A Catalan-like sequence.

Offset 0, canonical program `A054542.P2109901209092788677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A054542 (n : ℕ) : ℤ :=
  A054542.P2109901209092788677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A054542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054549.P14228439514455555932

`∑[∑[∑[A038166(n)]]]`
-/

namespace A054549.P14228439514455555932
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054549.P14228439514455555932

noncomputable section

/-- A054549: Number of symmetric nonnegative integer 9 X 9 matrices with sum of elements equal to 4*n, under action of dihedral group D_4.

Offset 0, canonical program `A054549.P14228439514455555932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054549 (n : ℕ) : ℤ :=
  A054549.P14228439514455555932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054640.P16055093324299340109

`a(n-1)*A008864(n)` with `a(0)=1`
-/

namespace A054640.P16055093324299340109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008864 n

end

end A054640.P16055093324299340109

noncomputable section

/-- A054640: a(n) is the sum of the divisors of the n-th primorial: a(n) = A000203(A002110(n)).

Offset 0, canonical program `A054640.P16055093324299340109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054640 (n : ℕ) : ℤ :=
  A054640.P16055093324299340109.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054763.P18369926967675703603

`(A046933(n+1)+1)%6`
-/

namespace A054763.P18369926967675703603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046933 (n + 1) + 1) 6

end

end A054763.P18369926967675703603

noncomputable section

/-- A054763: Residues of consecutive prime differences modulo 6.

Offset 1, canonical program `A054763.P18369926967675703603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054763 (n : ℕ) : ℤ :=
  A054763.P18369926967675703603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054770.P14264956493222682426

`Δ[A054347(n)+n²]`
-/

namespace A054770.P14264956493222682426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054770.P14264956493222682426

noncomputable section

/-- A054770: Numbers that are not the sum of distinct Lucas numbers 1,3,4,7,11, ... (A000204).

Offset 1, canonical program `A054770.P14264956493222682426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054770 (n : ℕ) : ℤ :=
  A054770.P14264956493222682426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054796.P2330397691738017337

`A054795(n+1)-6`
-/

namespace A054796.P2330397691738017337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054795 (n + 1) - 6

end

end A054796.P2330397691738017337

noncomputable section

/-- A054796: Numbers of form 17+n^2+n or 17+2*n^2.

Offset 1, canonical program `A054796.P2330397691738017337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054796 (n : ℕ) : ℤ :=
  A054796.P2330397691738017337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054843.P5783791251269044681

`A010054(n)+∑{d}[n, #%2]`
-/

namespace A054843.P5783791251269044681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A054843.P5783791251269044681

noncomputable section

/-- A054843: Number of sequences of consecutive nonnegative integers (including sequences of length 1) that sum to n.

Offset 0, canonical program `A054843.P5783791251269044681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054843 (n : ℕ) : ℤ :=
  A054843.P5783791251269044681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054848.P2491255757427976434

`n-A054847(n)`
-/

namespace A054848.P2491255757427976434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054847 n

end

end A054848.P2491255757427976434

noncomputable section

/-- A054848: n - nearest integer to (nearest integer to n^(2/3))^(3/2).

Offset 0, canonical program `A054848.P2491255757427976434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054848 (n : ℕ) : ℤ :=
  A054848.P2491255757427976434.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055217.P14417909885086279290

`∑[3^n]-A097861(n+1)`
-/

namespace A055217.P14417909885086279290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A097861 (n + 1)

end

end A055217.P14417909885086279290

noncomputable section

/-- A055217: a(n) = sum of the first n coefficients of (1+x+x^2)^n.

Offset 0, canonical program `A055217.P14417909885086279290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A055217 (n : ℕ) : ℤ :=
  A055217.P14417909885086279290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A055217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055227.P1043422903931282475

`round(∏[sqrt(A028310(n))])`
-/

namespace A055227.P1043422903931282475
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028310 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A055227.P1043422903931282475

noncomputable section

/-- A055227: Nearest integer to sqrt( n! ).

Offset 0, canonical program `A055227.P1043422903931282475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A055227 (n : ℕ) : ℤ :=
  A055227.P1043422903931282475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A055227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055244.P12033578331002571997

`A239342(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A055244.P12033578331002571997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A239342 n + a (n - 1)

end

end A055244.P12033578331002571997

noncomputable section

/-- A055244: Number of certain stackings of n+1 squares on a double staircase.

Offset 0, canonical program `A055244.P12033578331002571997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A055244 (n : ℕ) : ℤ :=
  A055244.P12033578331002571997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A055244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055357.P9303554876798707211

`A000460(n+3)+∑[∑[3^(n+1)-2^(n+1)]]`
-/

namespace A055357.P9303554876798707211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000460 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055357.P9303554876798707211

noncomputable section

/-- A055357: Number of increasing mobiles (circular rooted trees) with n nodes and 3 leaves.

Offset 4, canonical program `A055357.P9303554876798707211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A055357 (n : ℕ) : ℤ :=
  A055357.P9303554876798707211.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A055357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055562.P16948608332266635314

`A022441(n)-a(n-1)` with `a(0)=2`
-/

namespace A055562.P16948608332266635314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A022441 n - a (n - 1)

end

end A055562.P16948608332266635314

noncomputable section

/-- A055562: a(n) = least number greater than a(n-1) not the sum of an earlier pair of consecutive terms, a(0) = 2.

Offset 0, canonical program `A055562.P16948608332266635314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055562 (n : ℕ) : ℤ :=
  A055562.P16948608332266635314.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055660.P6993472660760828047

`3*A030060(n)`
-/

namespace A055660.P6993472660760828047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A030060 n

end

end A055660.P6993472660760828047

noncomputable section

/-- A055660: Number of (2,2; n,n)-partitions of a chain of length n^2 + n.

Offset 4, canonical program `A055660.P6993472660760828047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A055660 (n : ℕ) : ℤ :=
  A055660.P6993472660760828047.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A055660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055810.P3913804122985795468

`A006416(n+2)+A055821(n+4)*A057427(n)`
-/

namespace A055810.P3913804122985795468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2) + A055821 (n + 4) * A057427 n

end

end A055810.P3913804122985795468

noncomputable section

/-- A055810: a(n) = T(n,n-5), array T as in A055807.

Offset 5, canonical program `A055810.P3913804122985795468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055810 (n : ℕ) : ℤ :=
  A055810.P3913804122985795468.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055879.P6759021124133317183

`A039658(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A055879.P6759021124133317183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039658 n + (2 - a (n - 1))

end

end A055879.P6759021124133317183

noncomputable section

/-- A055879: Least nondecreasing sequence with a(1) = 1 and Hankel transform {1,1,1,1,...}.

Offset 1, canonical program `A055879.P6759021124133317183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A055879 (n : ℕ) : ℤ :=
  A055879.P6759021124133317183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A055879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055933.P1168599586007844264

`eq[A007953(n)%A051801(n), A000007(n)]`
-/

namespace A055933.P1168599586007844264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055933.P1168599586007844264

noncomputable section

/-- A055933: Product of digits (not counting zeros) of n divides sum of digits of n.

Offset 1, canonical program `A055933.P1168599586007844264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A055933 (n : ℕ) : ℤ :=
  (A055933.P1168599586007844264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A055933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056328.P13611939948640542517

`A056323(n+1)-A001998(n)`
-/

namespace A056328.P13611939948640542517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056323 (n + 1) - A001998 n

end

end A056328.P13611939948640542517

noncomputable section

/-- A056328: Number of reversible string structures with n beads using exactly four different colors.

Offset 1, canonical program `A056328.P13611939948640542517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A056328 (n : ℕ) : ℤ :=
  A056328.P13611939948640542517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A056328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056473.P6112660942085821025

`A032263(∑[char[2*n]])/3`
-/

namespace A056473.P6112660942085821025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032263 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A056473.P6112660942085821025

noncomputable section

/-- A056473: Number of palindromic structures using exactly four different symbols.

Offset 1, canonical program `A056473.P6112660942085821025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A056473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056473.P6112660942085821025.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A056473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056556.P11335361665985267770

`∑[A023533(n)]-1`
-/

namespace A056556.P11335361665985267770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A056556.P11335361665985267770

noncomputable section

/-- A056556: First tetrahedral coordinate; repeat m (m+1)*(m+2)/2 times.

Offset 0, canonical program `A056556.P11335361665985267770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056556 (n : ℕ) : ℤ :=
  A056556.P11335361665985267770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057335.P1378643245781663048

`A000040(A000120(n))*a(floor(n/2))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057335.P1378643245781663048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A000120 n).toNat * a ⌊(n : ℚ) / 2⌋.toNat

end

end A057335.P1378643245781663048

noncomputable section

/-- A057335: a(0) = 1, and for n > 0, a(n) = A000040(A000120(n)) * a(floor(n/2)); essentially sequence A055932 generated using A000120, hence sorted by number of factors.

Offset 0, canonical program `A057335.P1378643245781663048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057335 (n : ℕ) : ℤ :=
  A057335.P1378643245781663048.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057531.P15483397355566411150

`eq[A032741(n)+1, A007953(n)]`
-/

namespace A057531.P15483397355566411150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P15483397355566411150

noncomputable section

/-- A057531: Numbers whose sum of digits and number of divisors are equal.

Offset 1, canonical program `A057531.P15483397355566411150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A057531 (n : ℕ) : ℤ :=
  (A057531.P15483397355566411150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A057531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057536.P3712307123288283069

`∑{digits}[2*n, A008624(#+1)]`
-/

namespace A057536.P3712307123288283069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008624 (x + 1)).sum

end

end A057536.P3712307123288283069

noncomputable section

/-- A057536: Minimal number of coins needed to pay n Euro-cents using the Euro currency.

Offset 0, canonical program `A057536.P3712307123288283069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057536 (n : ℕ) : ℤ :=
  A057536.P3712307123288283069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057541.P12411612141850877214

`∩[A056020(n+1), A057540(n+1)]`
-/

namespace A057541.P12411612141850877214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057541.P12411612141850877214

noncomputable section

/-- A057541: Birthday set of order 9: i.e., numbers congruent to +- 1 modulo 2, 3, 4, 5, 6, 7, 8 and 9.

Offset 1, canonical program `A057541.P12411612141850877214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A057541 (n : ℕ) : ℤ :=
  (A057541.P12411612141850877214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A057541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057552.P15801216228860048418

`∑[A001791(n+1)]`
-/

namespace A057552.P15801216228860048418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P15801216228860048418

noncomputable section

/-- A057552: a(n) = Sum_{k=0..n} C(2k+2,k).

Offset 0, canonical program `A057552.P15801216228860048418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A057552 (n : ℕ) : ℤ :=
  A057552.P15801216228860048418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A057552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057661.P8562176095648835282

`(1+A057660(n+1))/2`
-/

namespace A057661.P8562176095648835282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A057660 (n + 1) : ℚ) / 2

end

end A057661.P8562176095648835282

noncomputable section

/-- A057661: a(n) = Sum_{k=1..n} lcm(n,k)/n.

Offset 1, canonical program `A057661.P8562176095648835282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057661.P8562176095648835282.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057930.P8479828398702324174

`A057929(n+1)+A057929(n)`
-/

namespace A057930.P8479828398702324174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057929 (n + 1) + A057929 n

end

end A057930.P8479828398702324174

noncomputable section

/-- A057930: Sequence b(n) mentioned in A057929.

Offset 1, canonical program `A057930.P8479828398702324174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057930 (n : ℕ) : ℤ :=
  A057930.P8479828398702324174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058032.P13195019555166246922

`∑[char[A045716(n+1)]]`
-/

namespace A058032.P13195019555166246922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058032.P13195019555166246922

noncomputable section

/-- A058032: Largest m such that 2^n / primorial(m) >= 1.

Offset 0, canonical program `A058032.P13195019555166246922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058032 (n : ℕ) : ℤ :=
  (A058032.P13195019555166246922.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058078.P15001168305673574876

`gcd(A058077(n+1), A058077(n+2))`
-/

namespace A058078.P15001168305673574876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058077 (n + 1)) (A058077 (n + 2))

end

end A058078.P15001168305673574876

noncomputable section

/-- A058078: Greatest common divisor of two binomial coefficients formed from consecutive primes: a(n) = gcd(C(prime(n+2), prime(n+1)), C(prime(n+1), prime(n))).

Offset 1, canonical program `A058078.P15001168305673574876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A058078 (n : ℕ) : ℤ :=
  (A058078.P15001168305673574876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A058078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058186.P13779469765456657561

`A007091(A058185(n+1))`
-/

namespace A058186.P13779469765456657561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A058185 (n + 1)).toNat

end

end A058186.P13779469765456657561

noncomputable section

/-- A058186: Numbers (written in base 5) which appear the same when written in base 5 and base 10/2.

Offset 1, canonical program `A058186.P13779469765456657561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, A058185, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A058186 (n : ℕ) : ℤ :=
  A058186.P13779469765456657561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, A058185, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A058186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058254.P3014103695995548683

`lcm(a(n-1), A006093(n))` with `a(0)=1`
-/

namespace A058254.P3014103695995548683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A006093 n)

end

end A058254.P3014103695995548683

noncomputable section

/-- A058254: a(n) = lcm{prime(i)-1, i=1..n}.

Offset 0, canonical program `A058254.P3014103695995548683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A058254 (n : ℕ) : ℤ :=
  (A058254.P3014103695995548683.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A058254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058271.P8840651636009119007

`A058269(n+1)+A057427(n)`
-/

namespace A058271.P8840651636009119007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058269 (n + 1) + A057427 n

end

end A058271.P8840651636009119007

noncomputable section

/-- A058271: An approximation to sigma_{3/2}(n): ceiling( sum_{d|n} d^(3/2) ).

Offset 1, canonical program `A058271.P8840651636009119007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058271 (n : ℕ) : ℤ :=
  A058271.P8840651636009119007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058274.P5628590533721201962

`A058272(n+1)+A057427(n)`
-/

namespace A058274.P5628590533721201962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058272 (n + 1) + A057427 n

end

end A058274.P5628590533721201962

noncomputable section

/-- A058274: An approximation to sigma_{5/2}(n): ceiling( sum_{d|n} d^(5/2) ).

Offset 1, canonical program `A058274.P5628590533721201962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058274 (n : ℕ) : ℤ :=
  A058274.P5628590533721201962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058749.P7714984297869943431

`A058738(n)+A057427(n)`
-/

namespace A058749.P7714984297869943431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n + A057427 n

end

end A058749.P7714984297869943431

noncomputable section

/-- A058749: a(n) = ceiling(n*exp(n)).

Offset 0, canonical program `A058749.P7714984297869943431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A058749 (n : ℕ) : ℤ :=
  A058749.P7714984297869943431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A058749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058751.P13043009951730416498

`A058750(n+1)+A057427(n)`
-/

namespace A058751.P13043009951730416498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + A057427 n

end

end A058751.P13043009951730416498

noncomputable section

/-- A058751: a(n) = ceiling(log(n)*exp(n)).

Offset 1, canonical program `A058751.P13043009951730416498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A058751 (n : ℕ) : ℤ :=
  A058751.P13043009951730416498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A058751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058987.P15007422720528304983

`A153008(n)+A000245(n)`
-/

namespace A058987.P15007422720528304983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153008 n + A000245 n

end

end A058987.P15007422720528304983

noncomputable section

/-- A058987: a(n) = Catalan(n) - Motzkin(n-1).

Offset 1, canonical program `A058987.P15007422720528304983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A058987 (n : ℕ) : ℤ :=
  A058987.P15007422720528304983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A058987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059012.P14582640495260364617

`xor(1, A059011(n+1))`
-/

namespace A059012.P14582640495260364617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059011 (n + 1))

end

end A059012.P14582640495260364617

noncomputable section

/-- A059012: Numbers that have an even number of 0's and 1's in their binary expansion.

Offset 1, canonical program `A059012.P14582640495260364617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059012 (n : ℕ) : ℤ :=
  A059012.P14582640495260364617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059014.P3544405708758436744

`xor(1, A059013(n+1))`
-/

namespace A059014.P3544405708758436744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059013 (n + 1))

end

end A059014.P3544405708758436744

noncomputable section

/-- A059014: Numbers that have an even number of 0's and an odd number of 1's in binary expansion.

Offset 1, canonical program `A059014.P3544405708758436744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059014 (n : ℕ) : ℤ :=
  A059014.P3544405708758436744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059131.P15079196428124471253

`A059129(A002264(n))+(n%3)%2`
-/

namespace A059131.P15079196428124471253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (A002264 n).toNat + ((n % 3 % 2 : ℕ) : ℤ)

end

end A059131.P15079196428124471253

noncomputable section

/-- A059131: A hierarchical sequence (W3{2,2}* - see A059126).

Offset 0, canonical program `A059131.P15079196428124471253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059131 (n : ℕ) : ℤ :=
  A059131.P15079196428124471253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059174.P3103714182843874225

`A059173(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A059174.P3103714182843874225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059173 (n - 1) + a (n - 1)

end

end A059174.P3103714182843874225

noncomputable section

/-- A059174: Maximal number of regions into which 5-space can be divided by n hyperspheres.

Offset 0, canonical program `A059174.P3103714182843874225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059174 (n : ℕ) : ℤ :=
  A059174.P3103714182843874225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059325.P16762475601172180159

`A024898(n+1)-1`
-/

namespace A059325.P16762475601172180159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) - 1

end

end A059325.P16762475601172180159

noncomputable section

/-- A059325: Numbers n such that 6n + 5 is prime.

Offset 1, canonical program `A059325.P16762475601172180159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059325 (n : ℕ) : ℤ :=
  A059325.P16762475601172180159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059348.P17500318434418441565

`A208355(n+1)+A208355(n)`
-/

namespace A059348.P17500318434418441565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 1) + A208355 n

end

end A059348.P17500318434418441565

noncomputable section

/-- A059348: Third diagonal of array in A059347.

Offset 2, canonical program `A059348.P17500318434418441565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A059348 (n : ℕ) : ℤ :=
  A059348.P17500318434418441565.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A059348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059485.P2045085870398299258

`lt[1, A035218(n+1)]+1`
-/

namespace A059485.P2045085870398299258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059485.P2045085870398299258

noncomputable section

/-- A059485: Highest prime factor is greater than 3.

Offset 1, canonical program `A059485.P2045085870398299258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059485 (n : ℕ) : ℤ :=
  (A059485.P2045085870398299258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059581.P17730618558655217201

`A059571(n+1)-abs(A002321(n+1))`
-/

namespace A059581.P17730618558655217201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - |A002321 (n + 1)|

end

end A059581.P17730618558655217201

noncomputable section

/-- A059581: From Von Sterneck's conjecture: floor(sqrt(n)) - 2*|Mertens's function A002321(n)|.

Offset 1, canonical program `A059581.P17730618558655217201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059581 (n : ℕ) : ℤ :=
  A059581.P17730618558655217201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059595.P15272793515478132709

`∑[A038166(n)]+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A059595.P15272793515478132709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038166 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A059595.P15272793515478132709

noncomputable section

/-- A059595: Seventh column (m=6) of convolution triangle A059594(n,m).

Offset 0, canonical program `A059595.P15272793515478132709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059595 (n : ℕ) : ℤ :=
  A059595.P15272793515478132709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059616.P15840929490615819020

`A051712(A028310(n))*A106609(n)`
-/

namespace A059616.P15840929490615819020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (A028310 n).toNat * A106609 n

end

end A059616.P15840929490615819020

noncomputable section

/-- A059616: Numerator of n*(n-1)/(8*(2*n+1)).

Offset 0, canonical program `A059616.P15840929490615819020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059616 (n : ℕ) : ℤ :=
  A059616.P15840929490615819020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059769.P5102715236662014780

`∑[A262184(n+3)]-(n+2)`
-/

namespace A059769.P5102715236662014780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262184 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A059769.P5102715236662014780

noncomputable section

/-- A059769: Frobenius number of the subsemigroup of the natural numbers generated by successive pairs of Fibonacci numbers.

Offset 3, canonical program `A059769.P5102715236662014780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A059769 (n : ℕ) : ℤ :=
  A059769.P5102715236662014780.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A059769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060037.P5636579364470323384

`A007606(n+1)²%A027434(n+1)`
-/

namespace A060037.P5636579364470323384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007606 (n + 1) ^ 2) (A027434 (n + 1))

end

end A060037.P5636579364470323384

noncomputable section

/-- A060037: Triangular array T read by rows: T(n,k)=k^2 mod n, for k=1,2,...,[n/2], n=2,3,...

Offset 2, canonical program `A060037.P5636579364470323384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060037 (n : ℕ) : ℤ :=
  A060037.P5636579364470323384.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060062.P9908052312092922423

`∑[(n+1)²*A060061(n+1)]`
-/

namespace A060062.P9908052312092922423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A060061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060062.P9908052312092922423

noncomputable section

/-- A060062: Fifth column of triangle A060058.

Offset 0, canonical program `A060062.P9908052312092922423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060062 (n : ℕ) : ℤ :=
  A060062.P9908052312092922423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060312.P18115054716268968437

`A001224(n+1)-A063524(n)`
-/

namespace A060312.P18115054716268968437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) - A063524 n

end

end A060312.P18115054716268968437

noncomputable section

/-- A060312: Number of distinct ways to tile a 2 X n rectangle with dominoes (solutions are identified if they are rotations or reflections of each other).

Offset 1, canonical program `A060312.P18115054716268968437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A060312 (n : ℕ) : ℤ :=
  A060312.P18115054716268968437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A060312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060367.P9155873147261738328

`floor(A057660(n+1)/(n+1))`
-/

namespace A060367.P9155873147261738328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057660 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P9155873147261738328

noncomputable section

/-- A060367: Average order of an element in a cyclic group of order n rounded down.

Offset 1, canonical program `A060367.P9155873147261738328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060367 (n : ℕ) : ℤ :=
  A060367.P9155873147261738328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060429.P17531702855464444184

`4*A001248(n+1)+1`
-/

namespace A060429.P17531702855464444184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001248 (n + 1) + 1

end

end A060429.P17531702855464444184

noncomputable section

/-- A060429: a(n) = 4*prime(n)^2+1.

Offset 1, canonical program `A060429.P17531702855464444184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060429 (n : ℕ) : ℤ :=
  A060429.P17531702855464444184.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060549.P14112489990380296126

`A060546(n+1)-A060548(n+1)`
-/

namespace A060549.P14112489990380296126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - A060548 (n + 1)

end

end A060549.P14112489990380296126

noncomputable section

/-- A060549: a(n) is the number of distinct patterns (modulo geometric D3-operations) with strict median-reflective (palindrome) symmetry (i.e., having no other symmetry) which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

Offset 1, canonical program `A060549.P14112489990380296126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A060549 (n : ℕ) : ℤ :=
  A060549.P14112489990380296126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A060549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060586.P12534353226957296192

`A060585(A060583(n))`
-/

namespace A060586.P12534353226957296192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060585 (A060583 n).toNat

end

end A060586.P12534353226957296192

noncomputable section

/-- A060586: Minimum number of moves required to reach position n starting from 0 in Tower of Hanoi (with three pegs: 0,1,2), where with position n written in base 3, xyz means smallest disk is on peg z, second smallest is on peg y, third smallest on peg x, etc. and leading zeros indicate largest disks are all on peg 0.

Offset 0, canonical program `A060586.P12534353226957296192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060586 (n : ℕ) : ℤ :=
  A060586.P12534353226957296192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060658.P10391522768157546059

`∩[2*n, A007369(n+1)]`
-/

namespace A060658.P10391522768157546059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060658.P10391522768157546059

noncomputable section

/-- A060658: Even numbers n such that sigma(x) = n has no solution.

Offset 1, canonical program `A060658.P10391522768157546059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3522 terms. -/
def A060658 (n : ℕ) : ℤ :=
  (A060658.P10391522768157546059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3522 terms. -/
def A060658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060692.P18079312573053743829

`A002380(n+1)+A002379(n+1)`
-/

namespace A060692.P18079312573053743829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (n + 1) + A002379 (n + 1)

end

end A060692.P18079312573053743829

noncomputable section

/-- A060692: Number of parts if 3^n is partitioned into parts of size 2^n as far as possible and into parts of size 1^n.

Offset 1, canonical program `A060692.P18079312573053743829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A060692 (n : ℕ) : ℤ :=
  A060692.P18079312573053743829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A060692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060885.P6901912794972420859

`n*(A228293(n)+1)+1`
-/

namespace A060885.P6901912794972420859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228293 n + 1) + 1

end

end A060885.P6901912794972420859

noncomputable section

/-- A060885: a(n) = Sum_{j=0..10} n^j.

Offset 0, canonical program `A060885.P6901912794972420859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060885 (n : ℕ) : ℤ :=
  A060885.P6901912794972420859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060888.P18100299168051920700

`n*A062159(n)+1`
-/

namespace A060888.P18100299168051920700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062159 n + 1

end

end A060888.P18100299168051920700

noncomputable section

/-- A060888: a(n) = n^6 - n^5 + n^4 - n^3 + n^2 - n + 1.

Offset 0, canonical program `A060888.P18100299168051920700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060888 (n : ℕ) : ℤ :=
  A060888.P18100299168051920700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060901.P14940485757371222660

`A038500(A037915(n))`
-/

namespace A060901.P14940485757371222660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A037915 n).toNat

end

end A060901.P14940485757371222660

noncomputable section

/-- A060901: Exact power of 3 that divides the n-th Fibonacci number (sequence A000045).

Offset 1, canonical program `A060901.P14940485757371222660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060901 (n : ℕ) : ℤ :=
  A060901.P14940485757371222660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060926.P3658268357209895681

`A078006(A005843(n+1))-A077970(2*n)`
-/

namespace A060926.P3658268357209895681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 (A005843 (n + 1)).toNat - A077970 (2 * n)

end

end A060926.P3658268357209895681

noncomputable section

/-- A060926: Row sums of triangle A060923 (even part of bisection of Lucas triangle).

Offset 0, canonical program `A060926.P3658268357209895681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A060926 (n : ℕ) : ℤ :=
  A060926.P3658268357209895681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A060926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060927.P1552723893086128136

`record[A077970(n)-Δ[A077970(n)]]`
-/

namespace A060927.P1552723893086128136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060927.P1552723893086128136

noncomputable section

/-- A060927: Row sums of triangle A060924 (odd part of bisection of Lucas triangle).

Offset 0, canonical program `A060927.P1552723893086128136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A060927 (n : ℕ) : ℤ :=
  A060927.P1552723893086128136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A060927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060934.P8901462586697626051

`A004799(Δ[n²])`
-/

namespace A060934.P8901462586697626051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060934.P8901462586697626051

noncomputable section

/-- A060934: Second column of Lucas bisection triangle (even part).

Offset 0, canonical program `A060934.P8901462586697626051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A060934 (n : ℕ) : ℤ :=
  A060934.P8901462586697626051.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A060934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060939.P1361743581261706552

`∑[A008864(n+1)]`
-/

namespace A060939.P1361743581261706552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P1361743581261706552

noncomputable section

/-- A060939: a(n) = (Sum of the first n primes) + n.

Offset 1, canonical program `A060939.P1361743581261706552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060939 (n : ℕ) : ℤ :=
  A060939.P1361743581261706552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060978.P9465525614971023355

`eq[10, abs(A055017(n))]`
-/

namespace A060978.P9465525614971023355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060978.P9465525614971023355

noncomputable section

/-- A060978: |First digit - second digit + third digit - fourth digit ...| = 10.

Offset 1, canonical program `A060978.P9465525614971023355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A060978 (n : ℕ) : ℤ :=
  (A060978.P9465525614971023355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A060978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060980.P16396531685761901116

`eq[12, abs(A055017(n))]`
-/

namespace A060980.P16396531685761901116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060980.P16396531685761901116

noncomputable section

/-- A060980: |First digit - second digit + third digit - fourth digit ...| = 12.

Offset 1, canonical program `A060980.P16396531685761901116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A060980 (n : ℕ) : ℤ :=
  (A060980.P16396531685761901116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A060980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061091.P2013363299154610699

`∑[A063524(A009195(n+1))]`
-/

namespace A061091.P2013363299154610699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P2013363299154610699

noncomputable section

/-- A061091: Number of k with 1 <= k <= n relatively prime to phi(k).

Offset 1, canonical program `A061091.P2013363299154610699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061091 (n : ℕ) : ℤ :=
  A061091.P2013363299154610699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061150.P16059668170846377960

`∑{d}[n+1, A033286(#)]`
-/

namespace A061150.P16059668170846377960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033286 d

end

end A061150.P16059668170846377960

noncomputable section

/-- A061150: a(n) = Sum_{d|n} d*prime(d).

Offset 1, canonical program `A061150.P16059668170846377960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061150 (n : ℕ) : ℤ :=
  A061150.P16059668170846377960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061150.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061265.P12376501759805186259

`Δ[floor(sqrt(A001748(n+1)/3))]`
-/

namespace A061265.P12376501759805186259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A001748 (n + 1) : ℚ) / 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061265.P12376501759805186259

noncomputable section

/-- A061265: Number of squares between n-th prime and (n+1)st prime.

Offset 1, canonical program `A061265.P12376501759805186259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061265 (n : ℕ) : ℤ :=
  A061265.P12376501759805186259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061286.P17711368514956108922

`2^A006093(n+1)`
-/

namespace A061286.P17711368514956108922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006093 (n + 1) : ℤ)

end

end A061286.P17711368514956108922

noncomputable section

/-- A061286: Smallest integer for which the number of divisors is the n-th prime.

Offset 1, canonical program `A061286.P17711368514956108922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061286.P17711368514956108922.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061439.P5107726913665687421

`A018005(n+2)-1`
-/

namespace A061439.P5107726913665687421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 2) - 1

end

end A061439.P5107726913665687421

noncomputable section

/-- A061439: Largest number whose cube has n digits.

Offset 1, canonical program `A061439.P5107726913665687421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A061439 (n : ℕ) : ℤ :=
  A061439.P5107726913665687421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A061439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061471.P7279720619341012991

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=2`
-/

namespace A061471.P7279720619341012991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061471.P7279720619341012991

noncomputable section

/-- A061471: First (leftmost) digit - second digit + third digit - fourth digit .... = 2.

Offset 1, canonical program `A061471.P7279720619341012991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A061471 (n : ℕ) : ℤ :=
  (A061471.P7279720619341012991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A061471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061472.P7918386733509279837

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=3`
-/

namespace A061472.P7918386733509279837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061472.P7918386733509279837

noncomputable section

/-- A061472: First (leftmost) digit - second digit + third digit - fourth digit .... = 3.

Offset 1, canonical program `A061472.P7918386733509279837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A061472 (n : ℕ) : ℤ :=
  (A061472.P7918386733509279837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A061472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061473.P12784798883308001340

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=4`
-/

namespace A061473.P12784798883308001340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061473.P12784798883308001340

noncomputable section

/-- A061473: First (leftmost) digit - second digit + third digit - fourth digit .... = 4.

Offset 1, canonical program `A061473.P12784798883308001340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A061473 (n : ℕ) : ℤ :=
  (A061473.P12784798883308001340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A061473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061474.P6394223303749271842

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=5`
-/

namespace A061474.P6394223303749271842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061474.P6394223303749271842

noncomputable section

/-- A061474: First (leftmost) digit - second digit + third digit - fourth digit .... = 5.

Offset 1, canonical program `A061474.P6394223303749271842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A061474 (n : ℕ) : ℤ :=
  (A061474.P6394223303749271842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A061474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061475.P655871579169783819

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=6`
-/

namespace A061475.P655871579169783819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061475.P655871579169783819

noncomputable section

/-- A061475: First (leftmost) digit - second digit + third digit - fourth digit .... = 6.

Offset 1, canonical program `A061475.P655871579169783819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A061475 (n : ℕ) : ℤ :=
  (A061475.P655871579169783819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A061475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061476.P279424405032594170

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=7`
-/

namespace A061476.P279424405032594170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061476.P279424405032594170

noncomputable section

/-- A061476: First (leftmost) digit - second digit + third digit - fourth digit .... = 7.

Offset 1, canonical program `A061476.P279424405032594170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A061476 (n : ℕ) : ℤ :=
  (A061476.P279424405032594170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A061476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061477.P4513353281043858727

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=8`
-/

namespace A061477.P4513353281043858727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061477.P4513353281043858727

noncomputable section

/-- A061477: First (leftmost) digit - second digit + third digit - fourth digit .... = 8.

Offset 1, canonical program `A061477.P4513353281043858727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A061477 (n : ℕ) : ℤ :=
  (A061477.P4513353281043858727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A061477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061489.P13512089676603139105

`record[A103609(n)+A062157(n)]`
-/

namespace A061489.P13512089676603139105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P13512089676603139105

noncomputable section

/-- A061489: Numbers that are Fibonacci numbers plus or minus 1.

Offset 1, canonical program `A061489.P13512089676603139105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A061489 (n : ℕ) : ℤ :=
  A061489.P13512089676603139105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A061489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061725.P14287202309027882808

`A001248(n+1)+2`
-/

namespace A061725.P14287202309027882808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + 2

end

end A061725.P14287202309027882808

noncomputable section

/-- A061725: p^2 + 2 where p is a prime.

Offset 1, canonical program `A061725.P14287202309027882808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061725 (n : ℕ) : ℤ :=
  A061725.P14287202309027882808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061785.P18407574838502965759

`eq[1, A008952(n+1)]-(n+1)`
-/

namespace A061785.P18407574838502965759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A061785.P18407574838502965759

noncomputable section

/-- A061785: a(n) = m such that 2^m < 5^n < 2^(m+1).

Offset 1, canonical program `A061785.P18407574838502965759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061785 (n : ℕ) : ℤ :=
  A061785.P18407574838502965759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061819.P9298517690584947382

`A007090(3*n)`
-/

namespace A061819.P9298517690584947382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (3 * n)

end

end A061819.P9298517690584947382

noncomputable section

/-- A061819: Multiples of 3 containing only digits 0,1,2,3.

Offset 1, canonical program `A061819.P9298517690584947382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061819 (n : ℕ) : ℤ :=
  A061819.P9298517690584947382.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061820.P11905399859182740360

`filter[A007091(n), A121262(#)]`
-/

namespace A061820.P11905399859182740360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A061820.P11905399859182740360

noncomputable section

/-- A061820: Multiples of 4 containing only digits 0,...,4.

Offset 0, canonical program `A061820.P11905399859182740360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A061820 (n : ℕ) : ℤ :=
  A061820.P11905399859182740360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A061820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061830.P4448825705646134847

`A159966(20*A007091(n))`
-/

namespace A061830.P4448825705646134847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (20 * A007091 n).toNat

end

end A061830.P4448825705646134847

noncomputable section

/-- A061830: Multiples of 5 having only even digits.

Offset 0, canonical program `A061830.P4448825705646134847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A061830 (n : ℕ) : ℤ :=
  A061830.P4448825705646134847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A061830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061871.P4211668016980417817

`eq[2, abs(A055017(n))]`
-/

namespace A061871.P4211668016980417817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P4211668016980417817

noncomputable section

/-- A061871: |First digit - second digit + third digit - fourth digit ...| = 2.

Offset 1, canonical program `A061871.P4211668016980417817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1266 terms. -/
def A061871 (n : ℕ) : ℤ :=
  (A061871.P4211668016980417817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1266 terms. -/
def A061871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061872.P8936749673548333355

`eq[3, abs(A055017(n))]`
-/

namespace A061872.P8936749673548333355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061872.P8936749673548333355

noncomputable section

/-- A061872: |First digit - second digit + third digit - fourth digit ...| = 3.

Offset 1, canonical program `A061872.P8936749673548333355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A061872 (n : ℕ) : ℤ :=
  (A061872.P8936749673548333355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A061872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061873.P6247734028720904394

`eq[4, abs(A055017(n))]`
-/

namespace A061873.P6247734028720904394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061873.P6247734028720904394

noncomputable section

/-- A061873: Numbers k such that |first digit - second digit + third digit - fourth digit ...| = 4.

Offset 1, canonical program `A061873.P6247734028720904394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A061873 (n : ℕ) : ℤ :=
  (A061873.P6247734028720904394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A061873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061874.P18279928376283005520

`eq[5, abs(A055017(n))]`
-/

namespace A061874.P18279928376283005520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061874.P18279928376283005520

noncomputable section

/-- A061874: |First digit - second digit + third digit - fourth digit ...| = 5.

Offset 1, canonical program `A061874.P18279928376283005520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A061874 (n : ℕ) : ℤ :=
  (A061874.P18279928376283005520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A061874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061875.P9907277657578756427

`eq[6, abs(A055017(n))]`
-/

namespace A061875.P9907277657578756427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061875.P9907277657578756427

noncomputable section

/-- A061875: |First digit - second digit + third digit - fourth digit ...| = 6.

Offset 1, canonical program `A061875.P9907277657578756427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A061875 (n : ℕ) : ℤ :=
  (A061875.P9907277657578756427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A061875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061876.P5832762416077138613

`eq[7, abs(A055017(n))]`
-/

namespace A061876.P5832762416077138613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061876.P5832762416077138613

noncomputable section

/-- A061876: |First digit - second digit + third digit - fourth digit ...| = 7.

Offset 1, canonical program `A061876.P5832762416077138613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 696 terms. -/
def A061876 (n : ℕ) : ℤ :=
  (A061876.P5832762416077138613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 696 terms. -/
def A061876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061877.P2858329656975612530

`eq[8, abs(A055017(n))]`
-/

namespace A061877.P2858329656975612530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061877.P2858329656975612530

noncomputable section

/-- A061877: |First digit - second digit + third digit - fourth digit ...| = 8.

Offset 1, canonical program `A061877.P2858329656975612530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A061877 (n : ℕ) : ℤ :=
  (A061877.P2858329656975612530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A061877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061878.P8172059552371590788

`eq[9, abs(A055017(n))]`
-/

namespace A061878.P8172059552371590788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061878.P8172059552371590788

noncomputable section

/-- A061878: |First digit - second digit + third digit - fourth digit ...| = 9.

Offset 1, canonical program `A061878.P8172059552371590788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061878 (n : ℕ) : ℤ :=
  (A061878.P8172059552371590788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061886.P11094911804711347942

`A000007(n)+Δ[A060984(A028310(n))]`
-/

namespace A061886.P11094911804711347942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060984 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A061886.P11094911804711347942

noncomputable section

/-- A061886: Largest square less than or equal to sum of previous terms.

Offset 0, canonical program `A061886.P11094911804711347942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A061886 (n : ℕ) : ℤ :=
  A061886.P11094911804711347942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A061886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062312.P6574845971519993361

`A018252(n+1)²`
-/

namespace A062312.P6574845971519993361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) ^ 2

end

end A062312.P6574845971519993361

noncomputable section

/-- A062312: Nonprime numbers squared.

Offset 1, canonical program `A062312.P6574845971519993361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062312 (n : ℕ) : ℤ :=
  A062312.P6574845971519993361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062320.P2059323313079579979

`A013929(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062320.P2059323313079579979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) ^ 2

end

end A062320.P2059323313079579979

noncomputable section

/-- A062320: Nonsquarefree numbers squared. A013929(n)^2.

Offset 1, canonical program `A062320.P2059323313079579979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062320 (n : ℕ) : ℤ :=
  A062320.P2059323313079579979.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062331.P5956035598862090697

`A007953(n+1)*A051801(n+1)`
-/

namespace A062331.P5956035598862090697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A051801 (n + 1)

end

end A062331.P5956035598862090697

noncomputable section

/-- A062331: a(n) is the product of the sum and the product of the digits of n (0 is not to be considered a factor in the product).

Offset 1, canonical program `A062331.P5956035598862090697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062331 (n : ℕ) : ℤ :=
  A062331.P5956035598862090697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062337.P4010670014355010102

`p?[A052221(n+1)]`
-/

namespace A062337.P4010670014355010102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062337.P4010670014355010102

noncomputable section

/-- A062337: Primes whose sum of digits is 7.

Offset 1, canonical program `A062337.P4010670014355010102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A062337 (n : ℕ) : ℤ :=
  A062337.P4010670014355010102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A062337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062357.P10612898981103996177

`(n+1)*(A046933(n+1)+1)-A000040(n+1)`
-/

namespace A062357.P10612898981103996177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A046933 (n + 1) + 1) - A000040 (n + 1)

end

end A062357.P10612898981103996177

noncomputable section

/-- A062357: a(n) = n*p(n+1)-(n+1)*p(n) = n*d(n)-p(n), where p(n) is the n-th prime and d(n) is the n-th prime-difference, A001223(n).

Offset 1, canonical program `A062357.P10612898981103996177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062357 (n : ℕ) : ℤ :=
  A062357.P10612898981103996177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062502.P3611840872686675908

`∑{e}[A018252(n+1), #]`
-/

namespace A062502.P3611840872686675908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A062502.P3611840872686675908

noncomputable section

/-- A062502: Number of prime divisors (with repetition) of the nonprimes (including 1).

Offset 1, canonical program `A062502.P3611840872686675908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062502 (n : ℕ) : ℤ :=
  (A062502.P3611840872686675908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062561.P12092945720198026233

`3*A001791(n)`
-/

namespace A062561.P12092945720198026233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001791 n

end

end A062561.P12092945720198026233

noncomputable section

/-- A062561: a(n) = 3*binomial(2*n, n-1).

Offset 0, canonical program `A062561.P12092945720198026233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A062561 (n : ℕ) : ℤ :=
  A062561.P12092945720198026233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A062561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062940.P116347299529594207

`A049415(n+1)+A000007(n)`
-/

namespace A062940.P116347299529594207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + A000007 n

end

end A062940.P116347299529594207

noncomputable section

/-- A062940: Number of squares (including 0) with n digits.

Offset 1, canonical program `A062940.P116347299529594207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A062940 (n : ℕ) : ℤ :=
  A062940.P116347299529594207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A062940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062941.P13715714431049639666

`A000007(n)+Δ[A018005(n+1)]`
-/

namespace A062941.P13715714431049639666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A062941.P13715714431049639666

noncomputable section

/-- A062941: Number of n-digit cubes (0 is included as a single-digit number).

Offset 1, canonical program `A062941.P13715714431049639666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A062941 (n : ℕ) : ℤ :=
  A062941.P13715714431049639666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A062941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062984.P9111632731463951526

`A002321(abs(1-A048050(n+1))+1)`
-/

namespace A062984.P9111632731463951526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (|1 - A048050 (n + 1)| + 1).toNat

end

end A062984.P9111632731463951526

noncomputable section

/-- A062984: a(n) = M(C(n)), where M(n) is Mertens's function (A002321) and C(n) is Chowla's function (A048050).

Offset 1, canonical program `A062984.P9111632731463951526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A062984 (n : ℕ) : ℤ :=
  A062984.P9111632731463951526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A062984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063235.P16999452272687535801

`A063230(n+1)+Δ[n²]`
-/

namespace A063235.P16999452272687535801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063235.P16999452272687535801

noncomputable section

/-- A063235: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 83 ).

Offset 1, canonical program `A063235.P16999452272687535801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063235 (n : ℕ) : ℤ :=
  A063235.P16999452272687535801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063240.P17061771090218456608

`Δ[8*n²-A053799(n)]`
-/

namespace A063240.P17061771090218456608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063240.P17061771090218456608

noncomputable section

/-- A063240: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 89 ).

Offset 1, canonical program `A063240.P17061771090218456608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063240 (n : ℕ) : ℤ :=
  A063240.P17061771090218456608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063425.P10763160283365763615

`A028310(comp[A051801(n)+n])`
-/

namespace A063425.P10763160283365763615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A063425.P10763160283365763615

noncomputable section

/-- A063425: Unattainable numbers: integers not expressible as k + product of nonzero digits of k (A063114).

Offset 1, canonical program `A063425.P10763160283365763615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4069 terms. -/
def A063425 (n : ℕ) : ℤ :=
  A063425.P10763160283365763615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4069 terms. -/
def A063425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063445.P5027649940616317829

`∑{d}[n+1, A007427(#)*A057660((n+1)/#)]`
-/

namespace A063445.P5027649940616317829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P5027649940616317829

noncomputable section

/-- A063445: Moebius transform of f(x) = EulerPhi(x^2) function (A002618).

Offset 1, canonical program `A063445.P5027649940616317829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063445 (n : ℕ) : ℤ :=
  A063445.P5027649940616317829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063482.P1666683509388537250

`A000040(n+1)*A007652(n+1)`
-/

namespace A063482.P1666683509388537250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007652 (n + 1)

end

end A063482.P1666683509388537250

noncomputable section

/-- A063482: a(n) = prime(n) * last digit of prime(n).

Offset 1, canonical program `A063482.P1666683509388537250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063482 (n : ℕ) : ℤ :=
  A063482.P1666683509388537250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063534.P17795295830584222676

`xor(A001748(n+1), A063524(n))`
-/

namespace A063534.P17795295830584222676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001748 (n + 1)) (A063524 n)

end

end A063534.P17795295830584222676

noncomputable section

/-- A063534: Numbers k such that C(k) = H(k) + d(k), where C(k) is Chowla's function A048050, H(k) is the half-totient function A023022 and d(k) is the number of divisors function A000005.

Offset 1, canonical program `A063534.P17795295830584222676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063534 (n : ℕ) : ℤ :=
  A063534.P17795295830584222676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063910.P3796173184105421740

`p?[2*A005099(n+1)+3]`
-/

namespace A063910.P3796173184105421740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005099 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063910.P3796173184105421740

noncomputable section

/-- A063910: Primes p such that 2*p - 7 is also prime.

Offset 1, canonical program `A063910.P3796173184105421740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1545 terms. -/
def A063910 (n : ℕ) : ℤ :=
  A063910.P3796173184105421740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1545 terms. -/
def A063910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064009.P12108905506998327831

`∑[A006094(n+1)-A001248(n+1)]`
-/

namespace A064009.P12108905506998327831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P12108905506998327831

noncomputable section

/-- A064009: a(n) = Sum_{k=1..n} d(k)*prime(k), where d(k) = A001223.

Offset 1, canonical program `A064009.P12108905506998327831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064009 (n : ℕ) : ℤ :=
  A064009.P12108905506998327831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064051.P1472615764312218128

`2*A001248(n+1)-A001248(n+2)`
-/

namespace A064051.P1472615764312218128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 1) - A001248 (n + 2)

end

end A064051.P1472615764312218128

noncomputable section

/-- A064051: a(n) = 2*prime(n)^2 - prime(n+1)^2.

Offset 1, canonical program `A064051.P1472615764312218128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064051 (n : ℕ) : ℤ :=
  A064051.P1472615764312218128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064054.P603331985912592333

`∑[A005716(n+4)+A005715(n+4)]`
-/

namespace A064054.P603331985912592333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 4) + A005715 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064054.P603331985912592333

noncomputable section

/-- A064054: Tenth column of trinomial coefficients.

Offset 0, canonical program `A064054.P603331985912592333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064054 (n : ℕ) : ℤ :=
  A064054.P603331985912592333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064057.P17916192335594862832

`∑[∑[∑[A063258(n)-2]]]`
-/

namespace A064057.P17916192335594862832
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064057.P17916192335594862832

noncomputable section

/-- A064057: Eighth column of quintinomial coefficients.

Offset 0, canonical program `A064057.P17916192335594862832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064057 (n : ℕ) : ℤ :=
  A064057.P17916192335594862832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064061.P2387178845322801041

`∑[A064059(n+1)]`
-/

namespace A064061.P2387178845322801041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064061.P2387178845322801041

noncomputable section

/-- A064061: Eighth column of Catalan triangle A009766.

Offset 0, canonical program `A064061.P2387178845322801041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A064061 (n : ℕ) : ℤ :=
  A064061.P2387178845322801041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A064061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064150.P222219124651733771

`eq[0, (n+1)%A053735(n+1)]+1`
-/

namespace A064150.P222219124651733771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A053735 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064150.P222219124651733771

noncomputable section

/-- A064150: Numbers divisible by the sum of their ternary digits.

Offset 1, canonical program `A064150.P222219124651733771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A064150 (n : ℕ) : ℤ :=
  (A064150.P222219124651733771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A064150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064306.P10514764993973728359

`A151374(n)-a(n-1)` with `a(0)=1`
-/

namespace A064306.P10514764993973728359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151374 n - a (n - 1)

end

end A064306.P10514764993973728359

noncomputable section

/-- A064306: Convolution of A052701 (Catalan numbers multiplied by powers of 2) with powers of -1.

Offset 0, canonical program `A064306.P10514764993973728359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A064306 (n : ℕ) : ℤ :=
  A064306.P10514764993973728359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A064306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064438.P12984857444962612531

`eq[0, (n+1)%A053737(n+1)]+1`
-/

namespace A064438.P12984857444962612531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A053737 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064438.P12984857444962612531

noncomputable section

/-- A064438: Numbers which are divisible by the sum of their quaternary digits.

Offset 1, canonical program `A064438.P12984857444962612531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. -/
def A064438 (n : ℕ) : ℤ :=
  (A064438.P12984857444962612531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. -/
def A064438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064481.P13336890321893071903

`record[gcd(n+1, (n+1)%A053824(n+1))]`
-/

namespace A064481.P13336890321893071903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A053824 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064481.P13336890321893071903

noncomputable section

/-- A064481: Numbers which are divisible by the sum of their base-5 digits.

Offset 1, canonical program `A064481.P13336890321893071903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2086 terms. -/
def A064481 (n : ℕ) : ℤ :=
  (A064481.P13336890321893071903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2086 terms. -/
def A064481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064485.P16284596538866358387

`(n+1)²+3*A053650(n+1)`
-/

namespace A064485.P16284596538866358387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 3 * A053650 (n + 1)

end

end A064485.P16284596538866358387

noncomputable section

/-- A064485: Number of ordered pairs a,b of elements in the dihedral group D_2n such that the subgroup generated by the pair a,b is a proper subgroup of D_2n.

Offset 1, canonical program `A064485.P16284596538866358387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064485 (n : ℕ) : ℤ :=
  A064485.P16284596538866358387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064524.P9633384338654413116

`n-A048766(n)`
-/

namespace A064524.P9633384338654413116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048766 n

end

end A064524.P9633384338654413116

noncomputable section

/-- A064524: Number of noncubes <= n.

Offset 0, canonical program `A064524.P9633384338654413116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064524 (n : ℕ) : ℤ :=
  A064524.P9633384338654413116.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064658.P3874137061394963063

`A059111(n+1)+A057427(n)`
-/

namespace A064658.P3874137061394963063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059111 (n + 1) + A057427 n

end

end A064658.P3874137061394963063

noncomputable section

/-- A064658: a(n) = ceiling(prime(n) - n*log(n)).

Offset 1, canonical program `A064658.P3874137061394963063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064658 (n : ℕ) : ℤ :=
  A064658.P3874137061394963063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064662.P4952533135120078315

`1-A002036(n+1)+n`
-/

namespace A064662.P4952533135120078315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002036 (n + 1) + (n : ℤ)

end

end A064662.P4952533135120078315

noncomputable section

/-- A064662: a(n) = n - round( prime(n)/log(prime(n)) ).

Offset 1, canonical program `A064662.P4952533135120078315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064662 (n : ℕ) : ℤ :=
  A064662.P4952533135120078315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064694.P9523278426856522305

`2*A002623(n)-A058187(n)`
-/

namespace A064694.P9523278426856522305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002623 n - A058187 n

end

end A064694.P9523278426856522305

noncomputable section

/-- A064694: Add column entries of the table with rows (1,2,0,0...), (0,3,4,5,0,0...), (0,0,6,7,8,9,0,0...), (0,0,0,10,11,12,13,14,0,0...), ...

Offset 1, canonical program `A064694.P9523278426856522305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064694 (n : ℕ) : ℤ :=
  A064694.P9523278426856522305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064786.P10676103472922795577

`2*A026242(n+1)-A003849(n)`
-/

namespace A064786.P10676103472922795577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026242 (n + 1) - A003849 n

end

end A064786.P10676103472922795577

noncomputable section

/-- A064786: Inverse permutation to A054084.

Offset 1, canonical program `A064786.P10676103472922795577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064786 (n : ℕ) : ℤ :=
  A064786.P10676103472922795577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064951.P14630358034355679233

`∑[(n+1)*A057660(n+1)]`
-/

namespace A064951.P14630358034355679233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A057660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064951.P14630358034355679233

noncomputable section

/-- A064951: a(n) = Sum_{1 <= x, y <= n} lcm(x, y).

Offset 1, canonical program `A064951.P14630358034355679233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064951 (n : ℕ) : ℤ :=
  A064951.P14630358034355679233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065071.P2618642326571619513

`A057427(n)+A002387(2*n)`
-/

namespace A065071.P2618642326571619513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002387 (2 * n)

end

end A065071.P2618642326571619513

noncomputable section

/-- A065071: Minimum number of identical bricks of length 1 which, when stacked without mortar in the naive way, form a stack of length >=n.

Offset 1, canonical program `A065071.P2618642326571619513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A065071 (n : ℕ) : ℤ :=
  A065071.P2618642326571619513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A065071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065076.P12545874303154124249

`A007953(a(n-1))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A065076.P12545874303154124249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 2)

end

end A065076.P12545874303154124249

noncomputable section

/-- A065076: a(0) = 0, a(1) = 1, a(n) = (sum of digits of a(n-1)) + a(n-2).

Offset 0, canonical program `A065076.P12545874303154124249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1179 terms. -/
def A065076 (n : ℕ) : ℤ :=
  A065076.P12545874303154124249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1179 terms. -/
def A065076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065090.P2734464943258358199

`A018252(n%a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A065090.P2734464943258358199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A018252 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A065090.P2734464943258358199

noncomputable section

/-- A065090: Natural numbers which are not odd primes: composites plus 1 and 2.

Offset 1, canonical program `A065090.P2734464943258358199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065090 (n : ℕ) : ℤ :=
  A065090.P2734464943258358199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065103.P2718440150372070482

`∑{d}[n+1, A035179(#)*A059377((n+1)/#)]`
-/

namespace A065103.P2718440150372070482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035179 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065103.P2718440150372070482

noncomputable section

/-- A065103: A level 11 weight 5 form.

Offset 1, canonical program `A065103.P2718440150372070482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065103 (n : ℕ) : ℤ :=
  A065103.P2718440150372070482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065124.P8285279052872578272

`A007953(a(n-2))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A065124.P8285279052872578272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007953 (a (n - 2)).toNat + a (n - 1)

end

end A065124.P8285279052872578272

noncomputable section

/-- A065124: a(n) = (sum of digits of a(n-2)) + a(n-1); a(0) = 0 and a(1) = 1.

Offset 0, canonical program `A065124.P8285279052872578272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 594 terms. -/
def A065124 (n : ℕ) : ℤ :=
  A065124.P8285279052872578272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 594 terms. -/
def A065124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065137.P7010743803192741555

`A007953(n)+A055012(n)`
-/

namespace A065137.P7010743803192741555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A055012 n

end

end A065137.P7010743803192741555

noncomputable section

/-- A065137: Sum of digits of n plus sum of cubes of digits of n.

Offset 0, canonical program `A065137.P7010743803192741555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065137 (n : ℕ) : ℤ :=
  A065137.P7010743803192741555.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065310.P13031903484145223612

`Δ[A018252(n+1)]`
-/

namespace A065310.P13031903484145223612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065310.P13031903484145223612

noncomputable section

/-- A065310: Number of occurrences of n-th prime in A065308, where A065308(j) = prime(j - pi(j)).

Offset 1, canonical program `A065310.P13031903484145223612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065310 (n : ℕ) : ℤ :=
  A065310.P13031903484145223612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065349.P18239229015317001529

`eq[0, A065346(n+1)]+1`
-/

namespace A065349.P18239229015317001529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065349.P18239229015317001529

noncomputable section

/-- A065349: Positions of zeros in A065346.

Offset 1, canonical program `A065349.P18239229015317001529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7707 terms. -/
def A065349 (n : ℕ) : ℤ :=
  (A065349.P18239229015317001529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7707 terms. -/
def A065349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065521.P17671407189220414493

`A000040(n+1)-2*A004648(n+1)`
-/

namespace A065521.P17671407189220414493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2 * A004648 (n + 1)

end

end A065521.P17671407189220414493

noncomputable section

/-- A065521: a(n) = floor(prime(n) / n) * n - prime(n) mod n.

Offset 1, canonical program `A065521.P17671407189220414493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065521 (n : ℕ) : ℤ :=
  A065521.P17671407189220414493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065595.P9458433241137385740

`∑[A000040(n+1)]²-∑[A001248(n+1)]`
-/

namespace A065595.P9458433241137385740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A065595.P9458433241137385740

noncomputable section

/-- A065595: a(n) = (sum of first n primes)^2 - sum of squares of first n primes.

Offset 1, canonical program `A065595.P9458433241137385740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065595 (n : ℕ) : ℤ :=
  A065595.P9458433241137385740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065615.P5702306112919160173

`A065613(n+1)+A057427(n)`
-/

namespace A065615.P5702306112919160173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065613 (n + 1) + A057427 n

end

end A065615.P5702306112919160173

noncomputable section

/-- A065615: a(n) = ceiling(log(n)*2^n/n).

Offset 1, canonical program `A065615.P5702306112919160173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A065615 (n : ℕ) : ℤ :=
  A065615.P5702306112919160173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A065615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065618.P382593083675231011

`A065616(n+1)+A043545(n)`
-/

namespace A065618.P382593083675231011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065616 (n + 1) + A043545 n

end

end A065618.P382593083675231011

noncomputable section

/-- A065618: a(n) = ceiling(log_2(n)*2^n/n).

Offset 1, canonical program `A065618.P382593083675231011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A065618 (n : ℕ) : ℤ :=
  A065618.P382593083675231011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A065618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065730.P12344914159723627506

`A048760(A000040(n+1))`
-/

namespace A065730.P12344914159723627506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000040 (n + 1)).toNat

end

end A065730.P12344914159723627506

noncomputable section

/-- A065730: Largest square <= n-th prime.

Offset 1, canonical program `A065730.P12344914159723627506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065730 (n : ℕ) : ℤ :=
  A065730.P12344914159723627506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065741.P168978404757248362

`A048760(A001157(n+1))`
-/

namespace A065741.P168978404757248362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A001157 (n + 1)).toNat

end

end A065741.P168978404757248362

noncomputable section

/-- A065741: Largest square <= sum of squares of divisors of n.

Offset 1, canonical program `A065741.P168978404757248362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065741 (n : ℕ) : ℤ :=
  A065741.P168978404757248362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065745.P10401467912495569970

`∑{d}[n+1, A022998(#)*A061020((n+1)/#)]`
-/

namespace A065745.P10401467912495569970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A022998 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065745.P10401467912495569970

noncomputable section

/-- A065745: Sum of squares and twice squares dividing n.

Offset 1, canonical program `A065745.P10401467912495569970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065745 (n : ℕ) : ℤ :=
  A065745.P10401467912495569970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065827.P18020067522506622842

`A057660(n+1)*A065764(n+1)`
-/

namespace A065827.P18020067522506622842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (n + 1) * A065764 (n + 1)

end

end A065827.P18020067522506622842

noncomputable section

/-- A065827: Sum of squares of divisors of square numbers.

Offset 1, canonical program `A065827.P18020067522506622842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065827 (n : ℕ) : ℤ :=
  A065827.P18020067522506622842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065996.P18421531416531420560

`A000040(A004648(n+2))`
-/

namespace A065996.P18421531416531420560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004648 (n + 2)).toNat

end

end A065996.P18421531416531420560

noncomputable section

/-- A065996: a(n) = prime(prime(n) mod n).

Offset 2, canonical program `A065996.P18421531416531420560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A065996 (n : ℕ) : ℤ :=
  A065996.P18421531416531420560.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A065996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066026.P17670298955193830513

`A057427(n)+A025201(n+1)`
-/

namespace A066026.P17670298955193830513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A025201 (n + 1)

end

end A066026.P17670298955193830513

noncomputable section

/-- A066026: a(n) = ceiling(log(n!)).

Offset 1, canonical program `A066026.P17670298955193830513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066026 (n : ℕ) : ℤ :=
  A066026.P17670298955193830513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066182.P18414975574033607487

`ceil(A198954(n)/2+n)`
-/

namespace A066182.P18414975574033607487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198954 n : ℚ) / 2 + (n : ℚ)⌉

end

end A066182.P18414975574033607487

noncomputable section

/-- A066182: Permutation of the integers with cycle form {1}, {3, 2}, {6, 5, 4}, {10, 9, 8, 7}, ...

Offset 1, canonical program `A066182.P18414975574033607487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066182 (n : ℕ) : ℤ :=
  A066182.P18414975574033607487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066190.P14350641075084876655

`2*A053813(n+1)`
-/

namespace A066190.P14350641075084876655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053813 (n + 1)

end

end A066190.P14350641075084876655

noncomputable section

/-- A066190: Numbers k such that the sum of the even aliquot parts of k divides k.

Offset 1, canonical program `A066190.P14350641075084876655`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066190 (n : ℕ) : ℤ :=
  A066190.P14350641075084876655.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066259.P11504039292790396574

`A122909(n)-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A066259.P11504039292790396574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A122909 n - a (n - 2)

end

end A066259.P11504039292790396574

noncomputable section

/-- A066259: a(n) = Fibonacci(n)*Fibonacci(n+1)^2.

Offset 1, canonical program `A066259.P11504039292790396574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A066259 (n : ℕ) : ℤ :=
  A066259.P11504039292790396574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A066259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066294.P2977263834050305820

`A066293(n+1)-2*(n+1)`
-/

namespace A066294.P2977263834050305820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066293 (n + 1) - (2 * (n + 1) : ℤ)

end

end A066294.P2977263834050305820

noncomputable section

/-- A066294: a(n) = A000203(n)^2 - A001157(n) - 2n = sigma(n)^2 - sigma_2(n) - 2n.

Offset 1, canonical program `A066294.P2977263834050305820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066294 (n : ℕ) : ℤ :=
  A066294.P2977263834050305820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066294.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066343.P4428589381306227006

`lt[4, A008952(n)]`
-/

namespace A066343.P4428589381306227006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066343.P4428589381306227006

noncomputable section

/-- A066343: Beatty sequence for log_2(10).

Offset 1, canonical program `A066343.P4428589381306227006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066343 (n : ℕ) : ℤ :=
  (A066343.P4428589381306227006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066344.P7210307204516309196

`lt[n, n*A008952(n+1)]`
-/

namespace A066344.P7210307204516309196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066344.P7210307204516309196

noncomputable section

/-- A066344: Beatty sequence for log_5(10).

Offset 1, canonical program `A066344.P7210307204516309196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066344 (n : ℕ) : ℤ :=
  (A066344.P7210307204516309196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066652.P2742565410773785786

`p?[A050377(n+1)+2*n]`
-/

namespace A066652.P2742565410773785786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066652.P2742565410773785786

noncomputable section

/-- A066652: Primes of the form 2*s - 1, where s is a squarefree number (A005117).

Offset 1, canonical program `A066652.P2742565410773785786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066652 (n : ℕ) : ℤ :=
  A066652.P2742565410773785786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066752.P6338293398133632041

`gcd(n+2, A004232(n+1))`
-/

namespace A066752.P6338293398133632041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A004232 (n + 1))

end

end A066752.P6338293398133632041

noncomputable section

/-- A066752: a(n) = gcd(prime(n)+1, n+1).

Offset 1, canonical program `A066752.P6338293398133632041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066752 (n : ℕ) : ℤ :=
  (A066752.P6338293398133632041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066768.P10388036879488056357

`∑{d}[n+1, A000984(#-1)]`
-/

namespace A066768.P10388036879488056357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000984 (d - 1)

end

end A066768.P10388036879488056357

noncomputable section

/-- A066768: a(n) = Sum_{d|n} binomial(2*d-2,d-1).

Offset 1, canonical program `A066768.P10388036879488056357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A066768 (n : ℕ) : ℤ :=
  A066768.P10388036879488056357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A066768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066777.P8976218830756872695

`A005230(n+2)-A005230(n+1)`
-/

namespace A066777.P8976218830756872695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 2) - A005230 (n + 1)

end

end A066777.P8976218830756872695

noncomputable section

/-- A066777: First differences of Stern's sequence A005230.

Offset 0, canonical program `A066777.P8976218830756872695`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066777 (n : ℕ) : ℤ :=
  A066777.P8976218830756872695.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066777.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066822.P225537740992169790

`record[A005773(n)-A002026(n)]`
-/

namespace A066822.P225537740992169790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A002026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066822.P225537740992169790

noncomputable section

/-- A066822: The fourth column of A038622, triangular array that counts rooted polyominoes.

Offset 0, canonical program `A066822.P225537740992169790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A066822 (n : ℕ) : ℤ :=
  A066822.P225537740992169790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A066822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066872.P16309924819967402

`1+A001248(n+1)`
-/

namespace A066872.P16309924819967402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001248 (n + 1)

end

end A066872.P16309924819967402

noncomputable section

/-- A066872: a(n) = prime(n)^2 + 1.

Offset 1, canonical program `A066872.P16309924819967402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066872 (n : ℕ) : ℤ :=
  A066872.P16309924819967402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066984.P2700678080183725045

`gcd(A001043(n+1), A008864(n+1))`
-/

namespace A066984.P2700678080183725045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001043 (n + 1)) (A008864 (n + 1))

end

end A066984.P2700678080183725045

noncomputable section

/-- A066984: a(n) = gcd(prime(n+1) - 1, prime(n) + 1).

Offset 1, canonical program `A066984.P2700678080183725045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066984 (n : ℕ) : ℤ :=
  (A066984.P2700678080183725045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067076.P14247190955968615804

`A006254(n+1)-2`
-/

namespace A067076.P14247190955968615804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 2

end

end A067076.P14247190955968615804

noncomputable section

/-- A067076: Numbers k such that 2*k + 3 is a prime.

Offset 1, canonical program `A067076.P14247190955968615804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067076 (n : ℕ) : ℤ :=
  A067076.P14247190955968615804.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067161.P15129593233122356250

`A001748(∑{d}[n+1, #])/3`
-/

namespace A067161.P15129593233122356250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / 3

end

end A067161.P15129593233122356250

noncomputable section

/-- A067161: a(n) = prime(sigma(n)).

Offset 1, canonical program `A067161.P15129593233122356250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A067161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067161.P15129593233122356250.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A067161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067289.P994081153811343972

`A020725(eq[A032741(n+1)+1, A038605(n+1)])`
-/

namespace A067289.P994081153811343972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067289.P994081153811343972

noncomputable section

/-- A067289: Numbers k such that the number of divisors of k is floor(prime(k)/k).

Offset 1, canonical program `A067289.P994081153811343972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A067289 (n : ℕ) : ℤ :=
  A067289.P994081153811343972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A067289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067324.P1061078649515513046

`∑[A002057(n)+A000108(n)]`
-/

namespace A067324.P1061078649515513046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067324.P1061078649515513046

noncomputable section

/-- A067324: Third column of triangle A067323.

Offset 0, canonical program `A067324.P1061078649515513046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067324 (n : ℕ) : ℤ :=
  A067324.P1061078649515513046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067392.P18290857922601983609

`ceil((A053650(n+1)+n)/2)`
-/

namespace A067392.P18290857922601983609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053650 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A067392.P18290857922601983609

noncomputable section

/-- A067392: Sum of numbers <= n which have common prime factors with n.

Offset 1, canonical program `A067392.P18290857922601983609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067392 (n : ℕ) : ℤ :=
  A067392.P18290857922601983609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067469.P1772719252959586475

`eq[2, A008952(n)]`
-/

namespace A067469.P1772719252959586475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067469.P1772719252959586475

noncomputable section

/-- A067469: Numbers k such that 2 is the first digit of 2^k.

Offset 1, canonical program `A067469.P1772719252959586475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067469 (n : ℕ) : ℤ :=
  (A067469.P1772719252959586475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067672.P58353765302069128

`A065554(eq[1, A065554(n+2)-A065554(n+1)]+1)`
-/

namespace A067672.P58353765302069128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (n + 2) - A065554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A067672.P58353765302069128

noncomputable section

/-- A067672: Numbers k such that floor((3/2)^(k+2))/floor((3/2)^k) = (3/2)^2.

Offset 1, canonical program `A067672.P58353765302069128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A067672 (n : ℕ) : ℤ :=
  A067672.P58353765302069128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A067672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067790.P737613375994059207

`eq[A007652(A028310(n)), A010879(n)]`
-/

namespace A067790.P737613375994059207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067790.P737613375994059207

noncomputable section

/-- A067790: Numbers n such that n and prime(n) end with the same digit.

Offset 1, canonical program `A067790.P737613375994059207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A067790 (n : ℕ) : ℤ :=
  (A067790.P737613375994059207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A067790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067833.P2986960847933786226

`p?[A018252(n+6)+4]`
-/

namespace A067833.P2986960847933786226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 6) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067833.P2986960847933786226

noncomputable section

/-- A067833: Primes p such that sigma(p-4) > p.

Offset 1, canonical program `A067833.P2986960847933786226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A067833 (n : ℕ) : ℤ :=
  A067833.P2986960847933786226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A067833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067869.P4129813629611928479

`A067867(5*(2*n+1))`
-/

namespace A067869.P4129813629611928479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067867 (5 * (2 * n + 1))

end

end A067869.P4129813629611928479

noncomputable section

/-- A067869: Numbers n such that n and 2^n end with the same 5 digits.

Offset 1, canonical program `A067869.P4129813629611928479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067869 (n : ℕ) : ℤ :=
  A067869.P4129813629611928479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067947.P7111284946660719260

`eq[n, n*A066438(n+1)]+1`
-/

namespace A067947.P7111284946660719260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067947.P7111284946660719260

noncomputable section

/-- A067947: Numbers k such that k divides 7^k - 1.

Offset 1, canonical program `A067947.P7111284946660719260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A067947 (n : ℕ) : ℤ :=
  (A067947.P7111284946660719260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A067947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067977.P5847705129826826634

`A067431(n)+A067430(n)`
-/

namespace A067977.P5847705129826826634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067431 n + A067430 n

end

end A067977.P5847705129826826634

noncomputable section

/-- A067977: Convolution of Fibonacci F(n+1), n>=0, with F(n+9), n>=0.

Offset 0, canonical program `A067977.P5847705129826826634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A067977 (n : ℕ) : ℤ :=
  A067977.P5847705129826826634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A067977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067980.P17476035265279750799

`A004799(n+2)-A000032(n+2)`
-/

namespace A067980.P17476035265279750799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 2) - A000032 (n + 2)

end

end A067980.P17476035265279750799

noncomputable section

/-- A067980: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+2), n>=0.

Offset 0, canonical program `A067980.P17476035265279750799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A067980 (n : ℕ) : ℤ :=
  A067980.P17476035265279750799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A067980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067989.P3676896507050172247

`(n/2+1)*A004799(n+1)`
-/

namespace A067989.P3676896507050172247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A004799 (n + 1) : ℚ)

end

end A067989.P3676896507050172247

noncomputable section

/-- A067989: Row sums of triangle A067979; also of triangle A067990.

Offset 0, canonical program `A067989.P3676896507050172247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A067989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067989.P3676896507050172247.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A067989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068033.P10495819639348123950

`ceil((abs(2-A068012(n))+1)/2)`
-/

namespace A068033.P10495819639348123950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|2 - A068012 n| + 1 : ℚ) / 2⌉

end

end A068033.P10495819639348123950

noncomputable section

/-- A068033: Number of subsets of {1,2,3,...,n} that sum to 0 mod 12.

Offset 0, canonical program `A068033.P10495819639348123950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A068033 (n : ℕ) : ℤ :=
  A068033.P10495819639348123950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A068033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068395.P13008118586817300563

`A000040(n+1)-A007953(A000040(n+1))`
-/

namespace A068395.P13008118586817300563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A007953 (A000040 (n + 1)).toNat

end

end A068395.P13008118586817300563

noncomputable section

/-- A068395: a(n) = n-th prime minus its sum of digits.

Offset 1, canonical program `A068395.P13008118586817300563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068395 (n : ℕ) : ℤ :=
  A068395.P13008118586817300563.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068781.P14060761799375853709

`A013929(eq[1, A013929(n+2)-A013929(n+1)]+1)`
-/

namespace A068781.P14060761799375853709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2) - A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A068781.P14060761799375853709

noncomputable section

/-- A068781: Lesser of two consecutive numbers each divisible by a square.

Offset 1, canonical program `A068781.P14060761799375853709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068781 (n : ℕ) : ℤ :=
  A068781.P14060761799375853709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068822.P12943702772074128916

`gcd(n+1, A061601(n))`
-/

namespace A068822.P12943702772074128916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A061601 n)

end

end A068822.P12943702772074128916

noncomputable section

/-- A068822: a(n) = gcd(n,c(n)), where c(n) is the 10's complement of n.

Offset 1, canonical program `A068822.P12943702772074128916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068822 (n : ℕ) : ℤ :=
  (A068822.P12943702772074128916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068823.P18262872501573724830

`lcm(n+1, A061601(n+1)+1)`
-/

namespace A068823.P18262872501573724830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A061601 (n + 1) + 1)

end

end A068823.P18262872501573724830

noncomputable section

/-- A068823: a(n) = lcm(n, c(n)), where c(n) is the 10's complement of n.

Offset 1, canonical program `A068823.P18262872501573724830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068823 (n : ℕ) : ℤ :=
  (A068823.P18262872501573724830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068963.P12991928728115657832

`∑{d}[n+1, A053191(#)]`
-/

namespace A068963.P12991928728115657832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d

end

end A068963.P12991928728115657832

noncomputable section

/-- A068963: a(n) = Sum_{d|n} phi(d^3).

Offset 1, canonical program `A068963.P12991928728115657832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068963 (n : ℕ) : ℤ :=
  A068963.P12991928728115657832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068970.P18166395650473303981

`∑{d}[n+1, #*A053191(#)]`
-/

namespace A068970.P18166395650473303981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A053191 d

end

end A068970.P18166395650473303981

noncomputable section

/-- A068970: a(n) = Sum_{d|n} phi(d^4).

Offset 1, canonical program `A068970.P18166395650473303981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068970 (n : ℕ) : ℤ :=
  A068970.P18166395650473303981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068984.P5244751518024861276

`∑{d}[n+1, A034718(#)*A048250((n+1)/#)]`
-/

namespace A068984.P5244751518024861276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068984.P5244751518024861276

noncomputable section

/-- A068984: a(n) = Sum_{d|n} d*tau(d)^2.

Offset 1, canonical program `A068984.P5244751518024861276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068984 (n : ℕ) : ℤ :=
  A068984.P5244751518024861276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069262.P10024290030674562984

`4*A001248(n+1)`
-/

namespace A069262.P10024290030674562984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001248 (n + 1)

end

end A069262.P10024290030674562984

noncomputable section

/-- A069262: a(n) = 4*prime(n)^2.

Offset 1, canonical program `A069262.P10024290030674562984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069262 (n : ℕ) : ℤ :=
  A069262.P10024290030674562984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069265.P4815336299590380564

`lt[n+1, A068976(A028310(n))]`
-/

namespace A069265.P4815336299590380564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068976 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A069265.P4815336299590380564

noncomputable section

/-- A069265: Numbers k such that Sum_{d|k} d/core(d) > k, where core(d) is the squarefree part of d.

Offset 1, canonical program `A069265.P4815336299590380564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A069265 (n : ℕ) : ℤ :=
  (A069265.P4815336299590380564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A069265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069271.P14577300285001042328

`A005810(n)*A016813(n)/A060544(n+1)`
-/

namespace A069271.P14577300285001042328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n * A016813 n : ℚ) / (A060544 (n + 1) : ℚ)

end

end A069271.P14577300285001042328

noncomputable section

/-- A069271: a(n) = binomial(4*n+1,n)*2/(3*n+2).

Offset 0, canonical program `A069271.P14577300285001042328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069271.P14577300285001042328.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069290.P14043466990203986603

`∑{d}[n+1, A037213(#)]`
-/

namespace A069290.P14043466990203986603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 d

end

end A069290.P14043466990203986603

noncomputable section

/-- A069290: Sum of the square roots of the square divisors of n.

Offset 1, canonical program `A069290.P14043466990203986603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069290 (n : ℕ) : ℤ :=
  A069290.P14043466990203986603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069486.P8901001312048262221

`2*A006094(n+1)`
-/

namespace A069486.P8901001312048262221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006094 (n + 1)

end

end A069486.P8901001312048262221

noncomputable section

/-- A069486: a(n) = 2*prime(n)*prime(n+1).

Offset 1, canonical program `A069486.P8901001312048262221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069486 (n : ℕ) : ℤ :=
  A069486.P8901001312048262221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069577.P2323388338216370360

`A000040(∑[char[A040976(2*n+1)]])`
-/

namespace A069577.P2323388338216370360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069577.P2323388338216370360

noncomputable section

/-- A069577: Smallest prime p such that pi(n) <= pi(p)*2, where pi(n) is the number of primes <= n, A000720.

Offset 2, canonical program `A069577.P2323388338216370360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069577 (n : ℕ) : ℤ :=
  A069577.P2323388338216370360.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069658.P1396198842885057433

`(A057427(n)+A018072(2*n))²`
-/

namespace A069658.P1396198842885057433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + A018072 (2 * n)) ^ 2

end

end A069658.P1396198842885057433

noncomputable section

/-- A069658: a(1) = 1; a(n) = smallest nontrivial n-digit perfect power.

Offset 1, canonical program `A069658.P1396198842885057433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A069658 (n : ℕ) : ℤ :=
  A069658.P1396198842885057433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A069658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069913.P4643640867168244816

`A007429(n+1)-A007425(n+1)`
-/

namespace A069913.P4643640867168244816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - A007425 (n + 1)

end

end A069913.P4643640867168244816

noncomputable section

/-- A069913: a(n) = Sum_{d|n} (d-1)*tau(n/d).

Offset 1, canonical program `A069913.P4643640867168244816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069913 (n : ℕ) : ℤ :=
  A069913.P4643640867168244816.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069958.P13422372317707970472

`A007953(n)^3-A055012(n)`
-/

namespace A069958.P13422372317707970472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 3 - A055012 n

end

end A069958.P13422372317707970472

noncomputable section

/-- A069958: (Sum of digits of n)^3 - (sum of digits^3 of n).

Offset 0, canonical program `A069958.P13422372317707970472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069958 (n : ℕ) : ℤ :=
  A069958.P13422372317707970472.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069972.P10372143076871340489

`∑{d}[n+1, A004524(A198954(#))]`
-/

namespace A069972.P10372143076871340489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004524 (A198954 d).toNat

end

end A069972.P10372143076871340489

noncomputable section

/-- A069972: a(n) = Sum_{d|2*n,d+1|2*n} d.

Offset 1, canonical program `A069972.P10372143076871340489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069972 (n : ℕ) : ℤ :=
  A069972.P10372143076871340489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069979.P15807187482805731575

`A007953(n)^5-A055566(n)`
-/

namespace A069979.P15807187482805731575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 5 - A055566 n

end

end A069979.P15807187482805731575

noncomputable section

/-- A069979: (Sum of digits of n)^5 - (sum of digits of n^5).

Offset 0, canonical program `A069979.P15807187482805731575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069979 (n : ℕ) : ℤ :=
  A069979.P15807187482805731575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070106.P8148621780262521077

`A047329(n+1)%A003152(n+1)`
-/

namespace A070106.P8148621780262521077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047329 (n + 1)) (A003152 (n + 1))

end

end A070106.P8148621780262521077

noncomputable section

/-- A070106: Number of integer triangles with perimeter n which are obtuse and isosceles.

Offset 1, canonical program `A070106.P8148621780262521077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070106 (n : ℕ) : ℤ :=
  A070106.P8148621780262521077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070302.P10185745399119906825

`A160765(n)+∑[n]²`
-/

namespace A070302.P10185745399119906825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160765 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A070302.P10185745399119906825

noncomputable section

/-- A070302: Number of 3 X 3 X 3 magic cubes with sum 3n.

Offset 1, canonical program `A070302.P10185745399119906825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070302 (n : ℕ) : ℤ :=
  A070302.P10185745399119906825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070750.P13196581040963341553

`2-A039702(n+1)`
-/

namespace A070750.P13196581040963341553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039702 (n + 1)

end

end A070750.P13196581040963341553

noncomputable section

/-- A070750: 0 if n-th prime is even, 1 if n-th prime is == 1 (mod 4), and -1 if n-th prime is == 3 (mod 4).

Offset 1, canonical program `A070750.P13196581040963341553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070750 (n : ℕ) : ℤ :=
  A070750.P13196581040963341553.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070886.P8245477547153296858

`A034870(n)%2`
-/

namespace A070886.P8245477547153296858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034870 n) 2

end

end A070886.P8245477547153296858

noncomputable section

/-- A070886: Triangle read by rows giving successive states of cellular automaton generated by "Rule 90".

Offset 0, canonical program `A070886.P8245477547153296858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070886 (n : ℕ) : ℤ :=
  A070886.P8245477547153296858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070999.P10711028318610631314

`lt[1, gcd(n+1, A057660(n+1))]+1`
-/

namespace A070999.P10711028318610631314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A057660 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070999.P10711028318610631314

noncomputable section

/-- A070999: Numbers n such that the denominator of Sum_{k=1..n} 1/gcd(n,k) is not equal to n.

Offset 1, canonical program `A070999.P10711028318610631314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A070999 (n : ℕ) : ℤ :=
  (A070999.P10711028318610631314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A070999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071037.P9726721186916925675

`A071030(A052928(n*A071030(n+1)))`
-/

namespace A071037.P9726721186916925675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 (A052928 ((n : ℤ) * A071030 (n + 1)).toNat).toNat

end

end A071037.P9726721186916925675

noncomputable section

/-- A071037: Triangle read by rows giving successive states of cellular automaton generated by "Rule 158".

Offset 0, canonical program `A071037.P9726721186916925675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071037 (n : ℕ) : ℤ :=
  A071037.P9726721186916925675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071089.P10721152534759414151

`∑[A000040(n+1)]%A006005(n+1)`
-/

namespace A071089.P10721152534759414151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006005 (n + 1))

end

end A071089.P10721152534759414151

noncomputable section

/-- A071089: Remainder when sum of first n primes is divided by n-th prime.

Offset 1, canonical program `A071089.P10721152534759414151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071089 (n : ℕ) : ℤ :=
  A071089.P10721152534759414151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071318.P4179928839339890454

`A067259(eq[1, A067259(n+2)-A067259(n+1)]+1)`
-/

namespace A071318.P4179928839339890454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 2) - A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071318.P4179928839339890454

noncomputable section

/-- A071318: Lesser of 2 consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that both k and k+1 are in A067259.

Offset 1, canonical program `A071318.P4179928839339890454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A071318 (n : ℕ) : ℤ :=
  A071318.P4179928839339890454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A071318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071353.P17742407206952160100

`floor(record[A135530(n)]/A002380(n+1))`
-/

namespace A071353.P17742407206952160100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A002380 (n + 1) : ℚ)⌋

end

end A071353.P17742407206952160100

noncomputable section

/-- A071353: First term of the continued fraction expansion of (3/2)^n.

Offset 1, canonical program `A071353.P17742407206952160100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A071353 (n : ℕ) : ℤ :=
  A071353.P17742407206952160100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A071353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071357.P14620908527479147409

`(Δ[A071356(n)]-A071356(n))/2`
-/

namespace A071357.P14620908527479147409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071356 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A071356 n : ℚ) / 2

end

end A071357.P14620908527479147409

noncomputable section

/-- A071357: Expansion of (1 - 4*x - (1-2*x)*sqrt(1-4*x-4*x^2))/(8*x^3).

Offset 0, canonical program `A071357.P14620908527479147409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A071357 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071357.P14620908527479147409.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A071357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071411.P8034891771611393953

`∑[A000040(n+1)-A018252(n+1)]`
-/

namespace A071411.P8034891771611393953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P8034891771611393953

noncomputable section

/-- A071411: "Sum of n first primes" minus "sum of first n nonprimes".

Offset 1, canonical program `A071411.P8034891771611393953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071411 (n : ℕ) : ℤ :=
  A071411.P8034891771611393953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071423.P5110597557129823489

`A025695(n+1)-1`
-/

namespace A071423.P5110597557129823489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025695 (n + 1) - 1

end

end A071423.P5110597557129823489

noncomputable section

/-- A071423: a(n) = a(n-1) + number of decimal digits of 2^n. Number of decimal digits of concatenation of first n powers of 2.

Offset 1, canonical program `A071423.P5110597557129823489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071423 (n : ℕ) : ℤ :=
  A071423.P5110597557129823489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071569.P6797074587690204173

`(∑[A067856(n+1)]-1)*(-1)^n`
-/

namespace A071569.P6797074587690204173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * (-1) ^ n

end

end A071569.P6797074587690204173

noncomputable section

/-- A071569: Det(M_n) where M_n is the n X n matrix m(i,j)=1 if floor(i/j) is even, 0 otherwise.

Offset 1, canonical program `A071569.P6797074587690204173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A071569 (n : ℕ) : ℤ :=
  A071569.P6797074587690204173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A071569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071578.P14197670125788474709

`A060197(n+1)-2`
-/

namespace A071578.P14197670125788474709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060197 (n + 1) - 2

end

end A071578.P14197670125788474709

noncomputable section

/-- A071578: Number of iterations of Pi(n) needed to reach 1, where Pi(x) denotes the number of primes <= x.

Offset 1, canonical program `A071578.P14197670125788474709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071578 (n : ℕ) : ℤ :=
  A071578.P14197670125788474709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071617.P17182786669336089371

`A000312(A006093(n+1))`
-/

namespace A071617.P17182786669336089371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A006093 (n + 1)).toNat

end

end A071617.P17182786669336089371

noncomputable section

/-- A071617: a(n) = phi(p)^phi(p) where p = prime(n).

Offset 1, canonical program `A071617.P17182786669336089371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071617 (n : ℕ) : ℤ :=
  A071617.P17182786669336089371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071727.P16205519223476338135

`A000245(floor(n-atan(n)))+A000108(n+1)`
-/

namespace A071727.P16205519223476338135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat + A000108 (n + 1)

end

end A071727.P16205519223476338135

noncomputable section

/-- A071727: Expansion of (1+x^3*C)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071727.P16205519223476338135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071727 (n : ℕ) : ℤ :=
  A071727.P16205519223476338135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071737.P12356561809484092700

`A002057(n)+A000588(n)`
-/

namespace A071737.P12356561809484092700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 n

end

end A071737.P12356561809484092700

noncomputable section

/-- A071737: Expansion of (1+x^3*C^3)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071737.P12356561809484092700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071737 (n : ℕ) : ℤ :=
  A071737.P12356561809484092700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071738.P7757935969038714407

`abs(Δ[A000245(abs(1-n))])`
-/

namespace A071738.P7757935969038714407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A071738.P7757935969038714407

noncomputable section

/-- A071738: Expansion of (1+x^3*C^4)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071738.P7757935969038714407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071738 (n : ℕ) : ℤ :=
  A071738.P7757935969038714407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071753.P30936712519136142

`A002057(n)+A000588(abs(1-n))`
-/

namespace A071753.P30936712519136142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 |1 - (n : ℤ)|.toNat

end

end A071753.P30936712519136142

noncomputable section

/-- A071753: Expansion of (1+x^4*C^3)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071753.P30936712519136142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071753 (n : ℕ) : ℤ :=
  A071753.P30936712519136142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071801.P7428256441683658426

`A000984(n)-C(n, floor(n/2))²`
-/

namespace A071801.P7428256441683658426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℤ)

end

end A071801.P7428256441683658426

noncomputable section

/-- A071801: a(n) = binomial(2n, n) - binomial(n, floor(n/2))^2.

Offset 0, canonical program `A071801.P7428256441683658426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A071801 (n : ℕ) : ℤ :=
  A071801.P7428256441683658426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A071801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071849.P6031364836765928747

`lt[A038605(n+1), A000120(n+1)]+1`
-/

namespace A071849.P6031364836765928747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A071849.P6031364836765928747

noncomputable section

/-- A071849: Numbers k such that A245788(k) > prime(k).

Offset 1, canonical program `A071849.P6031364836765928747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A071849 (n : ℕ) : ℤ :=
  (A071849.P6031364836765928747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A071849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071910.P12114120493175264682

`A059827(n+1)-A000537(n+1)`
-/

namespace A071910.P12114120493175264682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059827 (n + 1) - A000537 (n + 1)

end

end A071910.P12114120493175264682

noncomputable section

/-- A071910: a(n) = t(n)*t(n+1)*t(n+2), where t() are the triangular numbers.

Offset 0, canonical program `A071910.P12114120493175264682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059827, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071910 (n : ℕ) : ℤ :=
  A071910.P12114120493175264682.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059827, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072003.P17563433815592604341

`10-A007652(n+1)`
-/

namespace A072003.P17563433815592604341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A007652 (n + 1)

end

end A072003.P17563433815592604341

noncomputable section

/-- A072003: 10's complement of final digit of n-th prime.

Offset 1, canonical program `A072003.P17563433815592604341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072003 (n : ℕ) : ℤ :=
  A072003.P17563433815592604341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072123.P16193012739039963475

`A004397(n+1)%A000040(n+1)`
-/

namespace A072123.P16193012739039963475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004397 (n + 1)) (A000040 (n + 1))

end

end A072123.P16193012739039963475

noncomputable section

/-- A072123: Remainder when Fibonacci(n) is divided by prime(n).

Offset 1, canonical program `A072123.P16193012739039963475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A072123 (n : ℕ) : ℤ :=
  A072123.P16193012739039963475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A072123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072205.P4241057387685092381

`A008837(n+1)+1`
-/

namespace A072205.P4241057387685092381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + 1

end

end A072205.P4241057387685092381

noncomputable section

/-- A072205: a(n) = (p^2 - p + 2)/2 for p = prime(n); number of squares modulo p^2.

Offset 1, canonical program `A072205.P4241057387685092381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072205 (n : ℕ) : ℤ :=
  A072205.P4241057387685092381.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072205.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072206.P1665309574646380212

`A000125(A006093(n+1))`
-/

namespace A072206.P1665309574646380212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A006093 (n + 1)).toNat

end

end A072206.P1665309574646380212

noncomputable section

/-- A072206: Third terms of triple Peano sequence A071988.

Offset 1, canonical program `A072206.P1665309574646380212`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072206 (n : ℕ) : ℤ :=
  A072206.P1665309574646380212.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072357.P5178513811147103073

`filter[A060687(n+1), A049240(#)]`
-/

namespace A072357.P5178513811147103073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072357.P5178513811147103073

noncomputable section

/-- A072357: Cubefree nonsquares whose factorization into a product of primes contains exactly one square.

Offset 1, canonical program `A072357.P5178513811147103073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A072357 (n : ℕ) : ℤ :=
  A072357.P5178513811147103073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. -/
def A072357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072479.P734407684098892103

`ceil(A072346(n)/A028310(n))`
-/

namespace A072479.P734407684098892103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072346 n : ℚ) / (A028310 n : ℚ)⌉

end

end A072479.P734407684098892103

noncomputable section

/-- A072479: Surface area of n-dimensional sphere of radius r is n*V_n*r^(n-1) = n*Pi^(n/2)*r^(n-1)/(n/2)! = S_n*Pi^floor(n/2)*r^(n-1); sequence gives denominator of S_n.

Offset 0, canonical program `A072479.P734407684098892103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A072479 (n : ℕ) : ℤ :=
  A072479.P734407684098892103.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A072479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072505.P1528102251887923534

`(n+1)/A072504(n+1)`
-/

namespace A072505.P1528102251887923534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072504 (n + 1) : ℚ)

end

end A072505.P1528102251887923534

noncomputable section

/-- A072505: a(n) = n / (LCM of divisors of n which are <= sqrt(n)).

Offset 1, canonical program `A072505.P1528102251887923534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072505.P1528102251887923534.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072514.P13343322914018552684

`A004125(n+1)-A067439(n+1)`
-/

namespace A072514.P13343322914018552684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) - A067439 (n + 1)

end

end A072514.P13343322914018552684

noncomputable section

/-- A072514: Sum of n mod k for k in {1...n} with gcd(k,n) > 1.

Offset 1, canonical program `A072514.P13343322914018552684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A067439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072514 (n : ℕ) : ℤ :=
  A072514.P13343322914018552684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A067439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072566.P2708539642026713051

`eq[n%10, A105853(round(sqrt(n²+1)))]`
-/

namespace A072566.P2708539642026713051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105853 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072566.P2708539642026713051

noncomputable section

/-- A072566: Numbers n such that n and sigma(n) end with the same digit in base 10.

Offset 1, canonical program `A072566.P2708539642026713051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A072566 (n : ℕ) : ℤ :=
  (A072566.P2708539642026713051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A072566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072588.P14826125497487737405

`filter[A072587(n+1), A049240(#)]`
-/

namespace A072588.P14826125497487737405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072588.P14826125497487737405

noncomputable section

/-- A072588: Numbers having at least one prime factor with an odd and one with an even exponent.

Offset 1, canonical program `A072588.P14826125497487737405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9817 terms. -/
def A072588 (n : ℕ) : ℤ :=
  A072588.P14826125497487737405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9817 terms. -/
def A072588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072592.P12540866148401735071

`2*A009003(n+1)`
-/

namespace A072592.P12540866148401735071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009003 (n + 1)

end

end A072592.P12540866148401735071

noncomputable section

/-- A072592: Even numbers with at least one prime factor of form 4*k+1.

Offset 1, canonical program `A072592.P12540866148401735071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072592 (n : ℕ) : ℤ :=
  A072592.P12540866148401735071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072608.P17252208234084094213

`A004648(n+1)%2`
-/

namespace A072608.P17252208234084094213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004648 (n + 1)) 2

end

end A072608.P17252208234084094213

noncomputable section

/-- A072608: Parity of remainder Mod(prime(n),n) = A004648(n).

Offset 1, canonical program `A072608.P17252208234084094213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072608 (n : ℕ) : ℤ :=
  A072608.P17252208234084094213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072669.P12110075394284509004

`p?[A001043(n+1)-1]`
-/

namespace A072669.P12110075394284509004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072669.P12110075394284509004

noncomputable section

/-- A072669: Primes of the form prime(x) + prime(x+1) - 1.

Offset 1, canonical program `A072669.P12110075394284509004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. -/
def A072669 (n : ℕ) : ℤ :=
  A072669.P12110075394284509004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. -/
def A072669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072675.P643650882318927385

`eq[A003893(n), A059811(n+1)]`
-/

namespace A072675.P643650882318927385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P643650882318927385

noncomputable section

/-- A072675: Integers m such that the last digit of Fibonacci(m) is 1.

Offset 1, canonical program `A072675.P643650882318927385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A072675 (n : ℕ) : ℤ :=
  (A072675.P643650882318927385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A072675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072683.P852836243183938597

`eq[2*A003893(n), A063808(n)]`
-/

namespace A072683.P852836243183938597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P852836243183938597

noncomputable section

/-- A072683: Numbers k such that the last digit of F(k) is 3 where F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A072683.P852836243183938597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A072683 (n : ℕ) : ℤ :=
  (A072683.P852836243183938597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A072683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072689.P14990289792546515226

`2*floor(sqrt(n))+1-Δ[A048760(n)]`
-/

namespace A072689.P14990289792546515226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.sqrt n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A072689.P14990289792546515226

noncomputable section

/-- A072689: Difference between (least square >= n) and (largest square <= n).

Offset 1, canonical program `A072689.P14990289792546515226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072689 (n : ℕ) : ℤ :=
  A072689.P14990289792546515226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072696.P7100591324136406172

`lcm(∏{e}[n+1, #+1], A048785(n+1))`
-/

namespace A072696.P7100591324136406172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A048785 (n + 1))

end

end A072696.P7100591324136406172

noncomputable section

/-- A072696: a(n) = lcm(d(n^3), d(n)), where d(n) = A000005, the number of divisors of n.

Offset 1, canonical program `A072696.P7100591324136406172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072696 (n : ℕ) : ℤ :=
  (A072696.P7100591324136406172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072710.P10047720630133660350

`A072708(n+1)-15`
-/

namespace A072710.P10047720630133660350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072708 (n + 1) - 15

end

end A072710.P10047720630133660350

noncomputable section

/-- A072710: Last digit of F(n) is 8 where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A072710.P10047720630133660350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072710 (n : ℕ) : ℤ :=
  A072710.P10047720630133660350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072711.P7367915971736303405

`eq[A003893(n), A066586(n+1)]`
-/

namespace A072711.P7367915971736303405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P7367915971736303405

noncomputable section

/-- A072711: Integers m such that the last digit of Fibonacci(m) is 9.

Offset 1, canonical program `A072711.P7367915971736303405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A072711 (n : ℕ) : ℤ :=
  (A072711.P7367915971736303405.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A072711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072774.P8652726476267271771

`eq[1, A066636(n+1)]+1`
-/

namespace A072774.P8652726476267271771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072774.P8652726476267271771

noncomputable section

/-- A072774: Powers of squarefree numbers.

Offset 1, canonical program `A072774.P8652726476267271771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072774 (n : ℕ) : ℤ :=
  (A072774.P8652726476267271771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072795.P2013222351577719000

`n+A000108(A072643(n))`
-/

namespace A072795.P2013222351577719000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000108 (A072643 n).toNat

end

end A072795.P2013222351577719000

noncomputable section

/-- A072795: A014486-indices of the plane binary trees AND plane general trees whose left subtree is just a stick: \. thus corresponding to the parenthesizations whose first element (of the top-level list) is an empty parenthesization: ().

Offset 0, canonical program `A072795.P2013222351577719000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072795 (n : ℕ) : ℤ :=
  A072795.P2013222351577719000.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072806.P3541746247059658521

`A007091(A007528(n+1))`
-/

namespace A072806.P3541746247059658521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A007528 (n + 1)).toNat

end

end A072806.P3541746247059658521

noncomputable section

/-- A072806: Primes of the form 6k+5 written in base 5.

Offset 1, canonical program `A072806.P3541746247059658521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, A007528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072806 (n : ℕ) : ℤ :=
  A072806.P3541746247059658521.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, A007528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072929.P14615629184669553561

`∑{d}[n+1, A000984(#)]`
-/

namespace A072929.P14615629184669553561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000984 d

end

end A072929.P14615629184669553561

noncomputable section

/-- A072929: a(n) = Sum_{d dividing n} binomial(2d,d).

Offset 1, canonical program `A072929.P14615629184669553561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A072929 (n : ℕ) : ℤ :=
  A072929.P14615629184669553561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A072929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073170.P2641425171227108068

`A006005(A028310(n))-A028310(n)`
-/

namespace A073170.P2641425171227108068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A028310 n).toNat - A028310 n

end

end A073170.P2641425171227108068

noncomputable section

/-- A073170: a(1) = a(2) = 0; for n>2, a(n) = prime(n-1)-n+1.

Offset 1, canonical program `A073170.P2641425171227108068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073170 (n : ℕ) : ℤ :=
  A073170.P2641425171227108068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073258.P5210968974332604288

`eq[1, gcd(n+1, A018252(n+2))]+1`
-/

namespace A073258.P5210968974332604288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A018252 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073258.P5210968974332604288

noncomputable section

/-- A073258: Numbers n such that gcd(c(n),n) = gcd(A002808(n),n) = A064814(n)=1 where c(n) is the n-th composite number.

Offset 1, canonical program `A073258.P5210968974332604288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9908 terms. -/
def A073258 (n : ℕ) : ℤ :=
  (A073258.P5210968974332604288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9908 terms. -/
def A073258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073578.P5875671179012432649

`∑[∑[A033999(n+1)]*A067856(2*(n+1))]`
-/

namespace A073578.P5875671179012432649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A067856 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073578.P5875671179012432649

noncomputable section

/-- A073578: a(n) = Sum_{k=1..n} mu(2*k).

Offset 1, canonical program `A073578.P5875671179012432649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073578 (n : ℕ) : ℤ :=
  A073578.P5875671179012432649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073779.P14309526426205803288

`A077267(A000040(n+1))`
-/

namespace A073779.P14309526426205803288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A000040 (n + 1)).toNat

end

end A073779.P14309526426205803288

noncomputable section

/-- A073779: Number of 0's in base-3 representation of n-th prime.

Offset 1, canonical program `A073779.P14309526426205803288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073779 (n : ℕ) : ℤ :=
  A073779.P14309526426205803288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073780.P18101224103770424285

`A062756(A000040(n+1))`
-/

namespace A073780.P18101224103770424285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A000040 (n + 1)).toNat

end

end A073780.P18101224103770424285

noncomputable section

/-- A073780: Number of 1's in base 3 representation of n-th prime.

Offset 1, canonical program `A073780.P18101224103770424285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A062756, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073780 (n : ℕ) : ℤ :=
  A073780.P18101224103770424285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A062756, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073811.P6779221465555782034

`∑{d}[A009195(n+1), A057427(#)]`
-/

namespace A073811.P6779221465555782034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A073811.P6779221465555782034

noncomputable section

/-- A073811: Number of common divisors of n and phi(n).

Offset 1, canonical program `A073811.P6779221465555782034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073811 (n : ℕ) : ℤ :=
  A073811.P6779221465555782034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073997.P4523075487907254813

`A073996(n+1)+A009116(n)²`
-/

namespace A073997.P4523075487907254813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + A009116 n ^ 2

end

end A073997.P4523075487907254813

noncomputable section

/-- A073997: Number of strings of length n over GF(4) with trace 1 and subtrace 0.

Offset 1, canonical program `A073997.P4523075487907254813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073997 (n : ℕ) : ℤ :=
  A073997.P4523075487907254813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073998.P13650005313177628228

`A073996(n+1)+A009545(n)²`
-/

namespace A073998.P13650005313177628228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + A009545 n ^ 2

end

end A073998.P13650005313177628228

noncomputable section

/-- A073998: Number of strings of length n over GF(4) with trace 1 and subtrace 1.

Offset 1, canonical program `A073998.P13650005313177628228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073998 (n : ℕ) : ℤ :=
  A073998.P13650005313177628228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074294.P12630309152577837506

`A165776(n)%A130829(n+1)`
-/

namespace A074294.P12630309152577837506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165776 n) (A130829 (n + 1))

end

end A074294.P12630309152577837506

noncomputable section

/-- A074294: Integers 1 to 2*k followed by integers 1 to 2*k + 2 and so on.

Offset 1, canonical program `A074294.P12630309152577837506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074294 (n : ℕ) : ℤ :=
  A074294.P12630309152577837506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074374.P17699635575906020562

`C(A036288(A028310(n)), 2)`
-/

namespace A074374.P17699635575906020562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A036288 (A028310 n).toNat).toNat 2

end

end A074374.P17699635575906020562

noncomputable section

/-- A074374: a(n) = sopfr(n)*(sopfr(n)+1)/2 where sopfr is the sum of the prime factors of n with repetition (A001414).

Offset 0, canonical program `A074374.P17699635575906020562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074374 (n : ℕ) : ℤ :=
  (A074374.P17699635575906020562.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074465.P13764796853206627509

`A074389((n+1)²)`
-/

namespace A074465.P13764796853206627509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074389 ((n + 1) ^ 2)

end

end A074465.P13764796853206627509

noncomputable section

/-- A074465: a(n) = gcd(n^2, sigma(n^2), phi(n^2)).

Offset 1, canonical program `A074465.P13764796853206627509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A074465 (n : ℕ) : ℤ :=
  A074465.P13764796853206627509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A074465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074500.P5724242199096576058

`round(sqrt((n+1)^3))-A006093(n+1)`
-/

namespace A074500.P5724242199096576058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 3 : ℝ)) - A006093 (n + 1)

end

end A074500.P5724242199096576058

noncomputable section

/-- A074500: Difference between n*sqrt(n)+1 and prime(n), rounded to nearest integer.

Offset 1, canonical program `A074500.P5724242199096576058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074500 (n : ℕ) : ℤ :=
  A074500.P5724242199096576058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074585.P10482400427346925936

`∑[A073145(n)-a(n-1)]` with `a(0)=3`
-/

namespace A074585.P10482400427346925936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A073145 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074585.P10482400427346925936

noncomputable section

/-- A074585: a(n)= Sum_{j=0..floor(n/2)} A073145(2*j + q), where q = 2*(n/2 - floor(n/2)).

Offset 0, canonical program `A074585.P10482400427346925936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A074585 (n : ℕ) : ℤ :=
  A074585.P10482400427346925936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A074585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074724.P5377072150215440404

`3*A038500(n+1)`
-/

namespace A074724.P5377072150215440404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038500 (n + 1)

end

end A074724.P5377072150215440404

noncomputable section

/-- A074724: Highest power of 3 dividing F(4n) where F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A074724.P5377072150215440404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074724 (n : ℕ) : ℤ :=
  A074724.P5377072150215440404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074739.P8677531906933437778

`lt[A062419(n+1), A062509(n+1)]+1`
-/

namespace A074739.P8677531906933437778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074739.P8677531906933437778

noncomputable section

/-- A074739: Numbers n such that omega(n) > log(log(n)).

Offset 1, canonical program `A074739.P8677531906933437778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5416 terms. -/
def A074739 (n : ℕ) : ℤ :=
  (A074739.P8677531906933437778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5416 terms. -/
def A074739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074741.P4001630026398691162

`∑[(A046933(n+1)+1)²]`
-/

namespace A074741.P4001630026398691162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046933 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P4001630026398691162

noncomputable section

/-- A074741: Sum of squares of gaps between consecutive primes.

Offset 1, canonical program `A074741.P4001630026398691162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074741 (n : ℕ) : ℤ :=
  A074741.P4001630026398691162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074745.P3958489061865529795

`∑[A006094(n+1)]`
-/

namespace A074745.P3958489061865529795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P3958489061865529795

noncomputable section

/-- A074745: a(n) = sum_{k=1..n} prime(k)*prime(k+1).

Offset 1, canonical program `A074745.P3958489061865529795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074745 (n : ℕ) : ℤ :=
  A074745.P3958489061865529795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074938.P9120139472351872222

`or(1, A081601(n+1))`
-/

namespace A074938.P9120139472351872222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081601 (n + 1))

end

end A074938.P9120139472351872222

noncomputable section

/-- A074938: Odd numbers such that base 3 representation contains no 2.

Offset 0, canonical program `A074938.P9120139472351872222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074938 (n : ℕ) : ℤ :=
  A074938.P9120139472351872222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075062.P13673031658186566023

`∑[n]+(n+1)*A075059(n+1)`
-/

namespace A075062.P13673031658186566023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * A075059 (n + 1)

end

end A075062.P13673031658186566023

noncomputable section

/-- A075062: Row sums of triangle in A075059.

Offset 1, canonical program `A075062.P13673031658186566023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A075062 (n : ℕ) : ℤ :=
  A075062.P13673031658186566023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A075062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075149.P18175513624776809686

`floor(A051656(n)/A000032(n))`
-/

namespace A075149.P18175513624776809686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051656 n : ℚ) / (A000032 n : ℚ)⌋

end

end A075149.P18175513624776809686

noncomputable section

/-- A075149: Sum_{i=0..2*A053645(n)} (C(2*A053645(n),i) mod 2)*A000045(n-i) [where C(r,c) is the binomial coefficient (A007318) and A000045(n) is the n-th Fibonacci number].

Offset 0, canonical program `A075149.P18175513624776809686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A075149 (n : ℕ) : ℤ :=
  A075149.P18175513624776809686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A075149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075432.P9727196206046157024

`p?[gcd(2*(n+1), A067856(or(1, n)))-1]`
-/

namespace A075432.P9727196206046157024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * (n + 1) : ℤ) (A067856 (Nat.lor 1 n)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075432.P9727196206046157024

noncomputable section

/-- A075432: Primes with no squarefree neighbors.

Offset 1, canonical program `A075432.P9727196206046157024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3093 terms. -/
def A075432 (n : ℕ) : ℤ :=
  A075432.P9727196206046157024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3093 terms. -/
def A075432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075465.P1079195501132241979

`round((∑[A014686(n+1)]-1)/(n+1))`
-/

namespace A075465.P1079195501132241979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A075465.P1079195501132241979

noncomputable section

/-- A075465: Rounded average of first n primes.

Offset 1, canonical program `A075465.P1079195501132241979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075465 (n : ℕ) : ℤ :=
  A075465.P1079195501132241979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075520.P13748958208272112620

`A001749(n+1)+A039702(n+1)`
-/

namespace A075520.P13748958208272112620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) + A039702 (n + 1)

end

end A075520.P13748958208272112620

noncomputable section

/-- A075520: 4*prime(n) + (prime(n) mod 4).

Offset 1, canonical program `A075520.P13748958208272112620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001749, A039702, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075520 (n : ℕ) : ℤ :=
  A075520.P13748958208272112620.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001749, A039702, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075544.P11404657353925885647

`p?[∑[A038194(n+1)]]`
-/

namespace A075544.P11404657353925885647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075544.P11404657353925885647

noncomputable section

/-- A075544: Primes which are the sum of the digital root of the first n primes for some n.

Offset 1, canonical program `A075544.P11404657353925885647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. -/
def A075544 (n : ℕ) : ℤ :=
  A075544.P11404657353925885647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. -/
def A075544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075765.P11110543088871265091

`A038605(n+1)+A004648(n+1)`
-/

namespace A075765.P11110543088871265091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1) + A004648 (n + 1)

end

end A075765.P11110543088871265091

noncomputable section

/-- A075765: a(n) = floor(prime(n)/n) + (prime(n) mod n).

Offset 1, canonical program `A075765.P11110543088871265091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075765 (n : ℕ) : ℤ :=
  A075765.P11110543088871265091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075771.P18153628012124864768

`A069547(n+1)+floor((n+2)*n/A000040(n+1))`
-/

namespace A075771.P18153628012124864768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069547 (n + 1) + ⌊(n + 2 : ℚ) * ((n : ℚ) / (A000040 (n + 1) : ℚ))⌋

end

end A075771.P18153628012124864768

noncomputable section

/-- A075771: Let n^2 = q*prime(n) + r with 0 <= r < prime(n); then a(n) = q + r.

Offset 1, canonical program `A075771.P18153628012124864768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075771 (n : ℕ) : ℤ :=
  A075771.P18153628012124864768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075897.P8597218280166842261

`C(C(3, A000120(n)), 3)`
-/

namespace A075897.P8597218280166842261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 (A000120 n).toNat) 3

end

end A075897.P8597218280166842261

noncomputable section

/-- A075897: 1 if binary weight of n is 1 or 2, otherwise 0.

Offset 0, canonical program `A075897.P8597218280166842261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075897 (n : ℕ) : ℤ :=
  (A075897.P8597218280166842261.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076025.P10278836771716070548

`ceil(A076035(n)/4)`
-/

namespace A076025.P10278836771716070548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076035 n : ℚ) / 4⌉

end

end A076025.P10278836771716070548

noncomputable section

/-- A076025: Expansion of g.f.: (1-3*x*C)/(1-4*x*C) where C = (1 - sqrt(1-4*x))/(2*x) = g.f. for Catalan numbers A000108.

Offset 0, canonical program `A076025.P10278836771716070548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A076025 (n : ℕ) : ℤ :=
  A076025.P10278836771716070548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A076025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076079.P11386046758032469833

`A006005(n+1)-A004648(n+1)`
-/

namespace A076079.P11386046758032469833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A004648 (n + 1)

end

end A076079.P11386046758032469833

noncomputable section

/-- A076079: Largest multiple of n < the n-th prime.

Offset 1, canonical program `A076079.P11386046758032469833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076079 (n : ℕ) : ℤ :=
  A076079.P11386046758032469833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076333.P16728380609905243080

`∏{p}[A013929(n+1), #]`
-/

namespace A076333.P16728380609905243080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076333.P16728380609905243080

noncomputable section

/-- A076333: Squarefree kernels of nonsquarefree numbers.

Offset 1, canonical program `A076333.P16728380609905243080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076333 (n : ℕ) : ℤ :=
  (A076333.P16728380609905243080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076333.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A076367.P954353847303307258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076367 (n : ℕ) : ℤ :=
  A076367.P954353847303307258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076536.P12036762961433065870

`A006370(A075884(n+1))`
-/

namespace A076536.P12036762961433065870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A075884 (n + 1)).toNat

end

end A076536.P12036762961433065870

noncomputable section

/-- A076536: Image of n at the third step in the 3x+1 Problem: syr(3,n).

Offset 1, canonical program `A076536.P12036762961433065870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A076536 (n : ℕ) : ℤ :=
  A076536.P12036762961433065870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A076536.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A076621.P15526451203050093730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076621 (n : ℕ) : ℤ :=
  A076621.P15526451203050093730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076621.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A076821.P17180744197295729660

`A081345(A046933(n+1))`
-/

namespace A076821.P17180744197295729660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (A046933 (n + 1)).toNat

end

end A076821.P17180744197295729660

noncomputable section

/-- A076821: Squares of the differences between consecutive primes.

Offset 1, canonical program `A076821.P17180744197295729660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076821 (n : ℕ) : ℤ :=
  A076821.P17180744197295729660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077063.P5679541936603773181

`∏{p}[A006093(n+1), #]`
-/

namespace A077063.P5679541936603773181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077063.P5679541936603773181

noncomputable section

/-- A077063: Squarefree kernel of prime(n) - 1.

Offset 1, canonical program `A077063.P5679541936603773181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077063 (n : ℕ) : ℤ :=
  (A077063.P5679541936603773181.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077066.P8360525958059703494

`∏{p}[A008864(n+1), #]`
-/

namespace A077066.P8360525958059703494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077066.P8360525958059703494

noncomputable section

/-- A077066: Squarefree kernel of prime(n) + 1.

Offset 1, canonical program `A077066.P8360525958059703494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077066 (n : ℕ) : ℤ :=
  (A077066.P8360525958059703494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077066.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077152.P10803449440115918317

`A008864(∑[∑{p}[n+1, val(#, n+1)]+1])`
-/

namespace A077152.P10803449440115918317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077152.P10803449440115918317

noncomputable section

/-- A077152: Smallest k such that there are n primes between n and k.

Offset 1, canonical program `A077152.P10803449440115918317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8892 terms. -/
def A077152 (n : ℕ) : ℤ :=
  A077152.P10803449440115918317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8892 terms. -/
def A077152.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077587.P2148504082897377648

`A000984(n)+A000245(n)`
-/

namespace A077587.P2148504082897377648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A000245 n

end

end A077587.P2148504082897377648

noncomputable section

/-- A077587: a(n) = C(n+1) + n*C(n) where C = A000108 (Catalan numbers).

Offset 0, canonical program `A077587.P2148504082897377648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A077587 (n : ℕ) : ℤ :=
  A077587.P2148504082897377648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A077587.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077686.P7601920749797630900

`2^n-A004648(n+1)`
-/

namespace A077686.P7601920749797630900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A004648 (n + 1)

end

end A077686.P7601920749797630900

noncomputable section

/-- A077686: 2^(n-1) - (prime(n) mod n).

Offset 1, canonical program `A077686.P7601920749797630900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A077686 (n : ℕ) : ℤ :=
  A077686.P7601920749797630900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A077686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077899.P4957359219499871426

`∑[∑[A078039(n)]]`
-/

namespace A077899.P4957359219499871426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077899.P4957359219499871426

noncomputable section

/-- A077899: Expansion of (1-x)^(-1)/(1+x-2*x^2+x^3).

Offset 0, canonical program `A077899.P4957359219499871426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A077899 (n : ℕ) : ℤ :=
  A077899.P4957359219499871426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A077899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077900.P18424415543219233499

`∑[A077970(n)]`
-/

namespace A077900.P18424415543219233499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077900.P18424415543219233499

noncomputable section

/-- A077900: Expansion of (1-x)^(-1)/(1+x-2*x^2+2*x^3).

Offset 0, canonical program `A077900.P18424415543219233499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A077900 (n : ℕ) : ℤ :=
  A077900.P18424415543219233499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A077900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077910.P10286157498680771354

`∑[A077977(n)]`
-/

namespace A077910.P10286157498680771354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077910.P10286157498680771354

noncomputable section

/-- A077910: Expansion of 1/((1-x)*(1+x+2*x^2-2*x^3)).

Offset 0, canonical program `A077910.P10286157498680771354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A077910 (n : ℕ) : ℤ :=
  A077910.P10286157498680771354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A077910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077911.P10579304539831280951

`∑[A077978(n)]`
-/

namespace A077911.P10579304539831280951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077911.P10579304539831280951

noncomputable section

/-- A077911: Expansion of 1/((1-x)*(1+x+2*x^2-x^3)).

Offset 0, canonical program `A077911.P10579304539831280951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A077911 (n : ℕ) : ℤ :=
  A077911.P10579304539831280951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A077911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077915.P414488129149946539

`∑[A077981(n)]`
-/

namespace A077915.P414488129149946539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077915.P414488129149946539

noncomputable section

/-- A077915: Expansion of 1/((1-x)*(1+2*x-2*x^2-2*x^3)).

Offset 0, canonical program `A077915.P414488129149946539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A077915 (n : ℕ) : ℤ :=
  A077915.P414488129149946539.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A077915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077918.P14999032659866716715

`∑[A077983(n)]`
-/

namespace A077918.P14999032659866716715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077918.P14999032659866716715

noncomputable section

/-- A077918: Expansion of (1 - x)^(-1)/(1 + 2*x - 2*x^2 + x^3).

Offset 0, canonical program `A077918.P14999032659866716715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A077918 (n : ℕ) : ℤ :=
  A077918.P14999032659866716715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A077918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077919.P15133795445824054090

`∑[A077984(n)]`
-/

namespace A077919.P15133795445824054090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077919.P15133795445824054090

noncomputable section

/-- A077919: Expansion of (1-x)^(-1)/(1+2*x-2*x^2+2*x^3).

Offset 0, canonical program `A077919.P15133795445824054090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A077919 (n : ℕ) : ℤ :=
  A077919.P15133795445824054090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A077919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077922.P15243548256184037806

`∑[A077986(n)]`
-/

namespace A077922.P15243548256184037806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077922.P15243548256184037806

noncomputable section

/-- A077922: Expansion of (1-x)^(-1)/(1+2*x-x^2+x^3).

Offset 0, canonical program `A077922.P15243548256184037806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A077922 (n : ℕ) : ℤ :=
  A077922.P15243548256184037806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A077922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077928.P4479097830217916521

`∑[A077989(n)]`
-/

namespace A077928.P4479097830217916521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077928.P4479097830217916521

noncomputable section

/-- A077928: Expansion of (1-x)^(-1)/(1+2*x+x^2-2*x^3).

Offset 0, canonical program `A077928.P4479097830217916521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A077928 (n : ℕ) : ℤ :=
  A077928.P4479097830217916521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A077928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078040.P9379072701483154084

`A000007(n)+Δ[A077970(A028310(n)-1)]`
-/

namespace A078040.P9379072701483154084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A078040.P9379072701483154084

noncomputable section

/-- A078040: Expansion of (1-x)/(1+x-2*x^2+2*x^3).

Offset 0, canonical program `A078040.P9379072701483154084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A078040 (n : ℕ) : ℤ :=
  A078040.P9379072701483154084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A078040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078055.P9241416192042776401

`A077984(n+1)+A077984(n+2)/2`
-/

namespace A078055.P9241416192042776401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077984 (n + 1) : ℚ) + (A077984 (n + 2) : ℚ) / 2

end

end A078055.P9241416192042776401

noncomputable section

/-- A078055: Expansion of (1-x)/(1+2*x-2*x^2+2*x^3).

Offset 0, canonical program `A078055.P9241416192042776401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A078055 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078055.P9241416192042776401.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A078055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078060.P7452440639669573224

`2*A077988(n)-A124342(n)`
-/

namespace A078060.P7452440639669573224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077988 n - A124342 n

end

end A078060.P7452440639669573224

noncomputable section

/-- A078060: Expansion of (1-x)/(1+2*x-2*x^3).

Offset 0, canonical program `A078060.P7452440639669573224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 525 terms. -/
def A078060 (n : ℕ) : ℤ :=
  A078060.P7452440639669573224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 525 terms. -/
def A078060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078062.P1063903905393976772

`Δ[Δ[A077927(n)-A110524(n)]]`
-/

namespace A078062.P1063903905393976772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077927 n - A110524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078062.P1063903905393976772

noncomputable section

/-- A078062: Expansion of (1-x)/(1+2*x+2*x^3).

Offset 0, canonical program `A078062.P1063903905393976772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A078062 (n : ℕ) : ℤ :=
  A078062.P1063903905393976772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A078062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078147.P6737435720449306481

`A013929(n+2)-A013929(n+1)`
-/

namespace A078147.P6737435720449306481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2) - A013929 (n + 1)

end

end A078147.P6737435720449306481

noncomputable section

/-- A078147: First differences of sequence of nonsquarefree numbers, A013929.

Offset 1, canonical program `A078147.P6737435720449306481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078147 (n : ℕ) : ℤ :=
  A078147.P6737435720449306481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078159.P9261485697348442342

`A078157(n+1)+2+n`
-/

namespace A078159.P9261485697348442342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078157 (n + 1) + 2 + (n : ℤ)

end

end A078159.P9261485697348442342

noncomputable section

/-- A078159: a(n) = A055086(2^n).

Offset 1, canonical program `A078159.P9261485697348442342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A078159 (n : ℕ) : ℤ :=
  A078159.P9261485697348442342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A078159.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078444.P11043186546524431519

`floor(sqrt(A006094(n+1)))`
-/

namespace A078444.P11043186546524431519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006094 (n + 1))

end

end A078444.P11043186546524431519

noncomputable section

/-- A078444: Floor of geometric mean of two consecutive primes.

Offset 1, canonical program `A078444.P11043186546524431519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078444 (n : ℕ) : ℤ :=
  A078444.P11043186546524431519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078584.P18414486940805299967

`Δ[A008347(2*n)]`
-/

namespace A078584.P18414486940805299967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078584.P18414486940805299967

noncomputable section

/-- A078584: a(n) = prime(2n) - prime(2n-1).

Offset 1, canonical program `A078584.P18414486940805299967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078584 (n : ℕ) : ℤ :=
  A078584.P18414486940805299967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078584.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078637.P13097974812791464908

`lcm(A078636(n+1), A078636(n+2))`
-/

namespace A078637.P13097974812791464908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078636 (n + 1)) (A078636 (n + 2))

end

end A078637.P13097974812791464908

noncomputable section

/-- A078637: a(n) = rad(n(n+1)(n+2)), where rad(m) is the largest squarefree number dividing m (see A007947).

Offset 1, canonical program `A078637.P13097974812791464908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A078637 (n : ℕ) : ℤ :=
  (A078637.P13097974812791464908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A078637.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078725.P18057076827891889400

`floor(A001748(A000217(n)+4)/3)`
-/

namespace A078725.P18057076827891889400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001748 (A000217 n + 4).toNat : ℚ) / 3⌋

end

end A078725.P18057076827891889400

noncomputable section

/-- A078725: a(n) = prime(n*(n+1)/2+4).

Offset 0, canonical program `A078725.P18057076827891889400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A078725 (n : ℕ) : ℤ :=
  A078725.P18057076827891889400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A078725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078796.P8368644746636579634

`gcd(2, A001961(n+1))+n`
-/

namespace A078796.P8368644746636579634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001961 (n + 1)) + n

end

end A078796.P8368644746636579634

noncomputable section

/-- A078796: a(n) = 2*ceiling(n*phi) - ceiling(n*sqrt(5)) where phi=(1+sqrt(5))/2 is the Golden ratio.

Offset 1, canonical program `A078796.P8368644746636579634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078796 (n : ℕ) : ℤ :=
  (A078796.P8368644746636579634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079093.P12719429478609976396

`∏{p}[(A006094(n+1)+A001043(n+1)+1)/4, #]`
-/

namespace A079093.P12719429478609976396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) + A001043 (n + 1) + 1 : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A079093.P12719429478609976396

noncomputable section

/-- A079093: Squarefree kernel of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079093.P12719429478609976396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A079093 (n : ℕ) : ℤ :=
  (A079093.P12719429478609976396.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A079093.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079537.P3492315687404907307

`A079536(Δ[n²])`
-/

namespace A079537.P3492315687404907307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079537.P3492315687404907307

noncomputable section

/-- A079537: a(n) = phi(2*n+1)*d(2*n+1) - sigma(2*n+1).

Offset 0, canonical program `A079537.P3492315687404907307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A079537 (n : ℕ) : ℤ :=
  A079537.P3492315687404907307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A079537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079632.P7364351861297694612

`a(A076874(n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A079632.P7364351861297694612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (A076874 n).toNat

end

end A079632.P7364351861297694612

noncomputable section

/-- A079632: a(n) = floor(n/floor(sqrt(n)))-floor(sqrt(n)).

Offset 1, canonical program `A079632.P7364351861297694612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079632 (n : ℕ) : ℤ :=
  (A079632.P7364351861297694612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079704.P11944309894507862632

`2*A001248(n+1)`
-/

namespace A079704.P11944309894507862632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 1)

end

end A079704.P11944309894507862632

noncomputable section

/-- A079704: a(n) = 2*prime(n)^2.

Offset 1, canonical program `A079704.P11944309894507862632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079704 (n : ℕ) : ℤ :=
  A079704.P11944309894507862632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079704.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A079705.P5346247359754052354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079705 (n : ℕ) : ℤ :=
  A079705.P5346247359754052354.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079705.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A080333.P9070699578498167988

`∑[A032766(A038500(n+1))]`
-/

namespace A080333.P9070699578498167988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A038500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P9070699578498167988

noncomputable section

/-- A080333: Partial sums of A080278.

Offset 1, canonical program `A080333.P9070699578498167988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080333 (n : ℕ) : ℤ :=
  A080333.P9070699578498167988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080397.P6836437732879293385

`A007947(A000984(n))`
-/

namespace A080397.P6836437732879293385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000984 n).toNat

end

end A080397.P6836437732879293385

noncomputable section

/-- A080397: Largest squarefree number dividing central binomial coefficient A000984(n).

Offset 0, canonical program `A080397.P6836437732879293385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080397 (n : ℕ) : ℤ :=
  A080397.P6836437732879293385.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080397.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A080567.P12314212706506024721

`A061285(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A080567.P12314212706506024721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061285 (n + 1) + a (n - 1)

end

end A080567.P12314212706506024721

noncomputable section

/-- A080567: 1 + Sum_{k=2..n} 2^((prime(k)-1)/2).

Offset 1, canonical program `A080567.P12314212706506024721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A080567 (n : ℕ) : ℤ :=
  A080567.P12314212706506024721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A080567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080572.P8137143480693309159

`A028310(n)²-A064194(A028310(n))`
-/

namespace A080572.P8137143480693309159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2 - A064194 (A028310 n).toNat

end

end A080572.P8137143480693309159

noncomputable section

/-- A080572: Number of ordered pairs (i,j), 0 <= i,j < n, for which (i & j) is nonzero, where & is the bitwise AND operator.

Offset 0, canonical program `A080572.P8137143480693309159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080572 (n : ℕ) : ℤ :=
  A080572.P8137143480693309159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080755.P1852667068486394824

`A003152(n+1)+1`
-/

namespace A080755.P1852667068486394824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + 1

end

end A080755.P1852667068486394824

noncomputable section

/-- A080755: a(n) = ceiling(n*(1+1/sqrt(2))).

Offset 1, canonical program `A080755.P1852667068486394824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080755 (n : ℕ) : ℤ :=
  A080755.P1852667068486394824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080756.P4272015836434097147

`A013929(n+2)`
-/

namespace A080756.P4272015836434097147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2)

end

end A080756.P4272015836434097147

noncomputable section

/-- A080756: Numbers k such that there are infinitely many multiples of k that have exactly k divisors.

Offset 1, canonical program `A080756.P4272015836434097147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080756 (n : ℕ) : ℤ :=
  A080756.P4272015836434097147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080756.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080819.P11745362079045349736

`A080817(n+1)+∑[n]`
-/

namespace A080819.P11745362079045349736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080817 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080819.P11745362079045349736

noncomputable section

/-- A080819: Row sums from triangle in A080818.

Offset 1, canonical program `A080819.P11745362079045349736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080819 (n : ℕ) : ℤ :=
  A080819.P11745362079045349736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080846.P6350490556575780844

`(A062756(n)-A062756(n+1)+1)/2`
-/

namespace A080846.P6350490556575780844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062756 n - A062756 (n + 1) + 1 : ℚ) / 2

end

end A080846.P6350490556575780844

noncomputable section

/-- A080846: Fixed point of the morphism 0->010, 1->011, starting from a(1) = 0.

Offset 1, canonical program `A080846.P6350490556575780844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080846 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080846.P6350490556575780844.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080849.P14518128900101485434

`(n+1)*A080848(n+1)`
-/

namespace A080849.P14518128900101485434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080848 (n + 1)

end

end A080849.P14518128900101485434

noncomputable section

/-- A080849: a(n) = (mu(n)+2)*n^2, where mu is the Moebius function (A008683).

Offset 1, canonical program `A080849.P14518128900101485434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080849 (n : ℕ) : ℤ :=
  A080849.P14518128900101485434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080849.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A081243.P8816106567389271415

`(A039701(n+1)+n)%10`
-/

namespace A081243.P8816106567389271415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039701 (n + 1) + (n : ℤ)) 10

end

end A081243.P8816106567389271415

noncomputable section

/-- A081243: a(n) = Mod[n+(Mod[Prime[n],3]-1),10].

Offset 1, canonical program `A081243.P8816106567389271415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081243 (n : ℕ) : ℤ :=
  A081243.P8816106567389271415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081283.P5094034475194814324

`∑[C(A052938(n), 3)]`
-/

namespace A081283.P5094034475194814324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052938 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081283.P5094034475194814324

noncomputable section

/-- A081283: An interleaved sequence of pyramidal and polygonal numbers.

Offset 0, canonical program `A081283.P5094034475194814324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081283 (n : ℕ) : ℤ :=
  (A081283.P5094034475194814324.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081283.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A081325.P13882741182874275986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081325 (n : ℕ) : ℤ :=
  A081325.P13882741182874275986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081325.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A081603.P9418366050176887204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081603.P9418366050176887204.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081668.P14726056176343545514

`A000984(gcd(ceil(n²/2), ∑[n]))`
-/

namespace A081668.P14726056176343545514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (Int.gcd ⌈(n ^ 2 : ℚ) / 2⌉ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A081668.P14726056176343545514

noncomputable section

/-- A081668: Expansion of 2*sinh(x) + BesselI_0(2*x).

Offset 0, canonical program `A081668.P14726056176343545514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A081668 (n : ℕ) : ℤ :=
  A081668.P14726056176343545514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A081668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081672.P4891467764290445925

`A027306(n)*A036453(n+1)`
-/

namespace A081672.P4891467764290445925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n * A036453 (n + 1)

end

end A081672.P4891467764290445925

noncomputable section

/-- A081672: Expansion of exp(2x) - exp(0) + BesselI_0(2x).

Offset 0, canonical program `A081672.P4891467764290445925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081672 (n : ℕ) : ℤ :=
  A081672.P4891467764290445925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A081672.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082455.P9214368242063056493

`A001043(n-1)-a(n-1)` with `a(0)=0, a(1)=4`
-/

namespace A082455.P9214368242063056493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A001043 (n - 1) - a (n - 1)

end

end A082455.P9214368242063056493

noncomputable section

/-- A082455: a(n) = prime(n) + prime(n-1) - a(n-1), a(0) = 0, a(1) = 4.

Offset 0, canonical program `A082455.P9214368242063056493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082455 (n : ℕ) : ℤ :=
  A082455.P9214368242063056493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082490.P9409370150549159754

`A053735(n)+1-A089643(n+1)`
-/

namespace A082490.P9409370150549159754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + (1 - A089643 (n + 1))

end

end A082490.P9409370150549159754

noncomputable section

/-- A082490: Exponent of highest power of 3 dividing sum(0<=k

Offset 1, canonical program `A082490.P9409370150549159754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082490 (n : ℕ) : ℤ :=
  A082490.P9409370150549159754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082590.P7174176292408782637

`A000984(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A082590.P7174176292408782637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n + 2 * a (n - 1)

end

end A082590.P7174176292408782637

noncomputable section

/-- A082590: Expansion of 1/((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A082590.P7174176292408782637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A082590 (n : ℕ) : ℤ :=
  A082590.P7174176292408782637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A082590.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082893.P13321753030369998466

`(n+1)*A079416(n+1)`
-/

namespace A082893.P13321753030369998466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079416 (n + 1)

end

end A082893.P13321753030369998466

noncomputable section

/-- A082893: a(n) is the closest number to n-th prime which is divisible by n.

Offset 1, canonical program `A082893.P13321753030369998466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082893 (n : ℕ) : ℤ :=
  A082893.P13321753030369998466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082910.P4243695041780174975

`A000040(A046933(n+1)+1)`
-/

namespace A082910.P4243695041780174975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046933 (n + 1) + 1).toNat

end

end A082910.P4243695041780174975

noncomputable section

/-- A082910: a(n) = prime(prime(n+1)-prime(n)).

Offset 1, canonical program `A082910.P4243695041780174975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082910 (n : ℕ) : ℤ :=
  A082910.P4243695041780174975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082934.P14654643793815549063

`∑[A082928(n+1)]`
-/

namespace A082934.P14654643793815549063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082934.P14654643793815549063

noncomputable section

/-- A082934: A082928(1) + A082928(2) + ... + A082928(n).

Offset 1, canonical program `A082934.P14654643793815549063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082934 (n : ℕ) : ℤ :=
  A082934.P14654643793815549063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082934.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083035.P4942643437202686780

`(A001951(n+1)%2)²`
-/

namespace A083035.P4942643437202686780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001951 (n + 1)) 2 ^ 2

end

end A083035.P4942643437202686780

noncomputable section

/-- A083035: a(n) = floor(sqrt(2)*n)-2*floor(n/sqrt(2)).

Offset 1, canonical program `A083035.P4942643437202686780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083035 (n : ℕ) : ℤ :=
  A083035.P4942643437202686780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083035.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083054.P10477201268647043477

`dr(A022838(n+1)%3)`
-/

namespace A083054.P10477201268647043477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A022838 (n + 1)) 3)

end

end A083054.P10477201268647043477

noncomputable section

/-- A083054: a(n) = floor(sqrt(3)*n) - 3*floor(n/sqrt(3)).

Offset 1, canonical program `A083054.P10477201268647043477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083054 (n : ℕ) : ℤ :=
  (A083054.P10477201268647043477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083093.P4498086184718364537

`C(A003056(n), A004736(n+1)-1)%3`
-/

namespace A083093.P4498086184718364537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat % 3

end

end A083093.P4498086184718364537

noncomputable section

/-- A083093: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 3.

Offset 0, canonical program `A083093.P4498086184718364537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083093 (n : ℕ) : ℤ :=
  (A083093.P4498086184718364537.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083093.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083590.P2381133215379256419

`5*a(n-1)-(A011558(n)-1)` with `a(0)=1`
-/

namespace A083590.P2381133215379256419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (A011558 n - 1)

end

end A083590.P2381133215379256419

noncomputable section

/-- A083590: Expansion of 1/((1-5*x)*(1-x^5)).

Offset 0, canonical program `A083590.P2381133215379256419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A083590 (n : ℕ) : ℤ :=
  A083590.P2381133215379256419.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A083590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083657.P12921516313600058634

`∑[floor(sqrt(3)*A022838(n+1))]`
-/

namespace A083657.P12921516313600058634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 : ℝ) * (A022838 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083657.P12921516313600058634

noncomputable section

/-- A083657: a(n) = Sum_{i=1..n} floor(r*floor(r*i)) where r=sqrt(3).

Offset 1, canonical program `A083657.P12921516313600058634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083657 (n : ℕ) : ℤ :=
  A083657.P12921516313600058634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083657.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083723.P9061245623782406324

`A033286(n+1)+n`
-/

namespace A083723.P9061245623782406324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + (n : ℤ)

end

end A083723.P9061245623782406324

noncomputable section

/-- A083723: a(n) = (prime(n)+1)*n - 1.

Offset 1, canonical program `A083723.P9061245623782406324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083723 (n : ℕ) : ℤ :=
  A083723.P9061245623782406324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083723.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084021.P10020689395487424378

`n*A061601(n)`
-/

namespace A084021.P10020689395487424378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061601 n

end

end A084021.P10020689395487424378

noncomputable section

/-- A084021: Product of n and its 9's complement.

Offset 0, canonical program `A084021.P10020689395487424378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084021 (n : ℕ) : ℤ :=
  A084021.P10020689395487424378.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084021.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A084245.P17616269984016597429

`(A039705(n+1)+n-2)%10`
-/

namespace A084245.P17616269984016597429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039705 (n + 1) + ((n : ℤ) - 2)) 10

end

end A084245.P17616269984016597429

noncomputable section

/-- A084245: a(n) = (n + (prime(n) mod 7) - 3) mod 10.

Offset 1, canonical program `A084245.P17616269984016597429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084245 (n : ℕ) : ℤ :=
  A084245.P17616269984016597429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084309.P120448286094662423

`gcd(n+1, A006093(n+1))`
-/

namespace A084309.P120448286094662423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A006093 (n + 1))

end

end A084309.P120448286094662423

noncomputable section

/-- A084309: a(n) = gcd(prime(n)-1, n).

Offset 1, canonical program `A084309.P120448286094662423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084309 (n : ℕ) : ℤ :=
  (A084309.P120448286094662423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084310.P10795840808603017870

`gcd(n+1, A008864(n+1))`
-/

namespace A084310.P10795840808603017870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008864 (n + 1))

end

end A084310.P10795840808603017870

noncomputable section

/-- A084310: a(n) = gcd(prime(n)+1, n).

Offset 1, canonical program `A084310.P10795840808603017870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084310 (n : ℕ) : ℤ :=
  (A084310.P10795840808603017870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084311.P15453012267840506494

`gcd(n, A006093(n+1))`
-/

namespace A084311.P15453012267840506494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A006093 (n + 1))

end

end A084311.P15453012267840506494

noncomputable section

/-- A084311: a(n) = gcd(prime(n)-1,n-1).

Offset 1, canonical program `A084311.P15453012267840506494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084311 (n : ℕ) : ℤ :=
  (A084311.P15453012267840506494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084320.P12816708071823719032

`abs(Δ[A067850(n+1)])`
-/

namespace A084320.P12816708071823719032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084320.P12816708071823719032

noncomputable section

/-- A084320: Number of powers of two between 2 consecutive factorials (2! including).

Offset 1, canonical program `A084320.P12816708071823719032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A084320 (n : ℕ) : ℤ :=
  A084320.P12816708071823719032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A084320.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084439.P16361707424774785906

`∑[∑[A051263(n)]]`
-/

namespace A084439.P16361707424774785906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P16361707424774785906

noncomputable section

/-- A084439: Number of triangular partitions of n of order 3.

Offset 0, canonical program `A084439.P16361707424774785906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084439 (n : ℕ) : ℤ :=
  A084439.P16361707424774785906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084920.P18008529996685256336

`A001248(n+1)-1`
-/

namespace A084920.P18008529996685256336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - 1

end

end A084920.P18008529996685256336

noncomputable section

/-- A084920: a(n) = (prime(n)-1)*(prime(n)+1).

Offset 1, canonical program `A084920.P18008529996685256336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084920 (n : ℕ) : ℤ :=
  A084920.P18008529996685256336.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084920.provenance : SequenceMachineLib.Provenance := .conditional

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
-/

namespace A085004.P6951409150480316668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085003 (n + 1) - (n + 1 : ℤ)

end

end A085004.P6951409150480316668

noncomputable section

/-- A085004: a(n)=2*A085003(n)-n.

Offset 1, canonical program `A085004.P6951409150480316668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085004 (n : ℕ) : ℤ :=
  A085004.P6951409150480316668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085369.P6925270450057404638

`char[A006594(n+1)-1]`
-/

namespace A085369.P6925270450057404638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085369.P6925270450057404638

noncomputable section

/-- A085369: Cutting sequence for 1/e.

Offset 1, canonical program `A085369.P6925270450057404638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085369 (n : ℕ) : ℤ :=
  (A085369.P6925270450057404638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085375.P9631747596755942239

`∑[∑[∑[n+1]]]*A001700(n)`
-/

namespace A085375.P9631747596755942239
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001700 n

end

end A085375.P9631747596755942239

noncomputable section

/-- A085375: a(n) = binomial(2*n+1, n+1)*binomial(n+4, 4).

Offset 0, canonical program `A085375.P9631747596755942239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A085375 (n : ℕ) : ℤ :=
  A085375.P9631747596755942239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A085375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085425.P14460580140874115341

`A000120(and(n, -3*(n+1)))`
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

/-! ## A086148.P694323764726545804

`A057660(n+1)+2*(n+1)`
-/

namespace A086148.P694323764726545804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (n + 1) + (2 * (n + 1) : ℤ)

end

end A086148.P694323764726545804

noncomputable section

/-- A086148: Sum of the orders of the elements in the dihedral group D_2n.

Offset 1, canonical program `A086148.P694323764726545804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086148 (n : ℕ) : ℤ :=
  A086148.P694323764726545804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086148.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A086355.P16316922587585958246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A051802, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086355 (n : ℕ) : ℤ :=
  A086355.P16316922587585958246.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A051802, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A086645.P14421537294405242217

`A034870(A133280(n))`
-/

namespace A086645.P14421537294405242217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (A133280 n).toNat

end

end A086645.P14421537294405242217

noncomputable section

/-- A086645: Triangle read by rows: T(n, k) = binomial(2n, 2k).

Offset 0, canonical program `A086645.P14421537294405242217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086645 (n : ℕ) : ℤ :=
  A086645.P14421537294405242217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086645.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087055.P11753191063941057208

`A001951(n+1)^2`
-/

namespace A087055.P11753191063941057208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) ^ 2

end

end A087055.P11753191063941057208

noncomputable section

/-- A087055: Largest square number less than 2*n^2.

Offset 1, canonical program `A087055.P11753191063941057208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087055 (n : ℕ) : ℤ :=
  A087055.P11753191063941057208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087056.P15312449607368249557

`∑[4*n+2-Δ[A001951(n)²]]`
-/

namespace A087056.P15312449607368249557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087056.P15312449607368249557

noncomputable section

/-- A087056: Difference between 2 * n^2 and the next smaller square number.

Offset 1, canonical program `A087056.P15312449607368249557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087056 (n : ℕ) : ℤ :=
  A087056.P15312449607368249557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087057.P15245915971916992939

`1+A001951(n+1)`
-/

namespace A087057.P15245915971916992939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001951 (n + 1)

end

end A087057.P15245915971916992939

noncomputable section

/-- A087057: Smallest number whose square is larger than 2*n^2.

Offset 1, canonical program `A087057.P15245915971916992939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087057 (n : ℕ) : ℤ :=
  A087057.P15245915971916992939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087057.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087611.P1857912676068431036

`A006093(n+1)%(n+1)`
-/

namespace A087611.P1857912676068431036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) (n + 1 : ℤ)

end

end A087611.P1857912676068431036

noncomputable section

/-- A087611: a(n) = (prime(n) - 1) mod n.

Offset 1, canonical program `A087611.P1857912676068431036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087611 (n : ℕ) : ℤ :=
  A087611.P1857912676068431036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087611.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087866.P558709570200697978

`∑[(-1)^n*A008651(n)]`
-/

namespace A087866.P558709570200697978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087866.P558709570200697978

noncomputable section

/-- A087866: Composition length of the n-th symmetric power of the natural representation of a finite subgroup of SL(2,C) of type E_8 (binary icosahedral group).

Offset 0, canonical program `A087866.P558709570200697978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087866 (n : ℕ) : ℤ :=
  A087866.P558709570200697978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087866.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087953.P5725183188863200356

`or(1, A108479(n))`
-/

namespace A087953.P5725183188863200356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108479 n)

end

end A087953.P5725183188863200356

noncomputable section

/-- A087953: a(n) = floor((Fibonacci(2*n+1)+1)/2).

Offset 0, canonical program `A087953.P5725183188863200356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A087953 (n : ℕ) : ℤ :=
  A087953.P5725183188863200356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A087953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087963.P17452282145644083475

`val(A001748(n+1)+1, 2)`
-/

namespace A087963.P17452282145644083475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001748 (n + 1) + 1).toNat 2

end

end A087963.P17452282145644083475

noncomputable section

/-- A087963: Exponent of highest power of 2 dividing 3*prime(n)+1.

Offset 1, canonical program `A087963.P17452282145644083475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087963 (n : ℕ) : ℤ :=
  (A087963.P17452282145644083475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087963.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A088385.P8087248075102541654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088385 (n : ℕ) : ℤ :=
  A088385.P8087248075102541654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088385.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088521.P4776532595824923607

`(a(n-1)+n+1)%A065091(n)` with `a(0)=1`
-/

namespace A088521.P4776532595824923607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (n + 1 : ℤ)) (A065091 n)

end

end A088521.P4776532595824923607

noncomputable section

/-- A088521: a(1) = 1; for n > 1, a(n) = (a(n-1) + n) mod prime(n).

Offset 1, canonical program `A088521.P4776532595824923607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088521 (n : ℕ) : ℤ :=
  A088521.P4776532595824923607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088680.P17665392602365464268

`Δ[A008347(2*n+1)]`
-/

namespace A088680.P17665392602365464268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088680.P17665392602365464268

noncomputable section

/-- A088680: a(n) = prime(2n+1) - prime(2n).

Offset 1, canonical program `A088680.P17665392602365464268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088680 (n : ℕ) : ℤ :=
  A088680.P17665392602365464268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088680.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A088730.P2735196930794356321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088730 (n : ℕ) : ℤ :=
  A088730.P2735196930794356321.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088730.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088854.P10746783587059510090

`A001700(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A088854.P10746783587059510090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001700 n + 2 * a (n - 1)

end

end A088854.P10746783587059510090

noncomputable section

/-- A088854: a(n) = (2^(n-1))*(Integral_{x=0..1} (1+x^2)^n dx)/(Integral_{x=0..1} (1-x^2)^n dx).

Offset 1, canonical program `A088854.P10746783587059510090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A088854 (n : ℕ) : ℤ :=
  A088854.P10746783587059510090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A088854.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089103.P18032189882898387334

`(A008864(n+1)+n)%10`
-/

namespace A089103.P18032189882898387334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) + (n : ℤ)) 10

end

end A089103.P18032189882898387334

noncomputable section

/-- A089103: a(n) = Mod[n+Prime[n],10].

Offset 1, canonical program `A089103.P18032189882898387334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089103 (n : ℕ) : ℤ :=
  A089103.P18032189882898387334.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089103.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089241.P4698073971912800570

`2*A008864(n+1)`
-/

namespace A089241.P4698073971912800570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008864 (n + 1)

end

end A089241.P4698073971912800570

noncomputable section

/-- A089241: Even numbers k such that k/2 - 1 is prime.

Offset 1, canonical program `A089241.P4698073971912800570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089241 (n : ℕ) : ℤ :=
  A089241.P4698073971912800570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089241.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089812.P10414309515728249856

`A010054(n)*A131713(n)`
-/

namespace A089812.P10414309515728249856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A131713 n

end

end A089812.P10414309515728249856

noncomputable section

/-- A089812: Expansion of Jacobi theta function q^(-1/8) * (theta_2(q^(1/2)) - 3 * theta_2(q^(9/2))) / 2 in powers of q.

Offset 0, canonical program `A089812.P10414309515728249856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089812 (n : ℕ) : ℤ :=
  A089812.P10414309515728249856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089812.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089883.P6139353163934238348

`A000079(n)+2*A186314(n+1)`
-/

namespace A089883.P6139353163934238348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 2 * A186314 (n + 1)

end

end A089883.P6139353163934238348

noncomputable section

/-- A089883: Expansion of (1-4*x+6*x^2-3*x^3)/((1-3*x)*(1-2*x)*(1-3*x+x^2)).

Offset 0, canonical program `A089883.P6139353163934238348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A089883 (n : ℕ) : ℤ :=
  A089883.P6139353163934238348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A089883.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A090492.P6811516297556313725

`∑[A008613(n)]-ceil(n/5)`
-/

namespace A090492.P6811516297556313725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈(n : ℚ) / 5⌉

end

end A090492.P6811516297556313725

noncomputable section

/-- A090492: G.f.: (1+x^10)/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)).

Offset 0, canonical program `A090492.P6811516297556313725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090492 (n : ℕ) : ℤ :=
  A090492.P6811516297556313725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090492.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A047924.P14531844885665270262

`abs(A288709(n+1)-n)`
-/

namespace A047924.P14531844885665270262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288709 (n + 1) - (n : ℤ)|

end

end A047924.P14531844885665270262

noncomputable section

/-- A047924: a(n) = B_{A_n+1}+1, where A_n = floor(n*phi) = A000201(n), B_n = floor(n*phi^2) = A001950(n) and phi is the golden ratio.

Offset 0, canonical program `A047924.P14531844885665270262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924 (n : ℕ) : ℤ :=
  A047924.P14531844885665270262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048448.P11536706727464176124

`A000040(n+1)+∑{p}[A158611(n+1), #]`
-/

namespace A048448.P11536706727464176124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A048448.P11536706727464176124

noncomputable section

/-- A048448: a(n) = prime(n-1) + prime(n+1) (assuming prime(i) = 0 for i < 1).

Offset 0, canonical program `A048448.P11536706727464176124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048448 (n : ℕ) : ℤ :=
  A048448.P11536706727464176124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048719.P18299439018409905840

`3*A048718(n)`
-/

namespace A048719.P18299439018409905840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048718 n

end

end A048719.P18299439018409905840

noncomputable section

/-- A048719: Binary expansion matches ((0)*0011)*(0*).

Offset 0, canonical program `A048719.P18299439018409905840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048719 (n : ℕ) : ℤ :=
  A048719.P18299439018409905840.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048754.P5290523552306248918

`A007956(A048753(n+1))/A032741(A048753(n+1))`
-/

namespace A048754.P5290523552306248918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (A048753 (n + 1)).toNat : ℚ) / (A032741 (A048753 (n + 1)).toNat : ℚ)

end

end A048754.P5290523552306248918

noncomputable section

/-- A048754: Mean integral quotients associated with A048753.

Offset 1, canonical program `A048754.P5290523552306248918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 727 terms. -/
def A048754 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048754.P5290523552306248918.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 727 terms. -/
def A048754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048762.P2021550469671049707

`-(-A048766(n))^3`
-/

namespace A048762.P2021550469671049707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-A048766 n) ^ 3)

end

end A048762.P2021550469671049707

noncomputable section

/-- A048762: Largest cube <= n.

Offset 0, canonical program `A048762.P2021550469671049707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048762 (n : ℕ) : ℤ :=
  A048762.P2021550469671049707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048974.P12620924037349992420

`A065091(n+1)+2`
-/

namespace A048974.P12620924037349992420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 2

end

end A048974.P12620924037349992420

noncomputable section

/-- A048974: Odd numbers that are the sum of 2 primes.

Offset 1, canonical program `A048974.P12620924037349992420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048974 (n : ℕ) : ℤ :=
  A048974.P12620924037349992420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049016.P1476951195897416613

`2^(n+3)-A129929(n+3)`
-/

namespace A049016.P1476951195897416613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A129929 (n + 3)

end

end A049016.P1476951195897416613

noncomputable section

/-- A049016: Expansion of 1/((1-x)^5 - x^5).

Offset 0, canonical program `A049016.P1476951195897416613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A049016 (n : ℕ) : ℤ :=
  A049016.P1476951195897416613.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A049016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049491.P3427742740246822641

`p?[A065091(n+2)-A171442(n)]`
-/

namespace A049491.P3427742740246822641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A171442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049491.P3427742740246822641

noncomputable section

/-- A049491: Numbers k such that k and k+128 are both prime.

Offset 1, canonical program `A049491.P3427742740246822641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A049491 (n : ℕ) : ℤ :=
  A049491.P3427742740246822641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A049491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049573.P10186833783548255734

`A158611(A086858(n+5)+n+1)`
-/

namespace A049573.P10186833783548255734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A086858 (n + 5) + (n + 1 : ℤ)).toNat

end

end A049573.P10186833783548255734

noncomputable section

/-- A049573: Primes p such that x^41 = 2 has a solution mod p.

Offset 1, canonical program `A049573.P10186833783548255734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A049573 (n : ℕ) : ℤ :=
  A049573.P10186833783548255734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A049573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049613.P12836057809797850117

`A175851(2*(n+2))+1`
-/

namespace A049613.P12836057809797850117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * (n + 2)) + 1

end

end A049613.P12836057809797850117

noncomputable section

/-- A049613: a(n) = 2n - (largest prime < 2n-2).

Offset 3, canonical program `A049613.P12836057809797850117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049613 (n : ℕ) : ℤ :=
  A049613.P12836057809797850117.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049642.P13855088796741878616

`eq[0, A245656(n+1)]+1`
-/

namespace A049642.P13855088796741878616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049642.P13855088796741878616

noncomputable section

/-- A049642: Numbers k such that the number of divisors of k does not divide the sum of divisors of k.

Offset 1, canonical program `A049642.P13855088796741878616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3690 terms. -/
def A049642 (n : ℕ) : ℤ :=
  (A049642.P13855088796741878616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3690 terms. -/
def A049642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049671.P13365479765326664954

`A049672(n)+A000045(n)`
-/

namespace A049671.P13365479765326664954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049672 n + A000045 n

end

end A049671.P13365479765326664954

noncomputable section

/-- A049671: a(n) = (F(n) + F(4*n))/2, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049671.P13365479765326664954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A049671 (n : ℕ) : ℤ :=
  A049671.P13365479765326664954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A049671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049705.P11002765941806409636

`3-A000002(n+1)`
-/

namespace A049705.P11002765941806409636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000002 (n + 1)

end

end A049705.P11002765941806409636

noncomputable section

/-- A049705: a(n)=3-k(n), where k=A000002=Kolakoski sequence; also the sequence of runlengths of a is k.

Offset 1, canonical program `A049705.P11002765941806409636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049705 (n : ℕ) : ℤ :=
  A049705.P11002765941806409636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049711.P91442417134173634

`A175851(n+2)`
-/

namespace A049711.P91442417134173634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2)

end

end A049711.P91442417134173634

noncomputable section

/-- A049711: a(n) = n - prevprime(n).

Offset 3, canonical program `A049711.P91442417134173634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049711 (n : ℕ) : ℤ :=
  A049711.P91442417134173634.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049798.P9252601489208202656

`∑[round(n/2)-A296955(n+2)]`
-/

namespace A049798.P9252601489208202656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) - A296955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049798.P9252601489208202656

noncomputable section

/-- A049798: a(n) = (1/2)*Sum_{k = 1..n} T(n,k), array T as in A049800.

Offset 1, canonical program `A049798.P9252601489208202656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049798 (n : ℕ) : ℤ :=
  A049798.P9252601489208202656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049798.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050450.P4021675749699126775

`A050999(n+1)-A050453(n+1)`
-/

namespace A050450.P4021675749699126775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) - A050453 (n + 1)

end

end A050450.P4021675749699126775

noncomputable section

/-- A050450: a(n) = Sum_{d|n, d=1 mod 4} d^2.

Offset 1, canonical program `A050450.P4021675749699126775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050450 (n : ℕ) : ℤ :=
  A050450.P4021675749699126775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050451.P9220370011251437069

`A051000(n+1)-A050454(n+1)`
-/

namespace A050451.P9220370011251437069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) - A050454 (n + 1)

end

end A050451.P9220370011251437069

noncomputable section

/-- A050451: a(n) = Sum_{d|n, d=1 mod 4} d^3.

Offset 1, canonical program `A050451.P9220370011251437069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050451 (n : ℕ) : ℤ :=
  A050451.P9220370011251437069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050468.P11011477730524257504

`∑{d}[n+1, A002654(#)*A059377((n+1)/#)]`
-/

namespace A050468.P11011477730524257504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050468.P11011477730524257504

noncomputable section

/-- A050468: a(n) = Sum_{d|n, n/d=1 mod 4} d^4 - Sum_{d|n, n/d=3 mod 4} d^4.

Offset 1, canonical program `A050468.P11011477730524257504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050468 (n : ℕ) : ℤ :=
  A050468.P11011477730524257504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050757.P7573437770462827406

`p?[A043096(n+1)]`
-/

namespace A050757.P7573437770462827406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050757.P7573437770462827406

noncomputable section

/-- A050757: Primes containing no pair of consecutive equal digits.

Offset 1, canonical program `A050757.P7573437770462827406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1165 terms. -/
def A050757 (n : ℕ) : ℤ :=
  A050757.P7573437770462827406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1165 terms. -/
def A050757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051348.P7480873453457337069

`A000045(n+1)/A113176(n+1)`
-/

namespace A051348.P7480873453457337069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A113176 (n + 1) : ℚ)

end

end A051348.P7480873453457337069

noncomputable section

/-- A051348: a(n) = F(n) / Product_{p|n} F(p), where F(k) is k-th Fibonacci number and the p's in product are the distinct primes dividing n.

Offset 1, canonical program `A051348.P7480873453457337069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A051348 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051348.P7480873453457337069.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A051348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051361.P4102761191167575367

`A052387(n)-A256857(n)`
-/

namespace A051361.P4102761191167575367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052387 n - A256857 n

end

end A051361.P4102761191167575367

noncomputable section

/-- A051361: A class of Boolean functions of n variables and rank 3.

Offset 0, canonical program `A051361.P4102761191167575367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051361 (n : ℕ) : ℤ :=
  A051361.P4102761191167575367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051544.P7367698364482970171

`A099634(A165355(n+1))`
-/

namespace A051544.P7367698364482970171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099634 (A165355 (n + 1)).toNat

end

end A051544.P7367698364482970171

noncomputable section

/-- A051544: Quotients of consecutive values of lcm {1, 4, 7, 10, 13 ...,(3n+1)} (A016777).

Offset 1, canonical program `A051544.P7367698364482970171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A051544 (n : ℕ) : ℤ :=
  A051544.P7367698364482970171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A051544.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A052413.P9361150373408811121

`comp[A011535(n+1)]`
-/

namespace A052413.P9361150373408811121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052413.P9361150373408811121

noncomputable section

/-- A052413: Numbers without 5 as a digit.

Offset 1, canonical program `A052413.P9361150373408811121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052413 (n : ℕ) : ℤ :=
  (A052413.P9361150373408811121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052414.P5436341790358726284

`comp[A011536(n+1)]`
-/

namespace A052414.P5436341790358726284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052414.P5436341790358726284

noncomputable section

/-- A052414: Numbers without 6 as a digit.

Offset 1, canonical program `A052414.P5436341790358726284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052414 (n : ℕ) : ℤ :=
  (A052414.P5436341790358726284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052419.P1356006972829932329

`comp[A011537(n+1)]`
-/

namespace A052419.P1356006972829932329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052419.P1356006972829932329

noncomputable section

/-- A052419: Numbers without 7 as a digit.

Offset 1, canonical program `A052419.P1356006972829932329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052419 (n : ℕ) : ℤ :=
  (A052419.P1356006972829932329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052421.P4187799602558401077

`comp[A011538(n+1)]`
-/

namespace A052421.P4187799602558401077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052421.P4187799602558401077

noncomputable section

/-- A052421: Numbers without 8 as a digit.

Offset 1, canonical program `A052421.P4187799602558401077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052421 (n : ℕ) : ℤ :=
  (A052421.P4187799602558401077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052511.P13128566240351970714

`A040976(n+1)-A077597(n)`
-/

namespace A052511.P13128566240351970714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A077597 n

end

end A052511.P13128566240351970714

noncomputable section

/-- A052511: a(n) = prime(n) - 1 - A006218(n).

Offset 1, canonical program `A052511.P13128566240351970714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052511 (n : ℕ) : ℤ :=
  A052511.P13128566240351970714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052701.P6192577118575342611

`floor(A115125(n)/2)`
-/

namespace A052701.P6192577118575342611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115125 n : ℚ) / 2⌋

end

end A052701.P6192577118575342611

noncomputable section

/-- A052701: a(0) = 0; for n >= 1, a(n) = 2^(n-1)*C(n-1), where C(n) = A000108(n) Catalan numbers, n>0.

Offset 0, canonical program `A052701.P6192577118575342611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A052701 (n : ℕ) : ℤ :=
  A052701.P6192577118575342611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A052701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053000.P7278427673394138104

`A013632(n²)`
-/

namespace A053000.P7278427673394138104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n ^ 2)

end

end A053000.P7278427673394138104

noncomputable section

/-- A053000: a(n) = (smallest prime > n^2) - n^2.

Offset 0, canonical program `A053000.P7278427673394138104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053000 (n : ℕ) : ℤ :=
  A053000.P7278427673394138104.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053044.P12715760243015014670

`A060606(n)-A004526(n)`
-/

namespace A053044.P12715760243015014670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060606 n - A004526 n

end

end A053044.P12715760243015014670

noncomputable section

/-- A053044: a(n) is the number of iterations of the Euler totient function to reach 1, starting at n!.

Offset 1, canonical program `A053044.P12715760243015014670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053044 (n : ℕ) : ℤ :=
  A053044.P12715760243015014670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053165.P14012928255864923022

`∑{d}[n+1, A219009(#)*A385006((n+1)/#)]`
-/

namespace A053165.P14012928255864923022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A385006 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053165.P14012928255864923022

noncomputable section

/-- A053165: 4th-power-free part of n.

Offset 1, canonical program `A053165.P14012928255864923022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053165 (n : ℕ) : ℤ :=
  A053165.P14012928255864923022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053196.P8133929664765102711

`A176095(n+1)+1+n`
-/

namespace A053196.P8133929664765102711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1) + 1 + (n : ℤ)

end

end A053196.P8133929664765102711

noncomputable section

/-- A053196: Cototients of even numbers.

Offset 1, canonical program `A053196.P8133929664765102711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053196 (n : ℕ) : ℤ :=
  A053196.P8133929664765102711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053226.P231918640518342816

`A053238(n)+a(n-1)` with `a(0)=4`
-/

namespace A053226.P231918640518342816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A053238 n + a (n - 1)

end

end A053226.P231918640518342816

noncomputable section

/-- A053226: Numbers k for which sigma(k) > sigma(k+1).

Offset 1, canonical program `A053226.P231918640518342816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053226 (n : ℕ) : ℤ :=
  A053226.P231918640518342816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053470.P13253634805606382182

`∑{d}[∑{d}[n+1, A062790(#)], A062790(#)]`
-/

namespace A053470.P13253634805606382182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A062790 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A053470.P13253634805606382182

noncomputable section

/-- A053470: a(n) is the cototient of n (A051953) iterated twice.

Offset 1, canonical program `A053470.P13253634805606382182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053470 (n : ℕ) : ℤ :=
  A053470.P13253634805606382182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053667.P8788573721861177498

`A007954(n²)`
-/

namespace A053667.P8788573721861177498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n ^ 2)

end

end A053667.P8788573721861177498

noncomputable section

/-- A053667: Product of digits of n^2.

Offset 0, canonical program `A053667.P8788573721861177498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053667 (n : ℕ) : ℤ :=
  A053667.P8788573721861177498.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053668.P4825794436022991672

`A007954(n^3)`
-/

namespace A053668.P4825794436022991672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n ^ 3)

end

end A053668.P4825794436022991672

noncomputable section

/-- A053668: Product of digits of n^3.

Offset 0, canonical program `A053668.P4825794436022991672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053668 (n : ℕ) : ℤ :=
  A053668.P4825794436022991672.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053782.P10640351916810255333

`eq[C(2, n+2), char[A013919(n+1)]]`
-/

namespace A053782.P10640351916810255333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013919 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053782.P10640351916810255333

noncomputable section

/-- A053782: Numbers k such that the sum of the first k composite numbers is prime.

Offset 1, canonical program `A053782.P10640351916810255333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A053782 (n : ℕ) : ℤ :=
  (A053782.P10640351916810255333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A053782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053864.P17726123655565789623

`∏{d}[n+1, A189021(#)]`
-/

namespace A053864.P17726123655565789623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A189021 d

end

end A053864.P17726123655565789623

noncomputable section

/-- A053864: A second-order generalization of the Mobius function of n.

Offset 1, canonical program `A053864.P17726123655565789623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053864 (n : ℕ) : ℤ :=
  A053864.P17726123655565789623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053866.P7754923131584660837

`A063524(A286357(n+1))`
-/

namespace A053866.P7754923131584660837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A286357 (n + 1)).toNat

end

end A053866.P7754923131584660837

noncomputable section

/-- A053866: Parity of A000203(n), the sum of the divisors of n; a(n) = 1 when n is a square or twice a square, 0 otherwise.

Offset 1, canonical program `A053866.P7754923131584660837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286357, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053866 (n : ℕ) : ℤ :=
  A053866.P7754923131584660837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286357, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054015.P3785762614888052805

`A048050(n+1)%A325765(n)`
-/

namespace A054015.P3785762614888052805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (n + 1)) (A325765 n)

end

end A054015.P3785762614888052805

noncomputable section

/-- A054015: a(n) is Chowla function of n read modulo (number of proper divisors of n), a(1) = 0 by convention.

Offset 1, canonical program `A054015.P3785762614888052805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054015 (n : ℕ) : ℤ :=
  A054015.P3785762614888052805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054015.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054056.P7272504195874728976

`A054795(n+1)+6`
-/

namespace A054056.P7272504195874728976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054795 (n + 1) + 6

end

end A054056.P7272504195874728976

noncomputable section

/-- A054056: Numbers of form 29+n^2+n or 29+2*n^2.

Offset 1, canonical program `A054056.P7272504195874728976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054056 (n : ℕ) : ℤ :=
  A054056.P7272504195874728976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054121.P15490617491472344944

`A172229(n+1)+A140091(n)+A028310(n)`
-/

namespace A054121.P15490617491472344944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172229 (n + 1) + (A140091 n + A028310 n)

end

end A054121.P15490617491472344944

noncomputable section

/-- A054121: T(n,n-3), array T as in A054120.

Offset 3, canonical program `A054121.P15490617491472344944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054121 (n : ℕ) : ℤ :=
  A054121.P15490617491472344944.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054354.P7688672416916511946

`Δ[A000002(n+1)]`
-/

namespace A054354.P7688672416916511946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054354.P7688672416916511946

noncomputable section

/-- A054354: First differences of Kolakoski sequence A000002.

Offset 1, canonical program `A054354.P7688672416916511946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054354 (n : ℕ) : ℤ :=
  A054354.P7688672416916511946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054585.P5592267134017480872

`∑[∑{d}[n, A341635(#)]]`
-/

namespace A054585.P5592267134017480872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A341635 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054585.P5592267134017480872

noncomputable section

/-- A054585: Sum_{d=1..n} phi(d)*mu(d).

Offset 0, canonical program `A054585.P5592267134017480872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054585 (n : ℕ) : ℤ :=
  A054585.P5592267134017480872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055008.P18081575249762395183

`record[(n+1)/A082055(n+1)]`
-/

namespace A055008.P18081575249762395183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082055 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055008.P18081575249762395183

noncomputable section

/-- A055008: Numbers k such that gcd(phi(k), sigma(k)) = 1 with phi = A000010, sigma = A000203.

Offset 1, canonical program `A055008.P18081575249762395183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A055008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055008.P18081575249762395183.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A055008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055025.P1840419419277559172

`∪[A002313(n+1), A087691(n+1)]`
-/

namespace A055025.P1840419419277559172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055025.P1840419419277559172

noncomputable section

/-- A055025: Norms of Gaussian primes.

Offset 1, canonical program `A055025.P1840419419277559172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055025 (n : ℕ) : ℤ :=
  (A055025.P1840419419277559172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055636.P15468858473462785345

`∑[A144494(n+1)]`
-/

namespace A055636.P15468858473462785345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P15468858473462785345

noncomputable section

/-- A055636: Partial sums of A144494.

Offset 1, canonical program `A055636.P15468858473462785345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055636 (n : ℕ) : ℤ :=
  A055636.P15468858473462785345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055684.P17672652822131391042

`A109607(n+3)%(n+2)`
-/

namespace A055684.P17672652822131391042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109607 (n + 3)) (n + 2 : ℤ)

end

end A055684.P17672652822131391042

noncomputable section

/-- A055684: Number of different n-pointed stars.

Offset 3, canonical program `A055684.P17672652822131391042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055684 (n : ℕ) : ℤ :=
  A055684.P17672652822131391042.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055783.P3116272067737530295

`p?[A142342(n+1)+7]`
-/

namespace A055783.P3116272067737530295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P3116272067737530295

noncomputable section

/-- A055783: Primes q of form q=10p+7, where p is also prime.

Offset 1, canonical program `A055783.P3116272067737530295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. -/
def A055783 (n : ℕ) : ℤ :=
  A055783.P3116272067737530295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. -/
def A055783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055881.P16218723346386416985

`∑{d}[n+1, A012245(#)]`
-/

namespace A055881.P16218723346386416985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A012245 d

end

end A055881.P16218723346386416985

noncomputable section

/-- A055881: a(n) = largest m such that m! divides n.

Offset 1, canonical program `A055881.P16218723346386416985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055881 (n : ℕ) : ℤ :=
  A055881.P16218723346386416985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056129.P7754831365557891358

`A065881(a(n-1)*record[∑{p}[n, #]])` with `a(0)=1`
-/

namespace A056129.P7754831365557891358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065881 (a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A056129.P7754831365557891358

noncomputable section

/-- A056129: Final nonzero digit of n-th primorial.

Offset 0, canonical program `A056129.P7754831365557891358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A056129 (n : ℕ) : ℤ :=
  A056129.P7754831365557891358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A056129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056324.P15857874115330470588

`(A056272(n)+A305751(n))/2`
-/

namespace A056324.P15857874115330470588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056272 n + A305751 n : ℚ) / 2

end

end A056324.P15857874115330470588

noncomputable section

/-- A056324: Number of reversible string structures with n beads using a maximum of five different colors.

Offset 0, canonical program `A056324.P15857874115330470588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056324 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056324.P15857874115330470588.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056470.P17206839489425412925

`A056272(∑[char[2*n]])`
-/

namespace A056470.P17206839489425412925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056470.P17206839489425412925

noncomputable section

/-- A056470: Number of palindromic structures using a maximum of five different symbols.

Offset 1, canonical program `A056470.P17206839489425412925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A056470 (n : ℕ) : ℤ :=
  A056470.P17206839489425412925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A056470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056563.P15214927666009346148

`char[A006254(n+1)]+char[A065091(n+1)]`
-/

namespace A056563.P15214927666009346148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A056563.P15214927666009346148

noncomputable section

/-- A056563: Number of primes which are the difference between two triangular numbers, where the larger is the n-th triangular number.

Offset 0, canonical program `A056563.P15214927666009346148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056563 (n : ℕ) : ℤ :=
  (A056563.P15214927666009346148.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056617.P8542448468284843582

`(2*n+1)²/A181861(2*n+1)`
-/

namespace A056617.P8542448468284843582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℚ) / (A181861 (2 * n + 1) : ℚ)

end

end A056617.P8542448468284843582

noncomputable section

/-- A056617: Denominator of binomial(2*n,n) / (2*n+1).

Offset 0, canonical program `A056617.P8542448468284843582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A056617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056617.P8542448468284843582.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A056617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056641.P8807853742238268131

`A305233(abs(1-n)+3)`
-/

namespace A056641.P8807853742238268131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305233 (|1 - (n : ℤ)| + 3).toNat

end

end A056641.P8807853742238268131

noncomputable section

/-- A056641: Least positive integer k for which (b+1)^k is not palindromic in base b, b = 2, 3, 4, ...

Offset 2, canonical program `A056641.P8807853742238268131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A056641 (n : ℕ) : ℤ :=
  A056641.P8807853742238268131.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A056641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056653.P4720559690192011754

`A118742(n)+1`
-/

namespace A056653.P4720559690192011754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n + 1

end

end A056653.P4720559690192011754

noncomputable section

/-- A056653: Composite numbers together with 1 but excluding 4.

Offset 1, canonical program `A056653.P4720559690192011754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056653 (n : ℕ) : ℤ :=
  A056653.P4720559690192011754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056913.P16160792407889327597

`record[A080304(2*n+1)]`
-/

namespace A056913.P16160792407889327597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080304 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056913.P16160792407889327597

noncomputable section

/-- A056913: Odd squarefree numbers for which the number of prime divisors is even.

Offset 1, canonical program `A056913.P16160792407889327597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056913 (n : ℕ) : ℤ :=
  A056913.P16160792407889327597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057050.P6691171465393059928

`∑[A214848(n)]-A057049(n+1)+1`
-/

namespace A057050.P6691171465393059928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057049 (n + 1) + 1

end

end A057050.P6691171465393059928

noncomputable section

/-- A057050: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057050(n)=j(n^2).

Offset 1, canonical program `A057050.P6691171465393059928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057050 (n : ℕ) : ℤ :=
  A057050.P6691171465393059928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057055.P15692761595435333627

`A000292(n+1)-C(A057057(n+3), 2)`
-/

namespace A057055.P15692761595435333627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (Nat.choose (A057057 (n + 3)).toNat 2 : ℤ)

end

end A057055.P15692761595435333627

noncomputable section

/-- A057055: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057055(n)=i(C(n,3)).

Offset 3, canonical program `A057055.P15692761595435333627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057055 (n : ℕ) : ℤ :=
  A057055.P15692761595435333627.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057062.P5166797139403181319

`xor(A063524(n), A123387(n+1))`
-/

namespace A057062.P5166797139403181319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A123387 (n + 1))

end

end A057062.P5166797139403181319

noncomputable section

/-- A057062: Let R(i,j) be the infinite square array with antidiagonals 1; 2,3; 4,5,6; ...; the n-th prime is in antidiagonal a(n).

Offset 1, canonical program `A057062.P5166797139403181319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057062 (n : ℕ) : ℤ :=
  A057062.P5166797139403181319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057104.P15360914800133724793

`comp[A007094(n)]`
-/

namespace A057104.P15360914800133724793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057104.P15360914800133724793

noncomputable section

/-- A057104: The non-octal numbers: numbers containing an 8 or 9 (they cannot be mistaken for octal numbers).

Offset 1, canonical program `A057104.P15360914800133724793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057104 (n : ℕ) : ℤ :=
  (A057104.P15360914800133724793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057215.P5065651634132639339

`A026605(A000027(n+1))-1`
-/

namespace A057215.P5065651634132639339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (A000027 (n + 1)).toNat - 1

end

end A057215.P5065651634132639339

noncomputable section

/-- A057215: [1->01, 2->10, 3->01]-transform of 3-symbol Thue-Morse A026600.

Offset 0, canonical program `A057215.P5065651634132639339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057215 (n : ℕ) : ℤ :=
  A057215.P5065651634132639339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057347.P2290477655800218851

`4*(n+1)-A253671(A103517(n+1))`
-/

namespace A057347.P2290477655800218851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A253671 (A103517 (n + 1)).toNat

end

end A057347.P2290477655800218851

noncomputable section

/-- A057347: Leap years in the Islamic calendar starting year 1 AH (Anno Hegirae) = 622 CE (Common Era or AD). There are 11 leap years in a 30 year cycle.

Offset 1, canonical program `A057347.P2290477655800218851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A057347 (n : ℕ) : ℤ :=
  A057347.P2290477655800218851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A057347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057434.P11510506966022849158

`∑[(n+1-A121048(n+1))²]`
-/

namespace A057434.P11510506966022849158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A121048 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P11510506966022849158

noncomputable section

/-- A057434: a(n) = Sum_{k=1..n} phi(k)^2.

Offset 1, canonical program `A057434.P11510506966022849158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057434 (n : ℕ) : ℤ :=
  A057434.P11510506966022849158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057671.P1334822557928978259

`A068601(n+1)-A228272(n+1)`
-/

namespace A057671.P1334822557928978259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) - A228272 (n + 1)

end

end A057671.P1334822557928978259

noncomputable section

/-- A057671: a(n) equals floor(Vc(n) - Vs(n)), where Vc(n) is the volume of the cube with side length n and Vs(n) is the volume of the sphere of diameter n.

Offset 1, canonical program `A057671.P1334822557928978259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057671 (n : ℕ) : ℤ :=
  A057671.P1334822557928978259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057723.P5095730388445867346

`∑{d}[n+1, #*A397412((n+1)/#)]`
-/

namespace A057723.P5095730388445867346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A397412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057723.P5095730388445867346

noncomputable section

/-- A057723: Sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A057723.P5095730388445867346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057723 (n : ℕ) : ℤ :=
  A057723.P5095730388445867346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057789.P16127120602619535770

`(n+1)*A023896(n+1)-A053818(n+1)`
-/

namespace A057789.P16127120602619535770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023896 (n + 1) - A053818 (n + 1)

end

end A057789.P16127120602619535770

noncomputable section

/-- A057789: a(n) = Sum_{k = 1..n, gcd(k,n)=1} k*(n-k).

Offset 1, canonical program `A057789.P16127120602619535770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057789 (n : ℕ) : ℤ :=
  A057789.P16127120602619535770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057977.P9126153292899327250

`A063549(A028310(n))`
-/

namespace A057977.P9126153292899327250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (A028310 n).toNat

end

end A057977.P9126153292899327250

noncomputable section

/-- A057977: GCD of consecutive central binomial coefficients: a(n) = gcd(A001405(n+1), A001405(n)).

Offset 0, canonical program `A057977.P9126153292899327250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A057977 (n : ℕ) : ℤ :=
  A057977.P9126153292899327250.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A057977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058026.P13354462320521443041

`∏{p}[n+1, #-2]*A003557(n+1)`
-/

namespace A058026.P13354462320521443041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 2)) * A003557 (n + 1)

end

end A058026.P13354462320521443041

noncomputable section

/-- A058026: Number of positive integers, k, where k <= n and gcd(k,n) = gcd(k+1,n) = 1.

Offset 1, canonical program `A058026.P13354462320521443041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058026 (n : ℕ) : ℤ :=
  A058026.P13354462320521443041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058344.P16644811011832697826

`2*A091570(n+1)-A001065(n+1)`
-/

namespace A058344.P16644811011832697826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091570 (n + 1) - A001065 (n + 1)

end

end A058344.P16644811011832697826

noncomputable section

/-- A058344: Difference between the sum of the odd aliquot divisors of n and the sum of the even aliquot divisors of n.

Offset 1, canonical program `A058344.P16644811011832697826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058344 (n : ℕ) : ℤ :=
  A058344.P16644811011832697826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058841.P3157289429620972729

`Δ[eq[1, A058840(n)]]-1`
-/

namespace A058841.P3157289429620972729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A058841.P3157289429620972729

noncomputable section

/-- A058841: From Renyi's "beta expansion of 1 in base 3/2": sequence gives lengths of runs of 0's in A058840.

Offset 0, canonical program `A058841.P3157289429620972729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A058841 (n : ℕ) : ℤ :=
  A058841.P3157289429620972729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A058841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059267.P2704590181977768791

`lt[0, A099475(A028310(n))]`
-/

namespace A059267.P2704590181977768791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059267.P2704590181977768791

noncomputable section

/-- A059267: Numbers n with 2 divisors d1 and d2 having difference 2: d2 - d1 = 2; equivalently, numbers that are 0 (mod 4) or have a divisor d of the form d = m^2 - 1.

Offset 1, canonical program `A059267.P2704590181977768791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5219 terms. -/
def A059267 (n : ℕ) : ℤ :=
  (A059267.P2704590181977768791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5219 terms. -/
def A059267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059389.P7252088712234272494

`A131410(n+1)+a(A083920(n))` with `a(0)=2`
-/

namespace A059389.P7252088712234272494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A131410 (n + 1) + a (A083920 n).toNat

end

end A059389.P7252088712234272494

noncomputable section

/-- A059389: Sums of two nonzero Fibonacci numbers.

Offset 1, canonical program `A059389.P7252088712234272494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059389 (n : ℕ) : ℤ :=
  A059389.P7252088712234272494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059396.P12675156142368146257

`A230980(A104103(n+1)-1)`
-/

namespace A059396.P12675156142368146257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A104103 (n + 1) - 1).toNat

end

end A059396.P12675156142368146257

noncomputable section

/-- A059396: Number of primes less than square root of n-th prime; i.e., number of trial divisions by smaller primes to show that n-th prime is indeed prime.

Offset 1, canonical program `A059396.P12675156142368146257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059396 (n : ℕ) : ℤ :=
  A059396.P12675156142368146257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059558.P6729229487912804406

`2*A138999(A016993(2*n+1))`
-/

namespace A059558.P6729229487912804406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138999 (A016993 (2 * n + 1)).toNat

end

end A059558.P6729229487912804406

noncomputable section

/-- A059558: Beatty sequence for 1 + 1/gamma^2.

Offset 1, canonical program `A059558.P6729229487912804406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A059558 (n : ℕ) : ℤ :=
  A059558.P6729229487912804406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A059558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059602.P13739844539296539363

`∑[A060558(n)]`
-/

namespace A059602.P13739844539296539363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059602.P13739844539296539363

noncomputable section

/-- A059602: Expansion of (5+10*x+x^2)/(1-x)^10.

Offset 0, canonical program `A059602.P13739844539296539363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059602 (n : ℕ) : ℤ :=
  A059602.P13739844539296539363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060278.P961630484478703475

`A206773(n+1)-round(n/(n+1))`
-/

namespace A060278.P961630484478703475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206773 (n + 1) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))

end

end A060278.P961630484478703475

noncomputable section

/-- A060278: Sum of composite divisors of n less than n.

Offset 1, canonical program `A060278.P961630484478703475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060278 (n : ℕ) : ℤ :=
  A060278.P961630484478703475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060594.P18168668668264662551

`A327730(A026741(n+1))`
-/

namespace A060594.P18168668668264662551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327730 (A026741 (n + 1)).toNat

end

end A060594.P18168668668264662551

noncomputable section

/-- A060594: Number of solutions to x^2 == 1 (mod n), that is, square roots of unity modulo n.

Offset 1, canonical program `A060594.P18168668668264662551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060594 (n : ℕ) : ℤ :=
  A060594.P18168668668264662551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060602.P16987508513754279043

`2*A133546(n+2)`
-/

namespace A060602.P16987508513754279043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133546 (n + 2)

end

end A060602.P16987508513754279043

noncomputable section

/-- A060602: Number of tilings of the d-dimensional zonotope constructed from d+3 vectors.

Offset 0, canonical program `A060602.P16987508513754279043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060602 (n : ℕ) : ℤ :=
  A060602.P16987508513754279043.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060602.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A060715.P12348036717669642849

`n-A307912(n+1)`
-/

namespace A060715.P12348036717669642849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A307912 (n + 1)

end

end A060715.P12348036717669642849

noncomputable section

/-- A060715: Number of primes between n and 2n exclusive.

Offset 1, canonical program `A060715.P12348036717669642849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060715 (n : ℕ) : ℤ :=
  A060715.P12348036717669642849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060833.P4612277402793640164

`eq[0, A073089(2*n+1)]+1`
-/

namespace A060833.P4612277402793640164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060833.P4612277402793640164

noncomputable section

/-- A060833: Separate the natural numbers into disjoint sets A, B with 1 in A, such that the sum of any 2 distinct elements of the same set never equals 2^k + 2. Sequence gives elements of set A.

Offset 1, canonical program `A060833.P4612277402793640164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060833 (n : ℕ) : ℤ :=
  (A060833.P4612277402793640164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061023.P5958186205212772420

`abs(A053187(n)-A201053(n))`
-/

namespace A061023.P5958186205212772420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053187 n - A201053 n|

end

end A061023.P5958186205212772420

noncomputable section

/-- A061023: Difference between the closest square and the closest cube to n.

Offset 0, canonical program `A061023.P5958186205212772420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A201053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061023 (n : ℕ) : ℤ :=
  A061023.P5958186205212772420.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A201053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061116.P14055420966358378018

`eq[1, gcd(n, A007954(n))]`
-/

namespace A061116.P14055420966358378018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007954 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061116.P14055420966358378018

noncomputable section

/-- A061116: Numbers coprime to each of their decimal digits.

Offset 1, canonical program `A061116.P14055420966358378018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A061116 (n : ℕ) : ℤ :=
  (A061116.P14055420966358378018.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A061116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061376.P1276602125877968792

`A105221(n+1)+A105221(A028310(A105221(n+1)))`
-/

namespace A061376.P1276602125877968792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 1) + A105221 (A028310 (A105221 (n + 1)).toNat).toNat

end

end A061376.P1276602125877968792

noncomputable section

/-- A061376: a(n) = f(n) + f(f(n)) where f(n) = 0 if n <= 1 or a prime, otherwise f(n) = sum of distinct primes dividing n.

Offset 1, canonical program `A061376.P1276602125877968792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061376 (n : ℕ) : ℤ :=
  A061376.P1276602125877968792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061376.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061446.P13544086601414576898

`∑[A212804(n)]/A105602(n+1)`
-/

namespace A061446.P13544086601414576898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A105602 (n + 1) : ℚ)

end

end A061446.P13544086601414576898

noncomputable section

/-- A061446: Primitive part of Fibonacci(n).

Offset 1, canonical program `A061446.P13544086601414576898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A061446 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061446.P13544086601414576898.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A061446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061468.P9127133299873505687

`2-A045763(n+1)+n`
-/

namespace A061468.P9127133299873505687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A045763 (n + 1) + (n : ℤ)

end

end A061468.P9127133299873505687

noncomputable section

/-- A061468: a(n) = d(n) + phi(n), where d(n) is the number of divisors (A000005) and phi(n) is Euler's totient function (A000010).

Offset 1, canonical program `A061468.P9127133299873505687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061468 (n : ℕ) : ℤ :=
  A061468.P9127133299873505687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061673.P6703242266188128252

`2*lt[3, A175851(2*n+1)]`
-/

namespace A061673.P6703242266188128252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061673.P6703242266188128252

noncomputable section

/-- A061673: Even numbers k such that k+1 and k-1 are both composite.

Offset 1, canonical program `A061673.P6703242266188128252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061673 (n : ℕ) : ℤ :=
  (A061673.P6703242266188128252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061762.P2226516995009236848

`A007953(n)+A007954(n)`
-/

namespace A061762.P2226516995009236848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A007954 n

end

end A061762.P2226516995009236848

noncomputable section

/-- A061762: a(n) = (sum of digits of n) + (product of digits of n).

Offset 0, canonical program `A061762.P2226516995009236848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061762 (n : ℕ) : ℤ :=
  A061762.P2226516995009236848.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061823.P1878343261154301216

`∩[A007094(n), A008589(n)]`
-/

namespace A061823.P1878343261154301216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061823.P1878343261154301216

noncomputable section

/-- A061823: Multiples of 7 containing only digits 0,...,7.

Offset 1, canonical program `A061823.P1878343261154301216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A061823 (n : ℕ) : ℤ :=
  (A061823.P1878343261154301216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A061823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061824.P7099681490639419618

`∩[8*n, A007095(n)]`
-/

namespace A061824.P7099681490639419618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061824.P7099681490639419618

noncomputable section

/-- A061824: Multiples of 8 containing only the digits 0, ..., 8.

Offset 1, canonical program `A061824.P7099681490639419618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A061824 (n : ℕ) : ℤ :=
  (A061824.P7099681490639419618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A061824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061837.P5567670417075928045

`lt[2, A296955(n+2)-2]`
-/

namespace A061837.P5567670417075928045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (n + 2) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061837.P5567670417075928045

noncomputable section

/-- A061837: Numbers k such that (k+2)^2 | k!.

Offset 1, canonical program `A061837.P5567670417075928045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061837 (n : ℕ) : ℤ :=
  (A061837.P5567670417075928045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062007.P13346277135361540036

`(A007423(n+1)-1)*A000040(n+1)`
-/

namespace A062007.P13346277135361540036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A000040 (n + 1)

end

end A062007.P13346277135361540036

noncomputable section

/-- A062007: a(n) = mu(n)*prime(n).

Offset 1, canonical program `A062007.P13346277135361540036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062007 (n : ℕ) : ℤ :=
  A062007.P13346277135361540036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062175.P17672912280071872328

`A062173(n+1)²%(n+1)`
-/

namespace A062175.P17672912280071872328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062173 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A062175.P17672912280071872328

noncomputable section

/-- A062175: a(n) = 4^(n-1) mod n.

Offset 1, canonical program `A062175.P17672912280071872328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062175 (n : ℕ) : ℤ :=
  A062175.P17672912280071872328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062235.P6585490763339673002

`A001248(n+1)-A065091(n+1)`
-/

namespace A062235.P6585490763339673002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A065091 (n + 1)

end

end A062235.P6585490763339673002

noncomputable section

/-- A062235: a(n) = prime(n)^2 - prime(n+1).

Offset 1, canonical program `A062235.P6585490763339673002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A065091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062235 (n : ℕ) : ℤ :=
  A062235.P6585490763339673002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A065091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062378.P530133715863786862

`A003557(A003557(n+1))`
-/

namespace A062378.P530133715863786862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1)).toNat

end

end A062378.P530133715863786862

noncomputable section

/-- A062378: n divided by largest cubefree factor of n.

Offset 1, canonical program `A062378.P530133715863786862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062378 (n : ℕ) : ℤ :=
  A062378.P530133715863786862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062673.P17258762634191360488

`p?[A011536(A110654(A008486(n)))]`
-/

namespace A062673.P17258762634191360488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (A110654 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062673.P17258762634191360488

noncomputable section

/-- A062673: Every divisor (except 1) contains the digit 6.

Offset 1, canonical program `A062673.P17258762634191360488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A062673 (n : ℕ) : ℤ :=
  A062673.P17258762634191360488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A062673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062777.P1088191104467373478

`A048578(n)-A007423(n+1)`
-/

namespace A062777.P1088191104467373478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - A007423 (n + 1)

end

end A062777.P1088191104467373478

noncomputable section

/-- A062777: a(n) = 2^n - mu(n).

Offset 1, canonical program `A062777.P1088191104467373478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A062777 (n : ℕ) : ℤ :=
  A062777.P1088191104467373478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A062777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062778.P15711731261721006587

`∑{d}[n+1, A007427(#)*A062774((n+1)/#)]`
-/

namespace A062778.P15711731261721006587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062778.P15711731261721006587

noncomputable section

/-- A062778: Values of Moebius-transform of PrimePi function.

Offset 1, canonical program `A062778.P15711731261721006587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062778 (n : ℕ) : ℤ :=
  A062778.P15711731261721006587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062791.P796838549966541692

`∑{d}[n+1, A007427(#)*A062798((n+1)/#)]`
-/

namespace A062791.P796838549966541692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062798 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062791.P796838549966541692

noncomputable section

/-- A062791: Moebius transform of A001405 (binomial(n, floor(n/2))).

Offset 1, canonical program `A062791.P796838549966541692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A062791 (n : ℕ) : ℤ :=
  A062791.P796838549966541692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A062791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062846.P15925224058452454034

`record[gcd(n, A000695(n))]`
-/

namespace A062846.P15925224058452454034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000695 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062846.P15925224058452454034

noncomputable section

/-- A062846: When expressed in base 2 and then interpreted in base 4, is a multiple of the original number.

Offset 1, canonical program `A062846.P15925224058452454034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A062846 (n : ℕ) : ℤ :=
  (A062846.P15925224058452454034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A062846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062880.P2055745413581106128

`2*A000695(n)`
-/

namespace A062880.P2055745413581106128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000695 n

end

end A062880.P2055745413581106128

noncomputable section

/-- A062880: Zero together with the numbers which can be written as a sum of distinct odd powers of 2.

Offset 0, canonical program `A062880.P2055745413581106128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062880 (n : ℕ) : ℤ :=
  A062880.P2055745413581106128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062997.P4649149388555751464

`lt[A007954(n), A007953(n)]`
-/

namespace A062997.P4649149388555751464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P4649149388555751464

noncomputable section

/-- A062997: Numbers whose sum of digits is strictly greater than its product of digits.

Offset 1, canonical program `A062997.P4649149388555751464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2716 terms. -/
def A062997 (n : ℕ) : ℤ :=
  (A062997.P4649149388555751464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2716 terms. -/
def A062997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063473.P11387380042524476190

`A181587(Δ[n²])`
-/

namespace A063473.P11387380042524476190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063473.P11387380042524476190

noncomputable section

/-- A063473: a(n) = M(2*n-1), where M(n) is Mertens's function (A002321): Sum_{k=1..n} mu(k), where mu = Moebius function (A008683).

Offset 1, canonical program `A063473.P11387380042524476190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063473 (n : ℕ) : ℤ :=
  A063473.P11387380042524476190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063732.P5437524643798160730

`A249115(n+1)-1`
-/

namespace A063732.P5437524643798160730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1) - 1

end

end A063732.P5437524643798160730

noncomputable section

/-- A063732: Numbers whose Lucas representation excludes L_0 = 2.

Offset 1, canonical program `A063732.P5437524643798160730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063732 (n : ℕ) : ℤ :=
  A063732.P5437524643798160730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063745.P6674532134331063017

`2*A026424(n+1)`
-/

namespace A063745.P6674532134331063017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026424 (n + 1)

end

end A063745.P6674532134331063017

noncomputable section

/-- A063745: Even numbers with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A063745.P6674532134331063017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063745 (n : ℕ) : ℤ :=
  A063745.P6674532134331063017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063955.P15955011138369882518

`A034387(n+1)-A034387(A065033(n))`
-/

namespace A063955.P15955011138369882518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - A034387 (A065033 n).toNat

end

end A063955.P15955011138369882518

noncomputable section

/-- A063955: Sum of the unitary prime divisors of n!.

Offset 1, canonical program `A063955.P15955011138369882518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063955 (n : ℕ) : ℤ :=
  A063955.P15955011138369882518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063959.P710531058493753582

`A034387(A000142(n))`
-/

namespace A063959.P710531058493753582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A000142 n).toNat

end

end A063959.P710531058493753582

noncomputable section

/-- A063959: Sum of the primes from 1 to n!.

Offset 0, canonical program `A063959.P710531058493753582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063959 (n : ℕ) : ℤ :=
  A063959.P710531058493753582.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063960.P16738888457334796570

`A034387(n%∑[and(1, n+1)]+1)`
-/

namespace A063960.P16738888457334796570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n % (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A063960.P16738888457334796570

noncomputable section

/-- A063960: Sum of non-unitary prime divisors of n!: sum of those prime divisors for which the exponent in the prime factorization exceeds 1.

Offset 1, canonical program `A063960.P16738888457334796570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063960 (n : ℕ) : ℤ :=
  A063960.P16738888457334796570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064148.P16794264450961538406

`eq[1, A127440(n+1)+1]+1`
-/

namespace A064148.P16794264450961538406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064148.P16794264450961538406

noncomputable section

/-- A064148: Numbers k such that mu(k) = mu(k+1), where mu is the Möbius function (A008683).

Offset 1, canonical program `A064148.P16794264450961538406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5384 terms. -/
def A064148 (n : ℕ) : ℤ :=
  (A064148.P16794264450961538406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5384 terms. -/
def A064148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064310.P3912504138029418483

`(-1)^n*A126983(n)`
-/

namespace A064310.P3912504138029418483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A126983 n

end

end A064310.P3912504138029418483

noncomputable section

/-- A064310: Generalized Catalan numbers C(-1; n).

Offset 0, canonical program `A064310.P3912504138029418483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A064310 (n : ℕ) : ℤ :=
  A064310.P3912504138029418483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A064310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064368.P11239250656650870174

`ceil(A211422(n)/4+n)`
-/

namespace A064368.P11239250656650870174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211422 n : ℚ) / 4 + (n : ℚ)⌉

end

end A064368.P11239250656650870174

noncomputable section

/-- A064368: Number of 2 X 2 symmetric singular matrices with entries from {0,...,n}.

Offset 0, canonical program `A064368.P11239250656650870174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064368 (n : ℕ) : ℤ :=
  A064368.P11239250656650870174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064466.P13132782915619239599

`∪[or(1, 3*n), A215848(n+1)]+5`
-/

namespace A064466.P13132782915619239599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + 5

end

end A064466.P13132782915619239599

noncomputable section

/-- A064466: a(0) = 6 and a(n) = Min { m > a(n-1) | both a(n-1) - p and m - p are prime for some prime p } for n > 0.

Offset 0, canonical program `A064466.P13132782915619239599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064466 (n : ℕ) : ℤ :=
  (A064466.P13132782915619239599.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064506.P1862004273311560007

`abs(1-A181534(n+1))`
-/

namespace A064506.P1862004273311560007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A181534 (n + 1)|

end

end A064506.P1862004273311560007

noncomputable section

/-- A064506: a(n) = Max { k | k*(k+1)/2 <= n*(n+1)/2 - k*(k+1)/2 }.

Offset 1, canonical program `A064506.P1862004273311560007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064506 (n : ℕ) : ℤ :=
  A064506.P1862004273311560007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064661.P14190754178858780022

`1-A086861(n+1)+n`
-/

namespace A064661.P14190754178858780022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086861 (n + 1) + (n : ℤ)

end

end A064661.P14190754178858780022

noncomputable section

/-- A064661: a(n) = n - floor( prime(n)/log(prime(n)) ).

Offset 1, canonical program `A064661.P14190754178858780022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064661 (n : ℕ) : ℤ :=
  A064661.P14190754178858780022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064717.P13793230735173341254

`comp[A064718(n+1)-1]+1`
-/

namespace A064717.P13793230735173341254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064718 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064717.P13793230735173341254

noncomputable section

/-- A064717: A Beatty sequence for 2^i + 2^(-i) where i = sqrt(-1).

Offset 1, canonical program `A064717.P13793230735173341254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064717 (n : ℕ) : ℤ :=
  (A064717.P13793230735173341254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064722.P17255395012520951887

`A175851(n+1)-1`
-/

namespace A064722.P17255395012520951887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1) - 1

end

end A064722.P17255395012520951887

noncomputable section

/-- A064722: a(1) = 0; for n >= 2, a(n) = n - (largest prime <= n).

Offset 1, canonical program `A064722.P17255395012520951887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064722 (n : ℕ) : ℤ :=
  A064722.P17255395012520951887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064805.P13829295626154547422

`lt[A109607(n+2), A109607(n)]`
-/

namespace A064805.P13829295626154547422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P13829295626154547422

noncomputable section

/-- A064805: Numbers k such that phi(k) > phi(k+2).

Offset 1, canonical program `A064805.P13829295626154547422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6849 terms. -/
def A064805 (n : ℕ) : ℤ :=
  (A064805.P13829295626154547422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6849 terms. -/
def A064805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064866.P4672307026795007307

`A345018(n+1)+1-A074279(n+1)`
-/

namespace A064866.P4672307026795007307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345018 (n + 1) + (1 - A074279 (n + 1))

end

end A064866.P4672307026795007307

noncomputable section

/-- A064866: Write numbers 1, then 1 up to 2^2, then 1 up to 3^2, then 1 up to 4^2 and so on.

Offset 1, canonical program `A064866.P4672307026795007307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064866 (n : ℕ) : ℤ :=
  A064866.P4672307026795007307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064950.P4902822540981006057

`∑{d}[n+1, #*A357938((n+1)/#)]`
-/

namespace A064950.P4902822540981006057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P4902822540981006057

noncomputable section

/-- A064950: a(n) = Sum_{i|n, j|n} lcm(i,j).

Offset 1, canonical program `A064950.P4902822540981006057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064950 (n : ℕ) : ℤ :=
  A064950.P4902822540981006057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064971.P12456317125098901049

`∑{d}[n+1, A053825(#)*A379812((n+1)/#)]`
-/

namespace A064971.P12456317125098901049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d * A379812 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064971.P12456317125098901049

noncomputable section

/-- A064971: a(n) = n*usigma(n), where usigma(n) is the sum of unitary divisors of n (A034448).

Offset 1, canonical program `A064971.P12456317125098901049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064971 (n : ℕ) : ℤ :=
  A064971.P12456317125098901049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065151.P479080353414528761

`A000040(A175851(n+2))`
-/

namespace A065151.P479080353414528761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A175851 (n + 2)).toNat

end

end A065151.P479080353414528761

noncomputable section

/-- A065151: a(n) = prime(1 + A064722(n)).

Offset 2, canonical program `A065151.P479080353414528761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065151 (n : ℕ) : ℤ :=
  A065151.P479080353414528761.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065345.P8497618122950480372

`A065346(n+1)%A007531(n+4)`
-/

namespace A065345.P8497618122950480372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065346 (n + 1)) (A007531 (n + 4))

end

end A065345.P8497618122950480372

noncomputable section

/-- A065345: a(n) = binomial(2*n,n) mod ((n+1)*(n+2)*(n+3)).

Offset 1, canonical program `A065345.P8497618122950480372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A065345 (n : ℕ) : ℤ :=
  A065345.P8497618122950480372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A065345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065497.P12696224305831479734

`2^n-A065494(n)`
-/

namespace A065497.P12696224305831479734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A065494 n

end

end A065497.P12696224305831479734

noncomputable section

/-- A065497: Number of (binary) bit strings of length n having at least one even length block of 0's followed by an even length block of 1's.

Offset 0, canonical program `A065497.P12696224305831479734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065497 (n : ℕ) : ℤ :=
  A065497.P12696224305831479734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065680.P1696660172782244765

`∑[round(acot(A077648(n+1)))]`
-/

namespace A065680.P1696660172782244765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A077648 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065680.P1696660172782244765

noncomputable section

/-- A065680: Number of primes <= prime(n) which begin with a 1.

Offset 1, canonical program `A065680.P1696660172782244765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065680 (n : ℕ) : ℤ :=
  A065680.P1696660172782244765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065682.P15404421544339977332

`∑[(4%A077648(n+1))%4]`
-/

namespace A065682.P15404421544339977332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod 4 (A077648 (n + 1))) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065682.P15404421544339977332

noncomputable section

/-- A065682: Number of primes <= prime(n) which begin with a 3.

Offset 1, canonical program `A065682.P15404421544339977332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065682 (n : ℕ) : ℤ :=
  A065682.P15404421544339977332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065684.P16389121019470855818

`∑[val(A077648(n+1), 5)]`
-/

namespace A065684.P16389121019470855818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077648 (n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065684.P16389121019470855818

noncomputable section

/-- A065684: Number of primes <= prime(n) which begin with a 5.

Offset 1, canonical program `A065684.P16389121019470855818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065684 (n : ℕ) : ℤ :=
  (A065684.P16389121019470855818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065685.P897262154083078228

`∑[val(A077648(n+1), 6)]`
-/

namespace A065685.P897262154083078228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077648 (n + 1)).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065685.P897262154083078228

noncomputable section

/-- A065685: Number of primes <= prime(n) which begin with a 6.

Offset 1, canonical program `A065685.P897262154083078228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065685 (n : ℕ) : ℤ :=
  (A065685.P897262154083078228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065686.P3443444841372550912

`∑[val(A077648(n+1), 7)]`
-/

namespace A065686.P3443444841372550912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077648 (n + 1)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065686.P3443444841372550912

noncomputable section

/-- A065686: Number of primes <= prime(n) which begin with a 7.

Offset 1, canonical program `A065686.P3443444841372550912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065686 (n : ℕ) : ℤ :=
  (A065686.P3443444841372550912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065687.P2261015865180936265

`∑[val(A077648(n+1), 8)]`
-/

namespace A065687.P2261015865180936265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077648 (n + 1)).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065687.P2261015865180936265

noncomputable section

/-- A065687: Number of primes <= prime(n) which begin with an 8.

Offset 1, canonical program `A065687.P2261015865180936265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065687 (n : ℕ) : ℤ :=
  (A065687.P2261015865180936265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065959.P2409166480310075694

`A069091(n+1)/A059376(n+1)`
-/

namespace A065959.P2409166480310075694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A059376 (n + 1) : ℚ)

end

end A065959.P2409166480310075694

noncomputable section

/-- A065959: a(n) = n^3*Product_{distinct primes p dividing n} (1+1/p^3).

Offset 1, canonical program `A065959.P2409166480310075694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065959 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065959.P2409166480310075694.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065960.P1911590264306084492

`A069093(n+1)/A059377(n+1)`
-/

namespace A065960.P1911590264306084492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A059377 (n + 1) : ℚ)

end

end A065960.P1911590264306084492

noncomputable section

/-- A065960: a(n) = n^4*Product_{distinct primes p dividing n} (1+1/p^4).

Offset 1, canonical program `A065960.P1911590264306084492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059377, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065960 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065960.P1911590264306084492.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059377, A069093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066355.P2910643592321595961

`A066577(A055471(n+1))`
-/

namespace A066355.P2910643592321595961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066577 (A055471 (n + 1)).toNat

end

end A066355.P2910643592321595961

noncomputable section

/-- A066355: A055471(n)/(product of nonzero digits of A055471(n)).

Offset 1, canonical program `A066355.P2910643592321595961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A066355 (n : ℕ) : ℤ :=
  A066355.P2910643592321595961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A066355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066518.P12709718911375413060

`-Δ[A161116(abs(1-n))]`
-/

namespace A066518.P12709718911375413060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161116 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A066518.P12709718911375413060

noncomputable section

/-- A066518: Anti-divisor class sums of n.

Offset 1, canonical program `A066518.P12709718911375413060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066518 (n : ℕ) : ℤ :=
  A066518.P12709718911375413060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066542.P10113132506063868529

`filter[A053577(n+2), A069513(#)]`
-/

namespace A066542.P10113132506063868529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A066542.P10113132506063868529

noncomputable section

/-- A066542: Nonnegative integers all of whose anti-divisors are either 2 or odd.

Offset 1, canonical program `A066542.P10113132506063868529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9606 terms. -/
def A066542 (n : ℕ) : ℤ :=
  A066542.P10113132506063868529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9606 terms. -/
def A066542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066640.P6323078218630825378

`eq[1, and(1, A190997(n+1))]+1`
-/

namespace A066640.P6323078218630825378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A190997 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066640.P6323078218630825378

noncomputable section

/-- A066640: Numbers such that all divisors have only odd digits.

Offset 1, canonical program `A066640.P6323078218630825378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A066640 (n : ℕ) : ℤ :=
  (A066640.P6323078218630825378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A066640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066715.P7213721033754454497

`A353688(Δ[n²])`
-/

namespace A066715.P7213721033754454497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A066715.P7213721033754454497

noncomputable section

/-- A066715: a(n) = gcd(2n+1, sigma(2n+1)).

Offset 0, canonical program `A066715.P7213721033754454497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066715 (n : ℕ) : ℤ :=
  A066715.P7213721033754454497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066913.P6088675062854095673

`A066911(n+1)%(n+1)`
-/

namespace A066913.P6088675062854095673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066911 (n + 1)) (n + 1 : ℤ)

end

end A066913.P6088675062854095673

noncomputable section

/-- A066913: (sum of primes < n that do not divide n) (mod n).

Offset 1, canonical program `A066913.P6088675062854095673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066913 (n : ℕ) : ℤ :=
  A066913.P6088675062854095673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066927.P9705809913949217984

`floor(sqrt(A130290(n+1)))+1`
-/

namespace A066927.P9705809913949217984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A130290 (n + 1)) + 1

end

end A066927.P9705809913949217984

noncomputable section

/-- A066927: Least k such that between p and 2p, for all primes > 3, there is always a number that is twice a square, i.e.; a k such that p < 2k^2 < 2p.

Offset 1, canonical program `A066927.P9705809913949217984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066927 (n : ℕ) : ℤ :=
  A066927.P9705809913949217984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067048.P5990453547970567788

`gcd(A006857(n), A189046(n))`
-/

namespace A067048.P5990453547970567788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006857 n) (A189046 n)

end

end A067048.P5990453547970567788

noncomputable section

/-- A067048: a(n) = lcm(n, n+1, n+2, n+3, n+4) / 60.

Offset 1, canonical program `A067048.P5990453547970567788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067048 (n : ℕ) : ℤ :=
  (A067048.P5990453547970567788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067274.P13419636423225962887

`abs(2-A270383(n))`
-/

namespace A067274.P13419636423225962887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A270383 n|

end

end A067274.P13419636423225962887

noncomputable section

/-- A067274: Number of ordered integer pairs (b,c), with -n<=b<=n, -n<=c<=n, such that both roots of x^2+bx+c=0 are integers.

Offset 0, canonical program `A067274.P13419636423225962887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067274 (n : ℕ) : ℤ :=
  A067274.P13419636423225962887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067656.P6610012476319395165

`A166602(n+2)`
-/

namespace A067656.P6610012476319395165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 2)

end

end A067656.P6610012476319395165

noncomputable section

/-- A067656: Numbers n such that n!*B(2n) is an integer, where B(2n) are the Bernoulli numbers.

Offset 1, canonical program `A067656.P6610012476319395165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. -/
def A067656 (n : ℕ) : ℤ :=
  A067656.P6610012476319395165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. -/
def A067656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067712.P5394162300607780817

`lt[A212445(n+1), A064800(n+1)]+1`
-/

namespace A067712.P5394162300607780817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067712.P5394162300607780817

noncomputable section

/-- A067712: Numbers n such that sum of exponents in prime factorization of n is > log(n).

Offset 1, canonical program `A067712.P5394162300607780817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A067712 (n : ℕ) : ℤ :=
  (A067712.P5394162300607780817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A067712.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A068497.P16499874508488581460

`p?[lt[A175851(n+2), A175851(2*n+1)]]`
-/

namespace A068497.P16499874508488581460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068497.P16499874508488581460

noncomputable section

/-- A068497: Primes p such that 2*p+1 and 2*p-1 are composites.

Offset 1, canonical program `A068497.P16499874508488581460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1755 terms. -/
def A068497 (n : ℕ) : ℤ :=
  (A068497.P16499874508488581460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1755 terms. -/
def A068497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068563.P1124272610542496597

`record[gcd(n+1, A085537(A015910(n+1)))]`
-/

namespace A068563.P1124272610542496597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A085537 (A015910 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068563.P1124272610542496597

noncomputable section

/-- A068563: Numbers k such that 2^k == 4^k (mod k).

Offset 1, canonical program `A068563.P1124272610542496597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A068563 (n : ℕ) : ℤ :=
  (A068563.P1124272610542496597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A068563.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069268.P2039150532766903054

`gcd(∑[n+1], A175567(n+1))`
-/

namespace A069268.P2039150532766903054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A175567 (n + 1))

end

end A069268.P2039150532766903054

noncomputable section

/-- A069268: Greatest common divisor of n! and n*(n+1)/2.

Offset 1, canonical program `A069268.P2039150532766903054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069268 (n : ℕ) : ℤ :=
  (A069268.P2039150532766903054.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069623.P16188465153472375596

`A076411(n+2)`
-/

namespace A069623.P16188465153472375596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (n + 2)

end

end A069623.P16188465153472375596

noncomputable section

/-- A069623: Number of perfect powers <= n.

Offset 1, canonical program `A069623.P16188465153472375596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069623 (n : ℕ) : ℤ :=
  A069623.P16188465153472375596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069626.P14114950081823336595

`∑{d}[n+1, A007427(#)*A347405((n+1)/#)]`
-/

namespace A069626.P14114950081823336595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A347405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069626.P14114950081823336595

noncomputable section

/-- A069626: Number of sets of integers larger than one whose least common multiple is n.

Offset 1, canonical program `A069626.P14114950081823336595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069626 (n : ℕ) : ℤ :=
  A069626.P14114950081823336595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069977.P573260272244437111

`eq[1, A379971(n+1)]`
-/

namespace A069977.P573260272244437111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069977.P573260272244437111

noncomputable section

/-- A069977: Numbers k such that k and k+2 are squarefree.

Offset 1, canonical program `A069977.P573260272244437111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069977 (n : ℕ) : ℤ :=
  (A069977.P573260272244437111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070043.P2240004718848674346

`lt[2, A359309(n+1)]`
-/

namespace A070043.P2240004718848674346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070043.P2240004718848674346

noncomputable section

/-- A070043: Numbers of the form 6*j*k+j+k for positive integers j and k.

Offset 1, canonical program `A070043.P2240004718848674346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4477 terms. -/
def A070043 (n : ℕ) : ℤ :=
  (A070043.P2240004718848674346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4477 terms. -/
def A070043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070301.P14203331873817111761

`A013916(n+2)/2`
-/

namespace A070301.P14203331873817111761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013916 (n + 2) : ℚ) / 2

end

end A070301.P14203331873817111761

noncomputable section

/-- A070301: Numbers n such that sum of first 2n primes is prime.

Offset 1, canonical program `A070301.P14203331873817111761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070301 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070301.P14203331873817111761.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070705.P850557199446930633

`A158851(record[A047994(n+3)])`
-/

namespace A070705.P850557199446930633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070705.P850557199446930633

noncomputable section

/-- A070705: LCM of first n prime powers modulo next prime power.

Offset 1, canonical program `A070705.P850557199446930633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A070705 (n : ℕ) : ℤ :=
  A070705.P850557199446930633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A070705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070923.P14941240451852089413

`A077107(n)-n²`
-/

namespace A070923.P14941240451852089413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 n - (n ^ 2 : ℤ)

end

end A070923.P14941240451852089413

noncomputable section

/-- A070923: a(n) is the smallest value >= 0 of the form x^3 - n^2.

Offset 0, canonical program `A070923.P14941240451852089413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070923 (n : ℕ) : ℤ :=
  A070923.P14941240451852089413.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070958.P2058158255106177248

`eq[A010879(A007953(n)), A054055(n)]`
-/

namespace A070958.P2058158255106177248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070958.P2058158255106177248

noncomputable section

/-- A070958: Numbers n such that the largest digit of n is the same as the largest digit of (sum of digits of n).

Offset 1, canonical program `A070958.P2058158255106177248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A070958 (n : ℕ) : ℤ :=
  (A070958.P2058158255106177248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A070958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070992.P10139312046146458352

`∑[abs(Δ[A007729(n)])]`
-/

namespace A070992.P10139312046146458352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P10139312046146458352

noncomputable section

/-- A070992: Partial sums of A002487.

Offset 0, canonical program `A070992.P10139312046146458352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070992 (n : ℕ) : ℤ :=
  A070992.P10139312046146458352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071038.P13125423546124706682

`A057427(and(A071797(n+1), A080883(n)))`
-/

namespace A071038.P13125423546124706682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.land (A071797 (n + 1)) (A080883 n)).toNat

end

end A071038.P13125423546124706682

noncomputable section

/-- A071038: Triangle read by rows giving successive states of cellular automaton generated by "Rule 182".

Offset 0, canonical program `A071038.P13125423546124706682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071038 (n : ℕ) : ℤ :=
  A071038.P13125423546124706682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071046.P14189912899326059712

`A005408(n)-A071047(n)`
-/

namespace A071046.P14189912899326059712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A071047 n

end

end A071046.P14189912899326059712

noncomputable section

/-- A071046: Number of 0's in n-th row of triangle in A071031, cellular automaton "rule 62".

Offset 0, canonical program `A071046.P14189912899326059712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071046 (n : ℕ) : ℤ :=
  A071046.P14189912899326059712.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071111.P7558974791234017135

`A001000(n+2)`
-/

namespace A071111.P7558974791234017135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (n + 2)

end

end A071111.P7558974791234017135

noncomputable section

/-- A071111: a(n) is the least integer x such that there exists an integer in the open interval (x/(i+1), x/i) for i= n-1, n-2 ..., 3, 2, 1.

Offset 2, canonical program `A071111.P7558974791234017135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A071111 (n : ℕ) : ℤ :=
  A071111.P7558974791234017135.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A071111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071203.P735397639379525121

`floor((n+1)/A054055(n+1))`
-/

namespace A071203.P735397639379525121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A054055 (n + 1) : ℚ)⌋

end

end A071203.P735397639379525121

noncomputable section

/-- A071203: Integer part of n divided by its largest digit (decimal notation).

Offset 1, canonical program `A071203.P735397639379525121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071203 (n : ℕ) : ℤ :=
  A071203.P735397639379525121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071354.P4286494807268156885

`lt[floor(n/2), A062173(round(acot(n)+n))]`
-/

namespace A071354.P4286494807268156885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071354.P4286494807268156885

noncomputable section

/-- A071354: Floor(2^n/n) is odd.

Offset 1, canonical program `A071354.P4286494807268156885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071354 (n : ℕ) : ℤ :=
  (A071354.P4286494807268156885.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071625.P7560228234405242529

`∑{e}[A328830(n+1), #]`
-/

namespace A071625.P7560228234405242529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A071625.P7560228234405242529

noncomputable section

/-- A071625: Number of distinct exponents when n is factorized as a product of primes.

Offset 1, canonical program `A071625.P7560228234405242529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071625 (n : ℕ) : ℤ :=
  (A071625.P7560228234405242529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071702.P6180211292922770860

`∑[A079260(A014973(n+1)+2)]`
-/

namespace A071702.P6180211292922770860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (A014973 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071702.P6180211292922770860

noncomputable section

/-- A071702: Number of twin prime pairs <= n of form (4*k+3,4*(k+1)+1), k>=0.

Offset 1, canonical program `A071702.P6180211292922770860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071702 (n : ℕ) : ℤ :=
  A071702.P6180211292922770860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071718.P1631232272951733655

`A099376(n)+A071721(n)`
-/

namespace A071718.P1631232272951733655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071721 n

end

end A071718.P1631232272951733655

noncomputable section

/-- A071718: Expansion of (1+x^2*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071718.P1631232272951733655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071718 (n : ℕ) : ℤ :=
  A071718.P1631232272951733655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071728.P8013549024474898456

`A099376(n)+A071731(n)`
-/

namespace A071728.P8013549024474898456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071731 n

end

end A071728.P8013549024474898456

noncomputable section

/-- A071728: Expansion of (1+x^3*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071728.P8013549024474898456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071728 (n : ℕ) : ℤ :=
  A071728.P8013549024474898456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071747.P16063353787672862217

`A071731(A289207(n+1))+A000245(n)`
-/

namespace A071747.P16063353787672862217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071731 (A289207 (n + 1)).toNat + A000245 n

end

end A071747.P16063353787672862217

noncomputable section

/-- A071747: Expansion of (1+x^4*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071747.P16063353787672862217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071747 (n : ℕ) : ℤ :=
  A071747.P16063353787672862217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072391.P4293839543337263031

`A182082(n+1)+∑[∏{p}[n+1, #^val(n+1, #²)]-1]`
-/

namespace A072391.P4293839543337263031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182082 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P4293839543337263031

noncomputable section

/-- A072391: D2(n,n) = Sum_{1<=k<=n} (d_n(k^2)), where d_a(k^2)=card{d: d|k and 1<=d<=a} for real a.

Offset 1, canonical program `A072391.P4293839543337263031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072391 (n : ℕ) : ℤ :=
  A072391.P4293839543337263031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072418.P15917558749075613110

`A384922(n+1)%2`
-/

namespace A072418.P15917558749075613110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384922 (n + 1)) 2

end

end A072418.P15917558749075613110

noncomputable section

/-- A072418: Parity of floor(3^n/2^n).

Offset 1, canonical program `A072418.P15917558749075613110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072418 (n : ℕ) : ℤ :=
  A072418.P15917558749075613110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072442.P9458739971674614714

`A055642(A211422(2*n+1))+n`
-/

namespace A072442.P9458739971674614714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A211422 (2 * n + 1)).toNat + (n : ℤ)

end

end A072442.P9458739971674614714

noncomputable section

/-- A072442: Least k such that Sum_{i=1..k} cos(1/sqrt(i)) > n.

Offset 0, canonical program `A072442.P9458739971674614714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A072442 (n : ℕ) : ℤ :=
  A072442.P9458739971674614714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A072442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072461.P3037339602671730277

`A028982(eq[1, A152677(n+1)%4]+1)`
-/

namespace A072461.P3037339602671730277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152677 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072461.P3037339602671730277

noncomputable section

/-- A072461: Numbers k such that sigma(k) == 1 (mod 4).

Offset 1, canonical program `A072461.P3037339602671730277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. -/
def A072461 (n : ℕ) : ℤ :=
  A072461.P3037339602671730277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. -/
def A072461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072462.P1277985972236002111

`A028982(eq[3, A152677(n+1)%4]+1)`
-/

namespace A072462.P1277985972236002111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152677 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072462.P1277985972236002111

noncomputable section

/-- A072462: Numbers k such that sigma(k) == 3 (mod 4).

Offset 1, canonical program `A072462.P1277985972236002111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5105 terms. -/
def A072462 (n : ℕ) : ℤ :=
  A072462.P1277985972236002111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5105 terms. -/
def A072462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072516.P18149148055783031557

`∑[A000196(n)-A293235(n+1)]`
-/

namespace A072516.P18149148055783031557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A293235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072516.P18149148055783031557

noncomputable section

/-- A072516: Sum of remainders when n is divided by lesser squares.

Offset 1, canonical program `A072516.P18149148055783031557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072516 (n : ℕ) : ℤ :=
  A072516.P18149148055783031557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072543.P16086005877462382500

`eq[A000030(n), A054055(n)]`
-/

namespace A072543.P16086005877462382500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P16086005877462382500

noncomputable section

/-- A072543: Numbers whose largest decimal digit is also the initial digit.

Offset 1, canonical program `A072543.P16086005877462382500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3473 terms. -/
def A072543 (n : ℕ) : ℤ :=
  (A072543.P16086005877462382500.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3473 terms. -/
def A072543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072614.P16482730328586580813

`2*A111775(n+1)+3-a(n-1)` with `a(0)=1`
-/

namespace A072614.P16482730328586580813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A111775 (n + 1) + (3 - a (n - 1))

end

end A072614.P16482730328586580813

noncomputable section

/-- A072614: a(n) = Sum_{k = 1..n} (-1)^(n reduced mod k).

Offset 1, canonical program `A072614.P16482730328586580813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072614 (n : ℕ) : ℤ :=
  A072614.P16482730328586580813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072695.P12128296506412736913

`A356574(n+1)/A061680(n+1)`
-/

namespace A072695.P12128296506412736913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356574 (n + 1) : ℚ) / (A061680 (n + 1) : ℚ)

end

end A072695.P12128296506412736913

noncomputable section

/-- A072695: a(n) = lcm(d(n^2),d(n)), where d(n) = A000005, the number of divisors of n.

Offset 1, canonical program `A072695.P12128296506412736913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072695.P12128296506412736913.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072864.P6592370251921593002

`lt[1, gcd(3, A035109(n))]+1`
-/

namespace A072864.P6592370251921593002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A035109 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072864.P6592370251921593002

noncomputable section

/-- A072864: Numbers m such that the smallest k dividing sigma(k*m^2) is equal to 3.

Offset 1, canonical program `A072864.P6592370251921593002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5869 terms. -/
def A072864 (n : ℕ) : ℤ :=
  (A072864.P6592370251921593002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5869 terms. -/
def A072864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072918.P13812427544987107066

`A013632(A000203(n+1))`
-/

namespace A072918.P13812427544987107066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000203 (n + 1)).toNat

end

end A072918.P13812427544987107066

noncomputable section

/-- A072918: a(n) = p(n) - sigma(n), where p(n) is the least prime greater than sigma(n).

Offset 1, canonical program `A072918.P13812427544987107066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072918 (n : ℕ) : ℤ :=
  A072918.P13812427544987107066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072918.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072978.P7446069945173957888

`filter[A123666(n+1), A356170(#)]`
-/

namespace A072978.P7446069945173957888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A072978.P7446069945173957888

noncomputable section

/-- A072978: Numbers of the form m * 2^bigomega(m), where m>1 is odd and bigomega(m) = A001222(m), the number of prime factors of m.

Offset 1, canonical program `A072978.P7446069945173957888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. -/
def A072978 (n : ℕ) : ℤ :=
  A072978.P7446069945173957888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7312 terms. -/
def A072978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072994.P17924656576761691658

`gcd(∏{p}[n+1, (n+1)/#], A003557((n+1)*∏{p}[n+1, #-1]))`
-/

namespace A072994.P17924656576761691658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (A003557 ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))).toNat)

end

end A072994.P17924656576761691658

noncomputable section

/-- A072994: Number of solutions to x^n==1 (mod n), 1<=x<=n.

Offset 1, canonical program `A072994.P17924656576761691658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A072994 (n : ℕ) : ℤ :=
  (A072994.P17924656576761691658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A072994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073102.P7643878403766509078

`∩[A124826(n+1), A140535(n+1)]`
-/

namespace A073102.P7643878403766509078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P7643878403766509078

noncomputable section

/-- A073102: Primes of the form 210n + 1.

Offset 1, canonical program `A073102.P7643878403766509078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A073102 (n : ℕ) : ℤ :=
  (A073102.P7643878403766509078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A073102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073575.P12510821698240124249

`∑{d}[n+1, #*A012245(#)]`
-/

namespace A073575.P12510821698240124249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A012245 d

end

end A073575.P12510821698240124249

noncomputable section

/-- A073575: Sum of factorial numbers dividing n.

Offset 1, canonical program `A073575.P12510821698240124249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073575 (n : ℕ) : ℤ :=
  A073575.P12510821698240124249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073582.P16120339472927722873

`2*(A123123(n+1)-2)`
-/

namespace A073582.P16120339472927722873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A123123 (n + 1) - 2)

end

end A073582.P16120339472927722873

noncomputable section

/-- A073582: Numbers k such that S(k) = k/2, where S(k) is the Kempner function A002034.

Offset 1, canonical program `A073582.P16120339472927722873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073582 (n : ℕ) : ℤ :=
  A073582.P16120339472927722873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073845.P3227992193217113330

`A212804(n)+A084179(n)`
-/

namespace A073845.P3227992193217113330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A084179 n

end

end A073845.P3227992193217113330

noncomputable section

/-- A073845: a(1)=a(2)=1, a(n+2)=a(n+1)+a(n)+(-2)^n.

Offset 1, canonical program `A073845.P3227992193217113330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A073845 (n : ℕ) : ℤ :=
  A073845.P3227992193217113330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A073845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073881.P14801290186884067211

`A158611(2*∑[C(2, ∑{e}[n+1, #+1])])`
-/

namespace A073881.P14801290186884067211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A073881.P14801290186884067211

noncomputable section

/-- A073881: a(n) = smallest number m (obviously prime) such that pi(m) = 2*pi(n).

Offset 1, canonical program `A073881.P14801290186884067211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073881 (n : ℕ) : ℤ :=
  A073881.P14801290186884067211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073897.P11908229186590286199

`xor(A057427(n), A073898(n+1))`
-/

namespace A073897.P11908229186590286199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A073898 (n + 1))

end

end A073897.P11908229186590286199

noncomputable section

/-- A073897: a(1) = 1, a(n) = smallest odd or even number not occurring earlier according as n is prime or composite.

Offset 1, canonical program `A073897.P11908229186590286199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073897 (n : ℕ) : ℤ :=
  A073897.P11908229186590286199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073995.P1846185900125942284

`A073996(n+1)+A090132(n)²`
-/

namespace A073995.P1846185900125942284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + A090132 n ^ 2

end

end A073995.P1846185900125942284

noncomputable section

/-- A073995: Number of strings of length n over GF(4) with trace 0 and subtrace 0.

Offset 1, canonical program `A073995.P1846185900125942284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073995 (n : ℕ) : ℤ :=
  A073995.P1846185900125942284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074204.P9056987276116765249

`eq[A000120(n), A133179(A061338(n))]`
-/

namespace A074204.P9056987276116765249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A061338 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074204.P9056987276116765249

noncomputable section

/-- A074204: Numbers k such that the number of 1's in the binary representation of k divides 2^k+1.

Offset 1, canonical program `A074204.P9056987276116765249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A074204 (n : ℕ) : ℤ :=
  (A074204.P9056987276116765249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A074204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074226.P15430199150975512513

`eq[1, A317331(n+1)%3]+1`
-/

namespace A074226.P15430199150975512513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317331 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074226.P15430199150975512513

noncomputable section

/-- A074226: Numbers n such that Kronecker(3,n) = 1.

Offset 1, canonical program `A074226.P15430199150975512513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A074226 (n : ℕ) : ℤ :=
  (A074226.P15430199150975512513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A074226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074230.P11228100867499027670

`eq[A121238(n), A175629(n)]`
-/

namespace A074230.P11228100867499027670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074230.P11228100867499027670

noncomputable section

/-- A074230: Numbers n such that A089509(n)=1.

Offset 1, canonical program `A074230.P11228100867499027670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4289 terms. -/
def A074230 (n : ℕ) : ℤ :=
  (A074230.P11228100867499027670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4289 terms. -/
def A074230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074261.P16825806500781685750

`lt[0, A294448(n+1)]+1`
-/

namespace A074261.P16825806500781685750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074261.P16825806500781685750

noncomputable section

/-- A074261: Positions in the Kolakoski sequence (A000002) when the number of 2's is greater than the number of 1's.

Offset 1, canonical program `A074261.P16825806500781685750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4601 terms. -/
def A074261 (n : ℕ) : ℤ :=
  (A074261.P16825806500781685750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4601 terms. -/
def A074261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074272.P2503447662547922239

`∑[(-1)^n*A000002(n+1)]`
-/

namespace A074272.P2503447662547922239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P2503447662547922239

noncomputable section

/-- A074272: Partial alternating sums of the Kolakoski sequence A000002.

Offset 1, canonical program `A074272.P2503447662547922239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074272 (n : ℕ) : ℤ :=
  A074272.P2503447662547922239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074287.P17554689060709443169

`2*(lt[A294448(2*(n+1)), 0]+1)`
-/

namespace A074287.P17554689060709443169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A074287.P17554689060709443169

noncomputable section

/-- A074287: Even numbers n such that the partial sum of the Kolakoski sequence (A000002) at n is less than 3n/2.

Offset 1, canonical program `A074287.P17554689060709443169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A074287 (n : ℕ) : ℤ :=
  (A074287.P17554689060709443169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A074287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074291.P12773255083296410343

`eq[A000002(n+1), A014681(a(n-1))]+1` with `a(0)=1`
-/

namespace A074291.P12773255083296410343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A014681 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074291.P12773255083296410343

noncomputable section

/-- A074291: Positions in the Kolakoski sequence where A000002(n) is 1 if n is odd, or 2 if n is even.

Offset 1, canonical program `A074291.P12773255083296410343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5249 terms. -/
def A074291 (n : ℕ) : ℤ :=
  (A074291.P12773255083296410343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5249 terms. -/
def A074291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074292.P2270128234605797679

`Δ[A216345(3*n+1)]-3`
-/

namespace A074292.P2270128234605797679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A074292.P2270128234605797679

noncomputable section

/-- A074292: Dominant digit in successive groups of 3 from the Kolakoski sequence (A000002).

Offset 1, canonical program `A074292.P2270128234605797679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A074292 (n : ℕ) : ℤ :=
  A074292.P2270128234605797679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A074292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075119.P7210823852098510821

`A028310(A241083(n+1)%A028310(n))`
-/

namespace A075119.P7210823852098510821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A241083 (n + 1)) (A028310 n)).toNat

end

end A075119.P7210823852098510821

noncomputable section

/-- A075119: Denominator of n/floor(sqrt(n)); numerator is A073890(n).

Offset 1, canonical program `A075119.P7210823852098510821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075119 (n : ℕ) : ℤ :=
  A075119.P7210823852098510821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075326.P6416656601313117773

`(10*n)%A297469(n)`
-/

namespace A075326.P6416656601313117773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * n : ℤ) (A297469 n)

end

end A075326.P6416656601313117773

noncomputable section

/-- A075326: Anti-Fibonacci numbers: start with a(0) = 0, and extend by the rule that the next term is the sum of the two smallest numbers that are not in the sequence nor were used to form an earlier sum.

Offset 0, canonical program `A075326.P6416656601313117773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075326 (n : ℕ) : ℤ :=
  A075326.P6416656601313117773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075704.P3489623955875780024

`p?[A110801(n+1)]`
-/

namespace A075704.P3489623955875780024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075704.P3489623955875780024

noncomputable section

/-- A075704: p and 12*p+1 are both primes.

Offset 0, canonical program `A075704.P3489623955875780024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A075704 (n : ℕ) : ℤ :=
  A075704.P3489623955875780024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A075704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075988.P11951307643143853652

`A347286(2*(n+1))-A059851(2*n+1)`
-/

namespace A075988.P11951307643143853652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347286 (2 * (n + 1)) - A059851 (2 * n + 1)

end

end A075988.P11951307643143853652

noncomputable section

/-- A075988: Number of integers k satisfying 1 <= k <= n and 0 < frac(n/k) < 1/2, where frac(n/k) is the fractional part of n/k; i.e., frac(n/k) = n/k - floor(n,k).

Offset 1, canonical program `A075988.P11951307643143853652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A075988 (n : ℕ) : ℤ :=
  A075988.P11951307643143853652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A075988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075989.P4483249775475525588

`∑[Δ[A059851(2*n)]-1]`
-/

namespace A075989.P4483249775475525588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075989.P4483249775475525588

noncomputable section

/-- A075989: Number of k satisfying 1<=k<=n and {n/k} >= 1/2, where {n/k} is the fractional part of n/k, i.e., {n/k} = n/k - floor(n/k).

Offset 1, canonical program `A075989.P4483249775475525588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A075989 (n : ℕ) : ℤ :=
  A075989.P4483249775475525588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A075989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075997.P4978135503421497941

`n-A059851(n)`
-/

namespace A075997.P4978135503421497941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059851 n

end

end A075997.P4978135503421497941

noncomputable section

/-- A075997: a(n) = [n/2] - [n/3] + [n/4] - [n/5] + [n/6] - ..., where [n/k] = floor(n/k).

Offset 0, canonical program `A075997.P4978135503421497941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075997 (n : ℕ) : ℤ :=
  A075997.P4978135503421497941.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076136.P16925837628229497617

`eq[A076191(n+1), A252736(A004277(n))]+2`
-/

namespace A076136.P16925837628229497617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A076136.P16925837628229497617

noncomputable section

/-- A076136: Numbers n such that Omega(n) = Omega(n-1) + Omega(n-2), where Omega(n) (A001222) denotes the number of prime factors of n, counting multiplicity.

Offset 1, canonical program `A076136.P16925837628229497617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A076136 (n : ℕ) : ℤ :=
  (A076136.P16925837628229497617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A076136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076150.P17154060652409901030

`lt[10, A013632(n)]+1`
-/

namespace A076150.P17154060652409901030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076150.P17154060652409901030

noncomputable section

/-- A076150: Start of 10 consecutive composite numbers.

Offset 1, canonical program `A076150.P17154060652409901030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A076150 (n : ℕ) : ℤ :=
  (A076150.P17154060652409901030.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A076150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076167.P1925826582817303362

`p?[A036301(n+1)]`
-/

namespace A076167.P1925826582817303362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076167.P1925826582817303362

noncomputable section

/-- A076167: Primes p such that sum of even digits of p equals sum of odd digits of p.

Offset 1, canonical program `A076167.P1925826582817303362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A076167 (n : ℕ) : ℤ :=
  A076167.P1925826582817303362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A076167.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A076332.P10547228136457690679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076332 (n : ℕ) : ℤ :=
  A076332.P10547228136457690679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076544.P18035077327110474635

`xor(1, A007423(n+1))-1`
-/

namespace A076544.P18035077327110474635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A007423 (n + 1)) - 1

end

end A076544.P18035077327110474635

noncomputable section

/-- A076544: a(n) = mu(n) + sqf(n) where mu(n) is Moebius function, sqf(n) = 1 if n is squarefree and sqf(n) = -1 otherwise.

Offset 1, canonical program `A076544.P18035077327110474635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076544 (n : ℕ) : ℤ :=
  A076544.P18035077327110474635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076998.P17388172569221754780

`A007948(n+1)-A007947(n+1)`
-/

namespace A076998.P17388172569221754780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) - A007947 (n + 1)

end

end A076998.P17388172569221754780

noncomputable section

/-- A076998: Difference between cubefree and squarefree components of n.

Offset 1, canonical program `A076998.P17388172569221754780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076998 (n : ℕ) : ℤ :=
  A076998.P17388172569221754780.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077024.P14735793363298763956

`A056548(n+1)-A347286(n+1)`
-/

namespace A077024.P14735793363298763956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056548 (n + 1) - A347286 (n + 1)

end

end A077024.P14735793363298763956

noncomputable section

/-- A077024: a(n) = Sum_{k=1..n} floor(n/k + 1/2).

Offset 1, canonical program `A077024.P14735793363298763956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A077024 (n : ℕ) : ℤ :=
  A077024.P14735793363298763956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A077024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077150.P1728988973550887610

`A307912(n+1)-A016035(n+1)`
-/

namespace A077150.P1728988973550887610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1) - A016035 (n + 1)

end

end A077150.P1728988973550887610

noncomputable section

/-- A077150: Number of composite numbers between n and 2n that are coprime to n.

Offset 1, canonical program `A077150.P1728988973550887610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077150 (n : ℕ) : ℤ :=
  A077150.P1728988973550887610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077150.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078320.P8988405754585111657

`A001414((n+1)²/A003557(n+1)+1)`
-/

namespace A078320.P8988405754585111657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ) + 1)).toNat

end

end A078320.P8988405754585111657

noncomputable section

/-- A078320: Sum of all prime factors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078320.P8988405754585111657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078320 (n : ℕ) : ℤ :=
  A078320.P8988405754585111657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078633.P8420086795952118135

`∑[A240025(n)+2]+1`
-/

namespace A078633.P8420086795952118135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A078633.P8420086795952118135

noncomputable section

/-- A078633: Smallest number of sticks of length 1 needed to construct n squares with sides of length 1.

Offset 1, canonical program `A078633.P8420086795952118135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078633 (n : ℕ) : ℤ :=
  A078633.P8420086795952118135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078633.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A078650.P371792363212749957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078650 (n : ℕ) : ℤ :=
  A078650.P371792363212749957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078650.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079415.P2317611460476883429

`C(A090973(n+1), A090973(C(2, a(n-1))+1))` with `a(0)=2`
-/

namespace A079415.P2317611460476883429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (A090973 (n + 1)).toNat (A090973 (Nat.choose 2 (a (n - 1)) + 1)).toNat

end

end A079415.P2317611460476883429

noncomputable section

/-- A079415: a(n) = floor(prime(n)/n) * ceiling(prime(n)/n) / 2.

Offset 1, canonical program `A079415.P2317611460476883429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079415 (n : ℕ) : ℤ :=
  (A079415.P2317611460476883429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079530.P12744078454568212387

`A121048(n+1)-A135668(n+1)`
-/

namespace A079530.P12744078454568212387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A135668 (n + 1)

end

end A079530.P12744078454568212387

noncomputable section

/-- A079530: a(n) = phi(n) - ceiling(sqrt(n)).

Offset 1, canonical program `A079530.P12744078454568212387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079530 (n : ℕ) : ℤ :=
  A079530.P12744078454568212387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079531.P14474375639325813386

`A121048(n+1)-A135673(n+1)`
-/

namespace A079531.P14474375639325813386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A135673 (n + 1)

end

end A079531.P14474375639325813386

noncomputable section

/-- A079531: a(n) = phi(n) - ceiling(n^(2/3)).

Offset 1, canonical program `A079531.P14474375639325813386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079531 (n : ℕ) : ℤ :=
  A079531.P14474375639325813386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079532.P14893760689655914217

`A053158(n+1)-A135668(n+1)`
-/

namespace A079532.P14893760689655914217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A135668 (n + 1)

end

end A079532.P14893760689655914217

noncomputable section

/-- A079532: a(n) = floor(n - sqrt(n)) - phi(n).

Offset 1, canonical program `A079532.P14893760689655914217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079532 (n : ℕ) : ℤ :=
  A079532.P14893760689655914217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079532.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080394.P11661718225289511357

`eq[n², A181861(n)]`
-/

namespace A080394.P11661718225289511357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080394.P11661718225289511357

noncomputable section

/-- A080394: Numbers k such that binomial(k, floor(k/2)) is divisible by k^2.

Offset 1, canonical program `A080394.P11661718225289511357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A080394 (n : ℕ) : ℤ :=
  (A080394.P11661718225289511357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A080394.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080543.P9661818931796331892

`A080541(A080541(n+1))`
-/

namespace A080543.P9661818931796331892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A080541 (n + 1)).toNat

end

end A080543.P9661818931796331892

noncomputable section

/-- A080543: In binary representation: keep the first digit and rotate left the others twice.

Offset 1, canonical program `A080543.P9661818931796331892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9096 terms. -/
def A080543 (n : ℕ) : ℤ :=
  A080543.P9661818931796331892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9096 terms. -/
def A080543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080585.P5466522810854479551

`A080587(n)-(n+1)`
-/

namespace A080585.P5466522810854479551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n - (n + 1 : ℤ)

end

end A080585.P5466522810854479551

noncomputable section

/-- A080585: Partial sums of A080584.

Offset 0, canonical program `A080585.P5466522810854479551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080585 (n : ℕ) : ℤ :=
  A080585.P5466522810854479551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080585.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A080652.P332993070091390049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080652 (n : ℕ) : ℤ :=
  A080652.P332993070091390049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080679.P4055038829256022261

`A000007(and(A236185(n+3), A317301(2*(n+1))))`
-/

namespace A080679.P4055038829256022261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A236185 (n + 3)) (A317301 (2 * (n + 1)))).toNat

end

end A080679.P4055038829256022261

noncomputable section

/-- A080679: Lexicographically earliest de Bruijn cycle of length 16 (repeated indefinitely).

Offset 0, canonical program `A080679.P4055038829256022261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A080679 (n : ℕ) : ℤ :=
  A080679.P4055038829256022261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A080679.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080751.P1467773457644653466

`A130174(n+2)-1`
-/

namespace A080751.P1467773457644653466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130174 (n + 2) - 1

end

end A080751.P1467773457644653466

noncomputable section

/-- A080751: a(n) is smallest number such that the sequence contains a total of a(n) base 10 digits + commas through n terms (assuming one comma between each pair of terms).

Offset 1, canonical program `A080751.P1467773457644653466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080751 (n : ℕ) : ℤ :=
  A080751.P1467773457644653466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080751.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082301.P10401527397071212757

`A078009(n)+4*A127848(n)`
-/

namespace A082301.P10401527397071212757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n + 4 * A127848 n

end

end A082301.P10401527397071212757

noncomputable section

/-- A082301: G.f.: (1 - 4*x - sqrt(16*x^2 - 12*x + 1))/(2*x).

Offset 0, canonical program `A082301.P10401527397071212757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A082301 (n : ℕ) : ℤ :=
  A082301.P10401527397071212757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A082301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082462.P2853247539008002354

`n-A074239(n)`
-/

namespace A082462.P2853247539008002354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A074239 n

end

end A082462.P2853247539008002354

noncomputable section

/-- A082462: Let chi(k) = 1 if prime(k+1) - prime(k) = 2, = 0 otherwise; sequence gives a(n) = Sum_{k <= n} chi(k).

Offset 1, canonical program `A082462.P2853247539008002354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082462 (n : ℕ) : ℤ :=
  A082462.P2853247539008002354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082494.P7337767156106625034

`1-A015910(n+1)+n`
-/

namespace A082494.P7337767156106625034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A015910 (n + 1) + (n : ℤ)

end

end A082494.P7337767156106625034

noncomputable section

/-- A082494: a(n) = n - (2^n (mod n)).

Offset 1, canonical program `A082494.P7337767156106625034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082494 (n : ℕ) : ℤ :=
  A082494.P7337767156106625034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082495.P8916257716192115176

`(A015910(n+1)+n)%(n+1)`
-/

namespace A082495.P8916257716192115176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A082495.P8916257716192115176

noncomputable section

/-- A082495: a(n) = (2^n - 1) mod n.

Offset 1, canonical program `A082495.P8916257716192115176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082495 (n : ℕ) : ℤ :=
  A082495.P8916257716192115176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082679.P7603607965199582567

`A221678(A028310(n))+n%2`
-/

namespace A082679.P7603607965199582567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221678 (A028310 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A082679.P7603607965199582567

noncomputable section

/-- A082679: Number of LEGO towers, one piece per floor, where every floor is perpendicular to the one below it (so we have a kind of 3-dimensional zigzag pattern).

Offset 0, canonical program `A082679.P7603607965199582567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A082679 (n : ℕ) : ℤ :=
  A082679.P7603607965199582567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A082679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082903.P1980760926334013284

`2^A336937(n+1)`
-/

namespace A082903.P1980760926334013284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A336937 (n + 1) : ℤ)

end

end A082903.P1980760926334013284

noncomputable section

/-- A082903: Highest power of two that divides the sum of divisors of n.

Offset 1, canonical program `A082903.P1980760926334013284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082903 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082903.P1980760926334013284.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082903.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A083243.P12650602988300709870

`lt[A045763(A028310(n)), n/2]`
-/

namespace A083243.P12650602988300709870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A028310 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A083243.P12650602988300709870

noncomputable section

/-- A083243: Numbers k for which there are more divisors and coprimes than other numbers less than k: A045763(k) < A073757(k) or A045763(k) < k/2 or A073757(k) > k/2.

Offset 1, canonical program `A083243.P12650602988300709870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6264 terms. -/
def A083243 (n : ℕ) : ℤ :=
  (A083243.P12650602988300709870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6264 terms. -/
def A083243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083244.P7512416555689218093

`lt[A008619(n), A045763(n+1)]+1`
-/

namespace A083244.P7512416555689218093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A083244.P7512416555689218093

noncomputable section

/-- A083244: k is in the sequence iff the number of numbers unrelated to k is larger than that of related ones[=divisors and coprimes] to k: A045763(k) > A073757(k) or A045763(k) > k/2 or A073757(k) < k/2.

Offset 1, canonical program `A083244.P7512416555689218093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. -/
def A083244 (n : ℕ) : ℤ :=
  (A083244.P7512416555689218093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. -/
def A083244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083531.P1022850084911545269

`Δ[A002191(n+1)]`
-/

namespace A083531.P1022850084911545269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083531.P1022850084911545269

noncomputable section

/-- A083531: First difference sequence of A002191. Differences between possible values for sum of divisors of n.

Offset 1, canonical program `A083531.P1022850084911545269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083531 (n : ℕ) : ℤ :=
  A083531.P1022850084911545269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083538.P2307610045054602990

`A060781(n+1)/A060780(n+1)`
-/

namespace A083538.P2307610045054602990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060781 (n + 1) : ℚ) / (A060780 (n + 1) : ℚ)

end

end A083538.P2307610045054602990

noncomputable section

/-- A083538: a(n) = sigma(n)*sigma(n+1)/gcd(sigma(n+1), sigma(n))^2.

Offset 1, canonical program `A083538.P2307610045054602990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083538.P2307610045054602990.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083538.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083890.P17438385976831224986

`∑{d}[n+1, (4%A054055(#))%2]`
-/

namespace A083890.P17438385976831224986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod 4 (A054055 d)) 2

end

end A083890.P17438385976831224986

noncomputable section

/-- A083890: Number of divisors of n with largest digit = 3 (base 10).

Offset 1, canonical program `A083890.P17438385976831224986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083890 (n : ℕ) : ℤ :=
  A083890.P17438385976831224986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083892.P9271966704018374742

`∑{d}[n+1, val(A054055(#), 5)]`
-/

namespace A083892.P9271966704018374742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 5

end

end A083892.P9271966704018374742

noncomputable section

/-- A083892: Number of divisors of n with largest digit = 5 (base 10).

Offset 1, canonical program `A083892.P9271966704018374742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083892 (n : ℕ) : ℤ :=
  (A083892.P9271966704018374742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083894.P9300796477055001593

`∑{d}[n+1, val(A054055(#), 7)]`
-/

namespace A083894.P9300796477055001593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 7

end

end A083894.P9300796477055001593

noncomputable section

/-- A083894: Number of divisors of n with largest digit = 7 (base 10).

Offset 1, canonical program `A083894.P9300796477055001593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083894 (n : ℕ) : ℤ :=
  (A083894.P9300796477055001593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083894.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084473.P18183717668493917912

`A084471(A084471(n+1))`
-/

namespace A084473.P18183717668493917912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (A084471 (n + 1)).toNat

end

end A084473.P18183717668493917912

noncomputable section

/-- A084473: Replace 0 with 0000 in binary representation of n.

Offset 1, canonical program `A084473.P18183717668493917912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A084473 (n : ℕ) : ℤ :=
  A084473.P18183717668493917912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A084473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084744.P4104311271369201504

`record[and(1-n, A085056(n+1))]`
-/

namespace A084744.P4104311271369201504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A085056 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084744.P4104311271369201504

noncomputable section

/-- A084744: Product of all composite numbers from 1 to the n-th nonprime number divided by product of all the prime divisors of each of those composite numbers which exceed the previously stated value.

Offset 1, canonical program `A084744.P4104311271369201504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A084744 (n : ℕ) : ℤ :=
  A084744.P4104311271369201504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A084744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084820.P7694671206461547684

`lt[A000203(n+1), A121048(n+1)]+1`
-/

namespace A084820.P7694671206461547684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A084820.P7694671206461547684

noncomputable section

/-- A084820: Numbers n such that n, sigma(n) and phi(n) form an integer triangle, where sigma=A000203 is the divisor sum and phi=A000010 the totient.

Offset 1, canonical program `A084820.P7694671206461547684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. -/
def A084820 (n : ℕ) : ℤ :=
  (A084820.P7694671206461547684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. -/
def A084820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084840.P2801589053806159802

`Δ[A091194(A179865(n+1))]`
-/

namespace A084840.P2801589053806159802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P2801589053806159802

noncomputable section

/-- A084840: Write the numbers 1, 2, ... in a triangle with n terms in the n-th row; a(n) = number of abundant integers in n-th row.

Offset 1, canonical program `A084840.P2801589053806159802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A084840 (n : ℕ) : ℤ :=
  A084840.P2801589053806159802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A084840.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085156.P15156798092046619024

`lt[C(A328830(n+1), 3), 3]+1`
-/

namespace A085156.P15156798092046619024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A328830 (n + 1)).toNat 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085156.P15156798092046619024

noncomputable section

/-- A085156: Powers of primes or powers of semiprimes.

Offset 1, canonical program `A085156.P15156798092046619024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A085156 (n : ℕ) : ℤ :=
  (A085156.P15156798092046619024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A085156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085431.P6345133048144332819

`Δ[A130291(n+1)]+ceil(2^(n-1))`
-/

namespace A085431.P6345133048144332819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A085431.P6345133048144332819

noncomputable section

/-- A085431: a(n) = (2^(n-1) + prime(n+1)-prime(n))/2.

Offset 1, canonical program `A085431.P6345133048144332819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A085431 (n : ℕ) : ℤ :=
  A085431.P6345133048144332819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A085431.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086747.P13306061048748773273

`char[A084471(n+1)]`
-/

namespace A086747.P13306061048748773273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086747.P13306061048748773273

noncomputable section

/-- A086747: Baum-Sweet sequence: a(n) = 1 if binary representation of n contains no block of consecutive zeros of odd length; otherwise a(n) = 0.

Offset 0, canonical program `A086747.P13306061048748773273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086747 (n : ℕ) : ℤ :=
  (A086747.P13306061048748773273.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086823.P4348796408001696709

`ceil(-A086831(n+1)/2)`
-/

namespace A086823.P4348796408001696709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((A086831 (n + 1) : ℚ) / 2)⌉

end

end A086823.P4348796408001696709

noncomputable section

/-- A086823: Coefficient of x^2 in the n-th cyclotomic polynomial. (The same as the coefficient of x^(phi(n)-2) ).

Offset 1, canonical program `A086823.P4348796408001696709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086823 (n : ℕ) : ℤ :=
  A086823.P4348796408001696709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086847.P18384454115483445332

`gcd(n+1, A215339(n+1))`
-/

namespace A086847.P18384454115483445332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A215339 (n + 1))

end

end A086847.P18384454115483445332

noncomputable section

/-- A086847: a(n) = gcd(A001608(n), n), where A001608 = Perrin sequence.

Offset 1, canonical program `A086847.P18384454115483445332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086847 (n : ℕ) : ℤ :=
  (A086847.P18384454115483445332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086847.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087105.P8815162481329446824

`A008864(n+1)*A156037(n+3)`
-/

namespace A087105.P8815162481329446824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A156037 (n + 3)

end

end A087105.P8815162481329446824

noncomputable section

/-- A087105: (prime(n-1) + 1)*(prime(n+1) - 1).

Offset 2, canonical program `A087105.P8815162481329446824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087105 (n : ℕ) : ℤ :=
  A087105.P8815162481329446824.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087105.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087737.P13738301560501439751

`A391588(n+2)+1`
-/

namespace A087737.P13738301560501439751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391588 (n + 2) + 1

end

end A087737.P13738301560501439751

noncomputable section

/-- A087737: Value of (n,n+1) concatenated in binary representation.

Offset 1, canonical program `A087737.P13738301560501439751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087737 (n : ℕ) : ℤ :=
  A087737.P13738301560501439751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087968.P5031325719775056046

`gcd(A066606(n+1)+1, (n+1)²)`
-/

namespace A087968.P5031325719775056046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066606 (n + 1) + 1) ((n + 1) ^ 2 : ℤ)

end

end A087968.P5031325719775056046

noncomputable section

/-- A087968: a(n) = gcd(1 + 2^n, n^2).

Offset 1, canonical program `A087968.P5031325719775056046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087968 (n : ℕ) : ℤ :=
  (A087968.P5031325719775056046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087968.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088308.P16348985359279735252

`(A060462(n+1)+1)%10`
-/

namespace A088308.P16348985359279735252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060462 (n + 1) + 1) 10

end

end A088308.P16348985359279735252

noncomputable section

/-- A088308: 2 followed by list of composite numbers mod 10.

Offset 1, canonical program `A088308.P16348985359279735252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088308 (n : ℕ) : ℤ :=
  A088308.P16348985359279735252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088308.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A088517.P6831708866838311153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088517 (n : ℕ) : ℤ :=
  A088517.P6831708866838311153.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001462, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088517.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088568.P4435102485503980091

`-A294448(n+1)`
-/

namespace A088568.P4435102485503980091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A294448 (n + 1)

end

end A088568.P4435102485503980091

noncomputable section

/-- A088568: 3*n - 2*(partial sums of Kolakoski sequence A000002).

Offset 1, canonical program `A088568.P4435102485503980091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088568 (n : ℕ) : ℤ :=
  A088568.P4435102485503980091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088568.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A088569.P6705758619599044298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088569 (n : ℕ) : ℤ :=
  A088569.P6705758619599044298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088570.P4359712251069015777

`(n%2+1)*A000002(n+1)`
-/

namespace A088570.P4359712251069015777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A000002 (n + 1)

end

end A088570.P4359712251069015777

noncomputable section

/-- A088570: Sum of terms in n-th block of Kolakoski sequence.

Offset 1, canonical program `A088570.P4359712251069015777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088570 (n : ℕ) : ℤ :=
  A088570.P4359712251069015777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088648.P8694410833616645006

`A314015(A004276(n))`
-/

namespace A088648.P8694410833616645006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 (A004276 n).toNat

end

end A088648.P8694410833616645006

noncomputable section

/-- A088648: a(1) = 1, then the smallest odd number not occurring earlier such that the concatenation a(r), a(s) is composite for all s > r.

Offset 0, canonical program `A088648.P8694410833616645006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1176 terms. -/
def A088648 (n : ℕ) : ℤ :=
  A088648.P8694410833616645006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1176 terms. -/
def A088648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088710.P3644724362584040461

`filter[A050704(n+2), A353799(#)]`
-/

namespace A088710.P3644724362584040461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A088710.P3644724362584040461

noncomputable section

/-- A088710: Numbers m which are a product of two primes j and k such that m-j-k is prime.

Offset 1, canonical program `A088710.P3644724362584040461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088710 (n : ℕ) : ℤ :=
  A088710.P3644724362584040461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088710.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A088841.P2753975684504278088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268354, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088841 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088841.P2753975684504278088.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268354, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088841.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A089820.P16018739911247489937

`2^(n+1)-A089819(n+1)`
-/

namespace A089820.P16018739911247489937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A089819 (n + 1)

end

end A089820.P16018739911247489937

noncomputable section

/-- A089820: Number of subsets of {1,..,n} containing at least one prime.

Offset 1, canonical program `A089820.P16018739911247489937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A089820 (n : ℕ) : ℤ :=
  A089820.P16018739911247489937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A089820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089822.P4169949727800120308

`A000217(A033270(n+1))*A089819(n+1)`
-/

namespace A089822.P4169949727800120308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033270 (n + 1)).toNat * A089819 (n + 1)

end

end A089822.P4169949727800120308

noncomputable section

/-- A089822: Number of subsets of {1,.., n} containing exactly two primes.

Offset 1, canonical program `A089822.P4169949727800120308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A089822 (n : ℕ) : ℤ :=
  A089822.P4169949727800120308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. -/
def A089822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089894.P1296047987516773958

`record[A000040(A093178(A213650(n+1)))]`
-/

namespace A089894.P1296047987516773958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A093178 (A213650 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089894.P1296047987516773958

noncomputable section

/-- A089894: Sum of primes <= p is even and sum is twice a prime.

Offset 0, canonical program `A089894.P1296047987516773958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A089894 (n : ℕ) : ℤ :=
  A089894.P1296047987516773958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A089894.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A090678.P5536893378797487758

`(-1)^floor(n/2)*A110037(n)`
-/

namespace A090678.P5536893378797487758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A110037 n : ℚ)

end

end A090678.P5536893378797487758

noncomputable section

/-- A090678: a(n) = A088567(n) mod 2.

Offset 0, canonical program `A090678.P5536893378797487758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090678 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090678.P5536893378797487758.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090712.P3233393408394611483

`p?[A031345(n+1)]`
-/

namespace A090712.P3233393408394611483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090712.P3233393408394611483

noncomputable section

/-- A090712: Primes whose base-13 expansion is a (valid) decimal expansion of a prime.

Offset 1, canonical program `A090712.P3233393408394611483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1366 terms. -/
def A090712 (n : ℕ) : ℤ :=
  A090712.P3233393408394611483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1366 terms. -/
def A090712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048899.P11859723561859631620

`A066601(5^n)`
-/

namespace A048899.P11859723561859631620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (5 ^ n)

end

end A048899.P11859723561859631620

noncomputable section

/-- A048899: One of the two successive approximations up to 5^n for 5-adic integer sqrt(-1).

Offset 0, canonical program `A048899.P11859723561859631620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048899 (n : ℕ) : ℤ :=
  A048899.P11859723561859631620.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054054.P2265909657191604686

`9-A054055(A061601(n))`
-/

namespace A054054.P2265909657191604686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A054055 (A061601 n).toNat

end

end A054054.P2265909657191604686

noncomputable section

/-- A054054: Smallest digit of n.

Offset 0, canonical program `A054054.P2265909657191604686`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, A061601, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054054 (n : ℕ) : ℤ :=
  A054054.P2265909657191604686.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, A061601, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055671.P14398958328813777781

`24*A055672(n)`
-/

namespace A055671.P14398958328813777781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A055672 n

end

end A055671.P14398958328813777781

noncomputable section

/-- A055671: Number of prime Hurwitz quaternions of norm n.

Offset 0, canonical program `A055671.P14398958328813777781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055671 (n : ℕ) : ℤ :=
  A055671.P14398958328813777781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061303.P10070890560532717022

`p?[A145190(n+1)+1]`
-/

namespace A061303.P10070890560532717022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061303.P10070890560532717022

noncomputable section

/-- A061303: Given a prime p, let s(p,0)=p and let s(p,n+1) be the smallest prime == 1 (mod s(p,n)). Let S(p) be the sequence {s(p,n): n=0,1,...}. Let a(0)=2 and let a(n+1) be the smallest prime not in any of the sequences S(a(0)), ..., S(a(n)).

Offset 0, canonical program `A061303.P10070890560532717022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A061303 (n : ℕ) : ℤ :=
  A061303.P10070890560532717022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A061303.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A063101.P351098770969771744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063101 (n : ℕ) : ℤ :=
  A063101.P351098770969771744.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063658.P13361969341098419175

`1-A063659(n+1)+n`
-/

namespace A063658.P13361969341098419175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063659 (n + 1) + (n : ℤ)

end

end A063658.P13361969341098419175

noncomputable section

/-- A063658: The number of integers m in [1..n] for which gcd(m,n) is divisible by a square greater than 1.

Offset 1, canonical program `A063658.P13361969341098419175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063658 (n : ℕ) : ℤ :=
  A063658.P13361969341098419175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065006.P13856800642416821077

`A300154(n+1)+A033638(A135711(n+1))`
-/

namespace A065006.P13856800642416821077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300154 (n + 1) + A033638 (A135711 (n + 1)).toNat

end

end A065006.P13856800642416821077

noncomputable section

/-- A065006: Integers for which the periodic part of the continued fraction for the square root of n begins with 3.

Offset 1, canonical program `A065006.P13856800642416821077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A065006 (n : ℕ) : ℤ :=
  A065006.P13856800642416821077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A065006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065367.P971973594092129975

`A065369(Δ[n²])-A065369(n)`
-/

namespace A065367.P971973594092129975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A065369 n

end

end A065367.P971973594092129975

noncomputable section

/-- A065367: Replace 3^k with (-3)^k in balanced ternary expansion of n.

Offset 1, canonical program `A065367.P971973594092129975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065367 (n : ℕ) : ℤ :=
  A065367.P971973594092129975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066192.P16422591706111342094

`A069519(n+3)`
-/

namespace A066192.P16422591706111342094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069519 (n + 3)

end

end A066192.P16422591706111342094

noncomputable section

/-- A066192: Composite numbers k such that the sum of the odd aliquot parts of k divides k.

Offset 1, canonical program `A066192.P16422591706111342094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. -/
def A066192 (n : ℕ) : ℤ :=
  A066192.P16422591706111342094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. -/
def A066192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066423.P13134788901235726609

`comp[A084116(n+1)-2]+2`
-/

namespace A066423.P13134788901235726609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A066423.P13134788901235726609

noncomputable section

/-- A066423: Composite numbers n such that the product of proper divisors of the n does not equal n.

Offset 1, canonical program `A066423.P13134788901235726609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066423 (n : ℕ) : ℤ :=
  (A066423.P13134788901235726609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066442.P8117985566055055991

`(A015910(n+1)*A066604(n+1))%(n+1)`
-/

namespace A066442.P8117985566055055991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) * A066604 (n + 1)) (n + 1 : ℤ)

end

end A066442.P8117985566055055991

noncomputable section

/-- A066442: a(n) = 12^n mod n.

Offset 1, canonical program `A066442.P8117985566055055991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066442 (n : ℕ) : ℤ :=
  A066442.P8117985566055055991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072502.P9604153156894014729

`eq[3, A318874(n+1)]+1`
-/

namespace A072502.P9604153156894014729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072502.P9604153156894014729

noncomputable section

/-- A072502: Numbers that are run sums (trapezoidal, the difference between two triangular numbers) in exactly 3 ways.

Offset 1, canonical program `A072502.P9604153156894014729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A072502 (n : ℕ) : ℤ :=
  (A072502.P9604153156894014729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A072502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073839.P2498259996426853723

`A101203(A163300(n+1))-A101203(n)`
-/

namespace A073839.P2498259996426853723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (A163300 (n + 1)).toNat - A101203 n

end

end A073839.P2498259996426853723

noncomputable section

/-- A073839: Sum of the composite numbers between n and 2n (both inclusive).

Offset 1, canonical program `A073839.P2498259996426853723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073839 (n : ℕ) : ℤ :=
  A073839.P2498259996426853723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074781.P18303126797779348735

`p?[2*A093641(n+1)+1]`
-/

namespace A074781.P18303126797779348735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074781.P18303126797779348735

noncomputable section

/-- A074781: Primes of the form p*2^k + 1 for any k and any prime p.

Offset 1, canonical program `A074781.P18303126797779348735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1336 terms. -/
def A074781 (n : ℕ) : ℤ :=
  A074781.P18303126797779348735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1336 terms. -/
def A074781.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080303.P9276496599391433279

`A084471(abs(1-A088697(n))+1)`
-/

namespace A080303.P9276496599391433279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (|1 - A088697 n| + 1).toNat

end

end A080303.P9276496599391433279

noncomputable section

/-- A080303: Rewrite 0->100 in the binary expansion of n.

Offset 0, canonical program `A080303.P9276496599391433279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A080303 (n : ℕ) : ℤ :=
  A080303.P9276496599391433279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A080303.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049092.P669335479257422354

`p?[A013929(n+1)+1]`
-/

namespace A049092.P669335479257422354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049092.P669335479257422354

noncomputable section

/-- A049092: Primes p such that p-1 is not squarefree.

Offset 1, canonical program `A049092.P669335479257422354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049092 (n : ℕ) : ℤ :=
  A049092.P669335479257422354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049509.P7256239216121761713

`A000720(A030432(n+1)+1)`
-/

namespace A049509.P7256239216121761713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030432 (n + 1) + 1).toNat

end

end A049509.P7256239216121761713

noncomputable section

/-- A049509: Numbers k such that prime(k) == 7 (mod 10).

Offset 1, canonical program `A049509.P7256239216121761713`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030432, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049509 (n : ℕ) : ℤ :=
  A049509.P7256239216121761713.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030432, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050449.P3812122387069373176

`∑{d}[n+1, #]-A082052(n+1)`
-/

namespace A050449.P3812122387069373176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A082052 (n + 1)

end

end A050449.P3812122387069373176

noncomputable section

/-- A050449: a(n) = Sum_{d|n, d == 1 (mod 4)} d.

Offset 1, canonical program `A050449.P3812122387069373176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050449 (n : ℕ) : ℤ :=
  A050449.P3812122387069373176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050465.P7394313666540459640

`∑{d}[n+1, A038189(#)*A308422((n+1)/#)]`
-/

namespace A050465.P7394313666540459640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038189 d * A308422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050465.P7394313666540459640

noncomputable section

/-- A050465: a(n) = Sum_{d|n, n/d=3 mod 4} d^2.

Offset 1, canonical program `A050465.P7394313666540459640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050465 (n : ℕ) : ℤ :=
  A050465.P7394313666540459640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050467.P5650740706338116116

`∑{d}[n+1, A001842(#)*A059377((n+1)/#)]`
-/

namespace A050467.P5650740706338116116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001842 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050467.P5650740706338116116

noncomputable section

/-- A050467: a(n) = Sum_{d|n, n/d=3 mod 4} d^4.

Offset 1, canonical program `A050467.P5650740706338116116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050467 (n : ℕ) : ℤ :=
  A050467.P5650740706338116116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054014.P4378508901305366923

`A048050(n+1)%Δ[A006218(n)]`
-/

namespace A054014.P4378508901305366923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (n + 1)) (f1 (n + 1) - f1 n)

end

end A054014.P4378508901305366923

noncomputable section

/-- A054014: Chowla function of n read modulo (the number of divisors of n).

Offset 1, canonical program `A054014.P4378508901305366923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054014 (n : ℕ) : ℤ :=
  A054014.P4378508901305366923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055736.P10735579288671413486

`A001221(n+1)-A055734(n+1)`
-/

namespace A055736.P10735579288671413486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A055734 (n + 1)

end

end A055736.P10735579288671413486

noncomputable section

/-- A055736: Difference between number of prime factors of n and of phi(n).

Offset 1, canonical program `A055736.P10735579288671413486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055736 (n : ℕ) : ℤ :=
  A055736.P10735579288671413486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056172.P4823837235628316593

`A000720(n+1)-A056171(n+1)`
-/

namespace A056172.P4823837235628316593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A056171 (n + 1)

end

end A056172.P4823837235628316593

noncomputable section

/-- A056172: Number of non-unitary prime divisors of n!.

Offset 1, canonical program `A056172.P4823837235628316593`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A056171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056172 (n : ℕ) : ℤ :=
  A056172.P4823837235628316593.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A056171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056672.P11089533315272226003

`2^A056171(n+1)`
-/

namespace A056672.P11089533315272226003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056171 (n + 1) : ℤ)

end

end A056672.P11089533315272226003

noncomputable section

/-- A056672: Number of unitary and squarefree divisors of n! Also, number of divisors of the special squarefree part of n!, A055773(n).

Offset 1, canonical program `A056672.P11089533315272226003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056672 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056672.P11089533315272226003.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056674.P17578094997466486638

`A034444(n+1)-A056671(n+1)`
-/

namespace A056674.P17578094997466486638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A056671 (n + 1)

end

end A056674.P17578094997466486638

noncomputable section

/-- A056674: Number of squarefree divisors which are not unitary. Also number of unitary divisors which are not squarefree.

Offset 1, canonical program `A056674.P17578094997466486638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056674 (n : ℕ) : ℤ :=
  A056674.P17578094997466486638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058188.P9072146060356888764

`A000720(A000040(n+1)+A000006(n+1))-(n+1)`
-/

namespace A058188.P9072146060356888764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) + A000006 (n + 1)).toNat - (n + 1 : ℤ)

end

end A058188.P9072146060356888764

noncomputable section

/-- A058188: Number of primes between prime(n) and prime(n) + sqrt(prime(n)), where prime(n) is the n-th prime.

Offset 1, canonical program `A058188.P9072146060356888764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9563 terms. -/
def A058188 (n : ℕ) : ℤ :=
  A058188.P9072146060356888764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9563 terms. -/
def A058188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060969.P5244792844776780560

`A000720(A017979(n))`
-/

namespace A060969.P5244792844776780560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A017979 n).toNat

end

end A060969.P5244792844776780560

noncomputable section

/-- A060969: Number of cubes of primes <= 2^n.

Offset 0, canonical program `A060969.P5244792844776780560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A017979, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060969 (n : ℕ) : ℤ :=
  A060969.P5244792844776780560.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A017979, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060971.P12339436187900354391

`A000720(A018117(n))`
-/

namespace A060971.P12339436187900354391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018117 n).toNat

end

end A060971.P12339436187900354391

noncomputable section

/-- A060971: Number of fifth powers of primes <= 2^n.

Offset 0, canonical program `A060971.P12339436187900354391`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A018117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060971 (n : ℕ) : ℤ :=
  A060971.P12339436187900354391.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A018117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A060971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061319.P10407569909786837890

`A061318(n)/4`
-/

namespace A061319.P10407569909786837890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061318 n : ℚ) / 4

end

end A061319.P10407569909786837890

noncomputable section

/-- A061319: Column 4 of A061315.

Offset 0, canonical program `A061319.P10407569909786837890`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061319.P10407569909786837890.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061399.P875585814381713750

`A046933(n+1)-A061398(n+1)`
-/

namespace A061399.P875585814381713750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - A061398 (n + 1)

end

end A061399.P875585814381713750

noncomputable section

/-- A061399: Number of nonsquarefree integers between primes prime(n) and prime(n+1).

Offset 1, canonical program `A061399.P875585814381713750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061399 (n : ℕ) : ℤ :=
  A061399.P875585814381713750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062974.P13804119697855287483

`lt[A001221(n+1), 2*A001221(A028310(n))]`
-/

namespace A062974.P13804119697855287483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062974.P13804119697855287483

noncomputable section

/-- A062974: Numbers k such that omega(k+1) < 2*omega(k), where omega(k) is the number of distinct prime divisors of k.

Offset 1, canonical program `A062974.P13804119697855287483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8254 terms. -/
def A062974 (n : ℕ) : ℤ :=
  (A062974.P13804119697855287483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8254 terms. -/
def A062974.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A063657.P9374789070347928920

`A377809(n+1)+1+n`
-/

namespace A063657.P9374789070347928920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) + 1 + (n : ℤ)

end

end A063657.P9374789070347928920

noncomputable section

/-- A063657: Numbers whose truncated square root is unequal to rounded square root.

Offset 1, canonical program `A063657.P9374789070347928920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063657 (n : ℕ) : ℤ :=
  A063657.P9374789070347928920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064489.P3294584178431202200

`1+A006880(A000040(n+1)-1)`
-/

namespace A064489.P3294584178431202200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A006880 (A000040 (n + 1) - 1).toNat

end

end A064489.P3294584178431202200

noncomputable section

/-- A064489: a(n) is the smallest number m such that prime(m) has prime(n) decimal digits.

Offset 1, canonical program `A064489.P3294584178431202200`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006880, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064489 (n : ℕ) : ℤ :=
  A064489.P3294584178431202200.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006880, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065515.P15129427044826637405

`A025528(n+1)+1`
-/

namespace A065515.P15129427044826637405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) + 1

end

end A065515.P15129427044826637405

noncomputable section

/-- A065515: Number of prime powers <= n.

Offset 1, canonical program `A065515.P15129427044826637405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065515 (n : ℕ) : ℤ :=
  A065515.P15129427044826637405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066087.P5805459573522421648

`A009223(n+1)-A066086(n+1)`
-/

namespace A066087.P5805459573522421648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1) - A066086 (n + 1)

end

end A066087.P5805459573522421648

noncomputable section

/-- A066087: a(n) = gcd(sigma(n), phi(n)) - gcd(sigma(rad(n)), phi(rad(n))); rad = A007947.

Offset 1, canonical program `A066087.P5805459573522421648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, A066086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066087 (n : ℕ) : ℤ :=
  A066087.P5805459573522421648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, A066086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066829.P3721516859256189271

`1-A065043(n+1)`
-/

namespace A066829.P3721516859256189271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065043 (n + 1)

end

end A066829.P3721516859256189271

noncomputable section

/-- A066829: Parity of Omega(n): a(n) = 1 if n is the product of an odd number of primes; 0 if product of even number of primes.

Offset 1, canonical program `A066829.P3721516859256189271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066829 (n : ℕ) : ℤ :=
  A066829.P3721516859256189271.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068360.P6452734454492579560

`lt[A061398(n+1), 1]+1`
-/

namespace A068360.P6452734454492579560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068360.P6452734454492579560

noncomputable section

/-- A068360: Numbers n such that there is no squarefree number between prime(n) and prime(n+1).

Offset 1, canonical program `A068360.P6452734454492579560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A068360 (n : ℕ) : ℤ :=
  (A068360.P6452734454492579560.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A068360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069082.P1777789710719873366

`eq[A009278(n+1), A272027(n+1)]+1`
-/

namespace A069082.P1777789710719873366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069082.P1777789710719873366

noncomputable section

/-- A069082: Numbers n such that sigma(n)/tau(n) has denominator 3.

Offset 1, canonical program `A069082.P1777789710719873366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A069082 (n : ℕ) : ℤ :=
  (A069082.P1777789710719873366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A069082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069637.P6505014191313825967

`A025528(n+1)-A000720(n+1)`
-/

namespace A069637.P6505014191313825967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) - A000720 (n + 1)

end

end A069637.P6505014191313825967

noncomputable section

/-- A069637: Number of prime powers <= n with exponents > 1.

Offset 1, canonical program `A069637.P6505014191313825967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A025528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069637 (n : ℕ) : ℤ :=
  A069637.P6505014191313825967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A025528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069903.P1607110552591832087

`A059957(n+1)-A133872(n)`
-/

namespace A069903.P1607110552591832087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059957 (n + 1) - A133872 n

end

end A069903.P1607110552591832087

noncomputable section

/-- A069903: Number of distinct prime factors of n-th triangular number.

Offset 1, canonical program `A069903.P1607110552591832087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069903 (n : ℕ) : ℤ :=
  A069903.P1607110552591832087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070549.P7239971299778395815

`A070548(n+1)-A002321(n+1)`
-/

namespace A070549.P7239971299778395815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (n + 1) - A002321 (n + 1)

end

end A070549.P7239971299778395815

noncomputable section

/-- A070549: a(n) = Cardinality{ k in range 1 <= k <= n such that Moebius(k) = -1 }.

Offset 1, canonical program `A070549.P7239971299778395815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, A070548, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070549 (n : ℕ) : ℤ :=
  A070549.P7239971299778395815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, A070548, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071594.P10797178062269911865

`eq[A001221(abs(1-n)+1), A000120(n)]`
-/

namespace A071594.P10797178062269911865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071594.P10797178062269911865

noncomputable section

/-- A071594: Numbers k such that the number of 1's in the binary representation of k equals omega(k), the number of distinct primes in the factorization of k.

Offset 1, canonical program `A071594.P10797178062269911865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A071594 (n : ℕ) : ℤ :=
  (A071594.P10797178062269911865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A071594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072731.P11631103641081885778

`A065855(n+1)-A000720(n+1)`
-/

namespace A072731.P11631103641081885778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A000720 (n + 1)

end

end A072731.P11631103641081885778

noncomputable section

/-- A072731: Difference of numbers of composite and prime numbers <= n.

Offset 1, canonical program `A072731.P11631103641081885778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072731 (n : ℕ) : ℤ :=
  A072731.P11631103641081885778.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073366.P891318373544082339

`A000040(n+4)%A065855(n+4)`
-/

namespace A073366.P891318373544082339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) (A065855 (n + 4))

end

end A073366.P891318373544082339

noncomputable section

/-- A073366: Remainder when n-th prime is divided by number of composites not exceeding n.

Offset 4, canonical program `A073366.P891318373544082339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A073366 (n : ℕ) : ℤ :=
  A073366.P891318373544082339.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A073366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073642.P15123079599203656975

`A029931(floor(n/2))`
-/

namespace A073642.P15123079599203656975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 ⌊(n : ℚ) / 2⌋.toNat

end

end A073642.P15123079599203656975

noncomputable section

/-- A073642: Replace 2^k in the binary representation of n with k (i.e., if n = 2^b + 2^c + 2^d + ... then a(n) = b + c + d + ...).

Offset 0, canonical program `A073642.P15123079599203656975`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073642 (n : ℕ) : ℤ :=
  A073642.P15123079599203656975.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073721.P5082412934630916663

`eq[0, A072548(n+2)]+2`
-/

namespace A073721.P5082412934630916663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072548 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073721.P5082412934630916663

noncomputable section

/-- A073721: Numbers k such that PrimePi(k) divides sigma(k).

Offset 1, canonical program `A073721.P5082412934630916663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A073721 (n : ℕ) : ℤ :=
  (A073721.P5082412934630916663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A073721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073798.P9052725351204481887

`record[(n+1)*(2-A000120(A000720(n+1)))]`
-/

namespace A073798.P9052725351204481887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A000120 (A000720 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073798.P9052725351204481887

noncomputable section

/-- A073798: pi(n) is a power of 2, where pi(n) = A000720(n) is the number of primes <= n.

Offset 1, canonical program `A073798.P9052725351204481887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A073798 (n : ℕ) : ℤ :=
  A073798.P9052725351204481887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A073798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074398.P1207880398526413608

`A230980(n)-A070804(n+1)`
-/

namespace A074398.P1207880398526413608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A070804 (n + 1)

end

end A074398.P1207880398526413608

noncomputable section

/-- A074398: Number of primes between n and phi(n), with neither n nor phi(n) included in the count in case they are primes.

Offset 1, canonical program `A074398.P1207880398526413608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074398 (n : ℕ) : ℤ :=
  A074398.P1207880398526413608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074905.P15432550881472388053

`Δ[A070548(p?[A165754(n)])]`
-/

namespace A074905.P15432550881472388053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074905.P15432550881472388053

noncomputable section

/-- A074905: a(n) = number of terms in A030229 between prime(n) and prime(n+1).

Offset 1, canonical program `A074905.P15432550881472388053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A074905 (n : ℕ) : ℤ :=
  A074905.P15432550881472388053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A074905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076361.P78704012862514364

`eq[0, A076360(n+1)]+1`
-/

namespace A076361.P78704012862514364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076361.P78704012862514364

noncomputable section

/-- A076361: Numbers k such that d(sigma(k)) = sigma(d(k)).

Offset 1, canonical program `A076361.P78704012862514364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A076361 (n : ℕ) : ℤ :=
  (A076361.P78704012862514364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A076361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076663.P9173981958373011071

`A024916(n+1)-A007429(n+1)`
-/

namespace A076663.P9173981958373011071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A007429 (n + 1)

end

end A076663.P9173981958373011071

noncomputable section

/-- A076663: a(n) = sum of sigma(e) where e ranges over all non-divisors of n that are between 1 and n.

Offset 1, canonical program `A076663.P9173981958373011071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A024916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076663 (n : ℕ) : ℤ :=
  A076663.P9173981958373011071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A024916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076663.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A076835.P15410372118314724071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076835 (n : ℕ) : ℤ :=
  A076835.P15410372118314724071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076835.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080160.P16608067545662280957

`∩[A080151(n+1), n²]`
-/

namespace A080160.P16608067545662280957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A080160.P16608067545662280957

noncomputable section

/-- A080160: Squares that are digit sums of Wonderful Demlo numbers A002477.

Offset 1, canonical program `A080160.P16608067545662280957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A080160 (n : ℕ) : ℤ :=
  (A080160.P16608067545662280957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A080160.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A080175.P5962583558788251147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080175 (n : ℕ) : ℤ :=
  A080175.P5962583558788251147.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080175.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080757.P8773996114739454746

`A007538(n+1)-1`
-/

namespace A080757.P8773996114739454746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1) - 1

end

end A080757.P8773996114739454746

noncomputable section

/-- A080757: First differences of Beatty sequence A022838(n) = floor(n sqrt(3)).

Offset 0, canonical program `A080757.P8773996114739454746`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080757 (n : ℕ) : ℤ :=
  A080757.P8773996114739454746.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081648.P17081280589634402769

`filter[A080151(n+1), A049240(#)]`
-/

namespace A081648.P17081280589634402769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A081648.P17081280589634402769

noncomputable section

/-- A081648: Integers congruent to 0, 1, 4, 9, 16, 25, 36, 49 or 64 (mod 81) which are not squares.

Offset 1, canonical program `A081648.P17081280589634402769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. -/
def A081648 (n : ℕ) : ℤ :=
  A081648.P17081280589634402769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. -/
def A081648.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083893.P9413967459148914952

`∑{d}[n+1, val(A054055(#), 6)]`
-/

namespace A083893.P9413967459148914952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 6

end

end A083893.P9413967459148914952

noncomputable section

/-- A083893: Number of divisors of n with largest digit = 6 (base 10).

Offset 1, canonical program `A083893.P9413967459148914952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083893 (n : ℕ) : ℤ :=
  (A083893.P9413967459148914952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083893.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085341.P15012125990235421062

`A070803(n+1)-A000720(n+1)`
-/

namespace A085341.P15012125990235421062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) - A000720 (n + 1)

end

end A085341.P15012125990235421062

noncomputable section

/-- A085341: Number of primes between sigma(n) and n inclusive.

Offset 1, canonical program `A085341.P15012125990235421062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085341 (n : ℕ) : ℤ :=
  A085341.P15012125990235421062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085343.P16599532433614219245

`A070803(n+1)-A070804(n+1)`
-/

namespace A085343.P16599532433614219245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) - A070804 (n + 1)

end

end A085343.P16599532433614219245

noncomputable section

/-- A085343: Number of primes between sigma(n) and phi(n) inclusive.

Offset 1, canonical program `A085343.P16599532433614219245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070803, A070804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085343 (n : ℕ) : ℤ :=
  A085343.P16599532433614219245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070803, A070804, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086156.P3117505780503088973

`A065764(n+1)-A064987(n+1)`
-/

namespace A086156.P3117505780503088973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1) - A064987 (n + 1)

end

end A086156.P3117505780503088973

noncomputable section

/-- A086156: a(n) = sigma(n^2) - n*sigma(n).

Offset 1, canonical program `A086156.P3117505780503088973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, A065764, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086156 (n : ℕ) : ℤ :=
  A086156.P3117505780503088973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, A065764, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086165.P5862930239187378690

`(A070919(n+1)-3*A048691(n+1)+2)/6`
-/

namespace A086165.P5862930239187378690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070919 (n + 1) - 3 * A048691 (n + 1) + 2 : ℚ) / 6

end

end A086165.P5862930239187378690

noncomputable section

/-- A086165: a(n) = |{ (x,y,z) | x < y < z and lcm(x,y,z) = n}|.

Offset 1, canonical program `A086165.P5862930239187378690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A070919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086165.P5862930239187378690.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A070919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086165.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A086682.P120960568963059901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055729, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086682 (n : ℕ) : ℤ :=
  A086682.P120960568963059901.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055729, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086682.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086688.P14877409127376688652

`A000720(A030078(n+1)+1)`
-/

namespace A086688.P14877409127376688652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030078 (n + 1) + 1).toNat

end

end A086688.P14877409127376688652

noncomputable section

/-- A086688: Number of primes < prime(n)^3.

Offset 1, canonical program `A086688.P14877409127376688652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086688 (n : ℕ) : ℤ :=
  A086688.P14877409127376688652.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086688.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086971.P8267424955413097261

`A056170(n+1)+A079275(n+1)`
-/

namespace A086971.P8267424955413097261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) + A079275 (n + 1)

end

end A086971.P8267424955413097261

noncomputable section

/-- A086971: Number of semiprime divisors of n.

Offset 1, canonical program `A086971.P8267424955413097261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A079275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086971 (n : ℕ) : ℤ :=
  A086971.P8267424955413097261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A079275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086971.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088545.P8435355440153886610

`A059929(n)*A099921(n+1)+1`
-/

namespace A088545.P8435355440153886610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n * A099921 (n + 1) + 1

end

end A088545.P8435355440153886610

noncomputable section

/-- A088545: Quotient Fibonacci(5*n)/(5*Fibonacci(n)), where Fibonacci(n) = A000045(n).

Offset 1, canonical program `A088545.P8435355440153886610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A088545 (n : ℕ) : ℤ :=
  A088545.P8435355440153886610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A088545.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A089821.P1761871828032168591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A089819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089821 (n : ℕ) : ℤ :=
  A089821.P1761871828032168591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A089819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090161.P6375457341241497267

`A000720(A023219(n+1)+1)`
-/

namespace A090161.P6375457341241497267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023219 (n + 1) + 1).toNat

end

end A090161.P6375457341241497267

noncomputable section

/-- A090161: A023219 indexed by A000040.

Offset 1, canonical program `A090161.P6375457341241497267`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A023219, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090161 (n : ℕ) : ℤ :=
  A090161.P6375457341241497267.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A023219, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090532.P3929399659927491439

`a(A065855(n+1))+1` with `a(0)=0`
-/

namespace A090532.P3929399659927491439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A065855 (n + 1)).toNat + 1

end

end A090532.P3929399659927491439

noncomputable section

/-- A090532: Let f(n) = n - pi(n) = A062298(n). Then a(n) = least number of steps such that f(f(...(n))) = 1.

Offset 1, canonical program `A090532.P3929399659927491439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090532 (n : ℕ) : ℤ :=
  (A090532.P3929399659927491439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048111.P1097856479310663445

`filter[A048108(n+1), A380454(#)]`
-/

namespace A048111.P1097856479310663445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P1097856479310663445

noncomputable section

/-- A048111: Number of unitary divisors of n (A034444) < number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048111.P1097856479310663445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6119 terms. -/
def A048111 (n : ℕ) : ℤ :=
  A048111.P1097856479310663445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6119 terms. -/
def A048111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049076.P17652482635542047239

`1+A078442(n+1)`
-/

namespace A049076.P17652482635542047239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A078442 (n + 1)

end

end A049076.P17652482635542047239

noncomputable section

/-- A049076: Number of steps in the prime index chain for the n-th prime.

Offset 1, canonical program `A049076.P17652482635542047239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049076 (n : ℕ) : ℤ :=
  A049076.P17652482635542047239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049097.P11962630923123470473

`p?[or(n, A008966(n+1))+n]`
-/

namespace A049097.P11962630923123470473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A008966 (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049097.P11962630923123470473

noncomputable section

/-- A049097: Primes p such that p+1 is squarefree.

Offset 1, canonical program `A049097.P11962630923123470473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6702 terms. -/
def A049097 (n : ℕ) : ℤ :=
  A049097.P11962630923123470473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6702 terms. -/
def A049097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050625.P8966498542950054992

`lt[A055642(n), A051064(n+1)]+1`
-/

namespace A050625.P8966498542950054992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050625.P8966498542950054992

noncomputable section

/-- A050625: Divisible by 3^k (where k is digit length of a(n)).

Offset 1, canonical program `A050625.P8966498542950054992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A050625 (n : ℕ) : ℤ :=
  (A050625.P8966498542950054992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A050625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053843.P17953415486736752166

`A010877(A053829(n))`
-/

namespace A053843.P17953415486736752166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A053829 n).toNat

end

end A053843.P17953415486736752166

noncomputable section

/-- A053843: (Sum of digits of n written in base 8) modulo 8.

Offset 0, canonical program `A053843.P17953415486736752166`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053843 (n : ℕ) : ℤ :=
  A053843.P17953415486736752166.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055076.P11566696520778035390

`2^A162642(n+1)`
-/

namespace A055076.P11566696520778035390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A162642 (n + 1) : ℤ)

end

end A055076.P11566696520778035390

noncomputable section

/-- A055076: Multiplicity of Max{gcd(d, n/d)} when d runs over divisors of n.

Offset 1, canonical program `A055076.P11566696520778035390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055076.P11566696520778035390.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055473.P15962732397737186787

`A007088(A011557(n))`
-/

namespace A055473.P15962732397737186787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A011557 n).toNat

end

end A055473.P15962732397737186787

noncomputable section

/-- A055473: Powers of ten written in base 2.

Offset 0, canonical program `A055473.P15962732397737186787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055473 (n : ℕ) : ℤ :=
  A055473.P15962732397737186787.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055653.P4028281182971921591

`∑{d}[n+1, #*A395496((n+1)/#)]`
-/

namespace A055653.P4028281182971921591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A395496 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055653.P4028281182971921591

noncomputable section

/-- A055653: Sum of phi(d) [A000010] over all unitary divisors d of n (that is, gcd(d,n/d) = 1).

Offset 1, canonical program `A055653.P4028281182971921591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055653 (n : ℕ) : ℤ :=
  A055653.P4028281182971921591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056549.P512568632204534587

`A062550(n)-A006218(n)`
-/

namespace A056549.P512568632204534587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n - A006218 n

end

end A056549.P512568632204534587

noncomputable section

/-- A056549: a(n) = Sum_{k>=1} round(n/k) where round(1/2)=1.

Offset 0, canonical program `A056549.P512568632204534587`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A062550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056549 (n : ℕ) : ℤ :=
  A056549.P512568632204534587.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A062550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057855.P7669606676416420834

`A065313(A000040(n+1))`
-/

namespace A057855.P7669606676416420834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A000040 (n + 1)).toNat

end

end A057855.P7669606676416420834

noncomputable section

/-- A057855: Greatest k such that (k-th prime) <= (n times n-th prime).

Offset 1, canonical program `A057855.P7669606676416420834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057855 (n : ℕ) : ℤ :=
  A057855.P7669606676416420834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057855.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060150.P5157050367033873665

`A088218(n)²`
-/

namespace A060150.P5157050367033873665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n ^ 2

end

end A060150.P5157050367033873665

noncomputable section

/-- A060150: a(0) = 1; for n > 0, binomial(2n-1, n-1)^2.

Offset 0, canonical program `A060150.P5157050367033873665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060150 (n : ℕ) : ℤ :=
  A060150.P5157050367033873665.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060150.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A061884.P16971839620340354771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A057670, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061884.P16971839620340354771.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A057670, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063009.P15492951971823313216

`A007088(n)²`
-/

namespace A063009.P15492951971823313216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n ^ 2

end

end A063009.P15492951971823313216

noncomputable section

/-- A063009: Write n in binary then square as if written in base 10.

Offset 0, canonical program `A063009.P15492951971823313216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063009 (n : ℕ) : ℤ :=
  A063009.P15492951971823313216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063736.P12274259142301944562

`4*A008966(4*n+1)+2*A008966(4*n+2)+A008966(4*n+3)`
-/

namespace A063736.P12274259142301944562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008966 (4 * n + 1) + 2 * A008966 (4 * n + 2) + A008966 (4 * n + 3)

end

end A063736.P12274259142301944562

noncomputable section

/-- A063736: To get a(n), the pattern of the possible squarefree triple (4n+1, 4n+2, 4n+3) is coded as follows: compute A008966(x) getting one of {000, 001, 010, 011, 100, 101, 110, 111} and convert from binary.

Offset 0, canonical program `A063736.P12274259142301944562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063736 (n : ℕ) : ℤ :=
  A063736.P12274259142301944562.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065328.P3641646369412658988

`A334614(n+1)-(n+1)`
-/

namespace A065328.P3641646369412658988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334614 (n + 1) - (n + 1 : ℤ)

end

end A065328.P3641646369412658988

noncomputable section

/-- A065328: a(n) is the number of primes less than or equal to prime(n) - n.

Offset 1, canonical program `A065328.P3641646369412658988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065328 (n : ℕ) : ℤ :=
  A065328.P3641646369412658988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066335.P12188652827000201606

`A007088(xor(3, n+3))`
-/

namespace A066335.P12188652827000201606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.xor 3 (n + 3))

end

end A066335.P12188652827000201606

noncomputable section

/-- A066335: Binary string which equals n when 1's and 2's bits have negative weights.

Offset 0, canonical program `A066335.P12188652827000201606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066335 (n : ℕ) : ℤ :=
  A066335.P12188652827000201606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069723.P7209051585346191421

`2^n*A088218(n)`
-/

namespace A069723.P7209051585346191421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A088218 n

end

end A069723.P7209051585346191421

noncomputable section

/-- A069723: a(n) = 2^(n-1)*binomial(2*n-3, n-1).

Offset 1, canonical program `A069723.P7209051585346191421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069723 (n : ℕ) : ℤ :=
  A069723.P7209051585346191421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071575.P1413525790656994869

`A076640(n+1)-1`
-/

namespace A071575.P1413525790656994869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076640 (n + 1) - 1

end

end A071575.P1413525790656994869

noncomputable section

/-- A071575: Number of iterations of cototient(n) needed to reach 1 (cototient(n) = n-phi(n)).

Offset 1, canonical program `A071575.P1413525790656994869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071575 (n : ℕ) : ℤ :=
  A071575.P1413525790656994869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071998.P8978306300852152956

`A007088(A007088(n))`
-/

namespace A071998.P8978306300852152956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A007088 n).toNat

end

end A071998.P8978306300852152956

noncomputable section

/-- A071998: Write n in binary, interpret that as a decimal number, convert back to binary.

Offset 0, canonical program `A071998.P8978306300852152956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071998 (n : ℕ) : ℤ :=
  A071998.P8978306300852152956.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074823.P11429893750671731771

`A034444(n+1)*A008966(n+1)`
-/

namespace A074823.P11429893750671731771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A008966 (n + 1)

end

end A074823.P11429893750671731771

noncomputable section

/-- A074823: a(n) = 2^omega(n)*mu(n)^2.

Offset 1, canonical program `A074823.P11429893750671731771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074823 (n : ℕ) : ℤ :=
  A074823.P11429893750671731771.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074823.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A077106.P1018111266842401741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077106 (n : ℕ) : ℤ :=
  A077106.P1018111266842401741.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100196, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077106.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A077598.P2942604265624404829

`∑[A143356(n+1)-A131089(n+1)]`
-/

namespace A077598.P2942604265624404829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143356 (n + 1) - A131089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077598.P2942604265624404829

noncomputable section

/-- A077598: Coefficient of x^2 in the n-th Moebius polynomial (A074586), M(n,x), which satisfies M(n,-1)=mu(n) the Moebius function of n.

Offset 1, canonical program `A077598.P2942604265624404829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077598 (n : ℕ) : ℤ :=
  A077598.P2942604265624404829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077598.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084472.P1373641878596819009

`A007088(A084471(n+1))`
-/

namespace A084472.P1373641878596819009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084471 (n + 1)).toNat

end

end A084472.P1373641878596819009

noncomputable section

/-- A084472: Write n in binary and replace 0 with 00.

Offset 1, canonical program `A084472.P1373641878596819009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A084472 (n : ℕ) : ℤ :=
  A084472.P1373641878596819009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A084472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087244.P11901955224837126207

`filter[A013929(n+1), A294934(#)]`
-/

namespace A087244.P11901955224837126207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087244.P11901955224837126207

noncomputable section

/-- A087244: Nonsquarefree deficient numbers.

Offset 1, canonical program `A087244.P11901955224837126207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5076 terms. -/
def A087244 (n : ℕ) : ℤ :=
  A087244.P11901955224837126207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5076 terms. -/
def A087244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089631.P9146961677256787666

`A007947(n+1)%A173557(n+1)`
-/

namespace A089631.P9146961677256787666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007947 (n + 1)) (A173557 (n + 1))

end

end A089631.P9146961677256787666

noncomputable section

/-- A089631: a(n) = (Product_{p is a prime factor of n} p) mod (Product_{p is a prime factor of n} p-1).

Offset 1, canonical program `A089631.P9146961677256787666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089631 (n : ℕ) : ℤ :=
  A089631.P9146961677256787666.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089631.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063735.P13700721079844602380

`∩[A204826(n+1), n²]`
-/

namespace A063735.P13700721079844602380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063735.P13700721079844602380

noncomputable section

/-- A063735: Square deficient numbers.

Offset 1, canonical program `A063735.P13700721079844602380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3040 terms. -/
def A063735 (n : ℕ) : ℤ :=
  (A063735.P13700721079844602380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3040 terms. -/
def A063735.provenance : SequenceMachineLib.Provenance := .conjectured

