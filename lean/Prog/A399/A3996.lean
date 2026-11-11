import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

/-!
# A399600: a(1) = 1, a(n) = binomial(pi(p)+m, m) for prime power p^m = A000961(n), where pi = A000720.

The programs for A399600, the canonical program `A399600.P18138194940883612281` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399600 has offset 1).

The definition of A399600 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A238690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399600.P18138194940883612281

`A238690(A000961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A399600

/-- `A238690(A000961(n+1))` -/
def P18138194940883612281.Spec : Prop :=
  ∀ n, P18138194940883612281.a n = A399600 (n + 1)

theorem P18138194940883612281.correct : P18138194940883612281.Spec := by
  intro n
  simp only [A399600, Nat.add_sub_cancel]

end A399600

/-! ## A399600.P1422806165061102722

`A238690(sqrt(A056798(1+n)))`
-/

namespace A399600.P1422806165061102722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (1 + n) : ℝ))).toNat

end

end A399600.P1422806165061102722

namespace A399600

/-- `A238690(sqrt(A056798(1+n)))` -/
def P1422806165061102722.Spec : Prop :=
  ∀ n, P1422806165061102722.a n = A399600 (n + 1)

end A399600

/-! ## A399600.P9523075111337624382

`A238690(record[A028233(n+1)])`
-/

namespace A399600.P9523075111337624382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A399600.P9523075111337624382

namespace A399600

/-- `A238690(record[A028233(n+1)])` -/
def P9523075111337624382.Spec : Prop :=
  ∀ n, P9523075111337624382.a n = A399600 (n + 1)

end A399600

/-! ## A399600.P8104395286424512925

`A238690(A138929(n+1)/2)`
-/

namespace A399600.P8104395286424512925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A399600.P8104395286424512925

namespace A399600

/-- `A238690(A138929(n+1)/2)` -/
def P8104395286424512925.Spec : Prop :=
  ∀ n, P8104395286424512925.a n = A399600 (n + 1)

end A399600

/-! ## A399600.P5144219396659964907

`A238690(A001597(n+1)-A377043(n+1))`
-/

namespace A399600.P5144219396659964907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A001597 (n + 1) - A377043 (n + 1)).toNat

end

end A399600.P5144219396659964907

namespace A399600

/-- `A238690(A001597(n+1)-A377043(n+1))` -/
def P5144219396659964907.Spec : Prop :=
  ∀ n, P5144219396659964907.a n = A399600 (n + 1)

end A399600

/-!
# A399601: Number of nonisomorphic rectangular ideal extensions of order n of left zero (trivial) doppelsemigroups by null quotients.

The programs for A399601, there is no canonical definition to state claims against.
-/

/-! ## A399601.P10368478701728017713

`A112325(A129366(n))`
-/

namespace A399601.P10368478701728017713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A129366 n).toNat

end

end A399601.P10368478701728017713

/-! ## A399601.P1279897473946445308

`A347625(A356932(n))`
-/

namespace A399601.P1279897473946445308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A356932 n).toNat

end

end A399601.P1279897473946445308

/-! ## A399601.P8916174763629124633

`A326595(2*(n+1))+A321994(n+1)`
-/

namespace A399601.P8916174763629124633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 (2 * (n + 1)) + A321994 (n + 1)

end

end A399601.P8916174763629124633

/-! ## A399601.P1236154786724109026

`A219254(A334270(n))+A057513(n)`
-/

namespace A399601.P1236154786724109026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219254 (A334270 n).toNat + A057513 n

end

end A399601.P1236154786724109026

/-!
# A399604: Squares k such that A161351(k) is a prime.

The programs for A399604, there is no canonical definition to state claims against.
-/

/-! ## A399604.P625471623636060162

`∑{digits}[A018427(n+1)*A005187(n)+1, #]²`
-/

namespace A399604.P625471623636060162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018427 (n + 1) * A005187 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

end

end A399604.P625471623636060162

/-! ## A399604.P12745746129021565606

`(A051105(A119033(n+1))+A028837(n+1))²`
-/

namespace A399604.P12745746129021565606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051105 (A119033 (n + 1)).toNat + A028837 (n + 1)) ^ 2

end

end A399604.P12745746129021565606

/-!
# A399607: Level of n in a poset graph that assigns the next lower level to a divisor <= sqrt(n).

The programs for A399607, there is no canonical definition to state claims against.
-/

/-! ## A399607.P7581973288755295739

`A316112(A033676(n+1)²)`
-/

namespace A399607.P7581973288755295739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316112 (A033676 (n + 1) ^ 2).toNat

end

end A399607.P7581973288755295739

/-! ## A399607.P9706288827551564841

`A304090(A162348(Δ[n²])²)%4`
-/

namespace A399607.P9706288827551564841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304090 (A162348 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2).toNat) 4

end

end A399607.P9706288827551564841

/-! ## A399607.P15128831077763846375

`A001222(A033676(n+1)*A073648(n+1))`
-/

namespace A399607.P15128831077763846375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033676 (n + 1) * A073648 (n + 1)).toNat

end

end A399607.P15128831077763846375

/-! ## A399607.P7885217021638359569

`A001222(A033676(n+1)*A142313(n+1))`
-/

namespace A399607.P7885217021638359569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033676 (n + 1) * A142313 (n + 1)).toNat

end

end A399607.P7885217021638359569

/-! ## A399607.P3335763418656608910

`A277892(A091799(n+5)^A033676(n+1))`
-/

namespace A399607.P3335763418656608910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (SequenceMachineLib.roundAway ((A091799 (n + 5) : ℚ) ^ (A033676 (n + 1) : ℤ))).toNat

end

end A399607.P3335763418656608910

/-! ## A399607.P5326074926118526293

`A001222(lcm(A033676(n+1), A073648(n+1)))`
-/

namespace A399607.P5326074926118526293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A033676 (n + 1)) (A073648 (n + 1)))

end

end A399607.P5326074926118526293

/-! ## A399607.P4168747543054363249

`A060741(A033676(n+1)%A391638(n+3))`
-/

