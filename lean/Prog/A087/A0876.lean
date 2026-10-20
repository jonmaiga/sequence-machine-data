import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A087601: Primes occurring as lesser side of Heronian triangle (sides are consecutive integers, area and inradius are integers).

The programs for A087601, there is no canonical definition to state claims against.
-/

/-! ## A087601.P2102720074063505311

`A016064(A010066(n))`
-/

namespace A087601.P2102720074063505311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016064 (A010066 n).toNat

end

end A087601.P2102720074063505311

/-!
# A087603: a(n) = (1/8)*Sum_{k=0..n} binomial(n,k)*Fibonacci(k)*8^k.

The programs for A087603, the canonical program `A087603.P557372244604951768` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087603 has offset 0).

The definition of A087603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087603.P557372244604951768

`10*a(n-1)+55*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087603

/-- `10*a(n-1)+55*a(n-2)` -/
def P557372244604951768.Spec : Prop :=
  ∀ n, (P557372244604951768.a n : ℤ) = A087603 n

theorem P557372244604951768.correct : P557372244604951768.Spec := by
  intro n
  simp only [A087603]

end A087603

/-!
# A087604: Smallest k such that n times concatenation of k with itself followed by a 3 is a prime, or 0 if no such number exists.

The programs for A087604, there is no canonical definition to state claims against.
-/

/-! ## A087604.P7656697510944118197

`dr(Δ[A271299(a(n-3))])²%7` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A087604.P7656697510944118197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0] fun n f1 =>
  A271299 (f1 (n - 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) ^ 2 % 7

end

end A087604.P7656697510944118197

/-! ## A087604.P2744235672268382574

`A122606(A154117(n))`
-/

namespace A087604.P2744235672268382574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122606 (A154117 n).toNat

end

end A087604.P2744235672268382574

/-! ## A087604.P8492331858535469596

`A204693(A154117(n)+7)`
-/

namespace A087604.P8492331858535469596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 (A154117 n + 7).toNat

end

end A087604.P8492331858535469596

/-! ## A087604.P15919340114039812567

`A007814(A302279(n+2)+3)`
-/

namespace A087604.P15919340114039812567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A302279 (n + 2) + 3).toNat

end

end A087604.P15919340114039812567

/-! ## A087604.P14556663692630023773

`val(A195812(A006991(n+1)²), 2)`
-/

namespace A087604.P14556663692630023773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A195812 (A006991 (n + 1) ^ 2).toNat).toNat 2

end

end A087604.P14556663692630023773

/-!
# A087610: Number of (-1,0,1) polynomials of degree-n irreducible over the integers.

The programs for A087610, there is no canonical definition to state claims against.
-/

/-! ## A087610.P4496814266236575259

`or(A135530(n), A324842(A055417(n)))`
-/

namespace A087610.P4496814266236575259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135530 n) (A324842 (A055417 n).toNat)

end

end A087610.P4496814266236575259

/-! ## A087610.P476989944565840136

`A018361(n+1)+A000040(A305750(n))`
-/

namespace A087610.P476989944565840136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018361 (n + 1) + A000040 (A305750 n).toNat

end

end A087610.P476989944565840136

/-!
# A087611: a(n) = (prime(n) - 1) mod n.

The programs for A087611, the canonical program `A087611.P1857912676068431036` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087611 has offset 1).

The definition of A087611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087611.P11924070550961387407

`n-A068901(n+1)`
-/

namespace A087611.P11924070550961387407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A068901 (n + 1)

end

end A087611.P11924070550961387407

namespace A087611

/-- `n-A068901(n+1)` -/
def P11924070550961387407.Spec : Prop :=
  ∀ n, P11924070550961387407.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P1857912676068431036

`A006093(n+1)%(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087611

/-- `A006093(n+1)%(n+1)` -/
def P1857912676068431036.Spec : Prop :=
  ∀ n, P1857912676068431036.a n = A087611 (n + 1)

theorem P1857912676068431036.correct : P1857912676068431036.Spec := by
  intro n
  simp only [A087611, Nat.add_sub_cancel]

end A087611

/-! ## A087611.P14471653462989033894

`A039915(n+1)%(n+1)`
-/

namespace A087611.P14471653462989033894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039915 (n + 1)) (n + 1 : ℤ)

end

end A087611.P14471653462989033894

namespace A087611

/-- `A039915(n+1)%(n+1)` -/
def P14471653462989033894.Spec : Prop :=
  ∀ n, P14471653462989033894.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P8782772893742963757

`A060822(n+1)%(n+1)`
-/

namespace A087611.P8782772893742963757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060822 (n + 1)) (n + 1 : ℤ)

end

end A087611.P8782772893742963757

namespace A087611

/-- `A060822(n+1)%(n+1)` -/
def P8782772893742963757.Spec : Prop :=
  ∀ n, P8782772893742963757.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P10949113786577173320

`A065890(n+1)%(n+1)`
-/

namespace A087611.P10949113786577173320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065890 (n + 1)) (n + 1 : ℤ)

end

end A087611.P10949113786577173320

namespace A087611

/-- `A065890(n+1)%(n+1)` -/
def P10949113786577173320.Spec : Prop :=
  ∀ n, P10949113786577173320.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P9367408432986202281

`A095116(n+1)%(n+1)`
-/

namespace A087611.P9367408432986202281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095116 (n + 1)) (n + 1 : ℤ)

end

end A087611.P9367408432986202281

namespace A087611

/-- `A095116(n+1)%(n+1)` -/
def P9367408432986202281.Spec : Prop :=
  ∀ n, P9367408432986202281.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P7825849239568394327

`(A000040(n+1)-1)%(n+1)`
-/

namespace A087611.P7825849239568394327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) - 1) (n + 1 : ℤ)

end

end A087611.P7825849239568394327

namespace A087611

/-- `(A000040(n+1)-1)%(n+1)` -/
def P7825849239568394327.Spec : Prop :=
  ∀ n, P7825849239568394327.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P11969247616650226195

`A028310(A004648(n+1))-1`
-/

namespace A087611.P11969247616650226195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004648 (n + 1)).toNat - 1

end

end A087611.P11969247616650226195

namespace A087611

/-- `A028310(A004648(n+1))-1` -/
def P11969247616650226195.Spec : Prop :=
  ∀ n, P11969247616650226195.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P17448433211883623155

`A057428(n)+A004648(n+1)`
-/

namespace A087611.P17448433211883623155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004648 (n + 1)

end

end A087611.P17448433211883623155

namespace A087611

/-- `A057428(n)+A004648(n+1)` -/
def P17448433211883623155.Spec : Prop :=
  ∀ n, P17448433211883623155.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P6985688389664915635

`A004648(A054977(n)+n)-1`
-/

namespace A087611.P6985688389664915635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A054977 n + (n : ℤ)).toNat - 1

end

end A087611.P6985688389664915635

namespace A087611

/-- `A004648(A054977(n)+n)-1` -/
def P6985688389664915635.Spec : Prop :=
  ∀ n, P6985688389664915635.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P11701187760933425244

`A004648(n+1)-A057427(n)`
-/

namespace A087611.P11701187760933425244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1) - A057427 n

end

end A087611.P11701187760933425244

namespace A087611

/-- `A004648(n+1)-A057427(n)` -/
def P11701187760933425244.Spec : Prop :=
  ∀ n, P11701187760933425244.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P4704605994728640979

`A006093(n+1)-A076079(n+1)`
-/

namespace A087611.P4704605994728640979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A076079 (n + 1)

end

end A087611.P4704605994728640979

namespace A087611

/-- `A006093(n+1)-A076079(n+1)` -/
def P4704605994728640979.Spec : Prop :=
  ∀ n, P4704605994728640979.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P10587285230717631041

`A095116(n+1)-A068902(n+1)`
-/

namespace A087611.P10587285230717631041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - A068902 (n + 1)

end

end A087611.P10587285230717631041

namespace A087611

/-- `A095116(n+1)-A068902(n+1)` -/
def P10587285230717631041.Spec : Prop :=
  ∀ n, P10587285230717631041.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P470065608643300607

`A075765(n+1)-A090973(n+1)`
-/

namespace A087611.P470065608643300607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075765 (n + 1) - A090973 (n + 1)

end

end A087611.P470065608643300607

namespace A087611

/-- `A075765(n+1)-A090973(n+1)` -/
def P470065608643300607.Spec : Prop :=
  ∀ n, P470065608643300607.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P12192606267930366807

`A000040(n+1)-(A076079(n+1)+1)`
-/

namespace A087611.P12192606267930366807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A076079 (n + 1) + 1)

end

end A087611.P12192606267930366807

namespace A087611

/-- `A000040(n+1)-(A076079(n+1)+1)` -/
def P12192606267930366807.Spec : Prop :=
  ∀ n, P12192606267930366807.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P4828281130470213448

`A004648(n+1)-and(1, A006686(n+1))`
-/

namespace A087611.P4828281130470213448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1) - Int.land 1 (A006686 (n + 1))

end

end A087611.P4828281130470213448

namespace A087611

/-- `A004648(n+1)-and(1, A006686(n+1))` -/
def P4828281130470213448.Spec : Prop :=
  ∀ n, P4828281130470213448.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P13698574266395365503

`A000040(n+1)-A068902(n+1)+n`
-/

namespace A087611.P13698574266395365503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A068902 (n + 1) + (n : ℤ)

end

end A087611.P13698574266395365503

namespace A087611

/-- `A000040(n+1)-A068902(n+1)+n` -/
def P13698574266395365503.Spec : Prop :=
  ∀ n, P13698574266395365503.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P5584801697126450052

`A014689(n+1)-A076079(n+1)+n`
-/

namespace A087611.P5584801697126450052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A076079 (n + 1) + (n : ℤ)

end

end A087611.P5584801697126450052

namespace A087611

/-- `A014689(n+1)-A076079(n+1)+n` -/
def P5584801697126450052.Spec : Prop :=
  ∀ n, P5584801697126450052.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P14206325402474569248

`A004648(n+1)-A087156(n+1)+n`
-/

namespace A087611.P14206325402474569248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1) - A087156 (n + 1) + (n : ℤ)

end

end A087611.P14206325402474569248

namespace A087611

/-- `A004648(n+1)-A087156(n+1)+n` -/
def P14206325402474569248.Spec : Prop :=
  ∀ n, P14206325402474569248.a n = A087611 (n + 1)

end A087611

/-! ## A087611.P7996035536402186024

`A162177(n+2)%(n+1)`
-/

namespace A087611.P7996035536402186024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162177 (n + 2)) (n + 1 : ℤ)

end

end A087611.P7996035536402186024

namespace A087611

/-- `A162177(n+2)%(n+1)` -/
def P7996035536402186024.Spec : Prop :=
  ∀ n, P7996035536402186024.a n = A087611 (n + 1)

end A087611

/-!
# A087612: A divisibility sequence derived from Lehmer's polynomial x^10+x^9-x^7-x^6-x^5-x^4-x^3+x+1. Square root of the terms in A059928.

The programs for A087612, there is no canonical definition to state claims against.
-/

/-! ## A087612.P18123956411153128935

`sqrt(A059928(n+1))`
-/

namespace A087612.P18123956411153128935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059928 (n + 1) : ℝ)

end

end A087612.P18123956411153128935

/-! ## A087612.P12889825408195793733

`floor(sqrt(A059928(Δ[n²]-n)))`
-/

namespace A087612.P12889825408195793733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A087612.P12889825408195793733

/-! ## A087612.P14534375672673947646

`root(A059928(2*n-n+1), 2)`
-/

namespace A087612.P14534375672673947646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059928 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A087612.P14534375672673947646

/-! ## A087612.P7569906140543549135

`ceil(sqrt(A059928(2*n-(n-1))))`
-/

namespace A087612.P7569906140543549135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A059928 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℝ)⌉

end

end A087612.P7569906140543549135

/-! ## A087612.P3159604237319418685

`A059928(A000027(n+1))^(1/2)`
-/

namespace A087612.P3159604237319418685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059928 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A087612.P3159604237319418685

/-! ## A087612.P9741267914771735737

`root(A059928(n+1), 2)%A000045(n+3)`
-/

namespace A087612.P9741267914771735737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A059928 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000045 (n + 3))

end

end A087612.P9741267914771735737

/-! ## A087612.P15829693884301287503

`root(A059928(n+1), 2)/A007318(C(n, 2))`
-/

namespace A087612.P15829693884301287503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059928 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) / (A007318 (Nat.choose n 2) : ℝ)

end

end A087612.P15829693884301287503

/-! ## A087612.P13630763762303953684

`root(A059928(n+1), 2)*A007318(∑[n])`
-/

namespace A087612.P13630763762303953684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059928 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A087612.P13630763762303953684

/-! ## A087612.P8677001043516071089

`A000027(root(A059928(n+1), 2))`
-/

namespace A087612.P8677001043516071089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A059928 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A087612.P8677001043516071089

/-!
# A087613: Number of labeled acyclic preferences/voting outcomes, indifference and undecidedness/incompleteness permitted (Social Choice Theory).

The programs for A087613, there is no canonical definition to state claims against.
-/

/-! ## A087613.P9647916749522263542

`A000302(∑[n])-A087615(n+1)`
-/

namespace A087613.P9647916749522263542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (∑ j ∈ Finset.range (n + 1), f1 j) - A087615 (n + 1)

end

end A087613.P9647916749522263542

/-!
# A087614: Number of unlabeled acyclic preferences/voting outcomes, indifference and undecidedness/incompleteness permitted (Social Choice Theory).

The programs for A087614, there is no canonical definition to state claims against.
-/

/-! ## A087614.P10671173069219207203

`A324400(∏[A119104(n+1)])`
-/

namespace A087614.P10671173069219207203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087614.P10671173069219207203

/-!
# A087615: Number of labeled cyclic preferences/voting outcomes, indifference and undecidedness/incompleteness permitted (Social Choice Theory).

The programs for A087615, there is no canonical definition to state claims against.
-/

/-! ## A087615.P13073193177752860036

`A053763(n+1)-A087613(n+1)`
-/

namespace A087615.P13073193177752860036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053763 (n + 1) - A087613 (n + 1)

end

end A087615.P13073193177752860036

/-!
# A087616: Number of unlabeled cyclic preferences/voting outcomes, indifference and undecidedness/incompleteness permitted (Social Choice Theory).

The programs for A087616, there is no canonical definition to state claims against.
-/

/-! ## A087616.P884349505963327457

`∑[(Δ[n²]^4)%((n*gcd(2, n))^n)]`
-/

namespace A087616.P884349505963327457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 4) ((n * Nat.gcd 2 n) ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087616.P884349505963327457

/-!
# A087618: a(n) is the number of pair of consecutive numbers (k,k+1) with k<=10^n such that k and k+1 are both squarefree.

The programs for A087618, there is no canonical definition to state claims against.
-/

/-! ## A087618.P4985423138936059241

`A022414(A057932(n))-(n+1)`
-/

namespace A087618.P4985423138936059241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022414 (A057932 n).toNat - (n + 1 : ℤ)

end

end A087618.P4985423138936059241

/-!
# A087619: a(n) = 137*a(n-1) + a(n-2), with a(0) = 2 and a(1) = 137.

The programs for A087619, the canonical program `A087619.P17832602803568902393` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087619 has offset 0).

The definition of A087619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `137*a(n-1)+a(n-2)` (program `A087619.P17832602803568902393`, by `A087619.P17832602803568902393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087619.P17832602803568902393

`137*a(n-1)+a(n-2)` with `a(0)=2, a(1)=137`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087619

/-- `137*a(n-1)+a(n-2)` -/
def P17832602803568902393.Spec : Prop :=
  ∀ n, (P17832602803568902393.a n : ℤ) = A087619 n

theorem P17832602803568902393.correct : P17832602803568902393.Spec := by
  intro n
  simp only [A087619]

end A087619

/-!
# A087620: #{0<=k<=n: k*n is divisible by 4}.

The programs for A087620, the canonical program `A087620.P11068015822046441659` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087620 has offset 0).

The definition of A087620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087620.P11068015822046441659

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=5, a(5)=2, a(6)=4, a(7)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087620

/-- `2*a(n-4)-a(n-8)` -/
def P11068015822046441659.Spec : Prop :=
  ∀ n, P11068015822046441659.a n = A087620 n

theorem P11068015822046441659.correct : P11068015822046441659.Spec := by
  intro n
  simp only [A087620]

end A087620

/-! ## A087620.P841445309076129571

`floor(n*gcd(4, n)/4)+1`
-/

namespace A087620.P841445309076129571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.gcd 4 n : ℚ) / 4)⌋ + 1

end

end A087620.P841445309076129571

namespace A087620

/-- `floor(n*gcd(4, n)/4)+1` -/
def P841445309076129571.Spec : Prop :=
  ∀ n, P841445309076129571.a n = A087620 n

end A087620

/-! ## A087620.P13786887820790168417

`ceil(gcd(∑[n+2], ∑[n])/2)`
-/

namespace A087620.P13786887820790168417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2⌉

end

end A087620.P13786887820790168417

namespace A087620

/-- `ceil(gcd(∑[n+2], ∑[n])/2)` -/
def P13786887820790168417.Spec : Prop :=
  ∀ n, P13786887820790168417.a n = A087620 n

end A087620

/-! ## A087620.P15773431717063484045

`floor(n/A176895(n))+1`
-/

namespace A087620.P15773431717063484045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A176895 n : ℚ)⌋ + 1

end

end A087620.P15773431717063484045

namespace A087620

/-- `floor(n/A176895(n))+1` -/
def P15773431717063484045.Spec : Prop :=
  ∀ n, P15773431717063484045.a n = A087620 n

end A087620

/-! ## A087620.P14587272746290974996

`ceil((n+1)/sqrt(A177499(n)))`
-/

namespace A087620.P14587272746290974996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (A177499 n : ℝ)⌉

end

end A087620.P14587272746290974996

namespace A087620

/-- `ceil((n+1)/sqrt(A177499(n)))` -/
def P14587272746290974996.Spec : Prop :=
  ∀ n, P14587272746290974996.a n = A087620 n

end A087620

/-! ## A087620.P10094597812630261777

`A127932(n)/A176895(n)`
-/

namespace A087620.P10094597812630261777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127932 n : ℚ) / (A176895 n : ℚ)

end

end A087620.P10094597812630261777

namespace A087620

/-- `A127932(n)/A176895(n)` -/
def P10094597812630261777.Spec : Prop :=
  ∀ n, P10094597812630261777.a n = (A087620 n : ℚ)

end A087620

/-! ## A087620.P14127279472452697033

`gcd(A127932(n), A151974(n))`
-/

namespace A087620.P14127279472452697033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127932 n) (A151974 n)

end

end A087620.P14127279472452697033

namespace A087620

/-- `gcd(A127932(n), A151974(n))` -/
def P14127279472452697033.Spec : Prop :=
  ∀ n, (P14127279472452697033.a n : ℤ) = A087620 n

end A087620

/-! ## A087620.P15600917679629376005

`A026741(n+1)-A077814(n)`
-/

namespace A087620.P15600917679629376005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) - A077814 n

end

end A087620.P15600917679629376005

namespace A087620

/-- `A026741(n+1)-A077814(n)` -/
def P15600917679629376005.Spec : Prop :=
  ∀ n, P15600917679629376005.a n = A087620 n

end A087620

/-! ## A087620.P6623676340953977712

`ceil(A060819(n+1)/A014695(n))`
-/

namespace A087620.P6623676340953977712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060819 (n + 1) : ℚ) / (A014695 n : ℚ)⌉

end

end A087620.P6623676340953977712

namespace A087620

/-- `ceil(A060819(n+1)/A014695(n))` -/
def P6623676340953977712.Spec : Prop :=
  ∀ n, P6623676340953977712.a n = A087620 n

end A087620

/-! ## A087620.P725278597267962670

`round(A000027(n+1)/A176895(n))`
-/

namespace A087620.P725278597267962670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000027 (n + 1) : ℚ) / (A176895 n : ℚ))

end

end A087620.P725278597267962670

namespace A087620

/-- `round(A000027(n+1)/A176895(n))` -/
def P725278597267962670.Spec : Prop :=
  ∀ n, P725278597267962670.a n = A087620 n

end A087620

/-! ## A087620.P8544047293460505130

`round(A109613(n+1)/A176895(n))`
-/

namespace A087620.P8544047293460505130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109613 (n + 1) : ℚ) / (A176895 n : ℚ))

end

end A087620.P8544047293460505130

namespace A087620

/-- `round(A109613(n+1)/A176895(n))` -/
def P8544047293460505130.Spec : Prop :=
  ∀ n, P8544047293460505130.a n = A087620 n

end A087620

/-! ## A087620.P16097345308281294834

`A026741(A026741(n+1)+∑[n]%2)`
-/

namespace A087620.P16097345308281294834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)).toNat

end

end A087620.P16097345308281294834

namespace A087620

/-- `A026741(A026741(n+1)+∑[n]%2)` -/
def P16097345308281294834.Spec : Prop :=
  ∀ n, P16097345308281294834.a n = A087620 n

end A087620

/-! ## A087620.P11653084263328026842

`A026741(A026741(n+1)+and(1, ∑[n]))`
-/

namespace A087620.P11653084263328026842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (n + 1) + (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A087620.P11653084263328026842

namespace A087620

/-- `A026741(A026741(n+1)+and(1, ∑[n]))` -/
def P11653084263328026842.Spec : Prop :=
  ∀ n, P11653084263328026842.a n = A087620 n

end A087620

/-! ## A087620.P5668206391661336335

`A001318(n+1)-(A077814(n)+A001318(n))`
-/

namespace A087620.P5668206391661336335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1) - (A077814 n + A001318 n)

end

end A087620.P5668206391661336335

namespace A087620

/-- `A001318(n+1)-(A077814(n)+A001318(n))` -/
def P5668206391661336335.Spec : Prop :=
  ∀ n, P5668206391661336335.a n = A087620 n

end A087620

/-! ## A087620.P18015817293833763653

`A026741(A026741(n+1)+Δ[A004524(n+1)])`
-/

namespace A087620.P18015817293833763653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A087620.P18015817293833763653

namespace A087620

/-- `A026741(A026741(n+1)+Δ[A004524(n+1)])` -/
def P18015817293833763653.Spec : Prop :=
  ∀ n, P18015817293833763653.a n = A087620 n

end A087620

/-! ## A087620.P3354924337751055067

`A008621(n*gcd(4, n))`
-/

namespace A087620.P3354924337751055067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (n * Nat.gcd 4 n)

end

end A087620.P3354924337751055067

namespace A087620

/-- `A008621(n*gcd(4, n))` -/
def P3354924337751055067.Spec : Prop :=
  ∀ n, P3354924337751055067.a n = A087620 n

end A087620

/-! ## A087620.P14996002276701041617

`A008621(gcd(n², A008574(n)))`
-/

namespace A087620.P14996002276701041617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.gcd (n ^ 2 : ℤ) (A008574 n))

end

end A087620.P14996002276701041617

namespace A087620

/-- `A008621(gcd(n², A008574(n)))` -/
def P14996002276701041617.Spec : Prop :=
  ∀ n, P14996002276701041617.a n = A087620 n

end A087620

/-!
# A087621: (1,1) entry of powers of the orthogonal design shown below.

The programs for A087621, the canonical program `A087621.P16612640617517211432` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087621 has offset 1).

The definition of A087621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087621.P16612640617517211432

`4*a(n-2)-64*a(n-4)` with `a(0)=-1, a(1)=2, a(2)=4, a(3)=-56`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087621

/-- `4*a(n-2)-64*a(n-4)` -/
def P16612640617517211432.Spec : Prop :=
  ∀ n, P16612640617517211432.a n = A087621 (n + 1)

theorem P16612640617517211432.correct : P16612640617517211432.Spec := by
  intro n
  simp only [A087621, Nat.add_sub_cancel]

end A087621

/-!
# A087623: Square array A(n,k) = the cardinality of the set {x in [1,k-1] : gcd(x,k)=n}, read by rising antidiagonals.

The programs for A087623, there is no canonical definition to state claims against.
-/

/-! ## A087623.P17206505420825692130

`A130207(A286156(n+1))%(A049581(n)+1)`
-/

namespace A087623.P17206505420825692130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130207 (A286156 (n + 1)).toNat) (A049581 n + 1)

end

end A087623.P17206505420825692130

/-! ## A087623.P16697995114543512478

`A130207(A286156(n+1))-A000007(A049581(n))`
-/

namespace A087623.P16697995114543512478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130207 (A286156 (n + 1)).toNat - A000007 (A049581 n).toNat

end

end A087623.P16697995114543512478

/-! ## A087623.P8492733241779301734

`∑{e}[round(n*(A186114(n+1)/2)^n/3)+1, #]`
-/

namespace A087623.P8492733241779301734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (((A186114 (n + 1) : ℚ) / 2) ^ n / 3)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087623.P8492733241779301734

/-! ## A087623.P12001197229568900285

`A355541(n+1)%A334215(n+1)`
-/

namespace A087623.P12001197229568900285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355541 (n + 1)) (A334215 (n + 1))

end

end A087623.P12001197229568900285

/-! ## A087623.P15671230673114111058

`A243839(A139251(n+3))%A334215(n+1)`
-/

namespace A087623.P15671230673114111058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243839 (A139251 (n + 3)).toNat) (A334215 (n + 1))

end

end A087623.P15671230673114111058

/-!
# A087624: a(n)=0 if n is prime, A001221(n) otherwise.

The programs for A087624, the canonical program `A087624.P6510087448774720234` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087624 has offset 1).

The definition of A087624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087624.P6510087448774720234

