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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A271528.P1606489720865875831

`A002276(n)*A002277(n)`
-/

namespace A271528.P1606489720865875831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n * A002277 n

end

end A271528.P1606489720865875831

noncomputable section

/-- A271528: a(n) = 2*(10^n - 1)^2/27.

Offset 0, canonical program `A271528.P1606489720865875831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271528 (n : ℕ) : ℤ :=
  A271528.P1606489720865875831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271785.P11021279405485774573

`A006355(n+1)+A001629(n+1)`
-/

namespace A271785.P11021279405485774573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + A001629 (n + 1)

end

end A271785.P11021279405485774573

noncomputable section

/-- A271785: a(n) = Sum_{k=0..(n-1)/2} (n+2-k)*binomial(n-1-k,k).

Offset 0, canonical program `A271785.P11021279405485774573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271785 (n : ℕ) : ℤ :=
  A271785.P11021279405485774573.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272027.P17950759033993077215

`3*A000203(n+1)`
-/

namespace A272027.P17950759033993077215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000203 (n + 1)

end

end A272027.P17950759033993077215

noncomputable section

/-- A272027: a(n) = 3*sigma(n).

Offset 1, canonical program `A272027.P17950759033993077215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272027 (n : ℕ) : ℤ :=
  A272027.P17950759033993077215.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272123.P3384884903232359567

`A014445(n)-A001906(n)`
-/

namespace A272123.P3384884903232359567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A001906 n

end

end A272123.P3384884903232359567

noncomputable section

/-- A272123: a(n) = Fibonacci(3n) - Fibonacci(2n).

Offset 0, canonical program `A272123.P3384884903232359567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272123 (n : ℕ) : ℤ :=
  A272123.P3384884903232359567.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272263.P14829198746395316325

`A087131(n)-1`
-/

namespace A272263.P14829198746395316325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n - 1

end

end A272263.P14829198746395316325

noncomputable section

/-- A272263: a(n) = numerator of A000032(n) - 1/2^n.

Offset 0, canonical program `A272263.P14829198746395316325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272263 (n : ℕ) : ℤ :=
  A272263.P14829198746395316325.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272439.P9688275424147345473

`A000203(A000032(n))`
-/

namespace A272439.P9688275424147345473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000032 n).toNat

end

end A272439.P9688275424147345473

noncomputable section

/-- A272439: Sum of positive divisors of A000032(n).

Offset 0, canonical program `A272439.P9688275424147345473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272439 (n : ℕ) : ℤ :=
  A272439.P9688275424147345473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272666.P12795134577239707157

`A011371(n)+5*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272666.P12795134577239707157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (5 * n : ℤ)

end

end A272666.P12795134577239707157

noncomputable section

/-- A272666: a(n) = A011371(n) + 5*n.

Offset 0, canonical program `A272666.P12795134577239707157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272666 (n : ℕ) : ℤ :=
  A272666.P12795134577239707157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273055.P2819132108516866513

`A002426(2*n+1)`
-/

namespace A273055.P2819132108516866513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (2 * n + 1)

end

end A273055.P2819132108516866513

noncomputable section

/-- A273055: a(n) = Sum_{k=0..n} binomial(2*k, k) * binomial(2*n+1, 2*k).

Offset 0, canonical program `A273055.P2819132108516866513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273055 (n : ℕ) : ℤ :=
  A273055.P2819132108516866513.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273187.P6364872259732564638

`24+25*A001541(n+1)`
-/

namespace A273187.P6364872259732564638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 + 25 * A001541 (n + 1)

end

end A273187.P6364872259732564638

noncomputable section

/-- A273187: a(n) is the third number in a triple consisting of 3 numbers, which when squared are part of a right diagonal of magic square of squares.

Offset 0, canonical program `A273187.P6364872259732564638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273187 (n : ℕ) : ℤ :=
  A273187.P6364872259732564638.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273372.P12936546350182690504

`A090771(n+1)²`
-/

namespace A273372.P12936546350182690504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) ^ 2

end

end A273372.P12936546350182690504

noncomputable section

/-- A273372: Squares ending in digit 1.

Offset 1, canonical program `A273372.P12936546350182690504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273372 (n : ℕ) : ℤ :=
  A273372.P12936546350182690504.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273372.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273373.P16330932660018588641

`A090773(n+1)²`
-/

namespace A273373.P16330932660018588641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1) ^ 2

end

end A273373.P16330932660018588641

noncomputable section

/-- A273373: Squares ending in digit 6.

Offset 1, canonical program `A273373.P16330932660018588641`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273373 (n : ℕ) : ℤ :=
  A273373.P16330932660018588641.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273373.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273397.P6776923368005567381

`A000045(A000108(n))`
-/

namespace A273397.P6776923368005567381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000108 n).toNat

end

end A273397.P6776923368005567381

noncomputable section

/-- A273397: a(n) = Fibonacci(Catalan(n)).

Offset 0, canonical program `A273397.P6776923368005567381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273397 (n : ℕ) : ℤ :=
  A273397.P6776923368005567381.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273398.P14451358136939616418

`A000108(A000045(n))`
-/

namespace A273398.P14451358136939616418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A000045 n).toNat

end

end A273398.P14451358136939616418

noncomputable section

/-- A273398: a(n) = Catalan(Fibonacci(n)).

Offset 0, canonical program `A273398.P14451358136939616418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273398 (n : ℕ) : ℤ :=
  A273398.P14451358136939616418.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273398.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273399.P2234011479383046362

`A000108(A000108(n))`
-/

namespace A273399.P2234011479383046362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A000108 n).toNat

end

end A273399.P2234011479383046362

noncomputable section

/-- A273399: a(n) = Catalan(Catalan(n)).

Offset 0, canonical program `A273399.P2234011479383046362`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273399 (n : ℕ) : ℤ :=
  A273399.P2234011479383046362.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273399.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273820.P12866763565535476415

`A003418(2^(n+1)-1)`
-/

namespace A273820.P12866763565535476415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (2 ^ (n + 1) - 1)

end

end A273820.P12866763565535476415

noncomputable section

/-- A273820: Least common multiple of (2^n, 2^n + 1, ..., 2^(n+1) - 1).

Offset 0, canonical program `A273820.P12866763565535476415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273820 (n : ℕ) : ℤ :=
  A273820.P12866763565535476415.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274104.P7123589224199202206

`A014137(n+1)+(n+1)*A000108(n+1)-1`
-/

namespace A274104.P7123589224199202206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (n + 1) + (n + 1 : ℤ) * A000108 (n + 1) - 1

end

end A274104.P7123589224199202206

noncomputable section

/-- A274104: a(n) = Sum_{k=0..n} (3*k+2)*Catalan(k).

Offset 0, canonical program `A274104.P7123589224199202206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274104 (n : ℕ) : ℤ :=
  A274104.P7123589224199202206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274325.P6992868875536074226

`A008619(n^5)`
-/

namespace A274325.P6992868875536074226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n ^ 5)

end

end A274325.P6992868875536074226

noncomputable section

/-- A274325: Number of partitions of n^5 into at most two parts.

Offset 0, canonical program `A274325.P6992868875536074226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274325 (n : ℕ) : ℤ :=
  A274325.P6992868875536074226.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274535.P4233430454223343819

`5*A000203(n+1)`
-/

namespace A274535.P4233430454223343819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000203 (n + 1)

end

end A274535.P4233430454223343819

noncomputable section

/-- A274535: a(n) = 5*sigma(n).

Offset 1, canonical program `A274535.P4233430454223343819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274535 (n : ℕ) : ℤ :=
  A274535.P4233430454223343819.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274743.P15261242372237878952

`99*A100706(n)`
-/

namespace A274743.P15261242372237878952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  99 * A100706 n

end

end A274743.P15261242372237878952

noncomputable section

/-- A274743: Repunits with odd indices multiplied by 99, i.e., 99*(1, 111, 11111, 1111111, ...).

Offset 1, canonical program `A274743.P15261242372237878952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274743 (n : ℕ) : ℤ :=
  A274743.P15261242372237878952.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275704.P12174991893892858084

`A010888(A028387(n))`
-/

namespace A275704.P12174991893892858084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A028387 n).toNat

end

end A275704.P12174991893892858084

noncomputable section

/-- A275704: Digital root of n + (n+1)^2.

Offset 0, canonical program `A275704.P12174991893892858084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275704 (n : ℕ) : ℤ :=
  A275704.P12174991893892858084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275854.P5496768946083056562

`A000124(n)^n`
-/

namespace A275854.P5496768946083056562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ n

end

end A275854.P5496768946083056562

noncomputable section

/-- A275854: Number of labeled directed graphs on n nodes (allowing self loops) such that the out-degree of each node is at most 2.

Offset 0, canonical program `A275854.P5496768946083056562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275854 (n : ℕ) : ℤ :=
  A275854.P5496768946083056562.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276095.P7997153681006801748

`A072878(n+1)²`
-/

namespace A276095.P7997153681006801748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072878 (n + 1) ^ 2

end

end A276095.P7997153681006801748

noncomputable section

/-- A276095: A nonlinear recurrence of order 4: a(1)=a(2)=a(3)=a(4)=1; a(n)=(a(n-1)+a(n-2)+a(n-3))^2/a(n-4).

Offset 1, canonical program `A276095.P7997153681006801748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276095 (n : ℕ) : ℤ :=
  A276095.P7997153681006801748.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276097.P18322687685694777596

`A072879(n+1)²`
-/

namespace A276097.P18322687685694777596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072879 (n + 1) ^ 2

end

end A276097.P18322687685694777596

noncomputable section

/-- A276097: A nonlinear recurrence of order 5: a(1)=a(2)=a(3)=a(4)=a(5)=1; a(n)=(a(n-1)+a(n-2)+a(n-3)+a(n-4))^2/a(n-5).

Offset 1, canonical program `A276097.P18322687685694777596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276097 (n : ℕ) : ℤ :=
  A276097.P18322687685694777596.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276256.P16495692336009215844

`A276258(n+1)²`
-/

namespace A276256.P16495692336009215844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276258 (n + 1) ^ 2

end

end A276256.P16495692336009215844

noncomputable section

/-- A276256: A nonlinear recurrence of order 3: a(1)=a(2)=a(3)=1; a(n)=(a(n-1)+a(n-2)+1)^2/a(n-3).

Offset 1, canonical program `A276256.P16495692336009215844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276256 (n : ℕ) : ℤ :=
  A276256.P16495692336009215844.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276257.P7331088886659733407

`A276259(n+1)²`
-/

namespace A276257.P7331088886659733407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276259 (n + 1) ^ 2

end

end A276257.P7331088886659733407

noncomputable section

/-- A276257: a(1) = a(2) = a(3) = a(4) = 1; for n>4, a(n) = ( a(n-1)+a(n-2)+a(n-3)+1 )^2 / a(n-4).

Offset 1, canonical program `A276257.P7331088886659733407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276257 (n : ℕ) : ℤ :=
  A276257.P7331088886659733407.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276352.P13165668755201636260

`A002283(n)*A011557(n)`
-/

namespace A276352.P13165668755201636260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n * A011557 n

end

end A276352.P13165668755201636260

noncomputable section

/-- A276352: a(n) = 100^n - 10^n.

Offset 0, canonical program `A276352.P13165668755201636260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276352 (n : ℕ) : ℤ :=
  A276352.P13165668755201636260.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276453.P9955206926902377942

`A051786(n)*A051786(n+1)*A051786(n+2)`
-/

namespace A276453.P9955206926902377942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051786 n * A051786 (n + 1) * A051786 (n + 2)

end

end A276453.P9955206926902377942

noncomputable section

/-- A276453: a(n) = (a(n-1)+1)*(a(n-2)+1)*(a(n-3)+1)/a(n-4) with a(0) = a(1) = 1, a(2) = 2, a(3) = 6.

Offset 0, canonical program `A276453.P9955206926902377942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276453 (n : ℕ) : ℤ :=
  A276453.P9955206926902377942.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276482.P11782156945687614591

`A000142(n)*A008548(n)`
-/

namespace A276482.P11782156945687614591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A008548 n

end

end A276482.P11782156945687614591

noncomputable section

/-- A276482: a(n) = 5^n*Gamma(n+1/5)*Gamma(n+1)/Gamma(1/5).

Offset 0, canonical program `A276482.P11782156945687614591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276482 (n : ℕ) : ℤ :=
  A276482.P11782156945687614591.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276785.P5311190698958443462

`2^n-A210021(n)`
-/

namespace A276785.P5311190698958443462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A210021 n

end

end A276785.P5311190698958443462

noncomputable section

/-- A276785: Number of binary strings of length n containing the substring 11011.

Offset 0, canonical program `A276785.P5311190698958443462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276785 (n : ℕ) : ℤ :=
  A276785.P5311190698958443462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276914.P5782440633712661028

`n²+2*A000217(A052928(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276914.P5782440633712661028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A000217 (A052928 n).toNat

end

end A276914.P5782440633712661028

noncomputable section

/-- A276914: Subsequence of triangular numbers obtained by adding a square and two smaller triangles, a(n) = n^2 + 2*A000217(A052928(n)).

Offset 0, canonical program `A276914.P5782440633712661028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276914 (n : ℕ) : ℤ :=
  A276914.P5782440633712661028.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276960.P2113863334697293408

`A000262(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276960.P2113863334697293408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n ^ 2

end

end A276960.P2113863334697293408

noncomputable section

/-- A276960: a(n) = A000262(n)^2.

Offset 0, canonical program `A276960.P2113863334697293408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276960 (n : ℕ) : ℤ :=
  A276960.P2113863334697293408.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276964.P13301482771124687693

`A000262(n)*A000262(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276964.P13301482771124687693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A000262 (n + 1)

end

end A276964.P13301482771124687693

noncomputable section

/-- A276964: a(n) = A000262(n)*A000262(n+1).

Offset 0, canonical program `A276964.P13301482771124687693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276964 (n : ℕ) : ℤ :=
  A276964.P13301482771124687693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277105.P4249415682091381104

`9*A116970(n+2)`
-/

namespace A277105.P4249415682091381104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A116970 (n + 2)

end

end A277105.P4249415682091381104

noncomputable section

/-- A277105: a(n) = (27*3^n - 63)/2.

Offset 1, canonical program `A277105.P4249415682091381104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277105 (n : ℕ) : ℤ :=
  A277105.P4249415682091381104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277107.P9625676167116120969

`96*A003462(n)`
-/

namespace A277107.P9625676167116120969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  96 * A003462 n

end

end A277107.P9625676167116120969

noncomputable section

/-- A277107: a(n) = 16*3^n - 48.

Offset 1, canonical program `A277107.P9625676167116120969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277107 (n : ℕ) : ℤ :=
  A277107.P9625676167116120969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277823.P16868301371846557949

`A048724(A065621(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277823.P16868301371846557949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A065621 (n + 1)).toNat

end

end A277823.P16868301371846557949

noncomputable section

/-- A277823: a(n) = A048724(A065621(n)).

Offset 1, canonical program `A277823.P16868301371846557949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277823 (n : ℕ) : ℤ :=
  A277823.P16868301371846557949.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277825.P4005437013768950350

`A048725(A065621(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277825.P4005437013768950350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A065621 (n + 1)).toNat

end

end A277825.P4005437013768950350

noncomputable section

/-- A277825: a(n) = A048725(A065621(n)) = A048720(A065621(n),5).

Offset 1, canonical program `A277825.P4005437013768950350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277825 (n : ℕ) : ℤ :=
  A277825.P4005437013768950350.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277825.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279260.P12155716219962346154

`6*A084175(n)`
-/

namespace A279260.P12155716219962346154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A084175 n

end

end A279260.P12155716219962346154

noncomputable section

/-- A279260: Numbers which are cyclops palindromic in their binary reflected Gray code representation.

Offset 0, canonical program `A279260.P12155716219962346154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279260 (n : ℕ) : ℤ :=
  A279260.P12155716219962346154.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279816.P9335264018930352382

`A010888(A000292(n))`
-/

namespace A279816.P9335264018930352382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A000292 n).toNat

end

end A279816.P9335264018930352382

noncomputable section

/-- A279816: Digital roots of tetrahedral numbers (A000292).

Offset 0, canonical program `A279816.P9335264018930352382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279816 (n : ℕ) : ℤ :=
  A279816.P9335264018930352382.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279895.P8982875468907171124

`A000566(n)+7*n`
-/

namespace A279895.P8982875468907171124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n + (7 * n : ℤ)

end

end A279895.P8982875468907171124

noncomputable section

/-- A279895: a(n) = n*(5*n + 11)/2.

Offset 0, canonical program `A279895.P8982875468907171124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279895 (n : ℕ) : ℤ :=
  A279895.P8982875468907171124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280057.P4993139028131818465

`(-1)^n*A257174(n)`
-/

namespace A280057.P4993139028131818465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257174 n

end

end A280057.P4993139028131818465

noncomputable section

/-- A280057: a(n) = (-1)^n * 4*n/3 if n = 3*k and n!=0, otherwise a(n) = (-1)^n * n except a(0) = 1.

Offset 0, canonical program `A280057.P4993139028131818465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280057 (n : ℕ) : ℤ :=
  A280057.P4993139028131818465.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280426.P4387657100138312277

`A010888(A000078(n))`
-/

namespace A280426.P4387657100138312277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A000078 n).toNat

end

end A280426.P4387657100138312277

noncomputable section

/-- A280426: Digital roots of tetranacci numbers A000078.

Offset 0, canonical program `A280426.P4387657100138312277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280426 (n : ℕ) : ℤ :=
  A280426.P4387657100138312277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281006.P4753203276795461863

`A000203(n+1)-A052928(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A281006.P4753203276795461863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A052928 n

end

end A281006.P4753203276795461863

noncomputable section

/-- A281006: a(n) = A000203(n) - A052928(n-1).

Offset 1, canonical program `A281006.P4753203276795461863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281006 (n : ℕ) : ℤ :=
  A281006.P4753203276795461863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281500.P2681938232247418297

`a(n-2)+A117856(n+1)` with `a(0)=2, a(1)=3`
-/

namespace A281500.P2681938232247418297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + A117856 (n + 1)

end

end A281500.P2681938232247418297

noncomputable section

/-- A281500: Reduced denominators of f(n) = (n+1)/(2^(2+n)-2) with A026741(n+1) as numerators.

Offset 0, canonical program `A281500.P2681938232247418297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281500 (n : ℕ) : ℤ :=
  A281500.P2681938232247418297.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A282162.P18356065537090708922

`1+A001468(n)`
-/

namespace A282162.P18356065537090708922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001468 n

end

end A282162.P18356065537090708922

noncomputable section

/-- A282162: Difference sequence of the upper Wythoff sequence, A001950, with 2 prepended.

Offset 0, canonical program `A282162.P18356065537090708922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282162 (n : ℕ) : ℤ :=
  A282162.P18356065537090708922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283208.P4144003533356594521

`A005187(n+1)-1`
-/

namespace A283208.P4144003533356594521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - 1

end

end A283208.P4144003533356594521

noncomputable section

/-- A283208: Minimal exponent integer sequence associated with Vietoris sequence.

Offset 0, canonical program `A283208.P4144003533356594521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283208 (n : ℕ) : ℤ :=
  A283208.P4144003533356594521.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283394.P1686196317453702883

`A034856(3*n+2)`
-/

namespace A283394.P1686196317453702883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (3 * n + 2)

end

end A283394.P1686196317453702883

noncomputable section

/-- A283394: a(n) = 3*n*(3*n + 7)/2 + 4.

Offset 0, canonical program `A283394.P1686196317453702883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283394 (n : ℕ) : ℤ :=
  A283394.P1686196317453702883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283678.P10903318495168675449

`A092563(n)*A001147(n)`
-/

namespace A283678.P10903318495168675449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092563 n * A001147 n

end

end A283678.P10903318495168675449

noncomputable section

/-- A283678: Number of possible draws of 2n pairs of consecutive cards from a set of 4n + 1 cards, so that the card that initially occupies the central position is not selected.

Offset 0, canonical program `A283678.P10903318495168675449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283678 (n : ℕ) : ℤ :=
  A283678.P10903318495168675449.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285326.P1726867562295019053

`2*A140472(n)`
-/

namespace A285326.P1726867562295019053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140472 n

end

end A285326.P1726867562295019053

noncomputable section

/-- A285326: a(0) = 0, for n > 0, a(n) = n + A006519(n).

Offset 0, canonical program `A285326.P1726867562295019053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285326 (n : ℕ) : ℤ :=
  A285326.P1726867562295019053.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286548.P11712479418656410754

`A003188(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286548.P11712479418656410754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - (n : ℤ)

end

end A286548.P11712479418656410754

noncomputable section

/-- A286548: a(n) = A003188(n) - n.

Offset 0, canonical program `A286548.P11712479418656410754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286548 (n : ℕ) : ℤ :=
  A286548.P11712479418656410754.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286814.P11901322277021368725

`A002203(n)+n*A000129(n)`
-/

namespace A286814.P11901322277021368725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n + (n : ℤ) * A000129 n

end

end A286814.P11901322277021368725

noncomputable section

/-- A286814: Number of matchings in the n-helm graph.

Offset 0, canonical program `A286814.P11901322277021368725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286814 (n : ℕ) : ℤ :=
  A286814.P11901322277021368725.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A287594.P913544811923215527

`2^n+A080040(n)`
-/

namespace A287594.P913544811923215527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A080040 n

end

end A287594.P913544811923215527

noncomputable section

/-- A287594: Number of independent vertex sets in the n-helm graph.

Offset 0, canonical program `A287594.P913544811923215527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287594 (n : ℕ) : ℤ :=
  A287594.P913544811923215527.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287594.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A289643.P1054073898019394777

`3*A000332(n+3)+5*A000332(n+2)`
-/

namespace A289643.P1054073898019394777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 3) + 5 * A000332 (n + 2)

end

end A289643.P1054073898019394777

noncomputable section

/-- A289643: a(n) = n*(2*n+1)*binomial(n+2,n)/3.

Offset 0, canonical program `A289643.P1054073898019394777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289643 (n : ℕ) : ℤ :=
  A289643.P1054073898019394777.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A289870.P8136116674077468676

`A002378(n)-A193356(n+1)`
-/

namespace A289870.P8136116674077468676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A193356 (n + 1)

end

end A289870.P8136116674077468676

noncomputable section

/-- A289870: a(n) = n*(n + 1) for n odd, otherwise a(n) = (n - 1)*(n + 1).

Offset 0, canonical program `A289870.P8136116674077468676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289870 (n : ℕ) : ℤ :=
  A289870.P8136116674077468676.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290186.P16377834564182734282

`A215404(n+2)+A215404(n+1)`
-/

namespace A290186.P16377834564182734282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 (n + 2) + A215404 (n + 1)

end

end A290186.P16377834564182734282

noncomputable section

/-- A290186: Expansion of (1+x)/ ((1+x)^3-7*x).

Offset 0, canonical program `A290186.P16377834564182734282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290186 (n : ℕ) : ℤ :=
  A290186.P16377834564182734282.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290265.P16009983709249235141

`A001006(n)-A005773(1+floor(n/2))`
-/

namespace A290265.P16009983709249235141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A005773 (1 + ⌊(n : ℚ) / 2⌋).toNat

end

end A290265.P16009983709249235141

noncomputable section

/-- A290265: The number of non-palindromic Motzkin paths of length n.

Offset 0, canonical program `A290265.P16009983709249235141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290265 (n : ℕ) : ℤ :=
  A290265.P16009983709249235141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290495.P13877558376664980538

`A000085(2^n)`
-/

namespace A290495.P13877558376664980538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (2 ^ n)

end

end A290495.P13877558376664980538

noncomputable section

/-- A290495: The number of self-inverse Boolean functions of n variables.

Offset 0, canonical program `A290495.P13877558376664980538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290495 (n : ℕ) : ℤ :=
  A290495.P13877558376664980538.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291699.P7038191437602574427

`A000312(n)*A000108(n)`
-/

namespace A291699.P7038191437602574427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A000108 n

end

end A291699.P7038191437602574427

noncomputable section

/-- A291699: a(n) = n^n*(2*n)!/(n!*(n + 1)!).

Offset 0, canonical program `A291699.P7038191437602574427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291699 (n : ℕ) : ℤ :=
  A291699.P7038191437602574427.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291945.P15300096953576282081

`A001020(n)*A096884(n)`
-/

namespace A291945.P15300096953576282081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n * A096884 n

end

end A291945.P15300096953576282081

noncomputable section

/-- A291945: Powers of 1111.

Offset 0, canonical program `A291945.P15300096953576282081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291945 (n : ℕ) : ℤ :=
  A291945.P15300096953576282081.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292272.P5703236082678816393

`n-A048735(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292272.P5703236082678816393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048735 n

end

end A292272.P5703236082678816393

noncomputable section

/-- A292272: a(n) = n - A048735(n) = n - (n AND floor(n/2)).

Offset 0, canonical program `A292272.P5703236082678816393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292272 (n : ℕ) : ℤ :=
  A292272.P5703236082678816393.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292324.P4624661997728121911

`a(n-1)+a(n-4)+A003269(n+2)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A292324.P4624661997728121911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  a (n - 1) + a (n - 4) + A003269 (n + 2)

end

end A292324.P4624661997728121911

noncomputable section

/-- A292324: p-INVERT of (1,0,0,1,0,0,0,0,0,...), where p(S) = (1 - S)^2.

Offset 0, canonical program `A292324.P4624661997728121911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292324 (n : ℕ) : ℤ :=
  A292324.P4624661997728121911.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292360.P2218299493852357588

`n*(A000032(n)*A000032(n+1)-2)`
-/

namespace A292360.P2218299493852357588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000032 n * A000032 (n + 1) - 2)

end

end A292360.P2218299493852357588

noncomputable section

/-- A292360: a(n) = n*(Lucas(n)*Lucas(n+1) - 2).

Offset 0, canonical program `A292360.P2218299493852357588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292360 (n : ℕ) : ℤ :=
  A292360.P2218299493852357588.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292784.P9591025858271369189

`A000312(n)*A001147(n)`
-/

namespace A292784.P9591025858271369189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A001147 n

end

end A292784.P9591025858271369189

noncomputable section

/-- A292784: a(n) = n! * [x^n] 1/sqrt(1 - 2*n*x).

Offset 0, canonical program `A292784.P9591025858271369189`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292784 (n : ℕ) : ℤ :=
  A292784.P9591025858271369189.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293078.P16857755642706999247

`1/2*A293077(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293078.P16857755642706999247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A293077 (n + 1) : ℚ)

end

end A293078.P16857755642706999247

noncomputable section

/-- A293078: a(n) = (1/2)*A293077(n).

Offset 1, canonical program `A293078.P16857755642706999247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293078 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293078.P16857755642706999247.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293125.P13067584911367898446

`(-1)^n*A000262(n)`
-/

namespace A293125.P13067584911367898446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000262 n

end

end A293125.P13067584911367898446

noncomputable section

/-- A293125: Expansion of e.g.f.: exp(-x/(1+x)).

Offset 0, canonical program `A293125.P13067584911367898446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293125 (n : ℕ) : ℤ :=
  A293125.P13067584911367898446.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293144.P1598588345983364731

`20*a(n-1)-24*A293143(n-1)` with `a(0)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293144.P1598588345983364731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  20 * a (n - 1) - 24 * A293143 (n - 1)

end

end A293144.P1598588345983364731

noncomputable section

/-- A293144: Number of vertices in a Menger Sponge constructed from a cubic lattice: a(n) = 20*a(n-1) - 24*A293143(n-1).

Offset 0, canonical program `A293144.P1598588345983364731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293144 (n : ℕ) : ℤ :=
  A293144.P1598588345983364731.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293325.P1460983041729213506

`A094386(n+1)+1`
-/

namespace A293325.P1460983041729213506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094386 (n + 1) + 1

end

end A293325.P1460983041729213506

noncomputable section

/-- A293325: Least integer k such that k/2^n > sqrt(3).

Offset 0, canonical program `A293325.P1460983041729213506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293325 (n : ℕ) : ℤ :=
  A293325.P1460983041729213506.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293337.P12686929730737990883

`A027437(n)+1`
-/

namespace A293337.P12686929730737990883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027437 n + 1

end

end A293337.P12686929730737990883

noncomputable section

/-- A293337: Least integer k such that k/2^n > e.

Offset 0, canonical program `A293337.P12686929730737990883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293337 (n : ℕ) : ℤ :=
  A293337.P12686929730737990883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293363.P12011803147856491094

`A293362(n)+1`
-/

namespace A293363.P12011803147856491094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293362 n + 1

end

end A293363.P12011803147856491094

noncomputable section

/-- A293363: Least integer k such that k/2^n > log 2.

Offset 0, canonical program `A293363.P12011803147856491094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293363 (n : ℕ) : ℤ :=
  A293363.P12011803147856491094.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294129.P3157484297515965198

`a(n-1)+A000085(n)` with `a(0)=0`
-/

namespace A294129.P3157484297515965198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000085 n

end

end A294129.P3157484297515965198

noncomputable section

/-- A294129: Numbers n for which exactly one length minimal language exists having exactly n nonempty words over a countably infinite alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

Offset 1, canonical program `A294129.P3157484297515965198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294129 (n : ℕ) : ℤ :=
  A294129.P3157484297515965198.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294327.P10054156691128495151

`A126431(n)+A002282(n)`
-/

namespace A294327.P10054156691128495151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126431 n + A002282 n

end

end A294327.P10054156691128495151

noncomputable section

/-- A294327: a(n) = ((9*n + 8)*10^n - 8)/9.

Offset 0, canonical program `A294327.P10054156691128495151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294327 (n : ℕ) : ℤ :=
  A294327.P10054156691128495151.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294409.P11012143022956587436

`A000312(n)*A002426(n)`
-/

namespace A294409.P11012143022956587436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A002426 n

end

end A294409.P11012143022956587436

noncomputable section

/-- A294409: a(n) = n! * [x^n] exp(n*x)*BesselI(0,2*n*x).

Offset 0, canonical program `A294409.P11012143022956587436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294409 (n : ℕ) : ℤ :=
  A294409.P11012143022956587436.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294409.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297965.P4589983828039371754

`A000045(A000292(n+1))`
-/

namespace A297965.P4589983828039371754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000292 (n + 1)).toNat

end

end A297965.P4589983828039371754

noncomputable section

/-- A297965: a(n) = Fibonacci(binomial(n+3, 3)).

Offset 0, canonical program `A297965.P4589983828039371754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297965 (n : ℕ) : ℤ :=
  A297965.P4589983828039371754.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A298027.P18185960904614678095

`A016921(A001318(n))`
-/

namespace A298027.P18185960904614678095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A001318 n).toNat

end

end A298027.P18185960904614678095

noncomputable section

/-- A298027: Partial sums of A298026.

Offset 0, canonical program `A298027.P18185960904614678095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298027 (n : ℕ) : ℤ :=
  A298027.P18185960904614678095.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299412.P10505866840362390154

`A007494(n)*A117748(n+1)`
-/

namespace A299412.P10505866840362390154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n * A117748 (n + 1)

end

end A299412.P10505866840362390154

noncomputable section

/-- A299412: Pentagonal pyramidal numbers divisible by 3.

Offset 0, canonical program `A299412.P10505866840362390154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299412 (n : ℕ) : ℤ :=
  A299412.P10505866840362390154.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299915.P2759897045341595723

`A299914(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299915.P2759897045341595723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (2 * n)

end

end A299915.P2759897045341595723

noncomputable section

/-- A299915: a(n) = A299914(2n).

Offset 0, canonical program `A299915.P2759897045341595723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299915 (n : ℕ) : ℤ :=
  A299915.P2759897045341595723.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299916.P12333873613617741462

`A299914(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299916.P12333873613617741462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (2 * n + 1)

end

end A299916.P12333873613617741462

noncomputable section

/-- A299916: a(n) = A299914(2n+1).

Offset 0, canonical program `A299916.P12333873613617741462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299916 (n : ℕ) : ℤ :=
  A299916.P12333873613617741462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300254.P12654436630093768535

`A212964(10*n+9)`
-/

namespace A300254.P12654436630093768535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (10 * n + 9)

end

end A300254.P12654436630093768535

noncomputable section

/-- A300254: a(n) = 25*(n + 1)*(4*n + 3)*(5*n + 4)/3.

Offset 0, canonical program `A300254.P12654436630093768535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300254 (n : ℕ) : ℤ :=
  A300254.P12654436630093768535.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300361.P5208611939681609274

`A000079(A000325(n))`
-/

namespace A300361.P5208611939681609274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000325 n).toNat

end

end A300361.P5208611939681609274

noncomputable section

/-- A300361: a(n) = 2^A000325(n).

Offset 0, canonical program `A300361.P5208611939681609274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300361 (n : ℕ) : ℤ :=
  A300361.P5208611939681609274.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A301270.P8220849028994372929

`4*A008785(n)`
-/

namespace A301270.P8220849028994372929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008785 n

end

end A301270.P8220849028994372929

noncomputable section

/-- A301270: Number of labeled trees on n vertices containing two fixed non-adjacent edges.

Offset 4, canonical program `A301270.P8220849028994372929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301270 (n : ℕ) : ℤ :=
  A301270.P8220849028994372929.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A302689.P6182518177950127558

`2*A005803(n)`
-/

namespace A302689.P6182518177950127558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005803 n

end

end A302689.P6182518177950127558

noncomputable section

/-- A302689: a(n) = 4 + 2^n - 4*n.

Offset 1, canonical program `A302689.P6182518177950127558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302689 (n : ℕ) : ℤ :=
  A302689.P6182518177950127558.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304025.P13543319459585861266

`A070885(n+2)-1`
-/

namespace A304025.P13543319459585861266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (n + 2) - 1

end

end A304025.P13543319459585861266

noncomputable section

/-- A304025: a(n) is the largest integer that can be written with n digits in base 3/2.

Offset 1, canonical program `A304025.P13543319459585861266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304025 (n : ℕ) : ℤ :=
  A304025.P13543319459585861266.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304940.P12506467866958843373

`2^n*A063886(n)`
-/

namespace A304940.P12506467866958843373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A063886 n

end

end A304940.P12506467866958843373

noncomputable section

/-- A304940: Expansion of ((1 + 4*x)/(1 - 4*x))^(1/2).

Offset 0, canonical program `A304940.P12506467866958843373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304940 (n : ℕ) : ℤ :=
  A304940.P12506467866958843373.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305497.P10714311008206007693

`2*A061419(n+2)-2`
-/

namespace A305497.P10714311008206007693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061419 (n + 2) - 2

end

end A305497.P10714311008206007693

noncomputable section

/-- A305497: The largest positive even integer that can be represented with n digits in base 3/2.

Offset 1, canonical program `A305497.P10714311008206007693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305497 (n : ℕ) : ℤ :=
  A305497.P10714311008206007693.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305498.P10132958174563949694

`2*A061419(n+1)`
-/

namespace A305498.P10132958174563949694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061419 (n + 1)

end

end A305498.P10132958174563949694

noncomputable section

/-- A305498: The smallest positive even integer that can be represented with n digits in base 3/2.

Offset 1, canonical program `A305498.P10132958174563949694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305498 (n : ℕ) : ℤ :=
  A305498.P10132958174563949694.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305730.P466107795862192357

`n*(n+1)*A000166(n)/3`
-/

namespace A305730.P466107795862192357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n + 1 : ℤ) * A000166 n) : ℚ) / 3

end

end A305730.P466107795862192357

noncomputable section

/-- A305730: a(n) is the total displacement of all letters in all permutations of n letters with no fixed points.

Offset 0, canonical program `A305730.P466107795862192357`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305730 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305730.P466107795862192357.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306721.P9438047231518048415

`A017857(7*n)`
-/

namespace A306721.P9438047231518048415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (7 * n)

end

end A306721.P9438047231518048415

noncomputable section

/-- A306721: a(n) = Sum_{k=0..n} binomial(k, 7*(n-k)).

Offset 0, canonical program `A306721.P9438047231518048415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306721 (n : ℕ) : ℤ :=
  A306721.P9438047231518048415.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306752.P15877373641399873806

`A017867(8*n)`
-/

namespace A306752.P15877373641399873806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (8 * n)

end

end A306752.P15877373641399873806

noncomputable section

/-- A306752: a(n) = Sum_{k=0..n} binomial(k, 8*(n-k)).

Offset 0, canonical program `A306752.P15877373641399873806`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306752 (n : ℕ) : ℤ :=
  A306752.P15877373641399873806.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306753.P8827207824995559459

`A017877(9*n)`
-/

namespace A306753.P8827207824995559459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (9 * n)

end

end A306753.P8827207824995559459

noncomputable section

/-- A306753: a(n) = Sum_{k=0..n} binomial(k, 9*(n-k)).

Offset 0, canonical program `A306753.P8827207824995559459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306753 (n : ℕ) : ℤ :=
  A306753.P8827207824995559459.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307768.P13717369919277474039

`2^n-A063886(n)`
-/

namespace A307768.P13717369919277474039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A063886 n

end

end A307768.P13717369919277474039

noncomputable section

/-- A307768: Number of n-step random walks on a line starting from the origin and returning to it at least once.

Offset 0, canonical program `A307768.P13717369919277474039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307768 (n : ℕ) : ℤ :=
  A307768.P13717369919277474039.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307768.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308775.P743659139921755992

`n*A026810(n)`
-/

namespace A308775.P743659139921755992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026810 n

end

end A308775.P743659139921755992

noncomputable section

/-- A308775: Sum of all the parts in the partitions of n into 4 parts.

Offset 0, canonical program `A308775.P743659139921755992`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308775 (n : ℕ) : ℤ :=
  A308775.P743659139921755992.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308876.P15853436506435492186

`A010844(n)-A067273(n)`
-/

namespace A308876.P15853436506435492186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010844 n - A067273 n

end

end A308876.P15853436506435492186

noncomputable section

/-- A308876: Expansion of e.g.f. exp(x)*(1 - x)/(1 - 2*x).

Offset 0, canonical program `A308876.P15853436506435492186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308876 (n : ℕ) : ℤ :=
  A308876.P15853436506435492186.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316275.P1685632628560373697

`A000032(2*A000045(n))`
-/

namespace A316275.P1685632628560373697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * A000045 n).toNat

end

end A316275.P1685632628560373697

noncomputable section

/-- A316275: Lucas analog to A101361.

Offset 0, canonical program `A316275.P1685632628560373697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316275 (n : ℕ) : ℤ :=
  A316275.P1685632628560373697.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316330.P8617574929361590466

`A000085(4*n)/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316330.P8617574929361590466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (4 * n) : ℚ) / (2 ^ n : ℚ)

end

end A316330.P8617574929361590466

noncomputable section

/-- A316330: a(n) = A000085(4*n)/2^n.

Offset 0, canonical program `A316330.P8617574929361590466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316330 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316330.P8617574929361590466.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316330.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316331.P5925976260589872909

`A000085(4*n+1)/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316331.P5925976260589872909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (4 * n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A316331.P5925976260589872909

noncomputable section

/-- A316331: a(n) = A000085(4*n+1)/2^n.

Offset 0, canonical program `A316331.P5925976260589872909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316331 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316331.P5925976260589872909.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316332.P4722965833346480592

`A000085(4*n+2)/2^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316332.P4722965833346480592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (4 * n + 2) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A316332.P4722965833346480592

noncomputable section

/-- A316332: a(n) = A000085(4*n+2)/2^(n+1).

Offset 0, canonical program `A316332.P4722965833346480592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316332 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316332.P4722965833346480592.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316333.P17369199407234623873

`A000085(4*n+3)/2^(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316333.P17369199407234623873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (4 * n + 3) : ℚ) / (2 ^ (n + 2) : ℚ)

end

end A316333.P17369199407234623873

noncomputable section

/-- A316333: a(n) = A000085(4*n+3)/2^(n+2).

Offset 0, canonical program `A316333.P17369199407234623873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316333 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316333.P17369199407234623873.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316333.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292443.P16824726598112249444

`10*A298101(n)`
-/

namespace A292443.P16824726598112249444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A298101 n

end

end A292443.P16824726598112249444

noncomputable section

/-- A292443: a(n) = (5/32)*A000045(6*n)^2.

Offset 0, canonical program `A292443.P16824726598112249444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292443 (n : ℕ) : ℤ :=
  A292443.P16824726598112249444.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293313.P7199876239734961514

`A293314(n)-1`
-/

namespace A293313.P7199876239734961514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - 1

end

end A293313.P7199876239734961514

noncomputable section

/-- A293313: Greatest integer k such that k/2^n < (1+sqrt(5))/2 (the golden ratio).

Offset 0, canonical program `A293313.P7199876239734961514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293313 (n : ℕ) : ℤ :=
  A293313.P7199876239734961514.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293319.P8415594249504291163

`A293320(n)-1`
-/

namespace A293319.P8415594249504291163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n - 1

end

end A293319.P8415594249504291163

noncomputable section

/-- A293319: Greatest integer k such that k/2^n < phi^2, where phi = (1+sqrt(5))/2 = golden ratio.

Offset 0, canonical program `A293319.P8415594249504291163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293319 (n : ℕ) : ℤ :=
  A293319.P8415594249504291163.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293322.P14636184931829606719

`A293323(n)-1`
-/

namespace A293322.P14636184931829606719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 n - 1

end

end A293322.P14636184931829606719

noncomputable section

/-- A293322: Greatest integer k such that k/2^n < 1/phi, where phi = (1+sqrt(5))/2 = golden ratio.

Offset 0, canonical program `A293322.P14636184931829606719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293322 (n : ℕ) : ℤ :=
  A293322.P14636184931829606719.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271628.P3554160973588019430

`p?[A037123(n)]`
-/

namespace A271628.P3554160973588019430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271628.P3554160973588019430

noncomputable section

/-- A271628: Primes that are the sum of the digits of the numbers from 1 to n, for some n.

Offset 1, canonical program `A271628.P3554160973588019430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A271628 (n : ℕ) : ℤ :=
  A271628.P3554160973588019430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A271628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271638.P4151259937302801808

`∑[∑[A113070(n)+A036289(n)]]`
-/

namespace A271638.P4151259937302801808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113070 n + A036289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271638.P4151259937302801808

noncomputable section

/-- A271638: The total sum of the cubes of all parts of all compositions of n.

Offset 1, canonical program `A271638.P4151259937302801808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A271638 (n : ℕ) : ℤ :=
  A271638.P4151259937302801808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A271638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271982.P6221938899778499713

`p?[A156037(n+1)-41]`
-/

namespace A271982.P6221938899778499713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) - 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P6221938899778499713

noncomputable section

/-- A271982: Primes p such that p + 42 is also prime.

Offset 1, canonical program `A271982.P6221938899778499713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3155 terms. -/
def A271982 (n : ℕ) : ℤ :=
  A271982.P6221938899778499713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3155 terms. -/
def A271982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271998.P5278477966171253614

`A271997(n+4)-1`
-/

namespace A271998.P5278477966171253614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271997 (n + 4) - 1

end

end A271998.P5278477966171253614

noncomputable section

/-- A271998: Volatile sequence: a(n) = A018227(n)-6.

Offset 3, canonical program `A271998.P5278477966171253614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A271998 (n : ℕ) : ℤ :=
  A271998.P5278477966171253614.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A271998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272008.P3020960973328718695

`(A000203(n+1)/A009194(n+1))%((n+1)/gcd(n-1-2*n, ∑{d}[n+1, #]))`
-/

namespace A272008.P3020960973328718695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd ((n : ℤ) - 1 - (2 * n : ℤ)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) : ℚ)))

end

end A272008.P3020960973328718695

noncomputable section

/-- A272008: a(n) is the numerator of the fractional part of sigma(n)/n, where sigma(n) is the sum of the divisors of n.

Offset 1, canonical program `A272008.P3020960973328718695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272008 (n : ℕ) : ℤ :=
  A272008.P3020960973328718695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272009.P9208722681090242085

`∑[A272007(n)]`
-/

namespace A272009.P9208722681090242085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272009.P9208722681090242085

noncomputable section

/-- A272009: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272009.P9208722681090242085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A272009 (n : ℕ) : ℤ :=
  A272009.P9208722681090242085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A272009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272010.P7180507134470778556

`Δ[A272007(n)]`
-/

namespace A272010.P7180507134470778556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272010.P7180507134470778556

noncomputable section

/-- A272010: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272010.P7180507134470778556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3131 terms. -/
def A272010 (n : ℕ) : ℤ :=
  A272010.P7180507134470778556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3131 terms. -/
def A272010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272104.P17692918465873460344

`∑[lcm(2, n%2*A004526(n))]`
-/

namespace A272104.P17692918465873460344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n % 2 : ℕ) : ℤ) * A004526 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272104.P17692918465873460344

noncomputable section

/-- A272104: Sum of the even numbers among the larger parts of the partitions of n into two parts.

Offset 0, canonical program `A272104.P17692918465873460344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272104 (n : ℕ) : ℤ :=
  (A272104.P17692918465873460344.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272470.P18354335613044509669

`7*A000040(n+1)`
-/

namespace A272470.P18354335613044509669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000040 (n + 1)

end

end A272470.P18354335613044509669

noncomputable section

/-- A272470: 7 times the primes.

Offset 1, canonical program `A272470.P18354335613044509669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272470 (n : ℕ) : ℤ :=
  A272470.P18354335613044509669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A272470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A272477.P11613366699694065365

`lt[Δ[A048678(n)], 2*n]`
-/

namespace A272477.P11613366699694065365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A272477.P11613366699694065365

noncomputable section

/-- A272477: Numbers n that are coprime to the numerator of zeta(2*n)/(Pi^(2*n)).

Offset 1, canonical program `A272477.P11613366699694065365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272477 (n : ℕ) : ℤ :=
  (A272477.P11613366699694065365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272532.P12999477762665833133

`(A049474(n+1)%2)²`
-/

namespace A272532.P12999477762665833133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049474 (n + 1)) 2 ^ 2

end

end A272532.P12999477762665833133

noncomputable section

/-- A272532: Single bit representation of the sum of two sinusoids with periods 2 and 2*sqrt(2).

Offset 1, canonical program `A272532.P12999477762665833133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A272532 (n : ℕ) : ℤ :=
  A272532.P12999477762665833133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A272532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272648.P11003998865257113730

`A032766(Δ[A032766(A242062(n))]²)`
-/

namespace A272648.P11003998865257113730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A242062 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A272648.P11003998865257113730

noncomputable section

/-- A272648: a(n) = A002119(n) mod 7.

Offset 0, canonical program `A272648.P11003998865257113730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A272648 (n : ℕ) : ℤ :=
  A272648.P11003998865257113730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A272648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272775.P4239983723517898102

`A261391(n+1)²`
-/

namespace A272775.P4239983723517898102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261391 (n + 1) ^ 2

end

end A272775.P4239983723517898102

noncomputable section

/-- A272775: Squares of the form P(n, 5) + n, where P(x,k) is the Pochhammer function and n = square (A000290).

Offset 1, canonical program `A272775.P4239983723517898102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A272775 (n : ℕ) : ℤ :=
  A272775.P4239983723517898102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A272775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272887.P6057499258403771745

`A091954(p?[xor(1, n)+1]+1)%(n+1)`
-/

namespace A272887.P6057499258403771745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091954 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)) (n + 1 : ℤ)

end

end A272887.P6057499258403771745

noncomputable section

/-- A272887: Number of ways to write prime(n) as (4*x + 2)*y + 4*x + 1 where x and y are nonnegative integers.

Offset 1, canonical program `A272887.P6057499258403771745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A272887 (n : ℕ) : ℤ :=
  A272887.P6057499258403771745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A272887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272952.P13267642069156642339

`A154691(n+1)-gcd(n+1, ∑[n])`
-/

namespace A272952.P13267642069156642339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (n + 1) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A272952.P13267642069156642339

noncomputable section

/-- A272952: Number of n X 2 0..1 arrays with exactly n+2-2 having value 1 and no three 1s forming an isosceles right triangle.

Offset 1, canonical program `A272952.P13267642069156642339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A272952 (n : ℕ) : ℤ :=
  A272952.P13267642069156642339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A272952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273105.P3798720398051730023

`A038572(n)+A006257(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273105.P3798720398051730023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n + A006257 n

end

end A273105.P3798720398051730023

noncomputable section

/-- A273105: a(n) = A038572(n) + A006257(n), sum of the two numbers obtained by rotating the binary representation of n by one place to the right and to the left.

Offset 0, canonical program `A273105.P3798720398051730023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273105 (n : ℕ) : ℤ :=
  A273105.P3798720398051730023.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273146.P12604411476535506395

`∑[A273144(n)]`
-/

namespace A273146.P12604411476535506395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273146.P12604411476535506395

noncomputable section

/-- A273146: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273146.P12604411476535506395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2961 terms. -/
def A273146 (n : ℕ) : ℤ :=
  A273146.P12604411476535506395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2961 terms. -/
def A273146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273147.P7169736395643555006

`Δ[A273144(n)]`
-/

namespace A273147.P7169736395643555006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273147.P7169736395643555006

noncomputable section

/-- A273147: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273147.P7169736395643555006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2866 terms. -/
def A273147 (n : ℕ) : ℤ :=
  A273147.P7169736395643555006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2866 terms. -/
def A273147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273167.P942441107459462647

`gcd(C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n+1]]], 2)), A001147(∑[char[∑[n+1]]]))`
-/

namespace A273167.P942441107459462647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) (A001147 (∑ j ∈ Finset.range (n + 1), f7 j))

end

end A273167.P942441107459462647

noncomputable section

/-- A273167: Numerators of coefficient triangle for expansion of x^(2*n) in terms of Chebyshev polynomials of the first kind T(2*m, x) (A127674).

Offset 0, canonical program `A273167.P942441107459462647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A273167 (n : ℕ) : ℤ :=
  (A273167.P942441107459462647.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A273167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273374.P17226260759646083903

`A063226(n+1)²`
-/

namespace A273374.P17226260759646083903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) ^ 2

end

end A273374.P17226260759646083903

noncomputable section

/-- A273374: Squares ending in digit 9.

Offset 1, canonical program `A273374.P17226260759646083903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273374 (n : ℕ) : ℤ :=
  A273374.P17226260759646083903.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273499.P7149026003240691032

`or(1, A016754(n)-A189007(n+1))`
-/

namespace A273499.P7149026003240691032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A016754 n - A189007 (n + 1))

end

end A273499.P7149026003240691032

noncomputable section

/-- A273499: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273499.P7149026003240691032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A273499 (n : ℕ) : ℤ :=
  A273499.P7149026003240691032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A273499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273531.P16096127716137226056

`A006943(2*2*A164089(n+1))`
-/

namespace A273531.P16096127716137226056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (2 * (2 * A164089 (n + 1))).toNat

end

end A273531.P16096127716137226056

noncomputable section

/-- A273531: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273531.P16096127716137226056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A273531 (n : ℕ) : ℤ :=
  A273531.P16096127716137226056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A273531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273623.P7653286071170375673

`∑[A002878(n)]*∑[A212804(n)]`
-/

namespace A273623.P7653286071170375673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A273623.P7653286071170375673

noncomputable section

/-- A273623: a(n) = Fibonacci(3*n) - (2 + (-1)^n)*Fibonacci(n).

Offset 1, canonical program `A273623.P7653286071170375673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A273623 (n : ℕ) : ℤ :=
  A273623.P7653286071170375673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A273623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273692.P13086714113626888926

`A000079(A088705(3*n+2)+n+1)`
-/

namespace A273692.P13086714113626888926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A088705 (3 * n + 2) + (n + 1 : ℤ)).toNat

end

end A273692.P13086714113626888926

noncomputable section

/-- A273692: a(n) is the denominator of 2*O(n+1) - O(n+2) where O(n) = n/2^n, the n-th Oresme number.

Offset 0, canonical program `A273692.P13086714113626888926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A273692 (n : ℕ) : ℤ :=
  A273692.P13086714113626888926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A273692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273767.P5714310039516204323

`A273385(n)-A171386(n+1)`
-/

namespace A273767.P5714310039516204323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273385 n - A171386 (n + 1)

end

end A273767.P5714310039516204323

noncomputable section

/-- A273767: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273767.P5714310039516204323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A273767 (n : ℕ) : ℤ :=
  A273767.P5714310039516204323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A273767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273892.P3546823388509802216

`eq[0, A000030(n)%2]`
-/

namespace A273892.P3546823388509802216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000030 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P3546823388509802216

noncomputable section

/-- A273892: Numbers starting with an even (decimal) digit.

Offset 1, canonical program `A273892.P3546823388509802216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A273892 (n : ℕ) : ℤ :=
  (A273892.P3546823388509802216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A273892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273911.P714773081203146944

`A038184(n)%A198633(n)`
-/

namespace A273911.P714773081203146944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038184 n) (A198633 n)

end

end A273911.P714773081203146944

noncomputable section

/-- A273911: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 614", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273911.P714773081203146944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A273911 (n : ℕ) : ℤ :=
  A273911.P714773081203146944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A273911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273926.P11811595775230252217

`A005187(n)-(n-1)*n%2`
-/

namespace A273926.P11811595775230252217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - ((n : ℤ) - 1) * ((n % 2 : ℕ) : ℤ)

end

end A273926.P11811595775230252217

noncomputable section

/-- A273926: Given G(x) such that G( G(x)^2 - G(x)^3 ) = x^2, then G(x) = Sum_{n>=1} A273925(n)*x^n / 2^a(n).

Offset 1, canonical program `A273926.P11811595775230252217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A273926 (n : ℕ) : ℤ :=
  A273926.P11811595775230252217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A273926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273960.P14447849629000805709

`-(-1)^n*A000040(n+1)`
-/

namespace A273960.P14447849629000805709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A000040 (n + 1))

end

end A273960.P14447849629000805709

noncomputable section

/-- A273960: a(n) = (-1)^n*prime(n).

Offset 1, canonical program `A273960.P14447849629000805709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273960 (n : ℕ) : ℤ :=
  A273960.P14447849629000805709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273972.P12055056597393886625

`and(A062878(n+1), A281216(n))`
-/

namespace A273972.P12055056597393886625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062878 (n + 1)) (A281216 n)

end

end A273972.P12055056597393886625

noncomputable section

/-- A273972: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273972.P12055056597393886625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A273972 (n : ℕ) : ℤ :=
  A273972.P12055056597393886625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A273972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274039.P9664953726528419783

`A004272(A004274(n)-n)`
-/

namespace A274039.P9664953726528419783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (A004274 n - (n : ℤ)).toNat

end

end A274039.P9664953726528419783

noncomputable section

/-- A274039: Expansion of (x^4 + x^10) / (1 - 2*x + x^2).

Offset 0, canonical program `A274039.P9664953726528419783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274039 (n : ℕ) : ℤ :=
  A274039.P9664953726528419783.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274087.P7398759194992797752

`round(sqrt(A000290(n²))*sin(n))`
-/

namespace A274087.P7398759194992797752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000290 (n ^ 2) : ℝ) * Real.sin (n : ℝ))

end

end A274087.P7398759194992797752

noncomputable section

/-- A274087: Nearest integer to n^2*sin(n).

Offset 0, canonical program `A274087.P7398759194992797752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A274087 (n : ℕ) : ℤ :=
  A274087.P7398759194992797752.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A274087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274099.P13893247273971540902

`A001400(∑[n])`
-/

namespace A274099.P13893247273971540902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274099.P13893247273971540902

noncomputable section

/-- A274099: Number of partitions of n*(n-1)/2 into at most four parts.

Offset 1, canonical program `A274099.P13893247273971540902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A274099 (n : ℕ) : ℤ :=
  A274099.P13893247273971540902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A274099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274216.P7897758151784817100

`A006943(and(A003817(n), A042948(n)))`
-/

namespace A274216.P7897758151784817100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Int.land (A003817 n) (A042948 n)).toNat

end

end A274216.P7897758151784817100

noncomputable section

/-- A274216: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A274216.P7897758151784817100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A274216 (n : ℕ) : ℤ :=
  A274216.P7897758151784817100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A274216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274248.P12370462834852960976

`∑[A271937(n)]-∑[n]`
-/

namespace A274248.P12370462834852960976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271937 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A274248.P12370462834852960976

noncomputable section

/-- A274248: Row sums of A273751.

Offset 1, canonical program `A274248.P12370462834852960976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274248 (n : ℕ) : ℤ :=
  A274248.P12370462834852960976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274311.P5100231468716724845

`A000332(n)+A005582(n)*A161680(n)`
-/

namespace A274311.P5100231468716724845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + A005582 n * A161680 n

end

end A274311.P5100231468716724845

noncomputable section

/-- A274311: a(n) = 15*binomial(n,6)-6*binomial(n-2,4)+binomial(n-4,4).

Offset 4, canonical program `A274311.P5100231468716724845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274311 (n : ℕ) : ℤ :=
  A274311.P5100231468716724845.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274319.P11083266819951197590

`∩[3*n, A054683(n+1)]`
-/

namespace A274319.P11083266819951197590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274319.P11083266819951197590

noncomputable section

/-- A274319: Numbers whose digit sum is divisible by 6.

Offset 1, canonical program `A274319.P11083266819951197590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A274319 (n : ℕ) : ℤ :=
  (A274319.P11083266819951197590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A274319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274397.P17572640647558603460

`lt[1, gcd(5, A000203(n+1))]+1`
-/

namespace A274397.P17572640647558603460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274397.P17572640647558603460

noncomputable section

/-- A274397: Positive integers m such that sigma(m) is divisible by 5.

Offset 1, canonical program `A274397.P17572640647558603460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274397 (n : ℕ) : ℤ :=
  (A274397.P17572640647558603460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274437.P16973748106690964927

`lt[A005090(n+1), A005088(n+1)]+1`
-/

namespace A274437.P16973748106690964927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274437.P16973748106690964927

noncomputable section

/-- A274437: Numbers having more distinct prime factors of form 3*k+1 than of the form 3*k+2.

Offset 1, canonical program `A274437.P16973748106690964927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437 (n : ℕ) : ℤ :=
  (A274437.P16973748106690964927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A274437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274501.P11011128503039195483

`∑[∑[∑[A256647(n)]]]`
-/

namespace A274501.P11011128503039195483
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274501.P11011128503039195483

noncomputable section

/-- A274501: a(n) = 25*binomial(n-1,6) + binomial(n-1,5).

Offset 5, canonical program `A274501.P11011128503039195483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274501 (n : ℕ) : ℤ :=
  A274501.P11011128503039195483.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274557.P17532992235864728573

`lt[A000203(n+1)%(n+7), 1]+1`
-/

namespace A274557.P17532992235864728573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (n + 7 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274557.P17532992235864728573

noncomputable section

/-- A274557: Numbers k such that sigma(k) == 0 (mod k+6).

Offset 1, canonical program `A274557.P17532992235864728573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A274557 (n : ℕ) : ℤ :=
  (A274557.P17532992235864728573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A274557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274601.P12542519559083663936

`2*A132171(n)-(n+1)`
-/

namespace A274601.P12542519559083663936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132171 n - (n + 1 : ℤ)

end

end A274601.P12542519559083663936

noncomputable section

/-- A274601: a(n) = 2*3^(s-1) - n, where s is the number of trits of n in balanced ternary form.

Offset 1, canonical program `A274601.P12542519559083663936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274601 (n : ℕ) : ℤ :=
  A274601.P12542519559083663936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274627.P2178317026050334139

`A274230(A065033(n))*A274230(A123108(n))`
-/

namespace A274627.P2178317026050334139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (A065033 n).toNat * A274230 (A123108 n).toNat

end

end A274627.P2178317026050334139

noncomputable section

/-- A274627: Product_{i=0..3} (2^floor((n+i)/4)-1).

Offset 0, canonical program `A274627.P2178317026050334139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274627 (n : ℕ) : ℤ :=
  A274627.P2178317026050334139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274675.P17478295696903722210

`∩[A001132(n+1), A045386(n+1)]`
-/

namespace A274675.P17478295696903722210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P17478295696903722210

noncomputable section

/-- A274675: Primes p such that p = x^2 + 14*y^2 or p = 2*x^2 + 7*y^2, where p != 2, 7 and x, y are integers.

Offset 1, canonical program `A274675.P17478295696903722210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4983 terms. -/
def A274675 (n : ℕ) : ℤ :=
  (A274675.P17478295696903722210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4983 terms. -/
def A274675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274918.P14684548943861349377

`lt[(A000217(n+2)+∑{d}[n, #])%2, 1]`
-/

namespace A274918.P14684548943861349377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 2) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A274918.P14684548943861349377

noncomputable section

/-- A274918: Numbers n such that the sum of numbers less than n that do not divide n is odd.

Offset 1, canonical program `A274918.P14684548943861349377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A274918 (n : ℕ) : ℤ :=
  (A274918.P14684548943861349377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A274918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275324.P5051754132568334749

`ceil(A056040(n)/2)`
-/

namespace A275324.P5051754132568334749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056040 n : ℚ) / 2⌉

end

end A275324.P5051754132568334749

noncomputable section

/-- A275324: Expansion of (x*(1-4*x^2)^(-3/2) + (1-4*x^2)^(-1/2) + x + 1)/2.

Offset 0, canonical program `A275324.P5051754132568334749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A275324 (n : ℕ) : ℤ :=
  A275324.P5051754132568334749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A275324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275439.P11410885110955459842

`A094686(n)-A240847(n+2)`
-/

namespace A275439.P11410885110955459842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n - A240847 (n + 2)

end

end A275439.P11410885110955459842

noncomputable section

/-- A275439: Sum of the asymmetry degrees of all compositions of n with parts in {1,2}.

Offset 0, canonical program `A275439.P11410885110955459842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A275439 (n : ℕ) : ℤ :=
  A275439.P11410885110955459842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A275439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275495.P8871957792591783515

`A177235(n+1)+A091954(n+1)`
-/

namespace A275495.P8871957792591783515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177235 (n + 1) + A091954 (n + 1)

end

end A275495.P8871957792591783515

noncomputable section

/-- A275495: a(n) = Sum_{k=2..n} floor(n/k) - 2*floor(n/(2*k)).

Offset 1, canonical program `A275495.P8871957792591783515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275495 (n : ℕ) : ℤ :=
  A275495.P8871957792591783515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275574.P7946216209532470841

`ceil((A078707(n+1)-1)/2)`
-/

namespace A275574.P7946216209532470841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078707 (n + 1) - 1 : ℚ) / 2⌉

end

end A275574.P7946216209532470841

noncomputable section

/-- A275574: ((-1)^n - 1 + 2*(n^floor((n + 1)/2)))/4.

Offset 1, canonical program `A275574.P7946216209532470841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A275574 (n : ℕ) : ℤ :=
  A275574.P7946216209532470841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A275574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275632.P10606339663826706146

`A004275(∑{d}[n, A004396(#)]+1)`
-/

namespace A275632.P10606339663826706146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ d ∈ Nat.divisors (f1 n), A004396 d + 1).toNat

end

end A275632.P10606339663826706146

noncomputable section

/-- A275632: Andrews's 4-shadow function THETA.BAR_3(q).

Offset 0, canonical program `A275632.P10606339663826706146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A275632 (n : ℕ) : ℤ :=
  A275632.P10606339663826706146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A275632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275638.P13000109410374725641

`Δ[Δ[Δ[A005044(n)]]]`
-/

namespace A275638.P13000109410374725641
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275638.P13000109410374725641

noncomputable section

/-- A275638: Expansion of (1-q)^k/Product_{j=1..k} (1-q^j) for k=4.

Offset 0, canonical program `A275638.P13000109410374725641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A275638 (n : ℕ) : ℤ :=
  A275638.P13000109410374725641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A275638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275665.P16385943556992474853

`eq[1, A099635(n+1)]+1`
-/

namespace A275665.P16385943556992474853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275665.P16385943556992474853

noncomputable section

/-- A275665: Numbers n such that n and sopf(n) are relatively prime, where sopf(n) (A008472) is the sum of the distinct primes dividing n.

Offset 1, canonical program `A275665.P16385943556992474853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A275665 (n : ℕ) : ℤ :=
  (A275665.P16385943556992474853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A275665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275671.P10918635563416212347

`eq[gcd(2, n), A175192(n+1)]+1`
-/

namespace A275671.P10918635563416212347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275671.P10918635563416212347

noncomputable section

/-- A275671: Even values produced by the sigma function A000203, in increasing order.

Offset 1, canonical program `A275671.P10918635563416212347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275671 (n : ℕ) : ℤ :=
  (A275671.P10918635563416212347.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275700.P2584852815537331579

`∏{d}[n+1, A000040(#)]`
-/

namespace A275700.P2584852815537331579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000040 d

end

end A275700.P2584852815537331579

noncomputable section

/-- A275700: a(n) = Product_{d|n} prime(d).

Offset 1, canonical program `A275700.P2584852815537331579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A275700 (n : ℕ) : ℤ :=
  A275700.P2584852815537331579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A275700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275771.P3709999984210797197

`A000040(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A275771.P3709999984210797197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A000040 (n - 3) - a (n - 3)

end

end A275771.P3709999984210797197

noncomputable section

/-- A275771: a(n+3) = A008578(n+1) -a(n), a(0) = a(1) = a(2) = 0.

Offset 0, canonical program `A275771.P3709999984210797197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275771 (n : ℕ) : ℤ :=
  A275771.P3709999984210797197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275799.P1069378025426575222

`∑[∑[A000583(n+1)+A007590(n+1)²]]`
-/

namespace A275799.P1069378025426575222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) + A007590 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275799.P1069378025426575222

noncomputable section

/-- A275799: Number of inequivalent (modulo C_4 rotations) square n X n grids with squares coming in two colors and three squares have one of the colors.

Offset 2, canonical program `A275799.P1069378025426575222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275799 (n : ℕ) : ℤ :=
  A275799.P1069378025426575222.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275827.P4744226065128384971

`A069720(n+1)+A082144(n)-A082143(n)`
-/

namespace A275827.P4744226065128384971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069720 (n + 1) + (A082144 n - A082143 n)

end

end A275827.P4744226065128384971

noncomputable section

/-- A275827: a(n) = Sum_{k=0..n} binomial(n+k+2,k)*binomial(2*n+1,n-k).

Offset 0, canonical program `A275827.P4744226065128384971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A275827 (n : ℕ) : ℤ :=
  A275827.P4744226065128384971.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A275827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275857.P3012977211852040062

`A192910(n)+ceil(A192909(n)/2)`
-/

namespace A275857.P3012977211852040062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192910 n + ⌈(A192909 n : ℚ) / 2⌉

end

end A275857.P3012977211852040062

noncomputable section

/-- A275857: a(n) = floor(c*s*a(n-1)) + floor(d*r*a(n-2)), where r = (1+sqrt(5))/2, s = r/(r-1), c = 1, d = 1, a(0) = 1, a(1) = 2.

Offset 0, canonical program `A275857.P3012977211852040062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A275857 (n : ℕ) : ℤ :=
  A275857.P3012977211852040062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A275857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275858.P14342720566579972518

`∑[∑[A212804(n)]*A010892(n+1)]`
-/

namespace A275858.P14342720566579972518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A010892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275858.P14342720566579972518

noncomputable section

/-- A275858: a(n) = floor(c*r*a(n-1)) - floor(d*s*a(n-2)), where r = (1+sqrt(5))/2, s = r/(r-1), c = 1, d = 1, a(0) = 1, a(1) = 1.

Offset 0, canonical program `A275858.P14342720566579972518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A275858 (n : ℕ) : ℤ :=
  A275858.P14342720566579972518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A275858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275868.P16994241827659316143

`A086520(A053438(n))%10`
-/

namespace A275868.P16994241827659316143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086520 (A053438 n).toNat) 10

end

end A275868.P16994241827659316143

noncomputable section

/-- A275868: Numbers n tracing out a spiral path in a pentagonal Z module thereby creating a ten-fold twin pattern with relations to quasicrystals.

Offset 1, canonical program `A275868.P16994241827659316143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A275868 (n : ℕ) : ℤ :=
  A275868.P16994241827659316143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A275868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276071.P2380363936540344839

`A002265(n)^A056699(A000032(and(3, -n)))`
-/

namespace A276071.P2380363936540344839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 n : ℚ) ^ (A056699 (A000032 (Int.land 3 (-(n : ℤ))).toNat).toNat : ℤ)

end

end A276071.P2380363936540344839

noncomputable section

/-- A276071: n^3 followed by n^2 followed by n^4 followed by n.

Offset 0, canonical program `A276071.P2380363936540344839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276071 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276071.P2380363936540344839.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276090.P6791826420892158713

`A133872(n*(n-2)+2)+and(6, A002264(n))`
-/

namespace A276090.P6791826420892158713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 ((n : ℤ) * ((n : ℤ) - 2) + 2).toNat + Int.land 6 (A002264 n)

end

end A276090.P6791826420892158713

noncomputable section

/-- A276090: Left inverse of A276089: For n = sum_{i=1..} d(i)*i! (with each d(i) <= i), a(n) = sum_{j=1..} d(2j-1)*j!.

Offset 0, canonical program `A276090.P6791826420892158713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276090 (n : ℕ) : ℤ :=
  A276090.P6791826420892158713.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276214.P18298263664098779686

`eq[char[A276213(n+1)], A000007(n)]`
-/

namespace A276214.P18298263664098779686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276213 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276214.P18298263664098779686

noncomputable section

/-- A276214: Position of n^r in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(5), h > 1, k > 1.

Offset 1, canonical program `A276214.P18298263664098779686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276214 (n : ℕ) : ℤ :=
  (A276214.P18298263664098779686.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276217.P2515267171898096994

`A134886(n+2)+n`
-/

namespace A276217.P2515267171898096994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 2) + (n : ℤ)

end

end A276217.P2515267171898096994

noncomputable section

/-- A276217: Position of n^s in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(6), h > 1, k > 1.

Offset 1, canonical program `A276217.P2515267171898096994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276217 (n : ℕ) : ℤ :=
  A276217.P2515267171898096994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276221.P5617290000184054163

`A276215(n+1)+1`
-/

namespace A276221.P5617290000184054163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276215 (n + 1) + 1

end

end A276221.P5617290000184054163

noncomputable section

/-- A276221: Position of n^s in the joint ranking of {h} and {k^s}, s = sqrt(3), h >= 1, k >= 2.

Offset 1, canonical program `A276221.P5617290000184054163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276221 (n : ℕ) : ℤ :=
  A276221.P5617290000184054163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276222.P15539970363786319867

`A152737(n+2)+n+1`
-/

namespace A276222.P15539970363786319867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152737 (n + 2) + (n + 1 : ℤ)

end

end A276222.P15539970363786319867

noncomputable section

/-- A276222: Position of n^s in the joint ranking of {h} and {k^s}, h >= 1, k >= 2, s = golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A276222.P15539970363786319867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276222 (n : ℕ) : ℤ :=
  A276222.P15539970363786319867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276376.P13650551449517136747

`Δ[A054861(or(1, A000040(n+1)))]`
-/

namespace A276376.P13650551449517136747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (Int.lor 1 (A000040 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276376.P13650551449517136747

noncomputable section

/-- A276376: Exponent of highest power of 3 dividing product of composite numbers between n-th prime and (n+1)-st prime.

Offset 1, canonical program `A276376.P13650551449517136747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A276376 (n : ℕ) : ℤ :=
  A276376.P13650551449517136747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A276376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276395.P13234382630465203208

`Δ[floor(A158226(n+1)/A158272(n+1))]`
-/

namespace A276395.P13234382630465203208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158226 (n + 1) : ℚ) / (A158272 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276395.P13234382630465203208

noncomputable section

/-- A276395: Characteristic function of floor(36*n/25).

Offset 1, canonical program `A276395.P13234382630465203208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276395 (n : ℕ) : ℤ :=
  A276395.P13234382630465203208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276449.P44379083446101465

`C(A002620(n+1), A001281(∑[n]))`
-/

namespace A276449.P44379083446101465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002620 (n + 1)).toNat (A001281 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276449.P44379083446101465

noncomputable section

/-- A276449: Number of 1-orbits of the cyclic group C_4 for a bi-colored square n X n grid with n squares of one color.

Offset 1, canonical program `A276449.P44379083446101465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A276449 (n : ℕ) : ℤ :=
  (A276449.P44379083446101465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A276449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276502.P6559098655028179355

`lcm(((n+1)%a(n-1))!, A055642(n+1))` with `a(0)=1`
-/

namespace A276502.P6559098655028179355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (Nat.factorial ((n + 1) % a (n - 1)) : ℤ) (A055642 (n + 1))

end

end A276502.P6559098655028179355

noncomputable section

/-- A276502: Least k > 0 such that A045876(n) divides A045876(n*10^k).

Offset 1, canonical program `A276502.P6559098655028179355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276502 (n : ℕ) : ℤ :=
  (A276502.P6559098655028179355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276632.P12790883415635058732

`A079866(∏{p}[n+1, #])`
-/

namespace A276632.P12790883415635058732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A276632.P12790883415635058732

noncomputable section

/-- A276632: Integer part of the geometric mean of the prime factors of n.

Offset 1, canonical program `A276632.P12790883415635058732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A276632 (n : ℕ) : ℤ :=
  A276632.P12790883415635058732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A276632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276713.P3108647971272801842

`eq[A032741(n+3), A032741(n)]`
-/

namespace A276713.P3108647971272801842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276713.P3108647971272801842

noncomputable section

/-- A276713: Numbers n such that n and n+3 have the same number of divisors (A000005).

Offset 1, canonical program `A276713.P3108647971272801842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276713 (n : ℕ) : ℤ :=
  (A276713.P3108647971272801842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276757.P11612559001740181464

`A080513(record[or(n, floor(n/2))])%6`
-/

namespace A276757.P11612559001740181464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 6

end

end A276757.P11612559001740181464

noncomputable section

/-- A276757: Infinite Fibonacci word on the alphabet {1,2,3,4,5}.

Offset 1, canonical program `A276757.P11612559001740181464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A276757 (n : ℕ) : ℤ :=
  A276757.P11612559001740181464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A276757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276806.P5142703683070357090

`A029837(A252736(n+1)+1)`
-/

namespace A276806.P5142703683070357090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A252736 (n + 1) + 1).toNat

end

end A276806.P5142703683070357090

noncomputable section

/-- A276806: Height of the shortest binary factorization tree of n.

Offset 1, canonical program `A276806.P5142703683070357090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276806 (n : ℕ) : ℤ :=
  A276806.P5142703683070357090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276857.P14729695427695350046

`a(Δ[A198084(n)])` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A276857.P14729695427695350046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 3] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A276857.P14729695427695350046

noncomputable section

/-- A276857: First differences of the Beatty sequence A022841 for sqrt(7).

Offset 1, canonical program `A276857.P14729695427695350046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276857 (n : ℕ) : ℤ :=
  (A276857.P14729695427695350046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276858.P4876479302285241086

`3-Δ[A195177(n)]`
-/

namespace A276858.P4876479302285241086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A276858.P4876479302285241086

noncomputable section

/-- A276858: First differences of the Beatty sequence A022842 for sqrt(8).

Offset 1, canonical program `A276858.P4876479302285241086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276858 (n : ℕ) : ℤ :=
  A276858.P4876479302285241086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276859.P14467022770255802899

`abs(Δ[A022843(n)])`
-/

namespace A276859.P14467022770255802899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276859.P14467022770255802899

noncomputable section

/-- A276859: First differences of the Beatty sequence A022843 for e.

Offset 1, canonical program `A276859.P14467022770255802899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276859 (n : ℕ) : ℤ :=
  A276859.P14467022770255802899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276860.P581861567182324134

`abs(Δ[A276853(n)])`
-/

namespace A276860.P581861567182324134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276860.P581861567182324134

noncomputable section

/-- A276860: First differences of the Beatty sequence A276853 for 2*e.

Offset 1, canonical program `A276860.P581861567182324134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276860 (n : ℕ) : ℤ :=
  A276860.P581861567182324134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276866.P1138749720515213800

`A081147(n)+2`
-/

namespace A276866.P1138749720515213800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n + 2

end

end A276866.P1138749720515213800

noncomputable section

/-- A276866: First differences of the Beatty sequence A004976 for 2 + sqrt(5).

Offset 1, canonical program `A276866.P1138749720515213800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276866 (n : ℕ) : ℤ :=
  A276866.P1138749720515213800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276868.P13312452639279008275

`Δ[A276855(n)]`
-/

namespace A276868.P13312452639279008275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276868.P13312452639279008275

noncomputable section

/-- A276868: First differences of the Beatty sequence A276855 for 3 + phi, where phi = golden ratio = (1 + sqrt(5))/2.

Offset 1, canonical program `A276868.P13312452639279008275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276868 (n : ℕ) : ℤ :=
  A276868.P13312452639279008275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276869.P5574487162763271941

`A195128(3-Δ[A195128(n)])`
-/

namespace A276869.P5574487162763271941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A276869.P5574487162763271941

noncomputable section

/-- A276869: First differences of the Beatty sequence A182769 for 2 + sqrt(1/2).

Offset 1, canonical program `A276869.P5574487162763271941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276869 (n : ℕ) : ℤ :=
  A276869.P5574487162763271941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276885.P994545349588383328

`A130568(n)+n`
-/

namespace A276885.P994545349588383328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 n + (n : ℤ)

end

end A276885.P994545349588383328

noncomputable section

/-- A276885: Sums-complement of the Beatty sequence for 1 + phi.

Offset 1, canonical program `A276885.P994545349588383328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276885 (n : ℕ) : ℤ :=
  A276885.P994545349588383328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276935.P875992339060351895

`∑{p}[n+1, val(A000040(val(n+1, #)), #)]`
-/

namespace A276935.P875992339060351895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A000040 (SequenceMachineLib.valuation (n + 1) p)).toNat p

end

end A276935.P875992339060351895

noncomputable section

/-- A276935: Number of distinct prime factors prime(k) of n such that prime(k)^k, but not prime(k)^(k+1) is a divisor of n.

Offset 1, canonical program `A276935.P875992339060351895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276935 (n : ℕ) : ℤ :=
  (A276935.P875992339060351895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277046.P5305586577436346867

`A196199(n)+A052551(A000267(n))`
-/

namespace A277046.P5305586577436346867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n + A052551 (A000267 n).toNat

end

end A277046.P5305586577436346867

noncomputable section

/-- A277046: Triangle read by rows: T(n,k) = 2^n - n + k - 1 for n >= 1, with 1 <= k <= 2n-1.

Offset 1, canonical program `A277046.P5305586577436346867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277046 (n : ℕ) : ℤ :=
  A277046.P5305586577436346867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277065.P11363507706313107840

`∑{d}[n+1, A055012(#)]`
-/

namespace A277065.P11363507706313107840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055012 d

end

end A277065.P11363507706313107840

noncomputable section

/-- A277065: Sum of cubes of the digits of all divisors of n.

Offset 1, canonical program `A277065.P11363507706313107840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277065 (n : ℕ) : ℤ :=
  A277065.P11363507706313107840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277137.P3554020471178101780

`A246393(A110654(n))-A000035(n)`
-/

namespace A277137.P3554020471178101780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246393 (A110654 n).toNat - A000035 n

end

end A277137.P3554020471178101780

noncomputable section

/-- A277137: Numbers k such that cos(k) > 0 and cos(k+2) < 0.

Offset 1, canonical program `A277137.P3554020471178101780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277137 (n : ℕ) : ℤ :=
  A277137.P3554020471178101780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277155.P4577781163159758858

`A144596(A030503(n+4)+2)`
-/

namespace A277155.P4577781163159758858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144596 (A030503 (n + 4) + 2).toNat

end

end A277155.P4577781163159758858

noncomputable section

/-- A277155: Lexicographically least sequence of nonnegative integers that avoids 11/7-powers.

Offset 0, canonical program `A277155.P4577781163159758858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A277155 (n : ℕ) : ℤ :=
  A277155.P4577781163159758858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A277155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277161.P6226237887953159833

`val(A000027(A018227(n+1)), 11)`
-/

namespace A277161.P6226237887953159833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000027 (A018227 (n + 1)).toNat).toNat 11

end

end A277161.P6226237887953159833

noncomputable section

/-- A277161: Lexicographically least sequence of nonnegative integers that avoids 15/8-powers.

Offset 0, canonical program `A277161.P6226237887953159833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A277161 (n : ℕ) : ℤ :=
  (A277161.P6226237887953159833.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A277161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277209.P17765883351870887207

`A010785(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A277209.P17765883351870887207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010785 n + a (A023443 n).toNat

end

end A277209.P17765883351870887207

noncomputable section

/-- A277209: Partial sums of repdigit numbers (A010785).

Offset 0, canonical program `A277209.P17765883351870887207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 894 terms. -/
def A277209 (n : ℕ) : ℤ :=
  A277209.P17765883351870887207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 894 terms. -/
def A277209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277314.P8241262981008711249

`A057526(A129343(n)+1)`
-/

namespace A277314.P8241262981008711249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A129343 n + 1).toNat

end

end A277314.P8241262981008711249

noncomputable section

/-- A277314: Number of nonzero coefficients in Stern polynomial B(n,t).

Offset 0, canonical program `A277314.P8241262981008711249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A277314 (n : ℕ) : ℤ :=
  A277314.P8241262981008711249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A277314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277388.P3266241012393441048

`∑[A220892(n)+2*A108674(n)]`
-/

namespace A277388.P3266241012393441048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220892 n + 2 * A108674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277388.P3266241012393441048

noncomputable section

/-- A277388: Number of nonnegative solutions of a certain system of linear Diophantine equations depending on an odd parameter.

Offset 2, canonical program `A277388.P3266241012393441048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277388 (n : ℕ) : ℤ :=
  A277388.P3266241012393441048.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277545.P12409738716283908751

`A242603(n+1)%7`
-/

namespace A277545.P12409738716283908751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242603 (n + 1)) 7

end

end A277545.P12409738716283908751

noncomputable section

/-- A277545: a(n) = n/7^m mod 7, where 7^m is the greatest power of 7 that divides n.

Offset 1, canonical program `A277545.P12409738716283908751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277545 (n : ℕ) : ℤ :=
  A277545.P12409738716283908751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277560.P12776290003756723041

`A002275((n+1)*(n%2)^n)`
-/

namespace A277560.P12776290003756723041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 ((n + 1) * (n % 2) ^ n)

end

end A277560.P12776290003756723041

noncomputable section

/-- A277560: Binary representation of the x-axis, from the left edge to the origin, or from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 7", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277560.P12776290003756723041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277560 (n : ℕ) : ℤ :=
  A277560.P12776290003756723041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277573.P5388903635817683430

`1/3*A277569(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277573.P5388903635817683430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A277569 (n + 1) : ℚ)

end

end A277573.P5388903635817683430

noncomputable section

/-- A277573: a(n) = (1/3)*A277569(n).

Offset 1, canonical program `A277573.P5388903635817683430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277573 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277573.P5388903635817683430.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277576.P12489906242859010906

`A007916(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277576.P12489906242859010906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007916 (a (n - 1)).toNat

end

end A277576.P12489906242859010906

noncomputable section

/-- A277576: a(1)=1; thereafter a(n) = A007916(a(n-1)).

Offset 1, canonical program `A277576.P12489906242859010906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277576 (n : ℕ) : ℤ :=
  A277576.P12489906242859010906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277599.P16892913130215631464

`eq[1, A004151(n+1)%2]+1`
-/

namespace A277599.P16892913130215631464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004151 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277599.P16892913130215631464

noncomputable section

/-- A277599: (1/5)*A277592.

Offset 1, canonical program `A277599.P16892913130215631464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A277599 (n : ℕ) : ℤ :=
  (A277599.P16892913130215631464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A277599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277789.P1199236273393294411

`∑[xor(A002203(n)-1, -and(1, n))]`
-/

namespace A277789.P1199236273393294411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002203 n - 1) (-(Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277789.P1199236273393294411

noncomputable section

/-- A277789: a(n) = Sum_{k=0..n} (-1)^k*floor((1 + sqrt(2))^k).

Offset 0, canonical program `A277789.P1199236273393294411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A277789 (n : ℕ) : ℤ :=
  A277789.P1199236273393294411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A277789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277790.P4817800256069150675

`lcm(n+1, A039653(n+1))/(n+1)`
-/

namespace A277790.P4817800256069150675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A039653 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A277790.P4817800256069150675

noncomputable section

/-- A277790: Numerator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A277790.P4817800256069150675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277790 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277790.P4817800256069150675.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277791.P6185971221703671631

`(n+1)/gcd(A039653(n+1), n+1)`
-/

namespace A277791.P6185971221703671631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A039653 (n + 1)) (n + 1 : ℤ) : ℚ)

end

end A277791.P6185971221703671631

noncomputable section

/-- A277791: Denominator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A277791.P6185971221703671631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277791 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277791.P6185971221703671631.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277797.P17351685316325223803

`A284351(n*A000035(n))-A000035(n)`
-/

namespace A277797.P17351685316325223803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284351 ((n : ℤ) * A000035 n).toNat - A000035 n

end

end A277797.P17351685316325223803

noncomputable section

/-- A277797: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277797.P17351685316325223803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277797 (n : ℕ) : ℤ :=
  A277797.P17351685316325223803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277849.P10272640155293857379

`A102684(A014824(n))`
-/

namespace A277849.P10272640155293857379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102684 (A014824 n).toNat

end

end A277849.P10272640155293857379

noncomputable section

/-- A277849: Number of digits '9' in the set of all numbers from 0 to A014824(n) = sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

Offset 0, canonical program `A277849.P10272640155293857379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277849 (n : ℕ) : ℤ :=
  A277849.P10272640155293857379.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277904.P1714897233250926635

`n%A000123(∑[char[A000123(n+1)]])`
-/

namespace A277904.P1714897233250926635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000123 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A277904.P1714897233250926635

noncomputable section

/-- A277904: Irregular table: row n (n >= 0) is obtained by listing numbers 0 .. A018819(n)-1.

Offset 1, canonical program `A277904.P1714897233250926635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9828 terms. -/
def A277904 (n : ℕ) : ℤ :=
  A277904.P1714897233250926635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9828 terms. -/
def A277904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277917.P3941357166574701698

`A006943(A164089(4*n+1))`
-/

namespace A277917.P3941357166574701698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A164089 (4 * n + 1)).toNat

end

end A277917.P3941357166574701698

noncomputable section

/-- A277917: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 4", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277917.P3941357166574701698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A277917 (n : ℕ) : ℤ :=
  A277917.P3941357166574701698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A277917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277918.P6699242724950859550

`and(A026644(n), A062878(n))`
-/

namespace A277918.P6699242724950859550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026644 n) (A062878 n)

end

end A277918.P6699242724950859550

noncomputable section

/-- A277918: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 4", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277918.P6699242724950859550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A277918 (n : ℕ) : ℤ :=
  A277918.P6699242724950859550.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A277918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277926.P8317576803823073803

`A094026(A266220(n))`
-/

namespace A277926.P8317576803823073803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A266220 n).toNat

end

end A277926.P8317576803823073803

noncomputable section

/-- A277926: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277926.P8317576803823073803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277926 (n : ℕ) : ℤ :=
  A277926.P8317576803823073803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278105.P6302275646498863824

`A033322(n+1)+A154272(n+1)`
-/

namespace A278105.P6302275646498863824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1) + A154272 (n + 1)

end

end A278105.P6302275646498863824

noncomputable section

/-- A278105: a(n) = floor(3/n).

Offset 1, canonical program `A278105.P6302275646498863824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033322, A154272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278105 (n : ℕ) : ℤ :=
  A278105.P6302275646498863824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033322, A154272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278122.P15122609793789269311

`3*A305156(n)-14`
-/

namespace A278122.P15122609793789269311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A305156 n - 14

end

end A278122.P15122609793789269311

noncomputable section

/-- A278122: a(n) = 204*2^n - 248.

Offset 1, canonical program `A278122.P15122609793789269311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A278122 (n : ℕ) : ℤ :=
  A278122.P15122609793789269311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A278122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278403.P13252681327099517620

`∑{d}[n+1, #*A000217(#)]`
-/

namespace A278403.P13252681327099517620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000217 d

end

end A278403.P13252681327099517620

noncomputable section

/-- A278403: a(n) = Sum_{d|n} d^2 * (d+1)/2.

Offset 1, canonical program `A278403.P13252681327099517620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278403 (n : ℕ) : ℤ :=
  A278403.P13252681327099517620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278536.P10927879092705534477

`A273324(n+2)-A273324(n+1)`
-/

namespace A278536.P10927879092705534477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273324 (n + 2) - A273324 (n + 1)

end

end A278536.P10927879092705534477

noncomputable section

/-- A278536: First differences of A273324.

Offset 1, canonical program `A278536.P10927879092705534477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A273324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278536 (n : ℕ) : ℤ :=
  A278536.P10927879092705534477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A273324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278713.P4379502417608644159

`A067998(n)/gcd(A054000(n+2), A067998(n))`
-/

namespace A278713.P4379502417608644159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067998 n : ℚ) / (Int.gcd (A054000 (n + 2)) (A067998 n) : ℚ)

end

end A278713.P4379502417608644159

noncomputable section

/-- A278713: Numerators of (n-1)*(n-3)/(6*(2*n-1)); equivalently, numerators of Dedekind sum s(2,2*n-1).

Offset 1, canonical program `A278713.P4379502417608644159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A278713.P4379502417608644159.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278714.P11221124697154422280

`gcd(6, 1-n)*A096431(n+1)`
-/

namespace A278714.P11221124697154422280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (1 - (n : ℤ)) : ℤ) * A096431 (n + 1)

end

end A278714.P11221124697154422280

noncomputable section

/-- A278714: Denominators of (n-1)*(n-3)/(6*(2*n-1)), for n >= 1. Denominators of Dedekind sum s(2, 2*n-1).

Offset 1, canonical program `A278714.P11221124697154422280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278714 (n : ℕ) : ℤ :=
  A278714.P11221124697154422280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278721.P3620013212311657528

`A000582(n+10)+A010965(n)-A000580(n+7)`
-/

namespace A278721.P3620013212311657528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 10) + (A010965 (n + 12) - A000580 (n + 7))

end

end A278721.P3620013212311657528

noncomputable section

/-- A278721: Number of nX2 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

Offset 1, canonical program `A278721.P3620013212311657528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278721 (n : ℕ) : ℤ :=
  A278721.P3620013212311657528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278753.P10591540415365618920

`A287468(A109043(n))-A287468(n+1)`
-/

namespace A278753.P10591540415365618920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A109043 n).toNat - A287468 (n + 1)

end

end A278753.P10591540415365618920

noncomputable section

/-- A278753: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A278753.P10591540415365618920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A278753 (n : ℕ) : ℤ :=
  A278753.P10591540415365618920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A278753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278947.P6960136946126875321

`∑{d}[n, A000566(#)]`
-/

namespace A278947.P6960136946126875321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000566 d

end

end A278947.P6960136946126875321

noncomputable section

/-- A278947: Expansion of Sum_{k>=1} (k*(5*k - 3)/2)*x^k/(1 - x^k).

Offset 0, canonical program `A278947.P6960136946126875321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278947 (n : ℕ) : ℤ :=
  A278947.P6960136946126875321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279028.P3494808504256830670

`lcm(A056594(n), A266508(n))`
-/

namespace A279028.P3494808504256830670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A266508 n)

end

end A279028.P3494808504256830670

noncomputable section

/-- A279028: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 129", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A279028.P3494808504256830670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A279028 (n : ℕ) : ℤ :=
  (A279028.P3494808504256830670.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A279028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279054.P14839410525152240936

`A247426(n+1)-1`
-/

namespace A279054.P14839410525152240936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1) - 1

end

end A279054.P14839410525152240936

noncomputable section

/-- A279054: Largest integer m for which binomial(m,n-1) > binomial(m-1,n).

Offset 1, canonical program `A279054.P14839410525152240936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279054 (n : ℕ) : ℤ :=
  A279054.P14839410525152240936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279061.P5329778650763394169

`∑{d}[n, A082784(#-1)]`
-/

namespace A279061.P5329778650763394169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082784 (d - 1)

end

end A279061.P5329778650763394169

noncomputable section

/-- A279061: Number of divisors of n of the form 7*k + 1.

Offset 0, canonical program `A279061.P5329778650763394169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279061 (n : ℕ) : ℤ :=
  A279061.P5329778650763394169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279111.P7103479420215322072

`A232567(n+1)-∑[∑[and(1, n)]]`
-/

namespace A279111.P7103479420215322072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232567 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279111.P7103479420215322072

noncomputable section

/-- A279111: Number of non-equivalent ways to place 2 non-attacking kings on an n X n board.

Offset 1, canonical program `A279111.P7103479420215322072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279111 (n : ℕ) : ℤ :=
  A279111.P7103479420215322072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279290.P4214688874557127316

`A001158(n+1)-A005064(n+1)`
-/

namespace A279290.P4214688874557127316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A005064 (n + 1)

end

end A279290.P4214688874557127316

noncomputable section

/-- A279290: Sum of cubes of nonprime divisors of n.

Offset 1, canonical program `A279290.P4214688874557127316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, A005064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A279290 (n : ℕ) : ℤ :=
  A279290.P4214688874557127316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, A005064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A279290.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279357.P8695073576768170559

`xor(Δ[A122247(n)], A005187(n))`
-/

namespace A279357.P8695073576768170559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A005187 n)

end

end A279357.P8695073576768170559

noncomputable section

/-- A279357: a(n) = A005187(n) XOR A005187(n+1).

Offset 0, canonical program `A279357.P8695073576768170559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279357 (n : ℕ) : ℤ :=
  A279357.P8695073576768170559.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279437.P10191852344145387021

`∑[n]*∑[∑[A187297(n+1)]]`
-/

namespace A279437.P10191852344145387021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A279437.P10191852344145387021

noncomputable section

/-- A279437: Number of ways to place 3 points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

Offset 1, canonical program `A279437.P10191852344145387021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279437 (n : ℕ) : ℤ :=
  A279437.P10191852344145387021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279496.P17721157438031586069

`∑{d}[n+1, A253903(#)]`
-/

namespace A279496.P17721157438031586069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253903 d

end

end A279496.P17721157438031586069

noncomputable section

/-- A279496: Number of square pyramidal numbers dividing n.

Offset 1, canonical program `A279496.P17721157438031586069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A279496 (n : ℕ) : ℤ :=
  A279496.P17721157438031586069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A279496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279521.P13549278606039013017

`A006165(n+2)-1`
-/

namespace A279521.P13549278606039013017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2) - 1

end

end A279521.P13549278606039013017

noncomputable section

/-- A279521: Maximum number of single-direction edges in leveled binary trees with n nodes.

Offset 1, canonical program `A279521.P13549278606039013017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279521 (n : ℕ) : ℤ :=
  A279521.P13549278606039013017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279574.P12593372951877447246

`A279322(2*(n+1))`
-/

namespace A279574.P12593372951877447246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279322 (2 * (n + 1))

end

end A279574.P12593372951877447246

noncomputable section

/-- A279574: Number of n X 2 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A279574.P12593372951877447246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A279574 (n : ℕ) : ℤ :=
  A279574.P12593372951877447246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A279574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279742.P2431605558967303777

`2*(A010049(n)+2*A000071(n+1))`
-/

namespace A279742.P2431605558967303777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010049 n + 2 * A000071 (n + 1))

end

end A279742.P2431605558967303777

noncomputable section

/-- A279742: Number of 2 X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A279742.P2431605558967303777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A279742 (n : ℕ) : ℤ :=
  A279742.P2431605558967303777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A279742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279780.P8916946259894325653

`A289260(n)*(-1)^n`
-/

namespace A279780.P8916946259894325653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289260 n * (-1) ^ n

end

end A279780.P8916946259894325653

noncomputable section

/-- A279780: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = 8/5.

Offset 0, canonical program `A279780.P8916946259894325653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A279780 (n : ℕ) : ℤ :=
  A279780.P8916946259894325653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A279780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279933.P135696941930136663

`eq[0, A078588(n)]+1`
-/

namespace A279933.P135696941930136663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279933.P135696941930136663

noncomputable section

/-- A279933: Positive integers k such that {(k-1)*r} < 1/2, where r = golden ratio = (1 + sqrt(5))/2 and { } = fractional part.

Offset 1, canonical program `A279933.P135696941930136663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A279933 (n : ℕ) : ℤ :=
  (A279933.P135696941930136663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A279933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280026.P12511479644503027020

`A055086(n)+n%floor(sqrt(n+1))`
-/

namespace A280026.P12511479644503027020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + ((n % Nat.sqrt (n + 1) : ℕ) : ℤ)

end

end A280026.P12511479644503027020

noncomputable section

/-- A280026: Fill an infinite square array by following a spiral around the origin; in the n-th cell, enter the number of earlier cells that can be seen from that cell.

Offset 0, canonical program `A280026.P12511479644503027020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280026 (n : ℕ) : ℤ :=
  A280026.P12511479644503027020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280084.P16125585662034977001

`A002313(n+1)-A000007(n)`
-/

namespace A280084.P16125585662034977001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A000007 n

end

end A280084.P16125585662034977001

noncomputable section

/-- A280084: 1 together with the Pythagorean primes.

Offset 1, canonical program `A280084.P16125585662034977001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280084 (n : ℕ) : ℤ :=
  A280084.P16125585662034977001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280098.P5959995611617743735

`A280097(n+1)/24`
-/

namespace A280098.P5959995611617743735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280097 (n + 1) : ℚ) / 24

end

end A280098.P5959995611617743735

noncomputable section

/-- A280098: The sum of the divisors of 24*n - 1, divided by 24.

Offset 1, canonical program `A280098.P5959995611617743735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280098 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A280098.P5959995611617743735.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280166.P11037172666201527614

`(-1)^n*A257088(n)`
-/

namespace A280166.P11037172666201527614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257088 n

end

end A280166.P11037172666201527614

noncomputable section

/-- A280166: a(2*n) = 4*n if n > 0, a(2*n + 1) = -(2*n + 1), a(0) = 1.

Offset 0, canonical program `A280166.P11037172666201527614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280166 (n : ℕ) : ℤ :=
  A280166.P11037172666201527614.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280166.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280167.P6416678742977905605

`(-1)^n*A257143(n)`
-/

namespace A280167.P6416678742977905605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257143 n

end

end A280167.P6416678742977905605

noncomputable section

/-- A280167: a(2*n) = 3*n if n > 0, a(2*n + 1) = -(2*n + 1), a(0) = 1.

Offset 0, canonical program `A280167.P6416678742977905605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280167 (n : ℕ) : ℤ :=
  A280167.P6416678742977905605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280246.P5802468637491998326

`∏{d}[n+1, A023896(#)]`
-/

namespace A280246.P5802468637491998326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A023896 d

end

end A280246.P5802468637491998326

noncomputable section

/-- A280246: a(n) = Product_{d|n} psi(d), where psi(m) is the sum of totatives of m (A023896).

Offset 1, canonical program `A280246.P5802468637491998326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A280246 (n : ℕ) : ℤ :=
  A280246.P5802468637491998326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A280246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280410.P15523525945967946313

`A094026(A266303(n))`
-/

namespace A280410.P15523525945967946313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A266303 n).toNat

end

end A280410.P15523525945967946313

noncomputable section

/-- A280410: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A280410.P15523525945967946313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280410 (n : ℕ) : ℤ :=
  A280410.P15523525945967946313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280511.P11922694693869200803

`A001519(A130259(n+1)+1)`
-/

namespace A280511.P11922694693869200803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A130259 (n + 1) + 1).toNat

end

end A280511.P11922694693869200803

noncomputable section

/-- A280511: Index sequence of the block-fractal sequence A001468.

Offset 1, canonical program `A280511.P11922694693869200803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280511 (n : ℕ) : ℤ :=
  A280511.P11922694693869200803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280513.P6202625206943010125

`A001906(A130259(n)+1)-n`
-/

namespace A280513.P6202625206943010125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A130259 n + 1).toNat - (n : ℤ)

end

end A280513.P6202625206943010125

noncomputable section

/-- A280513: Index sequence of the reverse block-fractal sequence A001468.

Offset 1, canonical program `A280513.P6202625206943010125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280513 (n : ℕ) : ℤ :=
  A280513.P6202625206943010125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280577.P3074047183986236125

`A075328(n)-A053158(n+1)`
-/

namespace A280577.P3074047183986236125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n - A053158 (n + 1)

end

end A280577.P3074047183986236125

noncomputable section

/-- A280577: a(n) = eulerphi(n) + floor(n/2).

Offset 1, canonical program `A280577.P3074047183986236125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280577 (n : ℕ) : ℤ :=
  A280577.P3074047183986236125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280699.P3664510402392200407

`gcd(A115339(n+1), A176742(n))`
-/

namespace A280699.P3664510402392200407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115339 (n + 1)) (A176742 n)

end

end A280699.P3664510402392200407

noncomputable section

/-- A280699: Greatest Lucas number that is a divisor of the n-th Fibonacci number, a(1) = a(2) = 1.

Offset 1, canonical program `A280699.P3664510402392200407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A280699 (n : ℕ) : ℤ :=
  (A280699.P3664510402392200407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A280699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280758.P17378759072857213415

`A152090(n+2)+A000007(n)-A152090(n)`
-/

namespace A280758.P17378759072857213415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (n + 2) + (A000007 n - A152090 n)

end

end A280758.P17378759072857213415

noncomputable section

/-- A280758: Expansion of (1 + x + x^2)/(1 - x - 3*x^2 - x^3 + x^4).

Offset 0, canonical program `A280758.P17378759072857213415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A280758 (n : ℕ) : ℤ :=
  A280758.P17378759072857213415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A280758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280762.P12865905246997797298

`ceil(log2(A000108(n)))`
-/

namespace A280762.P12865905246997797298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A000108 n : ℝ)⌉

end

end A280762.P12865905246997797298

noncomputable section

/-- A280762: a(n) = ceiling( log_2( Catalan(n) ) ).

Offset 0, canonical program `A280762.P12865905246997797298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A280762 (n : ℕ) : ℤ :=
  A280762.P12865905246997797298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A280762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281017.P7289956237185605220

`eq[2, A032741(A280916(n)²)]`
-/

namespace A281017.P7289956237185605220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A280916 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281017.P7289956237185605220

noncomputable section

/-- A281017: Numbers with a prime number of dashes in their International Morse numeral representation.

Offset 1, canonical program `A281017.P7289956237185605220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3511 terms. -/
def A281017 (n : ℕ) : ℤ :=
  (A281017.P7289956237185605220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3511 terms. -/
def A281017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281019.P3294416278922020862

`∏[A016035(n+1)+1]`
-/

namespace A281019.P3294416278922020862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P3294416278922020862

noncomputable section

/-- A281019: Partial products of A051953; a(1) = 1.

Offset 1, canonical program `A281019.P3294416278922020862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A281019 (n : ℕ) : ℤ :=
  A281019.P3294416278922020862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A281019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281146.P821833077912013293

`A267051(n)-11%A011557(n)`
-/

namespace A281146.P821833077912013293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267051 n - Int.tmod 11 (A011557 n)

end

end A281146.P821833077912013293

noncomputable section

/-- A281146: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A281146.P821833077912013293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A281146 (n : ℕ) : ℤ :=
  A281146.P821833077912013293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A281146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281217.P4722299089049354569

`(A126646(n+1)-A283217(n+1))/2`
-/

namespace A281217.P4722299089049354569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (n + 1) - A283217 (n + 1) : ℚ) / 2

end

end A281217.P4722299089049354569

noncomputable section

/-- A281217: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A281217.P4722299089049354569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A281217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A281217.P4722299089049354569.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A281217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281241.P7408969812568458589

`2*A281235(n+1)`
-/

namespace A281241.P7408969812568458589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281235 (n + 1)

end

end A281241.P7408969812568458589

noncomputable section

/-- A281241: Solutions x to the negative Pell equation y^2 = 72*x^2 - 1331712 with x,y >= 0.

Offset 1, canonical program `A281241.P7408969812568458589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A281241 (n : ℕ) : ℤ :=
  A281241.P7408969812568458589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A281241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281376.P8580911295092577376

`∑[∑[A023645(abs(1-n)+1)]]`
-/

namespace A281376.P8580911295092577376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281376.P8580911295092577376

noncomputable section

/-- A281376: Total number of counts where floor(N/k) < floor((N+k)/n) for k = {1, 2, ..., n-1} and N >= n.

Offset 1, canonical program `A281376.P8580911295092577376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281376 (n : ℕ) : ℤ :=
  A281376.P8580911295092577376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281553.P903484465477514888

`A038572(xor(n, floor(n/2)))`
-/

namespace A281553.P903484465477514888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A281553.P903484465477514888

noncomputable section

/-- A281553: Write n in binary reflected Gray code, rotate one binary place to the right and convert the code back to decimal.

Offset 0, canonical program `A281553.P903484465477514888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281553 (n : ℕ) : ℤ :=
  A281553.P903484465477514888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281581.P15511767208660476214

`A083316(n)-A083327(n)`
-/

namespace A281581.P15511767208660476214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083316 n - A083327 n

end

end A281581.P15511767208660476214

noncomputable section

/-- A281581: a(n) = (15*2^(2*n+2) + 15*2^(n+2) + 5*2^(n+3)*3^(n+1) - 24*5^(n+1))/120.

Offset 0, canonical program `A281581.P15511767208660476214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A281581 (n : ℕ) : ℤ :=
  A281581.P15511767208660476214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A281581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281594.P9064033195026317982

`A007947(A000108(n))`
-/

namespace A281594.P9064033195026317982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000108 n).toNat

end

end A281594.P9064033195026317982

noncomputable section

/-- A281594: The radical of the Catalan number which is the largest squarefree number dividing binomial(2*n,n)/(n+1).

Offset 0, canonical program `A281594.P9064033195026317982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281594 (n : ℕ) : ℤ :=
  A281594.P9064033195026317982.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281664.P3503266122031613119

`A045326(n+1)-1`
-/

namespace A281664.P3503266122031613119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1) - 1

end

end A281664.P3503266122031613119

noncomputable section

/-- A281664: Numbers k such that A000005(k) = A000005(A000217(k)).

Offset 1, canonical program `A281664.P3503266122031613119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281664 (n : ℕ) : ℤ :=
  A281664.P3503266122031613119.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281703.P6915530931857286295

`ceil(p?[A100531(n)+1+n]/3)`
-/

namespace A281703.P6915530931857286295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100531 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3⌉

end

end A281703.P6915530931857286295

noncomputable section

/-- A281703: Numbers k such that A000005(k) = A000005(A000326(k)).

Offset 1, canonical program `A281703.P6915530931857286295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A281703 (n : ℕ) : ℤ :=
  A281703.P6915530931857286295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A281703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281815.P6050278625740793222

`and(1, char[A195313(n)])`
-/

namespace A281815.P6050278625740793222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A281815.P6050278625740793222

noncomputable section

/-- A281815: Expansion of f(x, x^10) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281815.P6050278625740793222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281815 (n : ℕ) : ℤ :=
  (A281815.P6050278625740793222.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282002.P14148458962214913846

`A094026(A267352(n))`
-/

namespace A282002.P14148458962214913846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A267352 n).toNat

end

end A282002.P14148458962214913846

noncomputable section

/-- A282002: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282002.P14148458962214913846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282002 (n : ℕ) : ℤ :=
  A282002.P14148458962214913846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282080.P11231614446896098972

`A213850(n+1)-A000292(A285869(n))`
-/

namespace A282080.P11231614446896098972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213850 (n + 1) - A000292 (A285869 n).toNat

end

end A282080.P11231614446896098972

noncomputable section

/-- A282080: Number of n-element subsets of [n+4] having an even sum.

Offset 0, canonical program `A282080.P11231614446896098972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282080 (n : ℕ) : ℤ :=
  A282080.P11231614446896098972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282122.P11801974229766094100

`A056830(n*and(1, n)+1)+A056830(n)`
-/

namespace A282122.P11801974229766094100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n * Nat.land 1 n + 1) + A056830 n

end

end A282122.P11801974229766094100

noncomputable section

/-- A282122: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282122.P11801974229766094100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282122 (n : ℕ) : ℤ :=
  A282122.P11801974229766094100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282154.P723453364652554422

`24*A282097(n)`
-/

namespace A282154.P723453364652554422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A282097 n

end

end A282154.P723453364652554422

noncomputable section

/-- A282154: Coefficients in expansion of Eisenstein series -q*(d/dq)(q*(d/dq)E_2).

Offset 0, canonical program `A282154.P723453364652554422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A282097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282154 (n : ℕ) : ℤ :=
  A282154.P723453364652554422.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A282097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282154.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282286.P7619917001422999851

`lcm(A016921(n)+n, 1-7*n)`
-/

namespace A282286.P7619917001422999851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016921 n + (n : ℤ)) (1 - (7 * n : ℤ))

end

end A282286.P7619917001422999851

noncomputable section

/-- A282286: Least common multiple of 7*n+1 and 7*n-1.

Offset 0, canonical program `A282286.P7619917001422999851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282286 (n : ℕ) : ℤ :=
  (A282286.P7619917001422999851.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282386.P16956700879093564152

`A006943(A006257(n))`
-/

namespace A282386.P16956700879093564152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A006257 n).toNat

end

end A282386.P16956700879093564152

noncomputable section

/-- A282386: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282386.P16956700879093564152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A282386 (n : ℕ) : ℤ :=
  A282386.P16956700879093564152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A282386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282411.P10088010066774626228

`∏{d}[1-n, #%2]*A002275(or(1, n))`
-/

namespace A282411.P10088010066774626228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℤ) * A002275 (Nat.lor 1 n)

end

end A282411.P10088010066774626228

noncomputable section

/-- A282411: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282411.P10088010066774626228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282411 (n : ℕ) : ℤ :=
  A282411.P10088010066774626228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282416.P15373099460086230700

`A286507(A193356(n+1))*A289404(n)`
-/

namespace A282416.P15373099460086230700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 (A193356 (n + 1)).toNat * A289404 n

end

end A282416.P15373099460086230700

noncomputable section

/-- A282416: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282416.P15373099460086230700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282416 (n : ℕ) : ℤ :=
  A282416.P15373099460086230700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282452.P10611343078574645269

`A094026(Δ[A266257(n)])`
-/

namespace A282452.P10611343078574645269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (f1 (n + 1) - f1 n).toNat

end

end A282452.P10611343078574645269

noncomputable section

/-- A282452: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282452.P10611343078574645269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282452 (n : ℕ) : ℤ :=
  A282452.P10611343078574645269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282464.P101039133801469205

`floor(∑[n*A295680(2*n+1)/2])`
-/

namespace A282464.P101039133801469205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A295680 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A282464.P101039133801469205

noncomputable section

/-- A282464: a(n) = Sum_{i=0..n} i*Fibonacci(i)^2.

Offset 0, canonical program `A282464.P101039133801469205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A282464 (n : ℕ) : ℤ :=
  A282464.P101039133801469205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A282464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282473.P17884941203573586449

`9*A065438(n+1)`
-/

namespace A282473.P17884941203573586449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A065438 (n + 1)

end

end A282473.P17884941203573586449

noncomputable section

/-- A282473: Multiples of 9 which cannot be expressed as the difference between a natural number k and its digit sum s(k).

Offset 1, canonical program `A282473.P17884941203573586449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282473 (n : ℕ) : ℤ :=
  A282473.P17884941203573586449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282600.P3309668431358535051

`A004526(n-A016035(n+1))*A004526(n)`
-/

namespace A282600.P3309668431358535051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A016035 (n + 1)).toNat * A004526 n

end

end A282600.P3309668431358535051

noncomputable section

/-- A282600: a(n) = Sum_(k=1..phi(n)) floor(d_k/2) where d_k are the totatives of n.

Offset 1, canonical program `A282600.P3309668431358535051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282600 (n : ℕ) : ℤ :=
  A282600.P3309668431358535051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282622.P11673872232935592026

`val(A025547(n+4), 5)`
-/

namespace A282622.P11673872232935592026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025547 (n + 4)).toNat 5

end

end A282622.P11673872232935592026

noncomputable section

/-- A282622: Number of digits of the representation of n in the alternating sexagesimal-decimal number system.

Offset 1, canonical program `A282622.P11673872232935592026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282622 (n : ℕ) : ℤ :=
  (A282622.P11673872232935592026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282891.P14281106400011043794

`∑[A004001(n+1)]%(n+1)`
-/

namespace A282891.P14281106400011043794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A282891.P14281106400011043794

noncomputable section

/-- A282891: Remainder when sum of first n terms of A004001 is divided by n.

Offset 1, canonical program `A282891.P14281106400011043794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282891 (n : ℕ) : ℤ :=
  A282891.P14281106400011043794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282894.P8507695228909102184

`∑[A004001(n+1)]%A004001(n+1)`
-/

namespace A282894.P8507695228909102184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A004001 (n + 1))

end

end A282894.P8507695228909102184

noncomputable section

/-- A282894: Remainder when sum of first n terms of A004001 is divided by A004001(n).

Offset 1, canonical program `A282894.P8507695228909102184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282894 (n : ℕ) : ℤ :=
  A282894.P8507695228909102184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283025.P6503046752952569404

`A076268(n+1)%(n+1)`
-/

namespace A283025.P6503046752952569404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076268 (n + 1)) (n + 1 : ℤ)

end

end A283025.P6503046752952569404

noncomputable section

/-- A283025: Remainder when sum of first n terms of A005185 is divided by n.

Offset 1, canonical program `A283025.P6503046752952569404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283025 (n : ℕ) : ℤ :=
  A283025.P6503046752952569404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283165.P4937381751944655618

`n-and(n-A006257(n), 2*n)`
-/

namespace A283165.P4937381751944655618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land ((n : ℤ) - A006257 n) (2 * n : ℤ)

end

end A283165.P4937381751944655618

noncomputable section

/-- A283165: a(0) = 0; a(1) = 1; a(2*n) = 2*a(n), a(2*n+1) = 2*a(n) + (-1)^a(n+1).

Offset 0, canonical program `A283165.P4937381751944655618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283165 (n : ℕ) : ℤ :=
  A283165.P4937381751944655618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283233.P10814312052704964947

`∑[2*A001468(n)]`
-/

namespace A283233.P10814312052704964947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283233.P10814312052704964947

noncomputable section

/-- A283233: 2*A000201.

Offset 1, canonical program `A283233.P10814312052704964947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283233 (n : ℕ) : ℤ :=
  A283233.P10814312052704964947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283295.P9519186107921099445

`eq[A000007(n), A105570(A000093(n))]`
-/

namespace A283295.P9519186107921099445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283295.P9519186107921099445

noncomputable section

/-- A283295: Integers n such that floor(n^(3/2)) is squarefree.

Offset 1, canonical program `A283295.P9519186107921099445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A283295 (n : ℕ) : ℤ :=
  (A283295.P9519186107921099445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A283295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283351.P7294209392179528084

`A002275(or(1, abs(1-n)))`
-/

namespace A283351.P7294209392179528084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (Int.lor 1 |1 - (n : ℤ)|).toNat

end

end A283351.P7294209392179528084

noncomputable section

/-- A283351: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283351.P7294209392179528084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A283351 (n : ℕ) : ℤ :=
  A283351.P7294209392179528084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A283351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283419.P3546850962263025948

`A092092(p?[a(n-2)+2])` with `a(0)=0, a(1)=2, a(2)=4, a(3)=1`
-/

namespace A283419.P3546850962263025948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A283419.P3546850962263025948

noncomputable section

/-- A283419: a(n) is the multiplicative inverse of 3 modulo the n-th prime (or 0 if none exists).

Offset 1, canonical program `A283419.P3546850962263025948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A283419 (n : ℕ) : ℤ :=
  A283419.P3546850962263025948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A283419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283439.P6626348979952952832

`(A008611(n)-(n+2))*Δ[A099470(n+1)]`
-/

namespace A283439.P6626348979952952832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008611 n - (n + 2 : ℤ)) * (f1 (n + 1) - f1 n)

end

end A283439.P6626348979952952832

noncomputable section

/-- A283439: Hankel transform of A033434.

Offset 0, canonical program `A283439.P6626348979952952832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283439 (n : ℕ) : ℤ :=
  A283439.P6626348979952952832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283451.P3335321419397655915

`∑[-A005185(n+1)*A033999(n)]`
-/

namespace A283451.P3335321419397655915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A005185 (n + 1) * A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283451.P3335321419397655915

noncomputable section

/-- A283451: a(n) = Sum_{k=1..n} (-1)^k * A005185(k).

Offset 1, canonical program `A283451.P3335321419397655915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283451 (n : ℕ) : ℤ :=
  A283451.P3335321419397655915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283501.P15782849535763562148

`∑[A004001(n+1)]%A005843(n+1)`
-/

namespace A283501.P15782849535763562148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005843 (n + 1))

end

end A283501.P15782849535763562148

noncomputable section

/-- A283501: Remainder when sum of first n terms of A004001 is divided by 2*n.

Offset 1, canonical program `A283501.P15782849535763562148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283501 (n : ℕ) : ℤ :=
  A283501.P15782849535763562148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283509.P10202215359054126072

`A076268(n+1)%(2*(n+1))`
-/

namespace A283509.P10202215359054126072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076268 (n + 1)) (2 * (n + 1) : ℤ)

end

end A283509.P10202215359054126072

noncomputable section

/-- A283509: Remainder when sum of first n terms of the Hofstadter Q-sequence is divided by 2*n.

Offset 1, canonical program `A283509.P10202215359054126072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283509 (n : ℕ) : ℤ :=
  A283509.P10202215359054126072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283525.P1612065617130241968

`∑[A004001(n+1)]%(3*(n+1))`
-/

namespace A283525.P1612065617130241968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (3 * (n + 1) : ℤ)

end

end A283525.P1612065617130241968

noncomputable section

/-- A283525: Remainder when sum of first n terms of A004001 is divided by 3*n.

Offset 1, canonical program `A283525.P1612065617130241968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283525 (n : ℕ) : ℤ :=
  A283525.P1612065617130241968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283655.P11118753203039852526

`A004001(A004001(n+2))-A004001(A080677(n+1))`
-/

namespace A283655.P11118753203039852526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A004001 (n + 2)).toNat - A004001 (A080677 (n + 1)).toNat

end

end A283655.P11118753203039852526

noncomputable section

/-- A283655: a(n) = b(b(n+1)) - b(n-b(n)+1) where b(n) = A004001(n).

Offset 1, canonical program `A283655.P11118753203039852526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283655 (n : ℕ) : ℤ :=
  A283655.P11118753203039852526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283709.P12501239008037404575

`A283650(n)+A290682(n)-A289098(n)`
-/

namespace A283709.P12501239008037404575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283650 n + (A290682 n - A289098 n)

end

end A283709.P12501239008037404575

noncomputable section

/-- A283709: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283709.P12501239008037404575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A283709 (n : ℕ) : ℤ :=
  A283709.P12501239008037404575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A283709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283767.P7767198059280804537

`lt[A005206(n)%2, 1]+1`
-/

namespace A283767.P7767198059280804537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283767.P7767198059280804537

noncomputable section

/-- A283767: Numbers k such that U(k) is even, where U = A001950 = upper Wythoff sequence.

Offset 1, canonical program `A283767.P7767198059280804537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283767 (n : ℕ) : ℤ :=
  (A283767.P7767198059280804537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283768.P4981395873337742799

`eq[1, A005206(n)%2]+1`
-/

namespace A283768.P4981395873337742799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283768.P4981395873337742799

noncomputable section

/-- A283768: Numbers k such that U(k) is odd, where U = A001950 = upper Wythoff sequence.

Offset 1, canonical program `A283768.P4981395873337742799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283768 (n : ℕ) : ℤ :=
  (A283768.P4981395873337742799.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283771.P6400894254700234399

`eq[1, (A004956(n)-2)%3]`
-/

namespace A283771.P6400894254700234399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004956 n - 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283771.P6400894254700234399

noncomputable section

/-- A283771: Numbers k such that L(k) = 2 mod 3, where L = A000201 = lower Wythoff sequence.

Offset 1, canonical program `A283771.P6400894254700234399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A283771 (n : ℕ) : ℤ :=
  (A283771.P6400894254700234399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A283771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283772.P13159893543690945890

`eq[1, A004957(n)%3]`
-/

namespace A283772.P13159893543690945890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004957 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283772.P13159893543690945890

noncomputable section

/-- A283772: Numbers k such that U(k) = 0 mod 3, where U = A001950 = upper Wythoff sequence.

Offset 1, canonical program `A283772.P13159893543690945890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A283772 (n : ℕ) : ℤ :=
  (A283772.P13159893543690945890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A283772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283774.P14228486931551571778

`eq[1, (n-A060143(n))%3]`
-/

namespace A283774.P14228486931551571778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A060143 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283774.P14228486931551571778

noncomputable section

/-- A283774: Numbers k such that U(k) == 2 mod 3, where U = A001950 = upper Wythoff sequence.

Offset 1, canonical program `A283774.P14228486931551571778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A283774 (n : ℕ) : ℤ :=
  (A283774.P14228486931551571778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A283774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283834.P17938430144001037038

`A075111(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A283834.P17938430144001037038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075111 (n + 1) - a (n - 1)

end

end A283834.P17938430144001037038

noncomputable section

/-- A283834: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 4 consecutive 0's and 4 consecutive 1's.

Offset 0, canonical program `A283834.P17938430144001037038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A283834 (n : ℕ) : ℤ :=
  A283834.P17938430144001037038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A283834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283835.P9859982128392497524

`Δ[round(A000288(n+3)/6)]`
-/

namespace A283835.P9859982128392497524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000288 (n + 3) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283835.P9859982128392497524

noncomputable section

/-- A283835: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 5 consecutive 0's and 5 consecutive 1's.

Offset 0, canonical program `A283835.P9859982128392497524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A283835 (n : ℕ) : ℤ :=
  A283835.P9859982128392497524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A283835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283836.P12151570932681974270

`Δ[ceil(A001949(n+4)/2)]`
-/

namespace A283836.P12151570932681974270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001949 (n + 4) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283836.P12151570932681974270

noncomputable section

/-- A283836: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 6 consecutive 0's and 6 consecutive 1's.

Offset 0, canonical program `A283836.P12151570932681974270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A283836 (n : ℕ) : ℤ :=
  A283836.P12151570932681974270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A283836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283963.P10359583538470732036

`char[A286389(n)+n]`
-/

namespace A283963.P10359583538470732036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A283963.P10359583538470732036

noncomputable section

/-- A283963: Fixed point of the morphism 0 -> 1, 1 -> 1010.

Offset 1, canonical program `A283963.P10359583538470732036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283963 (n : ℕ) : ℤ :=
  (A283963.P10359583538470732036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283964.P17668733400232915345

`A026367(n+1)+1+n`
-/

namespace A283964.P17668733400232915345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1) + 1 + (n : ℤ)

end

end A283964.P17668733400232915345

noncomputable section

/-- A283964: Positions of 0 in A283963; complement of A283965.

Offset 1, canonical program `A283964.P17668733400232915345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283964 (n : ℕ) : ℤ :=
  A283964.P17668733400232915345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283965.P9752618056722054252

`A286389(n)+1+n`
-/

namespace A283965.P9752618056722054252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 n + 1 + (n : ℤ)

end

end A283965.P9752618056722054252

noncomputable section

/-- A283965: Positions of 1 in A283963; complement of A283964.

Offset 1, canonical program `A283965.P9752618056722054252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283965 (n : ℕ) : ℤ :=
  A283965.P9752618056722054252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284019.P8425388726725023330

`A004001(n+1)-A005185(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284019.P8425388726725023330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A005185 (n + 1)

end

end A284019.P8425388726725023330

noncomputable section

/-- A284019: The "Hofstadter chaotic heart" sequence: a(n) = A004001(n) - A005185(n).

Offset 1, canonical program `A284019.P8425388726725023330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284019 (n : ℕ) : ℤ :=
  A284019.P8425388726725023330.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284019.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284097.P4703554069463701905

`∑{d}[n+1, #*A079998(#-1)]`
-/

namespace A284097.P4703554069463701905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079998 (d - 1)

end

end A284097.P4703554069463701905

noncomputable section

/-- A284097: a(n) = Sum_{d|n, d == 1 (mod 5)} d.

Offset 1, canonical program `A284097.P4703554069463701905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284097 (n : ℕ) : ℤ :=
  A284097.P4703554069463701905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284098.P14941002019999752586

`∑{d}[n+1, #*A079979(#-1)]`
-/

namespace A284098.P14941002019999752586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079979 (d - 1)

end

end A284098.P14941002019999752586

noncomputable section

/-- A284098: a(n) = Sum_{d|n, d == 1 (mod 6)} d.

Offset 1, canonical program `A284098.P14941002019999752586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284098 (n : ℕ) : ℤ :=
  A284098.P14941002019999752586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284099.P914746867242275467

`∑{d}[n+1, #*A082784(#-1)]`
-/

namespace A284099.P914746867242275467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A082784 (d - 1)

end

end A284099.P914746867242275467

noncomputable section

/-- A284099: a(n) = Sum_{d|n, d == 1 (mod 7)} d.

Offset 1, canonical program `A284099.P914746867242275467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284099 (n : ℕ) : ℤ :=
  A284099.P914746867242275467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284100.P16838605729315589615

`∑{d}[n+1, #*A253513(#-1)]`
-/

namespace A284100.P16838605729315589615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A253513 (d - 1)

end

end A284100.P16838605729315589615

noncomputable section

/-- A284100: a(n) = Sum_{d|n, d == 1 (mod 8)} d.

Offset 1, canonical program `A284100.P16838605729315589615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284100 (n : ℕ) : ℤ :=
  A284100.P16838605729315589615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284105.P4018641519786266915

`∑{d}[n+1, #*A082784(#+1)]`
-/

namespace A284105.P4018641519786266915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A082784 (d + 1)

end

end A284105.P4018641519786266915

noncomputable section

/-- A284105: a(n) = Sum_{d|n, d == 6 (mod 7)} d.

Offset 1, canonical program `A284105.P4018641519786266915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A284105 (n : ℕ) : ℤ :=
  A284105.P4018641519786266915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A284105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284117.P13830945115724323163

`∑{d}[n+1, #*A268340(#)]`
-/

namespace A284117.P13830945115724323163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A268340 d

end

end A284117.P13830945115724323163

noncomputable section

/-- A284117: Sum of proper prime power divisors of n.

Offset 1, canonical program `A284117.P13830945115724323163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284117 (n : ℕ) : ℤ :=
  A284117.P13830945115724323163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284124.P6247716302523195513

`(4*(n+1))%A005185(n+1)`
-/

namespace A284124.P6247716302523195513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * (n + 1) : ℤ) (A005185 (n + 1))

end

end A284124.P6247716302523195513

noncomputable section

/-- A284124: Remainder when 4*n is divided by A005185(n).

Offset 1, canonical program `A284124.P6247716302523195513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284124 (n : ℕ) : ℤ :=
  A284124.P6247716302523195513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284280.P10246323075996560872

`∑{d}[n+1, #*and(1, A047412(#))]`
-/

namespace A284280.P10246323075996560872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.land 1 (A047412 d)

end

end A284280.P10246323075996560872

noncomputable section

/-- A284280: a(n) = Sum_{d|n, d == 2 (mod 5)} d.

Offset 1, canonical program `A284280.P10246323075996560872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284280 (n : ℕ) : ℤ :=
  A284280.P10246323075996560872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284361.P16555063331181266176

`∑{d}[n+1, #*A183865(#)%2]`
-/

namespace A284361.P16555063331181266176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A183865 d) 2

end

end A284361.P16555063331181266176

noncomputable section

/-- A284361: a(n) = Sum_{d|n, d = 0, 1, or 4 mod 5} d.

Offset 1, canonical program `A284361.P16555063331181266176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284361 (n : ℕ) : ℤ :=
  A284361.P16555063331181266176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284362.P5653031429459134529

`∑{d}[n+1, #*A047278(#)%2]`
-/

namespace A284362.P5653031429459134529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A047278 d) 2

end

end A284362.P5653031429459134529

noncomputable section

/-- A284362: a(n) = Sum_{d|n, d = 0, 1, or 5 mod 6} d.

Offset 1, canonical program `A284362.P5653031429459134529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284362 (n : ℕ) : ℤ :=
  A284362.P5653031429459134529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284365.P11990704887653612876

`A187570(n+1)+1+n`
-/

namespace A284365.P11990704887653612876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1) + 1 + (n : ℤ)

end

end A284365.P11990704887653612876

noncomputable section

/-- A284365: Positions of 0 in A284364; complement of A284366.

Offset 1, canonical program `A284365.P11990704887653612876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284365 (n : ℕ) : ℤ :=
  A284365.P11990704887653612876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284366.P2946871292571761873

`A366860(n)+1+n`
-/

namespace A284366.P2946871292571761873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366860 n + 1 + (n : ℤ)

end

end A284366.P2946871292571761873

noncomputable section

/-- A284366: Positions of 1 in A284364; complement of A284365.

Offset 1, canonical program `A284366.P2946871292571761873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284366 (n : ℕ) : ℤ :=
  A284366.P2946871292571761873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284394.P885342829682260951

`abs(Δ[A026351(floor((n+1)/3))])`
-/

namespace A284394.P885342829682260951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌊(n + 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A284394.P885342829682260951

noncomputable section

/-- A284394: {101->2}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A284394.P885342829682260951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284394 (n : ℕ) : ℤ :=
  A284394.P885342829682260951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284395.P7367287315047778442

`abs(3*A026352(n)-1)`
-/

namespace A284395.P7367287315047778442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A026352 n - 1|

end

end A284395.P7367287315047778442

noncomputable section

/-- A284395: Positions of 1 in A284394.

Offset 1, canonical program `A284395.P7367287315047778442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284395 (n : ℕ) : ℤ :=
  A284395.P7367287315047778442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284396.P11041930620206500139

`abs(2*n-(A035337(n)+2))`
-/

namespace A284396.P11041930620206500139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (A035337 n + 2)|

end

end A284396.P11041930620206500139

noncomputable section

/-- A284396: Positions of 2 in A284394.

Offset 1, canonical program `A284396.P11041930620206500139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284396 (n : ℕ) : ℤ :=
  A284396.P11041930620206500139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284443.P13197412432002274483

`∑{d}[n+1, #*A144601(2*#)]`
-/

namespace A284443.P13197412432002274483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A144601 (2 * d)

end

end A284443.P13197412432002274483

noncomputable section

/-- A284443: a(n) = Sum_{d|n, d == 2 (mod 7)} d.

Offset 1, canonical program `A284443.P13197412432002274483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284443 (n : ℕ) : ℤ :=
  A284443.P13197412432002274483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284444.P14860939798542868921

`∑{d}[n+1, #*A082784(#+4)]`
-/

namespace A284444.P14860939798542868921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A082784 (d + 4)

end

end A284444.P14860939798542868921

noncomputable section

/-- A284444: a(n) = Sum_{d|n, d == 3 (mod 7)} d.

Offset 1, canonical program `A284444.P14860939798542868921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A284444 (n : ℕ) : ℤ :=
  A284444.P14860939798542868921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A284444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284478.P17703318329199154233

`A005185(n+1)-A055748(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284478.P17703318329199154233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) - A055748 (n + 1)

end

end A284478.P17703318329199154233

noncomputable section

/-- A284478: a(n) = A005185(n) - A055748(n).

Offset 1, canonical program `A284478.P17703318329199154233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284478 (n : ℕ) : ℤ :=
  A284478.P17703318329199154233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284506.P5353495828140658715

`2*A026367(A004526(n)+1)+n+1`
-/

namespace A284506.P5353495828140658715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026367 (A004526 n + 1).toNat + (n + 1 : ℤ)

end

end A284506.P5353495828140658715

noncomputable section

/-- A284506: Positions of 0 in A284505; complement of A284507.

Offset 1, canonical program `A284506.P5353495828140658715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284506 (n : ℕ) : ℤ :=
  A284506.P5353495828140658715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284507.P12069901503054785212

`2*A026367(n+1)-(n+1)`
-/

namespace A284507.P12069901503054785212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026367 (n + 1) - (n + 1 : ℤ)

end

end A284507.P12069901503054785212

noncomputable section

/-- A284507: Positions of 1 in A284505; complement of A284506.

Offset 1, canonical program `A284507.P12069901503054785212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284507 (n : ℕ) : ℤ :=
  A284507.P12069901503054785212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284555.P18280556964026014776

`eq[0, A048727(n)%3]`
-/

namespace A284555.P18280556964026014776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048727 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284555.P18280556964026014776

noncomputable section

/-- A284555: Positions of zeros in A284557.

Offset 0, canonical program `A284555.P18280556964026014776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A284555 (n : ℕ) : ℤ :=
  (A284555.P18280556964026014776.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A284555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284621.P14588018230324982726

`abs(1-2*A004957(n))`
-/

namespace A284621.P14588018230324982726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A004957 n|

end

end A284621.P14588018230324982726

noncomputable section

/-- A284621: Positions of 0 in A284620.

Offset 1, canonical program `A284621.P14588018230324982726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284621 (n : ℕ) : ℤ :=
  A284621.P14588018230324982726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284624.P2118528827355321266

`A000027(A026352(n)+1+n)`
-/

namespace A284624.P2118528827355321266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A026352 n + 1 + (n : ℤ)).toNat

end

end A284624.P2118528827355321266

noncomputable section

/-- A284624: Positions of 1 in A284749.

Offset 1, canonical program `A284624.P2118528827355321266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284624 (n : ℕ) : ℤ :=
  A284624.P2118528827355321266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284675.P13236861927282947980

`A080600(n)+1+n`
-/

namespace A284675.P13236861927282947980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 n + 1 + (n : ℤ)

end

end A284675.P13236861927282947980

noncomputable section

/-- A284675: Positions of 0 in A284674; complement of A284676.

Offset 1, canonical program `A284675.P13236861927282947980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284675 (n : ℕ) : ℤ :=
  A284675.P13236861927282947980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284678.P13700835878893103956

`A284676(n+1)+3*n`
-/

namespace A284678.P13700835878893103956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) + (3 * n : ℤ)

end

end A284678.P13700835878893103956

noncomputable section

/-- A284678: Positions of 0 in A284677; complement of A284679.

Offset 1, canonical program `A284678.P13700835878893103956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284678 (n : ℕ) : ℤ :=
  A284678.P13700835878893103956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284753.P14921659165875602772

`2*A026363(n+1)`
-/

namespace A284753.P14921659165875602772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026363 (n + 1)

end

end A284753.P14921659165875602772

noncomputable section

/-- A284753: Positions of 1 in A284751; complement of A284752.

Offset 1, canonical program `A284753.P14921659165875602772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284753 (n : ℕ) : ℤ :=
  A284753.P14921659165875602772.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284772.P17040323948208132760

`A286389(n)%2`
-/

namespace A284772.P17040323948208132760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286389 n) 2

end

end A284772.P17040323948208132760

noncomputable section

/-- A284772: Fixed point of the morphism 0 -> 01, 1 -> 0010.

Offset 1, canonical program `A284772.P17040323948208132760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284772 (n : ℕ) : ℤ :=
  A284772.P17040323948208132760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284817.P6169827849227293748

`A189664(C(3, n²)+n)`
-/

namespace A284817.P6169827849227293748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (Nat.choose 3 (n ^ 2) + n)

end

end A284817.P6169827849227293748

noncomputable section

/-- A284817: a(n) = 2n - 1 - A284776(n).

Offset 1, canonical program `A284817.P6169827849227293748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284817 (n : ℕ) : ℤ :=
  A284817.P6169827849227293748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284853.P3894203280212817045

`2*A026367(n+1)`
-/

namespace A284853.P3894203280212817045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026367 (n + 1)

end

end A284853.P3894203280212817045

noncomputable section

/-- A284853: Positions of 1 in A284851; complement of A284852.

Offset 1, canonical program `A284853.P3894203280212817045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284853 (n : ℕ) : ℤ :=
  A284853.P3894203280212817045.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284879.P577505175711310991

`A189628(n+1)+Δ[n²]`
-/

namespace A284879.P577505175711310991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284879.P577505175711310991

noncomputable section

/-- A284879: Positions of 0 in A284878; complement of A284880.

Offset 1, canonical program `A284879.P577505175711310991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284879 (n : ℕ) : ℤ :=
  A284879.P577505175711310991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284900.P1510735213663924980

`∑{d}[n+1, A309338(#)]`
-/

namespace A284900.P1510735213663924980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309338 d

end

end A284900.P1510735213663924980

noncomputable section

/-- A284900: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^4.

Offset 1, canonical program `A284900.P1510735213663924980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284900 (n : ℕ) : ℤ :=
  A284900.P1510735213663924980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284906.P962888511464918355

`A189668(n+1)+Δ[n²]`
-/

namespace A284906.P962888511464918355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284906.P962888511464918355

noncomputable section

/-- A284906: Positions of 0 in A284905; complement of A284907.

Offset 1, canonical program `A284906.P962888511464918355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284906 (n : ℕ) : ℤ :=
  A284906.P962888511464918355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284913.P15008075159223114751

`A189727(n+1)+Δ[n²]`
-/

namespace A284913.P15008075159223114751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284913.P15008075159223114751

noncomputable section

/-- A284913: Positions of 0 in A284912; complement of A284914.

Offset 1, canonical program `A284913.P15008075159223114751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284913 (n : ℕ) : ℤ :=
  A284913.P15008075159223114751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284914.P18201955164397708571

`2*(n+1)-A189727(n+1)`
-/

namespace A284914.P18201955164397708571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A189727 (n + 1)

end

end A284914.P18201955164397708571

noncomputable section

/-- A284914: Positions of 1 in A284912; complement of A284913.

Offset 1, canonical program `A284914.P18201955164397708571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284914 (n : ℕ) : ℤ :=
  A284914.P18201955164397708571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284926.P14470823227090905771

`∑{d}[n+1, #*A309336(#)]`
-/

namespace A284926.P14470823227090905771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A309336 d

end

end A284926.P14470823227090905771

noncomputable section

/-- A284926: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^5.

Offset 1, canonical program `A284926.P14470823227090905771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284926 (n : ℕ) : ℤ :=
  A284926.P14470823227090905771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284933.P4679445134235036996

`A294732(n+2)+A171946(n+1)`
-/

namespace A284933.P4679445134235036996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (n + 2) + A171946 (n + 1)

end

end A284933.P4679445134235036996

noncomputable section

/-- A284933: Positions of 0 in A284792; complement of A284934.

Offset 1, canonical program `A284933.P4679445134235036996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284933 (n : ℕ) : ℤ :=
  A284933.P4679445134235036996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285044.P10925217924383233597

`∑[(1-8*n)²]*A000108(n)`
-/

namespace A285044.P10925217924383233597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (8 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 n

end

end A285044.P10925217924383233597

noncomputable section

/-- A285044: Expansion of cosh(5*arctanh(2*sqrt(x))).

Offset 0, canonical program `A285044.P10925217924383233597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A285044 (n : ℕ) : ℤ :=
  A285044.P10925217924383233597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A285044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285073.P1593324729896153878

`A159684(abs(2-n))`
-/

namespace A285073.P1593324729896153878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 |2 - (n : ℤ)|.toNat

end

end A285073.P1593324729896153878

noncomputable section

/-- A285073: 0-limiting word of the morphism 0->10, 1-> 010.

Offset 1, canonical program `A285073.P1593324729896153878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285073 (n : ℕ) : ℤ :=
  A285073.P1593324729896153878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285076.P9313654898266391924

`a(1-A188037(n))` with `a(0)=1, a(1)=0`
-/

namespace A285076.P9313654898266391924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (1 - A188037 n).toNat

end

end A285076.P9313654898266391924

noncomputable section

/-- A285076: 1-limiting word of the morphism 0->10, 1-> 010.

Offset 1, canonical program `A285076.P9313654898266391924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285076 (n : ℕ) : ℤ :=
  (A285076.P9313654898266391924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285099.P14812426102409343108

`val(A008486(and(n, n-1)), 2)`
-/

namespace A285099.P14812426102409343108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008486 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat 2

end

end A285099.P14812426102409343108

noncomputable section

/-- A285099: a(n) is the zero-based index of the second least significant 1-bit in the base-2 representation of n, or 0 if there are fewer than two 1-bits in n.

Offset 0, canonical program `A285099.P14812426102409343108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285099 (n : ℕ) : ℤ :=
  (A285099.P14812426102409343108.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285187.P15261003129053085157

`A228364(n+2)+A000035(n)`
-/

namespace A285187.P15261003129053085157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 2) + A000035 n

end

end A285187.P15261003129053085157

noncomputable section

/-- A285187: a(n) = Sum(psi(k-1)*psi(n-k-1),k=0..n)+(1-(-1)^n)/2, where psi(k) = A000931(k+6).

Offset 0, canonical program `A285187.P15261003129053085157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A285187 (n : ℕ) : ℤ :=
  A285187.P15261003129053085157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A285187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285194.P12820240869321444829

`∑[A081172(n)]%3`
-/

namespace A285194.P12820240869321444829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A285194.P12820240869321444829

noncomputable section

/-- A285194: Expansion of (1+x^2)/(1+x+x^4) mod 3.

Offset 0, canonical program `A285194.P12820240869321444829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A285194 (n : ℕ) : ℤ :=
  A285194.P12820240869321444829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A285194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285306.P713584507056425595

`2*(n+1)-A189664(n+1)`
-/

namespace A285306.P713584507056425595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A189664 (n + 1)

end

end A285306.P713584507056425595

noncomputable section

/-- A285306: Positions of 0 in A285305; complement of A285307.

Offset 1, canonical program `A285306.P713584507056425595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285306 (n : ℕ) : ℤ :=
  A285306.P713584507056425595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285430.P12724991769825989304

`char[A026363(n+1)-1]`
-/

namespace A285430.P12724991769825989304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285430.P12724991769825989304

noncomputable section

/-- A285430: Fixed point of the morphism 0->11, 1-> 101.

Offset 1, canonical program `A285430.P12724991769825989304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285430 (n : ℕ) : ℤ :=
  (A285430.P12724991769825989304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285431.P6460164538225184312

`char[A026367(n+1)-1]`
-/

namespace A285431.P6460164538225184312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285431.P6460164538225184312

noncomputable section

/-- A285431: Fixed point of the morphism 0->11, 1-> 110.

Offset 1, canonical program `A285431.P6460164538225184312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285431 (n : ℕ) : ℤ :=
  (A285431.P6460164538225184312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285540.P16012612933494173661

`A287468(lcm(2, n))`
-/

namespace A285540.P16012612933494173661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (Nat.lcm 2 n)

end

end A285540.P16012612933494173661

noncomputable section

/-- A285540: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285540.P16012612933494173661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285540 (n : ℕ) : ℤ :=
  A285540.P16012612933494173661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285543.P9845314030376834614

`A274638(n+1)+and(1, n+1)`
-/

namespace A285543.P9845314030376834614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274638 (n + 1) + (Nat.land 1 (n + 1) : ℤ)

end

end A285543.P9845314030376834614

noncomputable section

/-- A285543: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285543.P9845314030376834614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A285543 (n : ℕ) : ℤ :=
  A285543.P9845314030376834614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A285543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285679.P7008390562928459721

`abs(3*A026351(n)-n)`
-/

namespace A285679.P7008390562928459721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A026351 n - (n : ℤ)|

end

end A285679.P7008390562928459721

noncomputable section

/-- A285679: Positions of 2 in A285677.

Offset 1, canonical program `A285679.P7008390562928459721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285679 (n : ℕ) : ℤ :=
  A285679.P7008390562928459721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285726.P3256880989065645844

`A252736((∑[n]+n)%(n+1)+1)`
-/

namespace A285726.P3256880989065645844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 ((∑ j ∈ Finset.range (n + 1), f1 j + n) % (n + 1) + 1)

end

end A285726.P3256880989065645844

noncomputable section

/-- A285726: a(1) = a(2) = 0; for n > 2, a(n) = A252736(n) - (1-A000035(n)).

Offset 1, canonical program `A285726.P3256880989065645844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285726 (n : ℕ) : ℤ :=
  A285726.P3256880989065645844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285769.P12128075102545262245

`A007947(n+1)^A005361(n+1)`
-/

namespace A285769.P12128075102545262245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A005361 (n + 1) : ℤ)

end

end A285769.P12128075102545262245

noncomputable section

/-- A285769: (Product of distinct prime factors)^(Product of prime exponents).

Offset 1, canonical program `A285769.P12128075102545262245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285769 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285769.P12128075102545262245.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285895.P10646935884568177305

`∑{d}[n+1, gcd(#, A000217(#+n))]`
-/

namespace A285895.P10646935884568177305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A000217 (d + n))

end

end A285895.P10646935884568177305

noncomputable section

/-- A285895: Sum of divisors d of n such that n/d is not congruent to 0 mod 4.

Offset 1, canonical program `A285895.P10646935884568177305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285895 (n : ℕ) : ℤ :=
  (A285895.P10646935884568177305.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285950.P7772063319653377245

`∑[A131136(n)%3]`
-/

namespace A285950.P7772063319653377245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131136 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285950.P7772063319653377245

noncomputable section

/-- A285950: Positions of 0's in A285949; complement of A285951.

Offset 1, canonical program `A285950.P7772063319653377245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285950 (n : ℕ) : ℤ :=
  A285950.P7772063319653377245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285958.P10971398913599129129

`∑[C(2, A101671(n))]`
-/

namespace A285958.P10971398913599129129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A101671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P10971398913599129129

noncomputable section

/-- A285958: Positions of 0 in A285957; complement of A285959.

Offset 1, canonical program `A285958.P10971398913599129129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285958 (n : ℕ) : ℤ :=
  (A285958.P10971398913599129129.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285961.P11025727463194114248

`A091785(n+1)+1+n`
-/

namespace A285961.P11025727463194114248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1) + 1 + (n : ℤ)

end

end A285961.P11025727463194114248

noncomputable section

/-- A285961: Positions of 0 in A285960; complement of A285962.

Offset 1, canonical program `A285961.P11025727463194114248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285961 (n : ℕ) : ℤ :=
  A285961.P11025727463194114248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285971.P4639553320394911257

`ceil(A260480(n+1)+n/2)`
-/

namespace A285971.P4639553320394911257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A260480 (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A285971.P4639553320394911257

noncomputable section

/-- A285971: Positions of 0 in A285969; complement of A285970.

Offset 1, canonical program `A285971.P4639553320394911257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285971 (n : ℕ) : ℤ :=
  A285971.P4639553320394911257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285977.P1218866237928235629

`∑[gcd(2, A101671(n))]`
-/

namespace A285977.P1218866237928235629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A101671 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P1218866237928235629

noncomputable section

/-- A285977: Positions of 1 in A285975; complement of A285976.

Offset 1, canonical program `A285977.P1218866237928235629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285977 (n : ℕ) : ℤ :=
  (A285977.P1218866237928235629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285979.P980250076451766351

`A001651(A284393(n+1))+2*n`
-/

namespace A285979.P980250076451766351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A284393 (n + 1)).toNat + (2 * n : ℤ)

end

end A285979.P980250076451766351

noncomputable section

/-- A285979: Positions of 0 in A285978; complement of A285980.

Offset 1, canonical program `A285979.P980250076451766351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A285979 (n : ℕ) : ℤ :=
  A285979.P980250076451766351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A285979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286015.P16729021585373301699

`∑{d}[n+1, A123684(#)]`
-/

namespace A286015.P16729021585373301699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A123684 d

end

end A286015.P16729021585373301699

noncomputable section

/-- A286015: Sum of largest parts of all partitions of n into consecutive parts.

Offset 1, canonical program `A286015.P16729021585373301699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286015 (n : ℕ) : ℤ :=
  A286015.P16729021585373301699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286065.P6002679725487375161

`A260480(n+1)+A028242(n)`
-/

namespace A286065.P6002679725487375161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260480 (n + 1) + A028242 n

end

end A286065.P6002679725487375161

noncomputable section

/-- A286065: Positions of 0 in A286064; complement of A286066.

Offset 1, canonical program `A286065.P6002679725487375161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286065 (n : ℕ) : ℤ :=
  A286065.P6002679725487375161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286183.P16536639819314678559

`A007574(2*(n+1))`
-/

namespace A286183.P16536639819314678559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007574 (2 * (n + 1))

end

end A286183.P16536639819314678559

noncomputable section

/-- A286183: Number of connected induced (non-null) subgraphs of the antiprism graph with 2n nodes.

Offset 1, canonical program `A286183.P16536639819314678559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A286183 (n : ℕ) : ℤ :=
  A286183.P16536639819314678559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A286183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286184.P6976312261333206223

`A048493(n+1)+3^(n+1)`
-/

namespace A286184.P6976312261333206223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048493 (n + 1) + (3 ^ (n + 1) : ℤ)

end

end A286184.P6976312261333206223

noncomputable section

/-- A286184: Number of connected induced (non-null) subgraphs of the helm graph with 2n+1 nodes.

Offset 1, canonical program `A286184.P6976312261333206223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A286184 (n : ℕ) : ℤ :=
  A286184.P6976312261333206223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A286184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286188.P11581538836010699762

`(2*(n+1))²+A206776(n+1)-(2*n+1)`
-/

namespace A286188.P11581538836010699762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 : ℤ) + (A206776 (n + 1) - (2 * n + 1 : ℤ))

end

end A286188.P11581538836010699762

noncomputable section

/-- A286188: Number of connected induced (non-null) subgraphs of the gear graph with 2n+1 nodes.

Offset 1, canonical program `A286188.P11581538836010699762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A286188 (n : ℕ) : ℤ :=
  A286188.P11581538836010699762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A286188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286572.P6201159932631189698

`1/2*(2+(A053574(n+1)+A000203(n+1))²-A053574(n+1)-3*A000203(n+1))`
-/

namespace A286572.P6201159932631189698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A053574 (n + 1) + A000203 (n + 1)) ^ 2 - A053574 (n + 1)) - 3 * A000203 (n + 1) : ℚ)

end

end A286572.P6201159932631189698

noncomputable section

/-- A286572: Compound filter (2-adic valuation of phi(n) & sigma(n)): a(n) = P(A053574(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286572.P6201159932631189698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286572 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286572.P6201159932631189698.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286572.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286577.P6127444042492466078

`round(n/3^A253786(n))`
-/

namespace A286577.P6127444042492466078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (3 : ℚ) ^ (A253786 n : ℤ))

end

end A286577.P6127444042492466078

noncomputable section

/-- A286577: If n = 3k-1 then a(n) = a(k), otherwise a(n) = n.

Offset 0, canonical program `A286577.P6127444042492466078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286577 (n : ℕ) : ℤ :=
  A286577.P6127444042492466078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286591.P12205940793272904624

`1/2*(2+(A009191(n+1)+A009194(n+1))²-A009191(n+1)-3*A009194(n+1))`
-/

namespace A286591.P12205940793272904624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A009191 (n + 1) + A009194 (n + 1)) ^ 2 - A009191 (n + 1)) - 3 * A009194 (n + 1) : ℚ)

end

end A286591.P12205940793272904624

noncomputable section

/-- A286591: Compound filter: a(n) = P(A009191(n), A009194(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286591.P12205940793272904624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286591 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286591.P12205940793272904624.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286655.P4264452727309570536

`and(A049473(n), A080764(n))`
-/

namespace A286655.P4264452727309570536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049473 n) (A080764 n)

end

end A286655.P4264452727309570536

noncomputable section

/-- A286655: Characteristic sequence of the Beatty sequence, A022842, of sqrt(8).

Offset 1, canonical program `A286655.P4264452727309570536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286655 (n : ℕ) : ℤ :=
  A286655.P4264452727309570536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286665.P12755796930078172197

`abs(1-A159684(n+1))`
-/

namespace A286665.P12755796930078172197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A159684 (n + 1)|

end

end A286665.P12755796930078172197

noncomputable section

/-- A286665: {0->01}-transform of the Pell word, A171588.

Offset 1, canonical program `A286665.P12755796930078172197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286665 (n : ℕ) : ℤ :=
  A286665.P12755796930078172197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286666.P2262944503126098146

`A003151(n+1)-1`
-/

namespace A286666.P2262944503126098146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) - 1

end

end A286666.P2262944503126098146

noncomputable section

/-- A286666: Positions of 0 in A286665; complement of A286667.

Offset 1, canonical program `A286666.P2262944503126098146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286666 (n : ℕ) : ℤ :=
  A286666.P2262944503126098146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286667.P2713070744812953764

`∑[A080764(n)+1]`
-/

namespace A286667.P2713070744812953764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286667.P2713070744812953764

noncomputable section

/-- A286667: Positions of 1 in A286665; complement of A286666.

Offset 1, canonical program `A286667.P2713070744812953764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286667 (n : ℕ) : ℤ :=
  A286667.P2713070744812953764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286686.P5308715415208066588

`abs(A080764(n)-2-2*n)`
-/

namespace A286686.P5308715415208066588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080764 n - 2 - (2 * n : ℤ)|

end

end A286686.P5308715415208066588

noncomputable section

/-- A286686: Positions of 0 in A286685; complement of A286687.

Offset 1, canonical program `A286686.P5308715415208066588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286686 (n : ℕ) : ℤ :=
  A286686.P5308715415208066588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286687.P10039167065829446357

`abs(A080764(n)+Δ[n²])`
-/

namespace A286687.P10039167065829446357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080764 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A286687.P10039167065829446357

noncomputable section

/-- A286687: Positions of 1 in A286685; complement of A286686.

Offset 1, canonical program `A286687.P10039167065829446357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286687 (n : ℕ) : ℤ :=
  A286687.P10039167065829446357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286719.P4969572481493460331

`∑[A028060(n)]`
-/

namespace A286719.P4969572481493460331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286719.P4969572481493460331

noncomputable section

/-- A286719: Column k=4 of triangle A039755, Sheffer(exp(x), (exp(2*x) - 1)/2).

Offset 0, canonical program `A286719.P4969572481493460331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A286719 (n : ℕ) : ℤ :=
  A286719.P4969572481493460331.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A286719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286754.P11351865985503812535

`2*(n+1)-A035337(n)%2`
-/

namespace A286754.P11351865985503812535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - Int.tmod (A035337 n) 2

end

end A286754.P11351865985503812535

noncomputable section

/-- A286754: Positions of 1 in A286752; complement of A286753.

Offset 1, canonical program `A286754.P11351865985503812535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286754 (n : ℕ) : ℤ :=
  A286754.P11351865985503812535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286805.P2640537364746463001

`A083088(A004526(n))+n`
-/

namespace A286805.P2640537364746463001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 (A004526 n).toNat + (n : ℤ)

end

end A286805.P2640537364746463001

noncomputable section

/-- A286805: Positions of 0 in A286804; complement of A286806.

Offset 1, canonical program `A286805.P2640537364746463001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286805 (n : ℕ) : ℤ :=
  A286805.P2640537364746463001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286865.P3302213470359981083

`A000225(A072376(or(1, n)))`
-/

namespace A286865.P3302213470359981083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A072376 (Nat.lor 1 n)).toNat

end

end A286865.P3302213470359981083

noncomputable section

/-- A286865: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286865.P3302213470359981083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A286865 (n : ℕ) : ℤ :=
  A286865.P3302213470359981083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A286865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286904.P1062189813046643830

`A003151(floor(n/2)+1)+n+1`
-/

namespace A286904.P1062189813046643830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n + 1 : ℤ)

end

end A286904.P1062189813046643830

noncomputable section

/-- A286904: Positions of 0 in A286903; complement of A286905.

Offset 1, canonical program `A286904.P1062189813046643830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286904 (n : ℕ) : ℤ :=
  A286904.P1062189813046643830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286905.P7496559545484589591

`∑[2*A188037(n+1)+1]`
-/

namespace A286905.P7496559545484589591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188037 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286905.P7496559545484589591

noncomputable section

/-- A286905: Positions of 1 in A286903; complement of A286904.

Offset 1, canonical program `A286905.P7496559545484589591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286905 (n : ℕ) : ℤ :=
  A286905.P7496559545484589591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286907.P16898303085372787161

`n%2*A080764(floor(n/2))`
-/

namespace A286907.P16898303085372787161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A080764 ⌊(n : ℚ) / 2⌋.toNat

end

end A286907.P16898303085372787161

noncomputable section

/-- A286907: {0->00,1->01}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286907.P16898303085372787161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286907 (n : ℕ) : ℤ :=
  A286907.P16898303085372787161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286922.P13163846795494854594

`char[A187328(n)-2]`
-/

namespace A286922.P13163846795494854594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286922.P13163846795494854594

noncomputable section

/-- A286922: {0->01}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286922.P13163846795494854594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286922 (n : ℕ) : ℤ :=
  (A286922.P13163846795494854594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286924.P8172027417057288515

`∑[2-A080764(n)]`
-/

namespace A286924.P8172027417057288515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286924.P8172027417057288515

noncomputable section

/-- A286924: Positions of 1 in A286922; complement of A286923.

Offset 1, canonical program `A286924.P8172027417057288515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286924 (n : ℕ) : ℤ :=
  A286924.P8172027417057288515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286988.P18403024785931774095

`∑[Δ[A195176(n)]+1]`
-/

namespace A286988.P18403024785931774095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286988.P18403024785931774095

noncomputable section

/-- A286988: Positions of 0 in A286987; complement of A286989.

Offset 1, canonical program `A286988.P18403024785931774095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286988 (n : ℕ) : ℤ :=
  A286988.P18403024785931774095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286994.P1062580341009753336

`n+1+A195176(A008620(n))`
-/

namespace A286994.P1062580341009753336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A195176 (A008620 n).toNat

end

end A286994.P1062580341009753336

noncomputable section

/-- A286994: Positions of 0 in A286993; complement of A286995.

Offset 1, canonical program `A286994.P1062580341009753336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286994 (n : ℕ) : ℤ :=
  A286994.P1062580341009753336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287106.P12211031677089213963

`eq[1, A287104(n+1)]+1`
-/

namespace A287106.P12211031677089213963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287106.P12211031677089213963

noncomputable section

/-- A287106: Positions of 1 in A287104.

Offset 1, canonical program `A287106.P12211031677089213963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287106 (n : ℕ) : ℤ :=
  (A287106.P12211031677089213963.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287132.P3849054294059386704

`and(A287193(n), A288763(n))`
-/

namespace A287132.P3849054294059386704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287193 n) (A288763 n)

end

end A287132.P3849054294059386704

noncomputable section

/-- A287132: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287132.P3849054294059386704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A287132 (n : ℕ) : ℤ :=
  A287132.P3849054294059386704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A287132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287143.P3696424980961276882

`∑[A188067(n)+∑[A110654(n)]]`
-/

namespace A287143.P3696424980961276882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287143.P3696424980961276882

noncomputable section

/-- A287143: Expansion of x*(1 + 3*x + x^2)/((1 - x)^5*(1 + x)^4).

Offset 0, canonical program `A287143.P3696424980961276882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287143 (n : ℕ) : ℤ :=
  A287143.P3696424980961276882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287190.P14141146628365090120

`A094026(and(A267352(n), A287192(n)))`
-/

namespace A287190.P14141146628365090120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.land (A267352 n) (A287192 n)).toNat

end

end A287190.P14141146628365090120

noncomputable section

/-- A287190: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287190.P14141146628365090120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287190 (n : ℕ) : ℤ :=
  A287190.P14141146628365090120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287197.P11640315673981248028

`gcd(A169585(n), A277799(n))`
-/

namespace A287197.P11640315673981248028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A277799 n)

end

end A287197.P11640315673981248028

noncomputable section

/-- A287197: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287197.P11640315673981248028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A287197 (n : ℕ) : ℤ :=
  (A287197.P11640315673981248028.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A287197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287300.P1174836460604458142

`p?[(n+1)²+n*A171960(n)]`
-/

namespace A287300.P1174836460604458142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (n : ℤ) * A171960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287300.P1174836460604458142

noncomputable section

/-- A287300: Primes that can be generated by the concatenation in base 3, in ascending order, of two consecutive integers read in base 10.

Offset 1, canonical program `A287300.P1174836460604458142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A287300 (n : ℕ) : ℤ :=
  A287300.P1174836460604458142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A287300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287353.P4245883112398231915

`10*a(n-1)+A000040(n)` with `a(0)=0`
-/

namespace A287353.P4245883112398231915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + A000040 n

end

end A287353.P4245883112398231915

noncomputable section

/-- A287353: a(0)=0; for n>0, a(n) = 10*a(n-1) + prime(n).

Offset 0, canonical program `A287353.P4245883112398231915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287353 (n : ℕ) : ℤ :=
  A287353.P4245883112398231915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287425.P846342589008876529

`(n+1)*A005314(n+1)+2`
-/

namespace A287425.P846342589008876529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005314 (n + 1) + 2

end

end A287425.P846342589008876529

noncomputable section

/-- A287425: Number of maximal matchings in the n-gear graph.

Offset 1, canonical program `A287425.P846342589008876529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A287425 (n : ℕ) : ℤ :=
  A287425.P846342589008876529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A287425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287438.P2963112552505513428

`(2-A189668(n+1))*A189727(n+1)`
-/

namespace A287438.P2963112552505513428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A189668 (n + 1)) * A189727 (n + 1)

end

end A287438.P2963112552505513428

noncomputable section

/-- A287438: Start with 0 and repeatedly substitute 0->012, 1->120, 2->210.

Offset 1, canonical program `A287438.P2963112552505513428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287438 (n : ℕ) : ℤ :=
  A287438.P2963112552505513428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287452.P3979137329400655331

`A287451(n+1)+3*n+1`
-/

namespace A287452.P3979137329400655331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 (n + 1) + (3 * n + 1 : ℤ)

end

end A287452.P3979137329400655331

noncomputable section

/-- A287452: Positions of 0 in A287451.

Offset 1, canonical program `A287452.P3979137329400655331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287452 (n : ℕ) : ℤ :=
  A287452.P3979137329400655331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287454.P17182626822090707294

`3*(n+1)-A060582(n)`
-/

namespace A287454.P17182626822090707294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A060582 n

end

end A287454.P17182626822090707294

noncomputable section

/-- A287454: Positions of 2 in A287451.

Offset 1, canonical program `A287454.P17182626822090707294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287454 (n : ℕ) : ℤ :=
  A287454.P17182626822090707294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287471.P8732549364477392187

`A000295(n+3)²-A000217(n+2)`
-/

namespace A287471.P8732549364477392187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 3) ^ 2 - A000217 (n + 2)

end

end A287471.P8732549364477392187

noncomputable section

/-- A287471: Number of connected dominating sets in the n-crown graph.

Offset 3, canonical program `A287471.P8732549364477392187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A287471 (n : ℕ) : ℤ :=
  A287471.P8732549364477392187.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A287471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287524.P2131839873874398650

`A189723(n+1)+A189632(n+1)`
-/

namespace A287524.P2131839873874398650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 1) + A189632 (n + 1)

end

end A287524.P2131839873874398650

noncomputable section

/-- A287524: Start with 0 and repeatedly substitute 0->012, 1->102, 2->201.

Offset 1, canonical program `A287524.P2131839873874398650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287524 (n : ℕ) : ℤ :=
  A287524.P2131839873874398650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287528.P8977328754307273010

`A189668(n+1)+2*A189632(n+1)`
-/

namespace A287528.P8977328754307273010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1) + 2 * A189632 (n + 1)

end

end A287528.P8977328754307273010

noncomputable section

/-- A287528: Start with 0 and repeatedly substitute 0->012, 1->102, 2->210.

Offset 1, canonical program `A287528.P8977328754307273010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287528 (n : ℕ) : ℤ :=
  A287528.P8977328754307273010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287657.P14767657760280168455

`xor(n%2, A003849(floor(n/2)))`
-/

namespace A287657.P14767657760280168455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (A003849 ⌊(n : ℚ) / 2⌋.toNat)

end

end A287657.P14767657760280168455

noncomputable section

/-- A287657: {0->01, 1->10}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287657.P14767657760280168455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287657 (n : ℕ) : ℤ :=
  A287657.P14767657760280168455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287664.P15191477513936064077

`A004956(A002264(n)+1)+n`
-/

namespace A287664.P15191477513936064077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A002264 n + 1).toNat + (n : ℤ)

end

end A287664.P15191477513936064077

noncomputable section

/-- A287664: Positions of 0's in A287663; complement of A287665.

Offset 1, canonical program `A287664.P15191477513936064077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287664 (n : ℕ) : ℤ :=
  A287664.P15191477513936064077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287665.P13320432754561568554

`3*A005206(n)+n+1`
-/

namespace A287665.P13320432754561568554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005206 n + (n + 1 : ℤ)

end

end A287665.P13320432754561568554

noncomputable section

/-- A287665: Positions of 1's in A287663; complement of A287664.

Offset 1, canonical program `A287665.P13320432754561568554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287665 (n : ℕ) : ℤ :=
  A287665.P13320432754561568554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287674.P4910867926422161195

`A287663(n+1)+A221151(n)`
-/

namespace A287674.P4910867926422161195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287663 (n + 1) + A221151 n

end

end A287674.P4910867926422161195

noncomputable section

/-- A287674: {0->1, 1->001}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287674.P4910867926422161195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287674 (n : ℕ) : ℤ :=
  A287674.P4910867926422161195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287676.P3792131562201660675

`∑[2*A003849(n)+1]`
-/

namespace A287676.P3792131562201660675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003849 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P3792131562201660675

noncomputable section

/-- A287676: Positions of 1 in A287674; complement of A287675.

Offset 1, canonical program `A287676.P3792131562201660675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287676 (n : ℕ) : ℤ :=
  A287676.P3792131562201660675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287723.P11608785159484584755

`∑[A001468(A142150(n))+1]`
-/

namespace A287723.P11608785159484584755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A142150 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287723.P11608785159484584755

noncomputable section

/-- A287723: Positions of 0 in A287722; complement of A287724.

Offset 1, canonical program `A287723.P11608785159484584755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287723 (n : ℕ) : ℤ :=
  A287723.P11608785159484584755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287724.P16226668830565031982

`∑[A001468(A005206(n))]`
-/

namespace A287724.P16226668830565031982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A005206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287724.P16226668830565031982

noncomputable section

/-- A287724: Positions of 1 in A287722; complement of A287723.

Offset 1, canonical program `A287724.P16226668830565031982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287724 (n : ℕ) : ℤ :=
  A287724.P16226668830565031982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287726.P10548142234150324756

`A276855(n+1)-2`
-/

namespace A287726.P10548142234150324756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 (n + 1) - 2

end

end A287726.P10548142234150324756

noncomputable section

/-- A287726: Positions of 0 in A287725; complement of A287727.

Offset 1, canonical program `A287726.P10548142234150324756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287726 (n : ℕ) : ℤ :=
  A287726.P10548142234150324756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287742.P2808893076939197849

`A289404(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A287742.P2808893076939197849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A289404 n - a (n - 2)

end

end A287742.P2808893076939197849

noncomputable section

/-- A287742: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287742.P2808893076939197849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A287742 (n : ℕ) : ℤ :=
  A287742.P2808893076939197849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A287742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287745.P15680675513556340977

`A032085(n+2)-4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A287745.P15680675513556340977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A032085 (n + 2) - 4 * a (n - 2)

end

end A287745.P15680675513556340977

noncomputable section

/-- A287745: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287745.P15680675513556340977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A287745 (n : ℕ) : ℤ :=
  A287745.P15680675513556340977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A287745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287746.P908048233123958262

`A287733(n+1)/6`
-/

namespace A287746.P908048233123958262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287733 (n + 1) : ℚ) / 6

end

end A287746.P908048233123958262

noncomputable section

/-- A287746: First differences of A154293.

Offset 1, canonical program `A287746.P908048233123958262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287746 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A287746.P908048233123958262.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287769.P17258671717120794164

`1-A221151(n)`
-/

namespace A287769.P17258671717120794164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A221151 n

end

end A287769.P17258671717120794164

noncomputable section

/-- A287769: {0->1, 1->110}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287769.P17258671717120794164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287769 (n : ℕ) : ℤ :=
  A287769.P17258671717120794164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287770.P11237212306429765726

`ceil(A195121(n+1)/5+n)`
-/

namespace A287770.P11237212306429765726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195121 (n + 1) : ℚ) / 5 + (n : ℚ)⌉

end

end A287770.P11237212306429765726

noncomputable section

/-- A287770: Positions of 1 in A287769; complement of A276855.

Offset 1, canonical program `A287770.P11237212306429765726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287770 (n : ℕ) : ℤ :=
  A287770.P11237212306429765726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287772.P12816254190753866578

`A230603(a(n-1)+n)` with `a(0)=1`
-/

namespace A287772.P12816254190753866578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230603 (a (n - 1) + (n : ℤ)).toNat

end

end A287772.P12816254190753866578

noncomputable section

/-- A287772: {0->1, 1->00}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287772.P12816254190753866578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287772 (n : ℕ) : ℤ :=
  A287772.P12816254190753866578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287775.P13905753593983467473

`A000201(A008619(n))+1+n`
-/

namespace A287775.P13905753593983467473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A008619 n).toNat + 1 + (n : ℤ)

end

end A287775.P13905753593983467473

noncomputable section

/-- A287775: Positions of 0 in A287772; complement of A050140 (conjectured and proved).

Offset 1, canonical program `A287775.P13905753593983467473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287775 (n : ℕ) : ℤ :=
  A287775.P13905753593983467473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287777.P3751153092046747703

`A187945(n+1)+1+n`
-/

namespace A287777.P3751153092046747703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187945 (n + 1) + 1 + (n : ℤ)

end

end A287777.P3751153092046747703

noncomputable section

/-- A287777: Positions of 1 in A287773; complement of A287774.

Offset 1, canonical program `A287777.P3751153092046747703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287777 (n : ℕ) : ℤ :=
  A287777.P3751153092046747703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287841.P13270344791315527012

`a(A079275(n+1))+1` with `a(0)=1`
-/

namespace A287841.P13270344791315527012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A079275 (n + 1)).toNat + 1

end

end A287841.P13270344791315527012

noncomputable section

/-- A287841: Number of iterations of number of distinct prime factors (A001221) needed to reach 1 starting at n (n is counted).

Offset 1, canonical program `A287841.P13270344791315527012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287841 (n : ℕ) : ℤ :=
  (A287841.P13270344791315527012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287992.P8500971311088696857

`∑[Δ[A020874(n)]-2]`
-/

namespace A287992.P8500971311088696857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020874 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287992.P8500971311088696857

noncomputable section

/-- A287992: Number of (undirected) paths in the prism graph Y_n.

Offset 1, canonical program `A287992.P8500971311088696857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A287992 (n : ℕ) : ℤ :=
  A287992.P8500971311088696857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A287992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288132.P3271536657450335669

`a(A004001(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A288132.P3271536657450335669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (A004001 (n - 1)).toNat

end

end A288132.P3271536657450335669

noncomputable section

/-- A288132: Fixed point of the mapping 00->0010, 1->11, starting with 00.

Offset 1, canonical program `A288132.P3271536657450335669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288132 (n : ℕ) : ℤ :=
  (A288132.P3271536657450335669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288169.P9463209400602246047

`A249034(n+1)-A085423(n+2)`
-/

namespace A288169.P9463209400602246047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (n + 1) - A085423 (n + 2)

end

end A288169.P9463209400602246047

noncomputable section

/-- A288169: Positions of 1 in A288167; complement of A288168.

Offset 1, canonical program `A288169.P9463209400602246047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288169 (n : ℕ) : ℤ :=
  A288169.P9463209400602246047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288203.P3805704853841922969

`(∑[∑[A138591(n+1)]]+1)%2`
-/

namespace A288203.P3805704853841922969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A288203.P3805704853841922969

noncomputable section

/-- A288203: Fixed point of the mapping 00->0010, 1->010, starting with 00.

Offset 1, canonical program `A288203.P3805704853841922969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288203 (n : ℕ) : ℤ :=
  A288203.P3805704853841922969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288205.P4532469448324624174

`∑[A267442(n)+2]+n`
-/

namespace A288205.P4532469448324624174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A288205.P4532469448324624174

noncomputable section

/-- A288205: Positions of 1 in A288203; complement of A288204.

Offset 1, canonical program `A288205.P4532469448324624174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288205 (n : ℕ) : ℤ :=
  A288205.P4532469448324624174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288213.P7703768301411406808

`gcd(2, A001954(n))-1`
-/

namespace A288213.P7703768301411406808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001954 n) : ℤ) - 1

end

end A288213.P7703768301411406808

noncomputable section

/-- A288213: Fixed point of the mapping 00->0010, 1->011, starting with 00.

Offset 1, canonical program `A288213.P7703768301411406808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288213 (n : ℕ) : ℤ :=
  A288213.P7703768301411406808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288215.P5485610025847874001

`A190764(n+1)+1`
-/

namespace A288215.P5485610025847874001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190764 (n + 1) + 1

end

end A288215.P5485610025847874001

noncomputable section

/-- A288215: Positions of 1 in A288213; complement of A288215.

Offset 1, canonical program `A288215.P5485610025847874001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288215 (n : ℕ) : ℤ :=
  A288215.P5485610025847874001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288313.P13212366983752349706

`3*A000040(n%a(n-1))` with `a(0)=2, a(1)=4, a(2)=8`
-/

namespace A288313.P13212366983752349706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 8] fun n a =>
  3 * A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A288313.P13212366983752349706

noncomputable section

/-- A288313: Let b(k) denote A056240(k); the sequence lists numbers b(2*n) where for all m > n, b(2*m) > b(2*n).

Offset 1, canonical program `A288313.P13212366983752349706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288313 (n : ℕ) : ℤ :=
  A288313.P13212366983752349706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288419.P3062089732794896662

`∑{d}[n+1, #*A076577(#)]`
-/

namespace A288419.P3062089732794896662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A076577 d

end

end A288419.P3062089732794896662

noncomputable section

/-- A288419: a(n) = Sum_{d|n} d^3*A000593(n/d).

Offset 1, canonical program `A288419.P3062089732794896662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288419 (n : ℕ) : ℤ :=
  A288419.P3062089732794896662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288420.P17718365369934289039

`∑{d}[n+1, #*A007331(#)]`
-/

namespace A288420.P17718365369934289039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007331 d

end

end A288420.P17718365369934289039

noncomputable section

/-- A288420: a(n) = Sum_{d|n} d^4*A000593(n/d).

Offset 1, canonical program `A288420.P17718365369934289039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288420 (n : ℕ) : ℤ :=
  A288420.P17718365369934289039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288660.P16979688566341528985

`eq[2, gcd(2, A111393(n+1))]+1`
-/

namespace A288660.P16979688566341528985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A111393 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288660.P16979688566341528985

noncomputable section

/-- A288660: Numbers whose cubes have an even number of digits.

Offset 1, canonical program `A288660.P16979688566341528985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6829 terms. -/
def A288660 (n : ℕ) : ℤ :=
  (A288660.P16979688566341528985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6829 terms. -/
def A288660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288708.P5207956346555753035

`A189663(A005206(n+1))+n+1`
-/

namespace A288708.P5207956346555753035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A005206 (n + 1)).toNat + (n + 1 : ℤ)

end

end A288708.P5207956346555753035

noncomputable section

/-- A288708: Positions of 0 in A288707; complement of A288709.

Offset 1, canonical program `A288708.P5207956346555753035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288708 (n : ℕ) : ℤ :=
  A288708.P5207956346555753035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288709.P8804272716824744838

`xor(1, 2*A026352(n))`
-/

namespace A288709.P8804272716824744838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A026352 n)

end

end A288709.P8804272716824744838

noncomputable section

/-- A288709: Positions of 1's in A288707; complement of A288708.

Offset 1, canonical program `A288709.P8804272716824744838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288709 (n : ℕ) : ℤ :=
  A288709.P8804272716824744838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288825.P14440546485086933183

`A000042(n+1)-A178500(floor(n/2))`
-/

namespace A288825.P14440546485086933183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A178500 ⌊(n : ℚ) / 2⌋.toNat

end

end A288825.P14440546485086933183

noncomputable section

/-- A288825: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288825.P14440546485086933183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288825 (n : ℕ) : ℤ :=
  A288825.P14440546485086933183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288826.P8999188853409678325

`A094026(2*n+1)-A011557(n+1)%A094026(n+1)`
-/

namespace A288826.P8999188853409678325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (2 * n + 1) - Int.tmod (A011557 (n + 1)) (A094026 (n + 1))

end

end A288826.P8999188853409678325

noncomputable section

/-- A288826: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288826.P8999188853409678325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288826 (n : ℕ) : ℤ :=
  A288826.P8999188853409678325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288828.P4093762577739422167

`a(n-1)-xor(-A052552(n), a(n-1))` with `a(0)=1`
-/

namespace A288828.P4093762577739422167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.xor (-A052552 n) (a (n - 1))

end

end A288828.P4093762577739422167

noncomputable section

/-- A288828: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288828.P4093762577739422167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288828 (n : ℕ) : ℤ :=
  A288828.P4093762577739422167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288938.P11305853258716454191

`A080036(n)+char[A080036(n)]+2`
-/

namespace A288938.P11305853258716454191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 : ℕ) : ℤ)

end

end A288938.P11305853258716454191

noncomputable section

/-- A288938: Positions of 1 in A288936; complement of A288937.

Offset 1, canonical program `A288938.P11305853258716454191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288938 (n : ℕ) : ℤ :=
  A288938.P11305853258716454191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288963.P7485595653921973652

`2*(n+1)*(A060446(n)-n)`
-/

namespace A288963.P7485595653921973652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (A060446 n - (n : ℤ)))

end

end A288963.P7485595653921973652

noncomputable section

/-- A288963: Number of 5-cycles in the n X n rook graph.

Offset 1, canonical program `A288963.P7485595653921973652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288963 (n : ℕ) : ℤ :=
  A288963.P7485595653921973652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288999.P8263752832284557845

`∑[A159684(n)+3]`
-/

namespace A288999.P8263752832284557845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288999.P8263752832284557845

noncomputable section

/-- A288999: Positions of 1 in A288997; complement of A288998.

Offset 1, canonical program `A288999.P8263752832284557845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288999 (n : ℕ) : ℤ :=
  A288999.P8263752832284557845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289034.P3101325627668885776

`1-A189479(n+1)`
-/

namespace A289034.P3101325627668885776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189479 (n + 1)

end

end A289034.P3101325627668885776

noncomputable section

/-- A289034: Fixed point of the morphism 0->010, 1->10 starting with 1.

Offset 1, canonical program `A289034.P3101325627668885776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289034 (n : ℕ) : ℤ :=
  A289034.P3101325627668885776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289142.P11077449046936920695

`eq[0, A001414(n+1)%3]+1`
-/

namespace A289142.P11077449046936920695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289142.P11077449046936920695

noncomputable section

/-- A289142: Numbers whose sum of prime factors (taken with multiplicity) is divisible by 3.

Offset 1, canonical program `A289142.P11077449046936920695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289142 (n : ℕ) : ℤ :=
  (A289142.P11077449046936920695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289150.P17860079283463340798

`∑[10^n]-A056830(∑[n%2])`
-/

namespace A289150.P17860079283463340798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056830 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A289150.P17860079283463340798

noncomputable section

/-- A289150: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289150.P17860079283463340798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A289150 (n : ℕ) : ℤ :=
  A289150.P17860079283463340798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A289150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289156.P8668691880409156137

`(n+1)*A005899(n+1)*A008527(n+1)`
-/

namespace A289156.P8668691880409156137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005899 (n + 1) * A008527 (n + 1))

end

end A289156.P8668691880409156137

noncomputable section

/-- A289156: Largest area of triangles with integer sides and area = n times perimeter.

Offset 1, canonical program `A289156.P8668691880409156137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A289156 (n : ℕ) : ℤ :=
  A289156.P8668691880409156137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A289156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289199.P15088153983146951858

`n-Δ[round(A155212(n+1)/13)]`
-/

namespace A289199.P15088153983146951858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155212 (n + 1) : ℚ) / 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A289199.P15088153983146951858

noncomputable section

/-- A289199: a(n) is the number of odd integers divisible by 13 in the open interval (12*(n-1)^2, 12*n^2).

Offset 0, canonical program `A289199.P15088153983146951858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A289199 (n : ℕ) : ℤ :=
  A289199.P15088153983146951858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A289199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289387.P12260547900688232206

`A289321(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A289387.P12260547900688232206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289321 (n - 1) + a (n - 1)

end

end A289387.P12260547900688232206

noncomputable section

/-- A289387: a(n) = Sum_{k>=0} (-1)^k*binomial(n, 5*k+2).

Offset 0, canonical program `A289387.P12260547900688232206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A289387 (n : ℕ) : ℤ :=
  A289387.P12260547900688232206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A289387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289388.P9088607596143187835

`Δ[Δ[-A289306(n)]]`
-/

namespace A289388.P9088607596143187835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A289306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289388.P9088607596143187835

noncomputable section

/-- A289388: a(n) = Sum_{k>=0} (-1)^k*binomial(n,5*k+3).

Offset 0, canonical program `A289388.P9088607596143187835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A289388 (n : ℕ) : ℤ :=
  A289388.P9088607596143187835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A289388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289418.P16600378519191471792

`A080937(n+5)-A007051(n+4)`
-/

namespace A289418.P16600378519191471792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 5) - A007051 (n + 4)

end

end A289418.P16600378519191471792

noncomputable section

/-- A289418: Number of Dyck paths of semilength n and height exactly 5.

Offset 5, canonical program `A289418.P16600378519191471792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A289418 (n : ℕ) : ℤ :=
  A289418.P16600378519191471792.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A289418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289419.P5189639168704027076

`A024175(n+6)-A080937(n+6)`
-/

namespace A289419.P5189639168704027076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 6) - A080937 (n + 6)

end

end A289419.P5189639168704027076

noncomputable section

/-- A289419: Number of Dyck paths of semilength n and height exactly 6.

Offset 6, canonical program `A289419.P5189639168704027076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A289419 (n : ℕ) : ℤ :=
  A289419.P5189639168704027076.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A289419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289420.P8260356485151865093

`A080938(n+7)-A024175(n+7)`
-/

namespace A289420.P8260356485151865093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080938 (n + 7) - A024175 (n + 7)

end

end A289420.P8260356485151865093

noncomputable section

/-- A289420: Number of Dyck paths of semilength n and height exactly 7.

Offset 7, canonical program `A289420.P8260356485151865093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A289420 (n : ℕ) : ℤ :=
  A289420.P8260356485151865093.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A289420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289451.P13689180630085308287

`A000108(n)-C(n, 2)`
-/

namespace A289451.P13689180630085308287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (Nat.choose n 2 : ℤ)

end

end A289451.P13689180630085308287

noncomputable section

/-- A289451: a(n) is the number of permutations of length n that avoid the pattern 231 and the mesh pattern (12, 409) or the same sequence for the mesh pattern (12, 473).

Offset 0, canonical program `A289451.P13689180630085308287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289451 (n : ℕ) : ℤ :=
  A289451.P13689180630085308287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289682.P5590128889269898207

`A000108(n)%16`
-/

namespace A289682.P5590128889269898207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) 16

end

end A289682.P5590128889269898207

noncomputable section

/-- A289682: Catalan numbers read modulo 16.

Offset 0, canonical program `A289682.P5590128889269898207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289682 (n : ℕ) : ℤ :=
  A289682.P5590128889269898207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A289682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289746.P10294771378129521522

`24*A282597(n+1)`
-/

namespace A289746.P10294771378129521522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A282597 (n + 1)

end

end A289746.P10294771378129521522

noncomputable section

/-- A289746: Coefficients in expansion of -q*E'_14 where E_14 is the Eisenstein Series (A058550).

Offset 1, canonical program `A289746.P10294771378129521522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289746 (n : ℕ) : ℤ :=
  A289746.P10294771378129521522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289764.P5647659139669201899

`a(n-2)+or(a(n-2), A127904(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A289764.P5647659139669201899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Int.lor (a (n - 2)) (A127904 (n + 1))

end

end A289764.P5647659139669201899

noncomputable section

/-- A289764: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289764.P5647659139669201899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289764 (n : ℕ) : ℤ :=
  A289764.P5647659139669201899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289765.P8307938005075288678

`xor(A077980(n)+A000225(n), A001045(n))`
-/

namespace A289765.P8307938005075288678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077980 n + A000225 n) (A001045 n)

end

end A289765.P8307938005075288678

noncomputable section

/-- A289765: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289765.P8307938005075288678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289765 (n : ℕ) : ℤ :=
  A289765.P8307938005075288678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289795.P8991608833031833958

`3*A289796(n)`
-/

namespace A289795.P8991608833031833958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A289796 n

end

end A289795.P8991608833031833958

noncomputable section

/-- A289795: p-INVERT of (3n), where p(S) = 1 - S - S^2.

Offset 0, canonical program `A289795.P8991608833031833958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A289795 (n : ℕ) : ℤ :=
  A289795.P8991608833031833958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A289795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290055.P12727281191958805709

`∑[gcd(2, n)*A006918(n)]`
-/

namespace A290055.P12727281191958805709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P12727281191958805709

noncomputable section

/-- A290055: Expansion of x*(1 + 4*x + x^2)/((1 - x)^5*(1 + x)^4).

Offset 0, canonical program `A290055.P12727281191958805709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290055 (n : ℕ) : ℤ :=
  A290055.P12727281191958805709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290075.P15704188963845953926

`A016116(n)+A007179(A289207(n))`
-/

namespace A290075.P15704188963845953926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A007179 (A289207 n).toNat

end

end A290075.P15704188963845953926

noncomputable section

/-- A290075: Number of monomials in c(n) where c(1) = x, c(2) = y, c(n+2) = c(n+1) + c(n)^2.

Offset 1, canonical program `A290075.P15704188963845953926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A290075 (n : ℕ) : ℤ :=
  A290075.P15704188963845953926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A290075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290112.P7332499460374383390

`or(1, A267623(n))`
-/

namespace A290112.P7332499460374383390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267623 n)

end

end A290112.P7332499460374383390

noncomputable section

/-- A290112: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 643", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290112.P7332499460374383390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290112 (n : ℕ) : ℤ :=
  A290112.P7332499460374383390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290194.P11582240368816189477

`and(A290113(n), A290828(n))`
-/

namespace A290194.P11582240368816189477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290113 n) (A290828 n)

end

end A290194.P11582240368816189477

noncomputable section

/-- A290194: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290194.P11582240368816189477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290194 (n : ℕ) : ℤ :=
  A290194.P11582240368816189477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290195.P9621791207342674564

`xor(and(n, A011782(n)), A283651(n))`
-/

namespace A290195.P9621791207342674564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land (n : ℤ) (A011782 n)) (A283651 n)

end

end A290195.P9621791207342674564

noncomputable section

/-- A290195: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290195.P9621791207342674564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290195 (n : ℕ) : ℤ :=
  A290195.P9621791207342674564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290198.P6667121910537351259

`A290682(n)-C(n, C(2, n))`
-/

namespace A290198.P6667121910537351259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 n - (Nat.choose n (Nat.choose 2 n) : ℤ)

end

end A290198.P6667121910537351259

noncomputable section

/-- A290198: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290198.P6667121910537351259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290198 (n : ℕ) : ℤ :=
  A290198.P6667121910537351259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290199.P940950629369003112

`A000225(n)+and(n+1, A011782(n))`
-/

namespace A290199.P940950629369003112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (n + 1 : ℤ) (A011782 n)

end

end A290199.P940950629369003112

noncomputable section

/-- A290199: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290199.P940950629369003112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290199 (n : ℕ) : ℤ :=
  A290199.P940950629369003112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290221.P18290709257670831745

`A290220(n)-A290220(log2(A011782(n)))`
-/

namespace A290221.P18290709257670831745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290220 n - A290220 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A290221.P18290709257670831745

noncomputable section

/-- A290221: Number of elements added at n-th stage to the structure of the narrow cross described in A290220.

Offset 0, canonical program `A290221.P18290709257670831745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A290221 (n : ℕ) : ℤ :=
  A290221.P18290709257670831745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A290221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290233.P11962414555324344443

`A081857(lcm(2, n+1))`
-/

namespace A290233.P11962414555324344443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (Nat.lcm 2 (n + 1))

end

end A290233.P11962414555324344443

noncomputable section

/-- A290233: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290233.P11962414555324344443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290233 (n : ℕ) : ℤ :=
  A290233.P11962414555324344443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290234.P10245150171700326506

`2^(n+1)-A072345(n)`
-/

namespace A290234.P10245150171700326506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A072345 n

end

end A290234.P10245150171700326506

noncomputable section

/-- A290234: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290234.P10245150171700326506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290234 (n : ℕ) : ℤ :=
  A290234.P10245150171700326506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290268.P9066980186009559821

`ceil((A106466(n)+∑[A014601(n)])/2)`
-/

namespace A290268.P9066980186009559821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A106466 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A290268.P9066980186009559821

noncomputable section

/-- A290268: Number of terms in the fully expanded n-th derivative of x^(x^2).

Offset 0, canonical program `A290268.P9066980186009559821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290268 (n : ℕ) : ℤ :=
  A290268.P9066980186009559821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290313.P4933709878126481158

`A051797(n)+A000096(n)*A005712(n+2)`
-/

namespace A290313.P4933709878126481158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n + A000096 n * A005712 (n + 2)

end

end A290313.P4933709878126481158

noncomputable section

/-- A290313: Fourth diagonal sequence of the Sheffer triangle A094816 (special Charlier).

Offset 0, canonical program `A290313.P4933709878126481158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290313 (n : ℕ) : ℤ :=
  A290313.P4933709878126481158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290660.P15163917206572821738

`A002275(n+1)-a(gcd(2, n)-1)+1` with `a(0)=1`
-/

namespace A290660.P15163917206572821738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002275 (n + 1) - a (Nat.gcd 2 n - 1) + 1

end

end A290660.P15163917206572821738

noncomputable section

/-- A290660: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 899", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290660.P15163917206572821738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290660 (n : ℕ) : ℤ :=
  A290660.P15163917206572821738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290680.P12839473319531467674

`A094026(and(2*n+1, A290682(n)))`
-/

namespace A290680.P12839473319531467674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.land (2 * n + 1 : ℤ) (A290682 n)).toNat

end

end A290680.P12839473319531467674

noncomputable section

/-- A290680: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290680.P12839473319531467674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290680 (n : ℕ) : ℤ :=
  A290680.P12839473319531467674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290756.P16317352398724457227

`∑[Δ[A302942(n)]+3]`
-/

namespace A290756.P16317352398724457227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302942 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290756.P16317352398724457227

noncomputable section

/-- A290756: Number of (non-null) connected induced subgraphs of the complete tripartite graph K_{n,n,n}.

Offset 1, canonical program `A290756.P16317352398724457227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A290756 (n : ℕ) : ℤ :=
  A290756.P16317352398724457227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A290756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290842.P12910772204790180681

`eq[27, A004164(n)]`
-/

namespace A290842.P12910772204790180681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290842.P12910772204790180681

noncomputable section

/-- A290842: Numbers k such that the sum of digits of k^3 is 3^3 = 27.

Offset 1, canonical program `A290842.P12910772204790180681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A290842 (n : ℕ) : ℤ :=
  (A290842.P12910772204790180681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A290842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290859.P3243732649899171496

`A011782(n)*A156752(n)`
-/

namespace A290859.P3243732649899171496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A156752 n

end

end A290859.P3243732649899171496

noncomputable section

/-- A290859: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1006", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290859.P3243732649899171496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290859 (n : ℕ) : ℤ :=
  A290859.P3243732649899171496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290891.P3925911599048697236

`A291217(Δ[n²])`
-/

namespace A290891.P3925911599048697236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290891.P3925911599048697236

noncomputable section

/-- A290891: p-INVERT of the positive integers, where p(S) = 1 - S^3.

Offset 0, canonical program `A290891.P3925911599048697236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A290891 (n : ℕ) : ℤ :=
  A290891.P3925911599048697236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A290891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290929.P14096020846007279230

`(A290917(n)+A290890(n))/2`
-/

namespace A290929.P14096020846007279230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290917 n + A290890 n : ℚ) / 2

end

end A290929.P14096020846007279230

noncomputable section

/-- A290929: p-INVERT of the positive integers, where p(S) = (1 - S)(1 - S^2).

Offset 0, canonical program `A290929.P14096020846007279230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A290929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290929.P14096020846007279230.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A290929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290930.P2559548672273861222

`2*A290904(n)-A290890(n)`
-/

namespace A290930.P2559548672273861222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290904 n - A290890 n

end

end A290930.P2559548672273861222

noncomputable section

/-- A290930: p-INVERT of the positive integers, where p(S) = (1 - S^2)(1 - 2*S^2).

Offset 0, canonical program `A290930.P2559548672273861222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A290930 (n : ℕ) : ℤ :=
  A290930.P2559548672273861222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A290930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290987.P12111652506567121318

`∑[∑[A049864(n)]]-n`
-/

namespace A290987.P12111652506567121318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A290987.P12111652506567121318

noncomputable section

/-- A290987: Expansion of (1 - 2*x + x^2 - x^4 + x^3 + x^5)/((1 - x)^2*(1 - 2*x + x^3 - x^4)).

Offset 0, canonical program `A290987.P12111652506567121318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A290987 (n : ℕ) : ℤ :=
  A290987.P12111652506567121318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A290987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291021.P13249810594627728153

`A290890(n+1)-A131708(n)`
-/

namespace A291021.P13249810594627728153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290890 (n + 1) - A131708 n

end

end A291021.P13249810594627728153

noncomputable section

/-- A291021: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S - S^2 - S^3 + S^4 + S^5.

Offset 0, canonical program `A291021.P13249810594627728153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A291021 (n : ℕ) : ℤ :=
  A291021.P13249810594627728153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A291021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291197.P12306781684361658534

`Δ[Δ[-A050500(n+2)]]`
-/

namespace A291197.P12306781684361658534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A050500 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P12306781684361658534

noncomputable section

/-- A291197: Second differences of frac(n/log(n)) rounded, n >= 2.

Offset 2, canonical program `A291197.P12306781684361658534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A291197 (n : ℕ) : ℤ :=
  A291197.P12306781684361658534.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A291197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291229.P9126633261047573384

`A106515(n+1)+A001333(n)`
-/

namespace A291229.P9126633261047573384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106515 (n + 1) + A001333 n

end

end A291229.P9126633261047573384

noncomputable section

/-- A291229: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S)(1 - 2 S).

Offset 0, canonical program `A291229.P9126633261047573384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A291229 (n : ℕ) : ℤ :=
  A291229.P9126633261047573384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A291229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291241.P11292606566486155068

`∪[A038731(n), A290917(n)]`
-/

namespace A291241.P11292606566486155068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290917 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291241.P11292606566486155068

noncomputable section

/-- A291241: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^2 + S^3.

Offset 0, canonical program `A291241.P11292606566486155068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A291241 (n : ℕ) : ℤ :=
  (A291241.P11292606566486155068.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A291241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291250.P4356664726592613925

`2*A048788(n+1)-∑[A212804(n)]`
-/

namespace A291250.P4356664726592613925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048788 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291250.P4356664726592613925

noncomputable section

/-- A291250: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - 2 S^2 + 2 S^3.

Offset 0, canonical program `A291250.P4356664726592613925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A291250 (n : ℕ) : ℤ :=
  A291250.P4356664726592613925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A291250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291304.P3168052902448209091

`A008619(n+1)-Δ[A047314(A008619(n))]`
-/

namespace A291304.P3168052902448209091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047314 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - (f1 (n + 1) - f1 n)

end

end A291304.P3168052902448209091

noncomputable section

/-- A291304: The arithmetic function v_5(n,2).

Offset 2, canonical program `A291304.P3168052902448209091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291304 (n : ℕ) : ℤ :=
  A291304.P3168052902448209091.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291307.P15942804374896408033

`A291306(n+2)/2`
-/

namespace A291307.P15942804374896408033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291306 (n + 2) : ℚ) / 2

end

end A291307.P15942804374896408033

noncomputable section

/-- A291307: The arithmetic function v_6(n,2).

Offset 2, canonical program `A291307.P15942804374896408033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291307.P15942804374896408033.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291311.P2804897331601804404

`A020695(n)-A003269(n+3)`
-/

namespace A291311.P2804897331601804404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A003269 (n + 3)

end

end A291311.P2804897331601804404

noncomputable section

/-- A291311: Expansion of (1-x^2)/((1-x-x^2)*(1-x-x^4)).

Offset 0, canonical program `A291311.P2804897331601804404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A291311 (n : ℕ) : ℤ :=
  A291311.P2804897331601804404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A291311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291387.P9217993124761703692

`8*A291388(n)`
-/

namespace A291387.P9217993124761703692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A291388 n

end

end A291387.P9217993124761703692

noncomputable section

/-- A291387: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 4 S)^2.

Offset 0, canonical program `A291387.P9217993124761703692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A291387 (n : ℕ) : ℤ :=
  A291387.P9217993124761703692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A291387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291389.P3133749326830032153

`5*A291390(n)`
-/

namespace A291389.P3133749326830032153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A291390 n

end

end A291389.P3133749326830032153

noncomputable section

/-- A291389: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 5 S)^2.

Offset 0, canonical program `A291389.P3133749326830032153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A291389 (n : ℕ) : ℤ :=
  A291389.P3133749326830032153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A291389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291391.P15295743276940635889

`12*A291392(n)`
-/

namespace A291391.P15295743276940635889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A291392 n

end

end A291391.P15295743276940635889

noncomputable section

/-- A291391: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 6 S)^2.

Offset 0, canonical program `A291391.P15295743276940635889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A291391 (n : ℕ) : ℤ :=
  A291391.P15295743276940635889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A291391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291396.P12241741448704826286

`2*A291395(n)-A291394(n)`
-/

namespace A291396.P12241741448704826286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291395 n - A291394 n

end

end A291396.P12241741448704826286

noncomputable section

/-- A291396: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - S)(1 - 2 S)(1 - 3 S).

Offset 0, canonical program `A291396.P12241741448704826286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A291396 (n : ℕ) : ℤ :=
  A291396.P12241741448704826286.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A291396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291414.P1598030693681552258

`A272642(n+2)-record[A212804(n)]`
-/

namespace A291414.P1598030693681552258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272642 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291414.P1598030693681552258

noncomputable section

/-- A291414: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 2 S + S^3.

Offset 0, canonical program `A291414.P1598030693681552258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A291414 (n : ℕ) : ℤ :=
  A291414.P1598030693681552258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A291414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291485.P3190505718156892050

`lt[0, A175192(C(n+2, 2))]+1`
-/

namespace A291485.P3190505718156892050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A291485.P3190505718156892050

noncomputable section

/-- A291485: Numbers m such that sigma(x) = m*(m+1)/2 has at least one solution.

Offset 1, canonical program `A291485.P3190505718156892050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A291485 (n : ℕ) : ℤ :=
  (A291485.P3190505718156892050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A291485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291498.P10614475688955058972

`A023453(n)-A204502(n+1)`
-/

namespace A291498.P10614475688955058972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 n - A204502 (n + 1)

end

end A291498.P10614475688955058972

noncomputable section

/-- A291498: The arithmetic function uhat(n,1,4).

Offset 1, canonical program `A291498.P10614475688955058972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291498 (n : ℕ) : ℤ :=
  A291498.P10614475688955058972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291516.P2739492485073675488

`abs(3*A291514(n+1))`
-/

namespace A291516.P2739492485073675488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A291514 (n + 1)|

end

end A291516.P2739492485073675488

noncomputable section

/-- A291516: The arithmetic function uhat(n,3,7), negated.

Offset 1, canonical program `A291516.P2739492485073675488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291516 (n : ℕ) : ℤ :=
  A291516.P2739492485073675488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291703.P10698987530802811860

`A291537(n+1)-3%(n+3)`
-/

namespace A291703.P10698987530802811860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291537 (n + 1) - ((3 % (n + 3) : ℕ) : ℤ)

end

end A291703.P10698987530802811860

noncomputable section

/-- A291703: Number of connected dominating sets in the complete tripartite graph K_{n,n,n}.

Offset 1, canonical program `A291703.P10698987530802811860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A291703 (n : ℕ) : ℤ :=
  A291703.P10698987530802811860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A291703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291734.P17297414494026807977

`2*A052912(n+1)-A000930(n+1)`
-/

namespace A291734.P17297414494026807977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052912 (n + 1) - A000930 (n + 1)

end

end A291734.P17297414494026807977

noncomputable section

/-- A291734: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = (1 - S)(1 - 2 S).

Offset 0, canonical program `A291734.P17297414494026807977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A291734 (n : ℕ) : ℤ :=
  A291734.P17297414494026807977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A291734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291745.P12155943270432222460

`record[A005451(3*n+1)]`
-/

namespace A291745.P12155943270432222460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291745.P12155943270432222460

noncomputable section

/-- A291745: Nonprimes of the form 3*k + 1.

Offset 1, canonical program `A291745.P12155943270432222460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A291745 (n : ℕ) : ℤ :=
  A291745.P12155943270432222460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A291745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291887.P7998709455536945116

`A005207(n+3)-A005418(n+3)`
-/

namespace A291887.P7998709455536945116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 3) - A005418 (n + 3)

end

end A291887.P7998709455536945116

noncomputable section

/-- A291887: Number of symmetrically unique Dyck paths of semilength n and height three.

Offset 3, canonical program `A291887.P7998709455536945116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A291887 (n : ℕ) : ℤ :=
  A291887.P7998709455536945116.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A291887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291933.P13043895663212954923

`A000040(n+1)+a(n-1)%10` with `a(0)=2`
-/

namespace A291933.P13043895663212954923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (n + 1) + Int.tmod (a (n - 1)) 10

end

end A291933.P13043895663212954923

noncomputable section

/-- A291933: a(1)=2; a(n) is the sum of prime(n) and the last digit of previous term.

Offset 1, canonical program `A291933.P13043895663212954923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A291933 (n : ℕ) : ℤ :=
  A291933.P13043895663212954923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A291933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291983.P6632227274945487146

`(-1)^n*A112689(n+1)`
-/

namespace A291983.P6632227274945487146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112689 (n + 1)

end

end A291983.P6632227274945487146

noncomputable section

/-- A291983: Expansion of 1/((1+x)*(1+x^2)*(1+x^3)).

Offset 0, canonical program `A291983.P6632227274945487146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291983 (n : ℕ) : ℤ :=
  A291983.P6632227274945487146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291984.P6382854093563126642

`A154958(n+2)-A004524(A004525(n+7))`
-/

namespace A291984.P6382854093563126642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (n + 2) - A004524 (A004525 (n + 7)).toNat

end

end A291984.P6382854093563126642

noncomputable section

/-- A291984: Expansion of 1/((1+x)*(1+x^2)*(1+x^3)*(1+x^4)).

Offset 0, canonical program `A291984.P6382854093563126642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A291984 (n : ℕ) : ℤ :=
  A291984.P6382854093563126642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A291984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291986.P2036328203005810278

`A052551(n)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A291986.P2036328203005810278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A052551 n + 3 * a (n - 3)

end

end A291986.P2036328203005810278

noncomputable section

/-- A291986: Expansion of 1/((1-x)*(1-2*x^2)*(1-3*x^3)).

Offset 0, canonical program `A291986.P2036328203005810278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A291986 (n : ℕ) : ℤ :=
  A291986.P2036328203005810278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A291986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292029.P5206720464358759330

`2^n*A130783(n+1)`
-/

namespace A292029.P5206720464358759330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A130783 (n + 1)

end

end A292029.P5206720464358759330

noncomputable section

/-- A292029: Wiener index of the n-folded cube graph.

Offset 2, canonical program `A292029.P5206720464358759330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A292029 (n : ℕ) : ℤ :=
  A292029.P5206720464358759330.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A292029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292053.P3689482147615039385

`∑[A008384(n)-A160747(n)]`
-/

namespace A292053.P3689482147615039385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008384 n - A160747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292053.P3689482147615039385

noncomputable section

/-- A292053: Wiener index of the n X n king graph.

Offset 1, canonical program `A292053.P3689482147615039385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292053 (n : ℕ) : ℤ :=
  A292053.P3689482147615039385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292077.P208369071452103874

`1-A106665(n)`
-/

namespace A292077.P208369071452103874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106665 n

end

end A292077.P208369071452103874

noncomputable section

/-- A292077: a(n) = 0 if n=1; a(n) = 1-a(n-2) if n is odd; a(n) = 1-a(n/2) if n is even.

Offset 1, canonical program `A292077.P208369071452103874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292077 (n : ℕ) : ℤ :=
  A292077.P208369071452103874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292281.P1308277968515658370

`∑[2*A244879(n)]-A244879(n)`
-/

namespace A292281.P1308277968515658370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A244879 n

end

end A292281.P1308277968515658370

noncomputable section

/-- A292281: Number of magic labelings of the prism graph I X C_6 having magic sum n.

Offset 0, canonical program `A292281.P1308277968515658370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292281 (n : ℕ) : ℤ :=
  A292281.P1308277968515658370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292315.P1816862207648289831

`filter[A080308(n+1), A093719(#)]`
-/

namespace A292315.P1816862207648289831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A292315.P1816862207648289831

noncomputable section

/-- A292315: Positive integers not divisible by any number of the form 2^n + 1 for n >= 0.

Offset 1, canonical program `A292315.P1816862207648289831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292315 (n : ℕ) : ℤ :=
  A292315.P1816862207648289831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292343.P12497168450914892819

`∑[A017113(n)*A181890(n+1)]`
-/

namespace A292343.P12497168450914892819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n * A181890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292343.P12497168450914892819

noncomputable section

/-- A292343: The PI index of the Aztec diamond AZ(n) (see the Imran et al. reference).

Offset 1, canonical program `A292343.P12497168450914892819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A292343 (n : ℕ) : ℤ :=
  A292343.P12497168450914892819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A292343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292346.P9982562520502205996

`Δ[A016827(n)]-A016826(A004273(n))`
-/

namespace A292346.P9982562520502205996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016826 (A004273 n).toNat

end

end A292346.P9982562520502205996

noncomputable section

/-- A292346: The forgotten topological index of the Aztec diamond AZ(n) (see the Ramanes et al. reference, Theorem 2.1).

Offset 1, canonical program `A292346.P9982562520502205996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A292346 (n : ℕ) : ℤ :=
  A292346.P9982562520502205996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A292346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292465.P4226917308943281277

`lcm(A023607(n), A045925(n))`
-/

namespace A292465.P4226917308943281277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023607 n) (A045925 n)

end

end A292465.P4226917308943281277

noncomputable section

/-- A292465: a(n) = n*F(n)*F(n+1), where F = A000045.

Offset 0, canonical program `A292465.P4226917308943281277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A292465 (n : ℕ) : ℤ :=
  (A292465.P4226917308943281277.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A292465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292524.P9295925993762549996

`A162512(n)%2+3*a(n-1)` with `a(0)=0`
-/

namespace A292524.P9295925993762549996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A162512 n) 2 + 3 * a (n - 1)

end

end A292524.P9295925993762549996

noncomputable section

/-- A292524: Interpret the values of the Moebius function mu(k) for k = 1 to n as a balanced ternary number.

Offset 0, canonical program `A292524.P9295925993762549996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A292524 (n : ℕ) : ℤ :=
  A292524.P9295925993762549996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A292524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292551.P4073534425780061308

`A317300(n)+A290168(n)`
-/

namespace A292551.P4073534425780061308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n + A290168 n

end

end A292551.P4073534425780061308

noncomputable section

/-- A292551: Expansion of x*(1 - 2*x + x^2 + 7*x^3 - x^4)/((1 - x)^4*(1 + x)^3).

Offset 0, canonical program `A292551.P4073534425780061308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292551 (n : ℕ) : ℤ :=
  A292551.P4073534425780061308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292564.P101480473369799755

`A001318(A279891(n))+n`
-/

namespace A292564.P101480473369799755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A279891 n).toNat + (n : ℤ)

end

end A292564.P101480473369799755

noncomputable section

/-- A292564: Take 1, skip 3 * 1 - 1, take 2, skip 3 * 2 - 1, take 3, skip 3 * 3 - 1, ...

Offset 0, canonical program `A292564.P101480473369799755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292564 (n : ℕ) : ℤ :=
  A292564.P101480473369799755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292621.P5336233927889605811

`∑[gcd(A214080(n)², A000195(n+1))]`
-/

namespace A292621.P5336233927889605811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214080 n ^ 2) (A000195 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292621.P5336233927889605811

noncomputable section

/-- A292621: a(n) = a(n-1) + a(floor(log(n))) with a(1) = 1, a(2) = 2.

Offset 1, canonical program `A292621.P5336233927889605811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1764 terms. -/
def A292621 (n : ℕ) : ℤ :=
  (A292621.P5336233927889605811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1764 terms. -/
def A292621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292638.P6012436071896694180

`A195174(n+1)+n`
-/

namespace A292638.P6012436071896694180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (n + 1) + (n : ℤ)

end

end A292638.P6012436071896694180

noncomputable section

/-- A292638: Rank of (3-r)*n when all the numbers (3-r)*j and (3+r)*k, where r = sqrt(5), j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292638.P6012436071896694180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292638 (n : ℕ) : ℤ :=
  A292638.P6012436071896694180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292640.P5849889421218390574

`∑[char[A137804(n+1)]+1]`
-/

namespace A292640.P5849889421218390574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292640.P5849889421218390574

noncomputable section

/-- A292640: Rank of (4-r)*n when all the numbers (4-r)*j and (4+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292640.P5849889421218390574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292640 (n : ℕ) : ℤ :=
  (A292640.P5849889421218390574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292641.P3636368433729091843

`n+1+A137804(n+1)`
-/

namespace A292641.P3636368433729091843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A137804 (n + 1)

end

end A292641.P3636368433729091843

noncomputable section

/-- A292641: Rank of (4+r)*n when all the numbers (4-r)*j and (4+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292641.P3636368433729091843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292641 (n : ℕ) : ℤ :=
  A292641.P3636368433729091843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292647.P7577445348216488322

`∑[Δ[A032634(n)]+2]`
-/

namespace A292647.P7577445348216488322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292647.P7577445348216488322

noncomputable section

/-- A292647: Rank of (e+1)*n when all the numbers e*j and (e+1)*k, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292647.P7577445348216488322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292647 (n : ℕ) : ℤ :=
  A292647.P7577445348216488322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292649.P4374179252160698434

`A059531(n+1)+1+n`
-/

namespace A292649.P4374179252160698434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (n + 1) + 1 + (n : ℤ)

end

end A292649.P4374179252160698434

noncomputable section

/-- A292649: Rank of (Pi+1)*n when all the numbers Pi*j and (Pi+1)*k, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292649.P4374179252160698434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292649 (n : ℕ) : ℤ :=
  A292649.P4374179252160698434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292652.P9827937049489949386

`A189757(n+1)-A108120(n+1)`
-/

namespace A292652.P9827937049489949386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189757 (n + 1) - A108120 (n + 1)

end

end A292652.P9827937049489949386

noncomputable section

/-- A292652: Rank of n*cos(1) when all the numbers j*cos(1) and k*sin(1), for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292652.P9827937049489949386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292652 (n : ℕ) : ℤ :=
  A292652.P9827937049489949386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292656.P4248639488250771232

`A292651(n+1)+A022844(n+1)`
-/

namespace A292656.P4248639488250771232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292651 (n + 1) + A022844 (n + 1)

end

end A292656.P4248639488250771232

noncomputable section

/-- A292656: Rank of n*Pi when all the numbers h, j*e, k*Pi, for h>=1, j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292656.P4248639488250771232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292656 (n : ℕ) : ℤ :=
  A292656.P4248639488250771232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292663.P11006181685462935153

`Δ[n²]-A032634(n+1)`
-/

namespace A292663.P11006181685462935153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A032634 (n + 1)

end

end A292663.P11006181685462935153

noncomputable section

/-- A292663: Rank of n*(e-1) when all the numbers j*(e-1) and k*e, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292663.P11006181685462935153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292663 (n : ℕ) : ℤ :=
  A292663.P11006181685462935153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292931.P11848410152138071600

`eq[7, gcd(7, A004166(n))]`
-/

namespace A292931.P11848410152138071600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A004166 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292931.P11848410152138071600

noncomputable section

/-- A292931: Numbers n such that the sum of digits of 3^n (A004166) is divisible by 7.

Offset 1, canonical program `A292931.P11848410152138071600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A292931 (n : ℕ) : ℤ :=
  (A292931.P11848410152138071600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A292931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292987.P9850565851364099735

`A121381(n)-a(n-1)` with `a(0)=1`
-/

namespace A292987.P9850565851364099735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121381 n - a (n - 1)

end

end A292987.P9850565851364099735

noncomputable section

/-- A292987: Beatty sequence of the real root of x^5 - x^4 - x^2 - 1; complement of A292988.

Offset 1, canonical program `A292987.P9850565851364099735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A292987 (n : ℕ) : ℤ :=
  A292987.P9850565851364099735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A292987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292995.P14469871609488576223

`floor(A004166(n)/9)`
-/

namespace A292995.P14469871609488576223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004166 n : ℚ) / 9⌋

end

end A292995.P14469871609488576223

noncomputable section

/-- A292995: Sum of digits of 3^n (A004166) divided by 9.

Offset 0, canonical program `A292995.P14469871609488576223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292995 (n : ℕ) : ℤ :=
  A292995.P14469871609488576223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293014.P8453026757887853128

`A000045(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293014.P8453026757887853128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000045 (n - 3) - a (n - 3)

end

end A293014.P8453026757887853128

noncomputable section

/-- A293014: a(n) = a(n-1) + a(n-2) - a(n-3) + a(n-4) for n > 4, where a(n)=0 for n < 4 and a(4) = 1.

Offset 0, canonical program `A293014.P8453026757887853128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A293014 (n : ℕ) : ℤ :=
  A293014.P8453026757887853128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A293014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293169.P10636581363963723716

`A392253(2*n)`
-/

namespace A293169.P10636581363963723716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392253 (2 * n)

end

end A293169.P10636581363963723716

noncomputable section

/-- A293169: a(n) = Sum_{k=0..n} binomial(k, 6*(n-k)).

Offset 0, canonical program `A293169.P10636581363963723716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A293169 (n : ℕ) : ℤ :=
  A293169.P10636581363963723716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A293169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293233.P13541927163502330655

`round(1/∏{e}[n+1, -#²])*a(A110654(n)-1)` with `a(0)=1`
-/

namespace A293233.P13541927163502330655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) * a (A110654 n - 1).toNat

end

end A293233.P13541927163502330655

noncomputable section

/-- A293233: a(1) = 1; and for n > 1, a(n) = mu(n) * a(floor(n/2)), where mu is the Moebius function A008683.

Offset 1, canonical program `A293233.P13541927163502330655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293233 (n : ℕ) : ℤ :=
  A293233.P13541927163502330655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293235.P8155451219802877707

`∑{d}[n+1, A001065(#)*A061019((n+1)/#)]`
-/

namespace A293235.P8155451219802877707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293235.P8155451219802877707

noncomputable section

/-- A293235: a(n) is the sum of proper divisors of n that are square.

Offset 1, canonical program `A293235.P8155451219802877707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293235 (n : ℕ) : ℤ :=
  A293235.P8155451219802877707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293239.P3844869864369269808

`A038707(n)+2-A185118(n)`
-/

namespace A293239.P3844869864369269808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038707 n + (2 - A185118 n)

end

end A293239.P3844869864369269808

noncomputable section

/-- A293239: Number of terms in the fully expanded n-th derivative of x^x.

Offset 0, canonical program `A293239.P3844869864369269808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293239 (n : ℕ) : ℤ :=
  A293239.P3844869864369269808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293333.P12220246143884906906

`A293324(n+1)+2^n`
-/

namespace A293333.P12220246143884906906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 (n + 1) + (2 ^ n : ℤ)

end

end A293333.P12220246143884906906

noncomputable section

/-- A293333: The integer k that minimizes |k/2^n - sqrt(5)|.

Offset 0, canonical program `A293333.P12220246143884906906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293333 (n : ℕ) : ℤ :=
  A293333.P12220246143884906906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293400.P2284075135435145203

`A152738(n)+n²`
-/

namespace A293400.P2284075135435145203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + (n ^ 2 : ℤ)

end

end A293400.P2284075135435145203

noncomputable section

/-- A293400: Greatest integer k such that k/n^2 < (1 + sqrt(5))/2 (the golden ratio).

Offset 0, canonical program `A293400.P2284075135435145203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293400 (n : ℕ) : ℤ :=
  A293400.P2284075135435145203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293405.P3254269789907674871

`A293402(n)+n²`
-/

namespace A293405.P3254269789907674871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293402 n + (n ^ 2 : ℤ)

end

end A293405.P3254269789907674871

noncomputable section

/-- A293405: The integer k that minimizes |k/n^2 - phi^2|, where phi = (1+sqrt(5))/2 (golden ratio).

Offset 0, canonical program `A293405.P3254269789907674871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293405 (n : ℕ) : ℤ :=
  A293405.P3254269789907674871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293410.P13299819704749243722

`A171972(n)+n²%(n+1)`
-/

namespace A293410.P13299819704749243722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171972 n + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A293410.P13299819704749243722

noncomputable section

/-- A293410: Least integer k such that k/n^2 > sqrt(3).

Offset 0, canonical program `A293410.P13299819704749243722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293410 (n : ℕ) : ℤ :=
  A293410.P13299819704749243722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293418.P17959891732544130175

`floor(sqrt(2)*A000045(n))`
-/

namespace A293418.P17959891732544130175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A000045 n : ℝ)⌋

end

end A293418.P17959891732544130175

noncomputable section

/-- A293418: a(n) is the greatest integer k such that k/Fibonacci(n) < sqrt(2).

Offset 0, canonical program `A293418.P17959891732544130175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293418 (n : ℕ) : ℤ :=
  A293418.P17959891732544130175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293420.P14130243804413009707

`round(sqrt(2)*A000045(n))`
-/

namespace A293420.P14130243804413009707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A000045 n : ℝ))

end

end A293420.P14130243804413009707

noncomputable section

/-- A293420: a(n) is the integer k that minimizes |k/Fibonacci(n) - sqrt(2)|.

Offset 0, canonical program `A293420.P14130243804413009707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293420 (n : ℕ) : ℤ :=
  A293420.P14130243804413009707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293431.P1349061664695987811

`∑{d}[n+1, A147612(#)]`
-/

namespace A293431.P1349061664695987811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A147612 d

end

end A293431.P1349061664695987811

noncomputable section

/-- A293431: a(n) is the number of Jacobsthal numbers dividing n.

Offset 1, canonical program `A293431.P1349061664695987811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293431 (n : ℕ) : ℤ :=
  A293431.P1349061664695987811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293432.P1360839429234546005

`∑{d}[n+1, #*A147612(#)]`
-/

namespace A293432.P1360839429234546005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A147612 d

end

end A293432.P1360839429234546005

noncomputable section

/-- A293432: Sum of Jacobsthal numbers that divide n.

Offset 1, canonical program `A293432.P1360839429234546005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293432 (n : ℕ) : ℤ :=
  A293432.P1360839429234546005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293435.P5056457121277077986

`∑{d}[n+1, A010056(#)]-A010056(n+1)`
-/

namespace A293435.P5056457121277077986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010056 d - A010056 (n + 1)

end

end A293435.P5056457121277077986

noncomputable section

/-- A293435: a(n) is the number of the proper divisors of n that are Fibonacci numbers (A000045).

Offset 1, canonical program `A293435.P5056457121277077986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293435 (n : ℕ) : ℤ :=
  A293435.P5056457121277077986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293436.P1135665051244494939

`∑{d}[n+1, #%(n+1)*A010056(#)]`
-/

namespace A293436.P1135665051244494939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d % (n + 1) : ℕ) : ℤ) * A010056 d

end

end A293436.P1135665051244494939

noncomputable section

/-- A293436: a(n) is the sum of the proper divisors of n that are Fibonacci numbers (A000045).

Offset 1, canonical program `A293436.P1135665051244494939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293436 (n : ℕ) : ℤ :=
  A293436.P1135665051244494939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293611.P16775360234379216699

`∑[∑[A000292(n)]*(5*n+6)]`
-/

namespace A293611.P16775360234379216699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (5 * n + 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293611.P16775360234379216699

noncomputable section

/-- A293611: a(n) = (25*n + 41)*Pochhammer(n, 5) / 6!.

Offset 0, canonical program `A293611.P16775360234379216699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293611 (n : ℕ) : ℤ :=
  A293611.P16775360234379216699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293656.P5162966852586704272

`∑[n+1]*A006882(n)`
-/

namespace A293656.P5162966852586704272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A006882 n

end

end A293656.P5162966852586704272

noncomputable section

/-- A293656: a(n) = binomial(n+1,2)*n!/n!!.

Offset 1, canonical program `A293656.P5162966852586704272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A293656 (n : ℕ) : ℤ :=
  A293656.P5162966852586704272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A293656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293668.P14676330596261024754

`A255308(n)+1`
-/

namespace A293668.P14676330596261024754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 n + 1

end

end A293668.P14676330596261024754

noncomputable section

/-- A293668: First differences of A292046.

Offset 0, canonical program `A293668.P14676330596261024754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293668 (n : ℕ) : ℤ :=
  A293668.P14676330596261024754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293671.P15712082427370859904

`floor(4/5*A000045(n))`
-/

namespace A293671.P15712082427370859904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 5 * (A000045 n : ℚ)⌋

end

end A293671.P15712082427370859904

noncomputable section

/-- A293671: a(n) is the greatest integer k such that k/Fibonacci(n) < 4/5.

Offset 0, canonical program `A293671.P15712082427370859904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293671 (n : ℕ) : ℤ :=
  A293671.P15712082427370859904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293672.P8681346290342597704

`ceil(4/5*A000045(n))`
-/

namespace A293672.P8681346290342597704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 5 * (A000045 n : ℚ)⌉

end

end A293672.P8681346290342597704

noncomputable section

/-- A293672: a(n) is the least integer k such that k/Fibonacci(n) > 4/5.

Offset 0, canonical program `A293672.P8681346290342597704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293672 (n : ℕ) : ℤ :=
  A293672.P8681346290342597704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293673.P4666619230657474854

`round(4/5*A000045(n))`
-/

namespace A293673.P4666619230657474854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 5 * (A000045 n : ℚ))

end

end A293673.P4666619230657474854

noncomputable section

/-- A293673: a(n) is the integer k that minimizes |k/Fibonacci(n) - 4/5|.

Offset 0, canonical program `A293673.P4666619230657474854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293673 (n : ℕ) : ℤ :=
  A293673.P4666619230657474854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293674.P17440719709334452364

`floor(e*A000045(n))`
-/

namespace A293674.P17440719709334452364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A000045 n : ℝ)⌋

end

end A293674.P17440719709334452364

noncomputable section

/-- A293674: a(n) is the greatest integer k such that k/Fibonacci(n) < e.

Offset 0, canonical program `A293674.P17440719709334452364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293674 (n : ℕ) : ℤ :=
  A293674.P17440719709334452364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293676.P4327452207758404279

`round(e*A000045(n))`
-/

namespace A293676.P4327452207758404279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A000045 n : ℝ))

end

end A293676.P4327452207758404279

noncomputable section

/-- A293676: a(n) is the integer k that minimizes |e - k/Fibonacci(n)|.

Offset 0, canonical program `A293676.P4327452207758404279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293676 (n : ℕ) : ℤ :=
  A293676.P4327452207758404279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293677.P8644198808222840955

`floor(π*A000045(n))`
-/

namespace A293677.P8644198808222840955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000045 n : ℝ)⌋

end

end A293677.P8644198808222840955

noncomputable section

/-- A293677: a(n) is the greatest integer k such that k/Fibonacci(n) < Pi.

Offset 0, canonical program `A293677.P8644198808222840955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293677 (n : ℕ) : ℤ :=
  A293677.P8644198808222840955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293679.P15726943823660417155

`round(π*A000045(n))`
-/

namespace A293679.P15726943823660417155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A000045 n : ℝ))

end

end A293679.P15726943823660417155

noncomputable section

/-- A293679: a(n) is the integer k that minimizes |k/Fibonacci(n) - Pi|.

Offset 0, canonical program `A293679.P15726943823660417155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293679 (n : ℕ) : ℤ :=
  A293679.P15726943823660417155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293688.P8284500563526258194

`(n+1)*A005206(n)`
-/

namespace A293688.P8284500563526258194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005206 n

end

end A293688.P8284500563526258194

noncomputable section

/-- A293688: Partial sums of A002251.

Offset 0, canonical program `A293688.P8284500563526258194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293688 (n : ℕ) : ℤ :=
  A293688.P8284500563526258194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293700.P7866924572608709519

`Δ[A293698(n+1)]`
-/

namespace A293700.P7866924572608709519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293700.P7866924572608709519

noncomputable section

/-- A293700: First differences of A293698.

Offset 1, canonical program `A293700.P7866924572608709519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A293700 (n : ℕ) : ℤ :=
  A293700.P7866924572608709519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A293700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293751.P1475450915144499424

`eq[0, A195910(n)+1]`
-/

namespace A293751.P1475450915144499424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293751.P1475450915144499424

noncomputable section

/-- A293751: Values of positive integer i such that floor(tan(-i)) = 1.

Offset 1, canonical program `A293751.P1475450915144499424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A293751 (n : ℕ) : ℤ :=
  (A293751.P1475450915144499424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A293751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294013.P11508528961553630059

`∑[2*A230980(n)]`
-/

namespace A294013.P11508528961553630059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P11508528961553630059

noncomputable section

/-- A294013: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the smaller part prime.

Offset 1, canonical program `A294013.P11508528961553630059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294013 (n : ℕ) : ℤ :=
  A294013.P11508528961553630059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294052.P16115692674983833928

`A287275(n+4)-A001519(n+4)`
-/

namespace A294052.P16115692674983833928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 (n + 4) - A001519 (n + 4)

end

end A294052.P16115692674983833928

noncomputable section

/-- A294052: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals three.

Offset 4, canonical program `A294052.P16115692674983833928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A294052 (n : ℕ) : ℤ :=
  A294052.P16115692674983833928.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A294052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294085.P11106820965388429589

`A266769(n)+A026810(A109613(n))`
-/

namespace A294085.P11106820965388429589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n + A026810 (A109613 n).toNat

end

end A294085.P11106820965388429589

noncomputable section

/-- A294085: a(n) is the number of self-symmetric anonymous and neutral equivalence classes of preference profiles with 3 alternatives and n agents (IANC model).

Offset 0, canonical program `A294085.P11106820965388429589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294085 (n : ℕ) : ℤ :=
  A294085.P11106820965388429589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294091.P16255864335808949045

`2*A002313(n+1)+1`
-/

namespace A294091.P16255864335808949045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002313 (n + 1) + 1

end

end A294091.P16255864335808949045

noncomputable section

/-- A294091: Numbers k such that (k - 1)/2 is prime that are not congruent to -1 mod 8.

Offset 1, canonical program `A294091.P16255864335808949045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294091 (n : ℕ) : ℤ :=
  A294091.P16255864335808949045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294106.P2933432271010427062

`a(A002264(n))*A117940(n)` with `a(0)=1`
-/

namespace A294106.P2933432271010427062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A002264 n).toNat * A117940 n

end

end A294106.P2933432271010427062

noncomputable section

/-- A294106: Sum of products of terms in all partitions of 3*n into distinct powers of 3.

Offset 0, canonical program `A294106.P2933432271010427062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A294106 (n : ℕ) : ℤ :=
  A294106.P2933432271010427062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A294106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294108.P8258309688264849587

`abs(Δ[A033270(A185048(n+1))])`
-/

namespace A294108.P8258309688264849587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A185048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A294108.P8258309688264849587

noncomputable section

/-- A294108: Minimum of the number of primes appearing among the smaller parts and the number of primes appearing among the larger parts of the partitions of n into two parts.

Offset 1, canonical program `A294108.P8258309688264849587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294108 (n : ℕ) : ℤ :=
  A294108.P8258309688264849587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294143.P16233858525841780267

`A294062(n+1)+A066779(n+1)`
-/

namespace A294143.P16233858525841780267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294062 (n + 1) + A066779 (n + 1)

end

end A294143.P16233858525841780267

noncomputable section

/-- A294143: Sum of the larger parts of the partitions of 2n into two parts with smaller part squarefree.

Offset 1, canonical program `A294143.P16233858525841780267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294143 (n : ℕ) : ℤ :=
  A294143.P16233858525841780267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294175.P1326977934770168492

`A027306(n)-A001405(n)`
-/

namespace A294175.P1326977934770168492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - A001405 n

end

end A294175.P1326977934770168492

noncomputable section

/-- A294175: a(n) = 2^(n-1) + ((1+(-1)^n)/4)*binomial(n, n/2) - binomial(n, floor(n/2)).

Offset 0, canonical program `A294175.P1326977934770168492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A294175 (n : ℕ) : ℤ :=
  A294175.P1326977934770168492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A294175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294237.P9254304307185982450

`Δ[n/2*∑[A294234(n)]]`
-/

namespace A294237.P9254304307185982450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294237.P9254304307185982450

noncomputable section

/-- A294237: Sum of the larger parts of the partitions of n into two parts with smaller part nonsquarefree.

Offset 1, canonical program `A294237.P9254304307185982450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A294237 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294237.P9254304307185982450.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A294237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294238.P15813330204626195893

`∑[abs(Δ[n*A294234(n)])]`
-/

namespace A294238.P15813330204626195893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294234 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294238.P15813330204626195893

noncomputable section

/-- A294238: Sum of the parts in the partitions of n into two parts with smaller part nonsquarefree.

Offset 1, canonical program `A294238.P15813330204626195893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A294238 (n : ℕ) : ℤ :=
  A294238.P15813330204626195893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A294238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294271.P7794211560096555549

`∑[(n+1)²²-Δ[A309336(n)]]`
-/

namespace A294271.P7794211560096555549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294271.P7794211560096555549

noncomputable section

/-- A294271: Sum of the fourth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294271.P7794211560096555549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294271 (n : ℕ) : ℤ :=
  A294271.P7794211560096555549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294272.P4155078698942793880

`A000584(∑[n]%(n+1))+A000539(n)`
-/

namespace A294272.P4155078698942793880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000539 n

end

end A294272.P4155078698942793880

noncomputable section

/-- A294272: Sum of the fifth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294272.P4155078698942793880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294272 (n : ℕ) : ℤ :=
  A294272.P4155078698942793880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294273.P3284638066771822649

`A001014(∑[n]%(n+1))+A000540(n)`
-/

namespace A294273.P3284638066771822649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000540 n

end

end A294273.P3284638066771822649

noncomputable section

/-- A294273: Sum of the sixth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294273.P3284638066771822649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294273 (n : ℕ) : ℤ :=
  A294273.P3284638066771822649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294274.P16034422266987753468

`A001015(∑[n]%(n+1))+A000541(n)`
-/

namespace A294274.P16034422266987753468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000541 n

end

end A294274.P16034422266987753468

noncomputable section

/-- A294274: Sum of the seventh powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294274.P16034422266987753468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294274 (n : ℕ) : ℤ :=
  A294274.P16034422266987753468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294275.P5436868170071859999

`A001016(∑[n]%(n+1))+A000542(n)`
-/

namespace A294275.P5436868170071859999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000542 n

end

end A294275.P5436868170071859999

noncomputable section

/-- A294275: Sum of the eighth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294275.P5436868170071859999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294275 (n : ℕ) : ℤ :=
  A294275.P5436868170071859999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294276.P11196550552926364073

`Δ[A007487(floor(n/2))]+∑[n^9]`
-/

namespace A294276.P11196550552926364073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A294276.P11196550552926364073

noncomputable section

/-- A294276: Sum of the ninth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294276.P11196550552926364073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294276 (n : ℕ) : ℤ :=
  A294276.P11196550552926364073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294300.P13627915974501025542

`A000539(n)-Δ[A000539(floor(n/2))]`
-/

namespace A294300.P13627915974501025542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n - (f1 (n + 1) - f1 n)

end

end A294300.P13627915974501025542

noncomputable section

/-- A294300: Sum of the fifth powers of the parts in the partitions of n into two distinct parts.

Offset 1, canonical program `A294300.P13627915974501025542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294300 (n : ℕ) : ℤ :=
  A294300.P13627915974501025542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294364.P10284434815774838734

`A033999(n)+3*A286311(n)`
-/

namespace A294364.P10284434815774838734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 3 * A286311 n

end

end A294364.P10284434815774838734

noncomputable section

/-- A294364: Linear recurrence with signature (1,1,-1,1,1), where the first terms are powers of 2 (1,2,4,8,16).

Offset 0, canonical program `A294364.P10284434815774838734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A294364 (n : ℕ) : ℤ :=
  A294364.P10284434815774838734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A294364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294448.P13092270535202228762

`∑[A033999(A156253(n+1))]`
-/

namespace A294448.P13092270535202228762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A156253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294448.P13092270535202228762

noncomputable section

/-- A294448: Discrepancy of the Kolakoski sequence A000002.

Offset 1, canonical program `A294448.P13092270535202228762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294448 (n : ℕ) : ℤ :=
  A294448.P13092270535202228762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294473.P13798028006280597171

`2*A294286(n+1)`
-/

namespace A294473.P13798028006280597171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294286 (n + 1)

end

end A294473.P13798028006280597171

noncomputable section

/-- A294473: Sum of the areas of the squares on the sides of the distinct rectangles that can be made with positive integer sides such that L + W = n, W < L.

Offset 1, canonical program `A294473.P13798028006280597171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294473 (n : ℕ) : ℤ :=
  A294473.P13798028006280597171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294601.P169410523176805650

`eq[1, A196564(n)]`
-/

namespace A294601.P169410523176805650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294601.P169410523176805650

noncomputable section

/-- A294601: Numbers with exactly one odd decimal digit.

Offset 1, canonical program `A294601.P169410523176805650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A294601 (n : ℕ) : ℤ :=
  (A294601.P169410523176805650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A294601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294604.P8617844953742123333

`A071238(n+2)+A000217(A008796(2*n))`
-/

namespace A294604.P8617844953742123333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 (n + 2) + A000217 (A008796 (2 * n)).toNat

end

end A294604.P8617844953742123333

noncomputable section

/-- A294604: Number of ordinary double points of a family of threefolds.

Offset 3, canonical program `A294604.P8617844953742123333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A294604 (n : ℕ) : ℤ :=
  A294604.P8617844953742123333.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A294604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294630.P1431911924905244028

`4*A294017(n+1)`
-/

namespace A294630.P1431911924905244028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294017 (n + 1)

end

end A294630.P1431911924905244028

noncomputable section

/-- A294630: Partial sums of A294629.

Offset 1, canonical program `A294630.P1431911924905244028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294630 (n : ℕ) : ℤ :=
  A294630.P1431911924905244028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294640.P17292815464110634610

`a(A004526(n))*A093178(n)` with `a(0)=1`
-/

namespace A294640.P17292815464110634610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A093178 n

end

end A294640.P17292815464110634610

noncomputable section

/-- A294640: G.f. A(x) = Sum_{n>=0} x^n/a(n) satisfies: A(x) = A(x^2) + Integral A(x^2) dx.

Offset 0, canonical program `A294640.P17292815464110634610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A294640 (n : ℕ) : ℤ :=
  A294640.P17292815464110634610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A294640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294879.P13597222505789495960

`∑{d}[n+1, A294878(#)]-A294878(n+1)`
-/

namespace A294879.P13597222505789495960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294878 d - A294878 (n + 1)

end

end A294879.P13597222505789495960

noncomputable section

/-- A294879: Number of proper divisors of n that are in Perrin sequence, A001608.

Offset 1, canonical program `A294879.P13597222505789495960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294879 (n : ℕ) : ℤ :=
  A294879.P13597222505789495960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294880.P2535029441634500599

`∑{d}[n+1, A294878(#)]`
-/

namespace A294880.P2535029441634500599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294878 d

end

end A294880.P2535029441634500599

noncomputable section

/-- A294880: Number of divisors of n that are in Perrin sequence, A001608.

Offset 1, canonical program `A294880.P2535029441634500599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294880 (n : ℕ) : ℤ :=
  A294880.P2535029441634500599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295012.P7483936910690053485

`A000203(12*n+11)/12`
-/

namespace A295012.P7483936910690053485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (12 * n + 11) : ℚ) / 12

end

end A295012.P7483936910690053485

noncomputable section

/-- A295012: a(n) = sigma(12n - 1)/12, where sigma = sum of divisors (A000203).

Offset 1, canonical program `A295012.P7483936910690053485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A295012 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295012.P7483936910690053485.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A295012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295024.P12799125946553615279

`A294999(n+1)^3`
-/

namespace A295024.P12799125946553615279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294999 (n + 1) ^ 3

end

end A295024.P12799125946553615279

noncomputable section

/-- A295024: Cubes whose largest digit is 9.

Offset 1, canonical program `A295024.P12799125946553615279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295024 (n : ℕ) : ℤ :=
  A295024.P12799125946553615279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295126.P8603545562454549646

`(n+1)/A126864(n+1)`
-/

namespace A295126.P8603545562454549646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A126864 (n + 1) : ℚ)

end

end A295126.P8603545562454549646

noncomputable section

/-- A295126: Denominator of Sum_{d|n} mu(n/d)/d, where mu is the Möbius function A008683.

Offset 1, canonical program `A295126.P8603545562454549646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295126 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295126.P8603545562454549646.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295287.P15776343000814745150

`Δ[n*∑[C(A008621(n), 2)]]`
-/

namespace A295287.P15776343000814745150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008621 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A295287.P15776343000814745150

noncomputable section

/-- A295287: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the smaller part even.

Offset 1, canonical program `A295287.P15776343000814745150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295287 (n : ℕ) : ℤ :=
  A295287.P15776343000814745150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295298.P12146886332929648330

`eq[1, (A294899(n+1)+1)%2]+1`
-/

namespace A295298.P12146886332929648330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294899 (n + 1) + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295298.P12146886332929648330

noncomputable section

/-- A295298: Numbers n for which sum of the divisors (A000203) and the binary weight of n (A000120) have the same parity.

Offset 1, canonical program `A295298.P12146886332929648330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8257 terms. -/
def A295298 (n : ℕ) : ℤ :=
  (A295298.P12146886332929648330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8257 terms. -/
def A295298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295299.P1082946531175352022

`eq[1, A294899(n+1)%2]+1`
-/

namespace A295299.P1082946531175352022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294899 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295299.P1082946531175352022

noncomputable section

/-- A295299: Numbers k such that the sum of the divisors (A000203) and the binary weight of k (A000120) have different parity.

Offset 1, canonical program `A295299.P1082946531175352022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8127 terms. -/
def A295299 (n : ℕ) : ℤ :=
  (A295299.P1082946531175352022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8127 terms. -/
def A295299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295302.P4842979664690152672

`A062402(n+1)-(n+1)`
-/

namespace A295302.P4842979664690152672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - (n + 1 : ℤ)

end

end A295302.P4842979664690152672

noncomputable section

/-- A295302: a(n) = sigma(phi(n)) - n, where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295302.P4842979664690152672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295302 (n : ℕ) : ℤ :=
  A295302.P4842979664690152672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295867.P8913751111726183930

`A000217(A047248(n+1))*A007494(A047248(n+1))`
-/

namespace A295867.P8913751111726183930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A047248 (n + 1)).toNat * A007494 (A047248 (n + 1)).toNat

end

end A295867.P8913751111726183930

noncomputable section

/-- A295867: Numbers of the form A000217(n)*A007494(n) that are divisible by 3.

Offset 0, canonical program `A295867.P8913751111726183930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. -/
def A295867 (n : ℕ) : ℤ :=
  A295867.P8913751111726183930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. -/
def A295867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295881.P4822389694980892212

`xor(2*A033880(n+1), A033880(n+1))`
-/

namespace A295881.P4822389694980892212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033880 (n + 1)) (A033880 (n + 1))

end

end A295881.P4822389694980892212

noncomputable section

/-- A295881: Reversing binary representation of the deficiency of n, A033879(n).

Offset 1, canonical program `A295881.P4822389694980892212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295881 (n : ℕ) : ℤ :=
  A295881.P4822389694980892212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295932.P18162983367406972142

`A271939(n+1)+A062395(n+1)`
-/

namespace A295932.P18162983367406972142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271939 (n + 1) + A062395 (n + 1)

end

end A295932.P18162983367406972142

noncomputable section

/-- A295932: Number of (not necessarily maximal) cliques in the n-Sierpinski carpet graph.

Offset 1, canonical program `A295932.P18162983367406972142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A295932 (n : ℕ) : ℤ :=
  A295932.P18162983367406972142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A295932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296058.P2087085375536391627

`A004523(A000040(n+2)+1)`
-/

namespace A296058.P2087085375536391627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A000040 (n + 2) + 1).toNat

end

end A296058.P2087085375536391627

noncomputable section

/-- A296058: Numbers k such that floor((3*k - 1)/2) is prime.

Offset 1, canonical program `A296058.P2087085375536391627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296058 (n : ℕ) : ℤ :=
  A296058.P2087085375536391627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296081.P5465156998017527787

`gcd(A032741(n+1), A039653(n+1))`
-/

namespace A296081.P5465156998017527787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032741 (n + 1)) (A039653 (n + 1))

end

end A296081.P5465156998017527787

noncomputable section

/-- A296081: a(n) = gcd(tau(n)-1, sigma(n)-1), where tau = A000005 and sigma = A000203.

Offset 1, canonical program `A296081.P5465156998017527787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296081 (n : ℕ) : ℤ :=
  (A296081.P5465156998017527787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296102.P12593933539464687046

`A001644(lcm(2, n+1))^A000034(n)`
-/

namespace A296102.P12593933539464687046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (Nat.lcm 2 (n + 1)) : ℚ) ^ (A000034 n : ℤ)

end

end A296102.P12593933539464687046

noncomputable section

/-- A296102: Number of total dominating sets in the n-prism graph.

Offset 1, canonical program `A296102.P12593933539464687046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A296102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296102.P12593933539464687046.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A296102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296198.P2777221350177651624

`∑[A131474(n+1)-or(1, n)]`
-/

namespace A296198.P2777221350177651624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 (n + 1) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296198.P2777221350177651624

noncomputable section

/-- A296198: Harary index of the n X n black bishop graph.

Offset 1, canonical program `A296198.P2777221350177651624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296198 (n : ℕ) : ℤ :=
  A296198.P2777221350177651624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296200.P13666537993982254084

`∑[(A027379(n)+1)*A008619(n)]-1`
-/

namespace A296200.P13666537993982254084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027379 n + 1) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A296200.P13666537993982254084

noncomputable section

/-- A296200: Harary index of the n X n white bishop graph.

Offset 2, canonical program `A296200.P13666537993982254084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296200 (n : ℕ) : ℤ :=
  A296200.P13666537993982254084.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296209.P15000456844671825511

`char[A001591(n)]`
-/

namespace A296209.P15000456844671825511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296209.P15000456844671825511

noncomputable section

/-- A296209: a(n) = 1 if n is a pentanacci number, 0 otherwise; characteristic function for A001591.

Offset 0, canonical program `A296209.P15000456844671825511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296209 (n : ℕ) : ℤ :=
  (A296209.P15000456844671825511.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296349.P12407460171033777792

`A083652(n)-A070939(n)`
-/

namespace A296349.P12407460171033777792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - A070939 n

end

end A296349.P12407460171033777792

noncomputable section

/-- A296349: Position where the row corresponding to the binary expansion of n starts in the (flattened) binary Champernowne triangle A030190.

Offset 0, canonical program `A296349.P12407460171033777792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296349 (n : ℕ) : ℤ :=
  A296349.P12407460171033777792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296357.P11014867550721753936

`A059531(n+1)-n`
-/

namespace A296357.P11014867550721753936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (n + 1) - (n : ℤ)

end

end A296357.P11014867550721753936

noncomputable section

/-- A296357: a(n) = ceiling of n/Pi.

Offset 1, canonical program `A296357.P11014867550721753936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296357 (n : ℕ) : ℤ :=
  A296357.P11014867550721753936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296367.P5203125828263086518

`A000292(4*n+2)-A334706(n+1)`
-/

namespace A296367.P5203125828263086518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (4 * n + 2) - A334706 (n + 1)

end

end A296367.P5203125828263086518

noncomputable section

/-- A296367: Number of triangles on a 4 X n grid.

Offset 1, canonical program `A296367.P5203125828263086518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A296367 (n : ℕ) : ℤ :=
  A296367.P5203125828263086518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A296367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296516.P6220263094053475914

`A005207(n+1)+1-A133263(n)+n`
-/

namespace A296516.P6220263094053475914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) + (1 - A133263 n + (n : ℤ))

end

end A296516.P6220263094053475914

noncomputable section

/-- A296516: a(n) is the number of terms in expanded form of bivariate polynomial Q_n, where (P_n, Q_n) is defined by: P_0 = x, Q_0 = y, P_(n+1) = P_n + Q_n, Q_(n+1) = P_n * Q_n.

Offset 0, canonical program `A296516.P6220263094053475914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A296516 (n : ℕ) : ℤ :=
  A296516.P6220263094053475914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A296516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296806.P9586310270846408031

`p?[A005408(n)*A032741(n-A053644(n))]`
-/

namespace A296806.P9586310270846408031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A032741 ((n : ℤ) - A053644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296806.P9586310270846408031

noncomputable section

/-- A296806: Take a prime, convert it to base 2, remove its most significant digit and its least significant digit and convert it back to base 10. Sequence lists primes that generate another prime by this process.

Offset 1, canonical program `A296806.P9586310270846408031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A296806 (n : ℕ) : ℤ :=
  A296806.P9586310270846408031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A296806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296819.P11695686937393646933

`ceil((n/2)²*A014601(n))`
-/

namespace A296819.P11695686937393646933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2 * (A014601 n : ℚ)⌉

end

end A296819.P11695686937393646933

noncomputable section

/-- A296819: Maximum detour index of any bipartite graph on n nodes.

Offset 1, canonical program `A296819.P11695686937393646933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296819 (n : ℕ) : ℤ :=
  A296819.P11695686937393646933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296922.P1686285599133092748

`A240920(n+2)`
-/

namespace A296922.P1686285599133092748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 2)

end

end A296922.P1686285599133092748

noncomputable section

/-- A296922: Primes p such that Legendre(-5,p) = 0 or 1.

Offset 1, canonical program `A296922.P1686285599133092748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296922 (n : ℕ) : ℤ :=
  A296922.P1686285599133092748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296923.P6490900541001492370

`∪[A003626(n+1), A122487(n+1)]`
-/

namespace A296923.P6490900541001492370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296923.P6490900541001492370

noncomputable section

/-- A296923: Primes p such that Legendre(-5,p) = -1.

Offset 1, canonical program `A296923.P6490900541001492370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296923 (n : ℕ) : ℤ :=
  (A296923.P6490900541001492370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296924.P3946104846121365816

`∪[A033199(n+1), A084865(n+1)]`
-/

namespace A296924.P3946104846121365816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P3946104846121365816

noncomputable section

/-- A296924: Primes p such that Legendre(-6,p) = 0 or 1.

Offset 1, canonical program `A296924.P3946104846121365816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296924 (n : ℕ) : ℤ :=
  (A296924.P3946104846121365816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296925.P9706483772686857562

`p?[xor(A047415(n+1), A131670(n))]`
-/

namespace A296925.P9706483772686857562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047415 (n + 1)) (A131670 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296925.P9706483772686857562

noncomputable section

/-- A296925: Inert rational primes in the field Q(sqrt(-10)).

Offset 1, canonical program `A296925.P9706483772686857562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A296925 (n : ℕ) : ℤ :=
  A296925.P9706483772686857562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A296925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296927.P16389215036078374289

`p?[A009001(n)*A011583(2*n)]`
-/

namespace A296927.P16389215036078374289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A011583 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296927.P16389215036078374289

noncomputable section

/-- A296927: Inert rational primes in the field Q(sqrt(-13)).

Offset 1, canonical program `A296927.P16389215036078374289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A296927 (n : ℕ) : ℤ :=
  A296927.P16389215036078374289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A296927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296955.P12925484425908854093

`A000203(n+1)-A080512(n+1)`
-/

namespace A296955.P12925484425908854093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A080512 (n + 1)

end

end A296955.P12925484425908854093

noncomputable section

/-- A296955: Sum of the smaller parts of the partitions of n into two distinct parts such that the smaller part divides the larger.

Offset 1, canonical program `A296955.P12925484425908854093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296955 (n : ℕ) : ℤ :=
  A296955.P12925484425908854093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296966.P18250778610313653592

`(n+1)*A023645(n+1)`
-/

namespace A296966.P18250778610313653592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023645 (n + 1)

end

end A296966.P18250778610313653592

noncomputable section

/-- A296966: Sum of all the parts in the partitions of n into two distinct parts such that the smaller part divides the larger.

Offset 1, canonical program `A296966.P18250778610313653592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296966 (n : ℕ) : ℤ :=
  A296966.P18250778610313653592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296997.P8803801217566714357

`A178208(n+1)-(n+1)*A007590(n)`
-/

namespace A296997.P8803801217566714357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - (n + 1 : ℤ) * A007590 n

end

end A296997.P8803801217566714357

noncomputable section

/-- A296997: Number of ways to place 3 points on an n X n point grid so that no point is equally distant from two other points on the same row or the same column.

Offset 1, canonical program `A296997.P8803801217566714357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296997 (n : ℕ) : ℤ :=
  A296997.P8803801217566714357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297024.P11946772240064417738

`∑[∑[n]%(n+1)]-A001065(n+1)`
-/

namespace A297024.P11946772240064417738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1)

end

end A297024.P11946772240064417738

noncomputable section

/-- A297024: Sum of the smaller parts of the partitions of n into two parts such that the smaller part does not divide the larger.

Offset 1, canonical program `A297024.P11946772240064417738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297024 (n : ℕ) : ℤ :=
  A297024.P11946772240064417738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297042.P12230498484453205082

`floor(log(log(A134986(n+6))))`
-/

namespace A297042.P12230498484453205082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.log (A134986 (n + 6) : ℝ))⌋

end

end A297042.P12230498484453205082

noncomputable section

/-- A297042: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-14 digits of n; see Comments.

Offset 1, canonical program `A297042.P12230498484453205082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A297042 (n : ℕ) : ℤ :=
  A297042.P12230498484453205082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A297042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297109.P3226708849595875613

`A230980(A020500(n+1))`
-/

namespace A297109.P3226708849595875613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A020500 (n + 1)).toNat

end

end A297109.P3226708849595875613

noncomputable section

/-- A297109: If n is prime(k)^e, e >= 1, then a(n) = k, otherwise 0.

Offset 1, canonical program `A297109.P3226708849595875613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297109 (n : ℕ) : ℤ :=
  A297109.P3226708849595875613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297249.P11320292076067648954

`record[A080782(A080727(n+1))]`
-/

namespace A297249.P11320292076067648954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A080727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297249.P11320292076067648954

noncomputable section

/-- A297249: Numbers whose base-3 digits have greater down-variation than up-variation; see Comments.

Offset 1, canonical program `A297249.P11320292076067648954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4426 terms. -/
def A297249 (n : ℕ) : ℤ :=
  A297249.P11320292076067648954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4426 terms. -/
def A297249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297251.P6344271933404297145

`2*n+A157671(n+1)+3`
-/

namespace A297251.P6344271933404297145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A157671 (n + 1) + 3)

end

end A297251.P6344271933404297145

noncomputable section

/-- A297251: Numbers whose base-3 digits have greater up-variation than down-variation; see Comments.

Offset 1, canonical program `A297251.P6344271933404297145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297251 (n : ℕ) : ℤ :=
  A297251.P6344271933404297145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297384.P15101918690716605914

`A080040(2*(n+1))-record[4-a(n-1)-a(n-1)]` with `a(0)=4`
-/

namespace A297384.P15101918690716605914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  4 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (2 * (n + 1)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297384.P15101918690716605914

noncomputable section

/-- A297384: Number of Eulerian cycles in the n-antiprism graph.

Offset 1, canonical program `A297384.P15101918690716605914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A297384 (n : ℕ) : ℤ :=
  A297384.P15101918690716605914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A297384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297405.P3296877562638287583

`(n+1)*A001576(A070939(n+1))`
-/

namespace A297405.P3296877562638287583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001576 (A070939 (n + 1)).toNat

end

end A297405.P3296877562638287583

noncomputable section

/-- A297405: Binary "cubes"; numbers whose binary representation consists of three consecutive identical blocks.

Offset 1, canonical program `A297405.P3296877562638287583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A297405 (n : ℕ) : ℤ :=
  A297405.P3296877562638287583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A297405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297469.P17207541114748779178

`5*n+A285384(n+1)+1`
-/

namespace A297469.P17207541114748779178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + (A285384 (n + 1) + 1)

end

end A297469.P17207541114748779178

noncomputable section

/-- A297469: Solution (bb(n)) of the system of 3 complementary equations in Comments.

Offset 0, canonical program `A297469.P17207541114748779178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297469 (n : ℕ) : ℤ :=
  A297469.P17207541114748779178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297575.P5293567509015063131

`eq[9, A039653(n)%10]`
-/

namespace A297575.P5293567509015063131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297575.P5293567509015063131

noncomputable section

/-- A297575: Numbers whose sum of divisors is divisible by 10.

Offset 1, canonical program `A297575.P5293567509015063131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A297575 (n : ℕ) : ℤ :=
  (A297575.P5293567509015063131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A297575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297841.P6793829861847375659

`2*A001157(n+1)-A297792(n+1)`
-/

namespace A297841.P6793829861847375659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001157 (n + 1) - A297792 (n + 1)

end

end A297841.P6793829861847375659

noncomputable section

/-- A297841: a(n) = Sum_{d|n} max(d, n/d)^2.

Offset 1, canonical program `A297841.P6793829861847375659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A297792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297841 (n : ℕ) : ℤ :=
  A297841.P6793829861847375659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A297792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297966.P8044726551549001468

`A027313(n)%A000040(n+1)`
-/

namespace A297966.P8044726551549001468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027313 n) (A000040 (n + 1))

end

end A297966.P8044726551549001468

noncomputable section

/-- A297966: a(n) = 3^n mod prime(n).

Offset 1, canonical program `A297966.P8044726551549001468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A297966 (n : ℕ) : ℤ :=
  A297966.P8044726551549001468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A297966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298043.P12078883428185430853

`a(n-A053644(n))+n` with `a(0)=0`
-/

namespace A298043.P12078883428185430853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A053644 n).toNat + n

end

end A298043.P12078883428185430853

noncomputable section

/-- A298043: If n = Sum_{i=1..h} 2^b_i with b_1 > ... > b_h >= 0, then a(n) = Sum_{i=1..h} i * 2^b_i.

Offset 0, canonical program `A298043.P12078883428185430853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A298043 (n : ℕ) : ℤ :=
  (A298043.P12078883428185430853.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A298043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298375.P7387057598630148626

`∑[A230584(n+1)]`
-/

namespace A298375.P7387057598630148626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298375.P7387057598630148626

noncomputable section

/-- A298375: Partial sums of A230584.

Offset 1, canonical program `A298375.P7387057598630148626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298375 (n : ℕ) : ℤ :=
  A298375.P7387057598630148626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298638.P11624616744762784382

`eq[1, A179081(n)+A113217(n)]`
-/

namespace A298638.P11624616744762784382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n + A113217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298638.P11624616744762784382

noncomputable section

/-- A298638: Numbers k such that the digital sum of k and the digital root of k have opposite parity.

Offset 1, canonical program `A298638.P11624616744762784382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5115 terms. -/
def A298638 (n : ℕ) : ℤ :=
  (A298638.P11624616744762784382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5115 terms. -/
def A298638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298823.P17623720946952442995

`A300738(n+1)+2*(n+1)`
-/

namespace A298823.P17623720946952442995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300738 (n + 1) + (2 * (n + 1) : ℤ)

end

end A298823.P17623720946952442995

noncomputable section

/-- A298823: Number of minimal total dominating sets in the n-dipyramidal graph.

Offset 1, canonical program `A298823.P17623720946952442995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A298823 (n : ℕ) : ℤ :=
  A298823.P17623720946952442995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A298823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298865.P11176209337828573366

`eq[1, A032741(n/A010121(n))]`
-/

namespace A298865.P11176209337828573366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((n : ℚ) / (A010121 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298865.P11176209337828573366

noncomputable section

/-- A298865: The primes p and products 4*p in increasing order.

Offset 1, canonical program `A298865.P11176209337828573366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298865 (n : ℕ) : ℤ :=
  (A298865.P11176209337828573366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298992.P1160914554161029700

`(n+1)*∑[A257143(n)]-∑[∑[n+1]]`
-/

namespace A298992.P1160914554161029700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A298992.P1160914554161029700

noncomputable section

/-- A298992: a(n) = (2*n-3-(-1)^n)*(22*n^2-21*n+5*n*(-1)^n)/96.

Offset 1, canonical program `A298992.P1160914554161029700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298992 (n : ℕ) : ℤ :=
  A298992.P1160914554161029700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299090.P6964279361835886871

`A029837(A051903(n+1)+1)`
-/

namespace A299090.P6964279361835886871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A051903 (n + 1) + 1).toNat

end

end A299090.P6964279361835886871

noncomputable section

/-- A299090: Number of "digits" in the binary representation of the multiset of prime factors of n.

Offset 1, canonical program `A299090.P6964279361835886871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299090 (n : ℕ) : ℤ :=
  A299090.P6964279361835886871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299260.P6148484751298139448

`∑[A299254(n)]`
-/

namespace A299260.P6148484751298139448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299260.P6148484751298139448

noncomputable section

/-- A299260: Partial sums of A299254.

Offset 0, canonical program `A299260.P6148484751298139448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299260 (n : ℕ) : ℤ :=
  A299260.P6148484751298139448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299264.P17963270887005284218

`∑[A299258(n)]`
-/

namespace A299264.P17963270887005284218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299264.P17963270887005284218

noncomputable section

/-- A299264: Partial sums of A299258.

Offset 0, canonical program `A299264.P17963270887005284218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299264 (n : ℕ) : ℤ :=
  A299264.P17963270887005284218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299269.P16181950100886024288

`∑[A299268(n)]`
-/

namespace A299269.P16181950100886024288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299269.P16181950100886024288

noncomputable section

/-- A299269: Partial sums of A299268.

Offset 0, canonical program `A299269.P16181950100886024288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299269 (n : ℕ) : ℤ :=
  A299269.P16181950100886024288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299273.P16369362884452258853

`∑[A299272(n)]`
-/

namespace A299273.P16369362884452258853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299273.P16369362884452258853

noncomputable section

/-- A299273: Partial sums of A299272.

Offset 0, canonical program `A299273.P16369362884452258853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299273 (n : ℕ) : ℤ :=
  A299273.P16369362884452258853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299280.P2212089132227130009

`∑[A299279(n)]`
-/

namespace A299280.P2212089132227130009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299280.P2212089132227130009

noncomputable section

/-- A299280: Partial sums of A299279.

Offset 0, canonical program `A299280.P2212089132227130009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299280 (n : ℕ) : ℤ :=
  A299280.P2212089132227130009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299284.P12485643414015177927

`∑[A299283(n)]`
-/

namespace A299284.P12485643414015177927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299284.P12485643414015177927

noncomputable section

/-- A299284: Partial sums of A299283.

Offset 0, canonical program `A299284.P12485643414015177927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299284 (n : ℕ) : ℤ :=
  A299284.P12485643414015177927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299286.P1101752150573193452

`∑[A299285(n)]`
-/

namespace A299286.P1101752150573193452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299286.P1101752150573193452

noncomputable section

/-- A299286: Partial sums of A299285.

Offset 0, canonical program `A299286.P1101752150573193452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299286 (n : ℕ) : ℤ :=
  A299286.P1101752150573193452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299406.P12851445645438717549

`∏{e}[n+1, A000484(#)]`
-/

namespace A299406.P12851445645438717549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000484 (Nat.factorization (f1 n) p)

end

end A299406.P12851445645438717549

noncomputable section

/-- A299406: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = (zeta(s)*zeta(6*s))/(zeta(2*s)*zeta(3*s)).

Offset 1, canonical program `A299406.P12851445645438717549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299406 (n : ℕ) : ℤ :=
  A299406.P12851445645438717549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299480.P14776688201908958445

`∑{d}[A008619(n), (#+n)%2]`
-/

namespace A299480.P14776688201908958445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d + n) % 2

end

end A299480.P14776688201908958445

noncomputable section

/-- A299480: List of pairs (a,b) where in the n-th pair, a = number of odd divisors of n and b = number of even divisors of n.

Offset 1, canonical program `A299480.P14776688201908958445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299480 (n : ℕ) : ℤ :=
  (A299480.P14776688201908958445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299795.P4529790232242310538

`A001787(A000040(n+1))`
-/

namespace A299795.P4529790232242310538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A000040 (n + 1)).toNat

end

end A299795.P4529790232242310538

noncomputable section

/-- A299795: Numbers of the form p*2^(p-1) where p is prime.

Offset 1, canonical program `A299795.P4529790232242310538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299795 (n : ℕ) : ℤ :=
  A299795.P4529790232242310538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299918.P3752853738902023478

`A001006(n)%8`
-/

namespace A299918.P3752853738902023478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 8

end

end A299918.P3752853738902023478

noncomputable section

/-- A299918: Motzkin numbers (A001006) mod 8.

Offset 0, canonical program `A299918.P3752853738902023478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A299918 (n : ℕ) : ℤ :=
  A299918.P3752853738902023478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A299918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299920.P4677145065747022215

`A001006(n)%6`
-/

namespace A299920.P4677145065747022215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 6

end

end A299920.P4677145065747022215

noncomputable section

/-- A299920: Motzkin numbers (A001006) mod 6.

Offset 0, canonical program `A299920.P4677145065747022215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A299920 (n : ℕ) : ℤ :=
  A299920.P4677145065747022215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A299920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300068.P14212122279735515571

`A300067(n)+3*floor(n/6)`
-/

namespace A300068.P14212122279735515571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300067 n + 3 * ⌊(n : ℚ) / 6⌋

end

end A300068.P14212122279735515571

noncomputable section

/-- A300068: A sequence based on the period 6 sequence A300067.

Offset 0, canonical program `A300068.P14212122279735515571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300068 (n : ℕ) : ℤ :=
  A300068.P14212122279735515571.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300076.P1900940538167367687

`A300075(n)+3*floor(n/6)`
-/

namespace A300076.P1900940538167367687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300075 n + 3 * ⌊(n : ℚ) / 6⌋

end

end A300076.P1900940538167367687

noncomputable section

/-- A300076: A sequence based on the period 6 sequence A300075.

Offset 0, canonical program `A300076.P1900940538167367687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300076 (n : ℕ) : ℤ :=
  A300076.P1900940538167367687.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300154.P12598035812061489662

`n+1-A069905(∑[char[A001399(n)]])`
-/

namespace A300154.P12598035812061489662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A069905 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300154.P12598035812061489662

noncomputable section

/-- A300154: Consider a spiral on an infinite hexagonal grid. a(n) is the number of cells in the part of the spiral from 1st to n-th cell that are on the same column or diagonal (in any of three directions) as the n-th cell along the spiral, including that cell itself.

Offset 1, canonical program `A300154.P12598035812061489662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A300154 (n : ℕ) : ℤ :=
  A300154.P12598035812061489662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A300154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300244.P9625396769520001980

`∑{d}[n+1, A005187(#)*A157658((n+1)/#)]`
-/

namespace A300244.P9625396769520001980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005187 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300244.P9625396769520001980

noncomputable section

/-- A300244: Difference between A005187 and its Möbius transform (A297111).

Offset 1, canonical program `A300244.P9625396769520001980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300244 (n : ℕ) : ℤ :=
  A300244.P9625396769520001980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300287.P17414815361039175684

`round(A055086(n+2)/3)`
-/

namespace A300287.P17414815361039175684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055086 (n + 2) : ℚ) / 3)

end

end A300287.P17414815361039175684

noncomputable section

/-- A300287: a(n) = floor((1/n) * Sum_{k=1..n} sqrt(k)).

Offset 1, canonical program `A300287.P17414815361039175684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2926 terms. -/
def A300287 (n : ℕ) : ℤ :=
  A300287.P17414815361039175684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2926 terms. -/
def A300287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300296.P416617843077522993

`lcm(16, A115067(n+1))/16`
-/

namespace A300296.P416617843077522993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 16 (A115067 (n + 1)) : ℚ) / 16

end

end A300296.P416617843077522993

noncomputable section

/-- A300296: Numerators of n*(5 + 3*n)/(8*(1 + 3*n)*(4 + 3*n)), n >= 0.

Offset 0, canonical program `A300296.P416617843077522993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A300296.P416617843077522993.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300409.P17132749189029347074

`∑{d}[n+1, A073424(3*#-2)]`
-/

namespace A300409.P17132749189029347074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073424 (3 * d - 2)

end

end A300409.P17132749189029347074

noncomputable section

/-- A300409: Number of centered triangular numbers dividing n.

Offset 1, canonical program `A300409.P17132749189029347074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3825 terms. -/
def A300409 (n : ℕ) : ℤ :=
  A300409.P17132749189029347074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3825 terms. -/
def A300409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300410.P13384018005390243384

`∑{d}[n+1, A003982(#-1)]`
-/

namespace A300410.P13384018005390243384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003982 (d - 1)

end

end A300410.P13384018005390243384

noncomputable section

/-- A300410: Number of centered square numbers dividing n.

Offset 1, canonical program `A300410.P13384018005390243384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300410 (n : ℕ) : ℤ :=
  A300410.P13384018005390243384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300657.P2454119295566594023

`∑{d}[n+1, A054024(#)]`
-/

namespace A300657.P2454119295566594023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054024 d

end

end A300657.P2454119295566594023

noncomputable section

/-- A300657: a(n) = Sum_{d|n} sigma(d) mod d.

Offset 1, canonical program `A300657.P2454119295566594023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300657 (n : ℕ) : ℤ :=
  A300657.P2454119295566594023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300838.P2409035499828455037

`A057300(A003188(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300838.P2409035499828455037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A003188 n).toNat

end

end A300838.P2409035499828455037

noncomputable section

/-- A300838: Permutation of nonnegative integers: a(n) = A057300(A003188(n)).

Offset 0, canonical program `A300838.P2409035499828455037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057300, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300838 (n : ℕ) : ℤ :=
  A300838.P2409035499828455037.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057300, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300850.P17462114444134555515

`n*floor(∑[n²]*A000108(n)/2)`
-/

namespace A300850.P17462114444134555515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000108 n : ℚ) / 2⌋

end

end A300850.P17462114444134555515

noncomputable section

/-- A300850: Number of 6-cycles in the n-odd graph.

Offset 1, canonical program `A300850.P17462114444134555515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A300850 (n : ℕ) : ℤ :=
  A300850.P17462114444134555515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A300850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300893.P14197464904502864311

`∑{d}[n+1, A033999(#-1)*A191558((n+1)/#)]`
-/

namespace A300893.P14197464904502864311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A191558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300893.P14197464904502864311

noncomputable section

/-- A300893: L.g.f.: log(Product_{k>=1} (1 + x^k)/(1 + x^prime(k))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A300893.P14197464904502864311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300893 (n : ℕ) : ℤ :=
  A300893.P14197464904502864311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300999.P4441876574690506784

`A000030(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A300999.P4441876574690506784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000030 (a (n - 1)).toNat + a (n - 2)

end

end A300999.P4441876574690506784

noncomputable section

/-- A300999: Add to a(n) the first digit of a(n+1) to get a(n+2), with a(1) = 1 and a(2) = 2.

Offset 1, canonical program `A300999.P4441876574690506784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6246 terms. -/
def A300999 (n : ℕ) : ℤ :=
  A300999.P4441876574690506784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6246 terms. -/
def A300999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301277.P14013544238824079031

`round(∑[A000040(n+1)]/(n+1))`
-/

namespace A301277.P14013544238824079031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A301277.P14013544238824079031

noncomputable section

/-- A301277: Nearest integer to mean of first n primes.

Offset 1, canonical program `A301277.P14013544238824079031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301277 (n : ℕ) : ℤ :=
  A301277.P14013544238824079031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301285.P11128293698623168490

`A077814(n)+A301293(n)-A008854(n+1)`
-/

namespace A301285.P11128293698623168490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 n + (A301293 n - A008854 (n + 1))

end

end A301285.P11128293698623168490

noncomputable section

/-- A301285: Coordination sequence for node of type V2 in "car" 2-D tiling (or net).

Offset 0, canonical program `A301285.P11128293698623168490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301285 (n : ℕ) : ℤ :=
  A301285.P11128293698623168490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301674.P12060980078719106304

`A296910(n)+2*A087509(n)`
-/

namespace A301674.P12060980078719106304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + 2 * A087509 n

end

end A301674.P12060980078719106304

noncomputable section

/-- A301674: Coordination sequence for node of type V1 in "krs" 2-D tiling (or net).

Offset 0, canonical program `A301674.P12060980078719106304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A301674 (n : ℕ) : ℤ :=
  A301674.P12060980078719106304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A301674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301682.P268542884370986644

`A008486(2*(n-A087509(n)))`
-/

namespace A301682.P268542884370986644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * ((n : ℤ) - A087509 n)).toNat

end

end A301682.P268542884370986644

noncomputable section

/-- A301682: Coordination sequence for node of type V1 in "krg" 2-D tiling (or net).

Offset 0, canonical program `A301682.P268542884370986644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A301682 (n : ℕ) : ℤ :=
  A301682.P268542884370986644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A301682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301686.P8507218022111170085

`A298784(n)+A022998(A004396(n))`
-/

namespace A301686.P8507218022111170085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + A022998 (A004396 n).toNat

end

end A301686.P8507218022111170085

noncomputable section

/-- A301686: Coordination sequence for node of type V1 in "krh" 2-D tiling (or net).

Offset 0, canonical program `A301686.P8507218022111170085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A301686 (n : ℕ) : ℤ :=
  A301686.P8507218022111170085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A301686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301688.P3981714855521435450

`A087509(n)+A008574(n)`
-/

namespace A301688.P3981714855521435450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n + A008574 n

end

end A301688.P3981714855521435450

noncomputable section

/-- A301688: Coordination sequence for node of type V2 in "krh" 2-D tiling (or net).

Offset 0, canonical program `A301688.P3981714855521435450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2631 terms. -/
def A301688 (n : ℕ) : ℤ :=
  A301688.P3981714855521435450.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2631 terms. -/
def A301688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301697.P14130087515424846907

`A312950(2*n)+n-5*n`
-/

namespace A301697.P14130087515424846907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 (2 * n) + ((n : ℤ) - (5 * n : ℤ))

end

end A301697.P14130087515424846907

noncomputable section

/-- A301697: Coordination sequence for node of type V2 in "krj" 2-D tiling (or net).

Offset 0, canonical program `A301697.P14130087515424846907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301697 (n : ℕ) : ℤ :=
  A301697.P14130087515424846907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301698.P7882029233513104764

`∑[A047513(n+1)]+(n+1)²+n²`
-/

namespace A301698.P7882029233513104764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 + n ^ 2 : ℤ)

end

end A301698.P7882029233513104764

noncomputable section

/-- A301698: Partial sums of A301697.

Offset 0, canonical program `A301698.P7882029233513104764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301698 (n : ℕ) : ℤ :=
  A301698.P7882029233513104764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301716.P177371536151067765

`A008458(A219529(n)-A312928(n))`
-/

namespace A301716.P177371536151067765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A219529 n - A312928 n).toNat

end

end A301716.P177371536151067765

noncomputable section

/-- A301716: Coordination sequence for node of type V1 in "kre" 2-D tiling (or net).

Offset 0, canonical program `A301716.P177371536151067765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A301716 (n : ℕ) : ℤ :=
  A301716.P177371536151067765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A301716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301717.P10797501216361738203

`∑[A008458(A219529(n)-A312928(n))]`
-/

namespace A301717.P10797501216361738203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A219529 n - A312928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301717.P10797501216361738203

noncomputable section

/-- A301717: Partial sums of A301716.

Offset 0, canonical program `A301717.P10797501216361738203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301717 (n : ℕ) : ℤ :=
  A301717.P10797501216361738203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301720.P13865746006239503731

`A008486(2*n-A087509(n))`
-/

namespace A301720.P13865746006239503731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((2 * n : ℤ) - A087509 n).toNat

end

end A301720.P13865746006239503731

noncomputable section

/-- A301720: Coordination sequence for node of type V1 in "krb" 2-D tiling (or net).

Offset 0, canonical program `A301720.P13865746006239503731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A301720 (n : ℕ) : ℤ :=
  A301720.P13865746006239503731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A301720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301726.P1101597542674240363

`A008706(n)+A151988(n)-A004396(A151988(n))`
-/

namespace A301726.P1101597542674240363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A151988 n - A004396 (A151988 n).toNat)

end

end A301726.P1101597542674240363

noncomputable section

/-- A301726: Coordination sequence for node of type V2 in "kra" 2-D tiling (or net).

Offset 0, canonical program `A301726.P1101597542674240363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8335 terms. -/
def A301726 (n : ℕ) : ℤ :=
  A301726.P1101597542674240363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8335 terms. -/
def A301726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301739.P6947186573899325127

`A000601(n)+∑[ceil((n+1)/2)²]`
-/

namespace A301739.P6947186573899325127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P6947186573899325127

noncomputable section

/-- A301739: The number of trees with 4 nodes labeled by positive integers, where each tree's label sum is n.

Offset 4, canonical program `A301739.P6947186573899325127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301739 (n : ℕ) : ℤ :=
  A301739.P6947186573899325127.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301740.P14878086428017255267

`∑[A049779(n+2)+A001400(n)]`
-/

namespace A301740.P14878086428017255267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049779 (n + 2) + A001400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301740.P14878086428017255267

noncomputable section

/-- A301740: The number of trees with 5 nodes labeled by positive integers, where each tree's label sum is n.

Offset 5, canonical program `A301740.P14878086428017255267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301740 (n : ℕ) : ℤ :=
  A301740.P14878086428017255267.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301789.P7146991118033482218

`A005683(n+9)-A005682(n+5)`
-/

namespace A301789.P7146991118033482218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005683 (n + 9) - A005682 (n + 5)

end

end A301789.P7146991118033482218

noncomputable section

/-- A301789: Number of n X 7 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

Offset 1, canonical program `A301789.P7146991118033482218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A301789 (n : ℕ) : ℤ :=
  A301789.P7146991118033482218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A301789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301797.P3853926274997277584

`A002450(A000040(n+1))`
-/

namespace A301797.P3853926274997277584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (A000040 (n + 1)).toNat

end

end A301797.P3853926274997277584

noncomputable section

/-- A301797: a(n) = (4^prime(n) - 1)/3.

Offset 1, canonical program `A301797.P3853926274997277584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301797 (n : ℕ) : ℤ :=
  A301797.P3853926274997277584.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301812.P16700024061125117281

`A003627(n+1)²-1`
-/

namespace A301812.P16700024061125117281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) ^ 2 - 1

end

end A301812.P16700024061125117281

noncomputable section

/-- A301812: Numbers of the form p^2 - 1 where p is a prime of the form 3*k-1 (A003627).

Offset 1, canonical program `A301812.P16700024061125117281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301812 (n : ℕ) : ℤ :=
  A301812.P16700024061125117281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301994.P5549587833774915005

`∑[A049219(n+1)]`
-/

namespace A301994.P5549587833774915005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301994.P5549587833774915005

noncomputable section

/-- A301994: Number of n X 3 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

Offset 1, canonical program `A301994.P5549587833774915005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A301994 (n : ℕ) : ℤ :=
  A301994.P5549587833774915005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A301994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302323.P569987669017276639

`2*(A131577(n)+A028859(n))`
-/

namespace A302323.P569987669017276639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131577 n + A028859 n)

end

end A302323.P569987669017276639

noncomputable section

/-- A302323: Number of 2Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

Offset 1, canonical program `A302323.P569987669017276639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A302323 (n : ℕ) : ℤ :=
  A302323.P569987669017276639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A302323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302390.P15472306667370707159

`round(A016789(n+2)²/A007494(n+3))`
-/

namespace A302390.P15472306667370707159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016789 (n + 2) ^ 2 : ℚ) / (A007494 (n + 3) : ℚ))

end

end A302390.P15472306667370707159

noncomputable section

/-- A302390: Triameter of the n-cube-connected cycle graph.

Offset 3, canonical program `A302390.P15472306667370707159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A302390 (n : ℕ) : ℤ :=
  A302390.P15472306667370707159.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A302390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302392.P7698044016696591427

`(n+1)²+2*A008733(n)`
-/

namespace A302392.P7698044016696591427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * A008733 n

end

end A302392.P7698044016696591427

noncomputable section

/-- A302392: Number of odd parts in the partitions of 3n into 3 parts.

Offset 1, canonical program `A302392.P7698044016696591427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302392 (n : ℕ) : ℤ :=
  A302392.P7698044016696591427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302406.P10786457506837801270

`A104563(n)-A211521(n)`
-/

namespace A302406.P10786457506837801270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n - A211521 n

end

end A302406.P10786457506837801270

noncomputable section

/-- A302406: Total domination number of the n X n torus grid graph.

Offset 0, canonical program `A302406.P10786457506837801270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302406 (n : ℕ) : ℤ :=
  A302406.P10786457506837801270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302603.P12584902122894832315

`2^n+A001638(n)-1`
-/

namespace A302603.P12584902122894832315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A001638 n - 1)

end

end A302603.P12584902122894832315

noncomputable section

/-- A302603: Number of total dominating sets in the wheel graph on n nodes.

Offset 1, canonical program `A302603.P12584902122894832315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A302603 (n : ℕ) : ℤ :=
  A302603.P12584902122894832315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A302603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302653.P12437367069294794384

`gcd(A004442(A057979(n))², A079097(n))`
-/

namespace A302653.P12437367069294794384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (A057979 n).toNat ^ 2) (A079097 n)

end

end A302653.P12437367069294794384

noncomputable section

/-- A302653: Number of minimum total dominating sets in the n-cycle graph.

Offset 1, canonical program `A302653.P12437367069294794384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302653 (n : ℕ) : ℤ :=
  (A302653.P12437367069294794384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302658.P1136686071420674751

`A300738(n+1)+1+n`
-/

namespace A302658.P1136686071420674751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300738 (n + 1) + 1 + (n : ℤ)

end

end A302658.P1136686071420674751

noncomputable section

/-- A302658: Number of minimal total dominating sets in the wheel graph on n nodes.

Offset 2, canonical program `A302658.P1136686071420674751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A302658 (n : ℕ) : ℤ :=
  A302658.P1136686071420674751.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A302658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302692.P6992755302281173742

`p?[A063992(p?[2*n+1])]`
-/

namespace A302692.P6992755302281173742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302692.P6992755302281173742

noncomputable section

/-- A302692: Primes p that are the sum of another prime q and the greatest k such that k! < p.

Offset 1, canonical program `A302692.P6992755302281173742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A302692 (n : ℕ) : ℤ :=
  A302692.P6992755302281173742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A302692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302758.P17641594805779926931

`(n+1)/2*∑[A245288(n+1)]`
-/

namespace A302758.P17641594805779926931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A302758.P17641594805779926931

noncomputable section

/-- A302758: a(n) = n^2*(n*(4*n + 3) + 3*n*(-1)^n - 4)/96.

Offset 1, canonical program `A302758.P17641594805779926931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A302758 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302758.P17641594805779926931.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A302758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302761.P3401190146746632527

`A294140(n+1)+A126646(n)`
-/

namespace A302761.P3401190146746632527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294140 (n + 1) + A126646 n

end

end A302761.P3401190146746632527

noncomputable section

/-- A302761: Number of total dominating sets in the n-barbell graph.

Offset 1, canonical program `A302761.P3401190146746632527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A302761 (n : ℕ) : ℤ :=
  A302761.P3401190146746632527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A302761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302766.P17836755955950035323

`A000292(A007494(n))+A000292(A110654(n))`
-/

namespace A302766.P17836755955950035323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A007494 n).toNat + A000292 (A110654 n).toNat

end

end A302766.P17836755955950035323

noncomputable section

/-- A302766: a(n) = n*((4*n + 1)*(7*n - 4) + 15*n*(-1)^n)/48.

Offset 1, canonical program `A302766.P17836755955950035323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A302766 (n : ℕ) : ℤ :=
  A302766.P17836755955950035323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A302766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302777.P12979743537694390003

`A209229(A100995(n+1))`
-/

namespace A302777.P12979743537694390003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A100995 (n + 1)).toNat

end

end A302777.P12979743537694390003

noncomputable section

/-- A302777: a(n) = 1 if n is of the form p^(2^k) where p is prime and k >= 0, otherwise 0.

Offset 1, canonical program `A302777.P12979743537694390003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302777 (n : ℕ) : ℤ :=
  A302777.P12979743537694390003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302777.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303054.P5112954172130356619

`A347633(n+1)²`
-/

namespace A303054.P5112954172130356619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1) ^ 2

end

end A303054.P5112954172130356619

noncomputable section

/-- A303054: Number of minimum total dominating sets in the n-ladder graph.

Offset 1, canonical program `A303054.P5112954172130356619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303054 (n : ℕ) : ℤ :=
  A303054.P5112954172130356619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303072.P14683285584780554309

`A253412(n+1)²`
-/

namespace A303072.P14683285584780554309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 (n + 1) ^ 2

end

end A303072.P14683285584780554309

noncomputable section

/-- A303072: Number of minimal total dominating sets in the n-ladder graph.

Offset 1, canonical program `A303072.P14683285584780554309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A303072 (n : ℕ) : ℤ :=
  A303072.P14683285584780554309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A303072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303226.P6762589886093325207

`Δ[A193744(n)]+Δ[A193744(n)]²`
-/

namespace A303226.P6762589886093325207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n) ^ 2

end

end A303226.P6762589886093325207

noncomputable section

/-- A303226: Number of minimal total dominating sets in the n-gear graph.

Offset 1, canonical program `A303226.P6762589886093325207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A303226 (n : ℕ) : ℤ :=
  A303226.P6762589886093325207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A303226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303269.P14236862448181407010

`∑{digits}[n, A181983(#²)]`
-/

namespace A303269.P14236862448181407010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181983 (x ^ 2)).sum

end

end A303269.P14236862448181407010

noncomputable section

/-- A303269: Sum of squares of odd digits minus sum of squares of even digits of n.

Offset 0, canonical program `A303269.P14236862448181407010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303269 (n : ℕ) : ℤ :=
  A303269.P14236862448181407010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303278.P12937793510976264127

`A005361(n+1)^A007947(n+1)`
-/

namespace A303278.P12937793510976264127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) ^ (A007947 (n + 1) : ℤ)

end

end A303278.P12937793510976264127

noncomputable section

/-- A303278: If n = Product_j p_j^k_j where the p_j are distinct primes then a(n) = (Product_j k_j)^(Product_j p_j).

Offset 1, canonical program `A303278.P12937793510976264127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303278 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A303278.P12937793510976264127.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303383.P771961285447132481

`∑[A309335(n)]`
-/

namespace A303383.P771961285447132481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303383.P771961285447132481

noncomputable section

/-- A303383: Total volume of all cubes with side length q such that n = p + q and p <= q.

Offset 1, canonical program `A303383.P771961285447132481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303383 (n : ℕ) : ℤ :=
  A303383.P771961285447132481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303602.P1034457916957369975

`A130783(2*n)`
-/

namespace A303602.P1034457916957369975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (2 * n)

end

end A303602.P1034457916957369975

noncomputable section

/-- A303602: a(n) = Sum_{k = 0..n} k*binomial(2*n+1, k).

Offset 0, canonical program `A303602.P1034457916957369975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A303602 (n : ℕ) : ℤ :=
  A303602.P1034457916957369975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A303602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303649.P3768676354070009238

`∑[∑[A280186(n)]]+C(n, 3)`
-/

namespace A303649.P3768676354070009238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 3 : ℤ)

end

end A303649.P3768676354070009238

noncomputable section

/-- A303649: Number of involutions of [n] having exactly one peak.

Offset 0, canonical program `A303649.P3768676354070009238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303649 (n : ℕ) : ℤ :=
  A303649.P3768676354070009238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303768.P18072890022727355273

`or(a(n%A053644(n))+1, A053644(n))` with `a(0)=0`
-/

namespace A303768.P18072890022727355273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (Int.tmod (n : ℤ) (A053644 n)).toNat + 1) (A053644 n)

end

end A303768.P18072890022727355273

noncomputable section

/-- A303768: Inverse permutation to A303767.

Offset 0, canonical program `A303768.P18072890022727355273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303768 (n : ℕ) : ℤ :=
  A303768.P18072890022727355273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303834.P13005803101596375340

`A000032(n+1)*A088859(n+1)`
-/

namespace A303834.P13005803101596375340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A088859 (n + 1)

end

end A303834.P13005803101596375340

noncomputable section

/-- A303834: Number of total dominating sets in the n-gear graph.

Offset 1, canonical program `A303834.P13005803101596375340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A303834 (n : ℕ) : ℤ :=
  A303834.P13005803101596375340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A303834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304091.P11057052564092493718

`∑{d}[n+1, A102460(#)]-A102460(n+1)`
-/

namespace A304091.P11057052564092493718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102460 d - A102460 (n + 1)

end

end A304091.P11057052564092493718

noncomputable section

/-- A304091: a(n) is the number of the proper divisors of n that are Lucas numbers (A000032, with 2 included).

Offset 1, canonical program `A304091.P11057052564092493718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304091 (n : ℕ) : ℤ :=
  A304091.P11057052564092493718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304143.P16625252342008015632

`A297860(n+3)+A171449(n)`
-/

namespace A304143.P16625252342008015632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297860 (n + 3) + A171449 n

end

end A304143.P16625252342008015632

noncomputable section

/-- A304143: Number of nX2 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

Offset 1, canonical program `A304143.P16625252342008015632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A304143 (n : ℕ) : ℤ :=
  A304143.P16625252342008015632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A304143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304165.P15167731174253400881

`A157953(2*n+1)+10*(1-n)`
-/

namespace A304165.P15167731174253400881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157953 (2 * n + 1) + 10 * (1 - (n : ℤ))

end

end A304165.P15167731174253400881

noncomputable section

/-- A304165: a(n) = 324*n^2 - 336*n + 102 (n >= 1).

Offset 1, canonical program `A304165.P15167731174253400881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304165 (n : ℕ) : ℤ :=
  A304165.P15167731174253400881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304166.P16995378782916460427

`A014641(A017197(n))+29`
-/

namespace A304166.P16995378782916460427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 (A017197 n).toNat + 29

end

end A304166.P16995378782916460427

noncomputable section

/-- A304166: a(n) = 972*n^2 - 1224*n + 414 with n > 0.

Offset 1, canonical program `A304166.P16995378782916460427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A304166 (n : ℕ) : ℤ :=
  A304166.P16995378782916460427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A304166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304203.P18269401981959007266

`∏{p}[n+1, #^A000040(val(n+1, #))]`
-/

namespace A304203.P18269401981959007266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A000040 (SequenceMachineLib.valuation (n + 1) p) : ℤ)

end

end A304203.P18269401981959007266

noncomputable section

/-- A304203: If n = Product (p_j^k_j) then a(n) = Product (p_j^prime(k_j)).

Offset 1, canonical program `A304203.P18269401981959007266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304203.P18269401981959007266.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304251.P1616102808794678672

`∑{p}[n+1, A000040(#)^val(n+1, #)]`
-/

namespace A304251.P1616102808794678672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000040 p ^ SequenceMachineLib.valuation (n + 1) p

end

end A304251.P1616102808794678672

noncomputable section

/-- A304251: If n = Product (p_j^k_j) then a(n) = Sum (prime(p_j)^k_j).

Offset 1, canonical program `A304251.P1616102808794678672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304251 (n : ℕ) : ℤ :=
  A304251.P1616102808794678672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304335.P10310758909339580982

`A120390(n-(2-n)%(n+1)+1)`
-/

namespace A304335.P10310758909339580982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120390 ((n : ℤ) - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A304335.P10310758909339580982

noncomputable section

/-- A304335: Sum of digits of (2*n-1)!!.

Offset 0, canonical program `A304335.P10310758909339580982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A304335 (n : ℕ) : ℤ :=
  A304335.P10310758909339580982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A304335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304356.P16489054736704604555

`p?[A038346(n+4)-A038346(n+1)]`
-/

namespace A304356.P16489054736704604555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038346 (n + 4) - A038346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304356.P16489054736704604555

noncomputable section

/-- A304356: Primes that are the sum of three consecutive primes == 1 (mod 4).

Offset 1, canonical program `A304356.P16489054736704604555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A304356 (n : ℕ) : ℤ :=
  A304356.P16489054736704604555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A304356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304358.P9965989991105738390

`p?[A038347(n+4)-A038347(n+1)]`
-/

namespace A304358.P9965989991105738390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038347 (n + 4) - A038347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304358.P9965989991105738390

noncomputable section

/-- A304358: Primes that are the sum of three consecutive primes == 3 (mod 4).

Offset 1, canonical program `A304358.P9965989991105738390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A304358 (n : ℕ) : ℤ :=
  A304358.P9965989991105738390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A304358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304411.P4036889141773001327

`A005361(n+1)*A048250(n+1)`
-/

namespace A304411.P4036889141773001327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A048250 (n + 1)

end

end A304411.P4036889141773001327

noncomputable section

/-- A304411: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)*k_j).

Offset 1, canonical program `A304411.P4036889141773001327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304411 (n : ℕ) : ℤ :=
  A304411.P4036889141773001327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304484.P2454143240847601615

`A033270(n+1)*A033270(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304484.P2454143240847601615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) * A033270 (2 * n + 1)

end

end A304484.P2454143240847601615

noncomputable section

/-- A304484: a(n) = A033270(n)*A033270(2n), where A033270 counts the odd primes.

Offset 1, canonical program `A304484.P2454143240847601615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304484 (n : ℕ) : ℤ :=
  A304484.P2454143240847601615.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304512.P10834512719998896481

`A278129(n)+A182466(n+3)`
-/

namespace A304512.P10834512719998896481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278129 n + A182466 (n + 3)

end

end A304512.P10834512719998896481

noncomputable section

/-- A304512: a(n) = 366*2^n - 204 (n >= 1).

Offset 1, canonical program `A304512.P10834512719998896481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A304512 (n : ℕ) : ℤ :=
  A304512.P10834512719998896481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A304512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304583.P6719767480601290813

`A199264(8*n+9)+A000035(n+1)`
-/

namespace A304583.P6719767480601290813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199264 (8 * n + 9) + A000035 (n + 1)

end

end A304583.P6719767480601290813

noncomputable section

/-- A304583: Period 18: repeat 1,8,3,6,5,4,7,2,9,0,9,2,7,4,5,6,3,8.

Offset 1, canonical program `A304583.P6719767480601290813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A304583 (n : ℕ) : ℤ :=
  A304583.P6719767480601290813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A304583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304588.P15314905550837807375

`∑[A099892(n)+1]+2`
-/

namespace A304588.P15314905550837807375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A304588.P15314905550837807375

noncomputable section

/-- A304588: Length of shortest prefix of the Thue-Morse word (A010060) such that some length-n block appears twice.

Offset 1, canonical program `A304588.P15314905550837807375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A304588 (n : ℕ) : ℤ :=
  A304588.P15314905550837807375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A304588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304607.P6836863232033301131

`14*(A182464(n)+22)`
-/

namespace A304607.P6836863232033301131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (A182464 n + 22)

end

end A304607.P6836863232033301131

noncomputable section

/-- A304607: a(n) = 252*2^n + 140 (n>=1).

Offset 1, canonical program `A304607.P6836863232033301131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A304607 (n : ℕ) : ℤ :=
  A304607.P6836863232033301131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A304607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304608.P10972372781888834130

`36*A168614(n+4)-2`
-/

namespace A304608.P10972372781888834130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A168614 (n + 4) - 2

end

end A304608.P10972372781888834130

noncomputable section

/-- A304608: a(n) = 288*2^n + 178 (n >= 1).

Offset 1, canonical program `A304608.P10972372781888834130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A304608 (n : ℕ) : ℤ :=
  A304608.P10972372781888834130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A304608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304617.P17206413606370148440

`A085250(A008588(n))+(6*n+9)²`
-/

namespace A304617.P17206413606370148440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 (A008588 n).toNat + ((6 * n + 9) ^ 2 : ℤ)

end

end A304617.P17206413606370148440

noncomputable section

/-- A304617: a(n) = 324*n^2 - 564*n + 321 (n>=1).

Offset 1, canonical program `A304617.P17206413606370148440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A304617 (n : ℕ) : ℤ :=
  A304617.P17206413606370148440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A304617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304619.P1330384257654608930

`6*(A304381(n+1)-6)`
-/

namespace A304619.P1330384257654608930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A304381 (n + 1) - 6)

end

end A304619.P1330384257654608930

noncomputable section

/-- A304619: a(n) = 324*n^2 - 804*n + 468 (n>=2).

Offset 2, canonical program `A304619.P1330384257654608930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304619 (n : ℕ) : ℤ :=
  A304619.P1330384257654608930.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304837.P6604644538027410204

`2*(A304616(2*n)-A304616(n))`
-/

namespace A304837.P6604644538027410204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A304616 (2 * n) - A304616 n)

end

end A304837.P6604644538027410204

noncomputable section

/-- A304837: a(n) = 6*(n - 1)*(81*n - 104) for n >= 1.

Offset 1, canonical program `A304837.P6604644538027410204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304837 (n : ℕ) : ℤ :=
  A304837.P6604644538027410204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304909.P3593984619417138488

`n*A018819(n)`
-/

namespace A304909.P3593984619417138488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A018819 n

end

end A304909.P3593984619417138488

noncomputable section

/-- A304909: Expansion of x * (d/dx) Product_{k>=0} 1/(1 - x^(2^k)).

Offset 0, canonical program `A304909.P3593984619417138488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304909 (n : ℕ) : ℤ :=
  A304909.P3593984619417138488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304973.P4987803302753247775

`A182522(n)-A016116(n)`
-/

namespace A304973.P4987803302753247775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n - A016116 n

end

end A304973.P4987803302753247775

noncomputable section

/-- A304973: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 3 colors (sets).

Offset 0, canonical program `A304973.P4987803302753247775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A304973 (n : ℕ) : ℤ :=
  A304973.P4987803302753247775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A304973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304974.P17883165039520731159

`A305750(n)-A182522(n)`
-/

namespace A304974.P17883165039520731159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - A182522 n

end

end A304974.P17883165039520731159

noncomputable section

/-- A304974: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 4 colors (sets).

Offset 0, canonical program `A304974.P17883165039520731159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A304974 (n : ℕ) : ℤ :=
  A304974.P17883165039520731159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A304974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304975.P8256716132214659542

`A305751(n)-A305750(n)`
-/

namespace A304975.P8256716132214659542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 n - A305750 n

end

end A304975.P8256716132214659542

noncomputable section

/-- A304975: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 5 colors (sets).

Offset 0, canonical program `A304975.P8256716132214659542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A304975 (n : ℕ) : ℤ :=
  A304975.P8256716132214659542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A304975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304995.P17524648249010294522

`A019426(∑[A084099(A123108(n))])`
-/

namespace A304995.P17524648249010294522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304995.P17524648249010294522

noncomputable section

/-- A304995: Expansion of (1 + 6*x + 6*x^2 + 6*x^3 + x^4 + 6*x^5)/((1 - x)*(1 + x^4)).

Offset 0, canonical program `A304995.P17524648249010294522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304995 (n : ℕ) : ℤ :=
  A304995.P17524648249010294522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305031.P1662226059483018231

`A047471(n+1)*A063886(n)`
-/

namespace A305031.P1662226059483018231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1) * A063886 n

end

end A305031.P1662226059483018231

noncomputable section

/-- A305031: Expansion of ((1 + 2*x)/(1 - 2*x))^(3/2).

Offset 0, canonical program `A305031.P1662226059483018231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A305031 (n : ℕ) : ℤ :=
  A305031.P1662226059483018231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A305031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305189.P521679482728346287

`∑[A117571(n)^abs(A057079(n))]`
-/

namespace A305189.P521679482728346287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117571 n : ℚ) ^ (|A057079 n| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P521679482728346287

noncomputable section

/-- A305189: a(n) = 1*2 + 3 + 4*5 + 6 + 7*8 + 9 + 10*11 + 12 + ... + (up to n).

Offset 1, canonical program `A305189.P521679482728346287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305189.P521679482728346287.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305233.P7132812030500803874

`a(n-1)+C(n, A001405(a(n-1)))` with `a(0)=1`
-/

namespace A305233.P7132812030500803874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose n (A001405 (a (n - 1))).toNat

end

end A305233.P7132812030500803874

noncomputable section

/-- A305233: Smallest k such that binomial(k, floor(k/2)) >= n.

Offset 1, canonical program `A305233.P7132812030500803874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305233 (n : ℕ) : ℤ :=
  (A305233.P7132812030500803874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305289.P18362137731492137850

`A001675(2*n)`
-/

namespace A305289.P18362137731492137850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001675 (2 * n)

end

end A305289.P18362137731492137850

noncomputable section

/-- A305289: Powers of 2*Pi, rounded to the nearest integer.

Offset 0, canonical program `A305289.P18362137731492137850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305289 (n : ℕ) : ℤ :=
  A305289.P18362137731492137850.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305289.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305378.P7773183286010594477

`A003726(2*(n+1))`
-/

namespace A305378.P7773183286010594477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (2 * (n + 1))

end

end A305378.P7773183286010594477

noncomputable section

/-- A305378: Tribonacci representation of 2n+1, written in base 10.

Offset 0, canonical program `A305378.P7773183286010594477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A305378 (n : ℕ) : ℤ :=
  A305378.P7773183286010594477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A305378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305426.P17358610053433426674

`∑{d}[n+1, A036987(#)]-A036987(n+1)`
-/

namespace A305426.P17358610053433426674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 d - A036987 (n + 1)

end

end A305426.P17358610053433426674

noncomputable section

/-- A305426: Number of proper divisors of n of the form 2^k - 1 for k >= 1.

Offset 1, canonical program `A305426.P17358610053433426674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305426 (n : ℕ) : ℤ :=
  A305426.P17358610053433426674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305491.P13852021593725893787

`A048788(n)/gcd(A016116(n), A048788(n))`
-/

namespace A305491.P13852021593725893787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 n : ℚ) / (Int.gcd (A016116 n) (A048788 n) : ℚ)

end

end A305491.P13852021593725893787

noncomputable section

/-- A305491: a(n) = numerator(r(n)) where r(n) = (((1/2)*(sqrt(3) + 1))^n - ((1/2)*(sqrt(3) - 1))^n * cos(Pi*n))/sqrt(3).

Offset 0, canonical program `A305491.P13852021593725893787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A305491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305491.P13852021593725893787.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A305491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305609.P7902511574484490471

`floor(A303538(n)/2)`
-/

namespace A305609.P7902511574484490471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A303538 n : ℚ) / 2⌋

end

end A305609.P7902511574484490471

noncomputable section

/-- A305609: Expansion of 1/2 * (((1 + 8*x)/(1 - 8*x))^(1/8) - 1).

Offset 0, canonical program `A305609.P7902511574484490471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A305609 (n : ℕ) : ℤ :=
  A305609.P7902511574484490471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A305609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305728.P16486474473058137855

`(2*A055131(n))^3`
-/

namespace A305728.P16486474473058137855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A055131 n) ^ 3

end

end A305728.P16486474473058137855

noncomputable section

/-- A305728: Numbers of the form 216*p^3, where p is a Pythagorean prime (A002144).

Offset 1, canonical program `A305728.P16486474473058137855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305728 (n : ℕ) : ℤ :=
  A305728.P16486474473058137855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305847.P37911868099262503

`A005378(A005206(n))+n`
-/

namespace A305847.P37911868099262503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A005206 n).toNat + (n : ℤ)

end

end A305847.P37911868099262503

noncomputable section

/-- A305847: Solution a() of the complementary equation a(n) + b(n) = 5*n, where a(1) = 1. See Comments.

Offset 1, canonical program `A305847.P37911868099262503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305847 (n : ℕ) : ℤ :=
  A305847.P37911868099262503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305848.P16122553387200692946

`abs(A004766(n+1)-A005378(A060143(n+1)))`
-/

namespace A305848.P16122553387200692946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004766 (n + 1) - A005378 (A060143 (n + 1)).toNat|

end

end A305848.P16122553387200692946

noncomputable section

/-- A305848: Solution b() of the complementary equation a(n) + b(n) = 5n, where a(1) = 1. See Comments.

Offset 1, canonical program `A305848.P16122553387200692946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305848 (n : ℕ) : ℤ :=
  A305848.P16122553387200692946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305880.P16964776846539863070

`or(3, A322925(n+7)-13)`
-/

namespace A305880.P16964776846539863070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A322925 (n + 7) - 13)

end

end A305880.P16964776846539863070

noncomputable section

/-- A305880: A base 3/2 reverse sorted Fibonacci sequence that starts with terms 2211 and 2211. The terms are interpreted as numbers written in base 3/2. To get a(n+2), add a(n) and a(n+1), write the result in base 3/2 and sort the digits into decreasing order, omitting all zeros.

Offset 1, canonical program `A305880.P16964776846539863070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A305880 (n : ℕ) : ℤ :=
  A305880.P16964776846539863070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A305880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305930.P16091158982295753828

`∑{digits}[3^n, A000007(#)]`
-/

namespace A305930.P16091158982295753828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000007 x).sum

end

end A305930.P16091158982295753828

noncomputable section

/-- A305930: Number of digits '0' in 3^n (in base 10).

Offset 0, canonical program `A305930.P16091158982295753828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A305930 (n : ℕ) : ℤ :=
  A305930.P16091158982295753828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A305930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306286.P7034646562799688644

`a(A029578(n))*A070939(A093178(n))` with `a(0)=1, a(1)=1`
-/

namespace A306286.P7034646562799688644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A029578 n).toNat * A070939 (A093178 n).toNat

end

end A306286.P7034646562799688644

noncomputable section

/-- A306286: a(n) is the product of the positions of the ones in the binary expansion of n (the most significant bit having position 1).

Offset 0, canonical program `A306286.P7034646562799688644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306286 (n : ℕ) : ℤ :=
  A306286.P7034646562799688644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306292.P13501302312255664117

`A000108(n+1)-A001405(n+1)`
-/

namespace A306292.P13501302312255664117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A001405 (n + 1)

end

end A306292.P13501302312255664117

noncomputable section

/-- A306292: Number of asymmetric Dyck paths of semilength n.

Offset 1, canonical program `A306292.P13501302312255664117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A306292 (n : ℕ) : ℤ :=
  A306292.P13501302312255664117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A306292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306367.P17064461308233091152

`gcd(A054602(n), A131509(n))`
-/

namespace A306367.P17064461308233091152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054602 n) (A131509 n)

end

end A306367.P17064461308233091152

noncomputable section

/-- A306367: a(n) = numerator of (n^2 + 2)/(n + 2).

Offset 0, canonical program `A306367.P17064461308233091152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306367 (n : ℕ) : ℤ :=
  (A306367.P17064461308233091152.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306561.P4812721011525227488

`A006454(n)+1`
-/

namespace A306561.P4812721011525227488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006454 n + 1

end

end A306561.P4812721011525227488

noncomputable section

/-- A306561: Square numbers that are also central polygonal numbers (i.e., square numbers found in the Lazy Caterer's sequence).

Offset 1, canonical program `A306561.P4812721011525227488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A306561 (n : ℕ) : ℤ :=
  A306561.P4812721011525227488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A306561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306591.P16637579630859096376

`A145979(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`
-/

namespace A306591.P16637579630859096376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A306591.P16637579630859096376

noncomputable section

/-- A306591: a(n) is the denominator of 1/2 - 1/(prime(n)+1), where prime(n) is the n-th prime.

Offset 1, canonical program `A306591.P16637579630859096376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A306591 (n : ℕ) : ℤ :=
  A306591.P16637579630859096376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A306591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306916.P10721873889550371981

`∏{p}[n+1, A000040(val(n+1, #))^#]`
-/

namespace A306916.P10721873889550371981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 (SequenceMachineLib.valuation (n + 1) p) ^ p

end

end A306916.P10721873889550371981

noncomputable section

/-- A306916: a(1)=1; for n > 1 replace each p^k in the prime factorization of n with prime(k)^p where prime(k) denotes the k-th prime number.

Offset 1, canonical program `A306916.P10721873889550371981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A306916 (n : ℕ) : ℤ :=
  A306916.P10721873889550371981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A306916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307089.P17468934966909279499

`A100137(n)-A373358(n)`
-/

namespace A307089.P17468934966909279499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100137 n - A373358 n

end

end A307089.P17468934966909279499

noncomputable section

/-- A307089: Expansion of (1 - x)^4/((1 - x)^6 + x^6).

Offset 0, canonical program `A307089.P17468934966909279499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A307089 (n : ℕ) : ℤ :=
  A307089.P17468934966909279499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A307089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307314.P7749159603707739801

`∑{d}[n+1, A000007(and(#, 2*(n+1)))]`
-/

namespace A307314.P7749159603707739801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Nat.land d (2 * (n + 1)))

end

end A307314.P7749159603707739801

noncomputable section

/-- A307314: Number of divisors d of 2n such that adding d to 2n in binary requires no carries.

Offset 1, canonical program `A307314.P7749159603707739801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307314 (n : ℕ) : ℤ :=
  A307314.P7749159603707739801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307420.P2385378640941051895

`∏{e}[n+1, A115360(#)]`
-/

namespace A307420.P2385378640941051895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A115360 (Nat.factorization (f1 n) p)

end

end A307420.P2385378640941051895

noncomputable section

/-- A307420: Dirichlet g.f.: zeta(2*s) * zeta(3*s) / zeta(s).

Offset 1, canonical program `A307420.P2385378640941051895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307420 (n : ℕ) : ℤ :=
  A307420.P2385378640941051895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307421.P10510512587857110973

`abs(A210826(n+1))`
-/

namespace A307421.P10510512587857110973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210826 (n + 1)|

end

end A307421.P10510512587857110973

noncomputable section

/-- A307421: Dirichlet g.f.: zeta(s) * zeta(3*s) / zeta(2*s).

Offset 1, canonical program `A307421.P10510512587857110973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A210826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307421 (n : ℕ) : ℤ :=
  A307421.P10510512587857110973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A210826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307427.P355744781384453444

`∏{e}[n+1, A131756(#²)]`
-/

namespace A307427.P355744781384453444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A131756 (Nat.factorization (f1 n) p ^ 2)

end

end A307427.P355744781384453444

noncomputable section

/-- A307427: Dirichlet g.f.: zeta(3*s) / (zeta(s) * zeta(2*s)).

Offset 1, canonical program `A307427.P355744781384453444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307427 (n : ℕ) : ℤ :=
  A307427.P355744781384453444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307428.P15057610598647432221

`∑{d}[n+1, A271102(#)*A303915((n+1)/#)]`
-/

namespace A307428.P15057610598647432221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A303915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P15057610598647432221

noncomputable section

/-- A307428: Dirichlet g.f.: zeta(2*s) / (zeta(s) * zeta(3*s)).

Offset 1, canonical program `A307428.P15057610598647432221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307428 (n : ℕ) : ℤ :=
  A307428.P15057610598647432221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307513.P10097634644987608462

`∑[A022934(n)]`
-/

namespace A307513.P10097634644987608462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307513.P10097634644987608462

noncomputable section

/-- A307513: Beatty sequence for 1/log(2).

Offset 1, canonical program `A307513.P10097634644987608462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307513 (n : ℕ) : ℤ :=
  A307513.P10097634644987608462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307612.P12442353200099132177

`∑[A307485(n)]`
-/

namespace A307612.P12442353200099132177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P12442353200099132177

noncomputable section

/-- A307612: Partial sums of the permutation A307485: one odd, two even, four odd, eight even, etc.

Offset 0, canonical program `A307612.P12442353200099132177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307612 (n : ℕ) : ℤ :=
  A307612.P12442353200099132177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307717.P16759504569882169610

`lcm(A056594(n), A218035(A008619(n)))`
-/

namespace A307717.P16759504569882169610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A218035 (A008619 n).toNat)

end

end A307717.P16759504569882169610

noncomputable section

/-- A307717: Number of palindromic squares, k^2, of length n such that k is also palindromic.

Offset 1, canonical program `A307717.P16759504569882169610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307717 (n : ℕ) : ℤ :=
  (A307717.P16759504569882169610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307721.P17612075571818422005

`A302128(A005350(n+1))-A005350(A302128(n+1))`
-/

namespace A307721.P17612075571818422005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302128 (A005350 (n + 1)).toNat - A005350 (A302128 (n + 1)).toNat

end

end A307721.P17612075571818422005

noncomputable section

/-- A307721: a(n) = x(y(n)) - y(x(n)) where x = A302128 and y = A005350.

Offset 1, canonical program `A307721.P17612075571818422005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307721 (n : ℕ) : ℤ :=
  A307721.P17612075571818422005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307789.P13334902009020321620

`A005773(abs(1-n))`
-/

namespace A307789.P13334902009020321620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 |1 - (n : ℤ)|.toNat

end

end A307789.P13334902009020321620

noncomputable section

/-- A307789: Number of valid hook configurations of permutations of [n] that avoid the patterns 231 and 1243.

Offset 0, canonical program `A307789.P13334902009020321620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A307789 (n : ℕ) : ℤ :=
  A307789.P13334902009020321620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A307789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307893.P8045995335989850248

`lcm(∏{d}[n+1, #]/(n+1), A017665(n+1))`
-/

namespace A307893.P8045995335989850248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) (A017665 (n + 1))

end

end A307893.P8045995335989850248

noncomputable section

/-- A307893: a(n) = lcm(sigma(n), pod(n)) / n, where sigma (k) = the sum of divisors of k (A000203) and pod(n) = the product of divisors of k (A007955).

Offset 1, canonical program `A307893.P8045995335989850248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307893 (n : ℕ) : ℤ :=
  (A307893.P8045995335989850248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307912.P5780655213120570540

`A210469(n+1)+A033270(n+1)`
-/

namespace A307912.P5780655213120570540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) + A033270 (n + 1)

end

end A307912.P5780655213120570540

noncomputable section

/-- A307912: a(n) = n - 1 - pi(2*n-1) + pi(n), where pi is the prime counting function.

Offset 1, canonical program `A307912.P5780655213120570540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307912 (n : ℕ) : ℤ :=
  A307912.P5780655213120570540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307913.P4133678735760456041

`eq[gcd(3, A051801(n))+n, n+1]`
-/

namespace A307913.P4133678735760456041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A051801 n) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307913.P4133678735760456041

noncomputable section

/-- A307913: Numbers without the decimal digits 3, 6 and 9.

Offset 1, canonical program `A307913.P4133678735760456041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A307913 (n : ℕ) : ℤ :=
  (A307913.P4133678735760456041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A307913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307939.P17534156971581480400

`(A130773(n+1)+A027689(2*n))*A103517(n+2)`
-/

namespace A307939.P17534156971581480400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130773 (n + 1) + A027689 (2 * n)) * A103517 (n + 2)

end

end A307939.P17534156971581480400

noncomputable section

/-- A307939: Number of (undirected) Hamiltonian paths in the n-dipyramidal graph.

Offset 3, canonical program `A307939.P17534156971581480400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A307939 (n : ℕ) : ℤ :=
  A307939.P17534156971581480400.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A307939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308025.P30853710573692218

`∑[A032438(n)*A176059(n)]`
-/

namespace A308025.P30853710573692218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n * A176059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308025.P30853710573692218

noncomputable section

/-- A308025: a(n) = n*(2*n - 3 - (-1)^n)*(5*n - 2 + (-1)^n)/16.

Offset 1, canonical program `A308025.P30853710573692218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308025 (n : ℕ) : ℤ :=
  A308025.P30853710573692218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308034.P4024146489496561086

`A069905(n+1)-floor(sqrt(10%gcd(12, n+1)))`
-/

namespace A308034.P4024146489496561086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - (Nat.sqrt (10 % Nat.gcd 12 (n + 1)) : ℤ)

end

end A308034.P4024146489496561086

noncomputable section

/-- A308034: Number of partitions of n into 3 parts with at least 1 part that is a nondivisor of n.

Offset 1, canonical program `A308034.P4024146489496561086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308034 (n : ℕ) : ℤ :=
  A308034.P4024146489496561086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308046.P1625000968855272051

`2*(A000040(∑[C(∑{p}[n, #], n)])-(n+1))`
-/

namespace A308046.P1625000968855272051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ))

end

end A308046.P1625000968855272051

noncomputable section

/-- A308046: a(n) = 2*nextprime(n - 1) - 2*n, where nextprime(n) is the smallest prime > n.

Offset 1, canonical program `A308046.P1625000968855272051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308046 (n : ℕ) : ℤ :=
  A308046.P1625000968855272051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308066.P14476082537782703603

`A005044(∑[n]%(n+1))`
-/

namespace A308066.P14476082537782703603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A308066.P14476082537782703603

noncomputable section

/-- A308066: Number of triangles with perimeter n whose side lengths are even.

Offset 1, canonical program `A308066.P14476082537782703603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308066 (n : ℕ) : ℤ :=
  A308066.P14476082537782703603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308068.P7266491862810550122

`floor(A008795(floor(n/2))/3)`
-/

namespace A308068.P7266491862810550122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008795 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / 3⌋

end

end A308068.P7266491862810550122

noncomputable section

/-- A308068: Number of integer-sided triangles with perimeter n whose longest side length is even.

Offset 1, canonical program `A308068.P7266491862810550122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308068 (n : ℕ) : ℤ :=
  A308068.P7266491862810550122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308084.P9637708914558590538

`∑{d}[n+1, A000217(#)*A161680((n+1)/#)]`
-/

namespace A308084.P9637708914558590538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A161680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308084.P9637708914558590538

noncomputable section

/-- A308084: a(n) = n*(n-1)*d(n)/4, where d(n)=A000005(n) is the number of divisors of n.

Offset 1, canonical program `A308084.P9637708914558590538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308084 (n : ℕ) : ℤ :=
  A308084.P9637708914558590538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308089.P8981676203332288718

`(n+1)*A005044(n+1)`
-/

namespace A308089.P8981676203332288718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005044 (n + 1)

end

end A308089.P8981676203332288718

noncomputable section

/-- A308089: Sum of the perimeters of all integer-sided triangles with perimeter n.

Offset 1, canonical program `A308089.P8981676203332288718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308089 (n : ℕ) : ℤ :=
  A308089.P8981676203332288718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308090.P3714707824000917373

`C(n+2, A113523(n+2))`
-/

namespace A308090.P3714707824000917373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A113523 (n + 2)).toNat

end

end A308090.P3714707824000917373

noncomputable section

/-- A308090: a(n) = gcd(2^n + n!, 3^n + n!, n+1).

Offset 1, canonical program `A308090.P3714707824000917373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A308090 (n : ℕ) : ℤ :=
  (A308090.P3714707824000917373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A308090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308102.P16020769950966667102

`(n+1)*A211540(ceil(xor(1, n)/2))`
-/

namespace A308102.P16020769950966667102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211540 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

end

end A308102.P16020769950966667102

noncomputable section

/-- A308102: Sum of the perimeters of all integer-sided scalene triangles with perimeter n.

Offset 1, canonical program `A308102.P16020769950966667102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308102 (n : ℕ) : ℤ :=
  A308102.P16020769950966667102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308150.P6415626369365081280

`eq[3, a(A054024(n))+1]` with `a(0)=4, a(1)=1`
-/

namespace A308150.P6415626369365081280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  f2 (A054024 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308150.P6415626369365081280

noncomputable section

/-- A308150: Numbers k such that sigma(k) mod k is prime, where sigma = A000203.

Offset 1, canonical program `A308150.P6415626369365081280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A308150 (n : ℕ) : ℤ :=
  (A308150.P6415626369365081280.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A308150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308158.P1496558067925969562

`A211524(A271324(n+1)+2)`
-/

namespace A308158.P1496558067925969562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A271324 (n + 1) + 2).toNat

end

end A308158.P1496558067925969562

noncomputable section

/-- A308158: Sum of the smallest side lengths of all integer-sided isosceles triangles with perimeter n.

Offset 1, canonical program `A308158.P1496558067925969562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A308158 (n : ℕ) : ℤ :=
  A308158.P1496558067925969562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A308158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308159.P13651073618713551582

`A008619(n)*A059169(n+1)-A005044(n+1)`
-/

namespace A308159.P13651073618713551582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A059169 (n + 1) - A005044 (n + 1)

end

end A308159.P13651073618713551582

noncomputable section

/-- A308159: Sum of the largest sides of all integer-sided isosceles triangles with perimeter n.

Offset 1, canonical program `A308159.P13651073618713551582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308159 (n : ℕ) : ℤ :=
  A308159.P13651073618713551582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308183.P3604475339994477846

`Δ[comp[A005187(comp[4*n])]]-1`
-/

namespace A308183.P3604475339994477846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A308183.P3604475339994477846

noncomputable section

/-- A308183: S_oo, where S_1 = bc, S_n = S_{n-1} a^n S_{n-1} for n > 1, over the alphabet {a,b,c} = {0,1,2}.

Offset 1, canonical program `A308183.P3604475339994477846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A308183 (n : ℕ) : ℤ :=
  A308183.P3604475339994477846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A308183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308186.P4188807853655826539

`A308185(n+1)+1`
-/

namespace A308186.P4188807853655826539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308185 (n + 1) + 1

end

end A308186.P4188807853655826539

noncomputable section

/-- A308186: Fixed point (beginning with a) of the morphism a -> abab, b -> b, over the alphabet {a,b} = {1,2}.

Offset 1, canonical program `A308186.P4188807853655826539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308186 (n : ℕ) : ℤ :=
  A308186.P4188807853655826539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308266.P14087854034105715006

`A307872(n+1)+A008763(n)`
-/

namespace A308266.P14087854034105715006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (n + 1) + A008763 n

end

end A308266.P14087854034105715006

noncomputable section

/-- A308266: Sum of the middle parts in the partitions of n into 3 parts.

Offset 1, canonical program `A308266.P14087854034105715006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308266 (n : ℕ) : ℤ :=
  A308266.P14087854034105715006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308358.P17355110042302640437

`A004526(A172475(n))`
-/

namespace A308358.P17355110042302640437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172475 n).toNat

end

end A308358.P17355110042302640437

noncomputable section

/-- A308358: Beatty sequence for sqrt(3)/4.

Offset 0, canonical program `A308358.P17355110042302640437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308358 (n : ℕ) : ℤ :=
  A308358.P17355110042302640437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308720.P467322842987642582

`gcd(∑[A000122(n)], A000122(n))-1`
-/

namespace A308720.P467322842987642582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000122 n) : ℤ) - 1

end

end A308720.P467322842987642582

noncomputable section

/-- A308720: The maximum value in the continued fraction of sqrt(n), or 0 if there is no fractional part.

Offset 0, canonical program `A308720.P467322842987642582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308720 (n : ℕ) : ℤ :=
  A308720.P467322842987642582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308733.P10361527980184129555

`∑[A008763(A028242(n)+1)]`
-/

namespace A308733.P10361527980184129555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A028242 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P10361527980184129555

noncomputable section

/-- A308733: Sum of the smallest parts of the partitions of n into 4 parts.

Offset 0, canonical program `A308733.P10361527980184129555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308733 (n : ℕ) : ℤ :=
  A308733.P10361527980184129555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308747.P7578990496107231513

`∑[∑[A005013(n)]+1]`
-/

namespace A308747.P7578990496107231513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308747.P7578990496107231513

noncomputable section

/-- A308747: Number of achiral m-color cyclic compositions of n (that is, number of cyclic compositions of n with reflection symmetry where each part of size m can be colored with one of m colors).

Offset 1, canonical program `A308747.P7578990496107231513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A308747 (n : ℕ) : ℤ :=
  A308747.P7578990496107231513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A308747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309000.P17298267895131005519

`A066810(n+3)-A000295(n+3)`
-/

namespace A309000.P17298267895131005519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066810 (n + 3) - A000295 (n + 3)

end

end A309000.P17298267895131005519

noncomputable section

/-- A309000: Number of strings of length n from a 3-symbol alphabet (A,B,C, say) containing at least one "A" and at least two "B"s.

Offset 3, canonical program `A309000.P17298267895131005519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A309000 (n : ℕ) : ℤ :=
  A309000.P17298267895131005519.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A309000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309002.P3766737663258813332

`lcm((n+1)², A054496(n+1))`
-/

namespace A309002.P3766737663258813332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 : ℤ) (A054496 (n + 1))

end

end A309002.P3766737663258813332

noncomputable section

/-- A309002: Multiplicative with a(p) = p^2 and a(p^e) = p^a(e) for any e > 1 and prime number p.

Offset 1, canonical program `A309002.P3766737663258813332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A309002 (n : ℕ) : ℤ :=
  (A309002.P3766737663258813332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A309002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309048.P4656978642239997170

`a(A002264(n))+(n²%3-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A309048.P4656978642239997170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A002264 n).toNat + (((n ^ 2 % 3 : ℕ) : ℤ) - 1) * a (n - 2)

end

end A309048.P4656978642239997170

noncomputable section

/-- A309048: Expansion of Product_{k>=0} (1 + x^(3^k) + x^(2*3^k) - x^(3^(k+1))).

Offset 0, canonical program `A309048.P4656978642239997170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2110 terms. -/
def A309048 (n : ℕ) : ℤ :=
  A309048.P4656978642239997170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2110 terms. -/
def A309048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309212.P14676656329670371086

`round((3/4)^A001489(n))`
-/

namespace A309212.P14676656329670371086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) / 4) ^ (A001489 n : ℤ))

end

end A309212.P14676656329670371086

noncomputable section

/-- A309212: Nearest integer to (4/3)^n.

Offset 0, canonical program `A309212.P14676656329670371086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A309212 (n : ℕ) : ℤ :=
  A309212.P14676656329670371086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A309212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309368.P4501545708741556862

`∑{d}[n+1, A000040((n+1)/#)^#]`
-/

namespace A309368.P4501545708741556862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A309368.P4501545708741556862

noncomputable section

/-- A309368: a(n) = Sum_{d|n} prime(n/d)^d.

Offset 1, canonical program `A309368.P4501545708741556862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A309368 (n : ℕ) : ℤ :=
  A309368.P4501545708741556862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A309368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309686.P5973081140512244808

`∑[A307018(A237420(n))]`
-/

namespace A309686.P5973081140512244808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309686.P5973081140512244808

noncomputable section

/-- A309686: Sum of the even parts appearing among the smallest parts of the partitions of n into 3 parts.

Offset 0, canonical program `A309686.P5973081140512244808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309686 (n : ℕ) : ℤ :=
  A309686.P5973081140512244808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309717.P16293545848605844786

`(A006190(n)-(A006684(n)+A000129(n)))/2`
-/

namespace A309717.P16293545848605844786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006190 n - (A006684 n + A000129 n) : ℚ) / 2

end

end A309717.P16293545848605844786

noncomputable section

/-- A309717: Convolve Fibonacci, Pell and bronze Fibonacci numbers.

Offset 0, canonical program `A309717.P16293545848605844786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A309717 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309717.P16293545848605844786.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A309717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309729.P1295357004740063289

`∑{d}[n+1, A001045(#)]`
-/

namespace A309729.P1295357004740063289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001045 d

end

end A309729.P1295357004740063289

noncomputable section

/-- A309729: Expansion of Sum_{k>=1} x^k/(1 - x^k - 2*x^(2*k)).

Offset 1, canonical program `A309729.P1295357004740063289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A309729 (n : ℕ) : ℤ :=
  A309729.P1295357004740063289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A309729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309731.P12136471664551813411

`∑{d}[n+1, #*A000217((n+1)/#)]`
-/

namespace A309731.P12136471664551813411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309731.P12136471664551813411

noncomputable section

/-- A309731: Expansion of Sum_{k>=1} k * x^k/(1 - x^k)^3.

Offset 1, canonical program `A309731.P12136471664551813411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309731 (n : ℕ) : ℤ :=
  A309731.P12136471664551813411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309772.P15365321864234993061

`lcm(A135731(n+1), A175216(n+1))`
-/

namespace A309772.P15365321864234993061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135731 (n + 1)) (A175216 (n + 1))

end

end A309772.P15365321864234993061

noncomputable section

/-- A309772: Least common multiple of prime(n+1)+1 and prime(n)+1.

Offset 1, canonical program `A309772.P15365321864234993061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309772 (n : ℕ) : ℤ :=
  (A309772.P15365321864234993061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309840.P11360781880078736310

`A000045(floor(log2(n))+3)*a(n-2^floor(log2(n)))` with `a(0)=1`
-/

namespace A309840.P11360781880078736310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (Nat.log 2 n + 3) * a (n - 2 ^ Nat.log 2 n)

end

end A309840.P11360781880078736310

noncomputable section

/-- A309840: If n = Sum (2^e_k) then a(n) = Product (Fibonacci(e_k + 3)).

Offset 0, canonical program `A309840.P11360781880078736310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309840 (n : ℕ) : ℤ :=
  A309840.P11360781880078736310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309874.P12989217329271986297

`2*((n+1)%2+(n+2)*A000045(n))`
-/

namespace A309874.P12989217329271986297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((((n + 1) % 2 : ℕ) : ℤ) + (n + 2 : ℤ) * A000045 n)

end

end A309874.P12989217329271986297

noncomputable section

/-- A309874: a(n) = 2*n*Fibonacci(n-2) + (-1)^n + 1.

Offset 2, canonical program `A309874.P12989217329271986297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A309874 (n : ℕ) : ℤ :=
  A309874.P12989217329271986297.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A309874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309954.P15049606844485343321

`∏{digits}[A024644(2*n)/2, #]`
-/

namespace A309954.P15049606844485343321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024644 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A309954.P15049606844485343321

noncomputable section

/-- A309954: Product of digits of (n written in base 4).

Offset 0, canonical program `A309954.P15049606844485343321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A309954 (n : ℕ) : ℤ :=
  (A309954.P15049606844485343321.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A309954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310068.P203163168447749443

`A008706(n)-(A047299(n+1)+A046978(n))`
-/

namespace A310068.P203163168447749443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (A047299 (n + 1) + A046978 n)

end

end A310068.P203163168447749443

noncomputable section

/-- A310068: Coordination sequence Gal.4.25.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310068.P203163168447749443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310068 (n : ℕ) : ℤ :=
  A310068.P203163168447749443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310331.P12389006043562410268

`A298024(A047273(n+1))-A265188(n+1)`
-/

namespace A310331.P12389006043562410268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 (A047273 (n + 1)).toNat - A265188 (n + 1)

end

end A310331.P12389006043562410268

noncomputable section

/-- A310331: Coordination sequence Gal.6.77.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310331.P12389006043562410268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310331 (n : ℕ) : ℤ :=
  A310331.P12389006043562410268.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310342.P2244144917321736231

`record[A266437(n)+A058207(n)]`
-/

namespace A310342.P2244144917321736231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n + A058207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310342.P2244144917321736231

noncomputable section

/-- A310342: Coordination sequence Gal.5.253.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310342.P2244144917321736231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A310342 (n : ℕ) : ℤ :=
  A310342.P2244144917321736231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A310342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310349.P8859943485980405476

`A298024(n)-A004526(A092092(n+1))`
-/

namespace A310349.P8859943485980405476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A004526 (A092092 (n + 1)).toNat

end

end A310349.P8859943485980405476

noncomputable section

/-- A310349: Coordination sequence Gal.5.254.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310349.P8859943485980405476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A310349 (n : ℕ) : ℤ :=
  A310349.P8859943485980405476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A310349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310358.P14915247389207343671

`A219529(n)-A006368(A004396(n))`
-/

namespace A310358.P14915247389207343671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A006368 (A004396 n).toNat

end

end A310358.P14915247389207343671

noncomputable section

/-- A310358: Coordination sequence Gal.4.99.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310358.P14915247389207343671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A310358 (n : ℕ) : ℤ :=
  A310358.P14915247389207343671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A310358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310372.P13571883006595967654

`A004275(A004776(2*(n+1)))`
-/

namespace A310372.P13571883006595967654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004776 (2 * (n + 1))).toNat

end

end A310372.P13571883006595967654

noncomputable section

/-- A310372: Coordination sequence Gal.4.52.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310372.P13571883006595967654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A310372 (n : ℕ) : ℤ :=
  A310372.P13571883006595967654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A310372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310375.P16852032750516594143

`A151988(A008486(n))+n`
-/

namespace A310375.P16852032750516594143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008486 n).toNat + (n : ℤ)

end

end A310375.P16852032750516594143

noncomputable section

/-- A310375: Coordination sequence Gal.5.82.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310375.P16852032750516594143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2467 terms. -/
def A310375 (n : ℕ) : ℤ :=
  A310375.P16852032750516594143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2467 terms. -/
def A310375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310393.P12744869705430097846

`A312933(n)+A004525(n-A004396(n))`
-/

namespace A310393.P12744869705430097846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A310393.P12744869705430097846

noncomputable section

/-- A310393: Coordination sequence Gal.6.193.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310393.P12744869705430097846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A310393 (n : ℕ) : ℤ :=
  A310393.P12744869705430097846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A310393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310397.P3562784380377388061

`A312943(n)+A004525(n-A004525(n))`
-/

namespace A310397.P3562784380377388061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A310397.P3562784380377388061

noncomputable section

/-- A310397: Coordination sequence Gal.4.76.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310397.P3562784380377388061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A310397 (n : ℕ) : ℤ :=
  A310397.P3562784380377388061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A310397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310400.P64997417812132731

`A312933(n)+∑[A022003(n)]`
-/

namespace A310400.P64997417812132731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310400.P64997417812132731

noncomputable section

/-- A310400: Coordination sequence Gal.6.337.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310400.P64997417812132731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A310400 (n : ℕ) : ℤ :=
  A310400.P64997417812132731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A310400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310405.P7222715361017571782

`A312950(n)+∑[A022003(n)]`
-/

namespace A310405.P7222715361017571782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310405.P7222715361017571782

noncomputable section

/-- A310405: Coordination sequence Gal.6.339.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310405.P7222715361017571782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A310405 (n : ℕ) : ℤ :=
  A310405.P7222715361017571782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A310405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310411.P12923110571559906962

`A060464(A008486(n)+1)+n`
-/

namespace A310411.P12923110571559906962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A008486 n + 1).toNat + (n : ℤ)

end

end A310411.P12923110571559906962

noncomputable section

/-- A310411: Coordination sequence Gal.4.72.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310411.P12923110571559906962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A310411 (n : ℕ) : ℤ :=
  A310411.P12923110571559906962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A310411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310416.P7113790097451163259

`xor(A010673(n), A315135(n))`
-/

namespace A310416.P7113790097451163259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A315135 n)

end

end A310416.P7113790097451163259

noncomputable section

/-- A310416: Coordination sequence Gal.6.367.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310416.P7113790097451163259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A310416 (n : ℕ) : ℤ :=
  A310416.P7113790097451163259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A310416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310419.P9463274316213645996

`2*A312943(n)-A008574(n)`
-/

namespace A310419.P9463274316213645996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312943 n - A008574 n

end

end A310419.P9463274316213645996

noncomputable section

/-- A310419: Coordination sequence Gal.5.130.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310419.P9463274316213645996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310419 (n : ℕ) : ℤ :=
  A310419.P9463274316213645996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310430.P7342347051689276617

`A301293(n)+A077814(n)`
-/

namespace A310430.P7342347051689276617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A077814 n

end

end A310430.P7342347051689276617

noncomputable section

/-- A310430: Coordination sequence Gal.3.41.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310430.P7342347051689276617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A310430 (n : ℕ) : ℤ :=
  A310430.P7342347051689276617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A310430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310439.P17127283864855311022

`A151988(A008486(n))+A047263(n+1)`
-/

namespace A310439.P17127283864855311022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008486 n).toNat + A047263 (n + 1)

end

end A310439.P17127283864855311022

noncomputable section

/-- A310439: Coordination sequence Gal.6.321.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310439.P17127283864855311022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A310439 (n : ℕ) : ℤ :=
  A310439.P17127283864855311022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A310439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310458.P15201393240750991380

`A312943(n)+∑[A021913(n)]`
-/

namespace A310458.P15201393240750991380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310458.P15201393240750991380

noncomputable section

/-- A310458: Coordination sequence Gal.4.78.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310458.P15201393240750991380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310458 (n : ℕ) : ℤ :=
  A310458.P15201393240750991380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310459.P10560031629199160211

`A312950(n)+∑[A021913(n)]`
-/

namespace A310459.P10560031629199160211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310459.P10560031629199160211

noncomputable section

/-- A310459: Coordination sequence Gal.6.341.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310459.P10560031629199160211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A310459 (n : ℕ) : ℤ :=
  A310459.P10560031629199160211.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A310459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310461.P9129682600112881039

`A219529(n)-A004525(A004396(n))`
-/

namespace A310461.P9129682600112881039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004525 (A004396 n).toNat

end

end A310461.P9129682600112881039

noncomputable section

/-- A310461: Coordination sequence Gal.6.350.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310461.P9129682600112881039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A310461 (n : ℕ) : ℤ :=
  A310461.P9129682600112881039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A310461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310466.P461030892065603312

`A219529(n)-A046978(A004396(n))`
-/

namespace A310466.P461030892065603312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A046978 (A004396 n).toNat

end

end A310466.P461030892065603312

noncomputable section

/-- A310466: Coordination sequence Gal.6.343.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310466.P461030892065603312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A310466 (n : ℕ) : ℤ :=
  A310466.P461030892065603312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A310466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310472.P9362779939822034128

`A312933(n)+n-A004525(A004396(n))`
-/

namespace A310472.P9362779939822034128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A310472.P9362779939822034128

noncomputable section

/-- A310472: Coordination sequence Gal.6.347.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310472.P9362779939822034128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A310472 (n : ℕ) : ℤ :=
  A310472.P9362779939822034128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A310472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310502.P9099728291858349393

`A008458(n)-2*A004396(A004396(n))`
-/

namespace A310502.P9099728291858349393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004396 (A004396 n).toNat

end

end A310502.P9099728291858349393

noncomputable section

/-- A310502: Coordination sequence Gal.5.132.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310502.P9099728291858349393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310502 (n : ℕ) : ℤ :=
  A310502.P9099728291858349393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310530.P10773156038924726472

`A008458(n)-2*A004525(A004525(n))`
-/

namespace A310530.P10773156038924726472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004525 (A004525 n).toNat

end

end A310530.P10773156038924726472

noncomputable section

/-- A310530: Coordination sequence Gal.5.134.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310530.P10773156038924726472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310530 (n : ℕ) : ℤ :=
  A310530.P10773156038924726472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310564.P8518898930016773917

`A257088(A060464(Δ[n²]))`
-/

namespace A310564.P8518898930016773917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A060464 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A310564.P8518898930016773917

noncomputable section

/-- A310564: Coordination sequence Gal.3.23.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310564.P8518898930016773917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A310564 (n : ℕ) : ℤ :=
  A310564.P8518898930016773917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A310564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310704.P4671266649933956123

`A008574(n)-A124072(A080412(n))`
-/

namespace A310704.P4671266649933956123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A124072 (A080412 n).toNat

end

end A310704.P4671266649933956123

noncomputable section

/-- A310704: Coordination sequence Gal.3.2.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310704.P4671266649933956123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310704 (n : ℕ) : ℤ :=
  A310704.P4671266649933956123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311273.P15887462391195011653

`A191275(n+1)+A072154(n)`
-/

namespace A311273.P15887462391195011653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + A072154 n

end

end A311273.P15887462391195011653

noncomputable section

/-- A311273: Coordination sequence Gal.3.31.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311273.P15887462391195011653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A311273 (n : ℕ) : ℤ :=
  A311273.P15887462391195011653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A311273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311289.P17878922336749957492

`A151988(n)+A008486(n)`
-/

namespace A311289.P17878922336749957492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + A008486 n

end

end A311289.P17878922336749957492

noncomputable section

/-- A311289: Coordination sequence Gal.5.107.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311289.P17878922336749957492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A311289 (n : ℕ) : ℤ :=
  A311289.P17878922336749957492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A311289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311426.P12408021461851380809

`A301291(n)-A004396(A004525(n))`
-/

namespace A311426.P12408021461851380809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A004396 (A004525 n).toNat

end

end A311426.P12408021461851380809

noncomputable section

/-- A311426: Coordination sequence Gal.6.115.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311426.P12408021461851380809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2611 terms. -/
def A311426 (n : ℕ) : ℤ :=
  A311426.P12408021461851380809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2611 terms. -/
def A311426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311475.P11971039949641938868

`A312950(n)-∑[A022003(n)]`
-/

namespace A311475.P11971039949641938868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311475.P11971039949641938868

noncomputable section

/-- A311475: Coordination sequence Gal.6.118.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311475.P11971039949641938868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A311475 (n : ℕ) : ℤ :=
  A311475.P11971039949641938868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A311475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311494.P11293507898518336772

`A030118(n)+A004772(A072154(n))`
-/

namespace A311494.P11293507898518336772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 n + A004772 (A072154 n).toNat

end

end A311494.P11293507898518336772

noncomputable section

/-- A311494: Coordination sequence Gal.3.12.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311494.P11293507898518336772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311494 (n : ℕ) : ℤ :=
  A311494.P11293507898518336772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311501.P3617403906977629789

`A301291(n)-A004525(A004525(n))`
-/

namespace A311501.P3617403906977629789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A004525 (A004525 n).toNat

end

end A311501.P3617403906977629789

noncomputable section

/-- A311501: Coordination sequence Gal.4.38.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311501.P3617403906977629789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A311501 (n : ℕ) : ℤ :=
  A311501.P3617403906977629789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A311501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311801.P4993723668151439416

`round((A301293(n)+A022144(n))/3)`
-/

namespace A311801.P4993723668151439416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301293 n + A022144 n : ℚ) / 3)

end

end A311801.P4993723668151439416

noncomputable section

/-- A311801: Coordination sequence Gal.6.115.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311801.P4993723668151439416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A311801 (n : ℕ) : ℤ :=
  A311801.P4993723668151439416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A311801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311816.P10667073270982388372

`A008574(n)+Δ[A011862(n)]`
-/

namespace A311816.P10667073270982388372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A311816.P10667073270982388372

noncomputable section

/-- A311816: Coordination sequence Gal.5.95.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311816.P10667073270982388372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2579 terms. -/
def A311816 (n : ℕ) : ℤ :=
  A311816.P10667073270982388372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2579 terms. -/
def A311816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311843.P4745182286114243014

`A008574(n)+Δ[A011861(n)]`
-/

namespace A311843.P4745182286114243014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A311843.P4745182286114243014

noncomputable section

/-- A311843: Coordination sequence Gal.4.38.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311843.P4745182286114243014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2577 terms. -/
def A311843 (n : ℕ) : ℤ :=
  A311843.P4745182286114243014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2577 terms. -/
def A311843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311914.P11835660157980149675

`A008574(n)+Δ[A011860(n)]`
-/

namespace A311914.P11835660157980149675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A311914.P11835660157980149675

noncomputable section

/-- A311914: Coordination sequence Gal.4.58.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311914.P11835660157980149675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2566 terms. -/
def A311914 (n : ℕ) : ℤ :=
  A311914.P11835660157980149675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2566 terms. -/
def A311914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311964.P9332770168287071000

`abs(A008593(n)-(A315697(n)+n))`
-/

namespace A311964.P9332770168287071000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315697 n + (n : ℤ))|

end

end A311964.P9332770168287071000

noncomputable section

/-- A311964: Coordination sequence Gal.6.131.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311964.P9332770168287071000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A311964 (n : ℕ) : ℤ :=
  A311964.P9332770168287071000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A311964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312065.P12266081500591104946

`A047513(n+1)+A008486(n)`
-/

namespace A312065.P12266081500591104946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + A008486 n

end

end A312065.P12266081500591104946

noncomputable section

/-- A312065: Coordination sequence Gal.3.10.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312065.P12266081500591104946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A312065 (n : ℕ) : ℤ :=
  A312065.P12266081500591104946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A312065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312077.P5583150468324327588

`A008574(n)+A004524(A081599(n))`
-/

namespace A312077.P5583150468324327588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004524 (A081599 n).toNat

end

end A312077.P5583150468324327588

noncomputable section

/-- A312077: Coordination sequence Gal.5.65.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312077.P5583150468324327588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A312077 (n : ℕ) : ℤ :=
  A312077.P5583150468324327588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A312077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312113.P6642103030780361102

`A301298(n)-A046978(A004396(n))`
-/

namespace A312113.P6642103030780361102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A046978 (A004396 n).toNat

end

end A312113.P6642103030780361102

noncomputable section

/-- A312113: Coordination sequence Gal.6.132.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312113.P6642103030780361102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312113 (n : ℕ) : ℤ :=
  A312113.P6642103030780361102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312208.P17267733597513165212

`A008574(n)+n-A253262(n)`
-/

namespace A312208.P17267733597513165212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A253262 n)

end

end A312208.P17267733597513165212

noncomputable section

/-- A312208: Coordination sequence Gal.5.69.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312208.P17267733597513165212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A312208 (n : ℕ) : ℤ :=
  A312208.P17267733597513165212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A312208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312245.P9424474134865924466

`A047263(n+1)+A311807(n)-A060464(n+1)`
-/

namespace A312245.P9424474134865924466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A311807 n - A060464 (n + 1))

end

end A312245.P9424474134865924466

noncomputable section

/-- A312245: Coordination sequence Gal.3.31.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312245.P9424474134865924466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2619 terms. -/
def A312245 (n : ℕ) : ℤ :=
  A312245.P9424474134865924466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2619 terms. -/
def A312245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312475.P17325744144907721022

`A004275(round(A017449(n)/5))`
-/

namespace A312475.P17325744144907721022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A017449 n : ℚ) / 5)).toNat

end

end A312475.P17325744144907721022

noncomputable section

/-- A312475: Coordination sequence Gal.3.16.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312475.P17325744144907721022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312475 (n : ℕ) : ℤ :=
  A312475.P17325744144907721022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312478.P3776385342878559786

`A296910(n)+A186101(A237420(n))`
-/

namespace A312478.P3776385342878559786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A186101 (A237420 n).toNat

end

end A312478.P3776385342878559786

noncomputable section

/-- A312478: Coordination sequence Gal.4.67.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312478.P3776385342878559786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A312478 (n : ℕ) : ℤ :=
  A312478.P3776385342878559786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A312478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312890.P5869710039852604831

`A008574(n)+A004525(round(n/3))`
-/

namespace A312890.P5869710039852604831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A312890.P5869710039852604831

noncomputable section

/-- A312890: Coordination sequence Gal.6.115.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312890.P5869710039852604831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2595 terms. -/
def A312890 (n : ℕ) : ℤ :=
  A312890.P5869710039852604831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2595 terms. -/
def A312890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312892.P8731984914629007574

`A008574(n)+A004525(A057354(n+1))`
-/

namespace A312892.P8731984914629007574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A057354 (n + 1)).toNat

end

end A312892.P8731984914629007574

noncomputable section

/-- A312892: Coordination sequence Gal.5.50.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312892.P8731984914629007574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A312892 (n : ℕ) : ℤ :=
  A312892.P8731984914629007574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A312892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312893.P922128372979076951

`A004396(A298786(n))+2*n`
-/

namespace A312893.P922128372979076951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298786 n).toNat + (2 * n : ℤ)

end

end A312893.P922128372979076951

noncomputable section

/-- A312893: Coordination sequence Gal.5.95.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312893.P922128372979076951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2585 terms. -/
def A312893 (n : ℕ) : ℤ :=
  A312893.P922128372979076951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2585 terms. -/
def A312893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312894.P11041919530925850968

`A301293(n)-Δ[A011861(n)]`
-/

namespace A312894.P11041919530925850968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - (f1 (n + 1) - f1 n)

end

end A312894.P11041919530925850968

noncomputable section

/-- A312894: Coordination sequence Gal.4.38.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312894.P11041919530925850968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A312894 (n : ℕ) : ℤ :=
  A312894.P11041919530925850968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A312894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312895.P3589302732376537873

`round(A008574(n)+2*n/7)`
-/

namespace A312895.P3589302732376537873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 n : ℚ) + 2 * ((n : ℚ) / 7))

end

end A312895.P3589302732376537873

noncomputable section

/-- A312895: Coordination sequence Gal.4.58.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312895.P3589302732376537873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A312895 (n : ℕ) : ℤ :=
  A312895.P3589302732376537873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A312895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312896.P16473508619976293498

`A008574(n)+A004396(A004524(n+1))`
-/

namespace A312896.P16473508619976293498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A004524 (n + 1)).toNat

end

end A312896.P16473508619976293498

noncomputable section

/-- A312896: Coordination sequence Gal.6.130.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312896.P16473508619976293498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. -/
def A312896 (n : ℕ) : ℤ :=
  A312896.P16473508619976293498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. -/
def A312896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312907.P8561089575111463148

`A005843(n)+A072154(n)-A134667(n)`
-/

namespace A312907.P8561089575111463148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A072154 n - A134667 n)

end

end A312907.P8561089575111463148

noncomputable section

/-- A312907: Coordination sequence Gal.4.85.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312907.P8561089575111463148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312907 (n : ℕ) : ℤ :=
  A312907.P8561089575111463148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312908.P18385197356515419689

`A042965(A298786(n)+1)`
-/

namespace A312908.P18385197356515419689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A298786 n + 1).toNat

end

end A312908.P18385197356515419689

noncomputable section

/-- A312908: Coordination sequence Gal.5.64.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312908.P18385197356515419689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A312908 (n : ℕ) : ℤ :=
  A312908.P18385197356515419689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A312908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312909.P9930151025395677949

`A008574(n)+A004525(3*round(n/3))`
-/

namespace A312909.P9930151025395677949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (3 * SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A312909.P9930151025395677949

noncomputable section

/-- A312909: Coordination sequence Gal.6.150.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312909.P9930151025395677949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312909 (n : ℕ) : ℤ :=
  A312909.P9930151025395677949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312932.P265636690513476108

`round(A008574(n)/(1-1/10))`
-/

namespace A312932.P265636690513476108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 n : ℚ) / (1 - (1 : ℚ) / 10))

end

end A312932.P265636690513476108

noncomputable section

/-- A312932: Coordination sequence Gal.5.81.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312932.P265636690513476108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312932 (n : ℕ) : ℤ :=
  A312932.P265636690513476108.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312948.P565331137883369299

`A151988(n)+A312928(n)-n`
-/

namespace A312948.P565331137883369299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A312928 n - (n : ℤ))

end

end A312948.P565331137883369299

noncomputable section

/-- A312948: Coordination sequence Gal.5.66.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312948.P565331137883369299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312948 (n : ℕ) : ℤ :=
  A312948.P565331137883369299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313045.P11830860627486211470

`A008458(n)-comp[A047486(2*(n+1))]`
-/

namespace A313045.P11830860627486211470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313045.P11830860627486211470

noncomputable section

/-- A313045: Coordination sequence Gal.6.258.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313045.P11830860627486211470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A313045 (n : ℕ) : ℤ :=
  A313045.P11830860627486211470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A313045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313046.P8828103927133743341

`A314838(n)-A238470(A266303(n))`
-/

namespace A313046.P8828103927133743341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n - A238470 (A266303 n).toNat

end

end A313046.P8828103927133743341

noncomputable section

/-- A313046: Coordination sequence Gal.6.454.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313046.P8828103927133743341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A313046 (n : ℕ) : ℤ :=
  A313046.P8828103927133743341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A313046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313051.P5280053628599878746

`A312549(n)+A238470(n)`
-/

namespace A313051.P5280053628599878746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n + A238470 n

end

end A313051.P5280053628599878746

noncomputable section

/-- A313051: Coordination sequence Gal.3.33.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313051.P5280053628599878746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A313051 (n : ℕ) : ℤ :=
  A313051.P5280053628599878746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A313051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313070.P12498649127613810780

`A315541(n)-(A004396(n)+A004396(A004396(n)))`
-/

namespace A313070.P12498649127613810780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315541 n - (A004396 n + A004396 (A004396 n).toNat)

end

end A313070.P12498649127613810780

noncomputable section

/-- A313070: Coordination sequence Gal.6.460.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313070.P12498649127613810780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A313070 (n : ℕ) : ℤ :=
  A313070.P12498649127613810780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A313070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313174.P15113801269401988722

`A301293(n)+A087509(A006368(n))`
-/

namespace A313174.P15113801269401988722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A087509 (A006368 n).toNat

end

end A313174.P15113801269401988722

noncomputable section

/-- A313174: Coordination sequence Gal.6.478.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313174.P15113801269401988722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313174 (n : ℕ) : ℤ :=
  A313174.P15113801269401988722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313193.P12410048015465673857

`A301672(n)+∑[A021913(n)]`
-/

namespace A313193.P12410048015465673857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313193.P12410048015465673857

noncomputable section

/-- A313193: Coordination sequence Gal.4.106.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313193.P12410048015465673857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A313193 (n : ℕ) : ℤ :=
  A313193.P12410048015465673857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A313193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313316.P1127431857597112958

`A313321(n)-A142150(A004525(n))`
-/

namespace A313316.P1127431857597112958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - A142150 (A004525 n).toNat

end

end A313316.P1127431857597112958

noncomputable section

/-- A313316: Coordination sequence Gal.6.282.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313316.P1127431857597112958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313316 (n : ℕ) : ℤ :=
  A313316.P1127431857597112958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313416.P3381920737884461264

`A298024(n)-A056594(n+1)`
-/

namespace A313416.P3381920737884461264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A056594 (n + 1)

end

end A313416.P3381920737884461264

noncomputable section

/-- A313416: Coordination sequence Gal.4.106.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313416.P3381920737884461264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A313416 (n : ℕ) : ℤ :=
  A313416.P3381920737884461264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A313416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313480.P5748992067713966907

`A315685(n)-n`
-/

namespace A313480.P5748992067713966907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - (n : ℤ)

end

end A313480.P5748992067713966907

noncomputable section

/-- A313480: Coordination sequence Gal.4.41.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313480.P5748992067713966907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A313480 (n : ℕ) : ℤ :=
  A313480.P5748992067713966907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A313480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313487.P15288592894226833753

`A315701(n)-A047588(n+1)`
-/

namespace A313487.P15288592894226833753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315701 n - A047588 (n + 1)

end

end A313487.P15288592894226833753

noncomputable section

/-- A313487: Coordination sequence Gal.4.42.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313487.P15288592894226833753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A313487 (n : ℕ) : ℤ :=
  A313487.P15288592894226833753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A313487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313533.P10490888896929360716

`A315697(n)-n`
-/

namespace A313533.P10490888896929360716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315697 n - (n : ℤ)

end

end A313533.P10490888896929360716

noncomputable section

/-- A313533: Coordination sequence Gal.6.131.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313533.P10490888896929360716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A313533 (n : ℕ) : ℤ :=
  A313533.P10490888896929360716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A313533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313546.P16396448915990125891

`A312933(n)+A004525(A004396(n))`
-/

namespace A313546.P16396448915990125891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A004525 (A004396 n).toNat

end

end A313546.P16396448915990125891

noncomputable section

/-- A313546: Coordination sequence Gal.6.156.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313546.P16396448915990125891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A313546 (n : ℕ) : ℤ :=
  A313546.P16396448915990125891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A313546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313575.P17258877174368691050

`round(A301291(n)+n/3)`
-/

namespace A313575.P17258877174368691050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301291 n : ℚ) + (n : ℚ) / 3)

end

end A313575.P17258877174368691050

noncomputable section

/-- A313575: Coordination sequence Gal.6.202.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313575.P17258877174368691050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A313575 (n : ℕ) : ℤ :=
  A313575.P17258877174368691050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A313575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313613.P7914765852516180846

`A074232(A008574(n)-n)+n`
-/

namespace A313613.P7914765852516180846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A008574 n - (n : ℤ)).toNat + (n : ℤ)

end

end A313613.P7914765852516180846

noncomputable section

/-- A313613: Coordination sequence Gal.4.72.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313613.P7914765852516180846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A313613 (n : ℕ) : ℤ :=
  A313613.P7914765852516180846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A313613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313635.P6006493494866348002

`A312943(n)+A004525(n)`
-/

namespace A313635.P6006493494866348002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004525 n

end

end A313635.P6006493494866348002

noncomputable section

/-- A313635: Coordination sequence Gal.4.54.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313635.P6006493494866348002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A313635 (n : ℕ) : ℤ :=
  A313635.P6006493494866348002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A313635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313646.P5789065148866305681

`A312950(n)+A004525(n)`
-/

namespace A313646.P5789065148866305681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + A004525 n

end

end A313646.P5789065148866305681

noncomputable section

/-- A313646: Coordination sequence Gal.6.205.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313646.P5789065148866305681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313646 (n : ℕ) : ℤ :=
  A313646.P5789065148866305681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313660.P5112024612694540974

`A313568(n)+A237420(Δ[A011858(n)])`
-/

namespace A313660.P5112024612694540974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + A237420 (f1 (n + 1) - f1 n).toNat

end

end A313660.P5112024612694540974

noncomputable section

/-- A313660: Coordination sequence Gal.4.126.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313660.P5112024612694540974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1743 terms. -/
def A313660 (n : ℕ) : ℤ :=
  A313660.P5112024612694540974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1743 terms. -/
def A313660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313703.P15146623144074543038

`A008574(n)+A004396(A042965(n+1))`
-/

namespace A313703.P15146623144074543038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A042965 (n + 1)).toNat

end

end A313703.P15146623144074543038

noncomputable section

/-- A313703: Coordination sequence Gal.5.129.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313703.P15146623144074543038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A313703 (n : ℕ) : ℤ :=
  A313703.P15146623144074543038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A313703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313722.P17589787555355658090

`A008706(n)-Δ[A011875(n)]`
-/

namespace A313722.P17589787555355658090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A313722.P17589787555355658090

noncomputable section

/-- A313722: Coordination sequence Gal.6.248.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313722.P17589787555355658090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313722 (n : ℕ) : ℤ :=
  A313722.P17589787555355658090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313730.P14992937081356029682

`A008458(n)-comp[12*n+6]`
-/

namespace A313730.P14992937081356029682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A313730.P14992937081356029682

noncomputable section

/-- A313730: Coordination sequence Gal.6.234.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313730.P14992937081356029682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313730 (n : ℕ) : ℤ :=
  A313730.P14992937081356029682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313737.P13552186845538033859

`A065033(2*n)+A047263(3*n+1)+A002264(A004773(n+1))`
-/

namespace A313737.P13552186845538033859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + (A047263 (3 * n + 1) + A002264 (A004773 (n + 1)).toNat)

end

end A313737.P13552186845538033859

noncomputable section

/-- A313737: Coordination sequence Gal.6.363.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313737.P13552186845538033859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A313737 (n : ℕ) : ℤ :=
  A313737.P13552186845538033859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A313737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313738.P18419223100438122022

`round(A008596(A008574(n))/11)`
-/

namespace A313738.P18419223100438122022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008596 (A008574 n).toNat : ℚ) / 11)

end

end A313738.P18419223100438122022

noncomputable section

/-- A313738: Coordination sequence Gal.6.158.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313738.P18419223100438122022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A313738 (n : ℕ) : ℤ :=
  A313738.P18419223100438122022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A313738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313744.P13494615761715777669

`A219529(n)-A004396(n-A004525(n))`
-/

namespace A313744.P13494615761715777669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313744.P13494615761715777669

noncomputable section

/-- A313744: Coordination sequence Gal.6.345.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313744.P13494615761715777669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2372 terms. -/
def A313744 (n : ℕ) : ℤ :=
  A313744.P13494615761715777669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2372 terms. -/
def A313744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313774.P13874371645225150671

`A312933(n)+round(2*n/3)`
-/

namespace A313774.P13874371645225150671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A313774.P13874371645225150671

noncomputable section

/-- A313774: Coordination sequence Gal.6.622.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313774.P13874371645225150671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313774 (n : ℕ) : ℤ :=
  A313774.P13874371645225150671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313780.P7722541564752106714

`round(A008574(n)+8*n/7)`
-/

namespace A313780.P7722541564752106714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 n : ℚ) + 8 * ((n : ℚ) / 7))

end

end A313780.P7722541564752106714

noncomputable section

/-- A313780: Coordination sequence Gal.3.23.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313780.P7722541564752106714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313780 (n : ℕ) : ℤ :=
  A313780.P7722541564752106714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313786.P15752277737034767631

`A008706(n)+A002265(A266794(n))`
-/

namespace A313786.P15752277737034767631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A002265 (A266794 n).toNat

end

end A313786.P15752277737034767631

noncomputable section

/-- A313786: Coordination sequence Gal.4.128.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313786.P15752277737034767631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313786 (n : ℕ) : ℤ :=
  A313786.P15752277737034767631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313849.P16006681991081837481

`A219529(n)+A134667(A047363(2*n+1))`
-/

namespace A313849.P16006681991081837481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A134667 (A047363 (2 * n + 1)).toNat

end

end A313849.P16006681991081837481

noncomputable section

/-- A313849: Coordination sequence Gal.5.309.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313849.P16006681991081837481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313849 (n : ℕ) : ℤ :=
  A313849.P16006681991081837481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313879.P8717891439709458694

`A312933(n)+A004525(A004396(n)+n)`
-/

namespace A313879.P8717891439709458694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A313879.P8717891439709458694

noncomputable section

/-- A313879: Coordination sequence Gal.6.343.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313879.P8717891439709458694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313879 (n : ℕ) : ℤ :=
  A313879.P8717891439709458694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313889.P12222202445446498340

`A312943(n)+A004396(A047263(n+1))`
-/

namespace A313889.P12222202445446498340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004396 (A047263 (n + 1)).toNat

end

end A313889.P12222202445446498340

noncomputable section

/-- A313889: Coordination sequence Gal.6.652.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313889.P12222202445446498340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313889 (n : ℕ) : ℤ :=
  A313889.P12222202445446498340.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313892.P4540167751234149793

`A004396(A008574(2*n)-A316569(n))`
-/

namespace A313892.P4540167751234149793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008574 (2 * n) - A316569 n).toNat

end

end A313892.P4540167751234149793

noncomputable section

/-- A313892: Coordination sequence Gal.5.309.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313892.P4540167751234149793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A313892 (n : ℕ) : ℤ :=
  A313892.P4540167751234149793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A313892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313893.P866188297290375688

`A314838(n)+n-A004525(A004525(n))`
-/

namespace A313893.P866188297290375688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A313893.P866188297290375688

noncomputable section

/-- A313893: Coordination sequence Gal.5.310.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313893.P866188297290375688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313893 (n : ℕ) : ℤ :=
  A313893.P866188297290375688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313907.P17726981698790331686

`A301718(n)-A057354(A130823(n+2))`
-/

namespace A313907.P17726981698790331686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A057354 (A130823 (n + 2)).toNat

end

end A313907.P17726981698790331686

noncomputable section

/-- A313907: Coordination sequence Gal.5.315.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313907.P17726981698790331686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A313907 (n : ℕ) : ℤ :=
  A313907.P17726981698790331686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A313907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313923.P4927546755448951901

`A310529(n)+A238469(n)`
-/

namespace A313923.P4927546755448951901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n + A238469 n

end

end A313923.P4927546755448951901

noncomputable section

/-- A313923: Coordination sequence Gal.4.139.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313923.P4927546755448951901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A313923 (n : ℕ) : ℤ :=
  A313923.P4927546755448951901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A313923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313954.P7479337481479020677

`A072154(2*n)+∑[A021913(n)]`
-/

namespace A313954.P7479337481479020677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313954.P7479337481479020677

noncomputable section

/-- A313954: Coordination sequence Gal.3.55.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313954.P7479337481479020677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313954 (n : ℕ) : ℤ :=
  A313954.P7479337481479020677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313955.P18254009820693885045

`A313862(n)+Δ[A011865(n)]`
-/

namespace A313955.P18254009820693885045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313862 n + (f1 (n + 1) - f1 n)

end

end A313955.P18254009820693885045

noncomputable section

/-- A313955: Coordination sequence Gal.4.144.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313955.P18254009820693885045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A313955 (n : ℕ) : ℤ :=
  A313955.P18254009820693885045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A313955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313967.P4638487005320637361

`A072154(2*n)+A057354(A004773(n+1))`
-/

namespace A313967.P4638487005320637361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + A057354 (A004773 (n + 1)).toNat

end

end A313967.P4638487005320637361

noncomputable section

/-- A313967: Coordination sequence Gal.5.315.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313967.P4638487005320637361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313967 (n : ℕ) : ℤ :=
  A313967.P4638487005320637361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313982.P4456833723093480440

`A312549(n)+n`
-/

namespace A313982.P4456833723093480440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n + (n : ℤ)

end

end A313982.P4456833723093480440

noncomputable section

/-- A313982: Coordination sequence Gal.3.57.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313982.P4456833723093480440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A313982 (n : ℕ) : ℤ :=
  A313982.P4456833723093480440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A313982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314015.P14627959362492580989

`A301729(A298786(n))`
-/

namespace A314015.P14627959362492580989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (A298786 n).toNat

end

end A314015.P14627959362492580989

noncomputable section

/-- A314015: Coordination sequence Gal.4.100.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314015.P14627959362492580989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A314015 (n : ℕ) : ℤ :=
  A314015.P14627959362492580989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A314015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314024.P187168839629835134

`A315697(n)-A004396(n)`
-/

namespace A314024.P187168839629835134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315697 n - A004396 n

end

end A314024.P187168839629835134

noncomputable section

/-- A314024: Coordination sequence Gal.6.156.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314024.P187168839629835134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A314024 (n : ℕ) : ℤ :=
  A314024.P187168839629835134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A314024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314034.P16932690787039607146

`A219529(n)-Δ[A011862(n)]`
-/

namespace A314034.P16932690787039607146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (f1 (n + 1) - f1 n)

end

end A314034.P16932690787039607146

noncomputable section

/-- A314034: Coordination sequence Gal.5.132.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314034.P16932690787039607146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314034 (n : ℕ) : ℤ :=
  A314034.P16932690787039607146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314040.P6532766928928957764

`A191275(A008486(n)+1)`
-/

namespace A314040.P6532766928928957764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (A008486 n + 1).toNat

end

end A314040.P6532766928928957764

noncomputable section

/-- A314040: Coordination sequence Gal.4.133.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314040.P6532766928928957764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A314040 (n : ℕ) : ℤ :=
  A314040.P6532766928928957764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A314040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314049.P18135787733633464436

`A313568(n)+Δ[A011858(n)]`
-/

namespace A314049.P18135787733633464436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + (f1 (n + 1) - f1 n)

end

end A314049.P18135787733633464436

noncomputable section

/-- A314049: Coordination sequence Gal.3.51.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314049.P18135787733633464436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A314049 (n : ℕ) : ℤ :=
  A314049.P18135787733633464436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A314049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314061.P15550018159768013123

`A312943(n)+A134119(4*n)`
-/

namespace A314061.P15550018159768013123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A134119 (4 * n)

end

end A314061.P15550018159768013123

noncomputable section

/-- A314061: Coordination sequence Gal.6.647.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314061.P15550018159768013123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314061 (n : ℕ) : ℤ :=
  A314061.P15550018159768013123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314067.P8522433514397796165

`A093390(A004767(n))+A008574(n)`
-/

namespace A314067.P8522433514397796165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (A004767 n).toNat + A008574 n

end

end A314067.P8522433514397796165

noncomputable section

/-- A314067: Coordination sequence Gal.3.53.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314067.P8522433514397796165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314067 (n : ℕ) : ℤ :=
  A314067.P8522433514397796165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314071.P11668273062377731027

`A004396(A315707(n)+A265188(n+1))`
-/

namespace A314071.P11668273062377731027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315707 n + A265188 (n + 1)).toNat

end

end A314071.P11668273062377731027

noncomputable section

/-- A314071: Coordination sequence Gal.5.311.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314071.P11668273062377731027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A314071 (n : ℕ) : ℤ :=
  A314071.P11668273062377731027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A314071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314090.P9494810813166851977

`A315685(n)-A004525(n)`
-/

namespace A314090.P9494810813166851977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - A004525 n

end

end A314090.P9494810813166851977

noncomputable section

/-- A314090: Coordination sequence Gal.4.54.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314090.P9494810813166851977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314090 (n : ℕ) : ℤ :=
  A314090.P9494810813166851977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314096.P5315638873282229111

`A191276(A033627(n+2))`
-/

namespace A314096.P5315638873282229111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (A033627 (n + 2)).toNat

end

end A314096.P5315638873282229111

noncomputable section

/-- A314096: Coordination sequence Gal.4.73.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314096.P5315638873282229111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A314096 (n : ℕ) : ℤ :=
  A314096.P5315638873282229111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A314096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314117.P6288149183709967192

`ceil(A158666(n)/A017401(n))`
-/

namespace A314117.P6288149183709967192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158666 n : ℚ) / (A017401 n : ℚ)⌉

end

end A314117.P6288149183709967192

noncomputable section

/-- A314117: Coordination sequence Gal.6.330.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314117.P6288149183709967192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A314117 (n : ℕ) : ℤ :=
  A314117.P6288149183709967192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A314117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314120.P12703466800442840178

`A315707(n)-A004525(n)`
-/

namespace A314120.P12703466800442840178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - A004525 n

end

end A314120.P12703466800442840178

noncomputable section

/-- A314120: Coordination sequence Gal.3.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314120.P12703466800442840178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A314120 (n : ℕ) : ℤ :=
  A314120.P12703466800442840178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A314120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314148.P108321532251745212

`abs(A008592(n)-A314838(n))`
-/

namespace A314148.P108321532251745212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314838 n|

end

end A314148.P108321532251745212

noncomputable section

/-- A314148: Coordination sequence Gal.4.139.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314148.P108321532251745212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314148 (n : ℕ) : ℤ :=
  A314148.P108321532251745212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314151.P18144862648953795625

`A312933(n)+n`
-/

namespace A314151.P18144862648953795625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + (n : ℤ)

end

end A314151.P18144862648953795625

noncomputable section

/-- A314151: Coordination sequence Gal.6.621.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314151.P18144862648953795625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314151 (n : ℕ) : ℤ :=
  A314151.P18144862648953795625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314188.P6409328397070527992

`A072154(n)+A276283(n)-1`
-/

namespace A314188.P6409328397070527992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (A276283 n - 1)

end

end A314188.P6409328397070527992

noncomputable section

/-- A314188: Coordination sequence Gal.4.145.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314188.P6409328397070527992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314188 (n : ℕ) : ℤ :=
  A314188.P6409328397070527992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314191.P6792675617802763548

`A008574(n)+A004525(A047363(2*n+1))`
-/

namespace A314191.P6792675617802763548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A047363 (2 * n + 1)).toNat

end

end A314191.P6792675617802763548

noncomputable section

/-- A314191: Coordination sequence Gal.5.292.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314191.P6792675617802763548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A314191 (n : ℕ) : ℤ :=
  A314191.P6792675617802763548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A314191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314218.P5748656243468499932

`A219529(n)+Δ[A011862(n)]`
-/

namespace A314218.P5748656243468499932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + (f1 (n + 1) - f1 n)

end

end A314218.P5748656243468499932

noncomputable section

/-- A314218: Coordination sequence Gal.5.304.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314218.P5748656243468499932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2234 terms. -/
def A314218 (n : ℕ) : ℤ :=
  A314218.P5748656243468499932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2234 terms. -/
def A314218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314347.P7578346678599695922

`A151988(2*n)+A008486(A004396(n))`
-/

namespace A314347.P7578346678599695922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (2 * n) + A008486 (A004396 n).toNat

end

end A314347.P7578346678599695922

noncomputable section

/-- A314347: Coordination sequence Gal.4.85.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314347.P7578346678599695922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A314347 (n : ℕ) : ℤ :=
  A314347.P7578346678599695922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A314347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314672.P11952212366419125291

`A008574(n)+A004525(A004525(n))`
-/

namespace A314672.P11952212366419125291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A004525 n).toNat

end

end A314672.P11952212366419125291

noncomputable section

/-- A314672: Coordination sequence Gal.4.38.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314672.P11952212366419125291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A314672 (n : ℕ) : ℤ :=
  A314672.P11952212366419125291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A314672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314674.P17643702068041950173

`A312289(n)+A175629(n)`
-/

namespace A314674.P17643702068041950173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A175629 n

end

end A314674.P17643702068041950173

noncomputable section

/-- A314674: Coordination sequence Gal.4.58.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314674.P17643702068041950173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2569 terms. -/
def A314674 (n : ℕ) : ℤ :=
  A314674.P17643702068041950173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2569 terms. -/
def A314674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314677.P709044874121363319

`A047424(n+1)+A008486(n)`
-/

namespace A314677.P709044874121363319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + A008486 n

end

end A314677.P709044874121363319

noncomputable section

/-- A314677: Coordination sequence Gal.3.10.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314677.P709044874121363319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A314677 (n : ℕ) : ℤ :=
  A314677.P709044874121363319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A314677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314710.P10185339567335354607

`A301298(n)-Δ[A011862(n)]`
-/

namespace A314710.P10185339567335354607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - (f1 (n + 1) - f1 n)

end

end A314710.P10185339567335354607

noncomputable section

/-- A314710: Coordination sequence Gal.5.64.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314710.P10185339567335354607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A314710 (n : ℕ) : ℤ :=
  A314710.P10185339567335354607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A314710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314754.P13873104734098981522

`A008486(2*n)-A004525(A047363(2*n+1))`
-/

namespace A314754.P13873104734098981522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004525 (A047363 (2 * n + 1)).toNat

end

end A314754.P13873104734098981522

noncomputable section

/-- A314754: Coordination sequence Gal.5.82.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314754.P13873104734098981522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A314754 (n : ℕ) : ℤ :=
  A314754.P13873104734098981522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A314754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314776.P3434978247879640605

`A257088(A004525(n))+4*n`
-/

namespace A314776.P3434978247879640605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A004525 n).toNat + (4 * n : ℤ)

end

end A314776.P3434978247879640605

noncomputable section

/-- A314776: Coordination sequence Gal.6.478.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314776.P3434978247879640605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A314776 (n : ℕ) : ℤ :=
  A314776.P3434978247879640605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A314776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314825.P2531780756375799267

`A315517(n)-n`
-/

namespace A314825.P2531780756375799267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - (n : ℤ)

end

end A314825.P2531780756375799267

noncomputable section

/-- A314825: Coordination sequence Gal.6.118.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314825.P2531780756375799267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A314825 (n : ℕ) : ℤ :=
  A314825.P2531780756375799267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A314825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314830.P17814670870789309722

`A301672(n)+A004396(A004525(n))`
-/

namespace A314830.P17814670870789309722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A004396 (A004525 n).toNat

end

end A314830.P17814670870789309722

noncomputable section

/-- A314830: Coordination sequence Gal.6.150.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314830.P17814670870789309722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A314830 (n : ℕ) : ℤ :=
  A314830.P17814670870789309722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A314830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314836.P16168506338930918816

`abs(A008591(n)-A312933(n))`
-/

namespace A314836.P16168506338930918816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A312933 n|

end

end A314836.P16168506338930918816

noncomputable section

/-- A314836: Coordination sequence Gal.6.131.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314836.P16168506338930918816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A314836 (n : ℕ) : ℤ :=
  A314836.P16168506338930918816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A314836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314847.P14702112134639075295

`A301291(n)+Δ[A011865(n)]`
-/

namespace A314847.P14702112134639075295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + (f1 (n + 1) - f1 n)

end

end A314847.P14702112134639075295

noncomputable section

/-- A314847: Coordination sequence Gal.6.193.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314847.P14702112134639075295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A314847 (n : ℕ) : ℤ :=
  A314847.P14702112134639075295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A314847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314886.P4715699633682166519

`A008574(n)+A004525(A047263(n+1))`
-/

namespace A314886.P4715699633682166519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A047263 (n + 1)).toNat

end

end A314886.P4715699633682166519

noncomputable section

/-- A314886: Coordination sequence Gal.5.114.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314886.P4715699633682166519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2420 terms. -/
def A314886 (n : ℕ) : ℤ :=
  A314886.P4715699633682166519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2420 terms. -/
def A314886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314941.P1130173180913522709

`A008574(n)+n-A077814(n)`
-/

namespace A314941.P1130173180913522709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A077814 n)

end

end A314941.P1130173180913522709

noncomputable section

/-- A314941: Coordination sequence Gal.3.41.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314941.P1130173180913522709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314941 (n : ℕ) : ℤ :=
  A314941.P1130173180913522709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315020.P9897744658843174856

`A314829(n)+Δ[A011861(n)]`
-/

namespace A315020.P9897744658843174856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + (f1 (n + 1) - f1 n)

end

end A315020.P9897744658843174856

noncomputable section

/-- A315020: Coordination sequence Gal.4.76.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315020.P9897744658843174856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315020 (n : ℕ) : ℤ :=
  A315020.P9897744658843174856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315026.P16538661950104496033

`A301298(n)+Δ[A011865(n)]`
-/

namespace A315026.P16538661950104496033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + (f1 (n + 1) - f1 n)

end

end A315026.P16538661950104496033

noncomputable section

/-- A315026: Coordination sequence Gal.6.337.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315026.P16538661950104496033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A315026 (n : ℕ) : ℤ :=
  A315026.P16538661950104496033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A315026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315032.P2646316992499694624

`A008458(n)-A004525(A047588(2*n+1))`
-/

namespace A315032.P2646316992499694624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A047588 (2 * n + 1)).toNat

end

end A315032.P2646316992499694624

noncomputable section

/-- A315032: Coordination sequence Gal.4.72.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315032.P2646316992499694624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. -/
def A315032 (n : ℕ) : ℤ :=
  A315032.P2646316992499694624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. -/
def A315032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315050.P7466709824589789068

`A042965(n+1+ceil(abs(1-8*n)/3))`
-/

namespace A315050.P7466709824589789068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 ((n + 1 : ℤ) + ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉).toNat

end

end A315050.P7466709824589789068

noncomputable section

/-- A315050: Coordination sequence Gal.5.140.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315050.P7466709824589789068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A315050 (n : ℕ) : ℤ :=
  A315050.P7466709824589789068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A315050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315061.P13322944318282454910

`A311943(n)+A004396(n)`
-/

namespace A315061.P13322944318282454910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311943 n + A004396 n

end

end A315061.P13322944318282454910

noncomputable section

/-- A315061: Coordination sequence Gal.5.130.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315061.P13322944318282454910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. -/
def A315061 (n : ℕ) : ℤ :=
  A315061.P13322944318282454910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. -/
def A315061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315253.P3103999631941486934

`A301298(n)+A046978(A004396(n))`
-/

namespace A315253.P3103999631941486934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A046978 (A004396 n).toNat

end

end A315253.P3103999631941486934

noncomputable section

/-- A315253: Coordination sequence Gal.6.132.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315253.P3103999631941486934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2453 terms. -/
def A315253 (n : ℕ) : ℤ :=
  A315253.P3103999631941486934.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2453 terms. -/
def A315253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315259.P12271899657189483663

`A314829(n)+A004525(n)`
-/

namespace A315259.P12271899657189483663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A004525 n

end

end A315259.P12271899657189483663

noncomputable section

/-- A315259: Coordination sequence Gal.4.54.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315259.P12271899657189483663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A315259 (n : ℕ) : ℤ :=
  A315259.P12271899657189483663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A315259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315273.P1536519079128265166

`A008574(n)+A242062(n)+n`
-/

namespace A315273.P1536519079128265166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A242062 n + (n : ℤ))

end

end A315273.P1536519079128265166

noncomputable section

/-- A315273: Coordination sequence Gal.4.73.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315273.P1536519079128265166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315273 (n : ℕ) : ℤ :=
  A315273.P1536519079128265166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315274.P10788429054278481974

`A301291(n)+A004396(n)`
-/

namespace A315274.P10788429054278481974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004396 n

end

end A315274.P10788429054278481974

noncomputable section

/-- A315274: Coordination sequence Gal.6.354.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315274.P10788429054278481974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315274 (n : ℕ) : ℤ :=
  A315274.P10788429054278481974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315307.P8009587205543921801

`2*A314837(n)-A008574(n)`
-/

namespace A315307.P8009587205543921801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314837 n - A008574 n

end

end A315307.P8009587205543921801

noncomputable section

/-- A315307: Coordination sequence Gal.6.616.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315307.P8009587205543921801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315307 (n : ℕ) : ℤ :=
  A315307.P8009587205543921801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315309.P3002234101704231272

`A060464(A008574(n)+1)`
-/

namespace A315309.P3002234101704231272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A008574 n + 1).toNat

end

end A315309.P3002234101704231272

noncomputable section

/-- A315309: Coordination sequence Gal.4.133.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315309.P3002234101704231272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A315309 (n : ℕ) : ℤ :=
  A315309.P3002234101704231272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A315309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315315.P14535342207384651808

`A314098(n)+A102283(n)`
-/

namespace A315315.P14535342207384651808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314098 n + A102283 n

end

end A315315.P14535342207384651808

noncomputable section

/-- A315315: Coordination sequence Gal.6.198.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315315.P14535342207384651808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A315315 (n : ℕ) : ℤ :=
  A315315.P14535342207384651808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A315315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315537.P7494962949586735905

`ceil(A158676(n)/A017401(n))`
-/

namespace A315537.P7494962949586735905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158676 n : ℚ) / (A017401 n : ℚ)⌉

end

end A315537.P7494962949586735905

noncomputable section

/-- A315537: Coordination sequence Gal.6.641.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315537.P7494962949586735905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A315537 (n : ℕ) : ℤ :=
  A315537.P7494962949586735905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A315537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315598.P6908489528099819853

`A008458(A057357(n+1)+A004525(n))`
-/

namespace A315598.P6908489528099819853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A057357 (n + 1) + A004525 n).toNat

end

end A315598.P6908489528099819853

noncomputable section

/-- A315598: Coordination sequence Gal.3.57.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315598.P6908489528099819853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A315598 (n : ℕ) : ℤ :=
  A315598.P6908489528099819853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A315598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315610.P15546644345769821061

`A311807(n)+A277618(n)`
-/

namespace A315610.P15546644345769821061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A277618 n

end

end A315610.P15546644345769821061

noncomputable section

/-- A315610: Coordination sequence Gal.5.256.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315610.P15546644345769821061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A315610 (n : ℕ) : ℤ :=
  A315610.P15546644345769821061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A315610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315654.P465217877465462128

`A047326(A008574(n)+1)`
-/

namespace A315654.P465217877465462128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047326 (A008574 n + 1).toNat

end

end A315654.P465217877465462128

noncomputable section

/-- A315654: Coordination sequence Gal.3.49.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315654.P465217877465462128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315654 (n : ℕ) : ℤ :=
  A315654.P465217877465462128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315656.P845046901227409408

`A008458(n)-2*A077814(A004396(n))`
-/

namespace A315656.P845046901227409408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A077814 (A004396 n).toNat

end

end A315656.P845046901227409408

noncomputable section

/-- A315656: Coordination sequence Gal.6.667.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315656.P845046901227409408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2231 terms. -/
def A315656 (n : ℕ) : ℤ :=
  A315656.P845046901227409408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2231 terms. -/
def A315656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315668.P3744435370898828979

`A008574(n)+A253262(n)+n`
-/

namespace A315668.P3744435370898828979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A253262 n + (n : ℤ))

end

end A315668.P3744435370898828979

noncomputable section

/-- A315668: Coordination sequence Gal.5.69.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315668.P3744435370898828979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315668 (n : ℕ) : ℤ :=
  A315668.P3744435370898828979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315688.P5634328764802733599

`A219529(n)+A046978(A004396(n))`
-/

namespace A315688.P5634328764802733599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A046978 (A004396 n).toNat

end

end A315688.P5634328764802733599

noncomputable section

/-- A315688: Coordination sequence Gal.6.343.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315688.P5634328764802733599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315688 (n : ℕ) : ℤ :=
  A315688.P5634328764802733599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315691.P16034797588587239357

`A008458(n)-A004524(A081599(n))`
-/

namespace A315691.P16034797588587239357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004524 (A081599 n).toNat

end

end A315691.P16034797588587239357

noncomputable section

/-- A315691: Coordination sequence Gal.5.306.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315691.P16034797588587239357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315691 (n : ℕ) : ℤ :=
  A315691.P16034797588587239357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315693.P3604265791243145229

`A047424(n+1)+A298786(n)+n`
-/

namespace A315693.P3604265791243145229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A298786 n + (n : ℤ))

end

end A315693.P3604265791243145229

noncomputable section

/-- A315693: Coordination sequence Gal.3.50.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315693.P3604265791243145229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315693 (n : ℕ) : ℤ :=
  A315693.P3604265791243145229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315709.P16063274037664583401

`round(A008598(A008574(n))/11)`
-/

namespace A315709.P16063274037664583401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008598 (A008574 n).toNat : ℚ) / 11)

end

end A315709.P16063274037664583401

noncomputable section

/-- A315709: Coordination sequence Gal.6.627.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315709.P16063274037664583401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315709 (n : ℕ) : ℤ :=
  A315709.P16063274037664583401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315734.P13720608880116082785

`A004275(A080734(n+1))`
-/

namespace A315734.P13720608880116082785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A080734 (n + 1)).toNat

end

end A315734.P13720608880116082785

noncomputable section

/-- A315734: Coordination sequence Gal.4.136.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315734.P13720608880116082785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315734 (n : ℕ) : ℤ :=
  A315734.P13720608880116082785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315760.P12014470375947906454

`A004525(n)+A315741(n)-A004396(A004525(n))`
-/

namespace A315760.P12014470375947906454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315741 n - A004396 (A004525 n).toNat)

end

end A315760.P12014470375947906454

noncomputable section

/-- A315760: Coordination sequence Gal.6.638.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315760.P12014470375947906454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315760 (n : ℕ) : ℤ :=
  A315760.P12014470375947906454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315765.P2144105475337667791

`A008458(A047263(n+1)-Δ[A011861(n)])`
-/

namespace A315765.P2144105475337667791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A047263 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A315765.P2144105475337667791

noncomputable section

/-- A315765: Coordination sequence Gal.4.146.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315765.P2144105475337667791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A315765 (n : ℕ) : ℤ :=
  A315765.P2144105475337667791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A315765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315886.P13104561643966838140

`A163980(A047592(n+1))+A004273(n)`
-/

namespace A315886.P13104561643966838140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A047592 (n + 1)).toNat + A004273 n

end

end A315886.P13104561643966838140

noncomputable section

/-- A315886: Coordination sequence Gal.6.527.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315886.P13104561643966838140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2592 terms. -/
def A315886 (n : ℕ) : ℤ :=
  A315886.P13104561643966838140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2592 terms. -/
def A315886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315889.P11537963570160076459

`A008574(round(8*n/5))-2*n`
-/

namespace A315889.P11537963570160076459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))).toNat - (2 * n : ℤ)

end

end A315889.P11537963570160076459

noncomputable section

/-- A315889: Coordination sequence Gal.5.253.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315889.P11537963570160076459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A315889 (n : ℕ) : ℤ :=
  A315889.P11537963570160076459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A315889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316047.P5627716830039855321

`A008486(round(A301694(n)/3))`
-/

namespace A316047.P5627716830039855321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A301694 n : ℚ) / 3)).toNat

end

end A316047.P5627716830039855321

noncomputable section

/-- A316047: Coordination sequence Gal.6.374.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A316047.P5627716830039855321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A316047 (n : ℕ) : ℤ :=
  A316047.P5627716830039855321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A316047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316100.P16865601850055860707

`lt[lt[n, A129527(n)], A000203(n+1)]`
-/

namespace A316100.P16865601850055860707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A316100.P16865601850055860707

noncomputable section

/-- A316100: Numbers k such that k is deficient but k+1 is abundant, that is, a deficient number followed by an abundant number.

Offset 1, canonical program `A316100.P16865601850055860707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1239 terms. -/
def A316100 (n : ℕ) : ℤ :=
  (A316100.P16865601850055860707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1239 terms. -/
def A316100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316160.P13123242928267186193

`2*Δ[A060747(n)*A111297(n)]`
-/

namespace A316160.P13123242928267186193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n * A111297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A316160.P13123242928267186193

noncomputable section

/-- A316160: Number of pairs of compositions of n corresponding to a seaweed algebra of index n-3.

Offset 3, canonical program `A316160.P13123242928267186193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A316160 (n : ℕ) : ℤ :=
  A316160.P13123242928267186193.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A316160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316261.P8405252330229681363

`record[A005993(C(n+2, 2)%(n+1))+n]`
-/

namespace A316261.P8405252330229681363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (Nat.choose (n + 2) 2 % (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316261.P8405252330229681363

noncomputable section

/-- A316261: The number of ways to induce a single pinch on a compact 2-manifold with n handles. (Note: The manifold is embedded in Euclidean 2-space, and each pinch partitions it into at most two submanifolds.)

Offset 0, canonical program `A316261.P8405252330229681363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316261 (n : ℕ) : ℤ :=
  A316261.P8405252330229681363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316317.P4616381369030779267

`A301694(n)-A047599(n+1)`
-/

namespace A316317.P4616381369030779267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A047599 (n + 1)

end

end A316317.P4616381369030779267

noncomputable section

/-- A316317: Coordination sequence for trivalent node in chamfered version of square grid.

Offset 0, canonical program `A316317.P4616381369030779267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316317 (n : ℕ) : ℤ :=
  A316317.P4616381369030779267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316340.P16686177254776734771

`A005206(n)-xor(1, A005206(n+1)-3)`
-/

namespace A316340.P16686177254776734771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n - Int.xor 1 (A005206 (n + 1) - 3)

end

end A316340.P16686177254776734771

noncomputable section

/-- A316340: Image of 1 under repeated application of the morphism 1 -> 12312, 2 -> 341, 3 -> 34134, 4 -> 123.

Offset 0, canonical program `A316340.P16686177254776734771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316340 (n : ℕ) : ℤ :=
  A316340.P16686177254776734771.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271895.P1252302694247036640

`A297695(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A271895.P1252302694247036640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A297695 (n - 1) + a (n - 1)

end

end A271895.P1252302694247036640

noncomputable section

/-- A271895: Expansion of (1-2*x^2) / ( 1-2*x-4*x^2+6*x^3 ).

Offset 0, canonical program `A271895.P1252302694247036640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A271895 (n : ℕ) : ℤ :=
  A271895.P1252302694247036640.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A271895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276218.P7829091822625182265

`A276220(n+2)-1`
-/

namespace A276218.P7829091822625182265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 (n + 2) - 1

end

end A276218.P7829091822625182265

noncomputable section

/-- A276218: Position of n^r in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(6), h > 1, k > 1.

Offset 1, canonical program `A276218.P7829091822625182265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276218 (n : ℕ) : ℤ :=
  A276218.P7829091822625182265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276228.P13249813382779265578

`2*A276229(n)+2*A276229(n+1)+3*A276229(n+2)`
-/

namespace A276228.P13249813382779265578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276229 n + 2 * A276229 (n + 1) + 3 * A276229 (n + 2)

end

end A276228.P13249813382779265578

noncomputable section

/-- A276228: a(n+3) = -a(n+2) - 2*a(n+1) + a(n) with a(0)=3, a(1)=-1, a(2)=-3.

Offset 0, canonical program `A276228.P13249813382779265578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276228 (n : ℕ) : ℤ :=
  A276228.P13249813382779265578.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276678.P5931880311379076223

`A320111(3*n+2)*A320111(n+1)`
-/

namespace A276678.P5931880311379076223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (3 * n + 2) * A320111 (n + 1)

end

end A276678.P5931880311379076223

noncomputable section

/-- A276678: Number of divisors of the n-th pentagonal number.

Offset 1, canonical program `A276678.P5931880311379076223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6720 terms. -/
def A276678 (n : ℕ) : ℤ :=
  A276678.P5931880311379076223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6720 terms. -/
def A276678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276679.P1989300643432771469

`∏{e}[n+1, #+1]*A320111(2*n+1)`
-/

namespace A276679.P1989300643432771469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A320111 (2 * n + 1)

end

end A276679.P1989300643432771469

noncomputable section

/-- A276679: Number of divisors of the n-th hexagonal number.

Offset 1, canonical program `A276679.P1989300643432771469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276679 (n : ℕ) : ℤ :=
  A276679.P1989300643432771469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277865.P11330922218210656486

`A284352(A093178(n))^A124625(n+1)`
-/

namespace A277865.P11330922218210656486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284352 (A093178 n).toNat : ℚ) ^ (A124625 (n + 1) : ℤ)

end

end A277865.P11330922218210656486

noncomputable section

/-- A277865: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277865.P11330922218210656486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277865 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277865.P11330922218210656486.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278357.P14772144764163584461

`∑[A278670(n+1)-A027480(n)]`
-/

namespace A278357.P14772144764163584461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) - A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278357.P14772144764163584461

noncomputable section

/-- A278357: Number of n X 2 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

Offset 1, canonical program `A278357.P14772144764163584461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278357 (n : ℕ) : ℤ :=
  A278357.P14772144764163584461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279775.P51189756934604812

`eq[10, A326746(5*n)]`
-/

namespace A279775.P51189756934604812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279775.P51189756934604812

noncomputable section

/-- A279775: Numbers k such that the sum of digits of 5k equals 10.

Offset 1, canonical program `A279775.P51189756934604812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A279775 (n : ℕ) : ℤ :=
  (A279775.P51189756934604812.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A279775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280392.P11267800191044072622

`A280399(2*(n+1))`
-/

namespace A280392.P11267800191044072622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280399 (2 * (n + 1))

end

end A280392.P11267800191044072622

noncomputable section

/-- A280392: Number of nX2 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A280392.P11267800191044072622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A280392 (n : ℕ) : ℤ :=
  A280392.P11267800191044072622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A280392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283799.P17285316347300436378

`A114752(n+1)*A369082(n)`
-/

namespace A283799.P17285316347300436378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114752 (n + 1) * A369082 n

end

end A283799.P17285316347300436378

noncomputable section

/-- A283799: Number of dispersed Dyck prefixes of length 2n and height n.

Offset 0, canonical program `A283799.P17285316347300436378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A283799 (n : ℕ) : ℤ :=
  A283799.P17285316347300436378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A283799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284065.P4824403330227561387

`eq[4, val(A348783(n), 5)]`
-/

namespace A284065.P4824403330227561387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284065.P4824403330227561387

noncomputable section

/-- A284065: Numbers whose smallest decimal digit is 4.

Offset 1, canonical program `A284065.P4824403330227561387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A284065 (n : ℕ) : ℤ :=
  (A284065.P4824403330227561387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A284065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284066.P17499782741659184884

`eq[5, val(A348783(n), 5)]`
-/

namespace A284066.P17499782741659184884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284066.P17499782741659184884

noncomputable section

/-- A284066: Numbers whose smallest decimal digit is 5.

Offset 1, canonical program `A284066.P17499782741659184884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A284066 (n : ℕ) : ℤ :=
  (A284066.P17499782741659184884.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A284066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284067.P11523281303812964618

`eq[6, val(A348783(n), 5)]`
-/

namespace A284067.P11523281303812964618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284067.P11523281303812964618

noncomputable section

/-- A284067: Numbers whose smallest decimal digit is 6.

Offset 1, canonical program `A284067.P11523281303812964618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A284067 (n : ℕ) : ℤ :=
  (A284067.P11523281303812964618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A284067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284389.P815293320764787049

`abs(1-(A284393(floor(n/2)+1)+n))+1`
-/

namespace A284389.P815293320764787049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A284393 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n : ℤ))| + 1

end

end A284389.P815293320764787049

noncomputable section

/-- A284389: Positions of 0 in A284388; complement of A284390.

Offset 1, canonical program `A284389.P815293320764787049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284389 (n : ℕ) : ℤ :=
  A284389.P815293320764787049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284390.P9301026201937159324

`1+A284393(n+2)`
-/

namespace A284390.P9301026201937159324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A284393 (n + 2)

end

end A284390.P9301026201937159324

noncomputable section

/-- A284390: Positions of 1 in A284388; complement of A284389.

Offset 1, canonical program `A284390.P9301026201937159324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284390 (n : ℕ) : ℤ :=
  A284390.P9301026201937159324.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284392.P11541041188866984198

`A284393(A008619(n)+1)+1+n`
-/

namespace A284392.P11541041188866984198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (A008619 n + 1).toNat + 1 + (n : ℤ)

end

end A284392.P11541041188866984198

noncomputable section

/-- A284392: Positions of 0 in A284391; complement of A284393.

Offset 1, canonical program `A284392.P11541041188866984198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284392 (n : ℕ) : ℤ :=
  A284392.P11541041188866984198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284674.P839106522253429785

`char[A284676(n+1)-1]`
-/

namespace A284674.P839106522253429785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284674.P839106522253429785

noncomputable section

/-- A284674: 0-limiting word of the morphism 0->1, 1-> 0111.

Offset 1, canonical program `A284674.P839106522253429785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284674 (n : ℕ) : ℤ :=
  (A284674.P839106522253429785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285613.P3860841327362332497

`lcm(A285612(n), A286508(n))`
-/

namespace A285613.P3860841327362332497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285612 n) (A286508 n)

end

end A285613.P3860841327362332497

noncomputable section

/-- A285613: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285613.P3860841327362332497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285613 (n : ℕ) : ℤ :=
  (A285613.P3860841327362332497.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286993.P11468751688728453655

`char[A286995(n+1)-1]`
-/

namespace A286993.P11468751688728453655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286995 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286993.P11468751688728453655

noncomputable section

/-- A286993: {0->000, 111->1}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286993.P11468751688728453655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286993 (n : ℕ) : ℤ :=
  (A286993.P11468751688728453655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288698.P14992563560725253655

`A288700(n)^log2(10)`
-/

namespace A288698.P14992563560725253655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A288700 n : ℝ) ^ (Real.logb 2 (10 : ℝ))

end

end A288698.P14992563560725253655

noncomputable section

/-- A288698: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288698.P14992563560725253655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A288698 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A288698.P14992563560725253655.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A288698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290070.P6745444455141305829

`A290111(n)-n%2`
-/

namespace A290070.P6745444455141305829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290111 n - ((n % 2 : ℕ) : ℤ)

end

end A290070.P6745444455141305829

noncomputable section

/-- A290070: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290070.P6745444455141305829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290070 (n : ℕ) : ℤ :=
  A290070.P6745444455141305829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291196.P12246191278883837724

`Δ[Δ[n-A338020(n+2)]]`
-/

namespace A291196.P12246191278883837724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A338020 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291196.P12246191278883837724

noncomputable section

/-- A291196: Third differences of {Pi*n^2}, fractional part of Pi*n^2.

Offset 1, canonical program `A291196.P12246191278883837724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A291196 (n : ℕ) : ℤ :=
  A291196.P12246191278883837724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A291196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291271.P2466136297381718599

`A291330(n+2)/2`
-/

namespace A291271.P2466136297381718599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291330 (n + 2) : ℚ) / 2

end

end A291271.P2466136297381718599

noncomputable section

/-- A291271: The arithmetic function v_4(n,2).

Offset 2, canonical program `A291271.P2466136297381718599`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291330, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291271.P2466136297381718599.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291330, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292644.P5977700411805561195

`comp[A292645(n+1)-1]+1`
-/

namespace A292644.P5977700411805561195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292645 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292644.P5977700411805561195

noncomputable section

/-- A292644: Rank of (6-r)*n when all the numbers (6-r)*j and (6+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292644.P5977700411805561195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292644 (n : ℕ) : ℤ :=
  (A292644.P5977700411805561195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293234.P5764454376919862480

`∑{d}[n+1, A344617(#)]`
-/

namespace A293234.P5764454376919862480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344617 d

end

end A293234.P5764454376919862480

noncomputable section

/-- A293234: a(n) is the number of proper divisors of n that are square.

Offset 1, canonical program `A293234.P5764454376919862480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293234 (n : ℕ) : ℤ :=
  A293234.P5764454376919862480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293335.P20930666671311790

`∑[A293336(abs(1-n))]`
-/

namespace A293335.P20930666671311790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293336 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293335.P20930666671311790

noncomputable section

/-- A293335: Least integer k such that k/2^n > sqrt(1/5).

Offset 0, canonical program `A293335.P20930666671311790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A293335 (n : ℕ) : ℤ :=
  A293335.P20930666671311790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A293335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294092.P9409228317905178263

`∩[A142198(n+1), A295835(n+1)]`
-/

namespace A294092.P9409228317905178263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P9409228317905178263

noncomputable section

/-- A294092: Numbers k == 119 (mod 120) such that 2^((k-1)/2), 3^((k-1)/2) and 5^((k-1)/2) are congruent to 1 (mod k).

Offset 1, canonical program `A294092.P9409228317905178263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A294092 (n : ℕ) : ℤ :=
  (A294092.P9409228317905178263.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A294092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294245.P1504552052113873009

`A294246(2*n+1)-∑[lcm(n, -1%∏{e}[n, #])]`
-/

namespace A294245.P1504552052113873009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294246 (2 * n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A294245.P1504552052113873009

noncomputable section

/-- A294245: Sum of the larger parts of the partitions of 2n into two parts with larger part nonsquarefree.

Offset 1, canonical program `A294245.P1504552052113873009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294245 (n : ℕ) : ℤ :=
  A294245.P1504552052113873009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295506.P4264135978440819762

`∑{d}[n+1, A007427(#)*A339685((n+1)/#)]`
-/

namespace A295506.P4264135978440819762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339685 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295506.P4264135978440819762

noncomputable section

/-- A295506: a(n) = Sum_{d|n} mu(n/d)*5^(d-1).

Offset 1, canonical program `A295506.P4264135978440819762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A295506 (n : ℕ) : ℤ :=
  A295506.P4264135978440819762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A295506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298215.P6096607446506039463

`A304349(n+1)+and(-2, 2^n)`
-/

namespace A298215.P6096607446506039463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304349 (n + 1) + Int.land (-2) (2 ^ n : ℤ)

end

end A298215.P6096607446506039463

noncomputable section

/-- A298215: Number of nX2 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

Offset 1, canonical program `A298215.P6096607446506039463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A298215 (n : ℕ) : ℤ :=
  A298215.P6096607446506039463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A298215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300909.P640743007146312883

`∑{d}[n+1, #*A374016(#)]`
-/

namespace A300909.P640743007146312883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374016 d

end

end A300909.P640743007146312883

noncomputable section

/-- A300909: Sum of 4th powers dividing n.

Offset 1, canonical program `A300909.P640743007146312883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300909 (n : ℕ) : ℤ :=
  A300909.P640743007146312883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306979.P3142410444248294790

`A397768(a(n-1))` with `a(0)=0`
-/

namespace A306979.P3142410444248294790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A397768 (a (n - 1)).toNat

end

end A306979.P3142410444248294790

noncomputable section

/-- A306979: a(1) = 0; a(n) is the sum of powers of 2 where the exponents are the digits of a(n-1).

Offset 1, canonical program `A306979.P3142410444248294790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306979 (n : ℕ) : ℤ :=
  A306979.P3142410444248294790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311088.P16529327285930187099

`A046978(n)+A313090(n)-n`
-/

namespace A311088.P16529327285930187099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A313090 n - (n : ℤ))

end

end A311088.P16529327285930187099

noncomputable section

/-- A311088: Coordination sequence Gal.4.25.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311088.P16529327285930187099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A311088 (n : ℕ) : ℤ :=
  A311088.P16529327285930187099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A311088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311634.P232310208684928047

`A313568(n)-A253262(n)`
-/

namespace A311634.P232310208684928047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n - A253262 n

end

end A311634.P232310208684928047

noncomputable section

/-- A311634: Coordination sequence Gal.6.233.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311634.P232310208684928047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A311634 (n : ℕ) : ℤ :=
  A311634.P232310208684928047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A311634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314149.P1429782019199352520

`abs(A008592(n)-A314837(n))`
-/

namespace A314149.P1429782019199352520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314837 n|

end

end A314149.P1429782019199352520

noncomputable section

/-- A314149: Coordination sequence Gal.6.620.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314149.P1429782019199352520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. -/
def A314149 (n : ℕ) : ℤ :=
  A314149.P1429782019199352520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. -/
def A314149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314692.P15104501043436561296

`A342851(2*n+1)+A067251(2*n+1)`
-/

namespace A314692.P15104501043436561296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (2 * n + 1) + A067251 (2 * n + 1)

end

end A314692.P15104501043436561296

noncomputable section

/-- A314692: Coordination sequence Gal.5.81.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314692.P15104501043436561296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. -/
def A314692 (n : ℕ) : ℤ :=
  A314692.P15104501043436561296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. -/
def A314692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314707.P15635996145671668947

`A314837(n)-Δ[A011864(n)]`
-/

namespace A314707.P15635996145671668947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314837 n - (f1 (n + 1) - f1 n)

end

end A314707.P15635996145671668947

noncomputable section

/-- A314707: Coordination sequence Gal.6.129.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314707.P15635996145671668947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A314707 (n : ℕ) : ℤ :=
  A314707.P15635996145671668947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A314707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272229.P706658860281146822

`eq[A001221(3*n+4), A001221(n+1)]+1`
-/

namespace A272229.P706658860281146822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272229.P706658860281146822

noncomputable section

/-- A272229: Numbers n such that n and 3n+1 have the same number of distinct prime divisors.

Offset 1, canonical program `A272229.P706658860281146822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A272229 (n : ℕ) : ℤ :=
  (A272229.P706658860281146822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A272229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273974.P8732007486651234185

`A000720(A000108(n))`
-/

namespace A273974.P8732007486651234185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000108 n).toNat

end

end A273974.P8732007486651234185

noncomputable section

/-- A273974: Number of primes <= n-th Catalan number.

Offset 0, canonical program `A273974.P8732007486651234185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273974 (n : ℕ) : ℤ :=
  A273974.P8732007486651234185.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275616.P14201198473443466928

`eq[1, gcd(n+1, A001221(n+1))]+1`
-/

namespace A275616.P14201198473443466928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275616.P14201198473443466928

noncomputable section

/-- A275616: Numbers k such that k and omega(k) are relatively prime, where omega(n) (A001221) is the number of distinct prime divisors of n.

Offset 1, canonical program `A275616.P14201198473443466928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275616 (n : ℕ) : ℤ :=
  (A275616.P14201198473443466928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276195.P11905812276051658324

`A000040(A000720(A011545(n)-1)+1)`
-/

namespace A276195.P11905812276051658324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A011545 n - 1).toNat + 1).toNat

end

end A276195.P11905812276051658324

noncomputable section

/-- A276195: Smallest prime >= decimal expansion of Pi truncated to n places (A011545).

Offset 0, canonical program `A276195.P11905812276051658324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276195 (n : ℕ) : ℤ :=
  A276195.P11905812276051658324.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276196.P14246465269572759540

`A000040(A000720(A011543(n)-1)+1)`
-/

namespace A276196.P14246465269572759540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A011543 n - 1).toNat + 1).toNat

end

end A276196.P14246465269572759540

noncomputable section

/-- A276196: Smallest prime >= decimal expansion of e truncated to n places (A011543).

Offset 0, canonical program `A276196.P14246465269572759540`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276196 (n : ℕ) : ℤ :=
  A276196.P14246465269572759540.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277062.P11518591224059598292

`A000720(A000032(n))`
-/

namespace A277062.P11518591224059598292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000032 n).toNat

end

end A277062.P11518591224059598292

noncomputable section

/-- A277062: Number of primes <= n-th Lucas number.

Offset 0, canonical program `A277062.P11518591224059598292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277062 (n : ℕ) : ℤ :=
  A277062.P11518591224059598292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277062.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278100.P13036125497431391876

`A013928((n+1)²)`
-/

namespace A278100.P13036125497431391876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 ((n + 1) ^ 2)

end

end A278100.P13036125497431391876

noncomputable section

/-- A278100: Number of squarefree positive integers less than n^2.

Offset 1, canonical program `A278100.P13036125497431391876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A278100 (n : ℕ) : ℤ :=
  A278100.P13036125497431391876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A278100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280292.P17147228295463227534

`A001414(n+1)-A008472(n+1)`
-/

namespace A280292.P17147228295463227534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A008472 (n + 1)

end

end A280292.P17147228295463227534

noncomputable section

/-- A280292: a(n) = sopfr(n) - sopf(n).

Offset 1, canonical program `A280292.P17147228295463227534`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280292 (n : ℕ) : ℤ :=
  A280292.P17147228295463227534.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280292.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280420.P7252291216696291508

`A007955(A000142(n))`
-/

namespace A280420.P7252291216696291508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000142 n).toNat

end

end A280420.P7252291216696291508

noncomputable section

/-- A280420: Product of divisors of n!.

Offset 0, canonical program `A280420.P7252291216696291508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280420 (n : ℕ) : ℤ :=
  A280420.P7252291216696291508.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283998.P9614756584148287979

`A005187(n)-A283996(n)`
-/

namespace A283998.P9614756584148287979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A283996 n

end

end A283998.P9614756584148287979

noncomputable section

/-- A283998: a(n) = n AND A005187(floor(n/2)), where AND is bitwise-and (A004198).

Offset 0, canonical program `A283998.P9614756584148287979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283998 (n : ℕ) : ℤ :=
  A283998.P9614756584148287979.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284118.P3814757859129945566

`A048250(n+1)-A008472(n+1)`
-/

namespace A284118.P3814757859129945566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A008472 (n + 1)

end

end A284118.P3814757859129945566

noncomputable section

/-- A284118: Sum of nonprime squarefree divisors of n.

Offset 1, canonical program `A284118.P3814757859129945566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284118 (n : ℕ) : ℤ :=
  A284118.P3814757859129945566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284570.P15453039180278878652

`A048691(n+2)-A048691(n+1)`
-/

namespace A284570.P15453039180278878652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 2) - A048691 (n + 1)

end

end A284570.P15453039180278878652

noncomputable section

/-- A284570: a(n) = A000005((n+1)^2) - A000005(n^2).

Offset 1, canonical program `A284570.P15453039180278878652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284570 (n : ℕ) : ℤ :=
  A284570.P15453039180278878652.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284847.P9193682019044104553

`A003159(A004525(n+1))+A004525(n+2)+n`
-/

namespace A284847.P9193682019044104553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A004525 (n + 1)).toNat + (A004525 (n + 2) + (n : ℤ))

end

end A284847.P9193682019044104553

noncomputable section

/-- A284847: Positions of 1 in the {1100->0}-transform of A010060; complement of A284820.

Offset 1, canonical program `A284847.P9193682019044104553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284847 (n : ℕ) : ℤ :=
  A284847.P9193682019044104553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285329.P6445800971562277313

`A013928(∏{p}[n+1, #])`
-/

namespace A285329.P6445800971562277313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A285329.P6445800971562277313

noncomputable section

/-- A285329: a(n) = A013928(A007947(n)).

Offset 1, canonical program `A285329.P6445800971562277313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285329 (n : ℕ) : ℤ :=
  A285329.P6445800971562277313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285879.P12342465036758239665

`∑[A323239(n+1)]`
-/

namespace A285879.P12342465036758239665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P12342465036758239665

noncomputable section

/-- A285879: Number of odd squarefree numbers <= n.

Offset 1, canonical program `A285879.P12342465036758239665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285879 (n : ℕ) : ℤ :=
  A285879.P12342465036758239665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288654.P6836431773425416179

`(1-A001065(n+1))*(A001221(n+1)-3)`
-/

namespace A288654.P6836431773425416179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001065 (n + 1)) * (A001221 (n + 1) - 3)

end

end A288654.P6836431773425416179

noncomputable section

/-- A288654: a(n) = (sigma(n)-n-1)*(3-omega(n)).

Offset 1, canonical program `A288654.P6836431773425416179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288654 (n : ℕ) : ℤ :=
  A288654.P6836431773425416179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289495.P8621251357975722322

`A000720(A008706(n+1))-A000720(A008706(n+1)-(n+1))`
-/

namespace A289495.P8621251357975722322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (n + 1)).toNat - A000720 (A008706 (n + 1) - (n + 1 : ℤ)).toNat

end

end A289495.P8621251357975722322

noncomputable section

/-- A289495: Number of primes in the interval [4n, 5n].

Offset 1, canonical program `A289495.P8621251357975722322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289495 (n : ℕ) : ℤ :=
  A289495.P8621251357975722322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289498.P17823275358435890981

`A000720(8*(n+1))-A000720(7*n+6)`
-/

namespace A289498.P17823275358435890981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (8 * (n + 1)) - A000720 (7 * n + 6)

end

end A289498.P17823275358435890981

noncomputable section

/-- A289498: Number of primes in the interval [7n, 8n].

Offset 1, canonical program `A289498.P17823275358435890981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289498 (n : ℕ) : ℤ :=
  A289498.P17823275358435890981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292410.P3803211021438617920

`A053645(A016754(n))`
-/

namespace A292410.P3803211021438617920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A016754 n).toNat

end

end A292410.P3803211021438617920

noncomputable section

/-- A292410: Difference between (2n+1)^2 and highest power of 2 less than or equal to (2n+1)^2.

Offset 0, canonical program `A292410.P3803211021438617920`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292410 (n : ℕ) : ℤ :=
  A292410.P3803211021438617920.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293328.P1628811310292705027

`A293327(n)+1`
-/

namespace A293328.P1628811310292705027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293327 n + 1

end

end A293328.P1628811310292705027

noncomputable section

/-- A293328: Least integer k such that k/2^n > sqrt(1/3).

Offset 0, canonical program `A293328.P1628811310292705027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293328 (n : ℕ) : ℤ :=
  A293328.P1628811310292705027.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293331.P14628135211363865377

`A221942(2*n)`
-/

namespace A293331.P14628135211363865377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221942 (2 * n)

end

end A293331.P14628135211363865377

noncomputable section

/-- A293331: Greatest integer k such that k/2^n < sqrt(5).

Offset 0, canonical program `A293331.P14628135211363865377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293331 (n : ℕ) : ℤ :=
  A293331.P14628135211363865377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293339.P11332361614021270041

`A293341(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A293339.P11332361614021270041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A293341 (n - 1) + a (n - 1)

end

end A293339.P11332361614021270041

noncomputable section

/-- A293339: Greatest integer k such that k/2^n < 1/e.

Offset 0, canonical program `A293339.P11332361614021270041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A293339 (n : ℕ) : ℤ :=
  A293339.P11332361614021270041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A293339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293353.P6349425847895213126

`A293352(n)+1`
-/

namespace A293353.P6349425847895213126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293352 n + 1

end

end A293353.P6349425847895213126

noncomputable section

/-- A293353: Least integer k such that k/2^n > Euler's constant (0.577216...).

Offset 0, canonical program `A293353.P6349425847895213126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293353 (n : ℕ) : ℤ :=
  A293353.P6349425847895213126.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293833.P17653983058469119188

`Δ[A000720(A020330(n+1))]`
-/

namespace A293833.P17653983058469119188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P17653983058469119188

noncomputable section

/-- A293833: Number of primes p with A020330(n) < p < A020330(n+1).

Offset 1, canonical program `A293833.P17653983058469119188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A293833 (n : ℕ) : ℤ :=
  A293833.P17653983058469119188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A293833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294016.P4065653788084831294

`A024916(n+1)-A004125(n+1)`
-/

namespace A294016.P4065653788084831294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A004125 (n + 1)

end

end A294016.P4065653788084831294

noncomputable section

/-- A294016: a(n) = sum of all divisors of all positive integers <= n, minus the sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

Offset 1, canonical program `A294016.P4065653788084831294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A024916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294016 (n : ℕ) : ℤ :=
  A294016.P4065653788084831294.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A024916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A294016.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294277.P10908964768847956680

`lt[A001221(n+1), A001221(n+2)]+1`
-/

namespace A294277.P10908964768847956680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A294277.P10908964768847956680

noncomputable section

/-- A294277: Numbers k such that omega(k) < omega(k+1) (where omega(m) = A001221(m), the number of distinct primes dividing m).

Offset 1, canonical program `A294277.P10908964768847956680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294277 (n : ℕ) : ℤ :=
  (A294277.P10908964768847956680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294936.P10769920400480544505

`1-A294934(n+1)`
-/

namespace A294936.P10769920400480544505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294934 (n + 1)

end

end A294936.P10769920400480544505

noncomputable section

/-- A294936: Characteristic function for nondeficient numbers (A023196): a(n) = 1 if A001065(n) >= n, 0 otherwise.

Offset 1, canonical program `A294936.P10769920400480544505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294936 (n : ℕ) : ℤ :=
  A294936.P10769920400480544505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294937.P16064831210993750001

`1-A294935(n+1)`
-/

namespace A294937.P16064831210993750001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294935 (n + 1)

end

end A294937.P16064831210993750001

noncomputable section

/-- A294937: Characteristic function for abundant numbers (A005101): a(n) = 1 if A001065(n) > n, 0 otherwise.

Offset 1, canonical program `A294937.P16064831210993750001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294937 (n : ℕ) : ℤ :=
  A294937.P16064831210993750001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295009.P8188260097870525443

`lt[0, A086017(n)]`
-/

namespace A295009.P8188260097870525443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295009.P8188260097870525443

noncomputable section

/-- A295009: Numbers k such that the largest digit of k^2 is 9.

Offset 1, canonical program `A295009.P8188260097870525443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5541 terms. -/
def A295009 (n : ℕ) : ℤ :=
  (A295009.P8188260097870525443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5541 terms. -/
def A295009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295127.P883789148021260298

`A023900(n+1)/A126864(n+1)`
-/

namespace A295127.P883789148021260298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (A126864 (n + 1) : ℚ)

end

end A295127.P883789148021260298

noncomputable section

/-- A295127: Numerator of Sum_{d|n} mu(n/d)/d, where mu is the Möbius function A008683.

Offset 1, canonical program `A295127.P883789148021260298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295127.P883789148021260298.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295294.P6897836306640432770

`A000203(n+1)/A092261(n+1)`
-/

namespace A295294.P6897836306640432770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ)

end

end A295294.P6897836306640432770

noncomputable section

/-- A295294: Sum of the divisors of the powerful part of n: a(n) = A000203(A057521(n)).

Offset 1, canonical program `A295294.P6897836306640432770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295294 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295294.P6897836306640432770.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295295.P16435286395865266277

`A048250(n+1)/A092261(n+1)`
-/

namespace A295295.P16435286395865266277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ)

end

end A295295.P16435286395865266277

noncomputable section

/-- A295295: Sum of squarefree divisors of the powerful part of n: a(n) = A048250(A057521(n)).

Offset 1, canonical program `A295295.P16435286395865266277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A092261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295295.P16435286395865266277.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A092261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295297.P6702425587483154128

`A294899(n+1)%2`
-/

namespace A295297.P6702425587483154128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294899 (n + 1)) 2

end

end A295297.P6702425587483154128

noncomputable section

/-- A295297: a(n) = (A000120(n) + A000203(n)) mod 2.

Offset 1, canonical program `A295297.P6702425587483154128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295297 (n : ℕ) : ℤ :=
  A295297.P6702425587483154128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295297.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A295884.P13042322752059309617

`A295659(n+1)-A295883(n+1)`
-/

namespace A295884.P13042322752059309617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (n + 1) - A295883 (n + 1)

end

end A295884.P13042322752059309617

noncomputable section

/-- A295884: Number of exponents larger than 3 in the prime factorization of n.

Offset 1, canonical program `A295884.P13042322752059309617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295659, A295883, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295884 (n : ℕ) : ℤ :=
  A295884.P13042322752059309617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295659, A295883, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297402.P15825475486828403093

`A074723(n+1)/2`
-/

namespace A297402.P15825475486828403093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074723 (n + 1) : ℚ) / 2

end

end A297402.P15825475486828403093

noncomputable section

/-- A297402: a(n) = gcd_{k=1..n} (prime(k+1)^n-1)/2.

Offset 1, canonical program `A297402.P15825475486828403093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297402 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A297402.P15825475486828403093.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300222.P16406266268068730929

`2*A005836(1+A289814(n))`
-/

namespace A300222.P16406266268068730929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (1 + A289814 n).toNat

end

end A300222.P16406266268068730929

noncomputable section

/-- A300222: In ternary (base-3) representation of n, replace 1's with 0's.

Offset 0, canonical program `A300222.P16406266268068730929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300222 (n : ℕ) : ℤ :=
  A300222.P16406266268068730929.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303975.P521446761794991497

`∑{e}[∏{p}[∏{p}[n+1, A000720(#)], #], #]`
-/

namespace A303975.P521446761794991497
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A000720 p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A303975.P521446761794991497

noncomputable section

/-- A303975: Number of distinct prime factors in the product of prime indices of n.

Offset 1, canonical program `A303975.P521446761794991497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303975 (n : ℕ) : ℤ :=
  (A303975.P521446761794991497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304483.P13524084843560642705

`A000720(n+1)*A000720(2*n+1)`
-/

namespace A304483.P13524084843560642705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A000720 (2 * n + 1)

end

end A304483.P13524084843560642705

noncomputable section

/-- A304483: a(n) = pi(n)*pi(2n), where pi is A000720: the prime counting function.

Offset 1, canonical program `A304483.P13524084843560642705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304483 (n : ℕ) : ℤ :=
  A304483.P13524084843560642705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306328.P7079305387791710767

`A008472(n+1)^A005361(n+1)`
-/

namespace A306328.P7079305387791710767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) ^ (A005361 (n + 1) : ℤ)

end

end A306328.P7079305387791710767

noncomputable section

/-- A306328: If n = Product (p_j^k_j) then a(n) = Sum (p_j)^Product (k_j).

Offset 1, canonical program `A306328.P7079305387791710767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306328.P7079305387791710767.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307152.P11500915941825313180

`floor((A002144(n+1)+19)/24)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A307152.P11500915941825313180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002144 (n + 1) + 19 : ℚ) / 24⌋

end

end A307152.P11500915941825313180

noncomputable section

/-- A307152: a(n) = floor((A002144(n)+19)/24).

Offset 1, canonical program `A307152.P11500915941825313180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307152 (n : ℕ) : ℤ :=
  A307152.P11500915941825313180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307533.P10396454960199393413

`p?[n*A001221(n+2)-n]`
-/

namespace A307533.P10396454960199393413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307533.P10396454960199393413

noncomputable section

/-- A307533: Primes p such that p+2 has exactly two distinct prime factors.

Offset 1, canonical program `A307533.P10396454960199393413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A307533 (n : ℕ) : ℤ :=
  A307533.P10396454960199393413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A307533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308360.P14482252966188849651

`A064549(n+1)^(A005361(n+1)/2)`
-/

namespace A308360.P14482252966188849651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℝ) ^ ((A005361 (n + 1) : ℚ) / 2 : ℝ)

end

end A308360.P14482252966188849651

noncomputable section

/-- A308360: Product of positive divisors d of n that are divisible by every prime that divides n.

Offset 1, canonical program `A308360.P14482252966188849651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A308360 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308360.P14482252966188849651.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A308360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309511.P536721311039358920

`A007590(A110654(n))+A056827(n)%2`
-/

namespace A309511.P536721311039358920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A110654 n).toNat + Int.tmod (A056827 n) 2

end

end A309511.P536721311039358920

noncomputable section

/-- A309511: Number of odd parts in the partitions of n into 3 parts.

Offset 0, canonical program `A309511.P536721311039358920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5673 terms. -/
def A309511 (n : ℕ) : ℤ :=
  A309511.P536721311039358920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5673 terms. -/
def A309511.provenance : SequenceMachineLib.Provenance := .conjectured