namespace A399607.P4168747543054363249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060741 (Int.tmod (A033676 (n + 1)) (A391638 (n + 3))).toNat

end

end A399607.P4168747543054363249

/-! ## A399607.P15343538186021807330

`A001222(A033676(n+1)*A094524(3*n+5))`
-/

namespace A399607.P15343538186021807330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033676 (n + 1) * A094524 (3 * n + 5)).toNat

end

end A399607.P15343538186021807330

/-! ## A399607.P17161844687582139185

`A001222(A033676(n+1)*A262830(n+1))`
-/

namespace A399607.P17161844687582139185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033676 (n + 1) * A262830 (n + 1)).toNat

end

end A399607.P17161844687582139185

/-! ## A399607.P9863511252428138004

`A001222(A033676(n+1)*A215417(2*n+1))`
-/

namespace A399607.P9863511252428138004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033676 (n + 1) * A215417 (2 * n + 1)).toNat

end

end A399607.P9863511252428138004

/-!
# A399608: Primes p such that A161351(p) is a prime.

The programs for A399608, there is no canonical definition to state claims against.
-/

/-! ## A399608.P14830845885840932624

`filter[A020639(2*n+3), A003415(A161351(#))]`
-/

namespace A399608.P14830845885840932624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003415 (A161351 (f1 j).toNat).toNat = 1) n)

end

end A399608.P14830845885840932624

/-!
# A399609: Table of T(n, k) read by antidiagonals: k-dimensional simplex coordinate; repeat j exactly binomial(j+k-1, k-1) times, for n >= 0, k >= 1.

The programs for A399609, there is no canonical definition to state claims against.
-/

/-! ## A399609.P7257487502565674777

`log2(A397675(1+n))`
-/

namespace A399609.P7257487502565674777
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A397675 (1 + n) : ℝ)

end

end A399609.P7257487502565674777

/-! ## A399609.P7750125457051769547

`A067586(A061579(n))`
-/

namespace A399609.P7750125457051769547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067586 (A061579 n).toNat

end

end A399609.P7750125457051769547

/-! ## A399609.P5067118212355867896

`A067586(A038722(2+n))`
-/

namespace A399609.P5067118212355867896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067586 (A038722 (2 + n)).toNat

end

end A399609.P5067118212355867896

/-! ## A399609.P14130527578066772626

`A067586(A278818(n+1))`
-/

namespace A399609.P14130527578066772626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067586 (A278818 (n + 1)).toNat

end

end A399609.P14130527578066772626

/-! ## A399609.P11122647659837755356

`A001222(A397675(n+1))`
-/

namespace A399609.P11122647659837755356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A397675 (n + 1)).toNat

end

end A399609.P11122647659837755356

/-! ## A399609.P6610043897890888730

`A000523(A397675(n+1))`
-/

namespace A399609.P6610043897890888730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A397675 (n + 1)).toNat

end

end A399609.P6610043897890888730

/-! ## A399609.P3785517580542011812

`A000120(A397675(n+1)-1)`
-/

namespace A399609.P3785517580542011812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A397675 (n + 1) - 1).toNat

end

end A399609.P3785517580542011812

/-! ## A399609.P6023067289222555368

`A007814(lcm(A132429(3*n), A397675(n+1)))`
-/

namespace A399609.P6023067289222555368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm (A132429 (3 * n)) (A397675 (n + 1)))

end

end A399609.P6023067289222555368

/-! ## A399609.P8557377056974133417

`A067029(A000035(2*n+1)*A397675(n+1))`
-/

namespace A399609.P8557377056974133417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A000035 (2 * n + 1) * A397675 (n + 1)).toNat

end

end A399609.P8557377056974133417

/-! ## A399609.P6002833020489695894

`A023416(A067576(n+1))`
-/

namespace A399609.P6002833020489695894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A067576 (n + 1)).toNat

end

end A399609.P6002833020489695894

/-!
# A399612: Labels of successive landing squares of a rook on the Ulam spiral, starting at 2 and repeatedly moving to the smallest prime reachable without revisiting or passing over an earlier landing square.

The programs for A399612, there is no canonical definition to state claims against.
-/

/-! ## A399612.P18111526024442998634

`A336447(A043316(n+2))`
-/

namespace A399612.P18111526024442998634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336447 (A043316 (n + 2)).toNat

end

end A399612.P18111526024442998634

/-! ## A399612.P12949414228524979282

`A336447(A044913(n+2))`
-/

namespace A399612.P12949414228524979282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336447 (A044913 (n + 2)).toNat

end

end A399612.P12949414228524979282

/-! ## A399612.P8813930907172897592

`A336447(A061147(n+2))`
-/

namespace A399612.P8813930907172897592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336447 (A061147 (n + 2)).toNat

end

end A399612.P8813930907172897592

/-! ## A399612.P17925443975654645359

`A336447(A061497(n+2))`
-/

namespace A399612.P17925443975654645359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336447 (A061497 (n + 2)).toNat

end

end A399612.P17925443975654645359

/-! ## A399612.P17519897172421523206

`A336447(A068634(n+2))`
-/

namespace A399612.P17519897172421523206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336447 (A068634 (n + 2)).toNat

end

end A399612.P17519897172421523206

/-!
# A399615: Number of non-isomorphic perfect hierarchical matching (PHM) trees on 2^n vertices.

The programs for A399615, the canonical program `A399615.P14147135890609384364` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399615 has offset 1).

The definition of A399615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399615.P14147135890609384364