`A001221(n+1)*A005171(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A087624

/-- `A001221(n+1)*A005171(n+1)` -/
def P6510087448774720234.Spec : Prop :=
  ∀ n, P6510087448774720234.a n = A087624 (n + 1)

theorem P6510087448774720234.correct : P6510087448774720234.Spec := by
  intro n
  simp only [A087624, Nat.add_sub_cancel]

end A087624

/-! ## A087624.P1305084393845666144

`∑{p}[n+1, C(#%n, #)]`
-/

namespace A087624.P1305084393845666144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p

end

end A087624.P1305084393845666144

namespace A087624

/-- `∑{p}[n+1, C(#%n, #)]` -/
def P1305084393845666144.Spec : Prop :=
  ∀ n, (P1305084393845666144.a n : ℤ) = A087624 (n + 1)

end A087624

/-! ## A087624.P3257154559747226841

`∑{p}[n+1, C(n, C(#, n))]`
-/

namespace A087624.P3257154559747226841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose n (Nat.choose p n)

end

end A087624.P3257154559747226841

namespace A087624

/-- `∑{p}[n+1, C(n, C(#, n))]` -/
def P3257154559747226841.Spec : Prop :=
  ∀ n, (P3257154559747226841.a n : ℤ) = A087624 (n + 1)

end A087624

/-! ## A087624.P3652723947798716318

`∑{p}[n+1, 2-ceil(#/n)]`
-/

namespace A087624.P3652723947798716318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 - ⌈(p : ℚ) / (n : ℚ)⌉)

end

end A087624.P3652723947798716318

namespace A087624

/-- `∑{p}[n+1, 2-ceil(#/n)]` -/
def P3652723947798716318.Spec : Prop :=
  ∀ n, P3652723947798716318.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P13486464238287318785

`-∑{p}[n+1, val(#, n+1)-1]`
-/

namespace A087624.P13486464238287318785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), ((SequenceMachineLib.valuation p (n + 1) : ℤ) - 1))

end

end A087624.P13486464238287318785

namespace A087624

/-- `-∑{p}[n+1, val(#, n+1)-1]` -/
def P13486464238287318785.Spec : Prop :=
  ∀ n, P13486464238287318785.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P16384951079495727215

`round(∑{p}[n+1, 1-#/(2*n)])`
-/

namespace A087624.P16384951079495727215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℚ) / (2 * n : ℚ)))

end

end A087624.P16384951079495727215

namespace A087624

/-- `round(∑{p}[n+1, 1-#/(2*n)])` -/
def P16384951079495727215.Spec : Prop :=
  ∀ n, P16384951079495727215.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P12323023683853609385

`ceil(sqrt(A345354(n+1)))`
-/

namespace A087624.P12323023683853609385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A345354 (n + 1) : ℝ)⌉

end

end A087624.P12323023683853609385

namespace A087624

/-- `ceil(sqrt(A345354(n+1)))` -/
def P12323023683853609385.Spec : Prop :=
  ∀ n, P12323023683853609385.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P16753838678661443018

`∑{e}[A334085(n+1), #]`
-/

namespace A087624.P16753838678661443018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087624.P16753838678661443018

namespace A087624

/-- `∑{e}[A334085(n+1), #]` -/
def P16753838678661443018.Spec : Prop :=
  ∀ n, (P16753838678661443018.a n : ℤ) = A087624 (n + 1)

end A087624

/-! ## A087624.P16334156608352324700

`ceil(sqrt(∑{p}[n+1, A001221(ceil(n/#))]))`
-/

namespace A087624.P16334156608352324700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ p ∈ Nat.primeFactors (f1 n), A001221 ⌈(n : ℚ) / (p : ℚ)⌉.toNat : ℤ) : ℝ)⌉

end

end A087624.P16334156608352324700

namespace A087624

/-- `ceil(sqrt(∑{p}[n+1, A001221(ceil(n/#))]))` -/
def P16334156608352324700.Spec : Prop :=
  ∀ n, P16334156608352324700.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P3917797265232269979

`A001221(A005451(n+1))`
-/

namespace A087624.P3917797265232269979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005451 (n + 1)).toNat

end

end A087624.P3917797265232269979

namespace A087624

/-- `A001221(A005451(n+1))` -/
def P3917797265232269979.Spec : Prop :=
  ∀ n, P3917797265232269979.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P9621471581535367854

`A001221(A005730(n+1))`
-/

namespace A087624.P9621471581535367854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005730 (n + 1)).toNat

end

end A087624.P9621471581535367854

namespace A087624

/-- `A001221(A005730(n+1))` -/
def P9621471581535367854.Spec : Prop :=
  ∀ n, P9621471581535367854.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P11771058590151861731

`A001221(A048671(n+1))`
-/

namespace A087624.P11771058590151861731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048671 (n + 1)).toNat

end

end A087624.P11771058590151861731

namespace A087624

/-- `A001221(A048671(n+1))` -/
def P11771058590151861731.Spec : Prop :=
  ∀ n, P11771058590151861731.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P3755386449524465170

`A001221(A144907(n+1))`
-/

namespace A087624.P3755386449524465170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144907 (n + 1)).toNat

end

end A087624.P3755386449524465170

namespace A087624

/-- `A001221(A144907(n+1))` -/
def P3755386449524465170.Spec : Prop :=
  ∀ n, P3755386449524465170.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P14822034188654303713

`A001222(A334085(n+1))`
-/

namespace A087624.P14822034188654303713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A334085 (n + 1)).toNat

end

end A087624.P14822034188654303713

namespace A087624

/-- `A001222(A334085(n+1))` -/
def P14822034188654303713.Spec : Prop :=
  ∀ n, P14822034188654303713.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P374565737749944526

`A230980(n)-A048865(n+1)`
-/

namespace A087624.P374565737749944526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A048865 (n + 1)

end

end A087624.P374565737749944526

namespace A087624

/-- `A230980(n)-A048865(n+1)` -/
def P374565737749944526.Spec : Prop :=
  ∀ n, P374565737749944526.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P16009025940037373525

`A248577(n+1)%A325765(n)`
-/

namespace A087624.P16009025940037373525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248577 (n + 1)) (A325765 n)

end

end A087624.P16009025940037373525

namespace A087624

/-- `A248577(n+1)%A325765(n)` -/
def P16009025940037373525.Spec : Prop :=
  ∀ n, P16009025940037373525.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P484776425372890516

`A297155(n+1)+A066247(n+1)`
-/

namespace A087624.P484776425372890516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1) + A066247 (n + 1)

end

end A087624.P484776425372890516

namespace A087624

/-- `A297155(n+1)+A066247(n+1)` -/
def P484776425372890516.Spec : Prop :=
  ∀ n, P484776425372890516.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P14900363364936809406

`A001221(n+1)-A010051(n+1)`
-/

namespace A087624.P14900363364936809406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A010051 (n + 1)

end

end A087624.P14900363364936809406

namespace A087624

/-- `A001221(n+1)-A010051(n+1)` -/
def P14900363364936809406.Spec : Prop :=
  ∀ n, P14900363364936809406.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P13728814570856117459

`A068323(n+1)-A068320(n+1)`
-/

namespace A087624.P13728814570856117459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068323 (n + 1) - A068320 (n + 1)

end

end A087624.P13728814570856117459

namespace A087624

/-- `A068323(n+1)-A068320(n+1)` -/
def P13728814570856117459.Spec : Prop :=
  ∀ n, P13728814570856117459.a n = A087624 (n + 1)

end A087624

/-! ## A087624.P3965254405453195305

`A001221(1-A166260(n+1)+n)`
-/

namespace A087624.P3965254405453195305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (1 - A166260 (n + 1) + (n : ℤ)).toNat

end

end A087624.P3965254405453195305

namespace A087624

/-- `A001221(1-A166260(n+1)+n)` -/
def P3965254405453195305.Spec : Prop :=
  ∀ n, P3965254405453195305.a n = A087624 (n + 1)

end A087624

/-!
# A087625: Number of primes in the ring Z_n.

The programs for A087625, the canonical program `A087625.P17976689394819581728` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087625 has offset 1).

The definition of A087625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087625.P17976689394819581728

`A117494(A005451(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A087625

/-- `A117494(A005451(n+1))` -/
def P17976689394819581728.Spec : Prop :=
  ∀ n, P17976689394819581728.a n = A087625 (n + 1)

theorem P17976689394819581728.correct : P17976689394819581728.Spec := by
  intro n
  simp only [A087625, Nat.add_sub_cancel]

end A087625

/-! ## A087625.P8093537573010089619

`A117494(n+1)-A010051(n+1)`
-/

namespace A087625.P8093537573010089619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (n + 1) - A010051 (n + 1)

end

end A087625.P8093537573010089619

namespace A087625

/-- `A117494(n+1)-A010051(n+1)` -/
def P8093537573010089619.Spec : Prop :=
  ∀ n, P8093537573010089619.a n = A087625 (n + 1)

end A087625

/-! ## A087625.P15335802816313233723

`A005171(n+1)*A117494(n+1)`
-/

namespace A087625.P15335802816313233723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A117494 (n + 1)

end

end A087625.P15335802816313233723

namespace A087625

/-- `A005171(n+1)*A117494(n+1)` -/
def P15335802816313233723.Spec : Prop :=
  ∀ n, P15335802816313233723.a n = A087625 (n + 1)

end A087625

/-! ## A087625.P4335635957751534792

`A066247(n+1)*A117494(n+1)`
-/

namespace A087625.P4335635957751534792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A117494 (n + 1)

end

end A087625.P4335635957751534792

namespace A087625

/-- `A066247(n+1)*A117494(n+1)` -/
def P4335635957751534792.Spec : Prop :=
  ∀ n, P4335635957751534792.a n = A087625 (n + 1)

end A087625

/-! ## A087625.P5150702559729724124

`A117494(n+1)-char[A006093(n+1)]`
-/

namespace A087625.P5150702559729724124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A087625.P5150702559729724124

namespace A087625

/-- `A117494(n+1)-char[A006093(n+1)]` -/
def P5150702559729724124.Spec : Prop :=
  ∀ n, P5150702559729724124.a n = A087625 (n + 1)

end A087625

/-! ## A087625.P3260841616904277092

`(1-A080339(n+1))*A117494(n+1)`
-/

namespace A087625.P3260841616904277092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080339 (n + 1)) * A117494 (n + 1)

end

end A087625.P3260841616904277092

namespace A087625

/-- `(1-A080339(n+1))*A117494(n+1)` -/
def P3260841616904277092.Spec : Prop :=
  ∀ n, P3260841616904277092.a n = A087625 (n + 1)

end A087625

/-! ## A087625.P8647133681069980193

`A349338(n+1)-(A010051(n+1)+A000010(n+1))`
-/

namespace A087625.P8647133681069980193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349338 (n + 1) - (A010051 (n + 1) + A000010 (n + 1))

end

end A087625.P8647133681069980193

namespace A087625

/-- `A349338(n+1)-(A010051(n+1)+A000010(n+1))` -/
def P8647133681069980193.Spec : Prop :=
  ∀ n, P8647133681069980193.a n = A087625 (n + 1)

end A087625

/-! ## A087625.P9332495132302411210

`A117494(n+1)+A008683(n+1)*A010051(n+1)`
-/

namespace A087625.P9332495132302411210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (n + 1) + A008683 (n + 1) * A010051 (n + 1)

end

end A087625.P9332495132302411210

namespace A087625

/-- `A117494(n+1)+A008683(n+1)*A010051(n+1)` -/
def P9332495132302411210.Spec : Prop :=
  ∀ n, P9332495132302411210.a n = A087625 (n + 1)

end A087625

/-! ## A087625.P3158455167789861471

`A117494(n+1)%A007956(n+1)`
-/

namespace A087625.P3158455167789861471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117494 (n + 1)) (A007956 (n + 1))

end

end A087625.P3158455167789861471

namespace A087625

/-- `A117494(n+1)%A007956(n+1)` -/
def P3158455167789861471.Spec : Prop :=
  ∀ n, P3158455167789861471.a n = A087625 (n + 1)

end A087625

/-! ## A087625.P14907425028075183434

`and(A083416(n+1), A117494(n+1))`
-/

namespace A087625.P14907425028075183434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083416 (n + 1)) (A117494 (n + 1))

end

end A087625.P14907425028075183434

namespace A087625

/-- `and(A083416(n+1), A117494(n+1))` -/
def P14907425028075183434.Spec : Prop :=
  ∀ n, P14907425028075183434.a n = A087625 (n + 1)

end A087625

/-! ## A087625.P4261641567048603181

`∑{d}[n+1, A130734(#)*A143519((n+1)/#)]`
-/

namespace A087625.P4261641567048603181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130734 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087625.P4261641567048603181

namespace A087625

/-- `∑{d}[n+1, A130734(#)*A143519((n+1)/#)]` -/
def P4261641567048603181.Spec : Prop :=
  ∀ n, P4261641567048603181.a n = A087625 (n + 1)

end A087625

/-!
# A087626: Expansion of 2/(1-2x+sqrt(1-4x+4x^3)).

The programs for A087626, there is no canonical definition to state claims against.
-/

/-! ## A087626.P5524175644406150255

`∑[A056010(n)]`
-/

namespace A087626.P5524175644406150255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087626.P5524175644406150255

/-! ## A087626.P8344839923573654429

`∑[A025262(n+2)]`
-/

namespace A087626.P8344839923573654429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087626.P8344839923573654429

/-! ## A087626.P7186736865379334476

`∑[abs(Δ[A157100(n)])]`
-/

namespace A087626.P7186736865379334476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087626.P7186736865379334476

/-! ## A087626.P9878243404252029984

`A157100(n+1)-1`
-/

namespace A087626.P9878243404252029984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157100 (n + 1) - 1

end

end A087626.P9878243404252029984

/-! ## A087626.P2420514750524682020

`∑[A157002(n+1)+A157002(n)]`
-/

namespace A087626.P2420514750524682020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157002 (n + 1) + A157002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087626.P2420514750524682020

/-! ## A087626.P9871892594770209074

`A157003(n+1)+A157003(n)-1`
-/

namespace A087626.P9871892594770209074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157003 (n + 1) + (A157003 n - 1)

end

end A087626.P9871892594770209074

/-!
# A087627: Count ...n,2n,2n...

The programs for A087627, the canonical program `A087627.P3649070259208377019` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087627 has offset 0).

The definition of A087627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087627.P7255798332296928977

`lcm(2, round(2*n/3))/2+1`
-/

namespace A087627.P7255798332296928977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) : ℚ) / 2 + 1

end

end A087627.P7255798332296928977

namespace A087627

/-- `lcm(2, round(2*n/3))/2+1` -/
def P7255798332296928977.Spec : Prop :=
  ∀ n, P7255798332296928977.a n = (A087627 n : ℚ)

end A087627

/-! ## A087627.P3649070259208377019

`a(n-3)+a(n%3)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087627

/-- `a(n-3)+a(n%3)` -/
def P3649070259208377019.Spec : Prop :=
  ∀ n, (P3649070259208377019.a n : ℤ) = A087627 n

theorem P3649070259208377019.correct : P3649070259208377019.Spec := by
  intro n
  simp only [A087627]

end A087627

/-! ## A087627.P5505414387603604345

`(n²+1)%3*∑[char[3*n]]`
-/

namespace A087627.P5505414387603604345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087627.P5505414387603604345

namespace A087627

/-- `(n²+1)%3*∑[char[3*n]]` -/
def P5505414387603604345.Spec : Prop :=
  ∀ n, (P5505414387603604345.a n : ℤ) = A087627 n

end A087627

/-! ## A087627.P12929456983282375290

`2^(n²%3)*∑[char[3*n]]`
-/

namespace A087627.P12929456983282375290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n ^ 2 % 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087627.P12929456983282375290

namespace A087627

/-- `2^(n²%3)*∑[char[3*n]]` -/
def P12929456983282375290.Spec : Prop :=
  ∀ n, (P12929456983282375290.a n : ℤ) = A087627 n

end A087627

/-! ## A087627.P1828080893765857987

`(floor(n/3)+1)*(2-char[3*n])`
-/

namespace A087627.P1828080893765857987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 3⌋ + 1) * (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A087627.P1828080893765857987

namespace A087627

/-- `(floor(n/3)+1)*(2-char[3*n])` -/
def P1828080893765857987.Spec : Prop :=
  ∀ n, P1828080893765857987.a n = A087627 n

end A087627

/-! ## A087627.P8615893134562002229

`a(n-3)+2-char[3*n]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A087627.P8615893134562002229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 3) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A087627.P8615893134562002229

namespace A087627

/-- `a(n-3)+2-char[3*n]` -/
def P8615893134562002229.Spec : Prop :=
  ∀ n, P8615893134562002229.a n = A087627 n

end A087627

/-! ## A087627.P2212152090148258142

`n+1-a(n-2)/floor(n/a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A087627.P2212152090148258142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℚ) - a (n - 2) / (⌊(n : ℚ) / a (n - 1)⌋ : ℚ)

end

end A087627.P2212152090148258142

namespace A087627

/-- `n+1-a(n-2)/floor(n/a(n-1))` -/
def P2212152090148258142.Spec : Prop :=
  ∀ n, P2212152090148258142.a n = (A087627 n : ℚ)

end A087627

/-! ## A087627.P17222968527203373504

`n-(a(n-2)/floor(n/a(n-1))-1)` with `a(0)=1, a(1)=2`
-/

namespace A087627.P17222968527203373504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℚ) - (a (n - 2) / (⌊(n : ℚ) / a (n - 1)⌋ : ℚ) - 1)

end

end A087627.P17222968527203373504

namespace A087627

/-- `n-(a(n-2)/floor(n/a(n-1))-1)` -/
def P17222968527203373504.Spec : Prop :=
  ∀ n, P17222968527203373504.a n = (A087627 n : ℚ)

end A087627

/-! ## A087627.P9168221896360551476

`∑[floor(a(n-3))]-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A087627.P9168221896360551476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A087627.P9168221896360551476

namespace A087627

/-- `∑[floor(a(n-3))]-(a(n-1)+a(n-2))` -/
def P9168221896360551476.Spec : Prop :=
  ∀ n, P9168221896360551476.a n = A087627 n

end A087627

/-! ## A087627.P7163116463221806296

`∑[floor(a(n-3))]-a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A087627.P7163116463221806296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A087627.P7163116463221806296

namespace A087627

/-- `∑[floor(a(n-3))]-a(n-1)-a(n-2)` -/
def P7163116463221806296.Spec : Prop :=
  ∀ n, P7163116463221806296.a n = A087627 n

end A087627

/-! ## A087627.P8785679633393206067

`1-A186731(n)+n`
-/

namespace A087627.P8785679633393206067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A186731 n + (n : ℤ)

end

end A087627.P8785679633393206067

namespace A087627

/-- `1-A186731(n)+n` -/
def P8785679633393206067.Spec : Prop :=
  ∀ n, P8785679633393206067.a n = A087627 n

end A087627

/-! ## A087627.P8897684365015013000

`A130196(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A087627.P8897684365015013000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A130196 n + a (n - 3)

end

end A087627.P8897684365015013000

namespace A087627

/-- `A130196(n)+a(n-3)` -/
def P8897684365015013000.Spec : Prop :=
  ∀ n, P8897684365015013000.a n = A087627 n

end A087627

/-! ## A087627.P16805012585610147198

`A004396(n)/(char[3*n]+1)+1`
-/

namespace A087627.P16805012585610147198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) + 1

end

end A087627.P16805012585610147198

namespace A087627

/-- `A004396(n)/(char[3*n]+1)+1` -/
def P16805012585610147198.Spec : Prop :=
  ∀ n, P16805012585610147198.a n = (A087627 n : ℚ)

end A087627

/-! ## A087627.P311358009249009793

`A026741(A004396(n))+1`
-/

namespace A087627.P311358009249009793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004396 n).toNat + 1

end

end A087627.P311358009249009793

namespace A087627

/-- `A026741(A004396(n))+1` -/
def P311358009249009793.Spec : Prop :=
  ∀ n, P311358009249009793.a n = A087627 n

end A087627

/-! ## A087627.P11914438291486071702

`A029578(A004396(n)+2)`
-/

namespace A087627.P11914438291486071702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A004396 n + 2).toNat

end

end A087627.P11914438291486071702

namespace A087627

/-- `A029578(A004396(n)+2)` -/
def P11914438291486071702.Spec : Prop :=
  ∀ n, P11914438291486071702.a n = A087627 n

end A087627

/-! ## A087627.P17576644069960676470

`A029578(A066481(n+3))`
-/

namespace A087627.P17576644069960676470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A066481 (n + 3)).toNat

end

end A087627.P17576644069960676470

namespace A087627

/-- `A029578(A066481(n+3))` -/
def P17576644069960676470.Spec : Prop :=
  ∀ n, P17576644069960676470.a n = A087627 n

end A087627

/-! ## A087627.P10622622937147129965

`A087508(n)+A008620(n)`
-/

namespace A087627.P10622622937147129965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n + A008620 n

end

end A087627.P10622622937147129965

namespace A087627

/-- `A087508(n)+A008620(n)` -/
def P10622622937147129965.Spec : Prop :=
  ∀ n, P10622622937147129965.a n = A087627 n

end A087627

/-! ## A087627.P8063474518000636029

`lcm(A008620(n), A138189(n))`
-/

namespace A087627.P8063474518000636029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008620 n) (A138189 n)

end

end A087627.P8063474518000636029

namespace A087627

/-- `lcm(A008620(n), A138189(n))` -/
def P8063474518000636029.Spec : Prop :=
  ∀ n, (P8063474518000636029.a n : ℤ) = A087627 n

end A087627

/-! ## A087627.P9959491329957529890

`lcm(A099254(n), A270743(n+1))`
-/

namespace A087627.P9959491329957529890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099254 n) (A270743 (n + 1))

end

end A087627.P9959491329957529890

namespace A087627

/-- `lcm(A099254(n), A270743(n+1))` -/
def P9959491329957529890.Spec : Prop :=
  ∀ n, (P9959491329957529890.a n : ℤ) = A087627 n

end A087627

/-! ## A087627.P5656699063314093960

`A029578(n+2-A002264(n+1))`
-/

namespace A087627.P5656699063314093960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 ((n + 2 : ℤ) - A002264 (n + 1)).toNat

end

end A087627.P5656699063314093960

namespace A087627

/-- `A029578(n+2-A002264(n+1))` -/
def P5656699063314093960.Spec : Prop :=
  ∀ n, P5656699063314093960.a n = A087627 n

end A087627

/-!
# A087628: Generalized Jacobsthal sequence.

The programs for A087628, the canonical program `A087628.P5452780026811073144` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087628 has offset 0).

The definition of A087628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087628.P5452780026811073144

