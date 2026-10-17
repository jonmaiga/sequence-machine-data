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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A354100: The 3-adic valuation of sigma, sum of divisors function.

The programs for A354100, the canonical program `A354100.P4044012500781623814` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354100 has offset 1).

The definition of A354100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354100.P4044012500781623814

`val(∑{d}[n+1, #], 3)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A354100

/-- `val(∑{d}[n+1, #], 3)` -/
def P4044012500781623814.Spec : Prop :=
  ∀ n, (P4044012500781623814.a n : ℤ) = A354100 (n + 1)

theorem P4044012500781623814.correct : P4044012500781623814.Spec := by
  intro n
  simp only [A354100, Nat.add_sub_cancel]

end A354100

/-! ## A354100.P10958665469851817442

`val(Δ[A160664(n)], 3)`
-/

namespace A354100.P10958665469851817442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A354100.P10958665469851817442

namespace A354100

/-- `val(Δ[A160664(n)], 3)` -/
def P10958665469851817442.Spec : Prop :=
  ∀ n, (P10958665469851817442.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P15076531920327924345

`val(A350073(n+1), 2)`
-/

namespace A354100.P15076531920327924345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A350073 (n + 1)).toNat 2

end

end A354100.P15076531920327924345

namespace A354100

/-- `val(A350073(n+1), 2)` -/
def P15076531920327924345.Spec : Prop :=
  ∀ n, (P15076531920327924345.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P5705419786399614414

`val(A000203(n+1), 3)`
-/

namespace A354100.P5705419786399614414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1)).toNat 3

end

end A354100.P5705419786399614414

namespace A354100

/-- `val(A000203(n+1), 3)` -/
def P5705419786399614414.Spec : Prop :=
  ∀ n, (P5705419786399614414.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P11536812342066138632

`val(A001160(n+1), 3)`
-/

namespace A354100.P11536812342066138632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001160 (n + 1)).toNat 3

end

end A354100.P11536812342066138632

namespace A354100

/-- `val(A001160(n+1), 3)` -/
def P11536812342066138632.Spec : Prop :=
  ∀ n, (P11536812342066138632.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P4652982811646968365

`val(A013955(n+1), 3)`
-/

namespace A354100.P4652982811646968365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013955 (n + 1)).toNat 3

end

end A354100.P4652982811646968365

namespace A354100

/-- `val(A013955(n+1), 3)` -/
def P4652982811646968365.Spec : Prop :=
  ∀ n, (P4652982811646968365.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P9702516685831305607

`val(A013959(n+1), 3)`
-/

namespace A354100.P9702516685831305607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013959 (n + 1)).toNat 3

end

end A354100.P9702516685831305607

namespace A354100

/-- `val(A013959(n+1), 3)` -/
def P9702516685831305607.Spec : Prop :=
  ∀ n, (P9702516685831305607.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P14905763359986922385

`val(A013961(n+1), 3)`
-/

namespace A354100.P14905763359986922385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013961 (n + 1)).toNat 3

end

end A354100.P14905763359986922385

namespace A354100

/-- `val(A013961(n+1), 3)` -/
def P14905763359986922385.Spec : Prop :=
  ∀ n, (P14905763359986922385.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P7024777437394282657

`val(A046913(n+1), 3)`
-/

namespace A354100.P7024777437394282657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046913 (n + 1)).toNat 3

end

end A354100.P7024777437394282657

namespace A354100

/-- `val(A046913(n+1), 3)` -/
def P7024777437394282657.Spec : Prop :=
  ∀ n, (P7024777437394282657.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P5510967130912155212

`val(A074400(n+1), 3)`
-/

namespace A354100.P5510967130912155212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074400 (n + 1)).toNat 3

end

end A354100.P5510967130912155212

namespace A354100

/-- `val(A074400(n+1), 3)` -/
def P5510967130912155212.Spec : Prop :=
  ∀ n, (P5510967130912155212.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P3674157740441163266

`val(A116607(n+1), 3)`
-/

namespace A354100.P3674157740441163266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A116607 (n + 1)).toNat 3

end

end A354100.P3674157740441163266

namespace A354100

/-- `val(A116607(n+1), 3)` -/
def P3674157740441163266.Spec : Prop :=
  ∀ n, (P3674157740441163266.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P11414454084998517029

`val(A144613(n+1), 3)`
-/

namespace A354100.P11414454084998517029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A144613 (n + 1)).toNat 3

end

end A354100.P11414454084998517029

namespace A354100

/-- `val(A144613(n+1), 3)` -/
def P11414454084998517029.Spec : Prop :=
  ∀ n, (P11414454084998517029.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P13526768666810473859

`val(A161942(n+1), 3)`
-/

namespace A354100.P13526768666810473859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161942 (n + 1)).toNat 3

end

end A354100.P13526768666810473859

namespace A354100

/-- `val(A161942(n+1), 3)` -/
def P13526768666810473859.Spec : Prop :=
  ∀ n, (P13526768666810473859.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P11921635311923117277

`val(A229335(n+1), 3)`
-/

namespace A354100.P11921635311923117277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A229335 (n + 1)).toNat 3

end

end A354100.P11921635311923117277

namespace A354100

/-- `val(A229335(n+1), 3)` -/
def P11921635311923117277.Spec : Prop :=
  ∀ n, (P11921635311923117277.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P2784822815542494692

`val(A239050(n+1), 3)`
-/

namespace A354100.P2784822815542494692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A239050 (n + 1)).toNat 3

end

end A354100.P2784822815542494692

namespace A354100

/-- `val(A239050(n+1), 3)` -/
def P2784822815542494692.Spec : Prop :=
  ∀ n, (P2784822815542494692.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P14020129817823301140

`val(A274535(n+1), 3)`
-/

namespace A354100.P14020129817823301140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A274535 (n + 1)).toNat 3

end

end A354100.P14020129817823301140

namespace A354100

/-- `val(A274535(n+1), 3)` -/
def P14020129817823301140.Spec : Prop :=
  ∀ n, (P14020129817823301140.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P15523765409061401518

`val(A283123(n+1), 3)`
-/

namespace A354100.P15523765409061401518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A283123 (n + 1)).toNat 3

end

end A354100.P15523765409061401518

namespace A354100

/-- `val(A283123(n+1), 3)` -/
def P15523765409061401518.Spec : Prop :=
  ∀ n, (P15523765409061401518.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P4611761812144519581

`val(A319527(n+1), 3)`
-/

namespace A354100.P4611761812144519581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319527 (n + 1)).toNat 3

end

end A354100.P4611761812144519581

namespace A354100

/-- `val(A319527(n+1), 3)` -/
def P4611761812144519581.Spec : Prop :=
  ∀ n, (P4611761812144519581.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P2125710418401656813

`val(A319528(n+1), 3)`
-/

namespace A354100.P2125710418401656813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319528 (n + 1)).toNat 3

end

end A354100.P2125710418401656813

namespace A354100

/-- `val(A319528(n+1), 3)` -/
def P2125710418401656813.Spec : Prop :=
  ∀ n, (P2125710418401656813.a n : ℤ) = A354100 (n + 1)

end A354100

/-! ## A354100.P11559928274230585119

`val(A072861(n+1), 9)`
-/

namespace A354100.P11559928274230585119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072861 (n + 1)).toNat 9

end

end A354100.P11559928274230585119

namespace A354100

/-- `val(A072861(n+1), 9)` -/
def P11559928274230585119.Spec : Prop :=
  ∀ n, (P11559928274230585119.a n : ℤ) = A354100 (n + 1)

end A354100

/-!
# A354101: a(n) = phi(A267099(n)) - phi(n), where A267099 is fully multiplicative involution swapping the positions of 4k+1 and 4k+3 primes, and phi is Euler totient function.

The programs for A354101, there is no canonical definition to state claims against.
-/

/-! ## A354101.P7826080890728065674

`A354102(n+1)-A000010(n+1)`
-/

namespace A354101.P7826080890728065674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (n + 1) - A000010 (n + 1)

end

end A354101.P7826080890728065674

/-! ## A354101.P15640525671308343784

`A354102(n+1)-sqrt(A127473(n+1))`
-/

namespace A354101.P15640525671308343784
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A354102 (n + 1) : ℝ) - Real.sqrt (A127473 (n + 1) : ℝ)

end

end A354101.P15640525671308343784

/-! ## A354101.P14955880852409658710

`A354102(n+1)+1-A039649(n+1)`
-/

namespace A354101.P14955880852409658710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (n + 1) + (1 - A039649 (n + 1))

end

end A354101.P14955880852409658710

/-! ## A354101.P11345667300838572005

`A354102(n+1)-A053191(n+1)%(n+2)`
-/

namespace A354101.P11345667300838572005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (n + 1) - Int.tmod (A053191 (n + 1)) (n + 2 : ℤ)

end

end A354101.P11345667300838572005

/-! ## A354101.P6598781375268159093

`A354102(n+1)+A024000(A039649(n+1))`
-/

namespace A354101.P6598781375268159093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (n + 1) + A024000 (A039649 (n + 1)).toNat

end

end A354101.P6598781375268159093

/-! ## A354101.P1379266101271922922

`A023900(n+1)+A354102(n+1)-A319340(n+1)`
-/

namespace A354101.P1379266101271922922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) + (A354102 (n + 1) - A319340 (n + 1))

end

end A354101.P1379266101271922922

/-! ## A354101.P643448875875609680

`A354190(n+1)-(A354191(n+1)+A000010(n+1))`
-/

namespace A354101.P643448875875609680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354190 (n + 1) - (A354191 (n + 1) + A000010 (n + 1))

end

end A354101.P643448875875609680

/-! ## A354101.P14704899649973438503

`A353636(n+1)+A354102(n+1)-A062401(n+1)`
-/

namespace A354101.P14704899649973438503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1) + (A354102 (n + 1) - A062401 (n + 1))

end

end A354101.P14704899649973438503

/-! ## A354101.P7030984027486480852

`A024000(A039649(n+1))+A354105(n+1)-A354104(n+1)`
-/

namespace A354101.P7030984027486480852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A039649 (n + 1)).toNat + (A354105 (n + 1) - A354104 (n + 1))

end

end A354101.P7030984027486480852

/-! ## A354101.P5493619644845989027

`A024000(A039649(n+1))+A354190(n+1)-A354191(n+1)`
-/

namespace A354101.P5493619644845989027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A039649 (n + 1)).toNat + (A354190 (n + 1) - A354191 (n + 1))

end

end A354101.P5493619644845989027

/-! ## A354101.P12057288621043653376

`A000010(A267099(n+1))-A000010(n+1)`
-/

namespace A354101.P12057288621043653376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A267099 (n + 1)).toNat - A000010 (n + 1)

end

end A354101.P12057288621043653376

/-! ## A354101.P3697945940876752927

`A024000(A039649(n+1))+A000010(A267099(n+1))`
-/

namespace A354101.P3697945940876752927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A039649 (n + 1)).toNat + A000010 (A267099 (n + 1)).toNat

end

end A354101.P3697945940876752927

/-! ## A354101.P15986038576222157211

`A354102(n+1)-A354102(A267099(n+1))`
-/

namespace A354101.P15986038576222157211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (n + 1) - A354102 (A267099 (n + 1)).toNat

end

end A354101.P15986038576222157211

/-! ## A354101.P18108609090354963593

`A039649(A267099(n+1))-A039649(n+1)`
-/

namespace A354101.P18108609090354963593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A267099 (n + 1)).toNat - A039649 (n + 1)

end

end A354101.P18108609090354963593

/-!
# A354102: a(n) = phi(A267099(n)), where A267099 is fully multiplicative involution swapping the positions of 4k+1 and 4k+3 primes, and phi is Euler totient function.

The programs for A354102, there is no canonical definition to state claims against.
-/

/-! ## A354102.P14551599874872062438

`A354101(n+1)+A000010(n+1)`
-/

namespace A354102.P14551599874872062438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354101 (n + 1) + A000010 (n + 1)

end

end A354102.P14551599874872062438

/-! ## A354102.P5360122969515735800

`A354190(n+1)-A354191(n+1)`
-/

namespace A354102.P5360122969515735800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354190 (n + 1) - A354191 (n + 1)

end

end A354102.P5360122969515735800

/-! ## A354102.P11049907754863328698

`A354105(n+1)-A354104(n+1)`
-/

namespace A354102.P11049907754863328698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354105 (n + 1) - A354104 (n + 1)

end

end A354102.P11049907754863328698

/-! ## A354102.P4620053913582221198

`∑{d}[n+1, A008683(#)*A267099((n+1)/#)]`
-/

namespace A354102.P4620053913582221198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A267099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354102.P4620053913582221198

/-! ## A354102.P3440076215648510852

`∑{d}[n+1, A007427(#)*A354103((n+1)/#)]`
-/

namespace A354102.P3440076215648510852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A354103 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354102.P3440076215648510852

/-! ## A354102.P15198187160318220695

`A000010(A267099(n+1))`
-/

namespace A354102.P15198187160318220695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A267099 (n + 1)).toNat

end

end A354102.P15198187160318220695

/-! ## A354102.P1324680495934135766

`A319340(A267099(n+1))-A354104(n+1)`
-/

namespace A354102.P1324680495934135766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319340 (A267099 (n + 1)).toNat - A354104 (n + 1)

end

end A354102.P1324680495934135766

/-! ## A354102.P10920547377965730188

`A354105(n+1)-A023900(A267099(n+1))`
-/

namespace A354102.P10920547377965730188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354105 (n + 1) - A023900 (A267099 (n + 1)).toNat

end

end A354102.P10920547377965730188

/-! ## A354102.P1370070088628906675

`A055034(A267099(lcm(2, n+1)))`
-/

namespace A354102.P1370070088628906675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A267099 (Nat.lcm 2 (n + 1))).toNat

end

end A354102.P1370070088628906675

/-!
# A354103: a(n) = sigma(A267099(n)), where A267099 is fully multiplicative involution swapping the positions of 4k+1 and 4k+3 primes, and sigma is the sum of divisors function.

The programs for A354103, there is no canonical definition to state claims against.
-/

/-! ## A354103.P1211844797238441437

`∑{d}[n+1, A267099(#)]`
-/

namespace A354103.P1211844797238441437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267099 d

end

end A354103.P1211844797238441437

/-! ## A354103.P15318934584341801884

`∑{d}[A000027(∑{d}[n+1, A354102(#)]), #]`
-/

namespace A354103.P15318934584341801884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f2 n), A354102 d).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A354103.P15318934584341801884

/-! ## A354103.P891585661272764895

`∑{d}[n+1, A000005(#)*A354102((n+1)/#)]`
-/

namespace A354103.P891585661272764895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A354102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354103.P891585661272764895

/-! ## A354103.P1764567426359510723

`A000203(A267099(n+1))`
-/

namespace A354103.P1764567426359510723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A267099 (n + 1)).toNat

end

end A354103.P1764567426359510723

/-! ## A354103.P17685193899591413699

`A000203(∑{d}[n+1, A354102(#)])`
-/

namespace A354103.P17685193899591413699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), A354102 d).toNat

end

end A354103.P17685193899591413699

/-! ## A354103.P2902415688035590304

`A326065(A267099(2*(n+1)))`
-/

namespace A354103.P2902415688035590304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A267099 (2 * (n + 1))).toNat

end

end A354103.P2902415688035590304

/-! ## A354103.P7978936448953278292

`A354102(n+1)+A051612(A267099(n+1))`
-/

namespace A354103.P7978936448953278292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (n + 1) + A051612 (A267099 (n + 1)).toNat

end

end A354103.P7978936448953278292

/-! ## A354103.P16747986111885375427

`A051612(A267099(n+1))+A354105(n+1)-A354104(n+1)`
-/

namespace A354103.P16747986111885375427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A267099 (n + 1)).toNat + (A354105 (n + 1) - A354104 (n + 1))

end

end A354103.P16747986111885375427

/-! ## A354103.P16977112639025842834

`A051612(A267099(n+1))+A354190(n+1)-A354191(n+1)`
-/

namespace A354103.P16977112639025842834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A267099 (n + 1)).toNat + (A354190 (n + 1) - A354191 (n + 1))

end

end A354103.P16977112639025842834

/-!
# A354104: Dirichlet inverse of A354102.

The programs for A354104, there is no canonical definition to state claims against.
-/

/-! ## A354104.P10756311187241511790

`A354105(n+1)-A354102(n+1)`
-/

namespace A354104.P10756311187241511790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354105 (n + 1) - A354102 (n + 1)

end

end A354104.P10756311187241511790

/-! ## A354104.P18206367950637545215

`∏{p}[A267099(n+1), 1-#]`
-/

namespace A354104.P18206367950637545215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))

end

end A354104.P18206367950637545215

/-! ## A354104.P8617909930712333819

`A323407(A267099(∏{p}[n+1, #]))`
-/

namespace A354104.P8617909930712333819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323407 (A267099 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A354104.P8617909930712333819

/-! ## A354104.P13028194279226710427

`∑{d}[A267099(n+1), #*A008683(#)]`
-/

namespace A354104.P13028194279226710427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A008683 d

end

end A354104.P13028194279226710427

/-! ## A354104.P7689948859941557563

`A097945(∏{p}[A267099(n+1), #])`
-/

namespace A354104.P7689948859941557563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A354104.P7689948859941557563

/-! ## A354104.P3006625085893144744

`A319340(A267099(n+1))-A354102(n+1)`
-/

namespace A354104.P3006625085893144744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319340 (A267099 (n + 1)).toNat - A354102 (n + 1)

end

end A354104.P3006625085893144744

/-! ## A354104.P9424021451423194441

`A023900(A267099(n+1))`
-/

namespace A354104.P9424021451423194441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A267099 (n + 1)).toNat

end

end A354104.P9424021451423194441

/-! ## A354104.P12566539958459424955

`∑{d}[A267099(n+1), A055615(#)]`
-/

namespace A354104.P12566539958459424955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d

end

end A354104.P12566539958459424955

/-! ## A354104.P8791515594956614501

`A023900(∑{d}[n+1, A354102(#)])`
-/

namespace A354104.P8791515594956614501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (∑ d ∈ Nat.divisors (f1 n), A354102 d).toNat

end

end A354104.P8791515594956614501

/-! ## A354104.P12514961346365079062

`∏{p}[A267099(n+1)², A024000(#)]`
-/

namespace A354104.P12514961346365079062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A024000 p

end

end A354104.P12514961346365079062

/-! ## A354104.P11023398866793632254

`∏{p}[A267099(n+1)², A168036(#)]`
-/

namespace A354104.P11023398866793632254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A168036 p

end

end A354104.P11023398866793632254

/-!
# A354105: Sum of A354102 and its Dirichlet inverse.

The programs for A354105, there is no canonical definition to state claims against.
-/

/-! ## A354105.P328530974388850945

`A354102(n+1)+A354104(n+1)`
-/

namespace A354105.P328530974388850945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (n + 1) + A354104 (n + 1)

end

end A354105.P328530974388850945

/-! ## A354105.P14095076290533656382

`A000010(n+1)+A354104(n+1)+A354101(n+1)`
-/

namespace A354105.P14095076290533656382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A354104 (n + 1) + A354101 (n + 1))

end

end A354105.P14095076290533656382

/-! ## A354105.P14647479605076763065

`A354104(n+1)+∑{d}[n+1, A008683(#)*A267099((n+1)/#)]`
-/

namespace A354105.P14647479605076763065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354104 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A267099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354105.P14647479605076763065