`2^(2^(n+1)-2*(n+1)-1)+2^(2^n-(n+1)-1)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399615

/-- `2^(2^(n+1)-2*(n+1)-1)+2^(2^n-(n+1)-1)` -/
def P14147135890609384364.Spec : Prop :=
  ∀ n, P14147135890609384364.a n = (A399615 (n + 1) : ℚ)

end A399615

/-! ## A399615.P1181875692468008325

`A007582(2^n-(n+1))`
-/

namespace A399615.P1181875692468008325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (2 ^ n - (n + 1))

end

end A399615.P1181875692468008325

namespace A399615

/-- `A007582(2^n-(n+1))` -/
def P1181875692468008325.Spec : Prop :=
  ∀ n, P1181875692468008325.a n = A399615 (n + 1)

end A399615

/-!
# A399617: Number of ordered n-tuples of nonempty subsets of an n-element set (repetitions allowed) such that every two entries have nonempty intersection.

The programs for A399617, there is no canonical definition to state claims against.
-/

/-! ## A399617.P5372069646092933008

`A055601(n+1)-A005020(n+1)`
-/

namespace A399617.P5372069646092933008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055601 (n + 1) - A005020 (n + 1)

end

end A399617.P5372069646092933008

/-! ## A399617.P4924643039581911019

`A002416(n+1)-(A005020(n+1)+2^(n+1)²-(2^(n+1)-1)^(n+1))`
-/

namespace A399617.P4924643039581911019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 (n + 1) - (A005020 (n + 1) + ((2 ^ (n + 1) ^ 2 : ℤ) - ((2 ^ (n + 1) : ℤ) - 1) ^ (n + 1)))

end

end A399617.P4924643039581911019

/-!
# A399619: Number of ordered n-edge multihypergraphs on n labeled vertices with no isolated vertex and with at least one vertex contained in every edge.

The programs for A399619, the canonical program `A399619.P17223841901192138433` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399619 has offset 1).

The definition of A399619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399619.P17223841901192138433

`(2^(n+1)-1)^(n+1)-(2^(n+1)-2)^(n+1)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399619

/-- `(2^(n+1)-1)^(n+1)-(2^(n+1)-2)^(n+1)` -/
def P17223841901192138433.Spec : Prop :=
  ∀ n, P17223841901192138433.a n = A399619 (n + 1)

theorem P17223841901192138433.correct : P17223841901192138433.Spec := by
  intro n
  simp only [A399619, Nat.add_sub_cancel]

end A399619

/-! ## A399619.P6271278170234973302

`A361257(2^(n+1)-2)`
-/

namespace A399619.P6271278170234973302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361257 (2 ^ (n + 1) - 2)

end

end A399619.P6271278170234973302

namespace A399619

/-- `A361257(2^(n+1)-2)` -/
def P6271278170234973302.Spec : Prop :=
  ∀ n, P6271278170234973302.a n = A399619 (n + 1)

end A399619

/-!
# A399624: Number of antichains of nonempty subsets of [n] whose elements have size at most 3.

The programs for A399624, there is no canonical definition to state claims against.
-/

/-! ## A399624.P4150358826322999251

`A340693(2^(1+n))`
-/

namespace A399624.P4150358826322999251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340693 (2 ^ (1 + n))

end

end A399624.P4150358826322999251

/-!
# A399625: Number of inequivalent ways (up to rotations and reflections of the board) to place 2 pawns on an n X n board such that n+2 nonattacking queens can be placed on the remaining squares.

The programs for A399625, there is no canonical definition to state claims against.
-/

/-! ## A399625.P16496371795495612047

`2*A342740(a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1`
-/

namespace A399625.P16496371795495612047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 1] fun n a =>
  2 * A342740 (a (n - 1) + 1).toNat

end

end A399625.P16496371795495612047

/-! ## A399625.P4355924770492820112

`∑[A085859(∏[A099741(n+1)])]`
-/

namespace A399625.P4355924770492820112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399625.P4355924770492820112

/-! ## A399625.P15121190565207683757

`floor(A384878(n+1)/A304379(n+2))`
-/

namespace A399625.P15121190565207683757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A384878 (n + 1) : ℚ) / (A304379 (n + 2) : ℚ)⌋

end

end A399625.P15121190565207683757

/-! ## A399625.P16879027647494523462

`A085854(or(A034709(n+1), A092490(n+1)))`
-/

namespace A399625.P16879027647494523462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 (Int.lor (A034709 (n + 1)) (A092490 (n + 1))).toNat

end

end A399625.P16879027647494523462

/-! ## A399625.P12349506303480697406

`floor(A046691(A209002(n+1))/A209002(n+4))`
-/

namespace A399625.P12349506303480697406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046691 (A209002 (n + 1)).toNat : ℚ) / (A209002 (n + 4) : ℚ)⌋

end

end A399625.P12349506303480697406

/-!
# A399627: a(n) is the number of residues modulo 2^n counted by A396966 that are not lifts of a residue counted by A396966 modulo 2^(n-1).

The programs for A399627, there is no canonical definition to state claims against.
-/

/-! ## A399627.P5853948592197565527

`A121900(A382060(n)-1)`
-/

namespace A399627.P5853948592197565527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A382060 n - 1).toNat

end

end A399627.P5853948592197565527

/-!
# A399630: a(n) is the smallest number m with exactly n divisors d whose first digit equals the last digit of m.

The programs for A399630, there is no canonical definition to state claims against.
-/

/-! ## A399630.P15619479208373892930

`A400613(n)%row(A153672(3*n+2))`
-/

namespace A399630.P15619479208373892930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400613 n) (SequenceMachineLib.triRow (A153672 (3 * n + 2)).toNat : ℤ)

end

end A399630.P15619479208373892930

/-! ## A399630.P7305627397141605118

`A400613(n)%A054799(A055156(n))`
-/

namespace A399630.P7305627397141605118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400613 n) (A054799 (A055156 n).toNat)

end

end A399630.P7305627397141605118

/-!
# A399631: Positions of records in A399629: integers m whose number of divisors d such that the first digit of d equals the last digit of m sets a new record.

The programs for A399631, there is no canonical definition to state claims against.
-/

/-! ## A399631.P17342589292849028745

`A399630(lt[A399630(n), A002385(3*n+2)])`
-/

namespace A399631.P17342589292849028745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399630 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399631.P17342589292849028745

/-! ## A399631.P6302651650643931753

`A399630(∑[A075214(2*(n+2))²%4]+n)`
-/