`A078008(∑[(2*n)%3])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087628

/-- `A078008(∑[(2*n)%3])` -/
def P5452780026811073144.Spec : Prop :=
  ∀ n, P5452780026811073144.a n = A087628 n

theorem P5452780026811073144.correct : P5452780026811073144.Spec := by
  intro n
  simp only [A087628]

end A087628

/-! ## A087628.P15541052933280445749

`A078008(n²%3+n)`
-/

namespace A087628.P15541052933280445749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n ^ 2 % 3 + n)

end

end A087628.P15541052933280445749

namespace A087628

/-- `A078008(n²%3+n)` -/
def P15541052933280445749.Spec : Prop :=
  ∀ n, P15541052933280445749.a n = A087628 n

end A087628

/-! ## A087628.P10708850958581369816

`lcm(2-floor(acot(n)), A024493(n))`
-/

namespace A087628.P10708850958581369816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - ⌊SequenceMachineLib.acot (n : ℝ)⌋) (A024493 n)

end

end A087628.P10708850958581369816

namespace A087628

/-- `lcm(2-floor(acot(n)), A024493(n))` -/
def P10708850958581369816.Spec : Prop :=
  ∀ n, (P10708850958581369816.a n : ℤ) = A087628 n

end A087628

/-! ## A087628.P8159730272625439126

`A078008(n+1-∑[n+1]%3)`
-/

namespace A087628.P8159730272625439126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1 - (∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A087628.P8159730272625439126

namespace A087628

/-- `A078008(n+1-∑[n+1]%3)` -/
def P8159730272625439126.Spec : Prop :=
  ∀ n, P8159730272625439126.a n = A087628 n

end A087628

/-! ## A087628.P6180769014605150285

`A078008(∑[A080425(n)])`
-/

namespace A087628.P6180769014605150285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087628.P6180769014605150285

namespace A087628

/-- `A078008(∑[A080425(n)])` -/
def P6180769014605150285.Spec : Prop :=
  ∀ n, P6180769014605150285.a n = A087628 n

end A087628

/-! ## A087628.P6820297298725484735

`A230096(A047258(n+1))`
-/

namespace A087628.P6820297298725484735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 (A047258 (n + 1)).toNat

end

end A087628.P6820297298725484735

namespace A087628

/-- `A230096(A047258(n+1))` -/
def P6820297298725484735.Spec : Prop :=
  ∀ n, P6820297298725484735.a n = A087628 n

end A087628

/-! ## A087628.P212695482267800200

`A230096(A047271(n+1))`
-/

namespace A087628.P212695482267800200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 (A047271 (n + 1)).toNat

end

end A087628.P212695482267800200

namespace A087628

/-- `A230096(A047271(n+1))` -/
def P212695482267800200.Spec : Prop :=
  ∀ n, P212695482267800200.a n = A087628 n

end A087628

/-! ## A087628.P9659255693878045958

`A078008(A011655(n)+n)`
-/

namespace A087628.P9659255693878045958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A011655 n + (n : ℤ)).toNat

end

end A087628.P9659255693878045958

namespace A087628

/-- `A078008(A011655(n)+n)` -/
def P9659255693878045958.Spec : Prop :=
  ∀ n, P9659255693878045958.a n = A087628 n

end A087628

/-! ## A087628.P599191996122055432

`A087463(n)+A024493(n)`
-/

namespace A087628.P599191996122055432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087463 n + A024493 n

end

end A087628.P599191996122055432

namespace A087628

/-- `A087463(n)+A024493(n)` -/
def P599191996122055432.Spec : Prop :=
  ∀ n, P599191996122055432.a n = A087628 n

end A087628

/-! ## A087628.P738819374819602266

`A092220(n)+A087629(n)`
-/

namespace A087628.P738819374819602266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n + A087629 n

end

end A087628.P738819374819602266

namespace A087628

/-- `A092220(n)+A087629(n)` -/
def P738819374819602266.Spec : Prop :=
  ∀ n, P738819374819602266.a n = A087628 n

end A087628

/-! ## A087628.P5079140689609491395

`A024493(n)*A130196(n)`
-/

namespace A087628.P5079140689609491395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n * A130196 n

end

end A087628.P5079140689609491395

namespace A087628

/-- `A024493(n)*A130196(n)` -/
def P5079140689609491395.Spec : Prop :=
  ∀ n, P5079140689609491395.a n = A087628 n

end A087628

/-! ## A087628.P6041733191947307981

`xor(A087629(n), A120323(n))`
-/

namespace A087628.P6041733191947307981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087629 n) (A120323 n)

end

end A087628.P6041733191947307981

namespace A087628

/-- `xor(A087629(n), A120323(n))` -/
def P6041733191947307981.Spec : Prop :=
  ∀ n, P6041733191947307981.a n = A087628 n

end A087628

/-! ## A087628.P1084734167193465697

`A078008(∑[A010872(2*n)])`
-/

namespace A087628.P1084734167193465697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087628.P1084734167193465697

namespace A087628

/-- `A078008(∑[A010872(2*n)])` -/
def P1084734167193465697.Spec : Prop :=
  ∀ n, P1084734167193465697.a n = A087628 n

end A087628

/-! ## A087628.P5587095411706443897

`A078008(A092220(n)²+n)`
-/

namespace A087628.P5587095411706443897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A092220 n ^ 2 + (n : ℤ)).toNat

end

end A087628.P5587095411706443897

namespace A087628

/-- `A078008(A092220(n)²+n)` -/
def P5587095411706443897.Spec : Prop :=
  ∀ n, P5587095411706443897.a n = A087628 n

end A087628

/-! ## A087628.P16038051404921083027

`A130707(A128834(n)²+n)`
-/

namespace A087628.P16038051404921083027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 (A128834 n ^ 2 + (n : ℤ)).toNat

end

end A087628.P16038051404921083027

namespace A087628

/-- `A130707(A128834(n)²+n)` -/
def P16038051404921083027.Spec : Prop :=
  ∀ n, P16038051404921083027.a n = A087628 n

end A087628

/-! ## A087628.P8077085684547170623

`A078008(Δ[A004523(n)]+n)`
-/

namespace A087628.P8077085684547170623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A087628.P8077085684547170623

namespace A087628

/-- `A078008(Δ[A004523(n)]+n)` -/
def P8077085684547170623.Spec : Prop :=
  ∀ n, P8077085684547170623.a n = A087628 n

end A087628

/-! ## A087628.P17347835924726903795

`(A011655(n)+1)*A024493(n)`
-/

namespace A087628.P17347835924726903795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011655 n + 1) * A024493 n

end

end A087628.P17347835924726903795

namespace A087628

/-- `(A011655(n)+1)*A024493(n)` -/
def P17347835924726903795.Spec : Prop :=
  ∀ n, P17347835924726903795.a n = A087628 n

end A087628

/-! ## A087628.P1359508383956606301

`(2-A079978(n))*A024493(n)`
-/

namespace A087628.P1359508383956606301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A079978 n) * A024493 n

end

end A087628.P1359508383956606301

namespace A087628

/-- `(2-A079978(n))*A024493(n)` -/
def P1359508383956606301.Spec : Prop :=
  ∀ n, P1359508383956606301.a n = A087628 n

end A087628

/-! ## A087628.P4171438259416808198

`A078008(n-A092220(2*n))`
-/

namespace A087628.P4171438259416808198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 ((n : ℤ) - A092220 (2 * n)).toNat

end

end A087628.P4171438259416808198

namespace A087628

/-- `A078008(n-A092220(2*n))` -/
def P4171438259416808198.Spec : Prop :=
  ∀ n, P4171438259416808198.a n = A087628 n

end A087628

/-!
# A087629: Generalized Jacobsthal sequence.

The programs for A087629, the canonical program `A087629.P7296063400555584856` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087629 has offset 0).

The definition of A087629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087629.P16324435466734357047

`A133684(2*(n+1)-(1-n²%3))`
-/

namespace A087629.P16324435466734357047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 ((2 * (n + 1) : ℤ) - (1 - ((n ^ 2 % 3 : ℕ) : ℤ))).toNat

end

end A087629.P16324435466734357047

namespace A087629

/-- `A133684(2*(n+1)-(1-n²%3))` -/
def P16324435466734357047.Spec : Prop :=
  ∀ n, P16324435466734357047.a n = A087629 n

end A087629

/-! ## A087629.P10072051912339224887

`A133684(2*(n+1)-∑[n+1]%3)`
-/

namespace A087629.P10072051912339224887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A087629.P10072051912339224887

namespace A087629

/-- `A133684(2*(n+1)-∑[n+1]%3)` -/
def P10072051912339224887.Spec : Prop :=
  ∀ n, P10072051912339224887.a n = A087629 n

end A087629

/-! ## A087629.P10451559855502542207

`A133684(A047234(n+2))`
-/

namespace A087629.P10451559855502542207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047234 (n + 2)).toNat

end

end A087629.P10451559855502542207

namespace A087629

/-- `A133684(A047234(n+2))` -/
def P10451559855502542207.Spec : Prop :=
  ∀ n, P10451559855502542207.a n = A087629 n

end A087629

/-! ## A087629.P7296063400555584856

`A087464(n)+A024493(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087629

/-- `A087464(n)+A024493(n)` -/
def P7296063400555584856.Spec : Prop :=
  ∀ n, P7296063400555584856.a n = A087629 n

theorem P7296063400555584856.correct : P7296063400555584856.Spec := by
  intro n
  simp only [A087629]

end A087629

/-! ## A087629.P17005553266924421940

`A087463(n)+A078008(n)`
-/

namespace A087629.P17005553266924421940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087463 n + A078008 n

end

end A087629.P17005553266924421940

namespace A087629

/-- `A087463(n)+A078008(n)` -/
def P17005553266924421940.Spec : Prop :=
  ∀ n, P17005553266924421940.a n = A087629 n

end A087629

/-! ## A087629.P262922537121190297

`A087628(n)-A092220(n)`
-/

namespace A087629.P262922537121190297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087628 n - A092220 n

end

end A087629.P262922537121190297

namespace A087629

/-- `A087628(n)-A092220(n)` -/
def P262922537121190297.Spec : Prop :=
  ∀ n, P262922537121190297.a n = A087629 n

end A087629

/-! ## A087629.P1100349428021497652

`xor(A087628(n), A120323(n))`
-/

namespace A087629.P1100349428021497652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087628 n) (A120323 n)

end

end A087629.P1100349428021497652

namespace A087629

/-- `xor(A087628(n), A120323(n))` -/
def P1100349428021497652.Spec : Prop :=
  ∀ n, P1100349428021497652.a n = A087629 n

end A087629

/-! ## A087629.P4571058613272793204

`A133684(∑[A010882(2*n)])`
-/

namespace A087629.P4571058613272793204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087629.P4571058613272793204

namespace A087629

/-- `A133684(∑[A010882(2*n)])` -/
def P4571058613272793204.Spec : Prop :=
  ∀ n, P4571058613272793204.a n = A087629 n

end A087629

/-! ## A087629.P3049398364499946993

`A133684(A047271(n+1)+1)`
-/

namespace A087629.P3049398364499946993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047271 (n + 1) + 1).toNat

end

end A087629.P3049398364499946993

namespace A087629

/-- `A133684(A047271(n+1)+1)` -/
def P3049398364499946993.Spec : Prop :=
  ∀ n, P3049398364499946993.a n = A087629 n

end A087629

/-! ## A087629.P4018372558070455224

`A133684(A047268(n+2)-1)`
-/

namespace A087629.P4018372558070455224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047268 (n + 2) - 1).toNat

end

end A087629.P4018372558070455224

namespace A087629

/-- `A133684(A047268(n+2)-1)` -/
def P4018372558070455224.Spec : Prop :=
  ∀ n, P4018372558070455224.a n = A087629 n

end A087629

/-! ## A087629.P8083229808373773160

`A133684(∑[A040663(a(n-1))])` with `a(0)=1`
-/

namespace A087629.P8083229808373773160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A040663 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087629.P8083229808373773160

namespace A087629

/-- `A133684(∑[A040663(a(n-1))])` -/
def P8083229808373773160.Spec : Prop :=
  ∀ n, P8083229808373773160.a n = A087629 n

end A087629

/-! ## A087629.P9932963222822976011

`A078008(n)+A001045(n*A092220(n)²)`
-/

namespace A087629.P9932963222822976011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + A001045 ((n : ℤ) * A092220 n ^ 2).toNat

end

end A087629.P9932963222822976011

namespace A087629

/-- `A078008(n)+A001045(n*A092220(n)²)` -/
def P9932963222822976011.Spec : Prop :=
  ∀ n, P9932963222822976011.a n = A087629 n

end A087629

/-! ## A087629.P4232623651440346020

`A131531(n+1)+A087628(n)-A131531(n+2)`
-/

namespace A087629.P4232623651440346020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A087628 n - A131531 (n + 2))

end

end A087629.P4232623651440346020

namespace A087629

/-- `A131531(n+1)+A087628(n)-A131531(n+2)` -/
def P4232623651440346020.Spec : Prop :=
  ∀ n, P4232623651440346020.a n = A087629 n

end A087629

/-! ## A087629.P13426279617979678883

`A087463(n)+Δ[A001045(n)]`
-/

namespace A087629.P13426279617979678883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087463 n + (f1 (n + 1) - f1 n)

end

end A087629.P13426279617979678883

namespace A087629

/-- `A087463(n)+Δ[A001045(n)]` -/
def P13426279617979678883.Spec : Prop :=
  ∀ n, P13426279617979678883.a n = A087629 n

end A087629

/-! ## A087629.P15633945263189876165

`A001045(n+1)+A087463(n)-A001045(n)`
-/

namespace A087629.P15633945263189876165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A087463 n - A001045 n)

end

end A087629.P15633945263189876165

namespace A087629

/-- `A001045(n+1)+A087463(n)-A001045(n)` -/
def P15633945263189876165.Spec : Prop :=
  ∀ n, P15633945263189876165.a n = A087629 n

end A087629

/-! ## A087629.P16263527943504150804

`A001045(n+1)-A001045(n*A079978(n))`
-/

namespace A087629.P16263527943504150804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A001045 ((n : ℤ) * A079978 n).toNat

end

end A087629.P16263527943504150804

namespace A087629

/-- `A001045(n+1)-A001045(n*A079978(n))` -/
def P16263527943504150804.Spec : Prop :=
  ∀ n, P16263527943504150804.a n = A087629 n

end A087629

/-! ## A087629.P17032115131329812894

`(A131556(n+1)-A078008(n+1))/A131556(2*n+1)`
-/

namespace A087629.P17032115131329812894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131556 (n + 1) - A078008 (n + 1) : ℚ) / (A131556 (2 * n + 1) : ℚ)

end

end A087629.P17032115131329812894

namespace A087629

/-- `(A131556(n+1)-A078008(n+1))/A131556(2*n+1)` -/
def P17032115131329812894.Spec : Prop :=
  ∀ n, P17032115131329812894.a n = (A087629 n : ℚ)

end A087629

/-!
# A087630: Number of n-digit primes ending in 1 in base 10.

The programs for A087630, there is no canonical definition to state claims against.
-/

/-! ## A087630.P12758311322600984608

`Δ[A073505(round(sqrt(n²+1)))]`
-/

namespace A087630.P12758311322600984608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073505 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087630.P12758311322600984608

/-! ## A087630.P8582574214935754824

`record[Δ[A073505(∑[log2(gcd(2, n))])]]`
-/

namespace A087630.P8582574214935754824
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073505 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087630.P8582574214935754824

/-! ## A087630.P7524470162167105018

`record[Δ[A073505(∑[char[3*n]])]]`
-/

namespace A087630.P7524470162167105018
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073505 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087630.P7524470162167105018

/-! ## A087630.P16609819182556490893

`abs(Δ[A073505(A028310(n))])`
-/

namespace A087630.P16609819182556490893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073505 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087630.P16609819182556490893

/-! ## A087630.P7964610034868239406

`A073505(n+1)-A073505(round(sqrt(n²+1)))`
-/

namespace A087630.P7964610034868239406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073505 (n + 1) - A073505 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A087630.P7964610034868239406

/-!
# A087631: Number of n-digit primes ending in 3 in base 10.

The programs for A087631, there is no canonical definition to state claims against.
-/

/-! ## A087631.P9665976797791320190

`A005376(A095003(n+1)+n)`
-/

namespace A087631.P9665976797791320190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005376 (A095003 (n + 1) + (n : ℤ)).toNat

end

end A087631.P9665976797791320190

/-!
# A087632: Number of n-digit primes ending in 7 in base 10.

The programs for A087632, there is no canonical definition to state claims against.
-/

/-! ## A087632.P15296231138506236871

`A305502(A103295(3*n+1))+A103295(3*n+1)`
-/

namespace A087632.P15296231138506236871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305502 (A103295 (3 * n + 1)).toNat + A103295 (3 * n + 1)

end

end A087632.P15296231138506236871

/-!
# A087633: Number of n-digit primes ending in 9 in base 10.

The programs for A087633, there is no canonical definition to state claims against.
-/

/-! ## A087633.P13549871664659987665

`Δ[A073508(round(sqrt(n²+1)))]`
-/

namespace A087633.P13549871664659987665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073508 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087633.P13549871664659987665

/-! ## A087633.P16532842105756517374

`abs(Δ[A073508(A028310(n))])`
-/

namespace A087633.P16532842105756517374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073508 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087633.P16532842105756517374

/-! ## A087633.P2305208330393768330

`record[Δ[A073508(A005041(n))]]`
-/

namespace A087633.P2305208330393768330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073508 (A005041 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087633.P2305208330393768330

/-! ## A087633.P4770498414466249439

`record[Δ[A073508(A005378(n))]]`
-/

namespace A087633.P4770498414466249439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073508 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087633.P4770498414466249439

/-! ## A087633.P7822581101389863089

`record[Δ[A073508(A008619(n))]]`
-/

namespace A087633.P7822581101389863089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073508 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087633.P7822581101389863089

/-!
# A087634: Primes p such that the equation phi(x) = 4p has a solution, where phi is the totient function.

The programs for A087634, there is no canonical definition to state claims against.
-/

/-! ## A087634.P645349190576997543

`∪[A005384(n+1), A023212(n+1)]`
-/

namespace A087634.P645349190576997543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087634.P645349190576997543

/-! ## A087634.P15624920380700993592

`p?[A006093(n+1)+A000010(A117673(n+1))]`
-/

namespace A087634.P15624920380700993592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000010 (A117673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087634.P15624920380700993592

/-! ## A087634.P2578337927679400724

`record[A000040(n+1)/A000045(A117673(n+1))]`
-/

namespace A087634.P2578337927679400724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A000045 (A117673 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087634.P2578337927679400724

/-! ## A087634.P9192197529182243461

`record[A006530(A000010(or(2, n)+3))]`
-/

namespace A087634.P9192197529182243461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (Nat.lor 2 n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087634.P9192197529182243461

/-! ## A087634.P15250937612370979032

`record[A006530(A000010(lcm(2, n+1)+3))]`
-/

namespace A087634.P15250937612370979032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (Nat.lcm 2 (n + 1) + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087634.P15250937612370979032

/-! ## A087634.P15216059348377376229

`record[A006530(A000010(xor(2, n)+2*n+3))]`
-/

namespace A087634.P15216059348377376229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (Nat.xor 2 n + 2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087634.P15216059348377376229

/-! ## A087634.P1347305306086827636

`record[A006530(A000010((n+1)*(n%2+2)+3))]`
-/

namespace A087634.P1347305306086827636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 ((n + 1) * (n % 2 + 2) + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087634.P1347305306086827636

/-! ## A087634.P1749525736171499873

`p?[A000217(A002180(n+2))%A002180(n+2)]`
-/

namespace A087634.P1749525736171499873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A002180 (n + 2)).toNat) (A002180 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087634.P1749525736171499873

/-! ## A087634.P6686677535901528030

`p?[(n+2)*A000010(A016014(n+2))]`
-/

namespace A087634.P6686677535901528030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000010 (A016014 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087634.P6686677535901528030

/-! ## A087634.P8408841930718511153

`p?[A000040(n+1)*A336280(A035096(n+1))]`
-/

namespace A087634.P8408841930718511153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A336280 (A035096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087634.P8408841930718511153

/-! ## A087634.P13520497737004843140

`p?[record[A078898(A055034(n+1))]]`
-/

namespace A087634.P13520497737004843140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A055034 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087634.P13520497737004843140

/-!
# A087635: a(n) = S(n,3) where S(n,m) = Sum_{k=0..n} binomial(n,k)*Fibonacci(m*k).

The programs for A087635, the canonical program `A087635.P8404651295654569747` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087635 has offset 0).

The definition of A087635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087635.P8404651295654569747

`6*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087635

/-- `6*a(n-1)-4*a(n-2)` -/
def P8404651295654569747.Spec : Prop :=
  ∀ n, P8404651295654569747.a n = A087635 n

theorem P8404651295654569747.correct : P8404651295654569747.Spec := by
  intro n
  simp only [A087635]

end A087635

/-! ## A087635.P1220098926324847216

`2*A084326(n)`
-/

namespace A087635.P1220098926324847216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084326 n

end

end A087635.P1220098926324847216

namespace A087635

/-- `2*A084326(n)` -/
def P1220098926324847216.Spec : Prop :=
  ∀ n, P1220098926324847216.a n = A087635 n

end A087635

/-! ## A087635.P14036103365702880314

`ogf(2x/(1-6x+4x^2))`
-/

namespace A087635.P14036103365702880314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -6, 4] n

end

end A087635.P14036103365702880314

namespace A087635

/-- `ogf(2x/(1-6x+4x^2))` -/
def P14036103365702880314.Spec : Prop :=
  ∀ n, P14036103365702880314.a n = A087635 n

end A087635

/-! ## A087635.P954482041788503595

`round((2*(ϕ+1))^n/sqrt(5))`
-/

namespace A087635.P954482041788503595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (Real.goldenRatio + 1)) ^ n / Real.sqrt (5 : ℝ))

end

end A087635.P954482041788503595

namespace A087635

/-- `round((2*(ϕ+1))^n/sqrt(5))` -/
def P954482041788503595.Spec : Prop :=
  ∀ n, P954482041788503595.a n = A087635 n

end A087635

/-! ## A087635.P1694749379710166506

`∑[round((sqrt(5)+3)*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A087635.P1694749379710166506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (5 : ℝ) + 3) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087635.P1694749379710166506

namespace A087635

/-- `∑[round((sqrt(5)+3)*a(n-1))]` -/
def P1694749379710166506.Spec : Prop :=
  ∀ n, P1694749379710166506.a n = A087635 n

end A087635

/-! ## A087635.P2412882904467125273

`2*ceil(ϕ*ϕ*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A087635.P2412882904467125273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A087635.P2412882904467125273

namespace A087635

/-- `2*ceil(ϕ*ϕ*a(n-1))` -/
def P2412882904467125273.Spec : Prop :=
  ∀ n, P2412882904467125273.a n = A087635 n

end A087635

/-! ## A087635.P14836491862478185391

`∑[2*round(ϕ²*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A087635.P14836491862478185391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087635.P14836491862478185391

namespace A087635

/-- `∑[2*round(ϕ²*a(n-1))]` -/
def P14836491862478185391.Spec : Prop :=
  ∀ n, P14836491862478185391.a n = A087635 n

end A087635

/-! ## A087635.P9109643392237566221

`∑[2*round(a(n-1)/(2-ϕ))]` with `a(0)=0, a(1)=2`
-/

namespace A087635.P9109643392237566221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (2 - Real.goldenRatio))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087635.P9109643392237566221

namespace A087635

/-- `∑[2*round(a(n-1)/(2-ϕ))]` -/
def P9109643392237566221.Spec : Prop :=
  ∀ n, P9109643392237566221.a n = A087635 n

end A087635

/-! ## A087635.P17537973635743526915

`2^n*A001906(n)`
-/

namespace A087635.P17537973635743526915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001906 n

end

end A087635.P17537973635743526915

namespace A087635

/-- `2^n*A001906(n)` -/
def P17537973635743526915.Spec : Prop :=
  ∀ n, P17537973635743526915.a n = A087635 n

end A087635

/-! ## A087635.P678765458089367107

`(∑[A082761(n)]-1)/2`
-/

namespace A087635.P678765458089367107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082761 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A087635.P678765458089367107

namespace A087635

/-- `(∑[A082761(n)]-1)/2` -/
def P678765458089367107.Spec : Prop :=
  ∀ n, P678765458089367107.a n = (A087635 n : ℚ)

end A087635

/-! ## A087635.P6107792788169920033

`2^n*A000045(2*n)`
-/

namespace A087635.P6107792788169920033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000045 (2 * n)

end

end A087635.P6107792788169920033

namespace A087635

/-- `2^n*A000045(2*n)` -/
def P6107792788169920033.Spec : Prop :=
  ∀ n, P6107792788169920033.a n = A087635 n

end A087635

/-! ## A087635.P8393537799872194289

`A000045(Δ[n²]-1)/2^-n`
-/

namespace A087635.P8393537799872194289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A087635.P8393537799872194289

namespace A087635

/-- `A000045(Δ[n²]-1)/2^-n` -/
def P8393537799872194289.Spec : Prop :=
  ∀ n, P8393537799872194289.a n = (A087635 n : ℚ)

end A087635

/-! ## A087635.P4234321918966177608

`A000045(n)*A087131(n)`
-/

namespace A087635.P4234321918966177608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A087131 n

end

end A087635.P4234321918966177608

namespace A087635

/-- `A000045(n)*A087131(n)` -/
def P4234321918966177608.Spec : Prop :=
  ∀ n, P4234321918966177608.a n = A087635 n

end A087635

/-! ## A087635.P6764357346665976363

`A000032(n)*A103435(n)`
-/

namespace A087635.P6764357346665976363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A103435 n

end

end A087635.P6764357346665976363

namespace A087635

/-- `A000032(n)*A103435(n)` -/
def P6764357346665976363.Spec : Prop :=
  ∀ n, P6764357346665976363.a n = A087635 n

end A087635

/-! ## A087635.P4156546592371677001

`A001906(n)*A155559(n)`
-/

namespace A087635.P4156546592371677001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A155559 n

end

end A087635.P4156546592371677001

namespace A087635

/-- `A001906(n)*A155559(n)` -/
def P4156546592371677001.Spec : Prop :=
  ∀ n, P4156546592371677001.a n = A087635 n

end A087635

/-! ## A087635.P8347926796441371058

`A001906(n)*A171449(n)`
-/

namespace A087635.P8347926796441371058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A171449 n

end

end A087635.P8347926796441371058

namespace A087635

/-- `A001906(n)*A171449(n)` -/
def P8347926796441371058.Spec : Prop :=
  ∀ n, P8347926796441371058.a n = A087635 n

end A087635

/-! ## A087635.P1212900911914300859

`A001906(n)*A171559(n)`
-/

namespace A087635.P1212900911914300859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A171559 n

end

end A087635.P1212900911914300859

namespace A087635

/-- `A001906(n)*A171559(n)` -/
def P1212900911914300859.Spec : Prop :=
  ∀ n, P1212900911914300859.a n = A087635 n

end A087635

/-! ## A087635.P5115989744461944386

`A088305(n)*A155559(n)`
-/

namespace A087635.P5115989744461944386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n * A155559 n

end

end A087635.P5115989744461944386

namespace A087635

/-- `A088305(n)*A155559(n)` -/
def P5115989744461944386.Spec : Prop :=
  ∀ n, P5115989744461944386.a n = A087635 n

end A087635

/-! ## A087635.P1520256738520916233

`record[A000045(n)*A077957(n)]`
-/

namespace A087635.P1520256738520916233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087635.P1520256738520916233

namespace A087635

/-- `record[A000045(n)*A077957(n)]` -/
def P1520256738520916233.Spec : Prop :=
  ∀ n, P1520256738520916233.a n = A087635 n

end A087635

/-! ## A087635.P16073830417900570191

`A001906(n)*A011782(n+1)`
-/

namespace A087635.P16073830417900570191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A011782 (n + 1)

end

end A087635.P16073830417900570191

namespace A087635

/-- `A001906(n)*A011782(n+1)` -/
def P16073830417900570191.Spec : Prop :=
  ∀ n, P16073830417900570191.a n = A087635 n

end A087635

/-!
# A087636: Number of n-digit lunar primes.

The programs for A087636, there is no canonical definition to state claims against.
-/

/-! ## A087636.P9849061675634959158

`Δ[A087638(floor(acot(n)+n))]`
-/

namespace A087636.P9849061675634959158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087638 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087636.P9849061675634959158

/-! ## A087636.P16018680266454557107

`Δ[A087638(round(sqrt(n²+1)))]`
-/

namespace A087636.P16018680266454557107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087638 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087636.P16018680266454557107

/-! ## A087636.P11962096319653368109

`abs(Δ[A087638(A028310(n))])`
-/

namespace A087636.P11962096319653368109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087638 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087636.P11962096319653368109

/-! ## A087636.P7591960204524527318

`record[Δ[A087638(A003105(n))]]`
-/

namespace A087636.P7591960204524527318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087638 (A003105 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087636.P7591960204524527318

/-! ## A087636.P13873268812916637415

`record[Δ[A087638(A005378(n))]]`
-/

namespace A087636.P13873268812916637415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087638 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087636.P13873268812916637415

/-!
# A087638: Number of lunar primes with <= n digits.

The programs for A087638, there is no canonical definition to state claims against.
-/

/-! ## A087638.P7450543077343412886

`∑[A087636(n+1)]`
-/

namespace A087638.P7450543077343412886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087638.P7450543077343412886

/-! ## A087638.P2006193717197936373

`∑[record[A087636(A000119(n))]]`
-/

namespace A087638.P2006193717197936373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087636 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087638.P2006193717197936373

/-! ## A087638.P3047642961507572582

`∑[record[A087636(A020986(n))]]`
-/

namespace A087638.P3047642961507572582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087636 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087638.P3047642961507572582

/-! ## A087638.P11562332345542251669

`∑[record[A087636(A028920(n))]]`
-/

namespace A087638.P11562332345542251669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087636 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087638.P11562332345542251669

/-! ## A087638.P608944880359845115

`∑[record[A087636(A051801(n))]]`
-/

namespace A087638.P608944880359845115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087636 (A051801 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087638.P608944880359845115

/-!
# A087639: E.g.f.: Product_{m >= 1} (1+x^(2*m)/(2*m)) (even powers only).

The programs for A087639, there is no canonical definition to state claims against.
-/

/-! ## A087639.P4051034976091303760

`A067348(2*a(n-1))/2*n/2` with `a(0)=1, a(1)=1`
-/

namespace A087639.P4051034976091303760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A067348 (SequenceMachineLib.roundAway (2 * a (n - 1))).toNat : ℚ) / 2 * ((n : ℚ) / 2)

end

end A087639.P4051034976091303760

/-!
# A087640: To obtain a(n+1), take the square of the n-th partial sum, minus the sum of the first n squared terms, then divide this difference by a(n); for all n>1, starting with a(0)=1, a(1)=1.

The programs for A087640, the canonical program `A087640.P1929482107389768452` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087640 has offset 0).

The definition of A087640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087640.P1929482107389768452

`a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087640

/-- `a(n-1)+3*a(n-2)-a(n-3)` -/
def P1929482107389768452.Spec : Prop :=
  ∀ n, P1929482107389768452.a n = A087640 n

theorem P1929482107389768452.correct : P1929482107389768452.Spec := by
  intro n
  simp only [A087640]

end A087640

/-! ## A087640.P6046966645417321969

`ogf((1-2x^2+x^3)/(1-x-3x^2+x^3))`
-/

namespace A087640.P6046966645417321969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 1] [1, -1, -3, 1] n

end

end A087640.P6046966645417321969

namespace A087640

/-- `ogf((1-2x^2+x^3)/(1-x-3x^2+x^3))` -/
def P6046966645417321969.Spec : Prop :=
  ∀ n, P6046966645417321969.a n = A087640 n

end A087640

/-! ## A087640.P1891113353539178930

`A087955(n)-A052973(abs(A023443(n)))`
-/

namespace A087640.P1891113353539178930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n - A052973 |A023443 n|.toNat

end

end A087640.P1891113353539178930

namespace A087640

/-- `A087955(n)-A052973(abs(A023443(n)))` -/
def P1891113353539178930.Spec : Prop :=
  ∀ n, P1891113353539178930.a n = A087640 n

end A087640

/-! ## A087640.P16316190988798216266

`A307464(A028310(n)+1)-A307464(n)`
-/

namespace A087640.P16316190988798216266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 (A028310 n + 1).toNat - A307464 n

end

end A087640.P16316190988798216266

namespace A087640

/-- `A307464(A028310(n)+1)-A307464(n)` -/
def P16316190988798216266.Spec : Prop :=
  ∀ n, P16316190988798216266.a n = A087640 n

end A087640

/-! ## A087640.P1379378150270072223

`A087955(n)+A087955(n)-A087956(n)`
-/

namespace A087640.P1379378150270072223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n + (A087955 n - A087956 n)

end

end A087640.P1379378150270072223

namespace A087640

/-- `A087955(n)+A087955(n)-A087956(n)` -/
def P1379378150270072223.Spec : Prop :=
  ∀ n, P1379378150270072223.a n = A087640 n

end A087640

/-! ## A087640.P11959683853722164126

`A087955(n)+A087957(n)-A087958(n)`
-/

namespace A087640.P11959683853722164126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n + (A087957 n - A087958 n)

end

end A087640.P11959683853722164126

namespace A087640

/-- `A087955(n)+A087957(n)-A087958(n)` -/
def P11959683853722164126.Spec : Prop :=
  ∀ n, P11959683853722164126.a n = A087640 n

end A087640

/-! ## A087640.P5380717814695385777

`A087956(n)+A087956(n)-A087958(n)`
-/

namespace A087640.P5380717814695385777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n + (A087956 n - A087958 n)

end

end A087640.P5380717814695385777

namespace A087640

/-- `A087956(n)+A087956(n)-A087958(n)` -/
def P5380717814695385777.Spec : Prop :=
  ∀ n, P5380717814695385777.a n = A087640 n

end A087640

/-! ## A087640.P11578814405312201072

`A052973(n)+A087955(n)-A382683(n)`
-/

namespace A087640.P11578814405312201072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 n + (A087955 n - A382683 n)

end

end A087640.P11578814405312201072

namespace A087640

/-- `A052973(n)+A087955(n)-A382683(n)` -/
def P11578814405312201072.Spec : Prop :=
  ∀ n, P11578814405312201072.a n = A087640 n

end A087640

/-! ## A087640.P10997898061584257212

`A087955(n)-(A087957(n)-A087956(n))`
-/

namespace A087640.P10997898061584257212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n - (A087957 n - A087956 n)

end

end A087640.P10997898061584257212

namespace A087640

/-- `A087955(n)-(A087957(n)-A087956(n))` -/
def P10997898061584257212.Spec : Prop :=
  ∀ n, P10997898061584257212.a n = A087640 n

end A087640

/-! ## A087640.P11365545786062670788

`2*A087955(n)-A087956(n)`
-/

namespace A087640.P11365545786062670788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087955 n - A087956 n

end

end A087640.P11365545786062670788

namespace A087640

/-- `2*A087955(n)-A087956(n)` -/
def P11365545786062670788.Spec : Prop :=
  ∀ n, P11365545786062670788.a n = A087640 n

end A087640

/-! ## A087640.P15957800116523249988

`2*A087956(n)-A087958(n)`
-/

namespace A087640.P15957800116523249988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087956 n - A087958 n

end

end A087640.P15957800116523249988

namespace A087640

/-- `2*A087956(n)-A087958(n)` -/
def P15957800116523249988.Spec : Prop :=
  ∀ n, P15957800116523249988.a n = A087640 n

end A087640

/-! ## A087640.P2994766868572788025

`Δ[A307464(n)%A307464(n+1)]`
-/

namespace A087640.P2994766868572788025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307464 n) (A307464 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087640.P2994766868572788025

namespace A087640

/-- `Δ[A307464(n)%A307464(n+1)]` -/
def P2994766868572788025.Spec : Prop :=
  ∀ n, P2994766868572788025.a n = A087640 n

end A087640

/-! ## A087640.P14612886457858558863

`Δ[A307464(n)%A030186(n)]`
-/

namespace A087640.P14612886457858558863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307464 n) (A030186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087640.P14612886457858558863

namespace A087640

/-- `Δ[A307464(n)%A030186(n)]` -/
def P14612886457858558863.Spec : Prop :=
  ∀ n, P14612886457858558863.a n = A087640 n

end A087640

/-!
# A087641: Start of the first sequence of exactly n consecutive pairs of twin primes.

The programs for A087641, there is no canonical definition to state claims against.
-/

/-! ## A087641.P12311318346276065198

`A069472(n+1)%A069472(A178867(3*n+5))`
-/

namespace A087641.P12311318346276065198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069472 (n + 1)) (A069472 (A178867 (3 * n + 5)).toNat)

end

end A087641.P12311318346276065198

/-!
# A087642: Sequence of squarefree n such that Q(sqrt(n)) has no element with a fully periodical continued fraction of period 1.

The programs for A087642, there is no canonical definition to state claims against.
-/

/-! ## A087642.P7503832909428090173

`record[A007913(A206586(n+1))]`
-/

namespace A087642.P7503832909428090173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A206586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087642.P7503832909428090173

/-! ## A087642.P6548013387528130460

`record[A007947(A206587(n+2))]`
-/

namespace A087642.P6548013387528130460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A206587 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087642.P6548013387528130460

/-! ## A087642.P7423258359774418616

`filter[A206586(n+1), A008966(#)]`
-/

namespace A087642.P7423258359774418616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087642.P7423258359774418616

/-! ## A087642.P8315986677083617874

`filter[A206587(n+2), A008966(#)]`
-/

namespace A087642.P8315986677083617874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206587 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087642.P8315986677083617874

/-! ## A087642.P12334226492544316141

`record[A007947(A206586(n+1)²)]`
-/

namespace A087642.P12334226492544316141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A206586 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087642.P12334226492544316141

/-! ## A087642.P389937103421051974

`∩[A005117(n+1), A206586(n+1)]`
-/

namespace A087642.P389937103421051974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087642.P389937103421051974

/-! ## A087642.P4120962622232682481

`∩[A144338(n+1), A206586(n+1)]`
-/

namespace A087642.P4120962622232682481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087642.P4120962622232682481

/-! ## A087642.P2973009229017206881

`∩[A144338(n+1), A206587(n+1)]`
-/

namespace A087642.P2973009229017206881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087642.P2973009229017206881

/-! ## A087642.P3084294446431142986

`∩[A167207(n+1), A206586(n+1)]`
-/

namespace A087642.P3084294446431142986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087642.P3084294446431142986

/-! ## A087642.P4269459630313901112

`∩[A206586(n+1), A210490(n+1)]`
-/

namespace A087642.P4269459630313901112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087642.P4269459630313901112

/-!
# A087643: Nonsquare positive integers n such that the fundamental unit of quadratic field Q(sqrt(n)) has norm 1.

The programs for A087643, there is no canonical definition to state claims against.
-/

/-! ## A087643.P13065365167352670077

`comp[∪[A172000(n+1), n²]]`
-/

namespace A087643.P13065365167352670077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A087643.P13065365167352670077

/-! ## A087643.P5304109380452739823

`comp[A245226(n+1)-1]+1`
-/

namespace A087643.P5304109380452739823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A087643.P5304109380452739823

/-! ## A087643.P2048744153510467690

`∪[A022544(n+1), ∑[a(n-1)+12]]` with `a(0)=11`
-/

namespace A087643.P2048744153510467690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f3 =>
  f3 (n - 1) + 12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A087643.P2048744153510467690

/-! ## A087643.P15280928518890442157

`comp[A069011(comp[floor((4^n+3)*(ϕ+3))])]`
-/

namespace A087643.P15280928518890442157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n + 3 : ℝ) * (Real.goldenRatio + 3)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A087643.P15280928518890442157

/-! ## A087643.P14837166833608109260

`comp[A001481(comp[n*(3^n+3*(1-2^n))])]`
-/

namespace A087643.P14837166833608109260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ)))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A087643.P14837166833608109260

/-! ## A087643.P8111913043848225213

`comp[A326922(or(n, A326922(n)))]`
-/

namespace A087643.P8111913043848225213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326922 (Int.lor (n : ℤ) (A326922 n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A087643.P8111913043848225213

/-! ## A087643.P8869539904389371985

`∪[A046425(n), comp[A048147(n)]]`
-/

namespace A087643.P8869539904389371985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046425 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A087643.P8869539904389371985

/-! ## A087643.P7365356469917443612

`∪[A046425(n), comp[A069011(n)]]`
-/

namespace A087643.P7365356469917443612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046425 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A087643.P7365356469917443612

/-! ## A087643.P17906118262416800362

`∪[comp[A048147(n)], A097657(n)]`
-/

namespace A087643.P17906118262416800362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A087643.P17906118262416800362

/-! ## A087643.P1514221872686275827

`∪[comp[A048147(n)], A114964(n)]`
-/

namespace A087643.P1514221872686275827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114964 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A087643.P1514221872686275827

/-!
# A087644: Triangle T(n,k) (n >= 2, 1 <= k <= n) read by rows: (1/2) times number of linearly inducible orderings of n points in k-dimensional Euclidean space.

The programs for A087644, there is no canonical definition to state claims against.
-/

/-! ## A087644.P3199652221973963011

`A071223(n+2)/2`
-/

namespace A087644.P3199652221973963011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071223 (n + 2) : ℚ) / 2

end

end A087644.P3199652221973963011

/-! ## A087644.P3292183479488603821

`2^A008683(A151800(n))*A071223(n+2)`
-/

namespace A087644.P3292183479488603821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ) * (A071223 (n + 2) : ℚ)

end

end A087644.P3292183479488603821

/-! ## A087644.P1300075033029287301

`2^A008683(A067889(n+1))*A071223(n+2)`
-/

namespace A087644.P1300075033029287301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A067889 (n + 1)).toNat : ℤ) * (A071223 (n + 2) : ℚ)

end

end A087644.P1300075033029287301

/-! ## A087644.P15615400621046564092

`A014682(A071223(n+2))`
-/

namespace A087644.P15615400621046564092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A071223 (n + 2)).toNat

end

end A087644.P15615400621046564092

/-! ## A087644.P17558453572600995160

`A326139(lcm(2, A071223(n+2)))`
-/

namespace A087644.P17558453572600995160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (Int.lcm 2 (A071223 (n + 2)))

end

end A087644.P17558453572600995160

/-!
# A087645: Third column of A071223.

The programs for A087645, the canonical program `A087645.P8033487295196302795` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087645 has offset 2).

The definition of A087645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087645.P17713053482004489716

`(3*(n+2)^4-10*(n+2)^3+9*(n+2)²-2*(n+2)+24)/12`
-/

namespace A087645.P17713053482004489716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 2) ^ 4 : ℤ) - (10 * (n + 2) ^ 3 : ℤ) + (9 * (n + 2) ^ 2 : ℤ) - (2 * (n + 2) : ℤ) + 24 : ℚ) / 12