/-! ## A354105.P1078573960847059686

`A354104(n+1)+A000010(A267099(n+1))`
-/

namespace A354105.P1078573960847059686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354104 (n + 1) + A000010 (A267099 (n + 1)).toNat

end

end A354105.P1078573960847059686

/-! ## A354105.P233722437696688862

`A319340(A267099(n+1))`
-/

namespace A354105.P233722437696688862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319340 (A267099 (n + 1)).toNat

end

end A354105.P233722437696688862

/-! ## A354105.P8048933478514437205

`A354102(n+1)+A023900(A267099(n+1))`
-/

namespace A354105.P8048933478514437205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (n + 1) + A023900 (A267099 (n + 1)).toNat

end

end A354105.P8048933478514437205

/-! ## A354105.P13864666178287668867

`A354102(n+1)+A023900(∑{d}[n+1, A354102(#)])`
-/

namespace A354105.P13864666178287668867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (n + 1) + A023900 (∑ d ∈ Nat.divisors (f1 n), A354102 d).toNat

end

end A354105.P13864666178287668867

/-! ## A354105.P11620649290075958023

`A023900(A267099(n+1))+A354190(n+1)-A354191(n+1)`
-/

namespace A354105.P11620649290075958023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A267099 (n + 1)).toNat + (A354190 (n + 1) - A354191 (n + 1))

end

end A354105.P11620649290075958023

/-!
# A354107: a(n) = A354102(n) mod 4.

The programs for A354107, the canonical program `A354107.P1266851765125623207` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354107 has offset 1).

The definition of A354107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354107.P13603719562368948467

`A354102(n+1)%4`
-/

namespace A354107.P13603719562368948467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354102 (n + 1)) 4

end

end A354107.P13603719562368948467

namespace A354107

/-- `A354102(n+1)%4` -/
def P13603719562368948467.Spec : Prop :=
  ∀ n, P13603719562368948467.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P1771466514843152096

`A010873(A354102(n+1))`
-/

namespace A354107.P1771466514843152096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A354102 (n + 1)).toNat

end

end A354107.P1771466514843152096

namespace A354107

/-- `A010873(A354102(n+1))` -/
def P1771466514843152096.Spec : Prop :=
  ∀ n, P1771466514843152096.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P1266851765125623207

`A253629(n+1)%4`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A354107

/-- `A253629(n+1)%4` -/
def P1266851765125623207.Spec : Prop :=
  ∀ n, P1266851765125623207.a n = A354107 (n + 1)

theorem P1266851765125623207.correct : P1266851765125623207.Spec := by
  intro n
  simp only [A354107, Nat.add_sub_cancel]

end A354107

/-! ## A354107.P631617228259750739

`and(3, A158523(n+1))`
-/

namespace A354107.P631617228259750739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A158523 (n + 1))

end

end A354107.P631617228259750739

namespace A354107

/-- `and(3, A158523(n+1))` -/
def P631617228259750739.Spec : Prop :=
  ∀ n, P631617228259750739.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P2379704144468984327

`C(2, A354110(n+1)²)`
-/

namespace A354107.P2379704144468984327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A354110 (n + 1) ^ 2).toNat

end

end A354107.P2379704144468984327

namespace A354107

/-- `C(2, A354110(n+1)²)` -/
def P2379704144468984327.Spec : Prop :=
  ∀ n, (P2379704144468984327.a n : ℤ) = A354107 (n + 1)

end A354107

/-! ## A354107.P17663209056702002906

`lcm(9, A001615(n+1))%4`
-/

namespace A354107.P17663209056702002906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (A001615 (n + 1)) % 4

end

end A354107.P17663209056702002906

namespace A354107

/-- `lcm(9, A001615(n+1))%4` -/
def P17663209056702002906.Spec : Prop :=
  ∀ n, (P17663209056702002906.a n : ℤ) = A354107 (n + 1)

end A354107

/-! ## A354107.P14594830972051051470

`and(3, A354102(A000027(n+1)))`
-/

namespace A354107.P14594830972051051470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A354102 (A000027 (n + 1)).toNat)

end

end A354107.P14594830972051051470

namespace A354107

/-- `and(3, A354102(A000027(n+1)))` -/
def P14594830972051051470.Spec : Prop :=
  ∀ n, P14594830972051051470.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P14687441071650180638

`A160890(n+1)%A040002(n)`
-/

namespace A354107.P14687441071650180638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160890 (n + 1)) (A040002 n)

end

end A354107.P14687441071650180638

namespace A354107

/-- `A160890(n+1)%A040002(n)` -/
def P14687441071650180638.Spec : Prop :=
  ∀ n, P14687441071650180638.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P9550420484233886081

`A001615(n+1)%A267649(n)`
-/

namespace A354107.P9550420484233886081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001615 (n + 1)) (A267649 n)

end

end A354107.P9550420484233886081

namespace A354107

/-- `A001615(n+1)%A267649(n)` -/
def P9550420484233886081.Spec : Prop :=
  ∀ n, P9550420484233886081.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P16451276893764982452

`A220345(n+1)%A267649(n)`
-/

namespace A354107.P16451276893764982452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220345 (n + 1)) (A267649 n)

end

end A354107.P16451276893764982452

namespace A354107

/-- `A220345(n+1)%A267649(n)` -/
def P16451276893764982452.Spec : Prop :=
  ∀ n, P16451276893764982452.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P4866411023290286135

`and(A122553(n), A160890(n+1))`
-/

namespace A354107.P4866411023290286135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A160890 (n + 1))

end

end A354107.P4866411023290286135

namespace A354107

/-- `and(A122553(n), A160890(n+1))` -/
def P4866411023290286135.Spec : Prop :=
  ∀ n, P4866411023290286135.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P7479547895706809944

`and(A160890(n+1), A164359(n))`
-/

namespace A354107.P7479547895706809944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160890 (n + 1)) (A164359 n)

end

end A354107.P7479547895706809944

namespace A354107

/-- `and(A160890(n+1), A164359(n))` -/
def P7479547895706809944.Spec : Prop :=
  ∀ n, P7479547895706809944.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P9688292828481442820

`and(A001615(n+1), A329683(n))`
-/

namespace A354107.P9688292828481442820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001615 (n + 1)) (A329683 n)

end

end A354107.P9688292828481442820

namespace A354107

/-- `and(A001615(n+1), A329683(n))` -/
def P9688292828481442820.Spec : Prop :=
  ∀ n, P9688292828481442820.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P9555442905594377658

`and(A122553(n), A253629(n+1))`
-/

namespace A354107.P9555442905594377658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A253629 (n + 1))

end

end A354107.P9555442905594377658

namespace A354107

/-- `and(A122553(n), A253629(n+1))` -/
def P9555442905594377658.Spec : Prop :=
  ∀ n, P9555442905594377658.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P7114339544066086068

`and(A164359(n), A253629(n+1))`
-/

namespace A354107.P7114339544066086068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164359 n) (A253629 (n + 1))

end

end A354107.P7114339544066086068

namespace A354107

/-- `and(A164359(n), A253629(n+1))` -/
def P7114339544066086068.Spec : Prop :=
  ∀ n, P7114339544066086068.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P12085522481469249408

`and(A122553(n), A354102(n+1))`
-/

namespace A354107.P12085522481469249408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A354102 (n + 1))

end

end A354107.P12085522481469249408

namespace A354107

/-- `and(A122553(n), A354102(n+1))` -/
def P12085522481469249408.Spec : Prop :=
  ∀ n, P12085522481469249408.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P8910979820169207441

`and(A160890(n+1), A329683(n))`
-/

namespace A354107.P8910979820169207441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160890 (n + 1)) (A329683 n)

end

end A354107.P8910979820169207441

namespace A354107

/-- `and(A160890(n+1), A329683(n))` -/
def P8910979820169207441.Spec : Prop :=
  ∀ n, P8910979820169207441.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P775666321009139194

`and(A001615(n+1), A185049(n+1))`
-/

namespace A354107.P775666321009139194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001615 (n + 1)) (A185049 (n + 1))

end

end A354107.P775666321009139194

namespace A354107

/-- `and(A001615(n+1), A185049(n+1))` -/
def P775666321009139194.Spec : Prop :=
  ∀ n, P775666321009139194.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P11077626402350877260

`and(A001615(n+1), A239141(n+1))`
-/

namespace A354107.P11077626402350877260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001615 (n + 1)) (A239141 (n + 1))

end

end A354107.P11077626402350877260

namespace A354107

/-- `and(A001615(n+1), A239141(n+1))` -/
def P11077626402350877260.Spec : Prop :=
  ∀ n, P11077626402350877260.a n = A354107 (n + 1)

end A354107

/-! ## A354107.P12420292166715244292

`and(A020639(∏{p}[n+1, #+1]), A354102(n+1))`
-/

namespace A354107.P12420292166715244292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1))) (A354102 (n + 1))

end

end A354107.P12420292166715244292

namespace A354107

/-- `and(A020639(∏{p}[n+1, #+1]), A354102(n+1))` -/
def P12420292166715244292.Spec : Prop :=
  ∀ n, P12420292166715244292.a n = A354107 (n + 1)

end A354107

/-!
# A354108: a(n) = 1 if n is neither an odd prime power nor twice an odd prime power, otherwise 0.

The programs for A354108, the canonical program `A354108.P16647006842029194396` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354108 has offset 1).

The definition of A354108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354108.P1423776689236568645

`log2(gcd(2, A122411(n+1)))`
-/

namespace A354108.P1423776689236568645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A122411 (n + 1)) : ℝ)

end

end A354108.P1423776689236568645

namespace A354108

/-- `log2(gcd(2, A122411(n+1)))` -/
def P1423776689236568645.Spec : Prop :=
  ∀ n, P1423776689236568645.a n = (A354108 (n + 1) : ℝ)

end A354108

/-! ## A354108.P9282389664814619535

`C(10, A160377(n+1)²)%3`
-/

namespace A354108.P9282389664814619535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 10 (A160377 (n + 1) ^ 2).toNat % 3

end

end A354108.P9282389664814619535

namespace A354108

/-- `C(10, A160377(n+1)²)%3` -/
def P9282389664814619535.Spec : Prop :=
  ∀ n, (P9282389664814619535.a n : ℤ) = A354108 (n + 1)

end A354108

/-! ## A354108.P17574470879968813711

`A036987(A160377(n+1))`
-/

namespace A354108.P17574470879968813711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A160377 (n + 1)).toNat

end

end A354108.P17574470879968813711

namespace A354108

/-- `A036987(A160377(n+1))` -/
def P17574470879968813711.Spec : Prop :=
  ∀ n, P17574470879968813711.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P3923367739105669491

`A135528(A131233(n+1))`
-/

namespace A354108.P3923367739105669491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A131233 (n + 1)).toNat

end

end A354108.P3923367739105669491

namespace A354108

/-- `A135528(A131233(n+1))` -/
def P3923367739105669491.Spec : Prop :=
  ∀ n, P3923367739105669491.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P11849845488976311939

`A014577(A304182(n+1))`
-/

namespace A354108.P11849845488976311939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A304182 (n + 1)).toNat

end

end A354108.P11849845488976311939

namespace A354108

/-- `A014577(A304182(n+1))` -/
def P11849845488976311939.Spec : Prop :=
  ∀ n, P11849845488976311939.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P5397041458496858592

`A292438(A076109(n+1))`
-/

namespace A354108.P5397041458496858592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A076109 (n + 1)).toNat

end

end A354108.P5397041458496858592

namespace A354108

/-- `A292438(A076109(n+1))` -/
def P5397041458496858592.Spec : Prop :=
  ∀ n, P5397041458496858592.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P16645731520534647950

`A010052(and(2, A354101(n+1)))`
-/

namespace A354108.P16645731520534647950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Int.land 2 (A354101 (n + 1))).toNat

end

end A354108.P16645731520534647950

namespace A354108

/-- `A010052(and(2, A354101(n+1)))` -/
def P16645731520534647950.Spec : Prop :=
  ∀ n, P16645731520534647950.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P4459163716821829638

`xor(A043545(n), A354924(n+1))`
-/

namespace A354108.P4459163716821829638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043545 n) (A354924 (n + 1))

end

end A354108.P4459163716821829638

namespace A354108

/-- `xor(A043545(n), A354924(n+1))` -/
def P4459163716821829638.Spec : Prop :=
  ∀ n, P4459163716821829638.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P7205606768379478260

`xor(A211487(n+1), A267870(n))`
-/

namespace A354108.P7205606768379478260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A211487 (n + 1)) (A267870 n)

end

end A354108.P7205606768379478260

namespace A354108

/-- `xor(A211487(n+1), A267870(n))` -/
def P7205606768379478260.Spec : Prop :=
  ∀ n, P7205606768379478260.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P2002041503082978141

`A297382(n+1)-A354924(n+1)`
-/

namespace A354108.P2002041503082978141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 1) - A354924 (n + 1)

end

end A354108.P2002041503082978141

namespace A354108

/-- `A297382(n+1)-A354924(n+1)` -/
def P2002041503082978141.Spec : Prop :=
  ∀ n, P2002041503082978141.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P12821032158061211932

`∏{p}[and(2, A354101(n+1)), A354101(#)]`
-/

namespace A354108.P12821032158061211932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A354101 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354101 p

end

end A354108.P12821032158061211932

namespace A354108

/-- `∏{p}[and(2, A354101(n+1)), A354101(#)]` -/
def P12821032158061211932.Spec : Prop :=
  ∀ n, P12821032158061211932.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P17736407364983217483

`(A291784(n+1)+A000040(n+1))%2`
-/

namespace A354108.P17736407364983217483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291784 (n + 1) + A000040 (n + 1)) 2

end

end A354108.P17736407364983217483

namespace A354108

/-- `(A291784(n+1)+A000040(n+1))%2` -/
def P17736407364983217483.Spec : Prop :=
  ∀ n, P17736407364983217483.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P4167293728584786098

`round(1/A014963((n-1)%A014682(n+1)+2))`
-/

namespace A354108.P4167293728584786098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A014963 (Int.tmod ((n : ℤ) - 1) (A014682 (n + 1)) + 2).toNat : ℚ))

end

end A354108.P4167293728584786098

namespace A354108

/-- `round(1/A014963((n-1)%A014682(n+1)+2))` -/
def P4167293728584786098.Spec : Prop :=
  ∀ n, P4167293728584786098.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P7471131932635747852

`A000089(A087782(A304182(n+1))²)`
-/

namespace A354108.P7471131932635747852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A087782 (A304182 (n + 1)).toNat ^ 2).toNat

end

end A354108.P7471131932635747852

namespace A354108

/-- `A000089(A087782(A304182(n+1))²)` -/
def P7471131932635747852.Spec : Prop :=
  ∀ n, P7471131932635747852.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P14949761614778466367

`A000095(A087782(A304182(n+1))²)`
-/

namespace A354108.P14949761614778466367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A087782 (A304182 (n + 1)).toNat ^ 2).toNat

end

end A354108.P14949761614778466367

namespace A354108

/-- `A000095(A087782(A304182(n+1))²)` -/
def P14949761614778466367.Spec : Prop :=
  ∀ n, P14949761614778466367.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P16647006842029194396

`A154269(A304182(A304182(n+1))²)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A354108

/-- `A154269(A304182(A304182(n+1))²)` -/
def P16647006842029194396.Spec : Prop :=
  ∀ n, P16647006842029194396.a n = A354108 (n + 1)

theorem P16647006842029194396.correct : P16647006842029194396.Spec := by
  intro n
  simp only [A354108, Nat.add_sub_cancel]

end A354108

/-! ## A354108.P9571376731225964793

`A135528(A291784(n+1))`
-/

namespace A354108.P9571376731225964793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A291784 (n + 1)).toNat

end

end A354108.P9571376731225964793

namespace A354108

/-- `A135528(A291784(n+1))` -/
def P9571376731225964793.Spec : Prop :=
  ∀ n, P9571376731225964793.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P18060439617411514020

`A010693(A291784(n+1)+A076368(n+2))-2`
-/

namespace A354108.P18060439617411514020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A291784 (n + 1) + A076368 (n + 2)).toNat - 2

end

end A354108.P18060439617411514020

namespace A354108

/-- `A010693(A291784(n+1)+A076368(n+2))-2` -/
def P18060439617411514020.Spec : Prop :=
  ∀ n, P18060439617411514020.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P2217214641092001309

`A059841(A122411(n+1))`
-/

namespace A354108.P2217214641092001309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A122411 (n + 1)).toNat

end

end A354108.P2217214641092001309

namespace A354108

/-- `A059841(A122411(n+1))` -/
def P2217214641092001309.Spec : Prop :=
  ∀ n, P2217214641092001309.a n = A354108 (n + 1)

end A354108

/-! ## A354108.P6153106730411687326

`A000035(A122411(n+1)+1)`
-/

namespace A354108.P6153106730411687326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A122411 (n + 1) + 1).toNat

end

end A354108.P6153106730411687326

namespace A354108

/-- `A000035(A122411(n+1)+1)` -/
def P6153106730411687326.Spec : Prop :=
  ∀ n, P6153106730411687326.a n = A354108 (n + 1)

end A354108

/-!
# A354109: Numbers that are neither an odd prime power nor twice an odd prime power.

The programs for A354109, there is no canonical definition to state claims against.
-/

/-! ## A354109.P3586398923405626065

`filter[n+1, A354108(#)]`
-/

namespace A354109.P3586398923405626065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j) = 1) n)

end

end A354109.P3586398923405626065

/-! ## A354109.P14891836479667047491

`comp[eq[n%2, A305614(n)]]`
-/

namespace A354109.P14891836479667047491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A354109.P14891836479667047491

/-! ## A354109.P6830406520309589710

`lt[A046145(n), and(n, -n)]`
-/

namespace A354109.P6830406520309589710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354109.P6830406520309589710

/-! ## A354109.P1842187696406821858

`lt[0, A354108(n+1)]+1`
-/

namespace A354109.P1842187696406821858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354109.P1842187696406821858

/-! ## A354109.P13428981616147768246

`∪[2^n, A033949(n+1)]`
-/

namespace A354109.P13428981616147768246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354109.P13428981616147768246

/-! ## A354109.P12642068485311402126

`lt[1, gcd(2, A122411(n+1))]+1`
-/

namespace A354109.P12642068485311402126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A122411 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A354109.P12642068485311402126

/-! ## A354109.P6722163627476837996

`∪[4*(n+1), A180634(n+1)]`
-/

namespace A354109.P6722163627476837996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354109.P6722163627476837996

/-! ## A354109.P10864655290655261295

`eq[1, ceil(and(2, -(A065960(n+1)+1))/5)]+1`
-/

namespace A354109.P10864655290655261295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land 2 (-(A065960 (n + 1) + 1)) : ℚ) / 5⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354109.P10864655290655261295

/-! ## A354109.P16776467448066335358

`lt[A046146(n), log2(A061393(n))]`
-/

namespace A354109.P16776467448066335358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061393 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A354109.P16776467448066335358

/-! ## A354109.P6753139300638761300

`∪[A033949(n+1), A000079(n)]`
-/

namespace A354109.P6753139300638761300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354109.P6753139300638761300

/-!
# A354110: The 2-adic valuation of phi(A267099(n)), where A267099 is fully multiplicative involution swapping the positions of 4k+1 and 4k+3 primes, and phi is Euler totient function.

The programs for A354110, there is no canonical definition to state claims against.
-/