namespace A399631.P6302651650643931753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075214 (2 * (n + 2)) ^ 2) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399630 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A399631.P6302651650643931753

/-! ## A399631.P5542299988757208727

`filter[A399630(n), A399249(#)]`
-/

namespace A399631.P5542299988757208727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A399249 (f1 j).toNat = 1) n)

end

end A399631.P5542299988757208727

/-! ## A399631.P3207466604655624840

`filter[A399630(n+1), A286903(#)]`
-/

namespace A399631.P3207466604655624840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286903 (f1 j).toNat = 1) n)

end

end A399631.P3207466604655624840

/-!
# A399636: Number of weighted permutations of [n], where cycles are given weights 1, 1, 1/2, 1/3, 1/4, 1/5 ... .

The programs for A399636, there is no canonical definition to state claims against.
-/

/-! ## A399636.P14450096272293001900

`∑{#}[n, C(n, #)*2^#*(-1)^(n-#)*A005727(n-#)]`
-/

namespace A399636.P14450096272293001900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k * 2 ^ k : ℚ) * (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A005727 (n - k) : ℚ)

end

end A399636.P14450096272293001900

/-! ## A399636.P4640650982074667747

`∑{#}[n, C(n, #)*A203852(#)]`
-/

namespace A399636.P4640650982074667747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A203852 k

end

end A399636.P4640650982074667747

/-!
# A399637: Number of nonisomorphic right-Euclidean relations on n elements.

The programs for A399637, there is no canonical definition to state claims against.
-/

/-! ## A399637.P14247008507730967656

`A157271(A239909(2*n+1)+n²)`
-/

namespace A399637.P14247008507730967656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A239909 (2 * n + 1) + (n ^ 2 : ℤ)).toNat

end

end A399637.P14247008507730967656

/-! ## A399637.P14485801340083785062

`A325123(A000079(n))+A000108(n)`
-/

namespace A399637.P14485801340083785062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325123 (A000079 n).toNat + A000108 n

end

end A399637.P14485801340083785062

/-! ## A399637.P13311005103846194414

`A387778(n)+A338094(A275553(n))`
-/

namespace A399637.P13311005103846194414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 n + A338094 (A275553 n).toNat

end

end A399637.P13311005103846194414

/-!
# A399638: Number of nonisomorphic right-Euclidean relations on n elements having trivial automorphism group.

The programs for A399638, there is no canonical definition to state claims against.
-/

/-! ## A399638.P2864486625597304745

`A108602(A355229(n)+A232745(n+1))`
-/

namespace A399638.P2864486625597304745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A355229 n + A232745 (n + 1)).toNat

end

end A399638.P2864486625597304745

/-!
# A399641: Expansion of g^5/(3-2*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A399641, the canonical program `A399641.P6054218575875225660` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399641 has offset 0).

The definition of A399641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399641.P15103485407455323382

`(n+1)/6*A006256(n+1)`
-/

namespace A399641.P15103485407455323382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * (A006256 (n + 1) : ℚ)

end

end A399641.P15103485407455323382

namespace A399641

/-- `(n+1)/6*A006256(n+1)` -/
def P15103485407455323382.Spec : Prop :=
  ∀ n, P15103485407455323382.a n = (A399641 n : ℚ)

end A399641

/-! ## A399641.P6054218575875225660

`∑{#}[n, 2^#*C(#+2, 2)*C(3*n+4, n-#)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399641

/-- `∑{#}[n, 2^#*C(#+2, 2)*C(3*n+4, n-#)]` -/
def P6054218575875225660.Spec : Prop :=
  ∀ n, (P6054218575875225660.a n : ℤ) = A399641 n

theorem P6054218575875225660.correct : P6054218575875225660.Spec := by
  intro n
  simp only [A399641]

end A399641

/-!
# A399642: Expansion of g^6/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A399642, the canonical program `A399642.P1896916165972826017` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399642 has offset 0).

The definition of A399642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399642.P10200390828739278289

`(n+1)/8*A078995(n+1)`
-/

namespace A399642.P10200390828739278289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 8 * (A078995 (n + 1) : ℚ)

end

end A399642.P10200390828739278289

namespace A399642

/-- `(n+1)/8*A078995(n+1)` -/
def P10200390828739278289.Spec : Prop :=
  ∀ n, P10200390828739278289.a n = (A399642 n : ℚ)

end A399642

/-! ## A399642.P1896916165972826017

`∑{#}[n, 3^#*C(#+2, 2)*C(4*n+5, n-#)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399642

/-- `∑{#}[n, 3^#*C(#+2, 2)*C(4*n+5, n-#)]` -/
def P1896916165972826017.Spec : Prop :=
  ∀ n, (P1896916165972826017.a n : ℤ) = A399642 n

theorem P1896916165972826017.correct : P1896916165972826017.Spec := by
  intro n
  simp only [A399642]

end A399642

/-!
# A399643: Expansion of g^7/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

The programs for A399643, the canonical program `A399643.P4450374185087043687` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399643 has offset 0).

The definition of A399643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399643.P15546697938422877130

`(n+1)/10*A079678(n+1)`
-/

namespace A399643.P15546697938422877130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 10 * (A079678 (n + 1) : ℚ)

end

end A399643.P15546697938422877130

namespace A399643

/-- `(n+1)/10*A079678(n+1)` -/
def P15546697938422877130.Spec : Prop :=
  ∀ n, P15546697938422877130.a n = (A399643 n : ℚ)

end A399643

/-! ## A399643.P4450374185087043687

`∑{#}[n, 4^#*C(#+2, 2)*C(5*n+6, n-#)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399643

/-- `∑{#}[n, 4^#*C(#+2, 2)*C(5*n+6, n-#)]` -/
def P4450374185087043687.Spec : Prop :=
  ∀ n, (P4450374185087043687.a n : ℤ) = A399643 n

theorem P4450374185087043687.correct : P4450374185087043687.Spec := by
  intro n
  simp only [A399643]

end A399643

/-!
# A399644: Expansion of g^8/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

The programs for A399644, the canonical program `A399644.P5474004107521447092` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399644 has offset 0).

The definition of A399644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399644.P350492975773688909

`(n+1)/12*A079679(n+1)`
-/

namespace A399644.P350492975773688909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 12 * (A079679 (n + 1) : ℚ)

end

end A399644.P350492975773688909

namespace A399644

/-- `(n+1)/12*A079679(n+1)` -/
def P350492975773688909.Spec : Prop :=
  ∀ n, P350492975773688909.a n = (A399644 n : ℚ)

end A399644

/-! ## A399644.P5474004107521447092

`∑{#}[n, 5^#*C(#+2, 2)*C(6*n+7, n-#)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399644

/-- `∑{#}[n, 5^#*C(#+2, 2)*C(6*n+7, n-#)]` -/
def P5474004107521447092.Spec : Prop :=
  ∀ n, (P5474004107521447092.a n : ℤ) = A399644 n

theorem P5474004107521447092.correct : P5474004107521447092.Spec := by
  intro n
  simp only [A399644]

end A399644

/-!
# A399645: Expansion of g^9/(7-6*g)^4, where g = 1+x*g^7 is the g.f. of A002296.

The programs for A399645, the canonical program `A399645.P10912571114058594174` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399645 has offset 0).

The definition of A399645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399645.P13884561037048871801

`(n+1)/14*A079563(n+1)`
-/

namespace A399645.P13884561037048871801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 14 * (A079563 (n + 1) : ℚ)

end

end A399645.P13884561037048871801

namespace A399645

/-- `(n+1)/14*A079563(n+1)` -/
def P13884561037048871801.Spec : Prop :=
  ∀ n, P13884561037048871801.a n = (A399645 n : ℚ)

end A399645

/-! ## A399645.P10912571114058594174

`∑{#}[n, 6^#*C(#+2, 2)*C(7*n+8, n-#)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399645

/-- `∑{#}[n, 6^#*C(#+2, 2)*C(7*n+8, n-#)]` -/
def P10912571114058594174.Spec : Prop :=
  ∀ n, (P10912571114058594174.a n : ℤ) = A399645 n

theorem P10912571114058594174.correct : P10912571114058594174.Spec := by
  intro n
  simp only [A399645]

end A399645

/-!
# A399654: Number of distinct sets of cycle lengths realized by simple graphs on n vertices.

The programs for A399654, there is no canonical definition to state claims against.
-/

/-! ## A399654.P16423972711650797193

`A000194(A148256(n))`
-/

namespace A399654.P16423972711650797193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A148256 n).toNat

end

end A399654.P16423972711650797193

/-! ## A399654.P13450123023394647512

`A114886(A068330(n+1))`
-/

namespace A399654.P13450123023394647512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A068330 (n + 1)).toNat