end

end A087645.P17713053482004489716

namespace A087645

/-- `(3*(n+2)^4-10*(n+2)^3+9*(n+2)²-2*(n+2)+24)/12` -/
def P17713053482004489716.Spec : Prop :=
  ∀ n, P17713053482004489716.a n = (A087645 (n + 2) : ℚ)

end A087645

/-! ## A087645.P8033487295196302795

`A052149(n+1)+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087645

/-- `A052149(n+1)+2` -/
def P8033487295196302795.Spec : Prop :=
  ∀ n, P8033487295196302795.a n = A087645 (n + 2)

theorem P8033487295196302795.correct : P8033487295196302795.Spec := by
  intro n
  simp only [A087645, Nat.add_sub_cancel]

end A087645

/-! ## A087645.P6302114260022741571

`∑[record[lcm(n-2, (1-n)²)]]`
-/

namespace A087645.P6302114260022741571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2) ((1 - (n : ℤ)) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087645.P6302114260022741571

namespace A087645

/-- `∑[record[lcm(n-2, (1-n)²)]]` -/
def P6302114260022741571.Spec : Prop :=
  ∀ n, (P6302114260022741571.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P10944032250300878472

`lcm(2, ∑[lcm(n, (n+1)²)]+2)`
-/

namespace A087645.P10944032250300878472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A087645.P10944032250300878472

namespace A087645

/-- `lcm(2, ∑[lcm(n, (n+1)²)]+2)` -/
def P10944032250300878472.Spec : Prop :=
  ∀ n, (P10944032250300878472.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P5105060193656863663

`abs(a(n-1)+n*(n+1)²)` with `a(0)=2`
-/

namespace A087645.P5105060193656863663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + n * (n + 1) ^ 2

end

end A087645.P5105060193656863663

namespace A087645

/-- `abs(a(n-1)+n*(n+1)²)` -/
def P5105060193656863663.Spec : Prop :=
  ∀ n, (P5105060193656863663.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P14809026683644951720

`floor(a(n-1)+n*(n+1)²)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A087645.P14809026683644951720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + n * (n + 1) ^ 2

end

end A087645.P14809026683644951720

namespace A087645

/-- `floor(a(n-1)+n*(n+1)²)` -/
def P14809026683644951720.Spec : Prop :=
  ∀ n, (P14809026683644951720.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P17725491751923186338

`ceil(a(n-1)+n*(n+1)²)` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A087645.P17725491751923186338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + n * (n + 1) ^ 2

end

end A087645.P17725491751923186338

namespace A087645

/-- `ceil(a(n-1)+n*(n+1)²)` -/
def P17725491751923186338.Spec : Prop :=
  ∀ n, (P17725491751923186338.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P6306846988094472296

`round(a(n-1)+n*(n+1)²)` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A087645.P6306846988094472296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + n * (n + 1) ^ 2

end

end A087645.P6306846988094472296

namespace A087645

/-- `round(a(n-1)+n*(n+1)²)` -/
def P6306846988094472296.Spec : Prop :=
  ∀ n, (P6306846988094472296.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P13933214763878978366

`2*(∑[(n+1)*C(n+1, 2)]+1)`
-/

namespace A087645.P13933214763878978366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A087645.P13933214763878978366

namespace A087645

/-- `2*(∑[(n+1)*C(n+1, 2)]+1)` -/
def P13933214763878978366.Spec : Prop :=
  ∀ n, (P13933214763878978366.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P615327437592277308

`∑[n*(n+1)^gcd(2, a(n-1))]` with `a(0)=2`
-/

namespace A087645.P615327437592277308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  n * (n + 1) ^ Nat.gcd 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087645.P615327437592277308

namespace A087645

/-- `∑[n*(n+1)^gcd(2, a(n-1))]` -/
def P615327437592277308.Spec : Prop :=
  ∀ n, (P615327437592277308.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P4065359956102009022

`n*((n+1)²+a(n-1)/n)` with `a(0)=2`
-/

namespace A087645.P4065359956102009022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℚ) * (((n + 1) ^ 2 : ℚ) + a (n - 1) / (n : ℚ))

end

end A087645.P4065359956102009022

namespace A087645

/-- `n*((n+1)²+a(n-1)/n)` -/
def P4065359956102009022.Spec : Prop :=
  ∀ n, P4065359956102009022.a n = (A087645 (n + 2) : ℚ)

end A087645

/-! ## A087645.P13427876101045897446

`∑[(n+1)*∑[a(n-1)+2]]` with `a(0)=2, a(1)=0, a(2)=4`
-/

namespace A087645.P13427876101045897446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087645.P13427876101045897446

namespace A087645

/-- `∑[(n+1)*∑[a(n-1)+2]]` -/
def P13427876101045897446.Spec : Prop :=
  ∀ n, (P13427876101045897446.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P2853461297034839705

`∑[lcm(n+1, 1-∑[2*n])+n+1]`
-/

namespace A087645.P2853461297034839705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087645.P2853461297034839705

namespace A087645

/-- `∑[lcm(n+1, 1-∑[2*n])+n+1]` -/
def P2853461297034839705.Spec : Prop :=
  ∀ n, (P2853461297034839705.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P8121842121229186274

`floor(floor(a(n-1))+n/(n+1)^(-2))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A087645.P8121842121229186274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)⌋

end

end A087645.P8121842121229186274

namespace A087645

/-- `floor(floor(a(n-1))+n/(n+1)^(-2))` -/
def P8121842121229186274.Spec : Prop :=
  ∀ n, P8121842121229186274.a n = A087645 (n + 2)

end A087645

/-! ## A087645.P11242302114865214430

`floor(a(n-1)+(n+2)*n*n+n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A087645.P11242302114865214430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n + 2) * (n * n) + n

end

end A087645.P11242302114865214430

namespace A087645

/-- `floor(a(n-1)+(n+2)*n*n+n)` -/
def P11242302114865214430.Spec : Prop :=
  ∀ n, (P11242302114865214430.a n : ℤ) = A087645 (n + 2)

end A087645

/-! ## A087645.P2435656108145392008

`floor((n+1)^3+a(n-1)-(n+1)²)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A087645.P2435656108145392008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((n + 1) ^ 3 : ℤ) + (a (n - 1) - ((n + 1) ^ 2 : ℤ))

end

end A087645.P2435656108145392008

namespace A087645

/-- `floor((n+1)^3+a(n-1)-(n+1)²)` -/
def P2435656108145392008.Spec : Prop :=
  ∀ n, P2435656108145392008.a n = A087645 (n + 2)

end A087645

/-! ## A087645.P410061105274093144

`(n+1)*(a(n-1)/(n+1)+n*(n+1))` with `a(0)=2`
-/

namespace A087645.P410061105274093144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) / (n + 1 : ℚ) + (n * (n + 1) : ℚ))

end

end A087645.P410061105274093144

namespace A087645

/-- `(n+1)*(a(n-1)/(n+1)+n*(n+1))` -/
def P410061105274093144.Spec : Prop :=
  ∀ n, P410061105274093144.a n = (A087645 (n + 2) : ℚ)

end A087645

/-! ## A087645.P2081633687514732660

`2*(∑[A006002(n)]+1)`
-/

namespace A087645.P2081633687514732660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A087645.P2081633687514732660

namespace A087645

/-- `2*(∑[A006002(n)]+1)` -/
def P2081633687514732660.Spec : Prop :=
  ∀ n, P2081633687514732660.a n = A087645 (n + 2)

end A087645

/-! ## A087645.P3256016443757931938

`2*(∑[(n+1)*A000217(n)]+1)`
-/

namespace A087645.P3256016443757931938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A087645.P3256016443757931938

namespace A087645

/-- `2*(∑[(n+1)*A000217(n)]+1)` -/
def P3256016443757931938.Spec : Prop :=
  ∀ n, P3256016443757931938.a n = A087645 (n + 2)

end A087645

/-! ## A087645.P8088391998696020431

`∑[abs((n+1)/2*A046092(n)-1)+1]`
-/

namespace A087645.P8088391998696020431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℚ) / 2 * (A046092 n : ℚ) - 1| + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087645.P8088391998696020431

namespace A087645

/-- `∑[abs((n+1)/2*A046092(n)-1)+1]` -/
def P8088391998696020431.Spec : Prop :=
  ∀ n, P8088391998696020431.a n = (A087645 (n + 2) : ℚ)

end A087645

/-!
# A087646: a(n) is the first term of the first run of exactly n non-perfect-powers.

The programs for A087646, there is no canonical definition to state claims against.
-/

/-! ## A087646.P10263086280926833475

`A325616(A339594(n+4))+A023056(n+2)`
-/

namespace A087646.P10263086280926833475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325616 (A339594 (n + 4)).toNat + A023056 (n + 2)

end

end A087646.P10263086280926833475

/-!
# A087648: a(n) = (1/2)*(Bell(n+2)+Bell(n+1)-Bell(n)).

The programs for A087648, there is no canonical definition to state claims against.
-/

/-! ## A087648.P6766962594288103141

`A120057(∑[n+1])`
-/

namespace A087648.P6766962594288103141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120057 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087648.P6766962594288103141

/-! ## A087648.P3236710537734226985

`A346517(∑[n+2]+2)`
-/

namespace A087648.P3236710537734226985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A087648.P3236710537734226985

/-! ## A087648.P17943533483230426056

`A346520(∑[n+2]+3)`
-/

namespace A087648.P17943533483230426056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346520 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A087648.P17943533483230426056

/-! ## A087648.P3985720592504255430

`A005493(n)-A003128(n)`
-/

namespace A087648.P3985720592504255430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A003128 n

end

end A087648.P3985720592504255430

/-! ## A087648.P15713858181367746786

`A123346(∑[n])+A059606(n)`
-/

namespace A087648.P15713858181367746786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (∑ j ∈ Finset.range (n + 1), f1 j) + A059606 n

end

end A087648.P15713858181367746786

/-! ## A087648.P401045107495137541

`∑[A011965(n)]-A003128(n)`
-/

namespace A087648.P401045107495137541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003128 n

end

end A087648.P401045107495137541

/-! ## A087648.P8813439279609083382

`record[gcd(A124323(n), A346517(n))]`
-/

namespace A087648.P8813439279609083382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124323 n) (A346517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087648.P8813439279609083382

/-! ## A087648.P3027327083167640772

`A059606(n)+A000110(n+1)`
-/

namespace A087648.P3027327083167640772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059606 n + A000110 (n + 1)

end

end A087648.P3027327083167640772

/-! ## A087648.P4000542366273376494

`A035098(n+2)-A000110(n)`
-/

namespace A087648.P4000542366273376494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035098 (n + 2) - A000110 n

end

end A087648.P4000542366273376494

/-! ## A087648.P1246393261397935706

`A000110(n+2)-A087649(n)`
-/

namespace A087648.P1246393261397935706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) - A087649 n

end

end A087648.P1246393261397935706

/-!
# A087649: a(n) = (1/2)*(Bell(n+2)-Bell(n+1)+Bell(n)).

The programs for A087649, there is no canonical definition to state claims against.
-/

/-! ## A087649.P12880883370582401977

`A056861(∑[n+1]+1)`
-/

namespace A087649.P12880883370582401977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056861 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A087649.P12880883370582401977

/-! ## A087649.P5463791119773641693

`A059606(n)+A000110(n)`
-/

namespace A087649.P5463791119773641693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059606 n + A000110 n

end

end A087649.P5463791119773641693

/-! ## A087649.P7976330640257503280

`A011965(n)-A003128(n)`
-/

namespace A087649.P7976330640257503280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - A003128 n

end

end A087649.P7976330640257503280

/-! ## A087649.P7899460703421045335

`A005493(n)-A059606(n)`
-/

namespace A087649.P7899460703421045335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A059606 n

end

end A087649.P7899460703421045335

/-! ## A087649.P4377398474362844017

`A059606(n)+abs(A292935(n))`
-/

namespace A087649.P4377398474362844017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059606 n + |A292935 n|

end

end A087649.P4377398474362844017

/-! ## A087649.P16558826563613668289

`A087648(n)-Δ[A000110(n)]`
-/

namespace A087649.P16558826563613668289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087648 n - (f1 (n + 1) - f1 n)

end

end A087649.P16558826563613668289

/-! ## A087649.P1864932096621359163

`A003128(n)+A000110(n+1)`
-/

namespace A087649.P1864932096621359163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003128 n + A000110 (n + 1)

end

end A087649.P1864932096621359163

/-! ## A087649.P18087136706498471916

`A000110(n+2)-A087648(n)`
-/

namespace A087649.P18087136706498471916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) - A087648 n

end

end A087649.P18087136706498471916

/-! ## A087649.P15756055603726253713

`(A005493(n)+A000110(n))/2`
-/

namespace A087649.P15756055603726253713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005493 n + A000110 n : ℚ) / 2

end

end A087649.P15756055603726253713

/-! ## A087649.P15174778441031835355

`A011965(n)-A226506(n)/2`
-/

namespace A087649.P15174778441031835355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011965 n : ℚ) - (A226506 n : ℚ) / 2

end

end A087649.P15174778441031835355

/-!
# A087650: a(n) = Sum_{k=0..n} (-1)^(n-k)*Bell(k).

The programs for A087650, there is no canonical definition to state claims against.
-/

/-! ## A087650.P6636360489623873287

`A000296(n+1)+(-1)^n`
-/

namespace A087650.P6636360489623873287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 1) + (-1) ^ n

end

end A087650.P6636360489623873287

/-! ## A087650.P9834432711464138382

`abs(∑[A292935(n)])`
-/

namespace A087650.P9834432711464138382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A087650.P9834432711464138382

/-! ## A087650.P9499742828957363308

`A000110(n)-a(n-1)` with `a(0)=1`
-/

namespace A087650.P9499742828957363308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 n - a (n - 1)

end

end A087650.P9499742828957363308

/-! ## A087650.P14192411354155588990

`A011971(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A087650.P14192411354155588990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A087650.P14192411354155588990

/-! ## A087650.P15126786427400417628

`A095149(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A087650.P15126786427400417628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A087650.P15126786427400417628

/-! ## A087650.P12237656897796096603

`A108087(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A087650.P12237656897796096603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A087650.P12237656897796096603

/-! ## A087650.P7631414162968095593

`A123081(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A087650.P7631414162968095593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123081 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A087650.P7631414162968095593

/-! ## A087650.P7923272874880374373

`A186020(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A087650.P7923272874880374373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A087650.P7923272874880374373

/-! ## A087650.P2636208980158506950

`A212431(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A087650.P2636208980158506950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212431 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A087650.P2636208980158506950

/-! ## A087650.P5494209259407116734

`A346426(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A087650.P5494209259407116734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346426 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A087650.P5494209259407116734

/-!
# A087651: Sequence of primorials P# (cf. A002110) such that j*P# has twin prime neighbors for some j with 0 < j < prime following P.

The programs for A087651, there is no canonical definition to state claims against.
-/

/-! ## A087651.P10823421531695176435

`lcm(a(n-1), A087731(n))` with `a(0)=2`
-/

namespace A087651.P10823421531695176435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A087731 n)

end

end A087651.P10823421531695176435

/-! ## A087651.P945418384493182237

`A034386(A087731(n))`
-/

namespace A087651.P945418384493182237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A087731 n).toNat

end

end A087651.P945418384493182237

/-! ## A087651.P8284929411327677523

`A331188(A087731(n)²)`
-/

namespace A087651.P8284929411327677523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A087731 n ^ 2).toNat

end

end A087651.P8284929411327677523

/-! ## A087651.P10358215034953824793

`A108951(p?[A087731(n)])`
-/

namespace A087651.P10358215034953824793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A087651.P10358215034953824793

/-! ## A087651.P14060681061859123541

`A328769(p?[A087731(n)])`
-/

namespace A087651.P14060681061859123541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328769 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A087651.P14060681061859123541

/-!
# A087652: Product of the nonprime divisors of n.

The programs for A087652, the canonical program `A087652.P15006884797631348990` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087652 has offset 1).

The definition of A087652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087652.P15006884797631348990

`A007955(n+1)/A007947(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087652

/-- `A007955(n+1)/A007947(n+1)` -/
def P15006884797631348990.Spec : Prop :=
  ∀ n, P15006884797631348990.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P1875183398568656902

`∏{d}[n+1, #]/∏{p}[n+1, #]`
-/

namespace A087652.P1875183398568656902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A087652.P1875183398568656902

namespace A087652

/-- `∏{d}[n+1, #]/∏{p}[n+1, #]` -/
def P1875183398568656902.Spec : Prop :=
  ∀ n, P1875183398568656902.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P7332193886194284641

`∏{d}[n+1, A005451(#)]`
-/

namespace A087652.P7332193886194284641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A005451 d

end

end A087652.P7332193886194284641

namespace A087652

/-- `∏{d}[n+1, A005451(#)]` -/
def P7332193886194284641.Spec : Prop :=
  ∀ n, P7332193886194284641.a n = A087652 (n + 1)

end A087652

/-! ## A087652.P3920699459303752857

`A157721(n+1)+A080339(n+1)`
-/

namespace A087652.P3920699459303752857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157721 (n + 1) + A080339 (n + 1)

end

end A087652.P3920699459303752857

namespace A087652

/-- `A157721(n+1)+A080339(n+1)` -/
def P3920699459303752857.Spec : Prop :=
  ∀ n, P3920699459303752857.a n = A087652 (n + 1)

end A087652

/-! ## A087652.P1408234028867669296

`A003557(n+1)*A007956(n+1)`
-/

namespace A087652.P1408234028867669296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A007956 (n + 1)

end

end A087652.P1408234028867669296

namespace A087652

/-- `A003557(n+1)*A007956(n+1)` -/
def P1408234028867669296.Spec : Prop :=
  ∀ n, P1408234028867669296.a n = A087652 (n + 1)

end A087652

/-! ## A087652.P2785033996512577558

`A178649(n+1)*A290479(n+1)`
-/

namespace A087652.P2785033996512577558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178649 (n + 1) * A290479 (n + 1)

end

end A087652.P2785033996512577558

namespace A087652

/-- `A178649(n+1)*A290479(n+1)` -/
def P2785033996512577558.Spec : Prop :=
  ∀ n, P2785033996512577558.a n = A087652 (n + 1)

end A087652

/-! ## A087652.P2709183180067212343

`A338576(n+1)/A064549(n+1)`
-/

namespace A087652.P2709183180067212343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338576 (n + 1) : ℚ) / (A064549 (n + 1) : ℚ)

end

end A087652.P2709183180067212343

namespace A087652

/-- `A338576(n+1)/A064549(n+1)` -/
def P2709183180067212343.Spec : Prop :=
  ∀ n, P2709183180067212343.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P364868396965936284

`A394346(n+1)/A304409(n+1)`
-/

namespace A087652.P364868396965936284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394346 (n + 1) : ℚ) / (A304409 (n + 1) : ℚ)

end

end A087652.P364868396965936284

namespace A087652

/-- `A394346(n+1)/A304409(n+1)` -/
def P364868396965936284.Spec : Prop :=
  ∀ n, P364868396965936284.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P16976421604528604473

`gcd(A157721(n+1), A267133(n+1))`
-/

namespace A087652.P16976421604528604473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157721 (n + 1)) (A267133 (n + 1))

end

end A087652.P16976421604528604473

namespace A087652

/-- `gcd(A157721(n+1), A267133(n+1))` -/
def P16976421604528604473.Spec : Prop :=
  ∀ n, (P16976421604528604473.a n : ℤ) = A087652 (n + 1)

end A087652

/-! ## A087652.P11163414787418839927

`A003557(n+1)*A007955(n+1)/(n+1)`
-/

namespace A087652.P11163414787418839927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A007955 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A087652.P11163414787418839927

namespace A087652

/-- `A003557(n+1)*A007955(n+1)/(n+1)` -/
def P11163414787418839927.Spec : Prop :=
  ∀ n, P11163414787418839927.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P2330448969868965901

`A178649(n+1)*A290480(A007947(n+1))`
-/

namespace A087652.P2330448969868965901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178649 (n + 1) * A290480 (A007947 (n + 1)).toNat

end

end A087652.P2330448969868965901

namespace A087652

/-- `A178649(n+1)*A290480(A007947(n+1))` -/
def P2330448969868965901.Spec : Prop :=
  ∀ n, P2330448969868965901.a n = A087652 (n + 1)

end A087652

/-! ## A087652.P9063348424318429539

`A007955(n+1)/A015052(A015052(n+1))`
-/

namespace A087652.P9063348424318429539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A087652.P9063348424318429539

namespace A087652

/-- `A007955(n+1)/A015052(A015052(n+1))` -/
def P9063348424318429539.Spec : Prop :=
  ∀ n, P9063348424318429539.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P6778472175585209971

`A007955(n+1)/A015053(A015053(n+1))`
-/

namespace A087652.P6778472175585209971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A015053 (A015053 (n + 1)).toNat : ℚ)

end

end A087652.P6778472175585209971

namespace A087652

/-- `A007955(n+1)/A015053(A015053(n+1))` -/
def P6778472175585209971.Spec : Prop :=
  ∀ n, P6778472175585209971.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P8000124468281621166

`A007955(n+1)/A053166(A053166(n+1))`
-/

namespace A087652.P8000124468281621166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A053166 (A053166 (n + 1)).toNat : ℚ)

end

end A087652.P8000124468281621166

namespace A087652

/-- `A007955(n+1)/A053166(A053166(n+1))` -/
def P8000124468281621166.Spec : Prop :=
  ∀ n, P8000124468281621166.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P357731486338140587

`A007955(n+1)/(A000203(n+1)-A326142(n+1))`
-/

namespace A087652.P357731486338140587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A000203 (n + 1) - A326142 (n + 1) : ℚ)

end

end A087652.P357731486338140587

namespace A087652

/-- `A007955(n+1)/(A000203(n+1)-A326142(n+1))` -/
def P357731486338140587.Spec : Prop :=
  ∀ n, P357731486338140587.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P4150896836508901441

`A078599(n+1)/A007947(n+1)*A178649(n+1)`
-/

namespace A087652.P4150896836508901441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078599 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A178649 (n + 1) : ℚ)