/-! ## A354110.P17692968167870570195

`val(A354102(n+1), 2)`
-/

namespace A354110.P17692968167870570195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A354102 (n + 1)).toNat 2

end

end A354110.P17692968167870570195

/-! ## A354110.P14255035828747377889

`A001222(and(-A354102(n+1), A354102(n+1)))`
-/

namespace A354110.P14255035828747377889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A354102 (n + 1)) (A354102 (n + 1))).toNat

end

end A354110.P14255035828747377889

/-! ## A354110.P16793949469660943935

`A302045(A354102(n+1))`
-/

namespace A354110.P16793949469660943935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A354102 (n + 1)).toNat

end

end A354110.P16793949469660943935

/-! ## A354110.P15557393959986618029

`val(A000010(A267099(n+1)), 2)`
-/

namespace A354110.P15557393959986618029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A267099 (n + 1)).toNat).toNat 2

end

end A354110.P15557393959986618029

/-! ## A354110.P11452250289664633887

`A053574(A267099(n+1))`
-/

namespace A354110.P11452250289664633887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (A267099 (n + 1)).toNat

end

end A354110.P11452250289664633887

/-! ## A354110.P10226715225045151360

`A001222(gcd(A000079(n), A354102(n+1)))`
-/

namespace A354110.P10226715225045151360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A354102 (n + 1)))

end

end A354110.P10226715225045151360

/-!
# A354112: Total number of 1's in binary expansion of all divisors of 2^n-1.

The programs for A354112, there is no canonical definition to state claims against.
-/

/-! ## A354112.P1150347132121324330

`∑{d}[A000225(n+1), A001222(A001316(#))]`
-/

namespace A354112.P1150347132121324330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 (A001316 d).toNat

end

end A354112.P1150347132121324330

/-! ## A354112.P4209989540039329522

`A093653(∑[2^n])`
-/

namespace A354112.P4209989540039329522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354112.P4209989540039329522

/-! ## A354112.P14861384198579994005

`A292257(∑[2^n])+n+1`
-/

namespace A354112.P14861384198579994005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A354112.P14861384198579994005

/-! ## A354112.P7996314714329416491

`A093653(A126646(n))%127`
-/

namespace A354112.P7996314714329416491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093653 (A126646 n).toNat) 127

end

end A354112.P7996314714329416491

/-! ## A354112.P15711028431528701081

`lcm(A033999(n)², A093653(A126646(n)))`
-/

namespace A354112.P15711028431528701081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n ^ 2) (A093653 (A126646 n).toNat)

end

end A354112.P15711028431528701081

/-!
# A354113: The smallest number that contains all the digits of n in order but does not equal n.

The programs for A354113, there is no canonical definition to state claims against.
-/

/-! ## A354113.P13415544564308755495

`A131835(n+2)-A010052(A225323(n+3))`
-/

namespace A354113.P13415544564308755495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131835 (n + 2) - A010052 (A225323 (n + 3)).toNat

end

end A354113.P13415544564308755495

/-! ## A354113.P808621852472860482

`A131835(n+2)+A010815(A028321(n+4))`
-/

namespace A354113.P808621852472860482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131835 (n + 2) + A010815 (A028321 (n + 4)).toNat

end

end A354113.P808621852472860482

/-! ## A354113.P15581701778618613101

`A131835(n+2)-A036987(A000051(n))`
-/

namespace A354113.P15581701778618613101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131835 (n + 2) - A036987 (A000051 n).toNat

end

end A354113.P15581701778618613101

/-!
# A354114: The smallest number that contains all the digits of n as a substring but does not equal n.

The programs for A354114, there is no canonical definition to state claims against.
-/

/-! ## A354114.P2030477973581100416

`A292690(∑[n+2]-1)`
-/

namespace A354114.P2030477973581100416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292690 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A354114.P2030477973581100416

/-! ## A354114.P15998325757734553497

`A293869(abs(1-A000096(n))+1)`
-/

namespace A354114.P15998325757734553497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (|1 - A000096 n| + 1).toNat

end

end A354114.P15998325757734553497

/-! ## A354114.P15873304644358319152

`A293869(A000096(n)+floor(acot(n)²))`
-/

namespace A354114.P15873304644358319152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A000096 n + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋).toNat

end

end A354114.P15873304644358319152

/-! ## A354114.P12890436504842851958

`A293869(or(floor(acot(n)²), A000096(n)))`
-/

namespace A354114.P12890436504842851958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (Int.lor ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A000096 n)).toNat

end

end A354114.P12890436504842851958

/-! ## A354114.P16514931668076230077

`A293869(xor(floor(acot(n)²), A000096(n)))`
-/

namespace A354114.P16514931668076230077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (Int.xor ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A000096 n)).toNat

end

end A354114.P16514931668076230077

/-! ## A354114.P2200170939347902419

`A293869(A080476(n+1)+ceil(abs((1-n)/2)))`
-/

namespace A354114.P2200170939347902419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A080476 (n + 1) + ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉).toNat

end

end A354114.P2200170939347902419

/-! ## A354114.P18019624018073439330

`A293869(A000096(n)+A000038(n))`
-/

namespace A354114.P18019624018073439330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A000096 n + A000038 n).toNat

end

end A354114.P18019624018073439330

/-! ## A354114.P7984755533199947017

`A293869(or(A000038(n), A000096(n)))`
-/

namespace A354114.P7984755533199947017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (Int.lor (A000038 n) (A000096 n)).toNat

end

end A354114.P7984755533199947017

/-! ## A354114.P2250743163300846547

`A293869(xor(A000038(n), A000096(n)))`
-/

namespace A354114.P2250743163300846547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (Int.xor (A000038 n) (A000096 n)).toNat

end

end A354114.P2250743163300846547

/-!
# A354115: Product_{n>=1} 1 / (1 - x^n)^(a(n)/n!) = 1 + arcsin(x).

The programs for A354115, there is no canonical definition to state claims against.
-/

/-! ## A354115.P976001407780281792

`xor(A055034(A067609(n+1)), A119282(n))`
-/

namespace A354115.P976001407780281792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055034 (A067609 (n + 1)).toNat) (A119282 n)

end

end A354115.P976001407780281792

/-!
# A354116: Product_{n>=1} 1 / (1 - x^n)^(a(n)/n!) = 1 + arcsinh(x).

The programs for A354116, there is no canonical definition to state claims against.
-/

/-! ## A354116.P8353048861661562483

`A068341(n+1)*A109626(A078226(n+1))`
-/

namespace A354116.P8353048861661562483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068341 (n + 1) * A109626 (A078226 (n + 1)).toNat

end

end A354116.P8353048861661562483

/-! ## A354116.P12540075961109566811

`A267921(A055972(2*(n+1)))-A091391(3*n+1)`
-/

namespace A354116.P12540075961109566811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267921 (A055972 (2 * (n + 1))).toNat - A091391 (3 * n + 1)

end

end A354116.P12540075961109566811

/-!
# A354119: Number of tilings of an n X n square using right trominoes, dominoes, and 2 X 2 tiles.

The programs for A354119, there is no canonical definition to state claims against.
-/

/-! ## A354119.P10116937595277196009

`A354010(∑[n]+n)`
-/

namespace A354119.P10116937595277196009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354010 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A354119.P10116937595277196009

/-! ## A354119.P6205356428353953496

`and(-1, A354010(A000096(n)))`
-/

namespace A354119.P6205356428353953496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A354010 (A000096 n).toNat)

end

end A354119.P6205356428353953496

/-! ## A354119.P11025420796244357145

`and(-1, A354010(A134189(n+1)))`
-/

namespace A354119.P11025420796244357145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A354010 (A134189 (n + 1)).toNat)

end

end A354119.P11025420796244357145

/-! ## A354119.P16736219663459456053

`A055801(n)*A354010(A000096(n))`
-/

namespace A354119.P16736219663459456053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 n * A354010 (A000096 n).toNat

end

end A354119.P16736219663459456053

/-! ## A354119.P12958174220845823068

`A000045(gcd(n, n+1))*A354010(A000096(n))`
-/

namespace A354119.P12958174220845823068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A354010 (A000096 n).toNat

end

end A354119.P12958174220845823068

/-!
# A354120: Expansion of e.g.f. 1/(1 - log(1 + x))^3.

The programs for A354120, there is no canonical definition to state claims against.
-/

/-! ## A354120.P9435646694395876014

`A008486(Δ[A338728(n)])`
-/

namespace A354120.P9435646694395876014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (n + 1) - f1 n).toNat

end

end A354120.P9435646694395876014

/-! ## A354120.P15357287703584635535

`A008486(A338728(n+1)-A338728(n))`
-/

namespace A354120.P15357287703584635535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A338728 (n + 1) - A338728 n).toNat

end

end A354120.P15357287703584635535

/-!
# A354121: Expansion of e.g.f. 1/(1 - log(1 + x))^4.

The programs for A354121, there is no canonical definition to state claims against.
-/

/-! ## A354121.P9237112201420265062

`4*A349144(a(n-1))` with `a(0)=1`
-/

namespace A354121.P9237112201420265062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A349144 (a (n - 1)).toNat

end

end A354121.P9237112201420265062

/-!
# A354122: Expansion of e.g.f. 1/(1 + log(1 - x))^3.

The programs for A354122, there is no canonical definition to state claims against.
-/

/-! ## A354122.P7260096457789840234

`A336743(n)+A056388(n+1)+A055641(A003111(n))`
-/

namespace A354122.P7260096457789840234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336743 n + (A056388 (n + 1) + A055641 (A003111 n).toNat)

end

end A354122.P7260096457789840234

/-! ## A354122.P11826486193006434902

`A336743(n)+A056388(n+1)^A374629(A001053(n))`
-/

namespace A354122.P11826486193006434902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336743 n : ℚ) + (A056388 (n + 1) : ℚ) ^ (A374629 (A001053 n).toNat : ℤ)

end

end A354122.P11826486193006434902

/-!
# A354123: Expansion of e.g.f. 1/(1 + log(1 - x))^4.

The programs for A354123, there is no canonical definition to state claims against.
-/

/-! ## A354123.P1282835695861612121

`A275899(A276029(n+1))+n`
-/

namespace A354123.P1282835695861612121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (A276029 (n + 1)).toNat + (n : ℤ)

end

end A354123.P1282835695861612121

/-!
# A354124: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * (1 + x^n*A(x))^n / (1 + x^(n+1)*A(x))^(n+1).

The programs for A354124, there is no canonical definition to state claims against.
-/

/-! ## A354124.P9792661942366085936

`A000034(C(n+3, 3)²+1)+C(n+3, 4)+C(n, 4)`
-/

namespace A354124.P9792661942366085936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Nat.choose (n + 3) 3 ^ 2 + 1) + (Nat.choose (n + 3) 4 + Nat.choose n 4 : ℤ)

end

end A354124.P9792661942366085936

/-! ## A354124.P6106969925718240212

`A082226(A303346(n))`
-/

namespace A354124.P6106969925718240212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A303346 n).toNat

end

end A354124.P6106969925718240212

/-! ## A354124.P11610354351156426426

`A001650(A002621(n²))`
-/

namespace A354124.P11610354351156426426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A002621 (n ^ 2)).toNat

end

end A354124.P11610354351156426426

/-!
# A354128: Decimal expansion of 7 - 4*sqrt(3).

The programs for A354128, there is no canonical definition to state claims against.
-/

/-! ## A354128.P13605949719376483503

`9-A010502(n+1)`
-/

namespace A354128.P13605949719376483503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010502 (n + 1 + 1)

end

end A354128.P13605949719376483503

/-! ## A354128.P1165638611161766028

`9-A354129(n+2)`
-/

namespace A354128.P1165638611161766028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A354129 (n + 2 + 2)

end

end A354128.P1165638611161766028

/-!
# A354130: Triangle read by rows: T(k,n) (k >= 0, n = 0, ..., k) = number of tilings of a k X n rectangle using 2 X 2, and 1 X 1 tiles, right trominoes and dominoes.

The programs for A354130, there is no canonical definition to state claims against.
-/

/-! ## A354130.P15062221890057532197

`A023123(A156825(n))`
-/

namespace A354130.P15062221890057532197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023123 (A156825 n).toNat

end

end A354130.P15062221890057532197

/-! ## A354130.P6422842813518079995

`A114334(A100064(n))`
-/

namespace A354130.P6422842813518079995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (A100064 n).toNat

end

end A354130.P6422842813518079995

/-! ## A354130.P14916957853698113298

`A114391(A153188(n))`
-/

namespace A354130.P14916957853698113298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (A153188 n).toNat

end

end A354130.P14916957853698113298

/-! ## A354130.P12624273214614751500

`A343736(A124320(n))`
-/

namespace A354130.P12624273214614751500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343736 (A124320 n).toNat

end

end A354130.P12624273214614751500

/-! ## A354130.P17424280944473641881

`A134361(A353877(n))`
-/

namespace A354130.P17424280944473641881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A353877 n).toNat

end

end A354130.P17424280944473641881

/-!
# A354131: Number of tilings of a 2 X n rectangle using 2 X 2 and 1 X 1 tiles, right trominoes and dominoes.

The programs for A354131, the canonical program `A354131.P9248415867984586130` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354131 has offset 0).

The definition of A354131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354131.P9248415867984586130

`3*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A354131

/-- `3*a(n-1)+6*a(n-2)` -/
def P9248415867984586130.Spec : Prop :=
  ∀ n, (P9248415867984586130.a n : ℤ) = A354131 n

theorem P9248415867984586130.correct : P9248415867984586130.Spec := by
  intro n
  simp only [A354131]

end A354131

/-! ## A354131.P3405878798731245017

`3*(2-(2*(1-a(n-2))-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A354131.P3405878798731245017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (2 - (2 * (1 - a (n - 2)) - a (n - 1)))

end

end A354131.P3405878798731245017

namespace A354131

/-- `3*(2-(2*(1-a(n-2))-a(n-1)))` -/
def P3405878798731245017.Spec : Prop :=
  ∀ n, P3405878798731245017.a n = A354131 n

end A354131

/-! ## A354131.P18360658527603668733

`Δ[A083858(n)]`
-/

namespace A354131.P18360658527603668733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A354131.P18360658527603668733

namespace A354131

/-- `Δ[A083858(n)]` -/
def P18360658527603668733.Spec : Prop :=
  ∀ n, P18360658527603668733.a n = A354131 n

end A354131

/-! ## A354131.P15919212644334746491

`A180141(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A354131.P15919212644334746491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180141 n - 2 * a (n - 1)

end

end A354131.P15919212644334746491

namespace A354131

/-- `A180141(n)-2*a(n-1)` -/
def P15919212644334746491.Spec : Prop :=
  ∀ n, P15919212644334746491.a n = A354131 n

end A354131

/-! ## A354131.P9849385099096779941

`A083858(n+1)-A083858(n)`
-/

namespace A354131.P9849385099096779941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083858 (n + 1) - A083858 n

end

end A354131.P9849385099096779941

namespace A354131

/-- `A083858(n+1)-A083858(n)` -/
def P9849385099096779941.Spec : Prop :=
  ∀ n, P9849385099096779941.a n = A354131 n

end A354131

/-!
# A354132: Number of tilings of a 3 X n rectangle using 2 X 2 and 1 X 1 tiles, right trominoes and dominoes.

The programs for A354132, there is no canonical definition to state claims against.
-/

/-! ## A354132.P17468070610065646238

`record[A354130(A126168(n+1)+1)]`
-/

namespace A354132.P17468070610065646238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354130 (A126168 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354132.P17468070610065646238

/-!
# A354134: Expansion of e.g.f. 1/(1 - log(1 + x)^3/6).

The programs for A354134, there is no canonical definition to state claims against.
-/

/-! ## A354134.P9359391509218864605

`A354136(n)+A185255(5*n)`
-/

namespace A354134.P9359391509218864605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354136 n + A185255 (5 * n)

end

end A354134.P9359391509218864605

/-! ## A354134.P16033067994411249068

`A354136(n)+A127321(A052785(n))`
-/

namespace A354134.P16033067994411249068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354136 n + A127321 (A052785 n).toNat

end

end A354134.P16033067994411249068

/-! ## A354134.P633416354952849220

`A354136(n)+A127321(A228909(n))`
-/

namespace A354134.P633416354952849220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354136 n + A127321 (A228909 n).toNat

end

end A354134.P633416354952849220

/-!
# A354135: Expansion of e.g.f. 1/(1 - log(1 + x)^5/120).

The programs for A354135, there is no canonical definition to state claims against.
-/

/-! ## A354135.P5793552532495751908

`A354137(n^∑[char[10*n]])`
-/

namespace A354135.P5793552532495751908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354137 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A354135.P5793552532495751908

/-! ## A354135.P10251370252788954516

`A185117(n^4)*A354137(n)`
-/

namespace A354135.P10251370252788954516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 (n ^ 4) * A354137 n

end

end A354135.P10251370252788954516

/-! ## A354135.P13816850704749520284

`A354137(n)%A271269(3*n+5)`
-/

namespace A354135.P13816850704749520284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354137 n) (A271269 (3 * n + 5))

end

end A354135.P13816850704749520284

/-! ## A354135.P12080064825588708294

`A354137(n)^(A185896(2*n+1)+1)`
-/

namespace A354135.P12080064825588708294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354137 n : ℚ) ^ (A185896 (2 * n + 1) + 1 : ℤ)

end

end A354135.P12080064825588708294

/-! ## A354135.P3043144548018153438

`A354137(n)+A000007(A000108(n))`
-/

namespace A354135.P3043144548018153438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354137 n + A000007 (A000108 n).toNat

end

end A354135.P3043144548018153438

/-!
# A354136: Expansion of e.g.f. exp(log(1 + x)^3/6).

The programs for A354136, there is no canonical definition to state claims against.
-/

/-! ## A354136.P6284974072040533720

`or(A327146(A290992(n)), A357834(n))`
-/

namespace A354136.P6284974072040533720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A327146 (A290992 n).toNat) (A357834 n)

end

end A354136.P6284974072040533720

/-!
# A354138: a(n) is the numerator of Sum_{k=0..n} (-1)^k / (2*k)!.

The programs for A354138, there is no canonical definition to state claims against.
-/

/-! ## A354138.P14467925407434952191

`A275651(n)/gcd(A010050(n), A275651(n))`
-/

namespace A354138.P14467925407434952191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275651 n : ℚ) / (Int.gcd (A010050 n) (A275651 n) : ℚ)

end

end A354138.P14467925407434952191

/-!
# A354139: a(n) is the least positive integer m such that (k+1)^n + (k+2)^n + ... + (k+m)^n == 0 (mod n) for every positive integer k.

The programs for A354139, there is no canonical definition to state claims against.
-/

/-! ## A354139.P6841928893500568996

`∏{p}[n+1, #]*A193267(n+1)`
-/

namespace A354139.P6841928893500568996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A193267 (n + 1)

end

end A354139.P6841928893500568996

/-! ## A354139.P2744511606113641094

`A007947(n+1)*A193267(n+1)`
-/

namespace A354139.P2744511606113641094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A193267 (n + 1)

end

end A354139.P2744511606113641094

/-! ## A354139.P17033227788412718789

`A015053(n+1)*A193267(n+1)`
-/

namespace A354139.P17033227788412718789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1) * A193267 (n + 1)

end

end A354139.P17033227788412718789

/-! ## A354139.P15132092944615298848

`A064549(n+1)/A300330(n+1)`
-/

namespace A354139.P15132092944615298848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A300330 (n + 1) : ℚ)

end

end A354139.P15132092944615298848

/-! ## A354139.P9823012593033625898

`∏{p}[n+1, #]*A195989((n+1)/A069226(n+1))`
-/

namespace A354139.P9823012593033625898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A195989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A069226 (n + 1) : ℚ))).toNat