end

end A399654.P13450123023394647512

/-! ## A399654.P1859496417639441067

`A071626(A328358(n)+1)`
-/

namespace A399654.P1859496417639441067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A328358 n + 1).toNat

end

end A399654.P1859496417639441067

/-! ## A399654.P11786772425396412499

`A287864(A248876(n+1))`
-/

namespace A399654.P11786772425396412499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A248876 (n + 1)).toNat

end

end A399654.P11786772425396412499

/-! ## A399654.P7329020335581530742

`A111654(∑[A131482(n+1)])`
-/

namespace A399654.P7329020335581530742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A399654.P7329020335581530742

/-!
# A399659: Number of involutions of length n avoiding the patterns 4321 and 4231.

The programs for A399659, there is no canonical definition to state claims against.
-/

/-! ## A399659.P10485516644706730628

`A383074(A383101(n)+A383096(n))`
-/

namespace A399659.P10485516644706730628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383074 (A383101 n + A383096 n).toNat

end

end A399659.P10485516644706730628

/-! ## A399659.P6430710662116850477

`A285995(A047765(n+1))+A084635(n)`
-/

namespace A399659.P6430710662116850477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285995 (A047765 (n + 1)).toNat + A084635 n

end

end A399659.P6430710662116850477

/-!
# A399660: Triangle read by rows: T(n, k) is the number of endofunction patterns on n nodes having k connected components; T(0, 0) = 1 by convention.

The programs for A399660, there is no canonical definition to state claims against.
-/

/-! ## A399660.P9615373052405667179

`A293808(n)-A185254(A293808(n))`
-/

namespace A399660.P9615373052405667179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n - A185254 (A293808 n).toNat

end

end A399660.P9615373052405667179

/-! ## A399660.P3699709097798010028

`A293808(n)+A010815(A083825(n+5))`
-/

namespace A399660.P3699709097798010028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n + A010815 (A083825 (n + 5)).toNat

end

end A399660.P3699709097798010028

/-! ## A399660.P5088714489212843689

`A293808(n)-A003849(A088626(n))`
-/

namespace A399660.P5088714489212843689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n - A003849 (A088626 n).toNat

end

end A399660.P5088714489212843689

/-! ## A399660.P18415795058876999861

`A293808(n)-A370813(A000041(n))`
-/

namespace A399660.P18415795058876999861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n - A370813 (A000041 n).toNat

end

end A399660.P18415795058876999861

/-!
# A399661: a(n) is the number of ordered forests of rooted trees on n nodes where one node in the first tree is marked.

The programs for A399661, there is no canonical definition to state claims against.
-/

/-! ## A399661.P15597725266562523014

`A008676(A060647(2*(n+1))-A074285(n+1))`
-/

namespace A399661.P15597725266562523014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A060647 (2 * (n + 1)) - A074285 (n + 1)).toNat

end

end A399661.P15597725266562523014

/-!
# A399662: Row sums of A399663.

The programs for A399662, there is no canonical definition to state claims against.
-/

/-! ## A399662.P7113747116969105276

`or(A045778(A003949(n)), A129719(n))`
-/

namespace A399662.P7113747116969105276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045778 (A003949 n).toNat) (A129719 n)

end

end A399662.P7113747116969105276

/-! ## A399662.P13801837483928548770