end

end A087652.P4150896836508901441

namespace A087652

/-- `A078599(n+1)/A007947(n+1)*A178649(n+1)` -/
def P4150896836508901441.Spec : Prop :=
  ∀ n, P4150896836508901441.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P9839695278937315295

`A007955(n+1)/A078599(n+1)*A290479(n+1)`
-/

namespace A087652.P9839695278937315295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A078599 (n + 1) : ℚ) * (A290479 (n + 1) : ℚ)

end

end A087652.P9839695278937315295

namespace A087652

/-- `A007955(n+1)/A078599(n+1)*A290479(n+1)` -/
def P9839695278937315295.Spec : Prop :=
  ∀ n, P9839695278937315295.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P12809947591329167739

`A007955(n+1)*A064549(n+1)/A064549(A064549(n+1))`
-/

namespace A087652.P12809947591329167739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) * A064549 (n + 1) : ℚ) / (A064549 (A064549 (n + 1)).toNat : ℚ)

end

end A087652.P12809947591329167739

namespace A087652

/-- `A007955(n+1)*A064549(n+1)/A064549(A064549(n+1))` -/
def P12809947591329167739.Spec : Prop :=
  ∀ n, P12809947591329167739.a n = (A087652 (n + 1) : ℚ)

end A087652

/-! ## A087652.P2432436133021510758

`A007955(n+1)/A003557(A064549(n+1)/A003557(n+1))`
-/

namespace A087652.P2432436133021510758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A003557 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ))).toNat : ℚ)

end

end A087652.P2432436133021510758

namespace A087652

/-- `A007955(n+1)/A003557(A064549(n+1)/A003557(n+1))` -/
def P2432436133021510758.Spec : Prop :=
  ∀ n, P2432436133021510758.a n = (A087652 (n + 1) : ℚ)

end A087652

/-!
# A087653: Maximum difference between exponents in n-th cyclotomic polynomial.

The programs for A087653, the canonical program `A087653.P13584867209953477708` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087653 has offset 1).

The definition of A087653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087653.P9892022810933464329

`A000010(n+1)/A070777(A326578(n+1))`
-/

namespace A087653.P9892022810933464329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A070777 (A326578 (n + 1)).toNat : ℚ)

end

end A087653.P9892022810933464329

namespace A087653

/-- `A000010(n+1)/A070777(A326578(n+1))` -/
def P9892022810933464329.Spec : Prop :=
  ∀ n, P9892022810933464329.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P13584867209953477708

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A070777((n+1)*∏{p}[n+1, #])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A087653

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A070777((n+1)*∏{p}[n+1, #])` -/
def P13584867209953477708.Spec : Prop :=
  ∀ n, P13584867209953477708.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P2574396869968997879

`A000010(n+1)/A070777((n+1)*∏{p}[n+1, #])`
-/

namespace A087653.P2574396869968997879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A070777 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) : ℚ)

end

end A087653.P2574396869968997879

namespace A087653

/-- `A000010(n+1)/A070777((n+1)*∏{p}[n+1, #])` -/
def P2574396869968997879.Spec : Prop :=
  ∀ n, P2574396869968997879.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P11119624629390714759

`A000010(n+1)/A070777(A064549(n+1))`
-/

namespace A087653.P11119624629390714759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A070777 (A064549 (n + 1)).toNat : ℚ)

end

end A087653.P11119624629390714759

namespace A087653

/-- `A000010(n+1)/A070777(A064549(n+1))` -/
def P11119624629390714759.Spec : Prop :=
  ∀ n, P11119624629390714759.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P12297422745539066764

`A000010(n+1)/A070777(A065642(n+1))`
-/

namespace A087653.P12297422745539066764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A070777 (A065642 (n + 1)).toNat : ℚ)

end

end A087653.P12297422745539066764

namespace A087653

/-- `A000010(n+1)/A070777(A065642(n+1))` -/
def P12297422745539066764.Spec : Prop :=
  ∀ n, P12297422745539066764.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P8215328552010393474

`A000010(n+1)/A070777(A066048(n+1))`
-/

namespace A087653.P8215328552010393474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A070777 (A066048 (n + 1)).toNat : ℚ)

end

end A087653.P8215328552010393474

namespace A087653

/-- `A000010(n+1)/A070777(A066048(n+1))` -/
def P8215328552010393474.Spec : Prop :=
  ∀ n, P8215328552010393474.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P16571267793453280197

`A002618(n+1)/A171462(A129598(n+1))`
-/

namespace A087653.P16571267793453280197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A171462 (A129598 (n + 1)).toNat : ℚ)

end

end A087653.P16571267793453280197

namespace A087653

/-- `A002618(n+1)/A171462(A129598(n+1))` -/
def P16571267793453280197.Spec : Prop :=
  ∀ n, P16571267793453280197.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P7522389427340956512

`A000010(n+1)/A049559(A006530(n+1)²)`
-/

namespace A087653.P7522389427340956512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A049559 (A006530 (n + 1) ^ 2).toNat : ℚ)

end

end A087653.P7522389427340956512

namespace A087653

/-- `A000010(n+1)/A049559(A006530(n+1)²)` -/
def P7522389427340956512.Spec : Prop :=
  ∀ n, P7522389427340956512.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P3817947498268998192

`A000010(n+1)/A070777(A006530(n+1)²)`
-/

namespace A087653.P3817947498268998192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A070777 (A006530 (n + 1) ^ 2).toNat : ℚ)

end

end A087653.P3817947498268998192

namespace A087653

/-- `A000010(n+1)/A070777(A006530(n+1)²)` -/
def P3817947498268998192.Spec : Prop :=
  ∀ n, P3817947498268998192.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P10737685545085728544

`A000010(n+1)/A000010(A085392((n+1)²))`
-/

namespace A087653.P10737685545085728544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (A085392 ((n + 1) ^ 2)).toNat : ℚ)

end

end A087653.P10737685545085728544

namespace A087653

/-- `A000010(n+1)/A000010(A085392((n+1)²))` -/
def P10737685545085728544.Spec : Prop :=
  ∀ n, P10737685545085728544.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P6903320602406906469

`A000010(n+1)/A000010(A087039((n+1)²))`
-/

namespace A087653.P6903320602406906469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (A087039 ((n + 1) ^ 2)).toNat : ℚ)

end

end A087653.P6903320602406906469

namespace A087653

/-- `A000010(n+1)/A000010(A087039((n+1)²))` -/
def P6903320602406906469.Spec : Prop :=
  ∀ n, P6903320602406906469.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P6276689361298667750

`A057828((n+1)²)/A340368(A006530(n+1))`
-/

namespace A087653.P6276689361298667750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057828 ((n + 1) ^ 2) : ℚ) / (A340368 (A006530 (n + 1)).toNat : ℚ)

end

end A087653.P6276689361298667750

namespace A087653

/-- `A057828((n+1)²)/A340368(A006530(n+1))` -/
def P6276689361298667750.Spec : Prop :=
  ∀ n, P6276689361298667750.a n = (A087653 (n + 1) : ℚ)

end A087653

/-! ## A087653.P16920586628193385922

`A000010(A293810(n+1))*A062378(A064549(n+1))`
-/

namespace A087653.P16920586628193385922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A293810 (n + 1)).toNat * A062378 (A064549 (n + 1)).toNat

end

end A087653.P16920586628193385922

namespace A087653

/-- `A000010(A293810(n+1))*A062378(A064549(n+1))` -/
def P16920586628193385922.Spec : Prop :=
  ∀ n, P16920586628193385922.a n = A087653 (n + 1)

end A087653

/-! ## A087653.P540643914288531615

`A000010(n+1)/A000010(A230775(A006530(n+1)²))`
-/

namespace A087653.P540643914288531615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (A230775 (A006530 (n + 1) ^ 2).toNat).toNat : ℚ)

end

end A087653.P540643914288531615

namespace A087653

/-- `A000010(n+1)/A000010(A230775(A006530(n+1)²))` -/
def P540643914288531615.Spec : Prop :=
  ∀ n, P540643914288531615.a n = (A087653 (n + 1) : ℚ)

end A087653

/-!
# A087656: Let f be defined on the rationals by f(p/q) =(p+1)/(q+1)=p_{1}/q_{1} where (p_{1},q_{1})=1. Let f^k(p/q)=p_{k}/q_{k} where (p_{k},q_{k})=1. Sequence gives least k such that p_{k}-q_{k} = 1 starting at n.

The programs for A087656, there is no canonical definition to state claims against.
-/

/-! ## A087656.P4135718105656929009

`A059975(n+2)`
-/

namespace A087656.P4135718105656929009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 2)

end

end A087656.P4135718105656929009

/-! ## A087656.P12341037407281586481

`A392781((n+2)²)`
-/

namespace A087656.P12341037407281586481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392781 ((n + 2) ^ 2)

end

end A087656.P12341037407281586481

/-! ## A087656.P16719781857059517857

`A275314(n+2)-1`
-/

namespace A087656.P16719781857059517857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (n + 2) - 1

end

end A087656.P16719781857059517857

/-! ## A087656.P12908954193530280652

`n+2-A341865(n+2)`
-/

namespace A087656.P12908954193530280652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A341865 (n + 2)

end

end A087656.P12908954193530280652

/-! ## A087656.P266312125882851216

`A397106(n+2)-(n+3)`
-/

namespace A087656.P266312125882851216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397106 (n + 2) - (n + 3 : ℤ)

end

end A087656.P266312125882851216

/-! ## A087656.P18413109835775717612

`∑{d}[n+2, A014963(#)-1]`
-/

namespace A087656.P18413109835775717612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A014963 d - 1)

end

end A087656.P18413109835775717612

/-! ## A087656.P10285614809851433178

`∑[Δ[A275314(n+1)]%73]`
-/

namespace A087656.P10285614809851433178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 73

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087656.P10285614809851433178

/-! ## A087656.P7129964925400809693

`A056239(A064554(n+2))`
-/

namespace A087656.P7129964925400809693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064554 (n + 2)).toNat

end

end A087656.P7129964925400809693

/-! ## A087656.P8222103830683126567

`A023443(A275314(n+2))`
-/

namespace A087656.P8222103830683126567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275314 (n + 2)).toNat

end

end A087656.P8222103830683126567

/-! ## A087656.P870370858696974325

`A056239(A290641(n+2))`
-/

namespace A087656.P870370858696974325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A290641 (n + 2)).toNat

end

end A087656.P870370858696974325

/-!
# A087658: Repeated terms in A087657 (a(n) = |prime(n)-a(n-1)| + |prime(n)-a(n-2)| + |prime(n)-a(n-3)| ).

The programs for A087658, there is no canonical definition to state claims against.
-/

/-! ## A087658.P652693999348699280

`A393024(A038522(n+1))`
-/

namespace A087658.P652693999348699280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393024 (A038522 (n + 1)).toNat

end

end A087658.P652693999348699280

/-! ## A087658.P8680140414049841311

`A002034(C(A003627(3*n+1), 2))`
-/

namespace A087658.P8680140414049841311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Nat.choose (A003627 (3 * n + 1)).toNat 2)

end

end A087658.P8680140414049841311

/-!
# A087663: Indices of records in A087666.

The programs for A087663, there is no canonical definition to state claims against.
-/

/-! ## A087663.P3797674107172600739

`A087710(A086336(n+1))`
-/

namespace A087663.P3797674107172600739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087710 (A086336 (n + 1)).toNat

end

end A087663.P3797674107172600739

/-! ## A087663.P13210484063283973072

`A306400(A000272(n+1))+A134588(n+1)`
-/

namespace A087663.P13210484063283973072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306400 (A000272 (n + 1)).toNat + A134588 (n + 1)

end

end A087663.P13210484063283973072

/-!
# A087668: Indices of records in A087664.

The programs for A087668, there is no canonical definition to state claims against.
-/

/-! ## A087668.P14255166137982370340

`A112656(∑[A111241(3*n+4)])`
-/

namespace A087668.P14255166137982370340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111241 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087668.P14255166137982370340

/-!
# A087674: Value of the n-th Eulerian polynomial (cf. A008292) evaluated at x=-2.

The programs for A087674, there is no canonical definition to state claims against.
-/

/-! ## A087674.P15733012528438229202

`(-1)^n*A212846(n)`
-/

namespace A087674.P15733012528438229202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A212846 n

end

end A087674.P15733012528438229202

/-! ## A087674.P15005282718644425704

`A212846(n)/A062157(n+1)`
-/

namespace A087674.P15005282718644425704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212846 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A087674.P15005282718644425704

/-! ## A087674.P3343581700298240377

`A212846(n)/A165326(xor(1, n+2)²)`
-/

namespace A087674.P3343581700298240377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212846 n : ℚ) / (A165326 (Nat.xor 1 (n + 2) ^ 2) : ℚ)

end

end A087674.P3343581700298240377

/-! ## A087674.P16047888523335568405

`A212846(n)/A056594(A016957(n))`
-/

namespace A087674.P16047888523335568405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212846 n : ℚ) / (A056594 (A016957 n).toNat : ℚ)

end

end A087674.P16047888523335568405

/-! ## A087674.P12986780012715967326

`A212846(n)/A033999(∑[A062157(n)])`
-/

namespace A087674.P12986780012715967326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212846 n : ℚ) / (A033999 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A087674.P12986780012715967326

/-! ## A087674.P16231559919926439563

`A212846(n)/A212846(∑[A062157(n)]²)`
-/

namespace A087674.P16231559919926439563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212846 n : ℚ) / (A212846 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat : ℚ)

end

end A087674.P16231559919926439563

/-!
# A087678: Numbers n such that n + 9 and n - 9 are both prime.

The programs for A087678, there is no canonical definition to state claims against.
-/

/-! ## A087678.P6761014616180306533

`2*A088769(n+1)`
-/

namespace A087678.P6761014616180306533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088769 (n + 1)

end

end A087678.P6761014616180306533

/-! ## A087678.P5390841918059002939

`A153418(n+1)+9`
-/

namespace A087678.P5390841918059002939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1) + 9

end

end A087678.P5390841918059002939

/-! ## A087678.P670156004326693313

`A088769(A000027(n+1))+A088769(n+1)`
-/

namespace A087678.P670156004326693313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088769 (A000027 (n + 1)).toNat + A088769 (n + 1)

end

end A087678.P670156004326693313

/-! ## A087678.P7934557295022863785

`∑{d}[A088769(n+1), A000010(#)+A000010(#)]`
-/

namespace A087678.P7934557295022863785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d + A000010 d)

end

end A087678.P7934557295022863785

/-! ## A087678.P12673672690195266761

`2*∩[A097069(n+1), A155722(n+1)]`
-/

namespace A087678.P12673672690195266761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087678.P12673672690195266761

/-! ## A087678.P13958087097792033818

`p?[A000040(n+1)-18]+9`
-/

namespace A087678.P13958087097792033818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 9

end

end A087678.P13958087097792033818

/-! ## A087678.P3350827824858122746

`∩[A088967(n+1), A140353(n+1)]`
-/

namespace A087678.P3350827824858122746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087678.P3350827824858122746

/-! ## A087678.P6536152957877738892

`A005408(A088769(n+1)-1)+1`
-/

namespace A087678.P6536152957877738892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A088769 (n + 1) - 1).toNat + 1

end

end A087678.P6536152957877738892

/-! ## A087678.P2011700168992246983

`A004277(A088769(n+1))`
-/

namespace A087678.P2011700168992246983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088769 (n + 1)).toNat

end

end A087678.P2011700168992246983

/-! ## A087678.P10815273183981098629

`A156328(2*n+1)+9`
-/

namespace A087678.P10815273183981098629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1) + 9

end

end A087678.P10815273183981098629

/-! ## A087678.P17931572278067712517

`A020723(A153418(n+1))`
-/

namespace A087678.P17931572278067712517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A153418 (n + 1)).toNat

end

end A087678.P17931572278067712517

/-!
# A087679: Numbers k such that both k+2 and k-2 are prime.

The programs for A087679, there is no canonical definition to state claims against.
-/

/-! ## A087679.P6244915206431670406

`A046132(n+1)-2`
-/

namespace A087679.P6244915206431670406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) - 2

end

end A087679.P6244915206431670406

/-! ## A087679.P7665535751622122470

`A088762(n+1)*2+1`
-/

namespace A087679.P7665535751622122470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088762 (n + 1) * 2 + 1

end

end A087679.P7665535751622122470

/-! ## A087679.P13743545086202972244

`A015913(n+1)+2`
-/

namespace A087679.P13743545086202972244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1) + 2

end

end A087679.P13743545086202972244

/-! ## A087679.P1021783783351607027

`ceil(sqrt(A143206(n+1)))`
-/

namespace A087679.P1021783783351607027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A143206 (n + 1) : ℝ)⌉

end

end A087679.P1021783783351607027

/-! ## A087679.P2932408517352593510

`2*A047847(n+1)+3`
-/

namespace A087679.P2932408517352593510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047847 (n + 1) + 3

end

end A087679.P2932408517352593510

/-! ## A087679.P8851612143700219732

`A165986(n+1)/2+2`
-/

namespace A087679.P8851612143700219732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 1) : ℚ) / 2 + 2

end

end A087679.P8851612143700219732

/-! ## A087679.P11850115347930355677

`A053320(n)+a(n-1)` with `a(0)=5`
-/

namespace A087679.P11850115347930355677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A053320 n + a (n - 1)

end

end A087679.P11850115347930355677

/-! ## A087679.P2773618629854881188

`A029708(n+1)-A053320(n+1)`
-/

namespace A087679.P2773618629854881188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1) - A053320 (n + 1)

end

end A087679.P2773618629854881188

/-! ## A087679.P16880830756033231373

`A172238(n+2)+2`
-/

namespace A087679.P16880830756033231373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 2) + 2

end

end A087679.P16880830756033231373

/-! ## A087679.P5811816732988089118

`A067830(n+2)-2`
-/

namespace A087679.P5811816732988089118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 2) - 2

end

end A087679.P5811816732988089118

/-! ## A087679.P3947838200677442217

`p?[A056772(n+1)]+2`
-/

namespace A087679.P3947838200677442217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A087679.P3947838200677442217