end

end A354139.P9823012593033625898

/-! ## A354139.P3788239908333400428

`A015052(A015052(n+1))*A193267(n+1)`
-/

namespace A354139.P3788239908333400428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A193267 (n + 1)

end

end A354139.P3788239908333400428

/-! ## A354139.P18149828508439676528

`A048803(n+1)*A193267(n+1)/A048803(n)`
-/

namespace A354139.P18149828508439676528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048803 (n + 1) * A193267 (n + 1) : ℚ) / (A048803 n : ℚ)

end

end A354139.P18149828508439676528

/-! ## A354139.P11263678140188424391

`A007947(n+1)/A027760(n+1)*A185633(n+1)`
-/

namespace A354139.P11263678140188424391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A027760 (n + 1) : ℚ) * (A185633 (n + 1) : ℚ)

end

end A354139.P11263678140188424391

/-!
# A354140: a(n) = index where prime(n) appears in A353730.

The programs for A354140, there is no canonical definition to state claims against.
-/

/-! ## A354140.P17489839304189774402

`eq[1, A001222(A353730(n+1))]+1`
-/

namespace A354140.P17489839304189774402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A353730 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354140.P17489839304189774402

/-!
# A354141: Indices of terms in A352808 that are powers of 2.

The programs for A354141, there is no canonical definition to state claims against.
-/

/-! ## A354141.P16780983150124445745

`A353732(2^n)`
-/

namespace A354141.P16780983150124445745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (2 ^ n)

end

end A354141.P16780983150124445745

/-! ## A354141.P1393196827848994634

`record[A353732(A029930(n))]`
-/

namespace A354141.P1393196827848994634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354141.P1393196827848994634

/-! ## A354141.P17997890212123239798

`record[A353732(A034008(n))]`
-/

namespace A354141.P17997890212123239798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354141.P17997890212123239798

/-! ## A354141.P2447948133456806828

`record[A353732(A059148(n))]`
-/

namespace A354141.P2447948133456806828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (A059148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354141.P2447948133456806828

/-! ## A354141.P17994336073509267152

`record[A353732(A059268(n))]`
-/

namespace A354141.P17994336073509267152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354141.P17994336073509267152

/-!
# A354144: Prime powers together with semiprimes.

The programs for A354144, the canonical program `A354144.P17756084495947685987` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354144 has offset 1).

The definition of A354144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354144.P9800600570729482241

`lt[A281116(n+1), 2]+1`
-/

namespace A354144.P9800600570729482241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354144.P9800600570729482241

namespace A354144