`A167865(A138178(n)*A145204(n+1))`
-/

namespace A399662.P13801837483928548770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A138178 n * A145204 (n + 1)).toNat

end

end A399662.P13801837483928548770

/-!
# A399663: Triangle read by rows: T(n, k) = Sum_{j=0..floor(n/k)} T(n-j*k, k-1) * T(j, 1), T(n, 1) = Sum_{j=1..n} T(n-j, 1) * A000081(j), T(n, k) = 1 if n = 0 and 0 if k = 0 and n > 1.

The programs for A399663, there is no canonical definition to state claims against.
-/

/-! ## A399663.P9068839998697251926

`A122342(A256064(n+1))%A122342(n+3)`
-/

namespace A399663.P9068839998697251926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122342 (A256064 (n + 1)).toNat) (A122342 (n + 3))

end

end A399663.P9068839998697251926

/-!
# A399664: Triangle read by rows: T(n, k) is the number of mapping patterns of order n with largest component size <= k.

The programs for A399664, there is no canonical definition to state claims against.
-/

/-! ## A399664.P2282296859045849714

`A348687(A382041(n))`
-/

namespace A399664.P2282296859045849714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348687 (A382041 n).toNat

end

end A399664.P2282296859045849714

/-! ## A399664.P2231729622951413171

`A320801(n)+A086075(A304330(n))`
-/

namespace A399664.P2231729622951413171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320801 n + A086075 (A304330 n).toNat

end

end A399664.P2231729622951413171

/-! ## A399664.P3993635041864203631

`A293390(A256069(n))`
-/

namespace A399664.P3993635041864203631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (A256069 n).toNat

end

end A399664.P3993635041864203631

/-! ## A399664.P1915076993026356444

`A283431(A371994(n))`
-/

namespace A399664.P1915076993026356444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A371994 n).toNat

end

end A399664.P1915076993026356444

/-! ## A399664.P14576338391822832455

`A327041(∑{#}[A271701(n), #])`
-/

namespace A399664.P14576338391822832455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A399664.P14576338391822832455

/-!
# A399666: Triangle read by rows: The Bell transform of the least common multiple of {1, 2, ..., n}. (LCM(n) = A003418(n)).

The programs for A399666, there is no canonical definition to state claims against.
-/

/-! ## A399666.P4691310817204700135

`A132393(n)/A304327(A387415(n+1))`
-/

namespace A399666.P4691310817204700135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n : ℚ) / (A304327 (A387415 (n + 1)).toNat : ℚ)

end

end A399666.P4691310817204700135

/-! ## A399666.P15889644883801879139

`A132393(n)/A372287(A143291(n+2))`
-/

namespace A399666.P15889644883801879139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n : ℚ) / (A372287 (A143291 (n + 2)).toNat : ℚ)

end

end A399666.P15889644883801879139

/-! ## A399666.P11662875691816887335

`A132393(n)/A059895(A276024(n+2))`
-/

namespace A399666.P11662875691816887335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n : ℚ) / (A059895 (A276024 (n + 2)).toNat : ℚ)

end

end A399666.P11662875691816887335

/-! ## A399666.P14414463731538297762

`A132393(n)-A048766(A090318(n+1))`
-/

namespace A399666.P14414463731538297762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n - A048766 (A090318 (n + 1)).toNat

end

end A399666.P14414463731538297762

/-! ## A399666.P17504022179090626399

`A145142(n+1)%A176301(A187617(n))`
-/

namespace A399666.P17504022179090626399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145142 (n + 1)) (A176301 (A187617 n).toNat)

end

end A399666.P17504022179090626399

/-!
# A399667: a(n) = Sum_{k=0..n} A399666(n, k).

The programs for A399667, there is no canonical definition to state claims against.
-/

/-! ## A399667.P7834499104348437807