/-! ## A087679.P4183602052230136101

`A111980(A004277(n))-2`
-/

namespace A087679.P4183602052230136101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (A004277 n).toNat - 2

end

end A087679.P4183602052230136101

/-! ## A087679.P15285332321054505898

`A111980(A004275(n+1))-2`
-/

namespace A087679.P15285332321054505898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (A004275 (n + 1)).toNat - 2

end

end A087679.P15285332321054505898

/-! ## A087679.P11699722834329438649

`A072541(Δ[n²])+1`
-/

namespace A087679.P11699722834329438649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A087679.P11699722834329438649

/-! ## A087679.P13917326932314679532

`A094343(Δ[n²])+2`
-/

namespace A087679.P13917326932314679532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A087679.P13917326932314679532

/-! ## A087679.P11459394372170922853

`∑{p}[A165986(n+1), #]`
-/

namespace A087679.P11459394372170922853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A087679.P11459394372170922853

/-! ## A087679.P9232893382349514945

`p?[A172367(n+1)]+2`
-/

namespace A087679.P9232893382349514945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A087679.P9232893382349514945

/-! ## A087679.P2148148440534820075

`p?[A175221(n+1)]-2`
-/

namespace A087679.P2148148440534820075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A087679.P2148148440534820075

/-! ## A087679.P15810700040833256657

`p?[A086304(n+1)+2]+2`
-/

namespace A087679.P15810700040833256657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A087679.P15810700040833256657

/-! ## A087679.P1007550156626732012

`p?[A086801(n+1)-1]+2`
-/

namespace A087679.P1007550156626732012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A087679.P1007550156626732012

/-!
# A087680: Numbers n such that n + 4 and n - 4 are both prime.

The programs for A087680, the canonical program `A087680.P10355844668314196368` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087680 has offset 1).

The definition of A087680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023202, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087680.P10355844668314196368

`A023202(n+1)+4`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087680

/-- `A023202(n+1)+4` -/
def P10355844668314196368.Spec : Prop :=
  ∀ n, P10355844668314196368.a n = A087680 (n + 1)

theorem P10355844668314196368.correct : P10355844668314196368.Spec := by
  intro n
  simp only [A087680, Nat.add_sub_cancel]

end A087680

/-! ## A087680.P17729928238317071669

`2*A088764(n+1)+1`
-/

namespace A087680.P17729928238317071669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088764 (n + 1) + 1

end

end A087680.P17729928238317071669

namespace A087680

/-- `2*A088764(n+1)+1` -/
def P17729928238317071669.Spec : Prop :=
  ∀ n, P17729928238317071669.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P1477439689803528094

`p?[A262085(n+1)]+4`
-/

namespace A087680.P1477439689803528094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A087680.P1477439689803528094

namespace A087680

/-- `p?[A262085(n+1)]+4` -/
def P1477439689803528094.Spec : Prop :=
  ∀ n, P1477439689803528094.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P11405125225030438381

`p?[A175224(n+1)]-4`
-/

namespace A087680.P11405125225030438381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A087680.P11405125225030438381

namespace A087680

/-- `p?[A175224(n+1)]-4` -/
def P11405125225030438381.Spec : Prop :=
  ∀ n, P11405125225030438381.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P3741020325455033678

`p?[A000040(n+1)+8]-4`
-/

namespace A087680.P3741020325455033678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A087680.P3741020325455033678

namespace A087680

/-- `p?[A000040(n+1)+8]-4` -/
def P3741020325455033678.Spec : Prop :=
  ∀ n, P3741020325455033678.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P8050249493126607692

`∩[A172367(n+1), A175221(n+1)]`
-/

namespace A087680.P8050249493126607692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087680.P8050249493126607692

namespace A087680

/-- `∩[A172367(n+1), A175221(n+1)]` -/
def P8050249493126607692.Spec : Prop :=
  ∀ n, (P8050249493126607692.a n : ℤ) = A087680 (n + 1)

end A087680

/-! ## A087680.P16614378557490914918

`A092402(n+1)-4`
-/

namespace A087680.P16614378557490914918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092402 (n + 1) - 4

end

end A087680.P16614378557490914918

namespace A087680

/-- `A092402(n+1)-4` -/
def P16614378557490914918.Spec : Prop :=
  ∀ n, P16614378557490914918.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P15909021011807173181

`(A092402(n+1)+p?[A015915(n+1)])/2`
-/

namespace A087680.P15909021011807173181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092402 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2

end

end A087680.P15909021011807173181

namespace A087680

/-- `(A092402(n+1)+p?[A015915(n+1)])/2` -/
def P15909021011807173181.Spec : Prop :=
  ∀ n, P15909021011807173181.a n = (A087680 (n + 1) : ℚ)

end A087680

/-! ## A087680.P8854836066048985059

`A156320(2*n+1)+4`
-/

namespace A087680.P8854836066048985059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156320 (2 * n + 1) + 4

end

end A087680.P8854836066048985059

namespace A087680

/-- `A156320(2*n+1)+4` -/
def P8854836066048985059.Spec : Prop :=
  ∀ n, P8854836066048985059.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P11679652759081953848

`∩[A172367(n+1), A258153(n+1)]`
-/

namespace A087680.P11679652759081953848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087680.P11679652759081953848

namespace A087680

/-- `∩[A172367(n+1), A258153(n+1)]` -/
def P11679652759081953848.Spec : Prop :=
  ∀ n, (P11679652759081953848.a n : ℤ) = A087680 (n + 1)

end A087680

/-! ## A087680.P3275223846567640496

`A005408(A088764(n+1))`
-/

namespace A087680.P3275223846567640496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A088764 (n + 1)).toNat

end

end A087680.P3275223846567640496

namespace A087680

/-- `A005408(A088764(n+1))` -/
def P3275223846567640496.Spec : Prop :=
  ∀ n, P3275223846567640496.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P15597999675153142748

`A004274(A088764(n+1)+2)`
-/

namespace A087680.P15597999675153142748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A088764 (n + 1) + 2).toNat

end

end A087680.P15597999675153142748

namespace A087680

/-- `A004274(A088764(n+1)+2)` -/
def P15597999675153142748.Spec : Prop :=
  ∀ n, P15597999675153142748.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P807054815805962535

`A004280(A088764(n+1)+2)`
-/

namespace A087680.P807054815805962535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A088764 (n + 1) + 2).toNat

end

end A087680.P807054815805962535

namespace A087680

/-- `A004280(A088764(n+1)+2)` -/
def P807054815805962535.Spec : Prop :=
  ∀ n, P807054815805962535.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P16098030423056330205

`A004277(A088764(n+1)+1)-1`
-/

namespace A087680.P16098030423056330205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088764 (n + 1) + 1).toNat - 1

end

end A087680.P16098030423056330205

namespace A087680

/-- `A004277(A088764(n+1)+1)-1` -/
def P16098030423056330205.Spec : Prop :=
  ∀ n, P16098030423056330205.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P18326963274248704371

`A005843(A088764(n+1)+1)-1`
-/

namespace A087680.P18326963274248704371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A088764 (n + 1) + 1).toNat - 1

end

end A087680.P18326963274248704371

namespace A087680

/-- `A005843(A088764(n+1)+1)-1` -/
def P18326963274248704371.Spec : Prop :=
  ∀ n, P18326963274248704371.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P9571790839154230273

`A130773(A088764(n+1)+1)-2`
-/

namespace A087680.P9571790839154230273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A088764 (n + 1) + 1).toNat - 2

end

end A087680.P9571790839154230273

namespace A087680

/-- `A130773(A088764(n+1)+1)-2` -/
def P9571790839154230273.Spec : Prop :=
  ∀ n, P9571790839154230273.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P5627267492784042235

`A111284(A088764(n+1)+2)/2`
-/

namespace A087680.P5627267492784042235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111284 (A088764 (n + 1) + 2).toNat : ℚ) / 2

end

end A087680.P5627267492784042235

namespace A087680

/-- `A111284(A088764(n+1)+2)/2` -/
def P5627267492784042235.Spec : Prop :=
  ∀ n, P5627267492784042235.a n = (A087680 (n + 1) : ℚ)

end A087680

/-! ## A087680.P15501133735109450690

`A241663(A092402(n+1))`
-/

namespace A087680.P15501133735109450690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241663 (A092402 (n + 1)).toNat

end

end A087680.P15501133735109450690

namespace A087680

/-- `A241663(A092402(n+1))` -/
def P15501133735109450690.Spec : Prop :=
  ∀ n, P15501133735109450690.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P15723238040071188817

`A020705(A023202(n+1))`
-/

namespace A087680.P15723238040071188817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A023202 (n + 1)).toNat

end

end A087680.P15723238040071188817

namespace A087680

/-- `A020705(A023202(n+1))` -/
def P15723238040071188817.Spec : Prop :=
  ∀ n, P15723238040071188817.a n = A087680 (n + 1)

end A087680

/-! ## A087680.P17229592953689627838

`A023450(A092402(n+1)+2)+2`
-/

namespace A087680.P17229592953689627838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023450 (A092402 (n + 1) + 2).toNat + 2

end

end A087680.P17229592953689627838

namespace A087680

/-- `A023450(A092402(n+1)+2)+2` -/
def P17229592953689627838.Spec : Prop :=
  ∀ n, P17229592953689627838.a n = A087680 (n + 1)

end A087680

/-!
# A087681: Numbers n such that n + 6 and n - 6 are both prime.

The programs for A087681, the canonical program `A087681.P2693589106627016851` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087681 has offset 1).

The definition of A087681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087681.P2693589106627016851

`A046133(n+1)+6`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A087681

/-- `A046133(n+1)+6` -/
def P2693589106627016851.Spec : Prop :=
  ∀ n, P2693589106627016851.a n = A087681 (n + 1)

theorem P2693589106627016851.correct : P2693589106627016851.Spec := by
  intro n
  simp only [A087681, Nat.add_sub_cancel]

end A087681

/-! ## A087681.P1191224207403026531

`A092216(n+1)-6`
-/

namespace A087681.P1191224207403026531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1) - 6

end

end A087681.P1191224207403026531

namespace A087681

/-- `A092216(n+1)-6` -/
def P1191224207403026531.Spec : Prop :=
  ∀ n, P1191224207403026531.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P16775889352117274831

`2*A088766(n+1)+1`
-/

namespace A087681.P16775889352117274831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088766 (n + 1) + 1

end

end A087681.P16775889352117274831

namespace A087681

/-- `2*A088766(n+1)+1` -/
def P16775889352117274831.Spec : Prop :=
  ∀ n, P16775889352117274831.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P7411879660444210814

`p?[A015917(n+1)]+6`
-/

namespace A087681.P7411879660444210814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 6

end

end A087681.P7411879660444210814

namespace A087681

/-- `p?[A015917(n+1)]+6` -/
def P7411879660444210814.Spec : Prop :=
  ∀ n, P7411879660444210814.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P16748111015466036871

`p?[A000040(n+1)+12]-6`
-/

namespace A087681.P16748111015466036871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A087681.P16748111015466036871

namespace A087681

/-- `p?[A000040(n+1)+12]-6` -/
def P16748111015466036871.Spec : Prop :=
  ∀ n, P16748111015466036871.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P18101469819358270908

`∩[A086304(n+1), A139049(n+1)]`
-/

namespace A087681.P18101469819358270908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087681.P18101469819358270908

namespace A087681

/-- `∩[A086304(n+1), A139049(n+1)]` -/
def P18101469819358270908.Spec : Prop :=
  ∀ n, (P18101469819358270908.a n : ℤ) = A087681 (n + 1)

end A087681

/-! ## A087681.P2397881061708882403

`∩[A118538(n+1), A139049(n+1)]`
-/

namespace A087681.P2397881061708882403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087681.P2397881061708882403

namespace A087681

/-- `∩[A118538(n+1), A139049(n+1)]` -/
def P2397881061708882403.Spec : Prop :=
  ∀ n, (P2397881061708882403.a n : ℤ) = A087681 (n + 1)

end A087681

/-! ## A087681.P7828644968465949306

`A130773(A088766(n+1))`
-/

namespace A087681.P7828644968465949306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A088766 (n + 1)).toNat

end

end A087681.P7828644968465949306

namespace A087681

/-- `A130773(A088766(n+1))` -/
def P7828644968465949306.Spec : Prop :=
  ∀ n, P7828644968465949306.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P606631506277723261

`A004276(A088766(n+1)+2)+2`
-/

namespace A087681.P606631506277723261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A088766 (n + 1) + 2).toNat + 2

end

end A087681.P606631506277723261

namespace A087681

/-- `A004276(A088766(n+1)+2)+2` -/
def P606631506277723261.Spec : Prop :=
  ∀ n, P606631506277723261.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P18111697207858915763

`A020742(A088766(n+1)-2)-2`
-/

namespace A087681.P18111697207858915763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A088766 (n + 1) - 2).toNat - 2

end

end A087681.P18111697207858915763

namespace A087681

/-- `A020742(A088766(n+1)-2)-2` -/
def P18111697207858915763.Spec : Prop :=
  ∀ n, P18111697207858915763.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P4672517778050940956

`A156323(2*n+1)+6`
-/

namespace A087681.P4672517778050940956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156323 (2 * n + 1) + 6

end

end A087681.P4672517778050940956

namespace A087681

/-- `A156323(2*n+1)+6` -/
def P4672517778050940956.Spec : Prop :=
  ∀ n, P4672517778050940956.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P12006403324198653057

`A020715(A046133(n+1))`
-/

namespace A087681.P12006403324198653057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A046133 (n + 1)).toNat

end

end A087681.P12006403324198653057

namespace A087681

/-- `A020715(A046133(n+1))` -/
def P12006403324198653057.Spec : Prop :=
  ∀ n, P12006403324198653057.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P3166887297558502037

`A023448(A092216(n+1))`
-/

namespace A087681.P3166887297558502037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A092216 (n + 1)).toNat

end

end A087681.P3166887297558502037

namespace A087681

/-- `A023448(A092216(n+1))` -/
def P3166887297558502037.Spec : Prop :=
  ∀ n, P3166887297558502037.a n = A087681 (n + 1)

end A087681

/-! ## A087681.P14072267952811953630

`A023454(2*A092216(n+1))/2`
-/

namespace A087681.P14072267952811953630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023454 (2 * A092216 (n + 1)).toNat : ℚ) / 2

end

end A087681.P14072267952811953630

namespace A087681

/-- `A023454(2*A092216(n+1))/2` -/
def P14072267952811953630.Spec : Prop :=
  ∀ n, P14072267952811953630.a n = (A087681 (n + 1) : ℚ)

end A087681

/-!
# A087682: Numbers n such that n + 8 and n - 8 are both prime.

The programs for A087682, there is no canonical definition to state claims against.
-/

/-! ## A087682.P2581798338223068118

`A049488(n+1)+8`
-/

namespace A087682.P2581798338223068118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1) + 8

end

end A087682.P2581798338223068118

/-! ## A087682.P17941755129051607694

`2*A088768(n+1)+1`
-/

namespace A087682.P17941755129051607694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088768 (n + 1) + 1

end

end A087682.P17941755129051607694

/-! ## A087682.P10925935308020514275

`A272815(2*n+1)+8`
-/

namespace A087682.P10925935308020514275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272815 (2 * n + 1) + 8

end

end A087682.P10925935308020514275

/-! ## A087682.P8942430939634304016

`p?[A000040(n+1)-16]+8`
-/

namespace A087682.P8942430939634304016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 8

end

end A087682.P8942430939634304016

/-! ## A087682.P18090136900443039114

`A103991(A088768(n+1))`
-/

namespace A087682.P18090136900443039114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103991 (A088768 (n + 1)).toNat

end

end A087682.P18090136900443039114

/-! ## A087682.P6517291527635576984

`p?[A004273(A089559(n+1))]+8`
-/

namespace A087682.P6517291527635576984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A089559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 8

end

end A087682.P6517291527635576984

/-! ## A087682.P6218081416840830665

`A020722(A049488(n+1))`
-/

namespace A087682.P6218081416840830665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (A049488 (n + 1)).toNat

end

end A087682.P6218081416840830665

/-!
# A087683: Numbers n such that n + 10 and n - 10 are both prime.

The programs for A087683, there is no canonical definition to state claims against.
-/

/-! ## A087683.P4374862502373660882

`A153419(n+1)+10`
-/

namespace A087683.P4374862502373660882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153419 (n + 1) + 10

end

end A087683.P4374862502373660882

/-! ## A087683.P8243308973976685381

`2*A088770(n+1)+1`
-/

namespace A087683.P8243308973976685381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088770 (n + 1) + 1

end

end A087683.P8243308973976685381

/-! ## A087683.P6510571432824498335

`A272816(2*n+1)+10`
-/

namespace A087683.P6510571432824498335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272816 (2 * n + 1) + 10

end

end A087683.P6510571432824498335

/-! ## A087683.P17215825067790285479

`∩[A172407(n+1), A175225(n+1)]`
-/

namespace A087683.P17215825067790285479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087683.P17215825067790285479

/-! ## A087683.P664619077658755204

`A016825(A088770(n+1))/2`
-/

namespace A087683.P664619077658755204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A088770 (n + 1)).toNat : ℚ) / 2

end

end A087683.P664619077658755204

/-! ## A087683.P2818175673543908190

`A144396(A088770(n+1))`
-/

namespace A087683.P2818175673543908190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A088770 (n + 1)).toNat

end

end A087683.P2818175673543908190

/-! ## A087683.P7140081964194709042

`A004273(A088770(n+1)+1)`
-/

namespace A087683.P7140081964194709042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A088770 (n + 1) + 1).toNat

end

end A087683.P7140081964194709042

/-! ## A087683.P7067285528544208626

`A020725(2*A088770(n+1))`
-/

namespace A087683.P7067285528544208626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (2 * A088770 (n + 1)).toNat

end

end A087683.P7067285528544208626

/-! ## A087683.P2871620828325715572

`p?[A023462(A000040(n+1))]+10`
-/

namespace A087683.P2871620828325715572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023462 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 10

end

end A087683.P2871620828325715572

/-! ## A087683.P14242554531662856932

`A008619(4*A088770(n+1))`
-/

namespace A087683.P14242554531662856932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A088770 (n + 1)).toNat

end

end A087683.P14242554531662856932

/-! ## A087683.P12708708025305028991

`A028242(4*A088770(n+1))`
-/

namespace A087683.P12708708025305028991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (4 * A088770 (n + 1)).toNat

end

end A087683.P12708708025305028991

/-!
# A087684: Consecutive repeating elements in sequence A006158.

The programs for A087684, there is no canonical definition to state claims against.
-/

/-! ## A087684.P13366713514962902385

`record[gcd(A006158(n+1), A006158(n+2))]`
-/

namespace A087684.P13366713514962902385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006158 (n + 1)) (A006158 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087684.P13366713514962902385

/-! ## A087684.P11375503789684237647

`A164707(2*n+1)+A069010(A000225(n))`
-/

namespace A087684.P11375503789684237647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (2 * n + 1) + A069010 (A000225 n).toNat

end

end A087684.P11375503789684237647

/-! ## A087684.P9047740774473241437

`A164707(2*n+1)+A000120(A131577(n))`
-/

namespace A087684.P9047740774473241437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (2 * n + 1) + A000120 (A131577 n).toNat

end

end A087684.P9047740774473241437

/-! ## A087684.P17124476190251598332

`A164707(2*n+1)+A060576(A007800(n+1))`
-/

namespace A087684.P17124476190251598332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (2 * n + 1) + A060576 (A007800 (n + 1)).toNat

end

end A087684.P17124476190251598332

/-! ## A087684.P17786642065855696088

`A164707(2*n+1)+A059841(A232106(n+1))`
-/

namespace A087684.P17786642065855696088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (2 * n + 1) + A059841 (A232106 (n + 1)).toNat

end

end A087684.P17786642065855696088

/-!
# A087685: Primes p such that 5^p - 4^p is composite.

The programs for A087685, there is no canonical definition to state claims against.
-/

/-! ## A087685.P7410480512307823501

`A000040(lt[A380488(2*n+5), A242706(n+1)])`
-/

namespace A087685.P7410480512307823501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380488 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087685.P7410480512307823501

/-! ## A087685.P7993702973806775628

`A000040(lt[A066633(3*n+5), A061413(3*n+4)])`
-/

namespace A087685.P7993702973806775628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061413 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087685.P7993702973806775628

/-! ## A087685.P13209613715370633787

`record[A151800(n)/A279387(n+1)]`
-/

namespace A087685.P13209613715370633787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 n : ℚ) / (A279387 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087685.P13209613715370633787

/-! ## A087685.P1862284952471954492

`A000040(lt[A191910(n+1), A039953(3*n+4)])`
-/

namespace A087685.P1862284952471954492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039953 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087685.P1862284952471954492

/-!
# A087686: Elements of A004001 that repeat consecutively.

The programs for A087686, the canonical program `A087686.P7055121400500820265` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087686 has offset 1).

The definition of A087686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087686.P9789675223848926754

`A266188(n+1)+n`
-/

namespace A087686.P9789675223848926754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266188 (n + 1) + (n : ℤ)

end

end A087686.P9789675223848926754

namespace A087686

/-- `A266188(n+1)+n` -/
def P9789675223848926754.Spec : Prop :=
  ∀ n, P9789675223848926754.a n = A087686 (n + 1)

end A087686

/-! ## A087686.P7055121400500820265

`a(A004001(n))+n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087686

/-- `a(A004001(n))+n` -/
def P7055121400500820265.Spec : Prop :=
  ∀ n, (P7055121400500820265.a n : ℤ) = A087686 (n + 1)

theorem P7055121400500820265.correct : P7055121400500820265.Spec := by
  intro n
  simp only [A087686, Nat.add_sub_cancel]

end A087686

/-! ## A087686.P9744647857939484574

`A266188(A188163(n+1))`
-/

namespace A087686.P9744647857939484574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266188 (A188163 (n + 1)).toNat

end

end A087686.P9744647857939484574

namespace A087686

/-- `A266188(A188163(n+1))` -/
def P9744647857939484574.Spec : Prop :=
  ∀ n, P9744647857939484574.a n = A087686 (n + 1)

end A087686

/-! ## A087686.P5053164608605764008

`lt[1, A051135(n+1)]+1`
-/

namespace A087686.P5053164608605764008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A087686.P5053164608605764008

namespace A087686

/-- `lt[1, A051135(n+1)]+1` -/
def P5053164608605764008.Spec : Prop :=
  ∀ n, (P5053164608605764008.a n : ℤ) = A087686 (n + 1)

end A087686

/-! ## A087686.P8551982101948967311

`A028310(comp[A188163(n+1)])`
-/

namespace A087686.P8551982101948967311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A087686.P8551982101948967311

namespace A087686

/-- `A028310(comp[A188163(n+1)])` -/
def P8551982101948967311.Spec : Prop :=
  ∀ n, P8551982101948967311.a n = A087686 (n + 1)

end A087686

/-! ## A087686.P10289983691367290999

`eq[A283468(n+1), A283468(A028310(n))]+1`
-/

namespace A087686.P10289983691367290999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087686.P10289983691367290999

namespace A087686

/-- `eq[A283468(n+1), A283468(A028310(n))]+1` -/
def P10289983691367290999.Spec : Prop :=
  ∀ n, (P10289983691367290999.a n : ℤ) = A087686 (n + 1)

end A087686

/-! ## A087686.P14414735856853294387

`A266640(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A087686.P14414735856853294387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266640 (a (n - 1)).toNat + a (n - 1)

end

end A087686.P14414735856853294387

namespace A087686

/-- `A266640(a(n-1))+a(n-1)` -/
def P14414735856853294387.Spec : Prop :=
  ∀ n, P14414735856853294387.a n = A087686 (n + 1)

end A087686

/-! ## A087686.P7453318123457825502

`record[root(n+1, gcd(8, A276441(n+1)))]`
-/

namespace A087686.P7453318123457825502
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (Int.gcd 8 (A276441 (n + 1)) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087686.P7453318123457825502

namespace A087686

/-- `record[root(n+1, gcd(8, A276441(n+1)))]` -/
def P7453318123457825502.Spec : Prop :=
  ∀ n, P7453318123457825502.a n = (A087686 (n + 1) : ℝ)

end A087686

/-! ## A087686.P6372820312398738358

`A004001(comp[A093879(n+1)+n])`
-/

namespace A087686.P6372820312398738358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A087686.P6372820312398738358

namespace A087686

/-- `A004001(comp[A093879(n+1)+n])` -/
def P6372820312398738358.Spec : Prop :=
  ∀ n, P6372820312398738358.a n = A087686 (n + 1)

end A087686

/-! ## A087686.P2646659942939345652

`record[(1-A093879(n+1))*A004001(n+1)]`
-/

namespace A087686.P2646659942939345652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A093879 (n + 1)) * A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087686.P2646659942939345652

namespace A087686

/-- `record[(1-A093879(n+1))*A004001(n+1)]` -/
def P2646659942939345652.Spec : Prop :=
  ∀ n, P2646659942939345652.a n = A087686 (n + 1)

end A087686

/-! ## A087686.P989852158667344221

`record[(1-A093879(n+1))*A162598(n+1)]`
-/

namespace A087686.P989852158667344221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A093879 (n + 1)) * A162598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087686.P989852158667344221

namespace A087686

/-- `record[(1-A093879(n+1))*A162598(n+1)]` -/
def P989852158667344221.Spec : Prop :=
  ∀ n, P989852158667344221.a n = A087686 (n + 1)

end A087686

/-! ## A087686.P9520152291593393388

`eq[A283470(A233583(n+1)), A283470(n+1)]+1`
-/

namespace A087686.P9520152291593393388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283470 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087686.P9520152291593393388

namespace A087686

/-- `eq[A283470(A233583(n+1)), A283470(n+1)]+1` -/
def P9520152291593393388.Spec : Prop :=
  ∀ n, (P9520152291593393388.a n : ℤ) = A087686 (n + 1)

end A087686

/-!
# A087687: Number of solutions to x^2 + y^2 + z^2 == 0 (mod n).

The programs for A087687, there is no canonical definition to state claims against.
-/

/-! ## A087687.P3001971048511766833

`A062775(n+1)/A038712(A000188(n+1))`
-/

namespace A087687.P3001971048511766833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062775 (n + 1) : ℚ) / (A038712 (A000188 (n + 1)).toNat : ℚ)