/-- `lt[A281116(n+1), 2]+1` -/
def P9800600570729482241.Spec : Prop :=
  ∀ n, (P9800600570729482241.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P10116457709307599478

`∪[A000961(n+1), A001358(n+1)]`
-/

namespace A354144.P10116457709307599478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354144.P10116457709307599478

namespace A354144

/-- `∪[A000961(n+1), A001358(n+1)]` -/
def P10116457709307599478.Spec : Prop :=
  ∀ n, (P10116457709307599478.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P1999407396271821976

`∪[A000961(n+1), A006881(n+1)]`
-/

namespace A354144.P1999407396271821976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354144.P1999407396271821976

namespace A354144

/-- `∪[A000961(n+1), A006881(n+1)]` -/
def P1999407396271821976.Spec : Prop :=
  ∀ n, (P1999407396271821976.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P13310403881899960349

`∪[A000961(n+1), A037143(n+1)]`
-/

namespace A354144.P13310403881899960349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354144.P13310403881899960349

namespace A354144

/-- `∪[A000961(n+1), A037143(n+1)]` -/
def P13310403881899960349.Spec : Prop :=
  ∀ n, (P13310403881899960349.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P14404906074843386712

`∪[A000961(n+1), A084116(n+1)]`
-/

namespace A354144.P14404906074843386712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354144.P14404906074843386712

namespace A354144

/-- `∪[A000961(n+1), A084116(n+1)]` -/
def P14404906074843386712.Spec : Prop :=
  ∀ n, (P14404906074843386712.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P9049288251039661502

`∪[A000961(n+1), A186621(n+1)+1]`
-/

namespace A354144.P9049288251039661502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354144.P9049288251039661502

namespace A354144

/-- `∪[A000961(n+1), A186621(n+1)+1]` -/
def P9049288251039661502.Spec : Prop :=
  ∀ n, (P9049288251039661502.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P17756084495947685987

`lt[A000005(n+1), A001222(n+1)+3]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A354144

/-- `lt[A000005(n+1), A001222(n+1)+3]+1` -/
def P17756084495947685987.Spec : Prop :=
  ∀ n, (P17756084495947685987.a n : ℤ) = A354144 (n + 1)

theorem P17756084495947685987.correct : P17756084495947685987.Spec := by
  intro n
  simp only [A354144, Nat.add_sub_cancel]

end A354144

/-! ## A354144.P3616267396669220510

`∪[eq[1, A064911(n+1)]+1, A000961(n+1)]`
-/

namespace A354144.P3616267396669220510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A354144.P3616267396669220510

namespace A354144

/-- `∪[eq[1, A064911(n+1)]+1, A000961(n+1)]` -/
def P3616267396669220510.Spec : Prop :=
  ∀ n, (P3616267396669220510.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P15935718527698377598

`∪[eq[2, A317141(n+1)]+1, A000961(n+1)]`
-/

namespace A354144.P15935718527698377598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A354144.P15935718527698377598

namespace A354144

/-- `∪[eq[2, A317141(n+1)]+1, A000961(n+1)]` -/
def P15935718527698377598.Spec : Prop :=
  ∀ n, (P15935718527698377598.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P13979781894051829035

`∪[eq[2, A317545(n+1)]+1, A000961(n+1)]`
-/

namespace A354144.P13979781894051829035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A354144.P13979781894051829035

namespace A354144

/-- `∪[eq[2, A317545(n+1)]+1, A000961(n+1)]` -/
def P13979781894051829035.Spec : Prop :=
  ∀ n, (P13979781894051829035.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P15278587654178713407

`∪[A000961(n+1), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A354144.P15278587654178713407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354144.P15278587654178713407

namespace A354144

/-- `∪[A000961(n+1), A065516(n)+a(n-1)]` -/
def P15278587654178713407.Spec : Prop :=
  ∀ n, (P15278587654178713407.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P11988874680394988905

`eq[1, A014649(n+1)]+1`
-/

namespace A354144.P11988874680394988905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354144.P11988874680394988905

namespace A354144

/-- `eq[1, A014649(n+1)]+1` -/
def P11988874680394988905.Spec : Prop :=
  ∀ n, (P11988874680394988905.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P5678088514706122509

`lt[A183096(n+1), 4]+1`
-/

namespace A354144.P5678088514706122509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354144.P5678088514706122509

namespace A354144

/-- `lt[A183096(n+1), 4]+1` -/
def P5678088514706122509.Spec : Prop :=
  ∀ n, (P5678088514706122509.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P8953898848357753081

`lt[∏{p}[n, n/#], n+1]`
-/

namespace A354144.P8953898848357753081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n : ℚ) / (p : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A354144.P8953898848357753081

namespace A354144

/-- `lt[∏{p}[n, n/#], n+1]` -/
def P8953898848357753081.Spec : Prop :=
  ∀ n, (P8953898848357753081.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P1079726918649220310

`lt[∏{e}[n, n*#], (n+1)²]`
-/

namespace A354144.P1079726918649220310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A354144.P1079726918649220310

namespace A354144

/-- `lt[∏{e}[n, n*#], (n+1)²]` -/
def P1079726918649220310.Spec : Prop :=
  ∀ n, (P1079726918649220310.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P8611140056091817522

`lt[∑{e}[n, #²+n-2], 2*n]`
-/

namespace A354144.P8611140056091817522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p ^ 2 : ℤ) + ((n : ℤ) - 2))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A354144.P8611140056091817522

namespace A354144

/-- `lt[∑{e}[n, #²+n-2], 2*n]` -/
def P8611140056091817522.Spec : Prop :=
  ∀ n, (P8611140056091817522.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P6019790011141157396

`lt[A062319(n), 2*n²]`
-/

namespace A354144.P6019790011141157396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354144.P6019790011141157396

namespace A354144

/-- `lt[A062319(n), 2*n²]` -/
def P6019790011141157396.Spec : Prop :=
  ∀ n, (P6019790011141157396.a n : ℤ) = A354144 (n + 1)

end A354144

/-! ## A354144.P3482582324937428978

`lt[A076413(n+1), 2]+1`
-/

namespace A354144.P3482582324937428978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076413 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354144.P3482582324937428978

namespace A354144

/-- `lt[A076413(n+1), 2]+1` -/
def P3482582324937428978.Spec : Prop :=
  ∀ n, (P3482582324937428978.a n : ℤ) = A354144 (n + 1)

end A354144

/-!
# A354145: Deficient numbers that are neither prime powers nor semiprimes.

The programs for A354145, the canonical program `A354145.P7144256352306792372` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354145 has offset 1).

The definition of A354145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354145.P16517193271399581134

`filter[A102467(n+2), A294934(#)]`
-/

namespace A354145.P16517193271399581134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A354145.P16517193271399581134

namespace A354145

/-- `filter[A102467(n+2), A294934(#)]` -/
def P16517193271399581134.Spec : Prop :=
  ∀ n, P16517193271399581134.a n = A354145 (n + 1)

end A354145

/-! ## A354145.P7144256352306792372

`∩[A102467(n+1), A125493(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A354145

/-- `∩[A102467(n+1), A125493(n+1)]` -/
def P7144256352306792372.Spec : Prop :=
  ∀ n, (P7144256352306792372.a n : ℤ) = A354145 (n + 1)

theorem P7144256352306792372.correct : P7144256352306792372.Spec := by
  intro n
  simp only [A354145, Nat.add_sub_cancel]

end A354145

/-! ## A354145.P16344133685426130088

`∩[A102467(n+1), A237046(n+1)]`
-/

namespace A354145.P16344133685426130088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354145.P16344133685426130088

namespace A354145

/-- `∩[A102467(n+1), A237046(n+1)]` -/
def P16344133685426130088.Spec : Prop :=
  ∀ n, (P16344133685426130088.a n : ℤ) = A354145 (n + 1)

end A354145

/-! ## A354145.P916746732473188153

`A000196(A030633(n+5))`
-/

namespace A354145.P916746732473188153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A030633 (n + 5)).toNat

end

end A354145.P916746732473188153

namespace A354145

/-- `A000196(A030633(n+5))` -/
def P916746732473188153.Spec : Prop :=
  ∀ n, P916746732473188153.a n = A354145 (n + 1)

end A354145

/-! ## A354145.P5210962403176892480

`A030515(A351870(n)+6)`
-/

namespace A354145.P5210962403176892480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (A351870 n + 6).toNat

end

end A354145.P5210962403176892480

namespace A354145

/-- `A030515(A351870(n)+6)` -/
def P5210962403176892480.Spec : Prop :=
  ∀ n, P5210962403176892480.a n = A354145 (n + 1)

end A354145

/-!
# A354146: Even numbers in A353730 in order of appearance.

The programs for A354146, there is no canonical definition to state claims against.
-/

/-! ## A354146.P2997230448688347956

`A353730(∑[round(5*2^(n-2))])`
-/

namespace A354146.P2997230448688347956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354146.P2997230448688347956

/-! ## A354146.P17572713361367678533

`lcm(2, A353730(ceil(∑[5*2^(n-2)])))`
-/

namespace A354146.P17572713361367678533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A353730 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat)

end

end A354146.P17572713361367678533

/-! ## A354146.P6497178444955279788

`A353730(A052549(n))%(5*2^n-1)`
-/

namespace A354146.P6497178444955279788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353730 (A052549 n).toNat) ((5 * 2 ^ n : ℤ) - 1)

end

end A354146.P6497178444955279788

/-! ## A354146.P1756661904306402998

`A028310(A353730(record[2*a(n-2)+1]))` with `a(0)=1, a(1)=4`
-/

namespace A354146.P1756661904306402998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A353730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A354146.P1756661904306402998

/-! ## A354146.P17236061688725556755

`or(A000038(n), A353730(A052549(n)))`
-/

namespace A354146.P17236061688725556755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A353730 (A052549 n).toNat)

end

end A354146.P17236061688725556755

/-!
# A354147: Expansion of e.g.f. 1/(1 - 4 * log(1+x)).

The programs for A354147, there is no canonical definition to state claims against.
-/

/-! ## A354147.P10526120732876905831

`A320080(∑[n+5]+5)`
-/

namespace A354147.P10526120732876905831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320080 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A354147.P10526120732876905831

/-! ## A354147.P588479700401893419

`record[A320080(A052905(n))]`
-/

namespace A354147.P588479700401893419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320080 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354147.P588479700401893419

/-! ## A354147.P11021312880233479312

`A320080(A052905(n+2))+A025438(n)`
-/

namespace A354147.P11021312880233479312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320080 (A052905 (n + 2)).toNat + A025438 n

end

end A354147.P11021312880233479312

/-!
# A354148: Index of prime(n) in A090252.

The programs for A354148, there is no canonical definition to state claims against.
-/

/-! ## A354148.P1007167067887505155

`comp[A354164(n+1)-1]+1`
-/

namespace A354148.P1007167067887505155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354164 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A354148.P1007167067887505155

/-! ## A354148.P1687741545030655971

`eq[char[A354164(n+1)], A000007(n)]`
-/

namespace A354148.P1687741545030655971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354164 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A354148.P1687741545030655971

/-! ## A354148.P17485805477873861016

`eq[char[A354164(n+1)], A000038(n)]`
-/

namespace A354148.P17485805477873861016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354164 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A354148.P17485805477873861016

/-! ## A354148.P2397083474157791920

`eq[1, A001222(A008578(n+1)-A354154(n+1))]+1`
-/

namespace A354148.P2397083474157791920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1) - A354154 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354148.P2397083474157791920

/-! ## A354148.P6801865645688587522

`eq[1, A003415(A090252(n+1))]+1`
-/

namespace A354148.P6801865645688587522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A090252 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354148.P6801865645688587522

/-!
# A354149: Odd numbers in A090252 in order of appearance.

The programs for A354149, there is no canonical definition to state claims against.
-/

/-! ## A354149.P17574556586134427529

`A090252(comp[floor(∑[3*2^(n-2)])])`
-/

namespace A354149.P17574556586134427529
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A354149.P17574556586134427529

/-! ## A354149.P3041060090224025316

`filter[A090252(n+1), A374134(#)]`
-/

namespace A354149.P3041060090224025316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A354149.P3041060090224025316

/-! ## A354149.P17853991174685117236

`filter[A090252(n+1), A093719(#)]`
-/

namespace A354149.P17853991174685117236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A354149.P17853991174685117236

/-! ## A354149.P6761108671217014181

`filter[A090252(n+1), A254651(#)]`
-/

namespace A354149.P6761108671217014181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A354149.P6761108671217014181

/-! ## A354149.P12795608673169457603

`filter[A090252(n+1), A356172(#)]`
-/

namespace A354149.P12795608673169457603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A354149.P12795608673169457603

/-! ## A354149.P5752510448453761803

`filter[A090252(n+1), A000035(#)]`
-/

namespace A354149.P5752510448453761803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A354149.P5752510448453761803

/-! ## A354149.P13522098596797710392

`filter[A090252(n+1), A260390(#)]`
-/

namespace A354149.P13522098596797710392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A354149.P13522098596797710392

/-!
# A354150: Index of 2^n in A090252, or -1 if 2^n does not appear.

The programs for A354150, there is no canonical definition to state claims against.
-/

/-! ## A354150.P15347633764238015489

`A083329(∑[A001221(or(1, 3*2^n-2))])`
-/

namespace A354150.P15347633764238015489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 ((3 * 2 ^ n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354150.P15347633764238015489

/-! ## A354150.P2821946136513417848

`A083329(lt[3*2^(n-3), A355065(3*n+4)])`
-/

namespace A354150.P2821946136513417848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355065 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A354150.P2821946136513417848

/-! ## A354150.P3142719247781045203

`A083329(A335041(n+1)^A124389(n))`
-/

namespace A354150.P3142719247781045203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (SequenceMachineLib.roundAway ((A335041 (n + 1) : ℚ) ^ (A124389 n : ℤ))).toNat

end

end A354150.P3142719247781045203

/-! ## A354150.P6448436073799246295

`A083329(A335042(n+1)^A124389(n))`
-/

namespace A354150.P6448436073799246295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (SequenceMachineLib.roundAway ((A335042 (n + 1) : ℚ) ^ (A124389 n : ℤ))).toNat

end

end A354150.P6448436073799246295

/-! ## A354150.P3842285289022112670

`A083329(lt[A067539(n+1), A070940(2*n+3)])`
-/

namespace A354150.P3842285289022112670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354150.P3842285289022112670

/-!
# A354152: a(n) is the number of permutations pi in S_n such that pi(i) - i != 1 (mod n) and pi(i) - i != -1 (mod n) for all i.

The programs for A354152, there is no canonical definition to state claims against.
-/

/-! ## A354152.P10995220870152591030

`A320655(A244666(2*n+3))+A000179(n)`
-/

namespace A354152.P10995220870152591030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A244666 (2 * n + 3)).toNat + A000179 n

end

end A354152.P10995220870152591030

/-!
# A354154: a(1) = 0; for n>1, a(n) = prime(n-1) - A090252(n).

The programs for A354154, there is no canonical definition to state claims against.
-/

/-! ## A354154.P17449619492943802253

`A008578(n+1)-A090252(n+1)`
-/

namespace A354154.P17449619492943802253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A090252 (n + 1)

end

end A354154.P17449619492943802253

/-! ## A354154.P16051174190898624487

`Δ[A175965(n+1)]-A090252(n+1)`
-/

namespace A354154.P16051174190898624487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A090252 (n + 1)

end

end A354154.P16051174190898624487

/-! ## A354154.P17701484091047451488

`record[∏{p}[A090252(2*n+1-n), #]]-A090252(n+1)`
-/

namespace A354154.P17701484091047451488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (2 * n + 1 - n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A090252 (n + 1)

end

end A354154.P17701484091047451488

/-! ## A354154.P12994616755379433018

`record[A006530(n+1)]-A090252(n+1)`
-/

namespace A354154.P12994616755379433018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A090252 (n + 1)

end

end A354154.P12994616755379433018

/-! ## A354154.P10015721552410790018

`record[A020639(n+1)]-A090252(n+1)`
-/

namespace A354154.P10015721552410790018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A090252 (n + 1)

end

end A354154.P10015721552410790018

/-! ## A354154.P2797609179729540277

`record[A014963(n+1)]-A090252(n+1)`
-/

namespace A354154.P2797609179729540277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A090252 (n + 1)

end

end A354154.P2797609179729540277

/-! ## A354154.P7940467485367285231

`record[A057859(n+1)]-A090252(n+1)`
-/

namespace A354154.P7940467485367285231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A090252 (n + 1)

end

end A354154.P7940467485367285231

/-! ## A354154.P4323765220079858478

`record[A089026(n+1)]-A090252(n+1)`
-/

namespace A354154.P4323765220079858478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A090252 (n + 1)

end

end A354154.P4323765220079858478

/-! ## A354154.P15453908916251003774

`record[A064989(n+1)]-A090252(n+1)`
-/

namespace A354154.P15453908916251003774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A090252 (n + 1)

end

end A354154.P15453908916251003774

/-! ## A354154.P17736870755823234834

`A064989(p?[A259153(n)])-A090252(n+1)`
-/

namespace A354154.P17736870755823234834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A090252 (n + 1)

end

end A354154.P17736870755823234834

/-! ## A354154.P11527390169810739275

`A064989(p?[A090252(n+1)])-A090252(n+1)`
-/

namespace A354154.P11527390169810739275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A090252 (n + 1)

end

end A354154.P11527390169810739275

/-!
# A354155: Lagrange primes: primes p == 1 (mod 4) such that X = (p-1)/2 is the least solution in the interval [1, (p-1)/2] of the congruence (X!)^2 == -1 (mod p).

The programs for A354155, there is no canonical definition to state claims against.
-/

/-! ## A354155.P17812027585687522643

`A319287(eq[0, A289323(n)])`
-/

namespace A354155.P17812027585687522643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319287 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354155.P17812027585687522643

/-! ## A354155.P13936711633104563531

`p?[A000210(n+1)*A275714(n)]`
-/

namespace A354155.P13936711633104563531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (n + 1) * A275714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354155.P13936711633104563531

/-! ## A354155.P13824022510591681719

`lt[A246588(A089071(n+1)), A055029(n)]`
-/

namespace A354155.P13824022510591681719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246588 (A089071 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354155.P13824022510591681719

/-!
# A354156: Primes p == 1 (mod 4) which are not Lagrange primes.

The programs for A354156, there is no canonical definition to state claims against.
-/

/-! ## A354156.P1416428473887992575

`A088963(lt[A088972(3*n+5), A089004(n+1)])`
-/

namespace A354156.P1416428473887992575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088972 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088963 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354156.P1416428473887992575

/-! ## A354156.P12289438554934187572

`A088963(lt[A088972(3*n+5), A089005(n+1)])`
-/

namespace A354156.P12289438554934187572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088972 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088963 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354156.P12289438554934187572

/-! ## A354156.P16514006654702209209

`A002144(lt[A282344(n+1), A342783(3*n+2)])`
-/

namespace A354156.P16514006654702209209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342783 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354156.P16514006654702209209

/-!
# A354157: Numerator of generalized Catalan number c_3(n) (see Comments).

The programs for A354157, there is no canonical definition to state claims against.
-/

/-! ## A354157.P2827670894130047873

`A223538(A213644(n)+1)`
-/

namespace A354157.P2827670894130047873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223538 (A213644 n + 1).toNat

end

end A354157.P2827670894130047873

/-!
# A354158: The Bodlaender function: a(1) = -1; a(2*n) = a(n), a(2*n+1) = a(n+1) + n.

The programs for A354158, the canonical program `A354158.P9497624114601738341` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354158 has offset 1).

The definition of A354158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354158.P9497624114601738341

`a(floor(n/2))+n-gcd(n, ∑[n])` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A354158

/-- `a(floor(n/2))+n-gcd(n, ∑[n])` -/
def P9497624114601738341.Spec : Prop :=
  ∀ n, P9497624114601738341.a n = A354158 (n + 1)

theorem P9497624114601738341.correct : P9497624114601738341.Spec := by
  intro n
  simp only [A354158, Nat.add_sub_cancel]

end A354158

/-! ## A354158.P16206598925598058094

`A233931(n)-1`
-/

namespace A354158.P16206598925598058094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233931 n - 1

end

end A354158.P16206598925598058094

namespace A354158

/-- `A233931(n)-1` -/
def P16206598925598058094.Spec : Prop :=
  ∀ n, P16206598925598058094.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P20585765249583967

`n-A088371(n+1)`
-/

namespace A354158.P20585765249583967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A088371 (n + 1)

end

end A354158.P20585765249583967

namespace A354158

/-- `n-A088371(n+1)` -/
def P20585765249583967.Spec : Prop :=
  ∀ n, P20585765249583967.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P10015960361268236259

`n-(A264596(n)+1)`
-/

namespace A354158.P10015960361268236259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A264596 n + 1)

end

end A354158.P10015960361268236259

namespace A354158

/-- `n-(A264596(n)+1)` -/
def P10015960361268236259.Spec : Prop :=
  ∀ n, P10015960361268236259.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P5500717482987945292

`a(floor(n/2))+n-A026741(n)` with `a(0)=-1`
-/

namespace A354158.P5500717482987945292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) - A026741 n

end

end A354158.P5500717482987945292

namespace A354158

/-- `a(floor(n/2))+n-A026741(n)` -/
def P5500717482987945292.Spec : Prop :=
  ∀ n, P5500717482987945292.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P11576805543244656369

`A023443(A233931(n))`
-/

namespace A354158.P11576805543244656369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A233931 n).toNat

end

end A354158.P11576805543244656369

namespace A354158

/-- `A023443(A233931(n))` -/
def P11576805543244656369.Spec : Prop :=
  ∀ n, P11576805543244656369.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P17635036541086833190

`n-A004482(A264596(n))`
-/

namespace A354158.P17635036541086833190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004482 (A264596 n).toNat

end

end A354158.P17635036541086833190

namespace A354158

/-- `n-A004482(A264596(n))` -/
def P17635036541086833190.Spec : Prop :=
  ∀ n, P17635036541086833190.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P194309901885271336

`A023443(n-A264596(n))`
-/

namespace A354158.P194309901885271336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n : ℤ) - A264596 n).toNat

end

end A354158.P194309901885271336

namespace A354158

/-- `A023443(n-A264596(n))` -/
def P194309901885271336.Spec : Prop :=
  ∀ n, P194309901885271336.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P3349716141329087934

`A011371(n)-(A233905(n)+1)`
-/

namespace A354158.P3349716141329087934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - (A233905 n + 1)

end

end A354158.P3349716141329087934

namespace A354158

/-- `A011371(n)-(A233905(n)+1)` -/
def P3349716141329087934.Spec : Prop :=
  ∀ n, P3349716141329087934.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P17387737509184622272

`A233905(n)-(A233904(n)+1)`
-/

namespace A354158.P17387737509184622272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n - (A233904 n + 1)

end

end A354158.P17387737509184622272

namespace A354158

/-- `A233905(n)-(A233904(n)+1)` -/
def P17387737509184622272.Spec : Prop :=
  ∀ n, P17387737509184622272.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P12198663837064845593

`n-(A233905(n)+A000120(n)+1)`
-/

namespace A354158.P12198663837064845593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A233905 n + (A000120 n + 1))

end

end A354158.P12198663837064845593

namespace A354158

/-- `n-(A233905(n)+A000120(n)+1)` -/
def P12198663837064845593.Spec : Prop :=
  ∀ n, P12198663837064845593.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P7561981669975565815

`n-(A233905(n)+A063787(n+1))`
-/

namespace A354158.P7561981669975565815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A233905 n + A063787 (n + 1))

end

end A354158.P7561981669975565815

namespace A354158

/-- `n-(A233905(n)+A063787(n+1))` -/
def P7561981669975565815.Spec : Prop :=
  ∀ n, P7561981669975565815.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P15973350203435912039

`A233905(n)+n-(A228451(n)+1)`
-/

namespace A354158.P15973350203435912039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + (n : ℤ) - (A228451 n + 1)

end

end A354158.P15973350203435912039

namespace A354158

/-- `A233905(n)+n-(A228451(n)+1)` -/
def P15973350203435912039.Spec : Prop :=
  ∀ n, P15973350203435912039.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P4077776836561271323

`n-(A233905(n)+A070939(A001316(n)))`
-/

namespace A354158.P4077776836561271323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A233905 n + A070939 (A001316 n).toNat)

end

end A354158.P4077776836561271323

namespace A354158

/-- `n-(A233905(n)+A070939(A001316(n)))` -/
def P4077776836561271323.Spec : Prop :=
  ∀ n, P4077776836561271323.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P4850882868226500430

`A280193(A038712(n+1))+A233931(n)`
-/

namespace A354158.P4850882868226500430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A038712 (n + 1)).toNat + A233931 n

end

end A354158.P4850882868226500430

namespace A354158

/-- `A280193(A038712(n+1))+A233931(n)` -/
def P4850882868226500430.Spec : Prop :=
  ∀ n, P4850882868226500430.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P5251263772381529068

`n-(A233905(n)+A070939(A071044(n)))`
-/

namespace A354158.P5251263772381529068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A233905 n + A070939 (A071044 n).toNat)

end

end A354158.P5251263772381529068

namespace A354158

/-- `n-(A233905(n)+A070939(A071044(n)))` -/
def P5251263772381529068.Spec : Prop :=
  ∀ n, P5251263772381529068.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P10760082201174282130

`A280193(2*n+1)+A233931(n)`
-/

namespace A354158.P10760082201174282130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A233931 n

end

end A354158.P10760082201174282130

namespace A354158

/-- `A280193(2*n+1)+A233931(n)` -/
def P10760082201174282130.Spec : Prop :=
  ∀ n, P10760082201174282130.a n = A354158 (n + 1)

end A354158

/-! ## A354158.P12995541451904666423

`2*n-A264596(A051062(n))`
-/

namespace A354158.P12995541451904666423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A264596 (A051062 n).toNat

end

end A354158.P12995541451904666423

namespace A354158

/-- `2*n-A264596(A051062(n))` -/
def P12995541451904666423.Spec : Prop :=
  ∀ n, P12995541451904666423.a n = A354158 (n + 1)

end A354158

/-!
# A354159: Terms 2*p (p prime) in A090252, divided by 2, in order of appearance.

The programs for A354159, there is no canonical definition to state claims against.
-/

/-! ## A354159.P12899285717664193241

`record[A006530(A354255(n+2)/2)]`
-/

namespace A354159.P12899285717664193241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A354255 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354159.P12899285717664193241

/-! ## A354159.P12898803794596550436

`record[A006530(A354255(n+1))]`
-/

namespace A354159.P12898803794596550436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A354255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354159.P12898803794596550436

/-!
# A354160: Products of exactly two distinct primes in A090252, in order of appearance.

The programs for A354160, there is no canonical definition to state claims against.
-/

/-! ## A354160.P3452230473572854703

`A090252(A354161(n+1))`
-/

namespace A354160.P3452230473572854703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (A354161 (n + 1)).toNat

end

end A354160.P3452230473572854703

/-! ## A354160.P17921567959493483773

`filter[A354165(n+1), A354353(#)]`
-/

namespace A354160.P17921567959493483773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A354160.P17921567959493483773

/-! ## A354160.P330366306118012140

`filter[A354165(n+2), A008966(#)]`
-/

namespace A354160.P330366306118012140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A354160.P330366306118012140

/-! ## A354160.P3444784941875178455

`filter[A354165(n+2), A354819(#)]`
-/

namespace A354160.P3444784941875178455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A354160.P3444784941875178455

/-! ## A354160.P13261831944378382915

`filter[A354165(n+1), A280710(#)]`
-/

namespace A354160.P13261831944378382915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A354160.P13261831944378382915

/-! ## A354160.P10979691394987507999

`filter[A354165(n+1), A353471(#)]`
-/

namespace A354160.P10979691394987507999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A354160.P10979691394987507999

/-! ## A354160.P7198648430500634690

`filter[A354165(n+1), A353669(#)]`
-/

namespace A354160.P7198648430500634690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A354160.P7198648430500634690

/-! ## A354160.P9725300705477863330

`filter[A354165(n+2), A323154(#)]`
-/

namespace A354160.P9725300705477863330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A354160.P9725300705477863330

/-! ## A354160.P10009209111677873308

`filter[A354165(n+2), A353559(#)]`
-/

namespace A354160.P10009209111677873308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A354160.P10009209111677873308

/-! ## A354160.P16999069583187263110

`filter[A354165(n+2), A353629(#)]`
-/

namespace A354160.P16999069583187263110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A354160.P16999069583187263110

/-!
# A354161: Index of A354160(n) in A090252.

The programs for A354161, there is no canonical definition to state claims against.
-/

/-! ## A354161.P10085102167180737425

`eq[2, A001221(A090252(n+1))]+1`
-/

namespace A354161.P10085102167180737425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A090252 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354161.P10085102167180737425

/-! ## A354161.P938848798559281679

`eq[4/gcd(2, n), A105700(A090252(4*n+1))]-1`
-/

namespace A354161.P938848798559281679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A090252 (4 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n : ℤ) - 1

end

end A354161.P938848798559281679

/-! ## A354161.P5715057047127351173

`A065423(A355176(n+4)^A049099(n+1))`
-/

namespace A354161.P5715057047127351173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (SequenceMachineLib.roundAway ((A355176 (n + 4) : ℚ) ^ (A049099 (n + 1) : ℤ))).toNat

end

end A354161.P5715057047127351173

/-! ## A354161.P9165182549234286702

`lt[A161330(3*n), A161330(A354154(2*(n+1)))]`
-/

namespace A354161.P9165182549234286702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161330 (A354154 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354161.P9165182549234286702

/-!
# A354162: Products of exactly two distinct odd primes in A090252, in order of appearance.

The programs for A354162, there is no canonical definition to state claims against.
-/

/-! ## A354162.P16622856002744351072

`A090252(A354163(n+1))`
-/

namespace A354162.P16622856002744351072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (A354163 (n + 1)).toNat

end

end A354162.P16622856002744351072

/-! ## A354162.P15937996359351731980

`filter[A354160(n+1), A035263(#)]`
-/

namespace A354162.P15937996359351731980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A354162.P15937996359351731980

/-! ## A354162.P15403231196613361589

`filter[A354160(n+1), A093719(#)]`
-/

namespace A354162.P15403231196613361589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A354162.P15403231196613361589

/-! ## A354162.P16041246619358612518

`filter[A354160(n+1), A105234(#)]`
-/

namespace A354162.P16041246619358612518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A354162.P16041246619358612518

/-! ## A354162.P10730794570764743814

`filter[A354160(n+1), A127254(#)]`
-/

namespace A354162.P10730794570764743814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A354162.P10730794570764743814

/-! ## A354162.P17123823481795875510

`filter[A354160(n+1), A152822(#)]`
-/

namespace A354162.P17123823481795875510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A354162.P17123823481795875510

/-! ## A354162.P3362169094748321563

`filter[A354160(n+1), A254651(#)]`
-/

namespace A354162.P3362169094748321563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A354162.P3362169094748321563

/-! ## A354162.P6454636421608975727

`filter[A354160(n+1), A322980(#)]`
-/

namespace A354162.P6454636421608975727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A354162.P6454636421608975727

/-! ## A354162.P852499525099797482

`filter[A354160(n+1), A323158(#)]`
-/

namespace A354162.P852499525099797482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A354162.P852499525099797482

/-! ## A354162.P14150389306104992361

`filter[A354160(n+1), A323239(#)]`
-/

namespace A354162.P14150389306104992361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A354162.P14150389306104992361

/-!
# A354163: Index of A354162(n) in A090252.

The programs for A354163, there is no canonical definition to state claims against.
-/

/-! ## A354163.P6694953900973509743

`∩[A004763(n+1), A354161(n+1)]`
-/

namespace A354163.P6694953900973509743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354163.P6694953900973509743

/-! ## A354163.P3768275098751046561

`record[A354161(A039996(3*n+5))]`
-/

namespace A354163.P3768275098751046561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354161 (A039996 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354163.P3768275098751046561

/-!
# A354164: Indices of nonprimes in A090252.

The programs for A354164, there is no canonical definition to state claims against.
-/

/-! ## A354164.P6367795284487529944

`lt[n*char[A354148(n+1)], n]`
-/

namespace A354164.P6367795284487529944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A354164.P6367795284487529944

/-! ## A354164.P1998550317166345133

`eq[char[A354148(n+1)], A000007(n)]`
-/

namespace A354164.P1998550317166345133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A354164.P1998550317166345133

/-! ## A354164.P16917400283086877327

`eq[char[A354148(n+1)], A000038(n)]`
-/

namespace A354164.P16917400283086877327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A354164.P16917400283086877327

/-! ## A354164.P17291356838707946615

`lt[char[A354148(n+1)], n/A005946(n+1)]`
-/

namespace A354164.P17291356838707946615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A005946 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A354164.P17291356838707946615

/-! ## A354164.P14210481394845436197

`lt[char[A354148(n+1)], n/A325128(n+1)]`
-/

namespace A354164.P14210481394845436197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A325128 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A354164.P14210481394845436197

/-! ## A354164.P14682399600454552759

`lt[char[A354148(n+1)], n/A027383(n)]`
-/

namespace A354164.P14682399600454552759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354148 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A027383 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A354164.P14682399600454552759

/-!
# A354165: Nonprimes in A090252 in order of appearance.

The programs for A354165, there is no canonical definition to state claims against.
-/

/-! ## A354165.P14639217186464499289

`A090252(A354164(n+1))`
-/

namespace A354165.P14639217186464499289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (A354164 (n + 1)).toNat

end

end A354165.P14639217186464499289

/-!
# A354166: Number of nonprimes among first n terms of A090252.

The programs for A354166, there is no canonical definition to state claims against.
-/

/-! ## A354166.P12288155498108458

`∑[char[A354164(n+1)-1]]`
-/

namespace A354166.P12288155498108458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354164 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354166.P12288155498108458

/-! ## A354166.P11637098563210170262

`n+1-∑[char[A354148(n+1)-1]]`
-/

namespace A354166.P11637098563210170262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354148 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A354166.P11637098563210170262

/-! ## A354166.P13021428699301248084

`∑[char[A023443(A354164(n+1))]]`
-/

namespace A354166.P13021428699301248084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A354164 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354166.P13021428699301248084

/-! ## A354166.P13222234973435352092

`comp[A354164(n+1)+A023443(n)]-n`
-/

namespace A354166.P13222234973435352092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354164 (n + 1) + A023443 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A354166.P13222234973435352092

/-! ## A354166.P4724645572461758200

`∑[1-A010051(A090252(n+1))]`
-/

namespace A354166.P4724645572461758200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (A090252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354166.P4724645572461758200

/-!
# A354167: Let M_p = 2^p-1 be a Mersenne prime, where p is an odd prime. Sequence lists p such that b_{p-2} == 2^((p+1)/2) mod M_p, where {b_k} is defined in the Comments.

The programs for A354167, there is no canonical definition to state claims against.
-/

/-! ## A354167.P1170738217400941098

`A000043(∑[A265793(2*n+5)%(A061395(n+1)+3)])`
-/

namespace A354167.P1170738217400941098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265793 (2 * n + 5)) (A061395 (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354167.P1170738217400941098

/-! ## A354167.P11270140350411485885

`A163465(A100216(n))`
-/

namespace A354167.P11270140350411485885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163465 (A100216 n).toNat

end

end A354167.P11270140350411485885

/-!
# A354168: Let M_p = 2^p-1 be a Mersenne prime, where p is an odd prime. Sequence lists p such that b_{p-2} == -2^((p+1)/2) mod M_p, where {b_k} is defined in the Comments.

The programs for A354168, there is no canonical definition to state claims against.
-/

/-! ## A354168.P6093377816874996702

`A000043(xor(A005117(n+4), A324435(n)))`
-/

namespace A354168.P6093377816874996702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (Int.xor (A005117 (n + 4)) (A324435 n)).toNat

end

end A354168.P6093377816874996702

/-!
# A354169: a(0) = 0, a(1) = 1, a(2) = 2; for k >= 2, given a(k), the sequence is extended by adjoining two terms: a(2*k-1) = smallest m >= 0 not among a(0) .. a(k) such that {m, a(k), a(k+1), ..., a(2*k-2)} are pairwise disjoint in binary, and a(2*k) = smallest m >= 0 not among a(0) .. a(k) such that {m, a(k), ..., a(2*k-1)} are pairwise disjoint in binary.

The programs for A354169, there is no canonical definition to state claims against.
-/

/-! ## A354169.P5253684775256957247

`or(A354757(n+1), A354757(n))-A354757(n)`
-/

namespace A354169.P5253684775256957247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A354757 (n + 1)) (A354757 n) - A354757 n

end

end A354169.P5253684775256957247

/-! ## A354169.P15788016410971954854

`A048675(A355701(n))`
-/

namespace A354169.P15788016410971954854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A355701 n).toNat

end

end A354169.P15788016410971954854

/-! ## A354169.P2180281605845666154

`A352782(lt[A327691(n), A006530(3*n+5)])`
-/

namespace A354169.P2180281605845666154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352782 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354169.P2180281605845666154

/-! ## A354169.P5609631769380337999

`A359893(A139250(n+2))+A289271(n+1)`
-/

namespace A354169.P5609631769380337999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (A139250 (n + 2)).toNat + A289271 (n + 1)

end

end A354169.P5609631769380337999

/-! ## A354169.P7169627473342627747

`A002262(2^comp[or(2, n)+n])`
-/

namespace A354169.P7169627473342627747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A354169.P7169627473342627747

/-!
# A354170: Odd numbers whose Collatz trajectory includes 11 odd numbers.

The programs for A354170, there is no canonical definition to state claims against.
-/

/-! ## A354170.P7660682621430430803

`filter[A072466(n+1), A374474(#)]`
-/

namespace A354170.P7660682621430430803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A354170.P7660682621430430803

/-! ## A354170.P4220873485009466143

`filter[A072466(n+1), A379952(#)]`
-/

namespace A354170.P4220873485009466143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A354170.P4220873485009466143

/-! ## A354170.P13554738176113996525

`filter[A072466(n+1), A323158(#)]`
-/

namespace A354170.P13554738176113996525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A354170.P13554738176113996525

/-! ## A354170.P6329841551619315815

`filter[A072466(n+1), A324908(#)]`
-/

namespace A354170.P6329841551619315815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A354170.P6329841551619315815

/-! ## A354170.P14033499718696214610

`A005408(eq[10, A075680(n+1)])`
-/

namespace A354170.P14033499718696214610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354170.P14033499718696214610

/-! ## A354170.P8033062167763570641

`∩[A072466(n+1), A004273(n)]`
-/

namespace A354170.P8033062167763570641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P8033062167763570641

/-! ## A354170.P14112930160824962129

`∩[A072466(n+1), A004274(n)]`
-/

namespace A354170.P14112930160824962129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P14112930160824962129

/-! ## A354170.P506480546332134011

`∩[A072466(n+1), A004276(n)]`
-/

namespace A354170.P506480546332134011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P506480546332134011

/-! ## A354170.P18153374439162988730

`∩[A072466(n+1), A004281(n)]`
-/

namespace A354170.P18153374439162988730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P18153374439162988730

/-! ## A354170.P15765218407575282815

`∩[A072466(n+1), A020742(n)]`
-/

namespace A354170.P15765218407575282815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P15765218407575282815

/-! ## A354170.P17441760910619361854

`∩[A072466(n+1), A060747(n)]`
-/

namespace A354170.P17441760910619361854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P17441760910619361854

/-! ## A354170.P5631164801724082217

`∩[A072466(n+1), A062545(n)]`
-/

namespace A354170.P5631164801724082217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P5631164801724082217

/-! ## A354170.P17104671556715161932

`∩[A072466(n+1), A130773(n)]`
-/

namespace A354170.P17104671556715161932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P17104671556715161932

/-! ## A354170.P2498722087867706539

`∩[A072466(n+1), A163985(n)]`
-/

namespace A354170.P2498722087867706539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P2498722087867706539

/-! ## A354170.P14084381118625405071

`∩[A072466(n+1), A223134(n)]`
-/

namespace A354170.P14084381118625405071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P14084381118625405071

/-! ## A354170.P4702961332005236402

`∩[A072466(n+1), A326494(n)]`
-/

namespace A354170.P4702961332005236402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P4702961332005236402

/-! ## A354170.P10403394788398346645

`∩[A004280(n+1), A072466(n+1)]`
-/

namespace A354170.P10403394788398346645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P10403394788398346645

/-! ## A354170.P14212160204628453163

`∩[A005818(n+1), A072466(n+1)]`
-/

namespace A354170.P14212160204628453163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P14212160204628453163

/-! ## A354170.P15403580672167828320

`∩[A020735(n+1), A072466(n+1)]`
-/

namespace A354170.P15403580672167828320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P15403580672167828320

/-! ## A354170.P10461304847267599036

`∩[A053460(n+1), A072466(n+1)]`
-/

namespace A354170.P10461304847267599036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354170.P10461304847267599036

/-!
# A354171: Product_{n>=1} (1 + x^n)^(a(n)/n!) = 1 + sin(x).

The programs for A354171, there is no canonical definition to state claims against.
-/

/-! ## A354171.P476466742297430358

`A353607(n+1)%A325644(A069466(2*(n+2)))`
-/

namespace A354171.P476466742297430358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353607 (n + 1)) (A325644 (A069466 (2 * (n + 2))).toNat)

end

end A354171.P476466742297430358

/-!
# A354175: Product_{n>=1} (1 + x^n)^(a(n)/n!) = 1 + tan(x).

The programs for A354175, there is no canonical definition to state claims against.
-/

/-! ## A354175.P13303182761428252256

`A353611(n+1)+A200513(A074047(n+1))`
-/

namespace A354175.P13303182761428252256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353611 (n + 1) + A200513 (A074047 (n + 1)).toNat

end

end A354175.P13303182761428252256

/-!
# A354178: Numbers whose number of divisors is coprime to 30.

The programs for A354178, there is no canonical definition to state claims against.
-/

/-! ## A354178.P3726740009567901890

`A354179(n+1)²`
-/

namespace A354178.P3726740009567901890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354179 (n + 1) ^ 2

end

end A354178.P3726740009567901890

/-! ## A354178.P16755972858580373884

`A354179(n+1)^A040001(2*n)`
-/

namespace A354178.P16755972858580373884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354179 (n + 1) : ℚ) ^ (A040001 (2 * n) : ℤ)

end

end A354178.P16755972858580373884

/-! ## A354178.P12892615674180595059

`A354179(n+1)^A014963(A001316(n))`
-/

namespace A354178.P12892615674180595059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354179 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A354178.P12892615674180595059

/-! ## A354178.P15479532331170718334

`A354179(n+1)^A020639(A008574(n))`
-/

namespace A354178.P15479532331170718334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354179 (n + 1) : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A354178.P15479532331170718334

/-! ## A354178.P753748522573783636

`A354179(n+1)^A000005(A230775(n+1))`
-/

namespace A354178.P753748522573783636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354179 (n + 1) : ℚ) ^ (A000005 (A230775 (n + 1)).toNat : ℤ)

end

end A354178.P753748522573783636

/-! ## A354178.P9583625347648762645

`A354179(n+1)^A000005(A185934(n+1))`
-/

namespace A354178.P9583625347648762645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354179 (n + 1) : ℚ) ^ (A000005 (A185934 (n + 1)).toNat : ℤ)

end

end A354178.P9583625347648762645

/-! ## A354178.P16645262301852360308

`∩[A074632(n+1), A352475(n+1)]`
-/

namespace A354178.P16645262301852360308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354178.P16645262301852360308

/-!
# A354179: Numbers whose square has a number of divisors that is coprime to 30.

The programs for A354179, there is no canonical definition to state claims against.
-/

/-! ## A354179.P17432915879874421984

`sqrt(A354178(n+1))`
-/

namespace A354179.P17432915879874421984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A354178 (n + 1) : ℝ)

end

end A354179.P17432915879874421984

/-! ## A354179.P4805222786911063392

`root(A354178(n+1), 2)^A134824(n)²`
-/

namespace A354179.P4805222786911063392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A354178 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ (A134824 n ^ 2 : ℤ)

end

end A354179.P4805222786911063392

/-! ## A354179.P6144819924724892130

`root(A354178(n+1), A001316(A001316(n)))`
-/

namespace A354179.P6144819924724892130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A354178 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A354179.P6144819924724892130

/-! ## A354179.P3867794407449982837

`root(A354178(n+1), A034444(A034444(n+1)))`
-/

namespace A354179.P3867794407449982837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A354178 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A354179.P3867794407449982837

/-!
# A354181: Numbers whose number of divisors is not a 3-smooth number.

The programs for A354181, the canonical program `A354181.P5903577744027988900` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354181 has offset 1).