`∑{#}[n, A399666(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399667.P7834499104348437807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A399666 (Nat.choose (n + 1) 2 + k)

end

end A399667.P7834499104348437807

/-! ## A399667.P4060455859161658349

`A324842(A084261(n))`
-/

namespace A399667.P4060455859161658349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324842 (A084261 n).toNat

end

end A399667.P4060455859161658349

/-! ## A399667.P12607717357912373178

`A324842(A195980(n))`
-/

namespace A399667.P12607717357912373178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324842 (A195980 n).toNat

end

end A399667.P12607717357912373178

/-!
# A399670: Numbers with at least 6 divisors.

The programs for A399670, the canonical program `A399670.P8950561546072788312` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399670 has offset 1).

The definition of A399670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399670.P7580348061155100529

`∪[A007624(n+1), A082295(n+1)]`
-/

namespace A399670.P7580348061155100529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399670.P7580348061155100529

namespace A399670

/-- `∪[A007624(n+1), A082295(n+1)]` -/
def P7580348061155100529.Spec : Prop :=
  ∀ n, (P7580348061155100529.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P8950561546072788312

`∪[A007624(n+1), A122181(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A399670

/-- `∪[A007624(n+1), A122181(n+1)]` -/
def P8950561546072788312.Spec : Prop :=
  ∀ n, (P8950561546072788312.a n : ℤ) = A399670 (n + 1)

theorem P8950561546072788312.correct : P8950561546072788312.Spec := by
  intro n
  simp only [A399670, Nat.add_sub_cancel]

end A399670

/-! ## A399670.P7066324305653604963

`∪[A030515(n+1), A122181(n+1)]`
-/

namespace A399670.P7066324305653604963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399670.P7066324305653604963

namespace A399670

/-- `∪[A030515(n+1), A122181(n+1)]` -/
def P7066324305653604963.Spec : Prop :=
  ∀ n, (P7066324305653604963.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P670895263537515431

`∪[A036456(n+1), A122181(n+1)]`
-/

namespace A399670.P670895263537515431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399670.P670895263537515431

namespace A399670

/-- `∪[A036456(n+1), A122181(n+1)]` -/
def P670895263537515431.Spec : Prop :=
  ∀ n, (P670895263537515431.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P14663966774445220143

`∪[A007624(n+1), A289554(n+1)]`
-/

namespace A399670.P14663966774445220143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399670.P14663966774445220143

namespace A399670

/-- `∪[A007624(n+1), A289554(n+1)]` -/
def P14663966774445220143.Spec : Prop :=
  ∀ n, (P14663966774445220143.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P8591918928787550929

`∪[A036456(n+1), A289554(n+1)]`
-/

namespace A399670.P8591918928787550929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399670.P8591918928787550929

namespace A399670

/-- `∪[A036456(n+1), A289554(n+1)]` -/
def P8591918928787550929.Spec : Prop :=
  ∀ n, (P8591918928787550929.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P2105417376195462251

`lt[2, ∑{e}[n, sqrt(#)]]`
-/

namespace A399670.P2105417376195462251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Real.sqrt (Nat.factorization (f3 n) p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A399670.P2105417376195462251

namespace A399670

/-- `lt[2, ∑{e}[n, sqrt(#)]]` -/
def P2105417376195462251.Spec : Prop :=
  ∀ n, (P2105417376195462251.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P12924430213457851250

`lt[7, ∑{d}[n, atan(#)]]`
-/

namespace A399670.P12924430213457851250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Real.arctan (d : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A399670.P12924430213457851250

namespace A399670

/-- `lt[7, ∑{d}[n, atan(#)]]` -/
def P12924430213457851250.Spec : Prop :=
  ∀ n, (P12924430213457851250.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P15524655237234729631

`lt[5, ∏{e}[n, #+1]]`
-/

namespace A399670.P15524655237234729631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A399670.P15524655237234729631

namespace A399670

/-- `lt[5, ∏{e}[n, #+1]]` -/
def P15524655237234729631.Spec : Prop :=
  ∀ n, (P15524655237234729631.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P17100515550262039519

`lt[∑[(n+1)²], ∏{d}[n, #]]`
-/

namespace A399670.P17100515550262039519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A399670.P17100515550262039519

namespace A399670

/-- `lt[∑[(n+1)²], ∏{d}[n, #]]` -/
def P17100515550262039519.Spec : Prop :=
  ∀ n, (P17100515550262039519.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P3047743812770277632

`lt[n+1, ∏{d}[n, #]/∑[n+1]]`
-/

namespace A399670.P3047743812770277632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A399670.P3047743812770277632

namespace A399670

/-- `lt[n+1, ∏{d}[n, #]/∑[n+1]]` -/
def P3047743812770277632.Spec : Prop :=
  ∀ n, (P3047743812770277632.a n : ℤ) = A399670 (n + 1)

end A399670

/-! ## A399670.P3436511357383523298

`lt[(n+1)^5, ∏{d}[n, #]²]`
-/

namespace A399670.P3436511357383523298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f3 n), d) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A399670.P3436511357383523298

namespace A399670

/-- `lt[(n+1)^5, ∏{d}[n, #]²]` -/
def P3436511357383523298.Spec : Prop :=
  ∀ n, (P3436511357383523298.a n : ℤ) = A399670 (n + 1)

end A399670

/-!
# A399673: Number of binary relations on an n-set having the diamond property.

The programs for A399673, there is no canonical definition to state claims against.
-/

/-! ## A399673.P4977497120504425640

`∑{#}[n, C(n, #)*A398789(#)]`
-/

namespace A399673.P4977497120504425640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A398789 k

end

end A399673.P4977497120504425640

/-!
# A399676: Number of nonisomorphic doppelsemigroups of order n.

The programs for A399676, there is no canonical definition to state claims against.
-/

/-! ## A399676.P17166529638722801954

`A088804(A149056(n))`
-/

namespace A399676.P17166529638722801954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088804 (A149056 n).toNat

end

end A399676.P17166529638722801954

/-!
# A399678: Number of nonisomorphic commutative doppelsemigroups of order n.

The programs for A399678, there is no canonical definition to state claims against.
-/

/-! ## A399678.P2238222155957977755

`A298868(a(n-1)*n)` with `a(0)=1, a(1)=1`
-/

namespace A399678.P2238222155957977755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A298868 (a (n - 1) * (n : ℤ)).toNat

end

end A399678.P2238222155957977755

/-!
# A399679: Number of nonisomorphic strong doppelsemigroups of order n.

The programs for A399679, there is no canonical definition to state claims against.
-/

/-! ## A399679.P7828159057662278952

`A173865(a(n-1))` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A399679.P7828159057662278952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 8] fun n a =>
  A173865 (a (n - 1)).toNat

end

end A399679.P7828159057662278952

/-!
# A399680: a(1) = 1, for n >= 2; a(n) = the greatest integer k < n such that all divisors of k are exactly the first divisors of n in increasing order.

The programs for A399680, there is no canonical definition to state claims against.
-/

/-! ## A399680.P2573406950514803093

`gcd(A052126(n+1), A206448(2*(n+1)))`
-/

namespace A399680.P2573406950514803093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052126 (n + 1)) (A206448 (2 * (n + 1)))

end

end A399680.P2573406950514803093

/-! ## A399680.P10601995580705183994

`gcd(A052126(n+1), A357811(n))`
-/

namespace A399680.P10601995580705183994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052126 (n + 1)) (A357811 n)

end

end A399680.P10601995580705183994

/-! ## A399680.P386040144442702318

`A332741(A132199(2*n+1)^col(n)*n+1)`
-/

namespace A399680.P386040144442702318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332741 (A132199 (2 * n + 1) ^ SequenceMachineLib.triCol n * (n : ℤ) + 1).toNat

end

end A399680.P386040144442702318

/-! ## A399680.P11367210852169682547

`A052126(n+1)/A364350(A375970(n+1))`
-/

namespace A399680.P11367210852169682547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) / (A364350 (A375970 (n + 1)).toNat : ℚ)

end

end A399680.P11367210852169682547

/-! ## A399680.P528091323201708465

`A052126(n+1)/A385418(A038001(n+2))`
-/

namespace A399680.P528091323201708465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (n + 1) : ℚ) / (A385418 (A038001 (n + 2)).toNat : ℚ)

end

end A399680.P528091323201708465

/-!
# A399682: a(n) = smallest squarefree number of the form n*k-1.

The programs for A399682, there is no canonical definition to state claims against.
-/

/-! ## A399682.P5170039533481693006

`(n+1)*A399381(n+1)-1`
-/

namespace A399682.P5170039533481693006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A399381 (n + 1) - 1

end

end A399682.P5170039533481693006

/-!
# A399683: Triangle read by rows: T(n,k) is the maximum number of colors that can be used in an edge-coloring of K_n containing no rainbow copy of the k-vertex path P_k, for 3 <= k <= n.

The programs for A399683, there is no canonical definition to state claims against.
-/

/-! ## A399683.P15641817088030349820

`A336811(A032766(n)^A103438(n))`
-/

namespace A399683.P15641817088030349820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (SequenceMachineLib.roundAway ((A032766 n : ℚ) ^ (A103438 n : ℤ))).toNat

end

end A399683.P15641817088030349820

/-!
# A399685: a(n) = Product_{k=1..n} sigma(k,k).

The programs for A399685, there is no canonical definition to state claims against.
-/

/-! ## A399685.P16820490162062158478

`a(n-1)*∑{d}[n, #^n]` with `a(0)=1`
-/

namespace A399685.P16820490162062158478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ d ∈ Nat.divisors (f1 n), d ^ n)

end

end A399685.P16820490162062158478

/-! ## A399685.P12787707512723905504

`a(n-1)*A023887(n)` with `a(0)=1`
-/

namespace A399685.P12787707512723905504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A023887 n

end

end A399685.P12787707512723905504

/-! ## A399685.P3358804924058300414

`∏[A023887(A028310(n))]`
-/

namespace A399685.P3358804924058300414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023887 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A399685.P3358804924058300414

/-! ## A399685.P9062964580982797128

`∏[A023887(n+1)]/A023887(n+1)`
-/

namespace A399685.P9062964580982797128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023887 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A023887 (n + 1) : ℚ)

end

end A399685.P9062964580982797128

/-!
# A399687: Triangle read by rows: T(n,k) is the maximum number of colors that can be used in an edge-coloring of K_n containing no rainbow copy of the k-vertex cycle C_k, for 3 <= k <= n.

The programs for A399687, there is no canonical definition to state claims against.
-/

/-! ## A399687.P6956512916043909232

`A070939(A091298(n+1)*A303555(n+1))`
-/

namespace A399687.P6956512916043909232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A091298 (n + 1) * A303555 (n + 1)).toNat

end

end A399687.P6956512916043909232

/-!
# A399690: Numerator of delta(n), the density of the integers that are divisible by some integer in the open interval (n, 2n).

The programs for A399690, there is no canonical definition to state claims against.
-/

/-! ## A399690.P14113023424401267746

`A372687(A162581(n))`
-/

namespace A399690.P14113023424401267746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372687 (A162581 n).toNat

end

end A399690.P14113023424401267746

/-! ## A399690.P12485781018614552438

`col(A158806(A091073(n)))`
-/

namespace A399690.P12485781018614552438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A158806 (A091073 n).toNat).toNat

end

end A399690.P12485781018614552438

/-!
# A399691: Denominator of delta(n), the density of the integers that are divisible by some integer in the open interval (n, 2n).

The programs for A399691, there is no canonical definition to state claims against.
-/

/-! ## A399691.P15614750260951826287

`A178395(A024920(n+2))`
-/

namespace A399691.P15614750260951826287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178395 (A024920 (n + 2)).toNat

end

end A399691.P15614750260951826287

/-! ## A399691.P1589963998371715244

`A000041(comp[A238716(n+1)*n])`
-/

namespace A399691.P1589963998371715244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238716 (n + 1) * (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A399691.P1589963998371715244

/-!
# A399692: Triangle T(n,k) read by rows of Knuth's deltas for comparison trees used in a uniform binary search.

The programs for A399692, there is no canonical definition to state claims against.
-/

/-! ## A399692.P13039629619048941243

`A339737(lt[A236631(3*n+4), A022176(n+2)])`
-/

namespace A399692.P13039629619048941243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236631 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022176 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339737 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A399692.P13039629619048941243

/-! ## A399692.P7384021277597428400

`C(A325765(A087074(n+1)), A112798(n+2))`
-/

namespace A399692.P7384021277597428400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325765 (A087074 (n + 1)).toNat).toNat (A112798 (n + 2)).toNat

end

end A399692.P7384021277597428400

/-! ## A399692.P8102314127173616929

`A005091(A015650(n+2)-A042990(n))`
-/

namespace A399692.P8102314127173616929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A015650 (n + 2) - A042990 n).toNat