end

end A087687.P3001971048511766833

/-! ## A087687.P278707532585022419

`A062775(n+1)/A059905(A038712(n+1))`
-/

namespace A087687.P278707532585022419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062775 (n + 1) : ℚ) / (A059905 (A038712 (n + 1)).toNat : ℚ)

end

end A087687.P278707532585022419

/-! ## A087687.P12131245391471568531

`gcd(A062775(4*(n+1)), A062775(n+1))`
-/

namespace A087687.P12131245391471568531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062775 (4 * (n + 1))) (A062775 (n + 1))

end

end A087687.P12131245391471568531

/-! ## A087687.P7985954901968788868

`(2*A331996(n+1)-A088964(n+1))/A038712(A000188(n+1))`
-/

namespace A087687.P7985954901968788868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A331996 (n + 1) - A088964 (n + 1) : ℚ) / (A038712 (A000188 (n + 1)).toNat : ℚ)

end

end A087687.P7985954901968788868

/-! ## A087687.P16138420561969075760

`(2*A331996(n+1)-A088964(n+1))/A059905(A038712(n+1))`
-/

namespace A087687.P16138420561969075760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A331996 (n + 1) - A088964 (n + 1) : ℚ) / (A059905 (A038712 (n + 1)).toNat : ℚ)

end

end A087687.P16138420561969075760

/-!
# A087688: a(n) = number of solutions to x^3 - x == 0 (mod n).

The programs for A087688, the canonical program `A087688.P13986308586954985851` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087688 has offset 1).

The definition of A087688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087688.P13986308586954985851

`∑{d}[n+1, A114811(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087688

/-- `∑{d}[n+1, A114811(#)]` -/
def P13986308586954985851.Spec : Prop :=
  ∀ n, P13986308586954985851.a n = A087688 (n + 1)

theorem P13986308586954985851.correct : P13986308586954985851.Spec := by
  intro n
  simp only [A087688, Nat.add_sub_cancel]

end A087688

/-! ## A087688.P3151350796864062996

`A087782(n+1)*A337910(n+1)`
-/

namespace A087688.P3151350796864062996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087782 (n + 1) * A337910 (n + 1)

end

end A087688.P3151350796864062996

namespace A087688

/-- `A087782(n+1)*A337910(n+1)` -/
def P3151350796864062996.Spec : Prop :=
  ∀ n, P3151350796864062996.a n = A087688 (n + 1)

end A087688

/-! ## A087688.P7344029976737473189

`A337632(A000217(n)+A000010(2*(n+1)))`
-/

namespace A087688.P7344029976737473189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337632 (A000217 n + A000010 (2 * (n + 1))).toNat

end

end A087688.P7344029976737473189

namespace A087688

/-- `A337632(A000217(n)+A000010(2*(n+1)))` -/
def P7344029976737473189.Spec : Prop :=
  ∀ n, P7344029976737473189.a n = A087688 (n + 1)

end A087688

/-! ## A087688.P13753089715338733542

`A337632(A109606(2*(n+1))+A000124(n))`
-/

namespace A087688.P13753089715338733542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337632 (A109606 (2 * (n + 1)) + A000124 n).toNat

end

end A087688.P13753089715338733542

namespace A087688

/-- `A337632(A109606(2*(n+1))+A000124(n))` -/
def P13753089715338733542.Spec : Prop :=
  ∀ n, P13753089715338733542.a n = A087688 (n + 1)

end A087688

/-! ## A087688.P6078005774578245251

`A078644(A078644(n+1)^A034380(n+1))`
-/

namespace A087688.P6078005774578245251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (SequenceMachineLib.roundAway ((A078644 (n + 1) : ℚ) ^ (A034380 (n + 1) : ℤ))).toNat

end

end A087688.P6078005774578245251

namespace A087688

/-- `A078644(A078644(n+1)^A034380(n+1))` -/
def P6078005774578245251.Spec : Prop :=
  ∀ n, P6078005774578245251.a n = A087688 (n + 1)

end A087688

/-!
# A087689: Numerators of successive partial sums of sum(1/(2^n-1)).

The programs for A087689, there is no canonical definition to state claims against.
-/

/-! ## A087689.P11604567097104378356

`A265709(2^n)`
-/

namespace A087689.P11604567097104378356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265709 (2 ^ n)

end

end A087689.P11604567097104378356

/-! ## A087689.P11626930608084199191

`record[A265709(A057728(n+1))]`
-/

namespace A087689.P11626930608084199191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265709 (A057728 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087689.P11626930608084199191

/-! ## A087689.P17211896158310621431

`record[A265709(n+1)/A000265(n+1)]`
-/

namespace A087689.P17211896158310621431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265709 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087689.P17211896158310621431

/-! ## A087689.P15049470948873041996

`record[A265709(A011782(A008611(n)))]`
-/

namespace A087689.P15049470948873041996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265709 (A011782 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087689.P15049470948873041996

/-! ## A087689.P6997375011533846517

`record[A265709(A011782(A059253(n)))]`
-/

namespace A087689.P6997375011533846517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265709 (A011782 (A059253 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087689.P6997375011533846517

/-!
# A087690: Denominators of successive partial sums of sum(1/(2^n-1)).

The programs for A087690, there is no canonical definition to state claims against.
-/

/-! ## A087690.P7133663770930157862

`A265710(2^n)`
-/

namespace A087690.P7133663770930157862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265710 (2 ^ n)

end

end A087690.P7133663770930157862

/-! ## A087690.P17472941031387115706

`A306650(2^n)`
-/

namespace A087690.P17472941031387115706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306650 (2 ^ n)

end

end A087690.P17472941031387115706

/-! ## A087690.P16617283876005129140

`record[A265710(A001316(n))]`
-/

namespace A087690.P16617283876005129140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265710 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087690.P16617283876005129140

/-! ## A087690.P12249715358321156327

`record[A265710(A059268(n))]`
-/

namespace A087690.P12249715358321156327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265710 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087690.P12249715358321156327

/-! ## A087690.P539071086191596985

`record[A265710(A130321(n))]`
-/

namespace A087690.P539071086191596985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265710 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087690.P539071086191596985

/-!
# A087691: Squares of primes of the form 4*k+3.

The programs for A087691, the canonical program `A087691.P847001691907876156` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087691 has offset 1).

The definition of A087691 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087691.P847001691907876156

`A002145(n+1)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087691

/-- `A002145(n+1)²` -/
def P847001691907876156.Spec : Prop :=
  ∀ n, P847001691907876156.a n = A087691 (n + 1)

theorem P847001691907876156.correct : P847001691907876156.Spec := by
  intro n
  simp only [A087691, Nat.add_sub_cancel]

end A087691

/-! ## A087691.P6339393679081201125

`p?[4*n-1]²`
-/

namespace A087691.P6339393679081201125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A087691.P6339393679081201125

namespace A087691

/-- `p?[4*n-1]²` -/
def P6339393679081201125.Spec : Prop :=
  ∀ n, P6339393679081201125.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P3529154952266076144

`A339900(Δ[n²])²`
-/

namespace A087691.P3529154952266076144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A087691.P3529154952266076144

namespace A087691

/-- `A339900(Δ[n²])²` -/
def P3529154952266076144.Spec : Prop :=
  ∀ n, P3529154952266076144.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P18322300277596673019

`(1-A090658(n+1))²`
-/

namespace A087691.P18322300277596673019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A090658 (n + 1)) ^ 2

end

end A087691.P18322300277596673019

namespace A087691

/-- `(1-A090658(n+1))²` -/
def P18322300277596673019.Spec : Prop :=
  ∀ n, P18322300277596673019.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P12905862741163391287

`(4*A005099(n+1)-1)²`
-/

namespace A087691.P12905862741163391287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A005099 (n + 1) - 1) ^ 2

end

end A087691.P12905862741163391287

namespace A087691

/-- `(4*A005099(n+1)-1)²` -/
def P12905862741163391287.Spec : Prop :=
  ∀ n, P12905862741163391287.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P13356121185400175344

`(1-2*(A104635(n+1)+1))²`
-/

namespace A087691.P13356121185400175344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * (A104635 (n + 1) + 1)) ^ 2

end

end A087691.P13356121185400175344

namespace A087691

/-- `(1-2*(A104635(n+1)+1))²` -/
def P13356121185400175344.Spec : Prop :=
  ∀ n, P13356121185400175344.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P18437335387150975150

`A002145(A000027(n+1))^2`
-/

namespace A087691.P18437335387150975150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (A000027 (n + 1)).toNat ^ 2

end

end A087691.P18437335387150975150

namespace A087691

/-- `A002145(A000027(n+1))^2` -/
def P18437335387150975150.Spec : Prop :=
  ∀ n, P18437335387150975150.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P14766854620169310933

`(A190105(n+1)+A005099(n+1))²`
-/

namespace A087691.P14766854620169310933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 1) + A005099 (n + 1)) ^ 2

end

end A087691.P14766854620169310933

namespace A087691

/-- `(A190105(n+1)+A005099(n+1))²` -/
def P14766854620169310933.Spec : Prop :=
  ∀ n, P14766854620169310933.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P5283152406272995395

`(A048630(n+1)/A002144(n+1))²`
-/

namespace A087691.P5283152406272995395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A048630 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)) ^ 2

end

end A087691.P5283152406272995395

namespace A087691

/-- `(A048630(n+1)/A002144(n+1))²` -/
def P5283152406272995395.Spec : Prop :=
  ∀ n, P5283152406272995395.a n = (A087691 (n + 1) : ℚ)

end A087691

/-! ## A087691.P2034463404542270222

`A002145(n+1)*A339900(2*n+1)`
-/

namespace A087691.P2034463404542270222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) * A339900 (2 * n + 1)

end

end A087691.P2034463404542270222

namespace A087691

/-- `A002145(n+1)*A339900(2*n+1)` -/
def P2034463404542270222.Spec : Prop :=
  ∀ n, P2034463404542270222.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P1812257760427117638

`A002145(C(n+1, n))*A002145(n+1)`
-/

namespace A087691.P1812257760427117638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (Nat.choose (n + 1) n) * A002145 (n + 1)

end

end A087691.P1812257760427117638

namespace A087691

/-- `A002145(C(n+1, n))*A002145(n+1)` -/
def P1812257760427117638.Spec : Prop :=
  ∀ n, P1812257760427117638.a n = A087691 (n + 1)

theorem P1812257760427117638.correct : P1812257760427117638.Spec := by
  intro n
  simp only [A087691, Nat.add_sub_cancel, A087691.P1812257760427117638.a, A087691.P847001691907876156.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A087691

/-! ## A087691.P2148157594961965014

`gcd(A034955(n+1)²², A048630(n+1)²)`
-/

namespace A087691.P2148157594961965014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A034955 (n + 1) ^ 2) ^ 2) (A048630 (n + 1) ^ 2)

end

end A087691.P2148157594961965014

namespace A087691

/-- `gcd(A034955(n+1)²², A048630(n+1)²)` -/
def P2148157594961965014.Spec : Prop :=
  ∀ n, (P2148157594961965014.a n : ℤ) = A087691 (n + 1)

end A087691

/-! ## A087691.P12093577545634842923

`A034955(n+1)+A034955(n+1)-A002145(n+1)`
-/

namespace A087691.P12093577545634842923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034955 (n + 1) + (A034955 (n + 1) - A002145 (n + 1))

end

end A087691.P12093577545634842923

namespace A087691

/-- `A034955(n+1)+A034955(n+1)-A002145(n+1)` -/
def P12093577545634842923.Spec : Prop :=
  ∀ n, P12093577545634842923.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P2232459635276389285

`(A022757(n+1)-A002144(n+1))*A002145(n+1)`
-/

namespace A087691.P2232459635276389285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022757 (n + 1) - A002144 (n + 1)) * A002145 (n + 1)

end

end A087691.P2232459635276389285

namespace A087691

/-- `(A022757(n+1)-A002144(n+1))*A002145(n+1)` -/
def P2232459635276389285.Spec : Prop :=
  ∀ n, P2232459635276389285.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P10132217475127522202

`A002145(n+1)/A002144(n+1)*A048630(n+1)`
-/

namespace A087691.P10132217475127522202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ) * (A048630 (n + 1) : ℚ)

end

end A087691.P10132217475127522202

namespace A087691

/-- `A002145(n+1)/A002144(n+1)*A048630(n+1)` -/
def P10132217475127522202.Spec : Prop :=
  ∀ n, P10132217475127522202.a n = (A087691 (n + 1) : ℚ)

end A087691

/-! ## A087691.P3611328854664448909

`A045326(n+2)²`
-/

namespace A087691.P3611328854664448909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2) ^ 2

end

end A087691.P3611328854664448909

namespace A087691

/-- `A045326(n+2)²` -/
def P3611328854664448909.Spec : Prop :=
  ∀ n, P3611328854664448909.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P5951885800661545932

`A002145(n+1)*A045326(n+2)`
-/

namespace A087691.P5951885800661545932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) * A045326 (n + 2)

end

end A087691.P5951885800661545932

namespace A087691

/-- `A002145(n+1)*A045326(n+2)` -/
def P5951885800661545932.Spec : Prop :=
  ∀ n, P5951885800661545932.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P12542494564281045912

`(A022757(n+1)-A002313(n+2))*A002145(n+1)`
-/

namespace A087691.P12542494564281045912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022757 (n + 1) - A002313 (n + 2)) * A002145 (n + 1)

end

end A087691.P12542494564281045912

namespace A087691

/-- `(A022757(n+1)-A002313(n+2))*A002145(n+1)` -/
def P12542494564281045912.Spec : Prop :=
  ∀ n, P12542494564281045912.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P1037241698127639586

`record[A080088(n+2)²]`
-/

namespace A087691.P1037241698127639586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080088 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087691.P1037241698127639586

namespace A087691

/-- `record[A080088(n+2)²]` -/
def P1037241698127639586.Spec : Prop :=
  ∀ n, P1037241698127639586.a n = A087691 (n + 1)

end A087691

/-! ## A087691.P14836140032868986302

`A001248(A080148(n+1))`
-/

namespace A087691.P14836140032868986302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A080148 (n + 1)).toNat

end

end A087691.P14836140032868986302

namespace A087691

/-- `A001248(A080148(n+1))` -/
def P14836140032868986302.Spec : Prop :=
  ∀ n, P14836140032868986302.a n = A087691 (n + 1)

end A087691

/-!
# A087692: Number of cubes in multiplicative group modulo n.

The programs for A087692, the canonical program `A087692.P14815720998810141369` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087692 has offset 1).

The definition of A087692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087692.P14815720998810141369

`A115070(A282779(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A087692

/-- `A115070(A282779(n+1))` -/
def P14815720998810141369.Spec : Prop :=
  ∀ n, P14815720998810141369.a n = A087692 (n + 1)

theorem P14815720998810141369.correct : P14815720998810141369.Spec := by
  intro n
  simp only [A087692, Nat.add_sub_cancel]

end A087692

/-! ## A087692.P11457931390674359131

`Δ[A002088(n)]/A060839(n+1)`
-/

namespace A087692.P11457931390674359131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A060839 (n + 1) : ℚ)

end

end A087692.P11457931390674359131

namespace A087692

/-- `Δ[A002088(n)]/A060839(n+1)` -/
def P11457931390674359131.Spec : Prop :=
  ∀ n, P11457931390674359131.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P4792941280801331922

`A060594(n+1)*A293483(n+1)`
-/

namespace A087692.P4792941280801331922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) * A293483 (n + 1)

end

end A087692.P4792941280801331922

namespace A087692

/-- `A060594(n+1)*A293483(n+1)` -/
def P4792941280801331922.Spec : Prop :=
  ∀ n, P4792941280801331922.a n = A087692 (n + 1)

end A087692

/-! ## A087692.P12632502844116438028

`A000010(n+1)/A060839(n+1)`
-/

namespace A087692.P12632502844116438028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ)

end

end A087692.P12632502844116438028

namespace A087692

/-- `A000010(n+1)/A060839(n+1)` -/
def P12632502844116438028.Spec : Prop :=
  ∀ n, P12632502844116438028.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P4529361121976464596

`2^(A046072(n+1)-C(n, n²))*A293483(n+1)`
-/

namespace A087692.P4529361121976464596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046072 (n + 1) - (Nat.choose n (n ^ 2) : ℤ) : ℤ) * (A293483 (n + 1) : ℚ)

end

end A087692.P4529361121976464596

namespace A087692

/-- `2^(A046072(n+1)-C(n, n²))*A293483(n+1)` -/
def P4529361121976464596.Spec : Prop :=
  ∀ n, P4529361121976464596.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P14232382563070299255

`A293483(n+1)*A322362(A319100(n+1))`
-/

namespace A087692.P14232382563070299255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293483 (n + 1) * A322362 (A319100 (n + 1)).toNat

end

end A087692.P14232382563070299255

namespace A087692

/-- `A293483(n+1)*A322362(A319100(n+1))` -/
def P14232382563070299255.Spec : Prop :=
  ∀ n, P14232382563070299255.a n = A087692 (n + 1)

end A087692

/-! ## A087692.P16860724244118665785

`lcm(A028233(A293484(n+1)), A293483(n+1))`
-/

namespace A087692.P16860724244118665785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028233 (A293484 (n + 1)).toNat) (A293483 (n + 1))

end

end A087692.P16860724244118665785

namespace A087692

/-- `lcm(A028233(A293484(n+1)), A293483(n+1))` -/
def P16860724244118665785.Spec : Prop :=
  ∀ n, (P16860724244118665785.a n : ℤ) = A087692 (n + 1)

end A087692

/-! ## A087692.P7805982890264724805

`(A002088(n+1)-A002088(n))/A060839(n+1)`
-/

namespace A087692.P7805982890264724805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n : ℚ) / (A060839 (n + 1) : ℚ)

end

end A087692.P7805982890264724805

namespace A087692

/-- `(A002088(n+1)-A002088(n))/A060839(n+1)` -/
def P7805982890264724805.Spec : Prop :=
  ∀ n, P7805982890264724805.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P3271079855512410998

`A046073(n+1)*A060594(n+1)/A060839(n+1)`
-/

namespace A087692.P3271079855512410998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) * A060594 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ)

end

end A087692.P3271079855512410998

namespace A087692

/-- `A046073(n+1)*A060594(n+1)/A060839(n+1)` -/
def P3271079855512410998.Spec : Prop :=
  ∀ n, P3271079855512410998.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P5609192431759896468

`A115069(n+1)/A060839(n+1)*A115070(n+1)`
-/

namespace A087692.P5609192431759896468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115069 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ) * (A115070 (n + 1) : ℚ)

end

end A087692.P5609192431759896468

namespace A087692

/-- `A115069(n+1)/A060839(n+1)*A115070(n+1)` -/
def P5609192431759896468.Spec : Prop :=
  ∀ n, P5609192431759896468.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P6895513062433885874

`A000010(n+1)/A046073(n+1)*A293483(n+1)`
-/

namespace A087692.P6895513062433885874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A046073 (n + 1) : ℚ) * (A293483 (n + 1) : ℚ)

end

end A087692.P6895513062433885874

namespace A087692

/-- `A000010(n+1)/A046073(n+1)*A293483(n+1)` -/
def P6895513062433885874.Spec : Prop :=
  ∀ n, P6895513062433885874.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P4523473708958508230

`A000010(n+1)*A060594(n+1)/A319100(n+1)`
-/

namespace A087692.P4523473708958508230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A060594 (n + 1) : ℚ) / (A319100 (n + 1) : ℚ)

end

end A087692.P4523473708958508230

namespace A087692

/-- `A000010(n+1)*A060594(n+1)/A319100(n+1)` -/
def P4523473708958508230.Spec : Prop :=
  ∀ n, P4523473708958508230.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P16252614155953289021

`A073103(n+1)/A060839(n+1)*A250207(n+1)`
-/

namespace A087692.P16252614155953289021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073103 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ) * (A250207 (n + 1) : ℚ)

end

end A087692.P16252614155953289021

namespace A087692

/-- `A073103(n+1)/A060839(n+1)*A250207(n+1)` -/
def P16252614155953289021.Spec : Prop :=
  ∀ n, P16252614155953289021.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P12593485477891395226

`A247257(n+1)/A060839(n+1)*A293485(n+1)`
-/

namespace A087692.P12593485477891395226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ) * (A293485 (n + 1) : ℚ)

end

end A087692.P12593485477891395226

namespace A087692

/-- `A247257(n+1)/A060839(n+1)*A293485(n+1)` -/
def P12593485477891395226.Spec : Prop :=
  ∀ n, P12593485477891395226.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P4055675748009250483

`A293482(n+1)/A060839(n+1)*A319099(n+1)`
-/

namespace A087692.P4055675748009250483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ) * (A319099 (n + 1) : ℚ)

end

end A087692.P4055675748009250483

namespace A087692

/-- `A293482(n+1)/A060839(n+1)*A319099(n+1)` -/
def P4055675748009250483.Spec : Prop :=
  ∀ n, P4055675748009250483.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P5782137382494564910

`A293484(n+1)/A060839(n+1)*A319101(n+1)`
-/

namespace A087692.P5782137382494564910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ) * (A319101 (n + 1) : ℚ)

end

end A087692.P5782137382494564910

namespace A087692

/-- `A293484(n+1)/A060839(n+1)*A319101(n+1)` -/
def P5782137382494564910.Spec : Prop :=
  ∀ n, P5782137382494564910.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P17664962287733682038

`A000010(n+1)²/(A046073(n+1)*A319100(n+1))`
-/

namespace A087692.P17664962287733682038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) ^ 2 : ℚ) / (A046073 (n + 1) * A319100 (n + 1) : ℚ)

end

end A087692.P17664962287733682038

namespace A087692

/-- `A000010(n+1)²/(A046073(n+1)*A319100(n+1))` -/
def P17664962287733682038.Spec : Prop :=
  ∀ n, P17664962287733682038.a n = (A087692 (n + 1) : ℚ)

end A087692

/-! ## A087692.P17633428933611541832

`A293483(n+1)²/A046073(n+1)*A319100(n+1)`
-/

namespace A087692.P17633428933611541832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293483 (n + 1) ^ 2 : ℚ) / (A046073 (n + 1) : ℚ) * (A319100 (n + 1) : ℚ)

end

end A087692.P17633428933611541832

namespace A087692

/-- `A293483(n+1)²/A046073(n+1)*A319100(n+1)` -/
def P17633428933611541832.Spec : Prop :=
  ∀ n, P17633428933611541832.a n = (A087692 (n + 1) : ℚ)

end A087692

/-!
# A087693: Lesser twin prime p such that 2^p-1 is composite.

The programs for A087693, there is no canonical definition to state claims against.
-/

/-! ## A087693.P16308165039062413688

`p?[A054723(n+1)+2]-2`
-/

namespace A087693.P16308165039062413688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A087693.P16308165039062413688

/-! ## A087693.P12456975241613011253

`∩[A001359(n+1), A054723(n+1)]`
-/

namespace A087693.P12456975241613011253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P12456975241613011253

/-! ## A087693.P7569110267607121939

`∩[A001838(n+1), A054723(n+1)]`
-/

namespace A087693.P7569110267607121939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P7569110267607121939

/-! ## A087693.P5225311111901574925

`∩[A054723(n+1), A054799(n+1)]`
-/

namespace A087693.P5225311111901574925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P5225311111901574925

/-! ## A087693.P6834164850121510143

`∩[A054723(n+1), A063693(n+1)]`
-/

namespace A087693.P6834164850121510143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P6834164850121510143

/-! ## A087693.P16356679158101991951

`∩[A054723(n+1), A063700(n+1)]`
-/

namespace A087693.P16356679158101991951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P16356679158101991951

/-! ## A087693.P8725479415506556853

`∩[A054723(n+1), A065873(n+1)]`
-/

namespace A087693.P8725479415506556853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P8725479415506556853

/-! ## A087693.P14546059702616623281

`∩[A054723(n+1), A066147(n+1)]`
-/

namespace A087693.P14546059702616623281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P14546059702616623281

/-! ## A087693.P14986639872585985870

`∩[A054723(n+1), A067532(n+1)]`
-/

namespace A087693.P14986639872585985870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P14986639872585985870

/-! ## A087693.P16900555166709822709

`∩[A054723(n+1), A072282(n+1)]`
-/

namespace A087693.P16900555166709822709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P16900555166709822709

/-! ## A087693.P1233203114538254176

`∩[A054723(n+1), A073534(n+1)]`
-/

namespace A087693.P1233203114538254176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P1233203114538254176

/-! ## A087693.P8539439091763447541

`∩[A054723(n+1), A111166(n+1)]`
-/

namespace A087693.P8539439091763447541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P8539439091763447541

/-! ## A087693.P7951566652984383321

`∩[A054723(n+1), A124588(n+1)]`
-/

namespace A087693.P7951566652984383321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P7951566652984383321

/-! ## A087693.P15874508898677643159

`∩[A054723(n+1), A181747(n+1)]`
-/

namespace A087693.P15874508898677643159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P15874508898677643159

/-! ## A087693.P8125463966147013382

`∩[A054723(n+1), A238528(n+1)]`
-/

namespace A087693.P8125463966147013382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P8125463966147013382

/-! ## A087693.P861317198789168538

`∩[A054723(n+1), A274212(n+1)]`
-/

namespace A087693.P861317198789168538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P861317198789168538

/-! ## A087693.P13607089157055197145

`∩[A395788(n+1), A054723(n+1)]`
-/

namespace A087693.P13607089157055197145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P13607089157055197145

/-! ## A087693.P5444346653821615964

`∩[A040976(n+1), A054723(n+1)]`
-/

namespace A087693.P5444346653821615964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P5444346653821615964

/-! ## A087693.P13928242318556136248

`∩[A054723(n+1), A078444(n+1)]`
-/

namespace A087693.P13928242318556136248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P13928242318556136248

/-! ## A087693.P9399884050231039300

`∩[A054723(n+1), A157049(n+1)]`
-/

namespace A087693.P9399884050231039300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087693.P9399884050231039300

/-!
# A087694: Number of solutions to x^2 + xy + y^2 == 0 (mod n).

The programs for A087694, the canonical program `A087694.P12240670254306234750` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087694 has offset 1).

The definition of A087694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087694.P12240670254306234750