The definition of A354181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2564 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354181.P5903577744027988900

`lt[1, A035218(A000005(n+1))]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A354181

/-- `lt[1, A035218(A000005(n+1))]+1` -/
def P5903577744027988900.Spec : Prop :=
  ∀ n, (P5903577744027988900.a n : ℤ) = A354181 (n + 1)

theorem P5903577744027988900.correct : P5903577744027988900.Spec := by
  intro n
  simp only [A354181, Nat.add_sub_cancel]

end A354181

/-! ## A354181.P6435945533566667032

`lt[2, A001221(6*A000005(n+1))]+1`
-/

namespace A354181.P6435945533566667032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (6 * A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354181.P6435945533566667032

namespace A354181

/-- `lt[2, A001221(6*A000005(n+1))]+1` -/
def P6435945533566667032.Spec : Prop :=
  ∀ n, (P6435945533566667032.a n : ℤ) = A354181 (n + 1)

end A354181

/-! ## A354181.P10320701092195739135

`lt[2, A035218(A000005(n-a(3%n))²)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A354181.P10320701092195739135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 0] fun n f2 =>
  A035218 (A000005 ((n : ℤ) - f2 (3 % n)).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354181.P10320701092195739135

namespace A354181

/-- `lt[2, A035218(A000005(n-a(3%n))²)]` -/
def P10320701092195739135.Spec : Prop :=
  ∀ n, (P10320701092195739135.a n : ℤ) = A354181 (n + 1)

end A354181

/-! ## A354181.P5068292195271979333

`lt[3, A071188(n+1)]+1`
-/

namespace A354181.P5068292195271979333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354181.P5068292195271979333

namespace A354181

/-- `lt[3, A071188(n+1)]+1` -/
def P5068292195271979333.Spec : Prop :=
  ∀ n, (P5068292195271979333.a n : ℤ) = A354181 (n + 1)

end A354181

/-! ## A354181.P13981432865154361645

`lt[3, A078545(n+2)]+2`
-/

namespace A354181.P13981432865154361645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078545 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A354181.P13981432865154361645

namespace A354181

/-- `lt[3, A078545(n+2)]+2` -/
def P13981432865154361645.Spec : Prop :=
  ∀ n, (P13981432865154361645.a n : ℤ) = A354181 (n + 1)

end A354181

/-! ## A354181.P1818874058396527530

`eq[0, A065333(A145154(n))]`
-/

namespace A354181.P1818874058396527530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354181.P1818874058396527530

namespace A354181

/-- `eq[0, A065333(A145154(n))]` -/
def P1818874058396527530.Spec : Prop :=
  ∀ n, (P1818874058396527530.a n : ℤ) = A354181 (n + 1)

end A354181

/-! ## A354181.P13809005517900293700

`lt[3, A071188(A028310(n))]`
-/

namespace A354181.P13809005517900293700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071188 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354181.P13809005517900293700

namespace A354181

/-- `lt[3, A071188(A028310(n))]` -/
def P13809005517900293700.Spec : Prop :=
  ∀ n, (P13809005517900293700.a n : ℤ) = A354181 (n + 1)

end A354181

/-! ## A354181.P4129536222136812024

`lt[3, A006530(A032741(n)+1)]`
-/

namespace A354181.P4129536222136812024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354181.P4129536222136812024

namespace A354181

/-- `lt[3, A006530(A032741(n)+1)]` -/
def P4129536222136812024.Spec : Prop :=
  ∀ n, (P4129536222136812024.a n : ℤ) = A354181 (n + 1)

end A354181

/-!
# A354182: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, the binary expansions of n and n + a(n) have no 1's in common.

The programs for A354182, the canonical program `A354182.P4183270851239720983` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354182 has offset 0).

The definition of A354182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354182.P9433733498736341541

`∑{d}[3*n, A300724(#)]-n`
-/

namespace A354182.P9433733498736341541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300724 d - (n : ℤ)

end

end A354182.P9433733498736341541

namespace A354182

/-- `∑{d}[3*n, A300724(#)]-n` -/
def P9433733498736341541.Spec : Prop :=
  ∀ n, P9433733498736341541.a n = A354182 n

end A354182

/-! ## A354182.P4183270851239720983

`2*n-and(3*n, A003817(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354182

/-- `2*n-and(3*n, A003817(n))` -/
def P4183270851239720983.Spec : Prop :=
  ∀ n, P4183270851239720983.a n = A354182 n

theorem P4183270851239720983.correct : P4183270851239720983.Spec := by
  intro n
  simp only [A354182]

end A354182

/-! ## A354182.P5976187339648562698

`A155559(ceil(log2(round((n+1)/2)+n)))-n`
-/

namespace A354182.P5976187339648562698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 ⌈Real.logb 2 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2) + (n : ℤ) : ℝ)⌉.toNat - (n : ℤ)

end

end A354182.P5976187339648562698

namespace A354182

/-- `A155559(ceil(log2(round((n+1)/2)+n)))-n` -/
def P5976187339648562698.Spec : Prop :=
  ∀ n, P5976187339648562698.a n = A354182 n

end A354182

/-! ## A354182.P6008354599378267023

`((A246831(n)+1)*2*n)%(2*n+1)`
-/

namespace A354182.P6008354599378267023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A246831 n + 1) * (2 * n : ℤ)) (2 * n + 1 : ℤ)

end

end A354182.P6008354599378267023

namespace A354182

/-- `((A246831(n)+1)*2*n)%(2*n+1)` -/
def P6008354599378267023.Spec : Prop :=
  ∀ n, P6008354599378267023.a n = A354182 n

end A354182

/-! ## A354182.P7290440233767479624

`A122155(3*n)/3`
-/

namespace A354182.P7290440233767479624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122155 (3 * n) : ℚ) / 3

end

end A354182.P7290440233767479624

namespace A354182

/-- `A122155(3*n)/3` -/
def P7290440233767479624.Spec : Prop :=
  ∀ n, P7290440233767479624.a n = (A354182 n : ℚ)

end A354182

/-! ## A354182.P11940252338685402456

`A292264(and(3*n, -(n+1)))-n`
-/

namespace A354182.P11940252338685402456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (Int.land (3 * n : ℤ) (-(n + 1 : ℤ))).toNat - (n : ℤ)

end

end A354182.P11940252338685402456

namespace A354182

/-- `A292264(and(3*n, -(n+1)))-n` -/
def P11940252338685402456.Spec : Prop :=
  ∀ n, P11940252338685402456.a n = A354182 n

end A354182

/-! ## A354182.P15717130832081622065

`A380185(A380184(n))`
-/

namespace A354182.P15717130832081622065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380185 (A380184 n).toNat

end

end A354182.P15717130832081622065

namespace A354182

/-- `A380185(A380184(n))` -/
def P15717130832081622065.Spec : Prop :=
  ∀ n, P15717130832081622065.a n = A354182 n

end A354182

/-! ## A354182.P8881421306818364336

`A380183(A380186(n))`
-/

namespace A354182.P8881421306818364336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A380186 n).toNat

end

end A354182.P8881421306818364336

namespace A354182

/-- `A380183(A380186(n))` -/
def P8881421306818364336.Spec : Prop :=
  ∀ n, P8881421306818364336.a n = A354182 n

end A354182

/-! ## A354182.P7656614848730037242

`A053644(3*n)-n`
-/

namespace A354182.P7656614848730037242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (3 * n) - (n : ℤ)

end

end A354182.P7656614848730037242

namespace A354182

/-- `A053644(3*n)-n` -/
def P7656614848730037242.Spec : Prop :=
  ∀ n, P7656614848730037242.a n = A354182 n

end A354182

/-! ## A354182.P4654797536567676498

`ceil(A092569(3*n)/3)`
-/

namespace A354182.P4654797536567676498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092569 (3 * n) : ℚ) / 3⌉

end

end A354182.P4654797536567676498

namespace A354182

/-- `ceil(A092569(3*n)/3)` -/
def P4654797536567676498.Spec : Prop :=
  ∀ n, P4654797536567676498.a n = A354182 n

end A354182

/-! ## A354182.P4815442673122250067

`A072376(6*n)-n`
-/

namespace A354182.P4815442673122250067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (6 * n) - (n : ℤ)

end

end A354182.P4815442673122250067

namespace A354182

/-- `A072376(6*n)-n` -/
def P4815442673122250067.Spec : Prop :=
  ∀ n, P4815442673122250067.a n = A354182 n

end A354182

/-! ## A354182.P2632031310013549213

`round(A054429(6*n+1)/6)`
-/

namespace A354182.P2632031310013549213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054429 (6 * n + 1) : ℚ) / 6)

end

end A354182.P2632031310013549213

namespace A354182

/-- `round(A054429(6*n+1)/6)` -/
def P2632031310013549213.Spec : Prop :=
  ∀ n, P2632031310013549213.a n = A354182 n

end A354182

/-!
# A354183: Primes p such that p divides 2^((p-1)/x) - 1, where x is the greatest prime factor of p - 1.

The programs for A354183, there is no canonical definition to state claims against.
-/

/-! ## A354183.P6478418173963475902

`p?[A108192(n+1)+A108175(2*n+1)]`
-/

namespace A354183.P6478418173963475902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108192 (n + 1) + A108175 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354183.P6478418173963475902

/-!
# A354184: a(1) = a(2) = 1, a(n) = (A007947(31*a(n-1)) + A007947(31*a(n-2)))/31 for n >= 3, i.e., 31*a(n) is the largest squarefree divisor of 31*a(n-1) plus the largest squarefree divisor of 31*a(n-2).

The programs for A354184, the canonical program `A354184.P10815399711426922392` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354184 has offset 1).

The definition of A354184 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354184.P10815399711426922392

`(A007947(31*a(n-1))+A007947(31*a(n-2)))/31` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354184

/-- `(A007947(31*a(n-1))+A007947(31*a(n-2)))/31` -/
def P10815399711426922392.Spec : Prop :=
  ∀ n, P10815399711426922392.a n = (A354184 (n + 1) : ℚ)

end A354184

/-!
# A354185: Möbius transform of A348717.

The programs for A354185, there is no canonical definition to state claims against.
-/

/-! ## A354185.P7164493504811030468

`∑{d}[n+1, A008683(#)*A348717((n+1)/#)]`
-/

namespace A354185.P7164493504811030468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A348717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354185.P7164493504811030468

/-! ## A354185.P14216918505772732583

`A304455(n+1)+A051700(A052953(n))`
-/

namespace A354185.P14216918505772732583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A051700 (A052953 n).toNat

end

end A354185.P14216918505772732583

/-! ## A354185.P2547052471699598890

`A002034(A322994(n+1)!)`
-/

namespace A354185.P2547052471699598890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Nat.factorial (A322994 (n + 1)).toNat)

end

end A354185.P2547052471699598890

/-! ## A354185.P11942597810263129947

`A025492(A322994(n+1)!)`
-/

namespace A354185.P11942597810263129947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (Nat.factorial (A322994 (n + 1)).toNat)

end

end A354185.P11942597810263129947

/-! ## A354185.P1935853266004615135

`A084556(A322994(n+1)!)`
-/

namespace A354185.P1935853266004615135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (Nat.factorial (A322994 (n + 1)).toNat)

end

end A354185.P1935853266004615135

/-!
# A354186: Dirichlet inverse of A348717.

The programs for A354186, there is no canonical definition to state claims against.
-/

/-! ## A354186.P15013380068442894908

`A354187(n+1)-A348717(n+1)`
-/

namespace A354186.P15013380068442894908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (n + 1) - A348717 (n + 1)

end

end A354186.P15013380068442894908

/-! ## A354186.P15786142008879734512

`A354187(n+1)-∑{d}[n+1, A354185(#)]`
-/

namespace A354186.P15786142008879734512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A354185 d

end

end A354186.P15786142008879734512

/-! ## A354186.P6482487103982073426

`A354187(n+1)-A004277(A246277(n+1))`
-/

namespace A354186.P6482487103982073426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (n + 1) - A004277 (A246277 (n + 1)).toNat

end

end A354186.P6482487103982073426

/-! ## A354186.P8704803529937284493

`A354187(n+1)-A004275(A305897(n+1))`
-/

namespace A354186.P8704803529937284493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (n + 1) - A004275 (A305897 (n + 1)).toNat

end

end A354186.P8704803529937284493

/-! ## A354186.P17907696051089527123

`A354187(n+1)-A352892(A003961(n+1))`
-/

namespace A354186.P17907696051089527123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (n + 1) - A352892 (A003961 (n + 1)).toNat

end

end A354186.P17907696051089527123

/-! ## A354186.P13730806840016031251

`A354187(n+1)-A352892(A253885(n)+1)`
-/

namespace A354186.P13730806840016031251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (n + 1) - A352892 (A253885 n + 1).toNat

end

end A354186.P13730806840016031251

/-! ## A354186.P3922068326641839863

`A354187(n+1)-A352892(A243501(n+1)-1)`
-/

namespace A354186.P3922068326641839863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (n + 1) - A352892 (A243501 (n + 1) - 1).toNat

end

end A354186.P3922068326641839863

/-! ## A354186.P5991063888784887721

`A354187(n+1)-A137502(A137502(n+1))`
-/

namespace A354186.P5991063888784887721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354187 (n + 1) - A137502 (A137502 (n + 1)).toNat

end

end A354186.P5991063888784887721

/-!
# A354187: Sum of A348717 and its Dirichlet inverse.

The programs for A354187, there is no canonical definition to state claims against.
-/

/-! ## A354187.P14028125162283926391

`A348717(n+1)+A354186(n+1)`
-/

namespace A354187.P14028125162283926391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) + A354186 (n + 1)