end

end A399692.P8102314127173616929

/-! ## A399692.P5402646615708569039

`A320655(A062283(n+1)+A000051(n+3))`
-/

namespace A399692.P5402646615708569039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A062283 (n + 1) + A000051 (n + 3)).toNat

end

end A399692.P5402646615708569039

/-! ## A399692.P5851383108955876665

`A386296(n+1)+A369001(A219002(2*n+5))`
-/

namespace A399692.P5851383108955876665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (n + 1) + A369001 (A219002 (2 * n + 5)).toNat

end

end A399692.P5851383108955876665

/-!
# A399696: Number of ordered antichain covers of a labeled n-element set.

The programs for A399696, there is no canonical definition to state claims against.
-/

/-! ## A399696.P18208154081153309026

`A139787(A281469(a(n-1)+n))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A399696.P18208154081153309026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A139787 (A281469 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A399696.P18208154081153309026

/-!
# A399698: Denominator of delta_1(n), the density of the integers having exactly one divisor in the open interval (n, 2n).

The programs for A399698, there is no canonical definition to state claims against.
-/

/-! ## A399698.P2439289291234359080

`A137766(A008059(n))`
-/

namespace A399698.P2439289291234359080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137766 (A008059 n).toNat

end

end A399698.P2439289291234359080