`∑{d}[n+1, A162397(#)*A227128((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A087694

/-- `∑{d}[n+1, A162397(#)*A227128((n+1)/#)]` -/
def P12240670254306234750.Spec : Prop :=
  ∀ n, P12240670254306234750.a n = A087694 (n + 1)

theorem P12240670254306234750.correct : P12240670254306234750.Spec := by
  intro n
  simp only [A087694, Nat.add_sub_cancel]

end A087694

/-! ## A087694.P4293245823120940297

`∑{d}[n+1, A131099(#)*A365428((n+1)/#)]`
-/

namespace A087694.P4293245823120940297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131099 d * A365428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087694.P4293245823120940297

namespace A087694

/-- `∑{d}[n+1, A131099(#)*A365428((n+1)/#)]` -/
def P4293245823120940297.Spec : Prop :=
  ∀ n, P4293245823120940297.a n = A087694 (n + 1)

end A087694

/-!
# A087695: Numbers n such that n + 3 and n - 3 are both prime.

The programs for A087695, the canonical program `A087695.P4000952237766351123` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087695 has offset 1).

The definition of A087695 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087695.P4000952237766351123

`A046117(n+1)-3`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087695

/-- `A046117(n+1)-3` -/
def P4000952237766351123.Spec : Prop :=
  ∀ n, P4000952237766351123.a n = A087695 (n + 1)

theorem P4000952237766351123.correct : P4000952237766351123.Spec := by
  intro n
  simp only [A087695, Nat.add_sub_cancel]

end A087695

/-! ## A087695.P6741993451713589641

`A023201(n+1)+3`
-/

namespace A087695.P6741993451713589641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) + 3

end

end A087695.P6741993451713589641

namespace A087695

/-- `A023201(n+1)+3` -/
def P6741993451713589641.Spec : Prop :=
  ∀ n, P6741993451713589641.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P9454392095195974693

`2*A088763(n+1)`
-/

namespace A087695.P9454392095195974693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088763 (n + 1)

end

end A087695.P9454392095195974693

namespace A087695

/-- `2*A088763(n+1)` -/
def P9454392095195974693.Spec : Prop :=
  ∀ n, P9454392095195974693.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P15568898283200226107

`A104010(n+1)/2`
-/

namespace A087695.P15568898283200226107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104010 (n + 1) : ℚ) / 2

end

end A087695.P15568898283200226107

namespace A087695

/-- `A104010(n+1)/2` -/
def P15568898283200226107.Spec : Prop :=
  ∀ n, P15568898283200226107.a n = (A087695 (n + 1) : ℚ)

end A087695

/-! ## A087695.P17868403813825871001

`ceil(sqrt(A111192(n+1)))`
-/

namespace A087695.P17868403813825871001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A111192 (n + 1) : ℝ)⌉

end

end A087695.P17868403813825871001

namespace A087695

/-- `ceil(sqrt(A111192(n+1)))` -/
def P17868403813825871001.Spec : Prop :=
  ∀ n, P17868403813825871001.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P7488669581691485418

`A104010(n+1)-A088763(n+1)-A088763(n+1)`
-/

namespace A087695.P7488669581691485418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104010 (n + 1) - A088763 (n + 1) - A088763 (n + 1)

end

end A087695.P7488669581691485418

namespace A087695

/-- `A104010(n+1)-A088763(n+1)-A088763(n+1)` -/
def P7488669581691485418.Spec : Prop :=
  ∀ n, P7488669581691485418.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P13103634799651329098

`A067831(n+2)-3`
-/

namespace A087695.P13103634799651329098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 2) - 3

end

end A087695.P13103634799651329098

namespace A087695

/-- `A067831(n+2)-3` -/
def P13103634799651329098.Spec : Prop :=
  ∀ n, P13103634799651329098.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P9892321368557627293

`A172071(n+2)-3`
-/

namespace A087695.P9892321368557627293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 2) - 3

end

end A087695.P9892321368557627293

namespace A087695

/-- `A172071(n+2)-3` -/
def P9892321368557627293.Spec : Prop :=
  ∀ n, P9892321368557627293.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P3542737076866856153

`A172988(n+2)-3`
-/

namespace A087695.P3542737076866856153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 2) - 3

end

end A087695.P3542737076866856153

namespace A087695

/-- `A172988(n+2)-3` -/
def P3542737076866856153.Spec : Prop :=
  ∀ n, P3542737076866856153.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P12473612379173710177

`(A046117(n+1)+p?[A015914(n+1)])/2`
-/

namespace A087695.P12473612379173710177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046117 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2

end

end A087695.P12473612379173710177

namespace A087695

/-- `(A046117(n+1)+p?[A015914(n+1)])/2` -/
def P12473612379173710177.Spec : Prop :=
  ∀ n, P12473612379173710177.a n = (A087695 (n + 1) : ℚ)

end A087695

/-! ## A087695.P10294343375100748633

`p?[A262084(n+1)]+3`
-/

namespace A087695.P10294343375100748633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A087695.P10294343375100748633

namespace A087695

/-- `p?[A262084(n+1)]+3` -/
def P10294343375100748633.Spec : Prop :=
  ∀ n, P10294343375100748633.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P4785645798478093332

`A088763(n+1)+record[A088763(A117358(n+1))]`
-/

namespace A087695.P4785645798478093332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (A117358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087695.P4785645798478093332

namespace A087695

/-- `A088763(n+1)+record[A088763(A117358(n+1))]` -/
def P4785645798478093332.Spec : Prop :=
  ∀ n, P4785645798478093332.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P7727308117983949106

`A156274(Δ[n²])+3`
-/

namespace A087695.P7727308117983949106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A087695.P7727308117983949106

namespace A087695

/-- `A156274(Δ[n²])+3` -/
def P7727308117983949106.Spec : Prop :=
  ∀ n, P7727308117983949106.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P2489885305693604394

`p?[A000040(n+1)+6]-3`
-/

namespace A087695.P2489885305693604394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3

end

end A087695.P2489885305693604394

namespace A087695

/-- `p?[A000040(n+1)+6]-3` -/
def P2489885305693604394.Spec : Prop :=
  ∀ n, P2489885305693604394.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P7819443096135029756

`p?[A006093(n+1)+7]-3`
-/

namespace A087695.P7819443096135029756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3

end

end A087695.P7819443096135029756

namespace A087695

/-- `p?[A006093(n+1)+7]-3` -/
def P7819443096135029756.Spec : Prop :=
  ∀ n, P7819443096135029756.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P5304976137429917187

`A086801(A172072(n+2))`
-/

namespace A087695.P5304976137429917187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (A172072 (n + 2)).toNat

end

end A087695.P5304976137429917187

namespace A087695

/-- `A086801(A172072(n+2))` -/
def P5304976137429917187.Spec : Prop :=
  ∀ n, P5304976137429917187.a n = A087695 (n + 1)

end A087695

/-! ## A087695.P16177934618573934638

`∩[A086801(n+1), A113935(n+1)]`
-/

namespace A087695.P16177934618573934638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087695.P16177934618573934638

namespace A087695

/-- `∩[A086801(n+1), A113935(n+1)]` -/
def P16177934618573934638.Spec : Prop :=
  ∀ n, (P16177934618573934638.a n : ℤ) = A087695 (n + 1)

end A087695

/-! ## A087695.P9909250219594828363

`∩[A113935(n+1), A154115(n+1)]`
-/

namespace A087695.P9909250219594828363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087695.P9909250219594828363

namespace A087695

/-- `∩[A113935(n+1), A154115(n+1)]` -/
def P9909250219594828363.Spec : Prop :=
  ∀ n, (P9909250219594828363.a n : ℤ) = A087695 (n + 1)

end A087695

/-! ## A087695.P10421498753232524087

`∩[A086801(n+1), A298252(n+1)]`
-/

namespace A087695.P10421498753232524087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087695.P10421498753232524087

namespace A087695

/-- `∩[A086801(n+1), A298252(n+1)]` -/
def P10421498753232524087.Spec : Prop :=
  ∀ n, (P10421498753232524087.a n : ℤ) = A087695 (n + 1)

end A087695

/-! ## A087695.P5226980684061291984

`∩[A154115(n+1), A298252(n+1)]`
-/

namespace A087695.P5226980684061291984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087695.P5226980684061291984

namespace A087695

/-- `∩[A154115(n+1), A298252(n+1)]` -/
def P5226980684061291984.Spec : Prop :=
  ∀ n, (P5226980684061291984.a n : ℤ) = A087695 (n + 1)

end A087695

/-!
# A087696: Numbers n such that n + 5 and n - 5 are both prime.

The programs for A087696, there is no canonical definition to state claims against.
-/

/-! ## A087696.P6903973480175364074

`2*A088765(n+1)`
-/

namespace A087696.P6903973480175364074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088765 (n + 1)

end

end A087696.P6903973480175364074

/-! ## A087696.P10161458189690028406

`A092146(n+1)-5`
-/

namespace A087696.P10161458189690028406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092146 (n + 1) - 5

end

end A087696.P10161458189690028406

/-! ## A087696.P5481143893652004380

`A088765(A000027(n+1))+A088765(n+1)`
-/

namespace A087696.P5481143893652004380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088765 (A000027 (n + 1)).toNat + A088765 (n + 1)

end

end A087696.P5481143893652004380

/-! ## A087696.P1289512799676242471

`A140445(2*n+1)+5`
-/

namespace A087696.P1289512799676242471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (2 * n + 1) + 5

end

end A087696.P1289512799676242471

/-! ## A087696.P4979970170978909906

`p?[A175225(n+1)]-5`
-/

namespace A087696.P4979970170978909906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5

end

end A087696.P4979970170978909906

/-! ## A087696.P17837675948505059992

`p?[A040976(n+1)-8]+5`
-/

namespace A087696.P17837675948505059992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5

end

end A087696.P17837675948505059992

/-! ## A087696.P17690047911893567132

`p?[A000040(n+1)+10]-5`
-/

namespace A087696.P17690047911893567132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5

end

end A087696.P17690047911893567132

/-! ## A087696.P5178259788887215453

`abs(5-p?[A008864(n+1)+9])`
-/

namespace A087696.P5178259788887215453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A087696.P5178259788887215453

/-! ## A087696.P7324646285889542909

`∩[A175222(n+1), A173064(n+3)]`
-/

namespace A087696.P7324646285889542909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087696.P7324646285889542909

/-! ## A087696.P1549617221913708221

`2*∩[A089038(n+1), A089253(n+1)]`
-/

namespace A087696.P1549617221913708221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087696.P1549617221913708221

/-! ## A087696.P10839933447309560105

`A004277(A088765(n+1))`
-/

namespace A087696.P10839933447309560105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088765 (n + 1)).toNat

end

end A087696.P10839933447309560105

/-! ## A087696.P14098010903665610142

`A020710(A015916(n+1))`
-/

namespace A087696.P14098010903665610142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A015916 (n + 1)).toNat

end

end A087696.P14098010903665610142

/-! ## A087696.P5453955822328705998

`A023447(A092146(n+1))`
-/

namespace A087696.P5453955822328705998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A092146 (n + 1)).toNat

end

end A087696.P5453955822328705998

/-! ## A087696.P616073269225130479

`A023452(2*A092146(n+1))/2`
-/

namespace A087696.P616073269225130479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023452 (2 * A092146 (n + 1)).toNat : ℚ) / 2

end

end A087696.P616073269225130479

/-! ## A087696.P18426442778271458254

`A088765(n+1)+record[A088765(A204123(n+1))]`
-/

namespace A087696.P18426442778271458254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088765 (A204123 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088765 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087696.P18426442778271458254

/-!
# A087697: Numbers k such that k + 7 and k - 7 are both prime.

The programs for A087697, there is no canonical definition to state claims against.
-/

/-! ## A087697.P3646509566826863071

`2*A088767(n+1)`
-/

namespace A087697.P3646509566826863071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088767 (n + 1)

end

end A087697.P3646509566826863071

/-! ## A087697.P16529877090703670470

`A153417(n+1)+7`
-/

namespace A087697.P16529877090703670470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1) + 7

end

end A087697.P16529877090703670470

/-! ## A087697.P3975876615100874484

`A098933(n+1)-7`
-/

namespace A087697.P3975876615100874484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098933 (n + 1) - 7

end

end A087697.P3975876615100874484

/-! ## A087697.P7776695882664214301

`A140446(2*n+1)+7`
-/

namespace A087697.P7776695882664214301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140446 (2 * n + 1) + 7

end

end A087697.P7776695882664214301

/-! ## A087697.P3797766531631453900

`p?[A000040(n+1)+14]-7`
-/

namespace A087697.P3797766531631453900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7

end

end A087697.P3797766531631453900

/-! ## A087697.P6492792862840990933

`2*∩[A089192(n+1), A105760(n+1)]`
-/

namespace A087697.P6492792862840990933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087697.P6492792862840990933

/-! ## A087697.P12220326056705163033

`2*∩[A089192(n+1), A161720(n+3)]`
-/

namespace A087697.P12220326056705163033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087697.P12220326056705163033

/-! ## A087697.P12689133769089325837

`record[A006530(A000040(n+2)+14)-7]`
-/

namespace A087697.P12689133769089325837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) + 14).toNat - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087697.P12689133769089325837

/-! ## A087697.P16098374057921919258

`2*abs((p?[A209259(n)+14]-7)/2)`
-/

namespace A087697.P16098374057921919258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n + 14

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * |(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 7 : ℚ) / 2|

end

end A087697.P16098374057921919258

/-! ## A087697.P1614743419545023251

`A004277(A088767(n+1))`
-/

namespace A087697.P1614743419545023251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088767 (n + 1)).toNat

end

end A087697.P1614743419545023251

/-! ## A087697.P8386409203897717927

`A023449(A098933(n+1))`
-/

namespace A087697.P8386409203897717927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A098933 (n + 1)).toNat

end

end A087697.P8386409203897717927

/-! ## A087697.P1830137275370034407

`A020719(A153417(n+1))`
-/

namespace A087697.P1830137275370034407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A153417 (n + 1)).toNat

end

end A087697.P1830137275370034407

/-! ## A087697.P16087674450642409082

`p?[A023456(A000040(n+1))]+7`
-/

namespace A087697.P16087674450642409082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023456 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 7

end

end A087697.P16087674450642409082

/-! ## A087697.P4258287009869967660

`record[A014963(A000040(n+2)+14)]-7`
-/

namespace A087697.P4258287009869967660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000040 (n + 2) + 14).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 7

end

end A087697.P4258287009869967660

/-!
# A087698: Triangle read by rows, giving T(n,k) = maximum number of examples (Boolean inputs) at Hamming distance 2 for symmetric Boolean functions that can have different outputs.

The programs for A087698, the canonical program `A087698.P14480629531617901505` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087698 has offset 0).

The definition of A087698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087698.P14480629531617901505

`abs(A159853(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A087698

/-- `abs(A159853(n))` -/
def P14480629531617901505.Spec : Prop :=
  ∀ n, P14480629531617901505.a n = A087698 n

theorem P14480629531617901505.correct : P14480629531617901505.Spec := by
  intro n
  simp only [A087698]

end A087698

/-! ## A087698.P2349525729759945610

`A159853(char[1]+n)`
-/

namespace A087698.P2349525729759945610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A087698.P2349525729759945610

namespace A087698

/-- `A159853(char[1]+n)` -/
def P2349525729759945610.Spec : Prop :=
  ∀ n, P2349525729759945610.a n = A087698 n

end A087698

/-! ## A087698.P10884297026843244178

`A028326(n)-A028275(n)`
-/

namespace A087698.P10884297026843244178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A028275 n

end

end A087698.P10884297026843244178

namespace A087698

/-- `A028326(n)-A028275(n)` -/
def P10884297026843244178.Spec : Prop :=
  ∀ n, P10884297026843244178.a n = A087698 n

end A087698

/-! ## A087698.P14283602712844959096

`gcd(A000038(n), A159853(n))`
-/

namespace A087698.P14283602712844959096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A159853 n)

end

end A087698.P14283602712844959096

namespace A087698

/-- `gcd(A000038(n), A159853(n))` -/
def P14283602712844959096.Spec : Prop :=
  ∀ n, (P14283602712844959096.a n : ℤ) = A087698 n

end A087698

/-! ## A087698.P4566207984325747160

`lcm(A020985(n), A159853(n))`
-/

namespace A087698.P4566207984325747160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A159853 n)

end

end A087698.P4566207984325747160

namespace A087698

/-- `lcm(A020985(n), A159853(n))` -/
def P4566207984325747160.Spec : Prop :=
  ∀ n, (P4566207984325747160.a n : ℤ) = A087698 n

end A087698

/-! ## A087698.P1252571424138760070

`A109128(n)+1-A028275(n)`
-/

namespace A087698.P1252571424138760070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A028275 n)

end

end A087698.P1252571424138760070

namespace A087698

/-- `A109128(n)+1-A028275(n)` -/
def P1252571424138760070.Spec : Prop :=
  ∀ n, P1252571424138760070.a n = A087698 n

end A087698

/-! ## A087698.P15750702826237856230

`A072405(n)+1-A323211(n)`
-/

namespace A087698.P15750702826237856230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n + (1 - A323211 n)

end

end A087698.P15750702826237856230

namespace A087698

/-- `A072405(n)+1-A323211(n)` -/
def P15750702826237856230.Spec : Prop :=
  ∀ n, P15750702826237856230.a n = A087698 n

end A087698

/-! ## A087698.P6147210303819498260

`2*A007318(n)-A028275(n)`
-/

namespace A087698.P6147210303819498260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A028275 n

end

end A087698.P6147210303819498260

namespace A087698

/-- `2*A007318(n)-A028275(n)` -/
def P6147210303819498260.Spec : Prop :=
  ∀ n, P6147210303819498260.a n = A087698 n

end A087698

/-! ## A087698.P14942565357753920275

`2*A072405(n)-A007318(n)`
-/

namespace A087698.P14942565357753920275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072405 n - A007318 n

end

end A087698.P14942565357753920275

namespace A087698

/-- `2*A072405(n)-A007318(n)` -/
def P14942565357753920275.Spec : Prop :=
  ∀ n, P14942565357753920275.a n = A087698 n

end A087698

/-! ## A087698.P7830327622783536199

`2*A072405(n)-abs(A108086(n))`
-/

namespace A087698.P7830327622783536199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072405 n - |A108086 n|

end

end A087698.P7830327622783536199

namespace A087698

/-- `2*A072405(n)-abs(A108086(n))` -/
def P7830327622783536199.Spec : Prop :=
  ∀ n, P7830327622783536199.a n = A087698 n

end A087698

/-! ## A087698.P7303360024930162953

`2*A072405(n)-abs(A130595(n))`
-/

namespace A087698.P7303360024930162953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072405 n - |A130595 n|

end

end A087698.P7303360024930162953

namespace A087698

/-- `2*A072405(n)-abs(A130595(n))` -/
def P7303360024930162953.Spec : Prop :=
  ∀ n, P7303360024930162953.a n = A087698 n

end A087698

/-! ## A087698.P4476970852584521056

`2*A072405(n)-sqrt(A008459(n))`
-/

namespace A087698.P4476970852584521056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A072405 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A087698.P4476970852584521056

namespace A087698

/-- `2*A072405(n)-sqrt(A008459(n))` -/
def P4476970852584521056.Spec : Prop :=
  ∀ n, P4476970852584521056.a n = (A087698 n : ℝ)

end A087698

/-! ## A087698.P12964852905674701693

`2*A072405(n)-Δ[A102363(n)]`
-/

namespace A087698.P12964852905674701693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072405 n - (f1 (n + 1) - f1 n)

end

end A087698.P12964852905674701693

namespace A087698

/-- `2*A072405(n)-Δ[A102363(n)]` -/
def P12964852905674701693.Spec : Prop :=
  ∀ n, P12964852905674701693.a n = A087698 n

end A087698

/-! ## A087698.P2329965172097701364

`A159853(n)^floor(root(2, A007318(n)))`
-/

namespace A087698.P2329965172097701364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159853 n : ℚ) ^ (⌊(2 : ℝ) ^ (1 / (A007318 n : ℝ))⌋ : ℤ)

end

end A087698.P2329965172097701364

namespace A087698

/-- `A159853(n)^floor(root(2, A007318(n)))` -/
def P2329965172097701364.Spec : Prop :=
  ∀ n, P2329965172097701364.a n = (A087698 n : ℚ)

end A087698

/-! ## A087698.P1162634701180991525

`A007318(n)+A072405(n)-A028262(n)`
-/

namespace A087698.P1162634701180991525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A072405 n - A028262 n)

end

end A087698.P1162634701180991525

namespace A087698

/-- `A007318(n)+A072405(n)-A028262(n)` -/
def P1162634701180991525.Spec : Prop :=
  ∀ n, P1162634701180991525.a n = A087698 n

end A087698

/-! ## A087698.P3521833023392963872

`A028262(n)+A072405(n)-A028275(n)`
-/

namespace A087698.P3521833023392963872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + (A072405 n - A028275 n)

end

end A087698.P3521833023392963872

namespace A087698

/-- `A028262(n)+A072405(n)-A028275(n)` -/
def P3521833023392963872.Spec : Prop :=
  ∀ n, P3521833023392963872.a n = A087698 n

end A087698

/-! ## A087698.P10340819971461406604

`A028275(n)+A072405(n)-A028313(n)`
-/

namespace A087698.P10340819971461406604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n + (A072405 n - A028313 n)

end

end A087698.P10340819971461406604

namespace A087698

/-- `A028275(n)+A072405(n)-A028313(n)` -/
def P10340819971461406604.Spec : Prop :=
  ∀ n, P10340819971461406604.a n = A087698 n

end A087698

/-! ## A087698.P16763801532786848775

`gcd(A159853(n)+A089812(n), A089812(n))`
-/

namespace A087698.P16763801532786848775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159853 n + A089812 n) (A089812 n)

end

end A087698.P16763801532786848775

namespace A087698

/-- `gcd(A159853(n)+A089812(n), A089812(n))` -/
def P16763801532786848775.Spec : Prop :=
  ∀ n, (P16763801532786848775.a n : ℤ) = A087698 n

end A087698

/-! ## A087698.P17182945212333229283

`and(A159853(n), A286865(n))`
-/

namespace A087698.P17182945212333229283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159853 n) (A286865 n)

end

end A087698.P17182945212333229283

namespace A087698

/-- `and(A159853(n), A286865(n))` -/
def P17182945212333229283.Spec : Prop :=
  ∀ n, P17182945212333229283.a n = A087698 n

end A087698

/-! ## A087698.P11197756283708554529

`and(A077885(n), A159853(n))`
-/

namespace A087698.P11197756283708554529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077885 n) (A159853 n)

end

end A087698.P11197756283708554529

namespace A087698

/-- `and(A077885(n), A159853(n))` -/
def P11197756283708554529.Spec : Prop :=
  ∀ n, P11197756283708554529.a n = A087698 n

end A087698

/-!
# A087699: Greater twin prime p such that 2^p-1 is composite.

The programs for A087699, there is no canonical definition to state claims against.
-/

/-! ## A087699.P13314073770453062209

`p?[A054723(n+1)-2]+2`
-/

namespace A087699.P13314073770453062209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A087699.P13314073770453062209

/-! ## A087699.P5394979384464118518

`filter[A054723(n+1), A353464(#)]`
-/

namespace A087699.P5394979384464118518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353464 (f1 j).toNat = 1) n)

end

end A087699.P5394979384464118518

/-! ## A087699.P4084952753535703339

`∩[A054723(n+1), A238327(n)]`
-/

namespace A087699.P4084952753535703339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238327 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P4084952753535703339

/-! ## A087699.P3159851550847067160

`A007429(p?[A054723(n+1)-2])`
-/

namespace A087699.P3159851550847067160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A087699.P3159851550847067160

/-! ## A087699.P10374742507104675465

`A151800(p?[A054723(n+1)-2])`
-/

namespace A087699.P10374742507104675465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A087699.P10374742507104675465

/-! ## A087699.P17074214624478194350

`∩[A006512(n+1), A054723(n+1)]`
-/

namespace A087699.P17074214624478194350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P17074214624478194350

/-! ## A087699.P5850048915808920553

`∩[A048974(n+1), A054723(n+1)]`
-/

namespace A087699.P5850048915808920553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P5850048915808920553

/-! ## A087699.P17994303958570973147

`∩[A052147(n+1), A054723(n+1)]`
-/

namespace A087699.P17994303958570973147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P17994303958570973147

/-! ## A087699.P6677787050372381799

`∩[A054723(n+1), A067187(n+1)]`
-/

namespace A087699.P6677787050372381799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P6677787050372381799

/-! ## A087699.P6364351725582780956

`∩[A054723(n+1), A067531(n+1)]`
-/

namespace A087699.P6364351725582780956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P6364351725582780956

/-! ## A087699.P4145792893450201822

`∩[A054723(n+1), A067829(n+1)]`
-/

namespace A087699.P4145792893450201822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P4145792893450201822

/-! ## A087699.P706916521622873705

`∩[A054723(n+1), A072281(n+1)]`
-/

namespace A087699.P706916521622873705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P706916521622873705

/-! ## A087699.P8288320838765244222

`∩[A054723(n+1), A075862(n+1)]`
-/

namespace A087699.P8288320838765244222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P8288320838765244222

/-! ## A087699.P7918767067582903682

`∩[A054723(n+1), A078892(n+1)]`
-/

namespace A087699.P7918767067582903682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P7918767067582903682

/-! ## A087699.P16658283565838654837

`∩[A054723(n+1), A079445(n+1)]`
-/

namespace A087699.P16658283565838654837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P16658283565838654837

/-! ## A087699.P10820122750897565690

`∩[A054723(n+1), A088685(n+1)]`
-/

namespace A087699.P10820122750897565690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P10820122750897565690

/-! ## A087699.P2386238502481609564

`∩[A054723(n+1), A123123(n+1)]`
-/

namespace A087699.P2386238502481609564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P2386238502481609564

/-! ## A087699.P15176135500742569525

`∩[A054723(n+1), A139690(n+1)]`
-/

namespace A087699.P15176135500742569525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P15176135500742569525

/-! ## A087699.P7242288181820132337

`∩[A054723(n+1), A157048(n+1)]`
-/

namespace A087699.P7242288181820132337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P7242288181820132337

/-! ## A087699.P6317699316982647267

`∩[A054723(n+1), A172057(n+1)]`
-/

namespace A087699.P6317699316982647267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087699.P6317699316982647267