end

end A354187.P14028125162283926391

/-! ## A354187.P4328444784632379030

`A354186(n+1)+A004277(A246277(n+1))`
-/

namespace A354187.P4328444784632379030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (n + 1) + A004277 (A246277 (n + 1)).toNat

end

end A354187.P4328444784632379030

/-! ## A354187.P7966759802429615180

`A354186(n+1)+A000007(n)+2*A246277(n+1)`
-/

namespace A354187.P7966759802429615180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (n + 1) + (A000007 n + 2 * A246277 (n + 1))

end

end A354187.P7966759802429615180

/-! ## A354187.P17571610799075584453

`A354186(n+1)+A078898(n+1)+A280492(n+1)+A246277(n+1)`
-/

namespace A354187.P17571610799075584453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (n + 1) + (A078898 (n + 1) + (A280492 (n + 1) + A246277 (n + 1)))

end

end A354187.P17571610799075584453

/-! ## A354187.P11325788214183650602

`A354186(n+1)+A065033(4*A246277(n+1))`
-/

namespace A354187.P11325788214183650602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (n + 1) + A065033 (4 * A246277 (n + 1)).toNat

end

end A354187.P11325788214183650602

/-! ## A354187.P779655927934350388

`A246277(n+1)+A354186(n+1)+A078898(A249817(n+1))`
-/

namespace A354187.P779655927934350388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + (A354186 (n + 1) + A078898 (A249817 (n + 1)).toNat)

end

end A354187.P779655927934350388

/-! ## A354187.P15676057274759158343

`A354186(n+1)+A352892(A003961(n+1))`
-/

namespace A354187.P15676057274759158343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (n + 1) + A352892 (A003961 (n + 1)).toNat

end

end A354187.P15676057274759158343

/-! ## A354187.P103498929634533915

`A354186(n+1)+A137502(A137502(n+1))`
-/

namespace A354187.P103498929634533915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354186 (n + 1) + A137502 (A137502 (n + 1)).toNat

end

end A354187.P103498929634533915

/-!
# A354188: a(n) = 1 if phi(A267099(n)) is equal to phi(n), and 0 otherwise. Here A267099 is fully multiplicative involution swapping the positions of 4k+1 and 4k+3 primes, and phi is Euler totient function.

The programs for A354188, there is no canonical definition to state claims against.
-/

/-! ## A354188.P6472615098114269977

`C(2, A354101(n+1)²)`
-/

namespace A354188.P6472615098114269977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A354101 (n + 1) ^ 2).toNat

end

end A354188.P6472615098114269977

/-! ## A354188.P5483383553010351971

`char[A354189(n+1)-1]`
-/

namespace A354188.P5483383553010351971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354189 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354188.P5483383553010351971

/-! ## A354188.P5280734843419928988

`∏{p}[A354101(n+1), A354101(#)]`
-/

namespace A354188.P5280734843419928988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A354101 p

end

end A354188.P5280734843419928988

/-! ## A354188.P8257146563884366102

`C(A290081(n), abs(A354101(n+1)))`
-/

namespace A354188.P8257146563884366102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A290081 n).toNat |A354101 (n + 1)|.toNat

end

end A354188.P8257146563884366102

/-! ## A354188.P11821363166326874265

`C(A354090(n+1), abs(A354101(n+1)))`
-/

namespace A354188.P11821363166326874265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354090 (n + 1)).toNat |A354101 (n + 1)|.toNat

end

end A354188.P11821363166326874265

/-! ## A354188.P9353384662199376608

`C(A354099(n+1), abs(A354101(n+1)))`
-/

namespace A354188.P9353384662199376608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354099 (n + 1)).toNat |A354101 (n + 1)|.toNat

end

end A354188.P9353384662199376608

/-! ## A354188.P9446727600851251699

`∏{d}[A354101(n+1), A001221(#)]`
-/

namespace A354188.P9446727600851251699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A354188.P9446727600851251699

/-! ## A354188.P14301418383391928585

`∏{d}[A354101(n+1), A001222(#)]`
-/

namespace A354188.P14301418383391928585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A354188.P14301418383391928585

/-! ## A354188.P6444625441198681132

`C(A354057(n+1), abs(A354101(n+1)))`
-/

namespace A354188.P6444625441198681132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354057 (n + 1)).toNat |A354101 (n + 1)|.toNat

end

end A354188.P6444625441198681132

/-! ## A354188.P7903911255968841012

`C(A354058(n+1), abs(A354101(n+1)))`
-/

namespace A354188.P7903911255968841012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354058 (n + 1)).toNat |A354101 (n + 1)|.toNat

end

end A354188.P7903911255968841012

/-! ## A354188.P11581170346015807002

`C(A354059(n+1), abs(A354101(n+1)))`
-/

namespace A354188.P11581170346015807002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A354059 (n + 1)).toNat |A354101 (n + 1)|.toNat

end

end A354188.P11581170346015807002

/-! ## A354188.P89761187264529320

`A019590(abs(A354101(n+1))+1)`
-/

namespace A354188.P89761187264529320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (|A354101 (n + 1)| + 1).toNat

end

end A354188.P89761187264529320

/-! ## A354188.P12897164846096274596

`A010052(A354101(n+1)+n²)`
-/

namespace A354188.P12897164846096274596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A354101 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A354188.P12897164846096274596

/-!
# A354189: Numbers k for which phi(A267099(k)) is equal to phi(k), where A267099 is fully multiplicative involution swapping the positions of 4k+1 and 4k+3 primes, and phi is Euler totient function.

The programs for A354189, there is no canonical definition to state claims against.
-/

/-! ## A354189.P1819861468997749507

`record[(n+1)*A354188(n+1)]`
-/

namespace A354189.P1819861468997749507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354189.P1819861468997749507

/-! ## A354189.P10267484765813346961

`lt[0, A354188(n+1)]+1`
-/

namespace A354189.P10267484765813346961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354189.P10267484765813346961

/-! ## A354189.P11244932258294223840

`filter[A072202(n+1), A354188(#)]`
-/

namespace A354189.P11244932258294223840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P11244932258294223840

/-! ## A354189.P5111355469771584534

`filter[A078613(n+1), A354188(#)]`
-/

namespace A354189.P5111355469771584534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P5111355469771584534

/-! ## A354189.P5059585269643991122

`filter[A036349(n+1), A354188(#)]`
-/

namespace A354189.P5059585269643991122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P5059585269643991122

/-! ## A354189.P17670354616897534618

`eq[0, A354101(n+1)]+1`
-/

namespace A354189.P17670354616897534618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354189.P17670354616897534618

/-! ## A354189.P14992849608023413307

`filter[A268381(n+1), A354188(#)]`
-/

namespace A354189.P14992849608023413307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P14992849608023413307

/-! ## A354189.P7399484057445786331

`filter[A267894(n+1), A354188(#)]`
-/

namespace A354189.P7399484057445786331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P7399484057445786331

/-! ## A354189.P10966753234154260543

`filter[A347202(n+1), A354188(#)]`
-/

namespace A354189.P10966753234154260543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P10966753234154260543

/-! ## A354189.P8518688175368891765

`filter[A065090(n+1), A354188(#)]`
-/

namespace A354189.P8518688175368891765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P8518688175368891765

/-! ## A354189.P9368656789710633695

`filter[A073899(n+1), A354188(#)]`
-/

namespace A354189.P9368656789710633695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P9368656789710633695

/-! ## A354189.P715821084666140768

`filter[A073900(n+1), A354188(#)]`
-/

namespace A354189.P715821084666140768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P715821084666140768

/-! ## A354189.P1412775703219088606

`filter[A089088(n), A354188(#)]`
-/

namespace A354189.P1412775703219088606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354188 (f1 j).toNat = 1) n)

end

end A354189.P1412775703219088606

/-!
# A354190: a(n) = phi(A267099(sigma(n))), where A267099 is fully multiplicative involution swapping the positions of 4k+1 and 4k+3 primes.

The programs for A354190, there is no canonical definition to state claims against.
-/

/-! ## A354190.P11813074559693820994

`A354191(n+1)+A354102(n+1)`
-/

namespace A354190.P11813074559693820994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354191 (n + 1) + A354102 (n + 1)

end

end A354190.P11813074559693820994

/-! ## A354190.P1007119384106054202

`A354105(n+1)+A354191(n+1)-A354104(n+1)`
-/

namespace A354190.P1007119384106054202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354105 (n + 1) + (A354191 (n + 1) - A354104 (n + 1))

end

end A354190.P1007119384106054202

/-! ## A354190.P15071763566636256114

`A354102(∑{d}[n+1, #])`
-/

namespace A354190.P15071763566636256114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A354190.P15071763566636256114

/-! ## A354190.P5381133005925696225

`A354102(Δ[A160664(n)])`
-/

namespace A354190.P5381133005925696225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (f1 (n + 1) - f1 n).toNat

end

end A354190.P5381133005925696225

/-! ## A354190.P13462137444614745546

`A354102(A000203(n+1))`
-/

namespace A354190.P13462137444614745546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A000203 (n + 1)).toNat

end

end A354190.P13462137444614745546

/-! ## A354190.P2292384912596425335

`A354102(abs(A143348(n+1)))`
-/

namespace A354190.P2292384912596425335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 |A143348 (n + 1)|.toNat

end

end A354190.P2292384912596425335

/-! ## A354190.P3895074190637457161

`A354102(A051612(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A354190.P3895074190637457161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (SequenceMachineLib.roundAway ((A051612 (n + 1) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A354190.P3895074190637457161

/-! ## A354190.P15321562722475845086

`A354102(A160664(n+1)-A160664(n))`
-/

namespace A354190.P15321562722475845086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A160664 (n + 1) - A160664 n).toNat

end

end A354190.P15321562722475845086

/-! ## A354190.P12457673261208739996

`A354102(A051612(n+1)+A000010(n+1))`
-/

namespace A354190.P12457673261208739996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A051612 (n + 1) + A000010 (n + 1)).toNat

end

end A354190.P12457673261208739996

/-! ## A354190.P17580513832014237874

`A354102(A070039(n+1)+A070038(n+1))`
-/

namespace A354190.P17580513832014237874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A070039 (n + 1) + A070038 (n + 1)).toNat

end

end A354190.P17580513832014237874

/-! ## A354190.P11812727551281702854

`A354102(A146076(n+1)+A000593(n+1))`
-/

namespace A354190.P11812727551281702854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A354190.P11812727551281702854

/-! ## A354190.P68715384693861988

`A354102(A051612(n+1)+A002618(n+1)/(n+1))`
-/

namespace A354190.P68715384693861988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (SequenceMachineLib.roundAway ((A051612 (n + 1) : ℚ) + (A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A354190.P68715384693861988

/-! ## A354190.P3110721356402626458

`A354102(A146076(2*(n+1))/2)`
-/

namespace A354190.P3110721356402626458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A354190.P3110721356402626458

/-! ## A354190.P12979398282362675302

`A354191(n+1)+A000010(A267099(n+1))`
-/

namespace A354190.P12979398282362675302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354191 (n + 1) + A000010 (A267099 (n + 1)).toNat

end

end A354190.P12979398282362675302

/-! ## A354190.P396314122594760154

`A354102(lcm(2, A143348(n+1)))`
-/

namespace A354190.P396314122594760154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (Int.lcm 2 (A143348 (n + 1)))

end

end A354190.P396314122594760154

/-! ## A354190.P1358908610249419410

`A354102(A354103(A267099(n+1)))`
-/

namespace A354190.P1358908610249419410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A354103 (A267099 (n + 1)).toNat).toNat

end

end A354190.P1358908610249419410

/-!
# A354191: a(n) = phi(A267099(sigma(n))) - phi(A267099(n)), where A267099 is fully multiplicative involution swapping the positions of 4k+1 and 4k+3 primes.

The programs for A354191, there is no canonical definition to state claims against.
-/

/-! ## A354191.P4260388855332061201

`A354190(n+1)-A354102(n+1)`
-/

namespace A354191.P4260388855332061201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354190 (n + 1) - A354102 (n + 1)

end

end A354191.P4260388855332061201

/-! ## A354191.P4614555199795077819

`A354190(n+1)-(A354101(n+1)+A000010(n+1))`
-/

namespace A354191.P4614555199795077819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354190 (n + 1) - (A354101 (n + 1) + A000010 (n + 1))

end

end A354191.P4614555199795077819

/-! ## A354191.P1013512711531831581

`A354104(n+1)+A354190(n+1)-A354105(n+1)`
-/

namespace A354191.P1013512711531831581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354104 (n + 1) + (A354190 (n + 1) - A354105 (n + 1))

end

end A354191.P1013512711531831581

/-! ## A354191.P2011236718630472316

`A354190(n+1)-∑{d}[n+1, A008683(#)*A267099((n+1)/#)]`
-/

namespace A354191.P2011236718630472316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354190 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A267099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A354191.P2011236718630472316

/-! ## A354191.P2454710782949642499

`A354102(∑{d}[n+1, #])-A354102(n+1)`
-/

namespace A354191.P2454710782949642499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (∑ d ∈ Nat.divisors (f1 n), d) - A354102 (n + 1)

end

end A354191.P2454710782949642499

/-! ## A354191.P15793496326899464069

`A354102(Δ[A160664(n)])-A354102(n+1)`
-/

namespace A354191.P15793496326899464069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (f1 (n + 1) - f1 n).toNat - A354102 (n + 1)

end

end A354191.P15793496326899464069

/-! ## A354191.P1535263939118328673

`A354102(A000203(n+1))-A354102(n+1)`
-/

namespace A354191.P1535263939118328673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A000203 (n + 1)).toNat - A354102 (n + 1)

end

end A354191.P1535263939118328673

/-! ## A354191.P13976574071461690533

`A354102(abs(A143348(n+1)))-A354102(n+1)`
-/

namespace A354191.P13976574071461690533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 |A143348 (n + 1)|.toNat - A354102 (n + 1)

end

end A354191.P13976574071461690533

/-! ## A354191.P2564061785472946688

`A354102(A051612(n+1)+A000010(n+1))-A354102(n+1)`
-/

namespace A354191.P2564061785472946688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A051612 (n + 1) + A000010 (n + 1)).toNat - A354102 (n + 1)

end

end A354191.P2564061785472946688

/-! ## A354191.P1020162490130932930

`A354102(A070039(n+1)+A070038(n+1))-A354102(n+1)`
-/

namespace A354191.P1020162490130932930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A070039 (n + 1) + A070038 (n + 1)).toNat - A354102 (n + 1)

end

end A354191.P1020162490130932930

/-! ## A354191.P15606237270506269060

`A354102(A146076(n+1)+A000593(n+1))-A354102(n+1)`
-/

namespace A354191.P15606237270506269060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A146076 (n + 1) + A000593 (n + 1)).toNat - A354102 (n + 1)

end

end A354191.P15606237270506269060

/-! ## A354191.P2876724617497470309

`A354190(n+1)-A000010(A267099(n+1))`
-/

namespace A354191.P2876724617497470309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354190 (n + 1) - A000010 (A267099 (n + 1)).toNat

end

end A354191.P2876724617497470309

/-! ## A354191.P16086410842802398382

`A354102(lcm(2, A143348(n+1)))-A354102(n+1)`
-/

namespace A354191.P16086410842802398382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (Int.lcm 2 (A143348 (n + 1))) - A354102 (n + 1)

end

end A354191.P16086410842802398382

/-!
# A354192: Fixed points of permutation A267099.

The programs for A354192, there is no canonical definition to state claims against.
-/

/-! ## A354192.P12573198921697107295

`eq[1, A354193(n+1)]+1`
-/

namespace A354192.P12573198921697107295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354192.P12573198921697107295

/-! ## A354192.P4924875715027786345

`record[gcd(n+1, A267099(n+1))]`
-/

namespace A354192.P4924875715027786345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A267099 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354192.P4924875715027786345

/-! ## A354192.P13292406046841136758

`eq[n, A267099(A028310(n))]`
-/

namespace A354192.P13292406046841136758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354192.P13292406046841136758

/-! ## A354192.P4217745081044322853

`filter[A036349(n+1), A354193(#)]`
-/

namespace A354192.P4217745081044322853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354193 (f1 j).toNat = 1) n)

end

end A354192.P4217745081044322853

/-! ## A354192.P6647226648903961037

`filter[A071562(n+1), A354193(#)]`
-/

namespace A354192.P6647226648903961037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354193 (f1 j).toNat = 1) n)

end

end A354192.P6647226648903961037

/-! ## A354192.P2537139104246785326

`filter[A072202(n+1), A354193(#)]`
-/

namespace A354192.P2537139104246785326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354193 (f1 j).toNat = 1) n)

end

end A354192.P2537139104246785326

/-! ## A354192.P14219042785864600724

`filter[A078613(n+1), A354193(#)]`
-/

namespace A354192.P14219042785864600724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354193 (f1 j).toNat = 1) n)

end

end A354192.P14219042785864600724

/-! ## A354192.P8091633996527476255

`filter[A267894(n+1), A354193(#)]`
-/

namespace A354192.P8091633996527476255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354193 (f1 j).toNat = 1) n)

end

end A354192.P8091633996527476255

/-! ## A354192.P15275242989862381522

`filter[A268381(n+1), A354193(#)]`
-/

namespace A354192.P15275242989862381522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354193 (f1 j).toNat = 1) n)

end

end A354192.P15275242989862381522

/-! ## A354192.P13778751444422547457

`filter[A316350(n+1), A354193(#)]`
-/

namespace A354192.P13778751444422547457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354193 (f1 j).toNat = 1) n)

end

end A354192.P13778751444422547457

/-!
# A354193: a(n) = 1 if A267099(n) is equal to n, otherwise 0. Here A267099 is fully multiplicative involution swapping the positions of 4k+1 and 4k+3 primes.

The programs for A354193, there is no canonical definition to state claims against.
-/

/-! ## A354193.P1558392319337458051

`char[eq[n+1, A267099(n+1)]]`
-/

namespace A354193.P1558392319337458051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354193.P1558392319337458051

/-! ## A354193.P1003107204112448244

`A000007((n+1)%A267099(n+1))`
-/

namespace A354193.P1003107204112448244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (n + 1 : ℤ) (A267099 (n + 1))).toNat

end

end A354193.P1003107204112448244

/-! ## A354193.P11329250616016545821

`val(5*(n+1), A267099(3*(n+1)))`
-/

namespace A354193.P11329250616016545821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (5 * (n + 1)) (A267099 (3 * (n + 1))).toNat

end

end A354193.P11329250616016545821

/-! ## A354193.P15843024933551951065

`val(A001358(n+1), A001358(A267099(n+1)))`
-/

namespace A354193.P15843024933551951065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001358 (n + 1)).toNat (A001358 (A267099 (n + 1)).toNat).toNat

end

end A354193.P15843024933551951065

/-! ## A354193.P8665419954087876894

`val(A001748(n+1), A001748(A267099(n+1)))`
-/

namespace A354193.P8665419954087876894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001748 (n + 1)).toNat (A001748 (A267099 (n + 1)).toNat).toNat

end

end A354193.P8665419954087876894

/-! ## A354193.P670478690579088507

`val(A289509(n+1), A289509(A267099(n+1)))`
-/

namespace A354193.P670478690579088507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289509 (n + 1)).toNat (A289509 (A267099 (n + 1)).toNat).toNat

end

end A354193.P670478690579088507

/-! ## A354193.P3985559194831726304

`A000007(xor(n+1, A267099(n+1)))`
-/

namespace A354193.P3985559194831726304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (n + 1 : ℤ) (A267099 (n + 1))).toNat

end

end A354193.P3985559194831726304

/-! ## A354193.P1615277805431609190

`val(A000040(n+1), A000040(A267099(n+1)))`
-/

namespace A354193.P1615277805431609190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1)).toNat (A000040 (A267099 (n + 1)).toNat).toNat

end

end A354193.P1615277805431609190

/-! ## A354193.P12346955137668244725

`val(A001248(n+1), A001248(A267099(n+1)))`
-/

namespace A354193.P12346955137668244725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001248 (n + 1)).toNat (A001248 (A267099 (n + 1)).toNat).toNat

end

end A354193.P12346955137668244725

/-! ## A354193.P13733438953493183080

`val(A001747(n+1), A001747(A267099(n+1)))`
-/

namespace A354193.P13733438953493183080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001747 (n + 1)).toNat (A001747 (A267099 (n + 1)).toNat).toNat

end

end A354193.P13733438953493183080

/-! ## A354193.P3519856861466709303

`val(A014687(n+1), A014687(A267099(n+1)))`
-/

namespace A354193.P3519856861466709303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014687 (n + 1)).toNat (A014687 (A267099 (n + 1)).toNat).toNat

end

end A354193.P3519856861466709303

/-! ## A354193.P8832234850570666161

`val(A024183(n+1), A024183(A267099(n+1)))`
-/

namespace A354193.P8832234850570666161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A024183 (n + 1)).toNat (A024183 (A267099 (n + 1)).toNat).toNat

end

end A354193.P8832234850570666161

/-! ## A354193.P1137818828465014128

`val(A036957(n+1), A036957(A267099(n+1)))`
-/

namespace A354193.P1137818828465014128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036957 (n + 1)).toNat (A036957 (A267099 (n + 1)).toNat).toNat

end

end A354193.P1137818828465014128

/-! ## A354193.P2165005963557011857

`val(A062087(n+1), A062087(A267099(n+1)))`
-/

namespace A354193.P2165005963557011857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062087 (n + 1)).toNat (A062087 (A267099 (n + 1)).toNat).toNat

end

end A354193.P2165005963557011857

/-! ## A354193.P9747894268166502201

`val(A291463(A267099(n+1)), A291463(n+1))`
-/

namespace A354193.P9747894268166502201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A291463 (A267099 (n + 1)).toNat).toNat (A291463 (n + 1)).toNat

end

end A354193.P9747894268166502201

/-! ## A354193.P15994885477497666944

`A354188((n+1)²)`
-/

namespace A354193.P15994885477497666944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354188 ((n + 1) ^ 2)

end

end A354193.P15994885477497666944

/-! ## A354193.P17737919825860821821

`A110471(n)*A354188(n+1)`
-/

namespace A354193.P17737919825860821821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110471 n * A354188 (n + 1)

end

end A354193.P17737919825860821821

/-!
# A354195: a(n) = A064989(sigma(sigma(A003961(n)))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

The programs for A354195, there is no canonical definition to state claims against.
-/

/-! ## A354195.P2633205429061723469

`2*(n+1)-A354346(n+1)`
-/

namespace A354195.P2633205429061723469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A354346 (n + 1)

end

end A354195.P2633205429061723469

/-! ## A354195.P431745831031983211

`A000203(n+1)+A033879(n+1)-A354346(n+1)`
-/

namespace A354195.P431745831031983211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A033879 (n + 1) - A354346 (n + 1))

end

end A354195.P431745831031983211

/-! ## A354195.P2754868304467324682

`A350073(A003973(n+1))`
-/

namespace A354195.P2754868304467324682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (A003973 (n + 1)).toNat

end

end A354195.P2754868304467324682

/-! ## A354195.P1080839343141316037

`A350073(∑{d}[n+1, A003961(#)])`
-/

namespace A354195.P1080839343141316037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (∑ d ∈ Nat.divisors (f1 n), A003961 d).toNat

end

end A354195.P1080839343141316037

/-! ## A354195.P2386073072822499501

`A350073(∑{d}[A045965(n+1), #])`
-/

namespace A354195.P2386073072822499501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A354195.P2386073072822499501

/-! ## A354195.P1597778174233285309

`A350073(A341528(n+1)/(n+1))`
-/

namespace A354195.P1597778174233285309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (SequenceMachineLib.roundAway ((A341528 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A354195.P1597778174233285309

/-! ## A354195.P4621431883595488647

`A350073(A336851(n+1)+A003961(n+1))`
-/

namespace A354195.P4621431883595488647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (A336851 (n + 1) + A003961 (n + 1)).toNat

end

end A354195.P4621431883595488647

/-! ## A354195.P16042718288305229322

`A350073(A336845(n+1)-A336841(n+1))`
-/

namespace A354195.P16042718288305229322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (A336845 (n + 1) - A336841 (n + 1)).toNat

end

end A354195.P16042718288305229322

/-! ## A354195.P14995007352320068420

`A350073(A336838(n+1)*A336856(n+1))`
-/

namespace A354195.P14995007352320068420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (A336838 (n + 1) * A336856 (n + 1)).toNat

end

end A354195.P14995007352320068420

/-! ## A354195.P16258468417495549147

`A064989(∑{d}[A003973(n+1), #])`
-/

namespace A354195.P16258468417495549147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A354195.P16258468417495549147

/-! ## A354195.P3043766898687871042

`A064989(∑{d}[∑{d}[n+1, A003961(#)], #])`
-/

namespace A354195.P3043766898687871042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A003961 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A354195.P3043766898687871042

/-! ## A354195.P15457659033839841891

`A064989(A051027(A003961(n+1)))`
-/

namespace A354195.P15457659033839841891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A051027 (A003961 (n + 1)).toNat).toNat

end

end A354195.P15457659033839841891

/-!
# A354196: a(n) = A064989(A064989(sigma(sigma(A003961(A003961(n)))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

The programs for A354196, there is no canonical definition to state claims against.
-/

/-! ## A354196.P3156423182779453791

`A064989(A354195(A003961(n+1)))`
-/

namespace A354196.P3156423182779453791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A354195 (A003961 (n + 1)).toNat).toNat

end

end A354196.P3156423182779453791

/-!
# A354197: a(n) = A064989(sigma(sigma(sigma(A003961(n))))), where A003961 shifts the prime factorization one step towards larger primes, and A064989 shifts it back towards smaller primes.

The programs for A354197, there is no canonical definition to state claims against.
-/

/-! ## A354197.P13588470577321161657

`A350073(∑{d}[A003973(n+1), #])`
-/

namespace A354197.P13588470577321161657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A354197.P13588470577321161657

/-! ## A354197.P7667653409077238739

`A350073(∑{d}[∑{d}[n+1, A003961(#)], #])`
-/

namespace A354197.P7667653409077238739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A003961 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A354197.P7667653409077238739

/-! ## A354197.P13430983132472181050

`A350073(∑{d}[A341528(n+1)/(n+1), #])`
-/

namespace A354197.P13430983132472181050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A354197.P13430983132472181050

/-! ## A354197.P6886476792049779280

`A350073(∑{d}[A336852(n+1)+A000203(n+1), #])`
-/

namespace A354197.P6886476792049779280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336852 (n + 1) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A354197.P6886476792049779280

/-! ## A354197.P14067106086837359820

`A350073(∑{d}[A336838(n+1)*A336856(n+1), #])`
-/

namespace A354197.P14067106086837359820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336838 (n + 1) * A336856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A354197.P14067106086837359820

/-! ## A354197.P8468289251579113023

`A064989(∑{d}[∑{d}[A003973(n+1), #], #])`
-/

namespace A354197.P8468289251579113023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A354197.P8468289251579113023

/-! ## A354197.P10902699114865294395

`A064989(A066971(A003961(n+1)))`
-/

namespace A354197.P10902699114865294395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A066971 (A003961 (n + 1)).toNat).toNat

end

end A354197.P10902699114865294395

/-!
# A354198: a(n) = A064989(A064989(sigma(sigma(sigma(A003961(A003961(n))))))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

The programs for A354198, there is no canonical definition to state claims against.
-/

/-! ## A354198.P13481305975055067784

`A064989(A354197(A003961(n+1)))`
-/

namespace A354198.P13481305975055067784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A354197 (A003961 (n + 1)).toNat).toNat

end

end A354198.P13481305975055067784

/-!
# A354199: a(n) = 1 if in the prime factorization of n there is no prime factor of form 4k+1 and any prime factor of form 4k+3 occurs with an even multiplicity, otherwise 0.

The programs for A354199, the canonical program `A354199.P14179796124610273351` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354199 has offset 1).

The definition of A354199 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053866, A353814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354199.P14179796124610273351

`A053866(n+1)*(1-A353814(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A354199

/-- `A053866(n+1)*(1-A353814(n+1))` -/
def P14179796124610273351.Spec : Prop :=
  ∀ n, P14179796124610273351.a n = A354199 (n + 1)

theorem P14179796124610273351.correct : P14179796124610273351.Spec := by
  intro n
  simp only [A354199, Nat.add_sub_cancel]

end A354199

/-! ## A354199.P11272725345260739278

`char[A125853(n+1)-1]`
-/

namespace A354199.P11272725345260739278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125853 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354199.P11272725345260739278

namespace A354199

/-- `char[A125853(n+1)-1]` -/
def P11272725345260739278.Spec : Prop :=
  ∀ n, (P11272725345260739278.a n : ℤ) = A354199 (n + 1)

end A354199

/-! ## A354199.P755421679756463569

`char[eq[1, A002654(n+1)]]`
-/

namespace A354199.P755421679756463569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354199.P755421679756463569

namespace A354199

/-- `char[eq[1, A002654(n+1)]]` -/
def P755421679756463569.Spec : Prop :=
  ∀ n, (P755421679756463569.a n : ℤ) = A354199 (n + 1)

end A354199

/-! ## A354199.P6626552511780785689

`char[eq[1, A113446(n+1)]]`
-/

namespace A354199.P6626552511780785689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354199.P6626552511780785689

namespace A354199

/-- `char[eq[1, A113446(n+1)]]` -/
def P6626552511780785689.Spec : Prop :=
  ∀ n, (P6626552511780785689.a n : ℤ) = A354199 (n + 1)

end A354199

/-! ## A354199.P17005984966730464000

`char[eq[1, A138950(n+1)]]`
-/

namespace A354199.P17005984966730464000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354199.P17005984966730464000

namespace A354199

/-- `char[eq[1, A138950(n+1)]]` -/
def P17005984966730464000.Spec : Prop :=
  ∀ n, (P17005984966730464000.a n : ℤ) = A354199 (n + 1)

end A354199

/-! ## A354199.P6377318026810774590

`char[eq[2, A105673(n+1)]]`
-/

namespace A354199.P6377318026810774590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354199.P6377318026810774590

namespace A354199

/-- `char[eq[2, A105673(n+1)]]` -/
def P6377318026810774590.Spec : Prop :=
  ∀ n, (P6377318026810774590.a n : ℤ) = A354199 (n + 1)

end A354199

/-! ## A354199.P9682922628189847652

`A063524(A002654(n+1))`
-/

namespace A354199.P9682922628189847652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A002654 (n + 1)).toNat

end

end A354199.P9682922628189847652

namespace A354199

/-- `A063524(A002654(n+1))` -/
def P9682922628189847652.Spec : Prop :=
  ∀ n, P9682922628189847652.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P1256234016437218252

`A323239(A002654(n+1)²)`
-/

namespace A354199.P1256234016437218252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A002654 (n + 1) ^ 2).toNat

end

end A354199.P1256234016437218252

namespace A354199

/-- `A323239(A002654(n+1)²)` -/
def P1256234016437218252.Spec : Prop :=
  ∀ n, P1256234016437218252.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P9292427362189964011

`A063665(A002654(n+1)+1)`
-/

namespace A354199.P9292427362189964011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063665 (A002654 (n + 1) + 1).toNat

end

end A354199.P9292427362189964011

namespace A354199

/-- `A063665(A002654(n+1)+1)` -/
def P9292427362189964011.Spec : Prop :=
  ∀ n, P9292427362189964011.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P7834963858046406760

`A186741(A004018(n+1)+1)`
-/

namespace A354199.P7834963858046406760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186741 (A004018 (n + 1) + 1).toNat

end

end A354199.P7834963858046406760

namespace A354199

/-- `A186741(A004018(n+1)+1)` -/
def P7834963858046406760.Spec : Prop :=
  ∀ n, P7834963858046406760.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P3866117861233133260

`A216284(A002654(n+1)+1)`
-/

namespace A354199.P3866117861233133260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (A002654 (n + 1) + 1).toNat

end

end A354199.P3866117861233133260

namespace A354199

/-- `A216284(A002654(n+1)+1)` -/
def P3866117861233133260.Spec : Prop :=
  ∀ n, P3866117861233133260.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P16359398626697616228

`A055029(A004018(n+1)/2)`
-/

namespace A354199.P16359398626697616228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (SequenceMachineLib.roundAway ((A004018 (n + 1) : ℚ) / 2)).toNat

end

end A354199.P16359398626697616228

namespace A354199

/-- `A055029(A004018(n+1)/2)` -/
def P16359398626697616228.Spec : Prop :=
  ∀ n, P16359398626697616228.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P15848010661285302623

`A058343(xor(1, A002654(n+1)))`
-/

namespace A354199.P15848010661285302623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (Int.xor 1 (A002654 (n + 1))).toNat

end

end A354199.P15848010661285302623

namespace A354199

/-- `A058343(xor(1, A002654(n+1)))` -/
def P15848010661285302623.Spec : Prop :=
  ∀ n, P15848010661285302623.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P417987553296154690

`∑{d}[A002654(n+1), A008683(#)]`
-/

namespace A354199.P417987553296154690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A354199.P417987553296154690

namespace A354199

/-- `∑{d}[A002654(n+1), A008683(#)]` -/
def P417987553296154690.Spec : Prop :=
  ∀ n, P417987553296154690.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P9906769375951716674

`A002654(A002654(n+1)²+3)`
-/

namespace A354199.P9906769375951716674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A002654 (n + 1) ^ 2 + 3).toNat

end

end A354199.P9906769375951716674

namespace A354199

/-- `A002654(A002654(n+1)²+3)` -/
def P9906769375951716674.Spec : Prop :=
  ∀ n, P9906769375951716674.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P13827793657386134969

`A054024(Δ[A014198(n)]+94)%2`
-/

namespace A354199.P13827793657386134969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054024 (f1 (n + 1) - f1 n + 94).toNat) 2

end

end A354199.P13827793657386134969

namespace A354199

/-- `A054024(Δ[A014198(n)]+94)%2` -/
def P13827793657386134969.Spec : Prop :=
  ∀ n, P13827793657386134969.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P9258344072020521946

`A169672(A004011(n+1))`
-/

namespace A354199.P9258344072020521946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169672 (A004011 (n + 1)).toNat

end

end A354199.P9258344072020521946

namespace A354199

/-- `A169672(A004011(n+1))` -/
def P9258344072020521946.Spec : Prop :=
  ∀ n, P9258344072020521946.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P18402429450758696968

`and(A041863(n*A053866(n+1)), A053866(n+1))`
-/

namespace A354199.P18402429450758696968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041863 ((n : ℤ) * A053866 (n + 1)).toNat) (A053866 (n + 1))

end

end A354199.P18402429450758696968

namespace A354199

/-- `and(A041863(n*A053866(n+1)), A053866(n+1))` -/
def P18402429450758696968.Spec : Prop :=
  ∀ n, P18402429450758696968.a n = A354199 (n + 1)

end A354199

/-! ## A354199.P7982158590041103791

`and(A041949(n*A053866(n+1)), A053866(n+1))`
-/

namespace A354199.P7982158590041103791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041949 ((n : ℤ) * A053866 (n + 1)).toNat) (A053866 (n + 1))

end

end A354199.P7982158590041103791

namespace A354199

/-- `and(A041949(n*A053866(n+1)), A053866(n+1))` -/
def P7982158590041103791.Spec : Prop :=
  ∀ n, P7982158590041103791.a n = A354199 (n + 1)

end A354199

