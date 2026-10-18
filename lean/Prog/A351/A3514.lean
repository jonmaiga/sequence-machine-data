import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-!
# A351405: a(1) = 1; a(n+1) = Sum_{d|n} 2^(n/d - 1) * a(d).

The programs for A351405, there is no canonical definition to state claims against.
-/

/-! ## A351405.P3540995606865890902

`A096315(A026698(n))`
-/

namespace A351405.P3540995606865890902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096315 (A026698 n).toNat

end

end A351405.P3540995606865890902

/-! ## A351405.P11630084439941841311

`A065362(A355117(n+1))`
-/

namespace A351405.P11630084439941841311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065362 (A355117 (n + 1)).toNat

end

end A351405.P11630084439941841311

/-! ## A351405.P7022701113676221775

`A357357(A000041(n))+1-and(2, n)`
-/

namespace A351405.P7022701113676221775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357357 (A000041 n).toNat + (1 - (Nat.land 2 n : ℤ))

end

end A351405.P7022701113676221775

/-!
# A351408: Number of divisors of n that are either trivial or are nonsquares with a square divisor > 1.

The programs for A351408, the canonical program `A351408.P16840462470180952888` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351408 has offset 1).

The definition of A351408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351408.P16840462470180952888

`A048105(n+1)-A046951(n+1)+2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351408

/-- `A048105(n+1)-A046951(n+1)+2` -/
def P16840462470180952888.Spec : Prop :=
  ∀ n, P16840462470180952888.a n = A351408 (n + 1)

theorem P16840462470180952888.correct : P16840462470180952888.Spec := by
  intro n
  simp only [A351408, Nat.add_sub_cancel]

end A351408

/-! ## A351408.P7793601897970188953

`A056595(n+1)+1-A309307(n+1)`
-/

namespace A351408.P7793601897970188953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) + (1 - A309307 (n + 1))

end

end A351408.P7793601897970188953

namespace A351408

/-- `A056595(n+1)+1-A309307(n+1)` -/
def P7793601897970188953.Spec : Prop :=
  ∀ n, P7793601897970188953.a n = A351408 (n + 1)

end A351408

/-! ## A351408.P14700598402567560715

`A056595(n+1)+2-A034444(n+1)`
-/

namespace A351408.P14700598402567560715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) + (2 - A034444 (n + 1))

end

end A351408.P14700598402567560715

namespace A351408

/-- `A056595(n+1)+2-A034444(n+1)` -/
def P14700598402567560715.Spec : Prop :=
  ∀ n, P14700598402567560715.a n = A351408 (n + 1)

end A351408

/-! ## A351408.P109313411998105539

`A056595(n+1)-A023443(A309307(n+1))`
-/

namespace A351408.P109313411998105539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) - A023443 (A309307 (n + 1)).toNat

end

end A351408.P109313411998105539

namespace A351408

/-- `A056595(n+1)-A023443(A309307(n+1))` -/
def P109313411998105539.Spec : Prop :=
  ∀ n, P109313411998105539.a n = A351408 (n + 1)

end A351408

/-! ## A351408.P6143686343866432846

`A368415(A368413(2*(n+1))+1)`
-/

namespace A351408.P6143686343866432846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368415 (A368413 (2 * (n + 1)) + 1).toNat

end

end A351408.P6143686343866432846

namespace A351408

/-- `A368415(A368413(2*(n+1))+1)` -/
def P6143686343866432846.Spec : Prop :=
  ∀ n, P6143686343866432846.a n = A351408 (n + 1)

end A351408

/-!
# A351409: 

The programs for A351409, there is no canonical definition to state claims against.
-/

/-! ## A351409.P7212377994075170732

`(n+1)*((n+1)!^n)²`
-/

namespace A351409.P7212377994075170732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.factorial (n + 1) ^ n) ^ 2

end

end A351409.P7212377994075170732

/-! ## A351409.P16592467536866913860

`(n+1)*∏[(n+1)²]^n`
-/

namespace A351409.P16592467536866913860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A351409.P16592467536866913860

/-! ## A351409.P9729807113824436869

`∑{digits}[n+1, #*#!^(2*n)]`
-/

namespace A351409.P9729807113824436869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x * Nat.factorial x ^ (2 * n)).sum

end

end A351409.P9729807113824436869

/-! ## A351409.P1979132307368355491

`∏{digits}[n+1, #*#!^(2*n)]`
-/

namespace A351409.P1979132307368355491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x * Nat.factorial x ^ (2 * n)).prod

end

end A351409.P1979132307368355491

/-! ## A351409.P6139368185221027610

`(n+1)!^(2*n+1)/n!`
-/

namespace A351409.P6139368185221027610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ (2 * n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A351409.P6139368185221027610

/-!
# A351411: Number of divisors of n not of the form p^p, p prime.

The programs for A351411, the canonical program `A351411.P14891746329076269071` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351411 has offset 1).

The definition of A351411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351411.P3752106807335523330

`A000005(n+1)-A001221(A327939(n+1))`
-/

namespace A351411.P3752106807335523330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001221 (A327939 (n + 1)).toNat

end

end A351411.P3752106807335523330

namespace A351411

/-- `A000005(n+1)-A001221(A327939(n+1))` -/
def P3752106807335523330.Spec : Prop :=
  ∀ n, P3752106807335523330.a n = A351411 (n + 1)

end A351411

/-! ## A351411.P14891746329076269071

`A000005(n+1)-A001221(A342007(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A351411

/-- `A000005(n+1)-A001221(A342007(n+1))` -/
def P14891746329076269071.Spec : Prop :=
  ∀ n, P14891746329076269071.a n = A351411 (n + 1)

theorem P14891746329076269071.correct : P14891746329076269071.Spec := by
  intro n
  simp only [A351411, Nat.add_sub_cancel]

end A351411

/-! ## A351411.P140407599486903440

`A000005(n+1)-A001221(A368333(n+1))`
-/

namespace A351411.P140407599486903440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001221 (A368333 (n + 1)).toNat

end

end A351411.P140407599486903440

namespace A351411

/-- `A000005(n+1)-A001221(A368333(n+1))` -/
def P140407599486903440.Spec : Prop :=
  ∀ n, P140407599486903440.a n = A351411 (n + 1)

end A351411

/-! ## A351411.P15335240982730628055

`A001227(A003961(n+1))-A129251(n+1)`
-/

namespace A351411.P15335240982730628055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003961 (n + 1)).toNat - A129251 (n + 1)

end

end A351411.P15335240982730628055

namespace A351411

/-- `A001227(A003961(n+1))-A129251(n+1)` -/
def P15335240982730628055.Spec : Prop :=
  ∀ n, P15335240982730628055.a n = A351411 (n + 1)

end A351411

/-! ## A351411.P2673578793990358717

`A000005(n+1)-A007949(A111217(2*(n+1)))`
-/

namespace A351411.P2673578793990358717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A007949 (A111217 (2 * (n + 1))).toNat

end

end A351411.P2673578793990358717

namespace A351411

/-- `A000005(n+1)-A007949(A111217(2*(n+1)))` -/
def P2673578793990358717.Spec : Prop :=
  ∀ n, P2673578793990358717.a n = A351411 (n + 1)

end A351411

/-!
# A351412: a(1) = 1, a(2) = 2, a(3) = 3. Then if n is even a(n) is the least positive integer not yet in the sequence, otherwise if n is odd a(n) = a(n-1) + a(n-3).

The programs for A351412, the canonical program `A351412.P7371246377328705207` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351412 has offset 1).

The definition of A351412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351412.P7371246377328705207

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=5, a(6)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A351412

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P7371246377328705207.Spec : Prop :=
  ∀ n, P7371246377328705207.a n = A351412 (n + 1)

theorem P7371246377328705207.correct : P7371246377328705207.Spec := by
  intro n
  simp only [A351412, Nat.add_sub_cancel]

end A351412

/-! ## A351412.P5711651165359747376

`a((a(n-2)-1)%3)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A351412.P5711651165359747376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (Int.tmod ((a (n - 2) : ℤ) - 1) 3).toNat + a (n - 2)

end

end A351412.P5711651165359747376

namespace A351412

/-- `a((a(n-2)-1)%3)+a(n-2)` -/
def P5711651165359747376.Spec : Prop :=
  ∀ n, (P5711651165359747376.a n : ℤ) = A351412 (n + 1)

end A351412

/-! ## A351412.P9468682795929168285

`A006368(A014681(n)+1)`
-/

namespace A351412.P9468682795929168285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A014681 n + 1).toNat

end

end A351412.P9468682795929168285

namespace A351412

/-- `A006368(A014681(n)+1)` -/
def P9468682795929168285.Spec : Prop :=
  ∀ n, P9468682795929168285.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P16129488199343421634

`A006368(A065190(n+1))`
-/

namespace A351412.P16129488199343421634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A065190 (n + 1)).toNat

end

end A351412.P16129488199343421634

namespace A351412

/-- `A006368(A065190(n+1))` -/
def P16129488199343421634.Spec : Prop :=
  ∀ n, P16129488199343421634.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P8629341798149550621

`A006368(A114112(n+2)-1)`
-/

namespace A351412.P8629341798149550621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A114112 (n + 2) - 1).toNat

end

end A351412.P8629341798149550621

namespace A351412

/-- `A006368(A114112(n+2)-1)` -/
def P8629341798149550621.Spec : Prop :=
  ∀ n, P8629341798149550621.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P12582376013006477097

`A006368(xor(1, A057427(n)+n))`
-/

namespace A351412.P12582376013006477097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.xor 1 (A057427 n + (n : ℤ))).toNat

end

end A351412.P12582376013006477097

namespace A351412

/-- `A006368(xor(1, A057427(n)+n))` -/
def P12582376013006477097.Spec : Prop :=
  ∀ n, P12582376013006477097.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P12014727726873844937

`A143097(a(n-2))+2` with `a(0)=1, a(1)=2`
-/

namespace A351412.P12014727726873844937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A143097 (a (n - 2)).toNat + 2

end

end A351412.P12014727726873844937

namespace A351412

/-- `A143097(a(n-2))+2` -/
def P12014727726873844937.Spec : Prop :=
  ∀ n, P12014727726873844937.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P4451345946254616315

`A236348(a(n-2))+2` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A351412.P4451345946254616315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A236348 (a (n - 2)).toNat + 2

end

end A351412.P4451345946254616315

namespace A351412

/-- `A236348(a(n-2))+2` -/
def P4451345946254616315.Spec : Prop :=
  ∀ n, P4451345946254616315.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P10725697263077322876

`A080782(a(n-2)+2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A351412.P10725697263077322876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A080782 (a (n - 2) + 2).toNat

end

end A351412.P10725697263077322876

namespace A351412

/-- `A080782(a(n-2)+2)` -/
def P10725697263077322876.Spec : Prop :=
  ∀ n, P10725697263077322876.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P3181183216736850848

`A291290(A097482(n+2))`
-/

namespace A351412.P3181183216736850848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291290 (A097482 (n + 2)).toNat

end

end A351412.P3181183216736850848

namespace A351412

/-- `A291290(A097482(n+2))` -/
def P3181183216736850848.Spec : Prop :=
  ∀ n, P3181183216736850848.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P4355754919467449291

`A291290(A133223(n+2))`
-/

namespace A351412.P4355754919467449291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291290 (A133223 (n + 2)).toNat

end

end A351412.P4355754919467449291

namespace A351412

/-- `A291290(A133223(n+2))` -/
def P4355754919467449291.Spec : Prop :=
  ∀ n, P4355754919467449291.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P17515889510709258057

`A267807(A053438(n))`
-/

namespace A351412.P17515889510709258057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267807 (A053438 n).toNat

end

end A351412.P17515889510709258057

namespace A351412

/-- `A267807(A053438(n))` -/
def P17515889510709258057.Spec : Prop :=
  ∀ n, P17515889510709258057.a n = A351412 (n + 1)

end A351412

/-! ## A351412.P6913051478887335536

`A367758(A100764(n+2))`
-/

namespace A351412.P6913051478887335536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367758 (A100764 (n + 2)).toNat

end

end A351412.P6913051478887335536

namespace A351412

/-- `A367758(A100764(n+2))` -/
def P6913051478887335536.Spec : Prop :=
  ∀ n, P6913051478887335536.a n = A351412 (n + 1)

end A351412

/-!
# A351414: Number of divisors of n that are either prime or have at least 1 square divisor > 1 and at least two distinct prime factors.

The programs for A351414, the canonical program `A351414.P15953390987188253325` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351414 has offset 1).

The definition of A351414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048105, A361205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351414.P15953390987188253325

`A048105(n+1)+A361205(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351414

/-- `A048105(n+1)+A361205(n+1)` -/
def P15953390987188253325.Spec : Prop :=
  ∀ n, P15953390987188253325.a n = A351414 (n + 1)

theorem P15953390987188253325.correct : P15953390987188253325.Spec := by
  intro n
  simp only [A351414, Nat.add_sub_cancel]

end A351414

/-! ## A351414.P18146739239504000441

`A376514(n+1)+A001221(n+1)`
-/

namespace A351414.P18146739239504000441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376514 (n + 1) + A001221 (n + 1)

end

end A351414.P18146739239504000441

namespace A351414

/-- `A376514(n+1)+A001221(n+1)` -/
def P18146739239504000441.Spec : Prop :=
  ∀ n, P18146739239504000441.a n = A351414 (n + 1)

end A351414

/-! ## A351414.P9126060132866093000

`A000005(n+1)-A351418(n+1)`
-/

namespace A351414.P9126060132866093000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A351418 (n + 1)

end

end A351414.P9126060132866093000

namespace A351414

/-- `A000005(n+1)-A351418(n+1)` -/
def P9126060132866093000.Spec : Prop :=
  ∀ n, P9126060132866093000.a n = A351414 (n + 1)

end A351414

/-! ## A351414.P17017741214636577660

`A351417(n+1)-A046660(n+1)`
-/

namespace A351414.P17017741214636577660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351417 (n + 1) - A046660 (n + 1)

end

end A351414.P17017741214636577660

namespace A351414

/-- `A351417(n+1)-A046660(n+1)` -/
def P17017741214636577660.Spec : Prop :=
  ∀ n, P17017741214636577660.a n = A351414 (n + 1)

end A351414

/-! ## A351414.P7386169572481136709

`A163523(n+1)-A351394(n+1)`
-/

namespace A351414.P7386169572481136709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) - A351394 (n + 1)

end

end A351414.P7386169572481136709

namespace A351414

/-- `A163523(n+1)-A351394(n+1)` -/
def P7386169572481136709.Spec : Prop :=
  ∀ n, P7386169572481136709.a n = A351414 (n + 1)

end A351414

/-! ## A351414.P16468020043748531661

`A376514(n+1)+A001222(A007947(n+1))`
-/

namespace A351414.P16468020043748531661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376514 (n + 1) + A001222 (A007947 (n + 1)).toNat

end

end A351414.P16468020043748531661

namespace A351414

/-- `A376514(n+1)+A001222(A007947(n+1))` -/
def P16468020043748531661.Spec : Prop :=
  ∀ n, P16468020043748531661.a n = A351414 (n + 1)

end A351414

/-! ## A351414.P12652243317760974580

`A376514(n+1)+A051903(A034444(n+1))`
-/

namespace A351414.P12652243317760974580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376514 (n + 1) + A051903 (A034444 (n + 1)).toNat

end

end A351414.P12652243317760974580

namespace A351414

/-- `A376514(n+1)+A051903(A034444(n+1))` -/
def P12652243317760974580.Spec : Prop :=
  ∀ n, P12652243317760974580.a n = A351414 (n + 1)

end A351414

/-! ## A351414.P17423543700967135571

`A001221(n+1)+A048105(n+1)-A046660(n+1)`
-/

namespace A351414.P17423543700967135571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A048105 (n + 1) - A046660 (n + 1))

end

end A351414.P17423543700967135571

namespace A351414

/-- `A001221(n+1)+A048105(n+1)-A046660(n+1)` -/
def P17423543700967135571.Spec : Prop :=
  ∀ n, P17423543700967135571.a n = A351414 (n + 1)

end A351414

/-! ## A351414.P17509325297084602644

`A001221(n+1)+A351417(n+1)-A001222(n+1)`
-/

namespace A351414.P17509325297084602644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A351417 (n + 1) - A001222 (n + 1))

end

end A351414.P17509325297084602644

namespace A351414

/-- `A001221(n+1)+A351417(n+1)-A001222(n+1)` -/
def P17509325297084602644.Spec : Prop :=
  ∀ n, P17509325297084602644.a n = A351414 (n + 1)

end A351414

/-! ## A351414.P3391225081146912633

`A001222(n+1)+A376514(n+1)-A046660(n+1)`
-/

namespace A351414.P3391225081146912633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A376514 (n + 1) - A046660 (n + 1))

end

end A351414.P3391225081146912633

namespace A351414

/-- `A001222(n+1)+A376514(n+1)-A046660(n+1)` -/
def P3391225081146912633.Spec : Prop :=
  ∀ n, P3391225081146912633.a n = A351414 (n + 1)

end A351414

/-!
# A351415: Intersection of Beatty sequences for (1+sqrt(5))/2 and sqrt(5).

The programs for A351415, there is no canonical definition to state claims against.
-/

/-! ## A351415.P13710005633993308874

`∩[floor(ϕ*n), floor((n+1)*sqrt(5))]`
-/

namespace A351415.P13710005633993308874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351415.P13710005633993308874

/-! ## A351415.P1774817806662593529

`filter[A022839(n+1), A096270(#)]`
-/

namespace A351415.P1774817806662593529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A351415.P1774817806662593529

/-! ## A351415.P9303697404280568592

`filter[A022839(n+1), A114986(#)]`
-/

namespace A351415.P9303697404280568592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114986 (f1 j).toNat = 1) n)

end

end A351415.P9303697404280568592

/-! ## A351415.P6227589721279983552

`filter[A000201(n+1), A285685(#)]`
-/

namespace A351415.P6227589721279983552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A351415.P6227589721279983552

/-! ## A351415.P15599379998012558516

`filter[A066096(n+1), A285685(#)]`
-/

namespace A351415.P15599379998012558516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A351415.P15599379998012558516

/-! ## A351415.P1838795930900984620

`filter[A307294(2*n), A285685(#)]`
-/

namespace A351415.P1838795930900984620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307294 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A351415.P1838795930900984620

/-! ## A351415.P4431737881206562517

`filter[A194151(2*(n+1)), A096270(#)]`
-/

namespace A351415.P4431737881206562517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A351415.P4431737881206562517

/-! ## A351415.P13497261648391190088

`filter[A194151(2*(n+1)), A114986(#)]`
-/

namespace A351415.P13497261648391190088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114986 (f1 j).toNat = 1) n)

end

end A351415.P13497261648391190088

/-! ## A351415.P15688254747882333809

`filter[A054084(2*(n+1)), A285685(#)]`
-/

namespace A351415.P15688254747882333809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A351415.P15688254747882333809

/-! ## A351415.P4047822910479159816

`filter[A072061(2*n+1), A285685(#)]`
-/

namespace A351415.P4047822910479159816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285685 (f1 j).toNat = 1) n)

end

end A351415.P4047822910479159816

/-!
# A351416: Number of divisors of n that are either squarefree semiprimes, numbers of the form p^k (p prime, k>1), or numbers with at least one square divisor > 1 and 3 or more distinct prime factors.

The programs for A351416, there is no canonical definition to state claims against.
-/

/-! ## A351416.P13553240238343509244

`A286528(lcm(2, A046523(n+1)))`
-/

namespace A351416.P13553240238343509244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286528 (Int.lcm 2 (A046523 (n + 1)))

end

end A351416.P13553240238343509244

/-! ## A351416.P2294194495896367107

`A286528(A071364(n+1)+A000038(n))`
-/

namespace A351416.P2294194495896367107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286528 (A071364 (n + 1) + A000038 n).toNat

end

end A351416.P2294194495896367107

/-! ## A351416.P3114570376917700977

`A071325(A046644(n+1)*A114717(n+1))`
-/

namespace A351416.P3114570376917700977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A046644 (n + 1) * A114717 (n + 1)).toNat

end

end A351416.P3114570376917700977

/-! ## A351416.P1875785325496281376

`A033270(A181819(n+1))%A058118(n+1)`
-/

namespace A351416.P1875785325496281376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033270 (A181819 (n + 1)).toNat) (A058118 (n + 1))

end

end A351416.P1875785325496281376

/-! ## A351416.P2125521197047524028

`A000120(A358171(n+1)^A354579(2*(n+1)))`
-/

namespace A351416.P2125521197047524028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A358171 (n + 1) : ℚ) ^ (A354579 (2 * (n + 1)) : ℤ))).toNat

end

end A351416.P2125521197047524028

/-!
# A351417: Number of divisors of n that are either prime or have at least one square divisor > 1.

The programs for A351417, the canonical program `A351417.P10622450361574635402` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351417 has offset 1).

The definition of A351417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351417.P10622450361574635402

`A048105(n+1)+A001221(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351417

/-- `A048105(n+1)+A001221(n+1)` -/
def P10622450361574635402.Spec : Prop :=
  ∀ n, P10622450361574635402.a n = A351417 (n + 1)

theorem P10622450361574635402.correct : P10622450361574635402.Spec := by
  intro n
  simp only [A351417, Nat.add_sub_cancel]

end A351417

/-! ## A351417.P8863969878760824897

`∑{d}[n+1, A106743(#)²]`
-/

namespace A351417.P8863969878760824897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106743 d ^ 2

end

end A351417.P8863969878760824897

namespace A351417

/-- `∑{d}[n+1, A106743(#)²]` -/
def P8863969878760824897.Spec : Prop :=
  ∀ n, P8863969878760824897.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P7166692254473884971

`∏{e}[n+1, #+1]-A033273(∏{p}[n+1, #])`
-/

namespace A351417.P7166692254473884971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A033273 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A351417.P7166692254473884971

namespace A351417

/-- `∏{e}[n+1, #+1]-A033273(∏{p}[n+1, #])` -/
def P7166692254473884971.Spec : Prop :=
  ∀ n, P7166692254473884971.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P8220841459008112412

`A376514(n+1)+A001222(n+1)`
-/

namespace A351417.P8220841459008112412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376514 (n + 1) + A001222 (n + 1)

end

end A351417.P8220841459008112412

namespace A351417

/-- `A376514(n+1)+A001222(n+1)` -/
def P8220841459008112412.Spec : Prop :=
  ∀ n, P8220841459008112412.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P11710212873624229381

`A351414(n+1)+A046660(n+1)`
-/

namespace A351417.P11710212873624229381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351414 (n + 1) + A046660 (n + 1)

end

end A351417.P11710212873624229381

namespace A351417

/-- `A351414(n+1)+A046660(n+1)` -/
def P11710212873624229381.Spec : Prop :=
  ∀ n, P11710212873624229381.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P14935449358096638845

`A163523(n+1)-A034444(n+1)`
-/

namespace A351417.P14935449358096638845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) - A034444 (n + 1)

end

end A351417.P14935449358096638845

namespace A351417

/-- `A163523(n+1)-A034444(n+1)` -/
def P14935449358096638845.Spec : Prop :=
  ∀ n, P14935449358096638845.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P11925200692348465922

`A001221(n+1)+A376514(n+1)+A046660(n+1)`
-/

namespace A351417.P11925200692348465922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A376514 (n + 1) + A046660 (n + 1))

end

end A351417.P11925200692348465922

namespace A351417

/-- `A001221(n+1)+A376514(n+1)+A046660(n+1)` -/
def P11925200692348465922.Spec : Prop :=
  ∀ n, P11925200692348465922.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P14796392619295723154

`A000005(n+1)+A001221(n+1)-A034444(n+1)`
-/

namespace A351417.P14796392619295723154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A001221 (n + 1) - A034444 (n + 1))

end

end A351417.P14796392619295723154

namespace A351417

/-- `A000005(n+1)+A001221(n+1)-A034444(n+1)` -/
def P14796392619295723154.Spec : Prop :=
  ∀ n, P14796392619295723154.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P294645513918968321

`A001221(n+1)+A034444(n+1)-A048106(n+1)`
-/

namespace A351417.P294645513918968321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A034444 (n + 1) - A048106 (n + 1))

end

end A351417.P294645513918968321

namespace A351417

/-- `A001221(n+1)+A034444(n+1)-A048106(n+1)` -/
def P294645513918968321.Spec : Prop :=
  ∀ n, P294645513918968321.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P11550491496907245960

`A001221(n+1)+A032741(n+1)-A309307(n+1)`
-/

namespace A351417.P11550491496907245960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A032741 (n + 1) - A309307 (n + 1))

end

end A351417.P11550491496907245960

namespace A351417

/-- `A001221(n+1)+A032741(n+1)-A309307(n+1)` -/
def P11550491496907245960.Spec : Prop :=
  ∀ n, P11550491496907245960.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P11748328282874080474

`A001221(n+1)+A351414(n+1)-A361205(n+1)`
-/

namespace A351417.P11748328282874080474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A351414 (n + 1) - A361205 (n + 1))

end

end A351417.P11748328282874080474

namespace A351417

/-- `A001221(n+1)+A351414(n+1)-A361205(n+1)` -/
def P11748328282874080474.Spec : Prop :=
  ∀ n, P11748328282874080474.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P17761933126964959086

`A001222(A294895(n+1))+A001221(n+1)`
-/

namespace A351417.P17761933126964959086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A294895 (n + 1)).toNat + A001221 (n + 1)

end

end A351417.P17761933126964959086

namespace A351417

/-- `A001222(A294895(n+1))+A001221(n+1)` -/
def P17761933126964959086.Spec : Prop :=
  ∀ n, P17761933126964959086.a n = A351417 (n + 1)

end A351417

/-! ## A351417.P17966527462075762756

`A001222(A294897(n+1))+A001221(n+1)`
-/

namespace A351417.P17966527462075762756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A294897 (n + 1)).toNat + A001221 (n + 1)

end

end A351417.P17966527462075762756

namespace A351417

/-- `A001222(A294897(n+1))+A001221(n+1)` -/
def P17966527462075762756.Spec : Prop :=
  ∀ n, P17966527462075762756.a n = A351417 (n + 1)

end A351417

/-!
# A351418: Number of divisors of n that are either of the form p^k (p prime, k>1) or are nonprime squarefree numbers.

The programs for A351418, the canonical program `A351418.P6131019699695405494` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351418 has offset 1).

The definition of A351418 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351418.P6131019699695405494

`A034444(n+1)-2*A001221(n+1)+A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A351418

/-- `A034444(n+1)-2*A001221(n+1)+A001222(n+1)` -/
def P6131019699695405494.Spec : Prop :=
  ∀ n, P6131019699695405494.a n = A351418 (n + 1)

theorem P6131019699695405494.correct : P6131019699695405494.Spec := by
  intro n
  simp only [A351418, Nat.add_sub_cancel]

end A351418

/-! ## A351418.P7554024583384504900

`∏{p}[n+1, ceil(atan(#))]-∑{e}[n+1, 2-#]`
-/

namespace A351418.P7554024583384504900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉ - ∑ p ∈ Nat.primeFactors (f2 n), (2 - (Nat.factorization (f2 n) p : ℤ))

end

end A351418.P7554024583384504900

namespace A351418

/-- `∏{p}[n+1, ceil(atan(#))]-∑{e}[n+1, 2-#]` -/
def P7554024583384504900.Spec : Prop :=
  ∀ n, P7554024583384504900.a n = A351418 (n + 1)

end A351418

/-! ## A351418.P17388210055965285650

`∏{p}[n+1, ceil(atan(#))]-A361205(n+1)`
-/

namespace A351418.P17388210055965285650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉ - A361205 (n + 1)

end

end A351418.P17388210055965285650

namespace A351418

/-- `∏{p}[n+1, ceil(atan(#))]-A361205(n+1)` -/
def P17388210055965285650.Spec : Prop :=
  ∀ n, P17388210055965285650.a n = A351418 (n + 1)

end A351418

/-! ## A351418.P13228875257973976607

`A000005(n+1)-A351414(n+1)`
-/

namespace A351418.P13228875257973976607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A351414 (n + 1)

end

end A351418.P13228875257973976607

namespace A351418

/-- `A000005(n+1)-A351414(n+1)` -/
def P13228875257973976607.Spec : Prop :=
  ∀ n, P13228875257973976607.a n = A351418 (n + 1)

end A351418

/-! ## A351418.P10128272213834525086

`A351394(n+1)-A001221(n+1)`
-/

namespace A351418.P10128272213834525086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351394 (n + 1) - A001221 (n + 1)

end

end A351418.P10128272213834525086

namespace A351418

/-- `A351394(n+1)-A001221(n+1)` -/
def P10128272213834525086.Spec : Prop :=
  ∀ n, P10128272213834525086.a n = A351418 (n + 1)

end A351418

/-! ## A351418.P16746195373689621504

`A034444(n+1)-A361205(n+1)`
-/

namespace A351418.P16746195373689621504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A361205 (n + 1)

end

end A351418.P16746195373689621504

namespace A351418

/-- `A034444(n+1)-A361205(n+1)` -/
def P16746195373689621504.Spec : Prop :=
  ∀ n, P16746195373689621504.a n = A351418 (n + 1)

end A351418

/-! ## A351418.P8301691937473566540

`A033273(n+1)-A376514(n+1)`
-/

namespace A351418.P8301691937473566540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A376514 (n + 1)

end

end A351418.P8301691937473566540

namespace A351418

/-- `A033273(n+1)-A376514(n+1)` -/
def P8301691937473566540.Spec : Prop :=
  ∀ n, P8301691937473566540.a n = A351418 (n + 1)

end A351418

/-! ## A351418.P4667210820677475220

`A375136(n+1)+A327517(n+1)`
-/

namespace A351418.P4667210820677475220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375136 (n + 1) + A327517 (n + 1)

end

end A351418.P4667210820677475220

namespace A351418

/-- `A375136(n+1)+A327517(n+1)` -/
def P4667210820677475220.Spec : Prop :=
  ∀ n, P4667210820677475220.a n = A351418 (n + 1)

end A351418

/-!
# A351419: If n = p_1^e_1 * ... * p_k^e_k, where p_1 < ... < p_k are primes, then a(n) is obtained by replacing the last factor p_k^e_k by (p_k - 1)^(e_k + 1); a(1) = 1.

The programs for A351419, the canonical program `A351419.P2780531834249054440` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351419 has offset 1).

The definition of A351419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351419.P2780531834249054440

`A070777(n+1)*A351168(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A351419

/-- `A070777(n+1)*A351168(n+1)` -/
def P2780531834249054440.Spec : Prop :=
  ∀ n, P2780531834249054440.a n = A351419 (n + 1)

theorem P2780531834249054440.correct : P2780531834249054440.Spec := by
  intro n
  simp only [A351419, Nat.add_sub_cancel]

end A351419

/-! ## A351419.P3555700311964243694

`A063994(A053585(n+1))*A351168(n+1)`
-/

namespace A351419.P3555700311964243694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A053585 (n + 1)).toNat * A351168 (n + 1)

end

end A351419.P3555700311964243694

namespace A351419

/-- `A063994(A053585(n+1))*A351168(n+1)` -/
def P3555700311964243694.Spec : Prop :=
  ∀ n, P3555700311964243694.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P13175386653995090409

`A351168(A006530(n+1))*A351168(n+1)`
-/

namespace A351419.P13175386653995090409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (A006530 (n + 1)).toNat * A351168 (n + 1)

end

end A351419.P13175386653995090409

namespace A351419

/-- `A351168(A006530(n+1))*A351168(n+1)` -/
def P13175386653995090409.Spec : Prop :=
  ∀ n, P13175386653995090409.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P9369212395182568990

`A063994(A345941(n+1))*A351168(n+1)`
-/

namespace A351419.P9369212395182568990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A345941 (n + 1)).toNat * A351168 (n + 1)

end

end A351419.P9369212395182568990

namespace A351419

/-- `A063994(A345941(n+1))*A351168(n+1)` -/
def P9369212395182568990.Spec : Prop :=
  ∀ n, P9369212395182568990.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P11085129860119012711

`A003958(A053585(n+1))*A351168(A243074(n+1))`
-/

namespace A351419.P11085129860119012711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A053585 (n + 1)).toNat * A351168 (A243074 (n + 1)).toNat

end

end A351419.P11085129860119012711

namespace A351419

/-- `A003958(A053585(n+1))*A351168(A243074(n+1))` -/
def P11085129860119012711.Spec : Prop :=
  ∀ n, P11085129860119012711.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P4023275532129927784

`A351168(A007947(n+1))*A351168(A217434(n+1))`
-/

namespace A351419.P4023275532129927784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (A007947 (n + 1)).toNat * A351168 (A217434 (n + 1)).toNat

end

end A351419.P4023275532129927784

namespace A351419

/-- `A351168(A007947(n+1))*A351168(A217434(n+1))` -/
def P4023275532129927784.Spec : Prop :=
  ∀ n, P4023275532129927784.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P10497866736400545557

`A351168(A129598(n+1))`
-/

namespace A351419.P10497866736400545557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (A129598 (n + 1)).toNat

end

end A351419.P10497866736400545557

namespace A351419

/-- `A351168(A129598(n+1))` -/
def P10497866736400545557.Spec : Prop :=
  ∀ n, P10497866736400545557.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P10395911378387922697

`A351168(A253560(n+1))`
-/

namespace A351419.P10395911378387922697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (A253560 (n + 1)).toNat

end

end A351419.P10395911378387922697

namespace A351419

/-- `A351168(A253560(n+1))` -/
def P10395911378387922697.Spec : Prop :=
  ∀ n, P10395911378387922697.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P10022569608088958563

`A351168((n+1)*A006530(n+1))`
-/

namespace A351419.P10022569608088958563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 ((n + 1 : ℤ) * A006530 (n + 1)).toNat

end

end A351419.P10022569608088958563

namespace A351419

/-- `A351168((n+1)*A006530(n+1))` -/
def P10022569608088958563.Spec : Prop :=
  ∀ n, P10022569608088958563.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P6211915488925916617

`A351168((n+1)*A111089(n+1))`
-/

namespace A351419.P6211915488925916617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 ((n + 1 : ℤ) * A111089 (n + 1)).toNat

end

end A351419.P6211915488925916617

namespace A351419

/-- `A351168((n+1)*A111089(n+1))` -/
def P6211915488925916617.Spec : Prop :=
  ∀ n, P6211915488925916617.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P4289776071022578504

`A351168(A032742(n+1)*A066048(n+1))`
-/

namespace A351419.P4289776071022578504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (A032742 (n + 1) * A066048 (n + 1)).toNat

end

end A351419.P4289776071022578504

namespace A351419

/-- `A351168(A032742(n+1)*A066048(n+1))` -/
def P4289776071022578504.Spec : Prop :=
  ∀ n, P4289776071022578504.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P1165247280089422864

`A351168(A007947(n+1)*A217434(n+1))`
-/

namespace A351419.P1165247280089422864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (A007947 (n + 1) * A217434 (n + 1)).toNat

end

end A351419.P1165247280089422864

namespace A351419

/-- `A351168(A007947(n+1)*A217434(n+1))` -/
def P1165247280089422864.Spec : Prop :=
  ∀ n, P1165247280089422864.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P11026759722160424115

`A351168(A015053(n+1)*A217434(n+1))`
-/

namespace A351419.P11026759722160424115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (A015053 (n + 1) * A217434 (n + 1)).toNat

end

end A351419.P11026759722160424115

namespace A351419

/-- `A351168(A015053(n+1)*A217434(n+1))` -/
def P11026759722160424115.Spec : Prop :=
  ∀ n, P11026759722160424115.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P920227423151033589

`A351168(A053585(n+1)*A243074(n+1))`
-/

namespace A351419.P920227423151033589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (A053585 (n + 1) * A243074 (n + 1)).toNat

end

end A351419.P920227423151033589

namespace A351419

/-- `A351168(A053585(n+1)*A243074(n+1))` -/
def P920227423151033589.Spec : Prop :=
  ∀ n, P920227423151033589.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P15230386750946261859

`A351168(A064549(n+1)/A293810(n+1))`
-/

namespace A351419.P15230386750946261859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A293810 (n + 1) : ℚ))).toNat

end

end A351419.P15230386750946261859

namespace A351419

/-- `A351168(A064549(n+1)/A293810(n+1))` -/
def P15230386750946261859.Spec : Prop :=
  ∀ n, P15230386750946261859.a n = A351419 (n + 1)

end A351419

/-! ## A351419.P2380091296297654406

`A351168(lcm(A007947(n+1), A351168(n+1)))`
-/

namespace A351419.P2380091296297654406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (Int.lcm (A007947 (n + 1)) (A351168 (n + 1)))

end

end A351419.P2380091296297654406

namespace A351419

/-- `A351168(lcm(A007947(n+1), A351168(n+1)))` -/
def P2380091296297654406.Spec : Prop :=
  ∀ n, P2380091296297654406.a n = A351419 (n + 1)

end A351419

/-!
# A351420: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where column k is the expansion of e.g.f. -log(1 - f^(k-1)(x)), where f(x) = log(1+x).

The programs for A351420, there is no canonical definition to state claims against.
-/

/-! ## A351420.P4444320172842935557

`A292977(n)+A102683(A099429(n))`
-/

namespace A351420.P4444320172842935557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 n + A102683 (A099429 n).toNat

end

end A351420.P4444320172842935557

/-! ## A351420.P8275725083871765786

`A292977(n)+A055641(A283043(n))`
-/

namespace A351420.P8275725083871765786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 n + A055641 (A283043 n).toNat

end

end A351420.P8275725083871765786

/-! ## A351420.P14195129992679558234

`A292977(n)+A054907(A289192(n))`
-/

namespace A351420.P14195129992679558234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 n + A054907 (A289192 n).toNat

end

end A351420.P14195129992679558234

/-! ## A351420.P18311916109187049453

`A292977(n)+A102683(A265264(n))`
-/

namespace A351420.P18311916109187049453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 n + A102683 (A265264 n).toNat

end

end A351420.P18311916109187049453

/-! ## A351420.P2452590877128368583

`A292977(n)+A288216(A032171(n+1))`
-/

namespace A351420.P2452590877128368583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 n + A288216 (A032171 (n + 1)).toNat

end

end A351420.P2452590877128368583

/-!
# A351421: Expansion of e.g.f. -log(1 - log(1 + log(1+x))).

The programs for A351421, there is no canonical definition to state claims against.
-/

/-! ## A351421.P11779818955622407900

`A351420(∑[n+3]+1)`
-/

namespace A351421.P11779818955622407900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A351421.P11779818955622407900

/-!
# A351422: Expansion of e.g.f. -log(1 - log(1 + log(1 + log(1+x)))).

The programs for A351422, there is no canonical definition to state claims against.
-/

/-! ## A351422.P17617681611277083558

`A351420(A141214(n+1))`
-/

namespace A351422.P17617681611277083558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (A141214 (n + 1)).toNat

end

end A351422.P17617681611277083558

/-! ## A351422.P3759541528400190512

`A351420(A027379(n+2))`
-/

namespace A351422.P3759541528400190512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (A027379 (n + 2)).toNat

end

end A351422.P3759541528400190512

/-! ## A351422.P2842855614871553706

`A351420(A055998(n+2))`
-/

namespace A351422.P2842855614871553706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (A055998 (n + 2)).toNat

end

end A351422.P2842855614871553706

/-!
# A351423: Expansion of e.g.f. -log(1 - log(1 + log(1 + log(1 + log(1+x))))).

The programs for A351423, there is no canonical definition to state claims against.
-/

/-! ## A351423.P17468036477838881420

`A351420(Δ[A264443(n)])`
-/

namespace A351423.P17468036477838881420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (f1 (n + 1) - f1 n).toNat

end

end A351423.P17468036477838881420

/-! ## A351423.P16209985910960148644

`A351420(A046691(n+3))`
-/

namespace A351423.P16209985910960148644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (A046691 (n + 3)).toNat

end

end A351423.P16209985910960148644

/-!
# A351424: a(n) = n! * [x^n] -log(1 - f^(n-1)(x)), where f(x) = log(1+x).

The programs for A351424, there is no canonical definition to state claims against.
-/

/-! ## A351424.P11436332329203591054

`A351420(∑[4*n]+1)`
-/

namespace A351424.P11436332329203591054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351420 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A351424.P11436332329203591054

/-!
# A351425: If n = p_1^e_1 * ... * p_k^e_k, where p_1 < ... < p_k are primes, then a(n) is obtained by replacing the last factor p_k^e_k by (p_k + 1)^(e_k - 1); a(1) = 1.

The programs for A351425, there is no canonical definition to state claims against.
-/

/-! ## A351425.P10018557036712266860

`A144016(val((n+2)!, ∏{p}[2*(n+1), #])!)`
-/

namespace A351425.P10018557036712266860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144016 (Nat.factorial (SequenceMachineLib.valuation (Nat.factorial (n + 2)) (∏ p ∈ Nat.primeFactors (f1 n), p)))

end

end A351425.P10018557036712266860

/-! ## A351425.P6361964196234499615

`A144016(A351436(n+1)!)`
-/

namespace A351425.P6361964196234499615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144016 (Nat.factorial (A351436 (n + 1)).toNat)

end

end A351425.P6361964196234499615

/-! ## A351425.P7149263148199724351

`A192507(A046643(n+1))+A033676(n+1)`
-/

namespace A351425.P7149263148199724351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192507 (A046643 (n + 1)).toNat + A033676 (n + 1)

end

end A351425.P7149263148199724351

/-! ## A351425.P6160042936317923911

`A347705(A183104(n+1))+A033676(n+1)`
-/

namespace A351425.P6160042936317923911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347705 (A183104 (n + 1)).toNat + A033676 (n + 1)

end

end A351425.P6160042936317923911

/-! ## A351425.P6610883892269431798

`A340786(n+1)^A071625(A179386(n+1))`
-/

namespace A351425.P6610883892269431798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340786 (n + 1) : ℚ) ^ (A071625 (A179386 (n + 1)).toNat : ℤ)

end

end A351425.P6610883892269431798

/-!
# A351427: Expansion of e.g.f. 1/exp(exp(exp(exp(x)-1)-1)-1).

The programs for A351427, there is no canonical definition to state claims against.
-/

/-! ## A351427.P14430915885840377824

`A351429(A052905(n+2))`
-/

namespace A351427.P14430915885840377824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351429 (A052905 (n + 2)).toNat

end

end A351427.P14430915885840377824

/-! ## A351427.P3350137687899903099

`A351429(A056115(n)+10)`
-/

namespace A351427.P3350137687899903099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351429 (A056115 n + 10).toNat

end

end A351427.P3350137687899903099

/-! ## A351427.P3581034247868291058

`A351429(eq[4, A025581(n)])`
-/

namespace A351427.P3581034247868291058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351427.P3581034247868291058

/-!
# A351429: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 + f^k(x)), where f(x) = exp(x) - 1.

The programs for A351429, there is no canonical definition to state claims against.
-/

/-! ## A351429.P4682133104079346648

`floor(A008276(n+1)/A117536(A008278(n+1)))`
-/

namespace A351429.P4682133104079346648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008276 (n + 1) : ℚ) / (A117536 (A008278 (n + 1)).toNat : ℚ)⌋

end

end A351429.P4682133104079346648

/-! ## A351429.P8438381772825281499

`A163626(n)%A262378(A262026(n+1))`
-/

namespace A351429.P8438381772825281499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163626 n) (A262378 (A262026 (n + 1)).toNat)

end

end A351429.P8438381772825281499

/-! ## A351429.P15042026129201193970

`floor(A086429(A124320(n))/A008276(n+1))`
-/

namespace A351429.P15042026129201193970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086429 (A124320 n).toNat : ℚ) / (A008276 (n + 1) : ℚ)⌋

end

end A351429.P15042026129201193970

/-!
# A351434: If n = Product (p_j^k_j) then a(n) = Product ((p_j - 1)^(k_j + 1)).

The programs for A351434, the canonical program `A351434.P7270461859985996856` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351434 has offset 1).

The definition of A351434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351434.P7270461859985996856

`∏{p}[n+1, 1-#]²*A326297(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A351434

/-- `∏{p}[n+1, 1-#]²*A326297(n+1)` -/
def P7270461859985996856.Spec : Prop :=
  ∀ n, P7270461859985996856.a n = A351434 (n + 1)

theorem P7270461859985996856.correct : P7270461859985996856.Spec := by
  intro n
  simp only [A351434, Nat.add_sub_cancel]

end A351434

/-! ## A351434.P15922137940827698074

`2^∑{p}[n+1, log2(#-1)]*A003958(n+1)`
-/

namespace A351434.P15922137940827698074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 ((p : ℤ) - 1 : ℝ)) * (A003958 (n + 1) : ℝ)

end

end A351434.P15922137940827698074

namespace A351434

/-- `2^∑{p}[n+1, log2(#-1)]*A003958(n+1)` -/
def P15922137940827698074.Spec : Prop :=
  ∀ n, P15922137940827698074.a n = (A351434 (n + 1) : ℝ)

end A351434

/-! ## A351434.P3641944601641224121

`A003958(n+1)*A173557(n+1)`
-/

namespace A351434.P3641944601641224121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A173557 (n + 1)

end

end A351434.P3641944601641224121

namespace A351434

/-- `A003958(n+1)*A173557(n+1)` -/
def P3641944601641224121.Spec : Prop :=
  ∀ n, P3641944601641224121.a n = A351434 (n + 1)

end A351434

/-! ## A351434.P15599010987596027136

`A167343(n+1)/A326297(n+1)`
-/

namespace A351434.P15599010987596027136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167343 (n + 1) : ℚ) / (A326297 (n + 1) : ℚ)

end

end A351434.P15599010987596027136

namespace A351434

/-- `A167343(n+1)/A326297(n+1)` -/
def P15599010987596027136.Spec : Prop :=
  ∀ n, P15599010987596027136.a n = (A351434 (n + 1) : ℚ)

end A351434

/-! ## A351434.P700463524580158377

`A023900(n+1)²*A326297(n+1)`
-/

namespace A351434.P700463524580158377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) ^ 2 * A326297 (n + 1)

end

end A351434.P700463524580158377

namespace A351434

/-- `A023900(n+1)²*A326297(n+1)` -/
def P700463524580158377.Spec : Prop :=
  ∀ n, P700463524580158377.a n = A351434 (n + 1)

end A351434

/-! ## A351434.P10635783205486916771

`A173557(n+1)²*A326297(n+1)`
-/

namespace A351434.P10635783205486916771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) ^ 2 * A326297 (n + 1)

end

end A351434.P10635783205486916771

namespace A351434

/-- `A173557(n+1)²*A326297(n+1)` -/
def P10635783205486916771.Spec : Prop :=
  ∀ n, P10635783205486916771.a n = A351434 (n + 1)

end A351434

/-! ## A351434.P17333409748618132325

`A003958(n+1)²/A326297(n+1)`
-/

namespace A351434.P17333409748618132325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A326297 (n + 1) : ℚ)

end

end A351434.P17333409748618132325

namespace A351434

/-- `A003958(n+1)²/A326297(n+1)` -/
def P17333409748618132325.Spec : Prop :=
  ∀ n, P17333409748618132325.a n = (A351434 (n + 1) : ℚ)

end A351434

/-! ## A351434.P2742513218038674089

`A125131(n+1)²/A326297(n+1)`
-/

namespace A351434.P2742513218038674089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125131 (n + 1) ^ 2 : ℚ) / (A326297 (n + 1) : ℚ)

end

end A351434.P2742513218038674089

namespace A351434

/-- `A125131(n+1)²/A326297(n+1)` -/
def P2742513218038674089.Spec : Prop :=
  ∀ n, P2742513218038674089.a n = (A351434 (n + 1) : ℚ)

end A351434

/-! ## A351434.P12529119369161391918

`A000010(A007947(n+1))*A003958(n+1)`
-/

namespace A351434.P12529119369161391918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat * A003958 (n + 1)

end

end A351434.P12529119369161391918

namespace A351434

/-- `A000010(A007947(n+1))*A003958(n+1)` -/
def P12529119369161391918.Spec : Prop :=
  ∀ n, P12529119369161391918.a n = A351434 (n + 1)

end A351434

/-! ## A351434.P12857277932174983425

`A003958(n+1)*A003958(A302138(n+1))`
-/

namespace A351434.P12857277932174983425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003958 (A302138 (n + 1)).toNat

end

end A351434.P12857277932174983425

namespace A351434

/-- `A003958(n+1)*A003958(A302138(n+1))` -/
def P12857277932174983425.Spec : Prop :=
  ∀ n, P12857277932174983425.a n = A351434 (n + 1)

end A351434

/-! ## A351434.P3460646917573757853

`A000010(A007947(n+1))²*A326297(n+1)`
-/

namespace A351434.P3460646917573757853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat ^ 2 * A326297 (n + 1)

end

end A351434.P3460646917573757853

namespace A351434

/-- `A000010(A007947(n+1))²*A326297(n+1)` -/
def P3460646917573757853.Spec : Prop :=
  ∀ n, P3460646917573757853.a n = A351434 (n + 1)

end A351434

/-! ## A351434.P1657260748410553652

`A003958(n+1)²/A003958(A003557(n+1))`
-/

namespace A351434.P1657260748410553652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A003958 (A003557 (n + 1)).toNat : ℚ)

end

end A351434.P1657260748410553652

namespace A351434

/-- `A003958(n+1)²/A003958(A003557(n+1))` -/
def P1657260748410553652.Spec : Prop :=
  ∀ n, P1657260748410553652.a n = (A351434 (n + 1) : ℚ)

end A351434

/-! ## A351434.P16748715388916203517

`A003958(n+1)²/A003958(A336651(n+1))`
-/

namespace A351434.P16748715388916203517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A003958 (A336651 (n + 1)).toNat : ℚ)

end

end A351434.P16748715388916203517

namespace A351434

/-- `A003958(n+1)²/A003958(A336651(n+1))` -/
def P16748715388916203517.Spec : Prop :=
  ∀ n, P16748715388916203517.a n = (A351434 (n + 1) : ℚ)

end A351434

/-! ## A351434.P9843346402194495847

`A003958(n+1)²/A003958(A347291(n+1))`
-/

namespace A351434.P9843346402194495847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A003958 (A347291 (n + 1)).toNat : ℚ)

end

end A351434.P9843346402194495847

namespace A351434

/-- `A003958(n+1)²/A003958(A347291(n+1))` -/
def P9843346402194495847.Spec : Prop :=
  ∀ n, P9843346402194495847.a n = (A351434 (n + 1) : ℚ)

end A351434

/-! ## A351434.P1442036811562423920

`A003958(n+1)²/A003958(A357689(n+1))`
-/

namespace A351434.P1442036811562423920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A003958 (A357689 (n + 1)).toNat : ℚ)

end

end A351434.P1442036811562423920

namespace A351434

/-- `A003958(n+1)²/A003958(A357689(n+1))` -/
def P1442036811562423920.Spec : Prop :=
  ∀ n, P1442036811562423920.a n = (A351434 (n + 1) : ℚ)

end A351434

/-! ## A351434.P12243220761784268989

`A003958(2*(n+1))*A003958(A007947(2*(n+1)))`
-/

namespace A351434.P12243220761784268989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (2 * (n + 1)) * A003958 (A007947 (2 * (n + 1))).toNat

end

end A351434.P12243220761784268989

namespace A351434

/-- `A003958(2*(n+1))*A003958(A007947(2*(n+1)))` -/
def P12243220761784268989.Spec : Prop :=
  ∀ n, P12243220761784268989.a n = A351434 (n + 1)

end A351434

/-! ## A351434.P15633796623183832979

`A000010(n+1)/A003557(n+1)*A003958(n+1)`
-/

namespace A351434.P15633796623183832979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A003958 (n + 1) : ℚ)

end

end A351434.P15633796623183832979

namespace A351434

/-- `A000010(n+1)/A003557(n+1)*A003958(n+1)` -/
def P15633796623183832979.Spec : Prop :=
  ∀ n, P15633796623183832979.a n = (A351434 (n + 1) : ℚ)

end A351434

/-! ## A351434.P11938019443093450711

`A003958(n+1)/A327564(n+1)*A340368(n+1)`
-/

namespace A351434.P11938019443093450711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A327564 (n + 1) : ℚ) * (A340368 (n + 1) : ℚ)

end

end A351434.P11938019443093450711

namespace A351434

/-- `A003958(n+1)/A327564(n+1)*A340368(n+1)` -/
def P11938019443093450711.Spec : Prop :=
  ∀ n, P11938019443093450711.a n = (A351434 (n + 1) : ℚ)

end A351434

/-! ## A351434.P8101986725811486548

`A003958((n+1)*∏{p}[n+1, #])`
-/

namespace A351434.P8101986725811486548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A351434.P8101986725811486548

namespace A351434

/-- `A003958((n+1)*∏{p}[n+1, #])` -/
def P8101986725811486548.Spec : Prop :=
  ∀ n, P8101986725811486548.a n = A351434 (n + 1)

end A351434

/-! ## A351434.P11665614544726039707

`A003958(A064549(n+1))`
-/

namespace A351434.P11665614544726039707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A064549 (n + 1)).toNat

end

end A351434.P11665614544726039707

namespace A351434

/-- `A003958(A064549(n+1))` -/
def P11665614544726039707.Spec : Prop :=
  ∀ n, P11665614544726039707.a n = A351434 (n + 1)

end A351434

/-!
# A351435: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)^(k_j + 1)).

The programs for A351435, the canonical program `A351435.P6108883380872985515` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351435 has offset 1).

The definition of A351435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351435.P6108883380872985515

`A003959(n+1)*A048250(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A351435

/-- `A003959(n+1)*A048250(n+1)` -/
def P6108883380872985515.Spec : Prop :=
  ∀ n, P6108883380872985515.a n = A351435 (n + 1)

theorem P6108883380872985515.correct : P6108883380872985515.Spec := by
  intro n
  simp only [A351435, Nat.add_sub_cancel]

end A351435

/-! ## A351435.P406581954555339175

`A167349(n+1)/A327564(n+1)`
-/

namespace A351435.P406581954555339175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167349 (n + 1) : ℚ) / (A327564 (n + 1) : ℚ)

end

end A351435.P406581954555339175

namespace A351435

/-- `A167349(n+1)/A327564(n+1)` -/
def P406581954555339175.Spec : Prop :=
  ∀ n, P406581954555339175.a n = (A351435 (n + 1) : ℚ)

end A351435

/-! ## A351435.P824616914089222131

`A048250(n+1)²*A327564(n+1)`
-/

namespace A351435.P824616914089222131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) ^ 2 * A327564 (n + 1)

end

end A351435.P824616914089222131

namespace A351435

/-- `A048250(n+1)²*A327564(n+1)` -/
def P824616914089222131.Spec : Prop :=
  ∀ n, P824616914089222131.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P13090383574829416535

`A323363(n+1)²*A327564(n+1)`
-/

namespace A351435.P13090383574829416535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323363 (n + 1) ^ 2 * A327564 (n + 1)

end

end A351435.P13090383574829416535

namespace A351435

/-- `A323363(n+1)²*A327564(n+1)` -/
def P13090383574829416535.Spec : Prop :=
  ∀ n, P13090383574829416535.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P10446206455274715678

`A003959(n+1)²/A327564(n+1)`
-/

namespace A351435.P10446206455274715678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A327564 (n + 1) : ℚ)

end

end A351435.P10446206455274715678

namespace A351435

/-- `A003959(n+1)²/A327564(n+1)` -/
def P10446206455274715678.Spec : Prop :=
  ∀ n, P10446206455274715678.a n = (A351435 (n + 1) : ℚ)

end A351435

/-! ## A351435.P14220073692255286029

`A000203(∏{p}[n+1, #])²*A327564(n+1)`
-/

namespace A351435.P14220073692255286029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2 * A327564 (n + 1)

end

end A351435.P14220073692255286029

namespace A351435

/-- `A000203(∏{p}[n+1, #])²*A327564(n+1)` -/
def P14220073692255286029.Spec : Prop :=
  ∀ n, P14220073692255286029.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P16824833889732435166

`∑{d}[n+1, A003968(#)*A367866((n+1)/#)]`
-/

namespace A351435.P16824833889732435166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A367866 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351435.P16824833889732435166

namespace A351435

/-- `∑{d}[n+1, A003968(#)*A367866((n+1)/#)]` -/
def P16824833889732435166.Spec : Prop :=
  ∀ n, P16824833889732435166.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P18149409174117691112

`A003959(n+1)*A003959(A007947(n+1))`
-/

namespace A351435.P18149409174117691112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A003959 (A007947 (n + 1)).toNat

end

end A351435.P18149409174117691112

namespace A351435

/-- `A003959(n+1)*A003959(A007947(n+1))` -/
def P18149409174117691112.Spec : Prop :=
  ∀ n, P18149409174117691112.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P17756862378238432910

`A001615(A007947(n+1))²*A327564(n+1)`
-/

namespace A351435.P17756862378238432910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A007947 (n + 1)).toNat ^ 2 * A327564 (n + 1)

end

end A351435.P17756862378238432910

namespace A351435

/-- `A001615(A007947(n+1))²*A327564(n+1)` -/
def P17756862378238432910.Spec : Prop :=
  ∀ n, P17756862378238432910.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P10272806841825377166

`A003959(n+1)²/A003959(A003557(n+1))`
-/

namespace A351435.P10272806841825377166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A003959 (A003557 (n + 1)).toNat : ℚ)

end

end A351435.P10272806841825377166

namespace A351435

/-- `A003959(n+1)²/A003959(A003557(n+1))` -/
def P10272806841825377166.Spec : Prop :=
  ∀ n, P10272806841825377166.a n = (A351435 (n + 1) : ℚ)

end A351435

/-! ## A351435.P4239511221710879244

`A003959(n+1)/A005361(n+1)*A304411(n+1)`
-/

namespace A351435.P4239511221710879244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ) * (A304411 (n + 1) : ℚ)

end

end A351435.P4239511221710879244

namespace A351435

/-- `A003959(n+1)/A005361(n+1)*A304411(n+1)` -/
def P4239511221710879244.Spec : Prop :=
  ∀ n, P4239511221710879244.a n = (A351435 (n + 1) : ℚ)

end A351435

/-! ## A351435.P17190509257472297969

`A003959((n+1)*∏{p}[n+1, #])`
-/

namespace A351435.P17190509257472297969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A351435.P17190509257472297969

namespace A351435

/-- `A003959((n+1)*∏{p}[n+1, #])` -/
def P17190509257472297969.Spec : Prop :=
  ∀ n, P17190509257472297969.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P17100875568565352731

`A003959(A064549(n+1))`
-/

namespace A351435.P17100875568565352731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A064549 (n + 1)).toNat

end

end A351435.P17100875568565352731

namespace A351435

/-- `A003959(A064549(n+1))` -/
def P17100875568565352731.Spec : Prop :=
  ∀ n, P17100875568565352731.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P3416304425757322595

`A003959((n+1)*A007947(n+1))`
-/

namespace A351435.P3416304425757322595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A351435.P3416304425757322595

namespace A351435

/-- `A003959((n+1)*A007947(n+1))` -/
def P3416304425757322595.Spec : Prop :=
  ∀ n, P3416304425757322595.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P17829667955259645186

`A327564(A064549(n+1))²/A327564(n+1)`
-/

namespace A351435.P17829667955259645186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (A064549 (n + 1)).toNat ^ 2 : ℚ) / (A327564 (n + 1) : ℚ)

end

end A351435.P17829667955259645186

namespace A351435

/-- `A327564(A064549(n+1))²/A327564(n+1)` -/
def P17829667955259645186.Spec : Prop :=
  ∀ n, P17829667955259645186.a n = (A351435 (n + 1) : ℚ)

end A351435

/-! ## A351435.P1056819409433124577

`∑{d}[(n+1)*∏{p}[n+1, #], A003968(#)]`
-/

namespace A351435.P1056819409433124577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d

end

end A351435.P1056819409433124577

namespace A351435

/-- `∑{d}[(n+1)*∏{p}[n+1, #], A003968(#)]` -/
def P1056819409433124577.Spec : Prop :=
  ∀ n, P1056819409433124577.a n = A351435 (n + 1)

end A351435

/-! ## A351435.P11325719060643035087

`∏{d}[(n+1)*∏{p}[n+1, #], A000203(A014963(#))]`
-/

namespace A351435.P11325719060643035087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 (A014963 d).toNat

end

end A351435.P11325719060643035087

namespace A351435

/-- `∏{d}[(n+1)*∏{p}[n+1, #], A000203(A014963(#))]` -/
def P11325719060643035087.Spec : Prop :=
  ∀ n, P11325719060643035087.a n = A351435 (n + 1)

end A351435

/-!
# A351436: a(n) = n - A351168(n).

The programs for A351436, the canonical program `A351436.P14023172424886566728` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351436 has offset 1).

The definition of A351436 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351168, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351436.P14023172424886566728

`n+1-A351168(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A351436

/-- `n+1-A351168(n+1)` -/
def P14023172424886566728.Spec : Prop :=
  ∀ n, P14023172424886566728.a n = A351436 (n + 1)

theorem P14023172424886566728.correct : P14023172424886566728.Spec := by
  intro n
  simp only [A351436, Nat.add_sub_cancel]

end A351436

/-! ## A351436.P13106949461877129081

`A024000(A351168(n+1))+n`
-/

namespace A351436.P13106949461877129081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A351168 (n + 1)).toNat + (n : ℤ)

end

end A351436.P13106949461877129081

namespace A351436

/-- `A024000(A351168(n+1))+n` -/
def P13106949461877129081.Spec : Prop :=
  ∀ n, P13106949461877129081.a n = A351436 (n + 1)

end A351436

/-! ## A351436.P1776312052900545786

`A005408(n)%(A351168(n+1)+n)`
-/

namespace A351436.P1776312052900545786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A351168 (n + 1) + (n : ℤ))

end

end A351436.P1776312052900545786

namespace A351436

/-- `A005408(n)%(A351168(n+1)+n)` -/
def P1776312052900545786.Spec : Prop :=
  ∀ n, P1776312052900545786.a n = A351436 (n + 1)

end A351436

/-! ## A351436.P1994973509510270301

`abs(A351168(n+1)+A001478(n+1))`
-/

namespace A351436.P1994973509510270301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351168 (n + 1) + A001478 (n + 1)|

end

end A351436.P1994973509510270301

namespace A351436

/-- `abs(A351168(n+1)+A001478(n+1))` -/
def P1994973509510270301.Spec : Prop :=
  ∀ n, P1994973509510270301.a n = A351436 (n + 1)

end A351436

/-! ## A351436.P16169448226534504432

`(A005898(n)*A351168(n+1))%(n+1)`
-/

namespace A351436.P16169448226534504432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005898 n * A351168 (n + 1)) (n + 1 : ℤ)

end

end A351436.P16169448226534504432

namespace A351436

/-- `(A005898(n)*A351168(n+1))%(n+1)` -/
def P16169448226534504432.Spec : Prop :=
  ∀ n, P16169448226534504432.a n = A351436 (n + 1)

end A351436

/-! ## A351436.P11531394841990781163

`A000265(2*n+1)%(A351168(n+1)+n)`
-/

namespace A351436.P11531394841990781163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (2 * n + 1)) (A351168 (n + 1) + (n : ℤ))

end

end A351436.P11531394841990781163

namespace A351436

/-- `A000265(2*n+1)%(A351168(n+1)+n)` -/
def P11531394841990781163.Spec : Prop :=
  ∀ n, P11531394841990781163.a n = A351436 (n + 1)

end A351436

/-! ## A351436.P11356066956681479100

`(2*n+1)%((A351168(n+1)+n)%A000040(n+1)²)`
-/

namespace A351436.P11356066956681479100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (Int.tmod (A351168 (n + 1) + (n : ℤ)) (A000040 (n + 1) ^ 2))

end

end A351436.P11356066956681479100

namespace A351436

/-- `(2*n+1)%((A351168(n+1)+n)%A000040(n+1)²)` -/
def P11356066956681479100.Spec : Prop :=
  ∀ n, P11356066956681479100.a n = A351436 (n + 1)

end A351436

/-!
# A351437: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 - x)) / (1 - x)^2.

The programs for A351437, there is no canonical definition to state claims against.
-/

/-! ## A351437.P16156599078058993177

`A007476(n+1)-A275872(n)`
-/

namespace A351437.P16156599078058993177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 (n + 1) - A275872 n

end

end A351437.P16156599078058993177

/-! ## A351437.P16930473549370976311

`A210545(A000096(n+1))-A275872(n)`
-/

namespace A351437.P16930473549370976311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A000096 (n + 1)).toNat - A275872 n

end

end A351437.P16930473549370976311

/-! ## A351437.P9511515992461867275

`A000265(A245160(n+1)-A275872(n))`
-/

namespace A351437.P9511515992461867275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A245160 (n + 1) - A275872 n).toNat

end

end A351437.P9511515992461867275

/-! ## A351437.P7425362477361497717

`A000265(A245161(n+1)-A275872(n))`
-/

namespace A351437.P7425362477361497717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A245161 (n + 1) - A275872 n).toNat

end

end A351437.P7425362477361497717

/-! ## A351437.P7789320078626520501

`A245160(A044914(n+1))-A275872(n)`
-/

namespace A351437.P7789320078626520501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245160 (A044914 (n + 1)).toNat - A275872 n

end

end A351437.P7789320078626520501

/-!
# A351438: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 - x)) / (1 - x)^3.

The programs for A351438, there is no canonical definition to state claims against.
-/

/-! ## A351438.P3745878734150552490

`A081399(A106228(n)+A000120(2*(n+2)))`
-/

namespace A351438.P3745878734150552490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A106228 n + A000120 (2 * (n + 2))).toNat

end

end A351438.P3745878734150552490

/-!
# A351439: Number of prime factors p of n such that p^(1+valuation(n,p)) divides sigma(n).

The programs for A351439, the canonical program `A351439.P4622805423921165504` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351439 has offset 1).

The definition of A351439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351439.P4622805423921165504

`A001221(gcd(n+1, A017665(n+1)))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A351439

/-- `A001221(gcd(n+1, A017665(n+1)))` -/
def P4622805423921165504.Spec : Prop :=
  ∀ n, P4622805423921165504.a n = A351439 (n + 1)

theorem P4622805423921165504.correct : P4622805423921165504.Spec := by
  intro n
  simp only [A351439, Nat.add_sub_cancel]

end A351439

/-! ## A351439.P110342760419662362

`A001221(gcd(A017665(n+1), A129202(n)))`
-/

namespace A351439.P110342760419662362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A017665 (n + 1)) (A129202 n))

end

end A351439.P110342760419662362

namespace A351439

/-- `A001221(gcd(A017665(n+1), A129202(n)))` -/
def P110342760419662362.Spec : Prop :=
  ∀ n, P110342760419662362.a n = A351439 (n + 1)

end A351439

/-! ## A351439.P8400485127137309886

`A001221(gcd(A009242(n+1)/(n+1), A000027(n+1)))`
-/

namespace A351439.P8400485127137309886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (SequenceMachineLib.roundAway ((A009242 (n + 1) : ℚ) / (n + 1 : ℚ))) (A000027 (n + 1)))

end

end A351439.P8400485127137309886

namespace A351439

/-- `A001221(gcd(A009242(n+1)/(n+1), A000027(n+1)))` -/
def P8400485127137309886.Spec : Prop :=
  ∀ n, P8400485127137309886.a n = A351439 (n + 1)

end A351439

/-! ## A351439.P14456318601082853647

`A352822(n*A017665(n+1)+n+1)`
-/

namespace A351439.P14456318601082853647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 ((n : ℤ) * A017665 (n + 1) + (n + 1 : ℤ)).toNat

end

end A351439.P14456318601082853647

namespace A351439

/-- `A352822(n*A017665(n+1)+n+1)` -/
def P14456318601082853647.Spec : Prop :=
  ∀ n, P14456318601082853647.a n = A351439 (n + 1)

end A351439

/-! ## A351439.P839376713420691660

`A329343(A356224(2*n+1)+A319656(n+2))`
-/

namespace A351439.P839376713420691660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329343 (A356224 (2 * n + 1) + A319656 (n + 2)).toNat

end

end A351439.P839376713420691660

namespace A351439

/-- `A329343(A356224(2*n+1)+A319656(n+2))` -/
def P839376713420691660.Spec : Prop :=
  ∀ n, P839376713420691660.a n = A351439 (n + 1)

end A351439

/-!
# A351441: Lexicographically earliest infinite sequence such that a(i) = a(j) => A003557(i) = A003557(j) and A351450(i) = A351450(j) for all i, j >= 1.

The programs for A351441, there is no canonical definition to state claims against.
-/

/-! ## A351441.P7385340386088258238

`A366294(n+1)%A359693(n+1)`
-/

namespace A351441.P7385340386088258238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366294 (n + 1)) (A359693 (n + 1))

end

end A351441.P7385340386088258238

/-! ## A351441.P16418039204429094500

`A366294(n+1)+A366289(A077552(n))`
-/

namespace A351441.P16418039204429094500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366294 (n + 1) + A366289 (A077552 n).toNat

end

end A351441.P16418039204429094500

/-! ## A351441.P4272633241987088364

`A366294(n+1)%A002808(A011782(n))`
-/

namespace A351441.P4272633241987088364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366294 (n + 1)) (A002808 (A011782 n).toNat)

end

end A351441.P4272633241987088364

/-! ## A351441.P1963785223224275036

`A366294(n+1)+A010054(A000285(n+2))`
-/

namespace A351441.P1963785223224275036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366294 (n + 1) + A010054 (A000285 (n + 2)).toNat

end

end A351441.P1963785223224275036

/-! ## A351441.P12116233780584065813

`A366294(n+1)+A364988(A201362(n+4))`
-/

namespace A351441.P12116233780584065813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366294 (n + 1) + A364988 (A201362 (n + 4)).toNat

end

end A351441.P12116233780584065813

/-!
# A351442: a(n) = A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

The programs for A351442, the canonical program `A351442.P14048376927472810043` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351442 has offset 1).

The definition of A351442 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351442.P14048376927472810043

`A003958(A000203(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A351442

/-- `A003958(A000203(n+1))` -/
def P14048376927472810043.Spec : Prop :=
  ∀ n, P14048376927472810043.a n = A351442 (n + 1)

theorem P14048376927472810043.correct : P14048376927472810043.Spec := by
  intro n
  simp only [A351442, Nat.add_sub_cancel]

end A351442

/-! ## A351442.P2139483100836098937

`A351445(n+1)+A003958(n+1)`
-/

namespace A351442.P2139483100836098937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351445 (n + 1) + A003958 (n + 1)

end

end A351442.P2139483100836098937

namespace A351442

/-- `A351445(n+1)+A003958(n+1)` -/
def P2139483100836098937.Spec : Prop :=
  ∀ n, P2139483100836098937.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P7468116630653603494

`A351444(n+1)-A322582(n+1)`
-/

namespace A351442.P7468116630653603494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351444 (n + 1) - A322582 (n + 1)

end

end A351442.P7468116630653603494

namespace A351442

/-- `A351444(n+1)-A322582(n+1)` -/
def P7468116630653603494.Spec : Prop :=
  ∀ n, P7468116630653603494.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P10937591874655520660

`A003958(∑{d}[n+1, #])`
-/

namespace A351442.P10937591874655520660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A351442.P10937591874655520660

namespace A351442

/-- `A003958(∑{d}[n+1, #])` -/
def P10937591874655520660.Spec : Prop :=
  ∀ n, P10937591874655520660.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P3233535512104814348

`A003958(A074400(n+1))`
-/

namespace A351442.P3233535512104814348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A074400 (n + 1)).toNat

end

end A351442.P3233535512104814348

namespace A351442

/-- `A003958(A074400(n+1))` -/
def P3233535512104814348.Spec : Prop :=
  ∀ n, P3233535512104814348.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P16410509518837256617

`A003958(A161942(n+1))`
-/

namespace A351442.P16410509518837256617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A161942 (n + 1)).toNat

end

end A351442.P16410509518837256617

namespace A351442

/-- `A003958(A161942(n+1))` -/
def P16410509518837256617.Spec : Prop :=
  ∀ n, P16410509518837256617.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P5773371588657317760

`A003958(A088580(n+1)-1)`
-/

namespace A351442.P5773371588657317760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A088580 (n + 1) - 1).toNat

end

end A351442.P5773371588657317760

namespace A351442

/-- `A003958(A088580(n+1)-1)` -/
def P5773371588657317760.Spec : Prop :=
  ∀ n, P5773371588657317760.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P1589833598047111301

`A003958(A337194(n+1)-1)`
-/

namespace A351442.P1589833598047111301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A337194 (n + 1) - 1).toNat

end

end A351442.P1589833598047111301

namespace A351442

/-- `A003958(A337194(n+1)-1)` -/
def P1589833598047111301.Spec : Prop :=
  ∀ n, P1589833598047111301.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P14242730990403082292

`A003958(A239050(n+1)/2)`
-/

namespace A351442.P14242730990403082292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A351442.P14242730990403082292

namespace A351442

/-- `A003958(A239050(n+1)/2)` -/
def P14242730990403082292.Spec : Prop :=
  ∀ n, P14242730990403082292.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P2120558032710152305

`A003958(A001065(n+1)+1+n)`
-/

namespace A351442.P2120558032710152305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A351442.P2120558032710152305

namespace A351442

/-- `A003958(A001065(n+1)+1+n)` -/
def P2120558032710152305.Spec : Prop :=
  ∀ n, P2120558032710152305.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P14658105525970647945

`A353792(n+1)/A350073(n+1)`
-/

namespace A351442.P14658105525970647945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353792 (n + 1) : ℚ) / (A350073 (n + 1) : ℚ)

end

end A351442.P14658105525970647945

namespace A351442

/-- `A353792(n+1)/A350073(n+1)` -/
def P14658105525970647945.Spec : Prop :=
  ∀ n, P14658105525970647945.a n = (A351442 (n + 1) : ℚ)

end A351442

/-! ## A351442.P1609566389602485712

`A003958(A048146(n+1)+A034448(n+1))`
-/

namespace A351442.P1609566389602485712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A351442.P1609566389602485712

namespace A351442

/-- `A003958(A048146(n+1)+A034448(n+1))` -/
def P1609566389602485712.Spec : Prop :=
  ∀ n, P1609566389602485712.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P2036731891976460705

`A003958(A162296(n+1)+A048250(n+1))`
-/

namespace A351442.P2036731891976460705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A162296 (n + 1) + A048250 (n + 1)).toNat

end

end A351442.P2036731891976460705

namespace A351442

/-- `A003958(A162296(n+1)+A048250(n+1))` -/
def P2036731891976460705.Spec : Prop :=
  ∀ n, P2036731891976460705.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P223131617473947152

`A351445(n+1)+A339905(A064989(n+1))`
-/

namespace A351442.P223131617473947152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351445 (n + 1) + A339905 (A064989 (n + 1)).toNat

end

end A351442.P223131617473947152

namespace A351442

/-- `A351445(n+1)+A339905(A064989(n+1))` -/
def P223131617473947152.Spec : Prop :=
  ∀ n, P223131617473947152.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P16044397052532736144

`A003958(A003959(n+1)-A348029(n+1))`
-/

namespace A351442.P16044397052532736144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003959 (n + 1) - A348029 (n + 1)).toNat

end

end A351442.P16044397052532736144

namespace A351442

/-- `A003958(A003959(n+1)-A348029(n+1))` -/
def P16044397052532736144.Spec : Prop :=
  ∀ n, P16044397052532736144.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P9438905719431466766

`A003958(A323403(n+1)-A046692(n+1))`
-/

namespace A351442.P9438905719431466766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A323403 (n + 1) - A046692 (n + 1)).toNat

end

end A351442.P9438905719431466766

namespace A351442

/-- `A003958(A323403(n+1)-A046692(n+1))` -/
def P9438905719431466766.Spec : Prop :=
  ∀ n, P9438905719431466766.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P4086175271859104927

`A003958(A348944(n+1)-A348945(n+1))`
-/

namespace A351442.P4086175271859104927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A348944 (n + 1) - A348945 (n + 1)).toNat

end

end A351442.P4086175271859104927

namespace A351442

/-- `A003958(A348944(n+1)-A348945(n+1))` -/
def P4086175271859104927.Spec : Prop :=
  ∀ n, P4086175271859104927.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P2982312912591225762

`A003958(A080398(n+1)*A387156(n+1))`
-/

namespace A351442.P2982312912591225762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A080398 (n + 1) * A387156 (n + 1)).toNat

end

end A351442.P2982312912591225762

namespace A351442

/-- `A003958(A080398(n+1)*A387156(n+1))` -/
def P2982312912591225762.Spec : Prop :=
  ∀ n, P2982312912591225762.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P6946753791647796853

`A003958(A348047(n+1)*A348048(n+1))`
-/

namespace A351442.P6946753791647796853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A348047 (n + 1) * A348048 (n + 1)).toNat

end

end A351442.P6946753791647796853

namespace A351442

/-- `A003958(A348047(n+1)*A348048(n+1))` -/
def P6946753791647796853.Spec : Prop :=
  ∀ n, P6946753791647796853.a n = A351442 (n + 1)

end A351442

/-! ## A351442.P14552848397153522389

`A003958(A348946(n+1)*A348948(n+1))`
-/

namespace A351442.P14552848397153522389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A348946 (n + 1) * A348948 (n + 1)).toNat

end

end A351442.P14552848397153522389

namespace A351442

/-- `A003958(A348946(n+1)*A348948(n+1))` -/
def P14552848397153522389.Spec : Prop :=
  ∀ n, P14552848397153522389.a n = A351442 (n + 1)

end A351442

/-!
# A351444: a(n) = n - A003958(n) + A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

The programs for A351444, the canonical program `A351444.P16678748484825930213` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351444 has offset 1).

The definition of A351444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351444.P15736468406559415114

`n+1+A351445(n+1)`
-/

namespace A351444.P15736468406559415114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A351445 (n + 1)

end

end A351444.P15736468406559415114

namespace A351444

/-- `n+1+A351445(n+1)` -/
def P15736468406559415114.Spec : Prop :=
  ∀ n, P15736468406559415114.a n = A351444 (n + 1)

end A351444

/-! ## A351444.P16678748484825930213

`A322582(n+1)+A351442(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A351444

/-- `A322582(n+1)+A351442(n+1)` -/
def P16678748484825930213.Spec : Prop :=
  ∀ n, P16678748484825930213.a n = A351444 (n + 1)

theorem P16678748484825930213.correct : P16678748484825930213.Spec := by
  intro n
  simp only [A351444, Nat.add_sub_cancel]

end A351444

/-! ## A351444.P15505627702643945212

`A322582(n+1)+A003958(A000203(n+1))`
-/

namespace A351444.P15505627702643945212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + A003958 (A000203 (n + 1)).toNat

end

end A351444.P15505627702643945212

namespace A351444

/-- `A322582(n+1)+A003958(A000203(n+1))` -/
def P15505627702643945212.Spec : Prop :=
  ∀ n, P15505627702643945212.a n = A351444 (n + 1)

end A351444

/-! ## A351444.P1340821736802288208

`A322582(n+1)+A003958(A074400(n+1))`
-/

namespace A351444.P1340821736802288208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + A003958 (A074400 (n + 1)).toNat

end

end A351444.P1340821736802288208

namespace A351444

/-- `A322582(n+1)+A003958(A074400(n+1))` -/
def P1340821736802288208.Spec : Prop :=
  ∀ n, P1340821736802288208.a n = A351444 (n + 1)

end A351444

/-! ## A351444.P16077760478467761929

`A322582(n+1)+A003958(A161942(n+1))`
-/

namespace A351444.P16077760478467761929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + A003958 (A161942 (n + 1)).toNat

end

end A351444.P16077760478467761929

namespace A351444

/-- `A322582(n+1)+A003958(A161942(n+1))` -/
def P16077760478467761929.Spec : Prop :=
  ∀ n, P16077760478467761929.a n = A351444 (n + 1)

end A351444

/-! ## A351444.P1669684131209152383

`A322582(n+1)+A003958(A239050(n+1)/2)`
-/

namespace A351444.P1669684131209152383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + A003958 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A351444.P1669684131209152383

namespace A351444

/-- `A322582(n+1)+A003958(A239050(n+1)/2)` -/
def P1669684131209152383.Spec : Prop :=
  ∀ n, P1669684131209152383.a n = A351444 (n + 1)

end A351444

/-! ## A351444.P515752954777474444

`A322582(n+1)+A003958(A239050(n+1))`
-/

namespace A351444.P515752954777474444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + A003958 (A239050 (n + 1)).toNat

end

end A351444.P515752954777474444

namespace A351444

/-- `A322582(n+1)+A003958(A239050(n+1))` -/
def P515752954777474444.Spec : Prop :=
  ∀ n, P515752954777474444.a n = A351444 (n + 1)

end A351444

/-! ## A351444.P14828331248046188842

`A322582(n+1)+A003958(A319528(n+1)/2)`
-/

namespace A351444.P14828331248046188842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + A003958 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat

end

end A351444.P14828331248046188842

namespace A351444

/-- `A322582(n+1)+A003958(A319528(n+1)/2)` -/
def P14828331248046188842.Spec : Prop :=
  ∀ n, P14828331248046188842.a n = A351444 (n + 1)

end A351444

/-! ## A351444.P8347883883804553243

`A322582(n+1)+A003958(A319528(n+1))`
-/

namespace A351444.P8347883883804553243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + A003958 (A319528 (n + 1)).toNat

end

end A351444.P8347883883804553243

namespace A351444

/-- `A322582(n+1)+A003958(A319528(n+1))` -/
def P8347883883804553243.Spec : Prop :=
  ∀ n, P8347883883804553243.a n = A351444 (n + 1)

end A351444

/-!
# A351445: a(n) = A003958(sigma(n)) - A003958(n), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

The programs for A351445, the canonical program `A351445.P1347753034350702190` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351445 has offset 1).

The definition of A351445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351445.P8545630927703760805

`A351444(n+1)-(n+1)`
-/

namespace A351445.P8545630927703760805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351444 (n + 1) - (n + 1 : ℤ)

end

end A351445.P8545630927703760805

namespace A351445

/-- `A351444(n+1)-(n+1)` -/
def P8545630927703760805.Spec : Prop :=
  ∀ n, P8545630927703760805.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P1347753034350702190

`A351442(n+1)-A003958(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A351445

/-- `A351442(n+1)-A003958(n+1)` -/
def P1347753034350702190.Spec : Prop :=
  ∀ n, P1347753034350702190.a n = A351445 (n + 1)

theorem P1347753034350702190.correct : P1347753034350702190.Spec := by
  intro n
  simp only [A351445, Nat.add_sub_cancel]

end A351445

/-! ## A351445.P15142338061005417043

`A003958(A000203(n+1))-A003958(n+1)`
-/

namespace A351445.P15142338061005417043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000203 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P15142338061005417043

namespace A351445

/-- `A003958(A000203(n+1))-A003958(n+1)` -/
def P15142338061005417043.Spec : Prop :=
  ∀ n, P15142338061005417043.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P10971831417161805432

`A003958(A074400(n+1))-A003958(n+1)`
-/

namespace A351445.P10971831417161805432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A074400 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P10971831417161805432

namespace A351445

/-- `A003958(A074400(n+1))-A003958(n+1)` -/
def P10971831417161805432.Spec : Prop :=
  ∀ n, P10971831417161805432.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P15560882085095380722

`A003958(A161942(n+1))-A003958(n+1)`
-/

namespace A351445.P15560882085095380722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A161942 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P15560882085095380722

namespace A351445

/-- `A003958(A161942(n+1))-A003958(n+1)` -/
def P15560882085095380722.Spec : Prop :=
  ∀ n, P15560882085095380722.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P1668704897759342022

`A351442(n+1)-A339905(A064989(n+1))`
-/

namespace A351445.P1668704897759342022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (n + 1) - A339905 (A064989 (n + 1)).toNat

end

end A351445.P1668704897759342022

namespace A351445

/-- `A351442(n+1)-A339905(A064989(n+1))` -/
def P1668704897759342022.Spec : Prop :=
  ∀ n, P1668704897759342022.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P11040891743969171208

`A003958(A337194(n+1)-1)-A003958(n+1)`
-/

namespace A351445.P11040891743969171208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A337194 (n + 1) - 1).toNat - A003958 (n + 1)

end

end A351445.P11040891743969171208

namespace A351445

/-- `A003958(A337194(n+1)-1)-A003958(n+1)` -/
def P11040891743969171208.Spec : Prop :=
  ∀ n, P11040891743969171208.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P3019080104981891654

`A003958(A239050(n+1)/2)-A003958(n+1)`
-/

namespace A351445.P3019080104981891654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat - A003958 (n + 1)

end

end A351445.P3019080104981891654

namespace A351445

/-- `A003958(A239050(n+1)/2)-A003958(n+1)` -/
def P3019080104981891654.Spec : Prop :=
  ∀ n, P3019080104981891654.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P15862459695374087906

`A353792(n+1)/A350073(n+1)-A003958(n+1)`
-/

namespace A351445.P15862459695374087906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353792 (n + 1) : ℚ) / (A350073 (n + 1) : ℚ) - (A003958 (n + 1) : ℚ)

end

end A351445.P15862459695374087906

namespace A351445

/-- `A353792(n+1)/A350073(n+1)-A003958(n+1)` -/
def P15862459695374087906.Spec : Prop :=
  ∀ n, P15862459695374087906.a n = (A351445 (n + 1) : ℚ)

end A351445

/-! ## A351445.P1328672714912679469

`A351442(n+1)-A109624(n+1)/sqrt(A167363(n+1))`
-/

namespace A351445.P1328672714912679469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A351442 (n + 1) : ℝ) - (A109624 (n + 1) : ℝ) / Real.sqrt (A167363 (n + 1) : ℝ)

end

end A351445.P1328672714912679469

namespace A351445

/-- `A351442(n+1)-A109624(n+1)/sqrt(A167363(n+1))` -/
def P1328672714912679469.Spec : Prop :=
  ∀ n, P1328672714912679469.a n = (A351445 (n + 1) : ℝ)

end A351445

/-! ## A351445.P15889448852882751284

`A003958(A048146(n+1)+A034448(n+1))-A003958(n+1)`
-/

namespace A351445.P15889448852882751284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A048146 (n + 1) + A034448 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P15889448852882751284

namespace A351445

/-- `A003958(A048146(n+1)+A034448(n+1))-A003958(n+1)` -/
def P15889448852882751284.Spec : Prop :=
  ∀ n, P15889448852882751284.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P9801761969208212243

`A003958(A162296(n+1)+A048250(n+1))-A003958(n+1)`
-/

namespace A351445.P9801761969208212243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A162296 (n + 1) + A048250 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P9801761969208212243

namespace A351445

/-- `A003958(A162296(n+1)+A048250(n+1))-A003958(n+1)` -/
def P9801761969208212243.Spec : Prop :=
  ∀ n, P9801761969208212243.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P11550365429140807910

`A003958(A003959(n+1)-A348029(n+1))-A003958(n+1)`
-/

namespace A351445.P11550365429140807910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003959 (n + 1) - A348029 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P11550365429140807910

namespace A351445

/-- `A003958(A003959(n+1)-A348029(n+1))-A003958(n+1)` -/
def P11550365429140807910.Spec : Prop :=
  ∀ n, P11550365429140807910.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P11838247356017554461

`A003958(A323403(n+1)-A046692(n+1))-A003958(n+1)`
-/

namespace A351445.P11838247356017554461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A323403 (n + 1) - A046692 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P11838247356017554461

namespace A351445

/-- `A003958(A323403(n+1)-A046692(n+1))-A003958(n+1)` -/
def P11838247356017554461.Spec : Prop :=
  ∀ n, P11838247356017554461.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P7569825236924093527

`A003958(A348944(n+1)-A348945(n+1))-A003958(n+1)`
-/

namespace A351445.P7569825236924093527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A348944 (n + 1) - A348945 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P7569825236924093527

namespace A351445

/-- `A003958(A348944(n+1)-A348945(n+1))-A003958(n+1)` -/
def P7569825236924093527.Spec : Prop :=
  ∀ n, P7569825236924093527.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P3538956176000496868

`A003958(A348047(n+1)*A348048(n+1))-A003958(n+1)`
-/

namespace A351445.P3538956176000496868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A348047 (n + 1) * A348048 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P3538956176000496868

namespace A351445

/-- `A003958(A348047(n+1)*A348048(n+1))-A003958(n+1)` -/
def P3538956176000496868.Spec : Prop :=
  ∀ n, P3538956176000496868.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P13682626094585434727

`A003958(A348946(n+1)*A348948(n+1))-A003958(n+1)`
-/

namespace A351445.P13682626094585434727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A348946 (n + 1) * A348948 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P13682626094585434727

namespace A351445

/-- `A003958(A348946(n+1)*A348948(n+1))-A003958(n+1)` -/
def P13682626094585434727.Spec : Prop :=
  ∀ n, P13682626094585434727.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P16109854114668658191

`A003958(A353783(n+1)*A353784(n+1))-A003958(n+1)`
-/

namespace A351445.P16109854114668658191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A353783 (n + 1) * A353784 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P16109854114668658191

namespace A351445

/-- `A003958(A353783(n+1)*A353784(n+1))-A003958(n+1)` -/
def P16109854114668658191.Spec : Prop :=
  ∀ n, P16109854114668658191.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P17712807700924901567

`A003958(A239050(n+1))-A003958(n+1)`
-/

namespace A351445.P17712807700924901567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A239050 (n + 1)).toNat - A003958 (n + 1)

end

end A351445.P17712807700924901567

namespace A351445

/-- `A003958(A239050(n+1))-A003958(n+1)` -/
def P17712807700924901567.Spec : Prop :=
  ∀ n, P17712807700924901567.a n = A351445 (n + 1)

end A351445

/-! ## A351445.P11712865909013379732

`A003958(A319528(n+1)/2)-A003958(n+1)`
-/

namespace A351445.P11712865909013379732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat - A003958 (n + 1)

end

end A351445.P11712865909013379732

namespace A351445

/-- `A003958(A319528(n+1)/2)-A003958(n+1)` -/
def P11712865909013379732.Spec : Prop :=
  ∀ n, P11712865909013379732.a n = A351445 (n + 1)

end A351445

/-!
# A351446: Numbers k for which A003958(sigma(k)) = A003958(k), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

The programs for A351446, the canonical program `A351446.P16027380456626133253` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351446 has offset 1).

The definition of A351446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351446.P16027380456626133253

`lt[abs(A351445(n+1)), 1]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A351446

/-- `lt[abs(A351445(n+1)), 1]+1` -/
def P16027380456626133253.Spec : Prop :=
  ∀ n, (P16027380456626133253.a n : ℤ) = A351446 (n + 1)

theorem P16027380456626133253.correct : P16027380456626133253.Spec := by
  intro n
  simp only [A351446, Nat.add_sub_cancel]

end A351446

/-! ## A351446.P17110334370413637535

`record[gcd(n+1, A351444(n+1))]`
-/

namespace A351446.P17110334370413637535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351444 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351446.P17110334370413637535

namespace A351446

/-- `record[gcd(n+1, A351444(n+1))]` -/
def P17110334370413637535.Spec : Prop :=
  ∀ n, (P17110334370413637535.a n : ℤ) = A351446 (n + 1)

end A351446

/-! ## A351446.P17810037287261031470

`eq[A003958(n+1), A351442(n+1)]+1`
-/

namespace A351446.P17810037287261031470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351446.P17810037287261031470

namespace A351446

/-- `eq[A003958(n+1), A351442(n+1)]+1` -/
def P17810037287261031470.Spec : Prop :=
  ∀ n, (P17810037287261031470.a n : ℤ) = A351446 (n + 1)

end A351446

/-! ## A351446.P17665553644489846240

`eq[n, A351444(A028310(n))]`
-/

namespace A351446.P17665553644489846240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351444 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351446.P17665553644489846240

namespace A351446

/-- `eq[n, A351444(A028310(n))]` -/
def P17665553644489846240.Spec : Prop :=
  ∀ n, (P17665553644489846240.a n : ℤ) = A351446 (n + 1)

end A351446

/-! ## A351446.P17000922050913630461

`eq[A000007(n), A351445(A028310(n))]`
-/

namespace A351446.P17000922050913630461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351445 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351446.P17000922050913630461

namespace A351446

/-- `eq[A000007(n), A351445(A028310(n))]` -/
def P17000922050913630461.Spec : Prop :=
  ∀ n, (P17000922050913630461.a n : ℤ) = A351446 (n + 1)

end A351446

/-! ## A351446.P2591019441795725816

`eq[A000007(n), A351445(A000007(n)+n)]`
-/

namespace A351446.P2591019441795725816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351445 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351446.P2591019441795725816

namespace A351446

/-- `eq[A000007(n), A351445(A000007(n)+n)]` -/
def P2591019441795725816.Spec : Prop :=
  ∀ n, (P2591019441795725816.a n : ℤ) = A351446 (n + 1)

end A351446

/-!
# A351449: a(n) = A064989(A295294(A003961(n))).

The programs for A351449, the canonical program `A351449.P13924172491932163526` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351449 has offset 1).

The definition of A351449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, A295294, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351449.P6897457478331880996

`A326042(A057521(n+1))`
-/

namespace A351449.P6897457478331880996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (A057521 (n + 1)).toNat

end

end A351449.P6897457478331880996

namespace A351449

/-- `A326042(A057521(n+1))` -/
def P6897457478331880996.Spec : Prop :=
  ∀ n, P6897457478331880996.a n = A351449 (n + 1)

end A351449

/-! ## A351449.P7257836892265864123

`A326042(n+1)/A351451(n+1)`
-/

namespace A351449.P7257836892265864123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A351451 (n + 1) : ℚ)

end

end A351449.P7257836892265864123

namespace A351449

/-- `A326042(n+1)/A351451(n+1)` -/
def P7257836892265864123.Spec : Prop :=
  ∀ n, P7257836892265864123.a n = (A351449 (n + 1) : ℚ)

end A351449

/-! ## A351449.P13924172491932163526

`A064989(A295294(A003961(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351449

/-- `A064989(A295294(A003961(n+1)))` -/
def P13924172491932163526.Spec : Prop :=
  ∀ n, P13924172491932163526.a n = A351449 (n + 1)

theorem P13924172491932163526.correct : P13924172491932163526.Spec := by
  intro n
  simp only [A351449, Nat.add_sub_cancel]

end A351449

/-! ## A351449.P2868692481598317829

`A326042((n+1)/A055231(n+1))`
-/

namespace A351449.P2868692481598317829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A351449.P2868692481598317829

namespace A351449

/-- `A326042((n+1)/A055231(n+1))` -/
def P2868692481598317829.Spec : Prop :=
  ∀ n, P2868692481598317829.a n = A351449 (n + 1)

end A351449

/-! ## A351449.P14428303774268885679

`(n+1-A348736(n+1))/A351451(n+1)`
-/

namespace A351449.P14428303774268885679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A348736 (n + 1) : ℚ) / (A351451 (n + 1) : ℚ)

end

end A351449.P14428303774268885679

namespace A351449

/-- `(n+1-A348736(n+1))/A351451(n+1)` -/
def P14428303774268885679.Spec : Prop :=
  ∀ n, P14428303774268885679.a n = (A351449 (n + 1) : ℚ)

end A351449

/-! ## A351449.P5661586295200774932

`A350073(A003961(n+1))/A351451(n+1)`
-/

namespace A351449.P5661586295200774932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350073 (A003961 (n + 1)).toNat : ℚ) / (A351451 (n + 1) : ℚ)

end

end A351449.P5661586295200774932

namespace A351449

/-- `A350073(A003961(n+1))/A351451(n+1)` -/
def P5661586295200774932.Spec : Prop :=
  ∀ n, P5661586295200774932.a n = (A351449 (n + 1) : ℚ)

end A351449

/-! ## A351449.P16745115476464058292

`A064989(A003973(n+1))/A351451(n+1)`
-/

namespace A351449.P16745115476464058292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A003973 (n + 1)).toNat : ℚ) / (A351451 (n + 1) : ℚ)

end

end A351449.P16745115476464058292

namespace A351449

/-- `A064989(A003973(n+1))/A351451(n+1)` -/
def P16745115476464058292.Spec : Prop :=
  ∀ n, P16745115476464058292.a n = (A351449 (n + 1) : ℚ)

end A351449

/-!
# A351450: a(n) = A064989(A048250(A003961(n))).

The programs for A351450, the canonical program `A351450.P4010795598885041516` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351450 has offset 1).

The definition of A351450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A048250, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351450.P4010795598885041516

`A064989(A048250(A003961(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351450

/-- `A064989(A048250(A003961(n+1)))` -/
def P4010795598885041516.Spec : Prop :=
  ∀ n, P4010795598885041516.a n = A351450 (n + 1)

theorem P4010795598885041516.correct : P4010795598885041516.Spec := by
  intro n
  simp only [A351450, Nat.add_sub_cancel]

end A351450

/-! ## A351450.P3673953108633040559

`A326042(∏{p}[n+1, #])`
-/

namespace A351450.P3673953108633040559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351450.P3673953108633040559

namespace A351450

/-- `A326042(∏{p}[n+1, #])` -/
def P3673953108633040559.Spec : Prop :=
  ∀ n, P3673953108633040559.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P6678529418309075233

`∏{p}[n+1, A348942(#)]`
-/

namespace A351450.P6678529418309075233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A348942 p

end

end A351450.P6678529418309075233

namespace A351450

/-- `∏{p}[n+1, A348942(#)]` -/
def P6678529418309075233.Spec : Prop :=
  ∀ n, P6678529418309075233.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P8172692793143207368

`A351451(∏{p}[n+1, #])`
-/

namespace A351450.P8172692793143207368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351451 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351450.P8172692793143207368

namespace A351450

/-- `A351451(∏{p}[n+1, #])` -/
def P8172692793143207368.Spec : Prop :=
  ∀ n, P8172692793143207368.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P12596213571039430337

`A351455(∏{p}[n+1, #])`
-/

namespace A351450.P12596213571039430337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351455 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351450.P12596213571039430337

namespace A351450

/-- `A351455(∏{p}[n+1, #])` -/
def P12596213571039430337.Spec : Prop :=
  ∀ n, P12596213571039430337.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P12832499172394884994

`A326042(A007947(n+1))`
-/

namespace A351450.P12832499172394884994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (A007947 (n + 1)).toNat

end

end A351450.P12832499172394884994

namespace A351450

/-- `A326042(A007947(n+1))` -/
def P12832499172394884994.Spec : Prop :=
  ∀ n, P12832499172394884994.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P17352542896404043495

`A326042(A099985(n+1))`
-/

namespace A351450.P17352542896404043495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (A099985 (n + 1)).toNat

end

end A351450.P17352542896404043495

namespace A351450

/-- `A326042(A099985(n+1))` -/
def P17352542896404043495.Spec : Prop :=
  ∀ n, P17352542896404043495.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P14723927393823692441

`A326042(A204455(n+1))`
-/

namespace A351450.P14723927393823692441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (A204455 (n + 1)).toNat

end

end A351450.P14723927393823692441

namespace A351450

/-- `A326042(A204455(n+1))` -/
def P14723927393823692441.Spec : Prop :=
  ∀ n, P14723927393823692441.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P16742360032855884924

`A326042((n+1)/A003557(n+1))`
-/

namespace A351450.P16742360032855884924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A351450.P16742360032855884924

namespace A351450

/-- `A326042((n+1)/A003557(n+1))` -/
def P16742360032855884924.Spec : Prop :=
  ∀ n, P16742360032855884924.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P11967711946171831601

`A351451((n+1)/A003557(n+1))`
-/

namespace A351450.P11967711946171831601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351451 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A351450.P11967711946171831601

namespace A351450

/-- `A351451((n+1)/A003557(n+1))` -/
def P11967711946171831601.Spec : Prop :=
  ∀ n, P11967711946171831601.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P9648633122173345959

`A351455((n+1)/A003557(n+1))`
-/

namespace A351450.P9648633122173345959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A351450.P9648633122173345959

namespace A351450

/-- `A351455((n+1)/A003557(n+1))` -/
def P9648633122173345959.Spec : Prop :=
  ∀ n, P9648633122173345959.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P2394072936141888927

`A351451(A064549(n+1)/(n+1))`
-/

namespace A351450.P2394072936141888927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351451 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A351450.P2394072936141888927

namespace A351450

/-- `A351451(A064549(n+1)/(n+1))` -/
def P2394072936141888927.Spec : Prop :=
  ∀ n, P2394072936141888927.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P13246730629512030695

`A351455(A064549(n+1)/(n+1))`
-/

namespace A351450.P13246730629512030695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351455 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A351450.P13246730629512030695

namespace A351450

/-- `A351455(A064549(n+1)/(n+1))` -/
def P13246730629512030695.Spec : Prop :=
  ∀ n, P13246730629512030695.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P12893810956435265421

`A351455(A076332(n+1)-A003557(n+1))`
-/

namespace A351450.P12893810956435265421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351455 (A076332 (n + 1) - A003557 (n + 1)).toNat

end

end A351450.P12893810956435265421

namespace A351450

/-- `A351455(A076332(n+1)-A003557(n+1))` -/
def P12893810956435265421.Spec : Prop :=
  ∀ n, P12893810956435265421.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P15456056061568436112

`A351455(n+1)/(A076332(n+1)-A007947(n+1))`
-/

namespace A351450.P15456056061568436112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351455 (n + 1) : ℚ) / (A076332 (n + 1) - A007947 (n + 1) : ℚ)

end

end A351450.P15456056061568436112

namespace A351450

/-- `A351455(n+1)/(A076332(n+1)-A007947(n+1))` -/
def P15456056061568436112.Spec : Prop :=
  ∀ n, P15456056061568436112.a n = (A351450 (n + 1) : ℚ)

end A351450

/-! ## A351450.P2214879983212676416

`A048250(n+1)/A001615(n+1)*A351455(n+1)`
-/

namespace A351450.P2214879983212676416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A351455 (n + 1) : ℚ)

end

end A351450.P2214879983212676416

namespace A351450

/-- `A048250(n+1)/A001615(n+1)*A351455(n+1)` -/
def P2214879983212676416.Spec : Prop :=
  ∀ n, P2214879983212676416.a n = (A351450 (n + 1) : ℚ)

end A351450

/-! ## A351450.P13351169618832681253

`A351451(A302138(n+1))`
-/

namespace A351450.P13351169618832681253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351451 (A302138 (n + 1)).toNat

end

end A351450.P13351169618832681253

namespace A351450

/-- `A351451(A302138(n+1))` -/
def P13351169618832681253.Spec : Prop :=
  ∀ n, P13351169618832681253.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P16364058796033374680

`A350073(A328915(n+1))`
-/

namespace A351450.P16364058796033374680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (A328915 (n + 1)).toNat

end

end A351450.P16364058796033374680

namespace A351450

/-- `A350073(A328915(n+1))` -/
def P16364058796033374680.Spec : Prop :=
  ∀ n, P16364058796033374680.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P6869389013926362959

`A064989(A003973(∏{p}[n+1, #]))`
-/

namespace A351450.P6869389013926362959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A003973 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A351450.P6869389013926362959

namespace A351450

/-- `A064989(A003973(∏{p}[n+1, #]))` -/
def P6869389013926362959.Spec : Prop :=
  ∀ n, P6869389013926362959.a n = A351450 (n + 1)

end A351450

/-! ## A351450.P2800960112404222455

`A064989(A206787(A003961(A003961(A064989(n+1)))))`
-/

namespace A351450.P2800960112404222455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A206787 (A003961 (A003961 (A064989 (n + 1)).toNat).toNat).toNat).toNat

end

end A351450.P2800960112404222455

namespace A351450

/-- `A064989(A206787(A003961(A003961(A064989(n+1)))))` -/
def P2800960112404222455.Spec : Prop :=
  ∀ n, P2800960112404222455.a n = A351450 (n + 1)

end A351450

/-!
# A351451: a(n) = A064989(A092261(A003961(n))).

The programs for A351451, the canonical program `A351451.P11572919348595548671` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351451 has offset 1).

The definition of A351451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A064989, A092261, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351451.P15401522676444039066

`A351450(A055231(n+1))`
-/

namespace A351451.P15401522676444039066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351450 (A055231 (n + 1)).toNat

end

end A351451.P15401522676444039066

namespace A351451

/-- `A351450(A055231(n+1))` -/
def P15401522676444039066.Spec : Prop :=
  ∀ n, P15401522676444039066.a n = A351451 (n + 1)

end A351451

/-! ## A351451.P14540385336210521763

`A326042(n+1)/A351449(n+1)`
-/

namespace A351451.P14540385336210521763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A351449 (n + 1) : ℚ)

end

end A351451.P14540385336210521763

namespace A351451

/-- `A326042(n+1)/A351449(n+1)` -/
def P14540385336210521763.Spec : Prop :=
  ∀ n, P14540385336210521763.a n = (A351451 (n + 1) : ℚ)

end A351451

/-! ## A351451.P11572919348595548671

`A064989(A092261(A003961(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351451

/-- `A064989(A092261(A003961(n+1)))` -/
def P11572919348595548671.Spec : Prop :=
  ∀ n, P11572919348595548671.a n = A351451 (n + 1)

theorem P11572919348595548671.correct : P11572919348595548671.Spec := by
  intro n
  simp only [A351451, Nat.add_sub_cancel]

end A351451

/-! ## A351451.P18399262575500559684

`A351455(A055231(2*n+2))`
-/

namespace A351451.P18399262575500559684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351455 (A055231 (2 * n + 2)).toNat

end

end A351451.P18399262575500559684

namespace A351451

/-- `A351455(A055231(2*n+2))` -/
def P18399262575500559684.Spec : Prop :=
  ∀ n, P18399262575500559684.a n = A351451 (n + 1)

end A351451

/-! ## A351451.P9632980374080742516

`A326042((n+1)/A057521(n+1))`
-/

namespace A351451.P9632980374080742516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A351451.P9632980374080742516

namespace A351451

/-- `A326042((n+1)/A057521(n+1))` -/
def P9632980374080742516.Spec : Prop :=
  ∀ n, P9632980374080742516.a n = A351451 (n + 1)

end A351451

/-! ## A351451.P5642860480707227840

`A351450((n+1)/A057521(n+1))`
-/

namespace A351451.P5642860480707227840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A351451.P5642860480707227840

namespace A351451

/-- `A351450((n+1)/A057521(n+1))` -/
def P5642860480707227840.Spec : Prop :=
  ∀ n, P5642860480707227840.a n = A351451 (n + 1)

end A351451

/-! ## A351451.P12795535494518091732

`A351450(A197863(n+1)/(n+1))`
-/

namespace A351451.P12795535494518091732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351450 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A351451.P12795535494518091732

namespace A351451

/-- `A351450(A197863(n+1)/(n+1))` -/
def P12795535494518091732.Spec : Prop :=
  ∀ n, P12795535494518091732.a n = A351451 (n + 1)

end A351451

/-! ## A351451.P615591188743673900

`A351450(n+1)/A351450(A003557(n+1))`
-/

namespace A351451.P615591188743673900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351450 (n + 1) : ℚ) / (A351450 (A003557 (n + 1)).toNat : ℚ)

end

end A351451.P615591188743673900

namespace A351451

/-- `A351450(n+1)/A351450(A003557(n+1))` -/
def P615591188743673900.Spec : Prop :=
  ∀ n, P615591188743673900.a n = (A351451 (n + 1) : ℚ)

end A351451

/-! ## A351451.P17100266300713610876

`A351450(n+1)/A351450(A336651(n+1))`
-/

namespace A351451.P17100266300713610876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351450 (n + 1) : ℚ) / (A351450 (A336651 (n + 1)).toNat : ℚ)

end

end A351451.P17100266300713610876

namespace A351451

/-- `A351450(n+1)/A351450(A336651(n+1))` -/
def P17100266300713610876.Spec : Prop :=
  ∀ n, P17100266300713610876.a n = (A351451 (n + 1) : ℚ)

end A351451

/-! ## A351451.P1048853934745609851

`A351450(A385007((n+1)²))`
-/

namespace A351451.P1048853934745609851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351450 (A385007 ((n + 1) ^ 2)).toNat

end

end A351451.P1048853934745609851

namespace A351451

/-- `A351450(A385007((n+1)²))` -/
def P1048853934745609851.Spec : Prop :=
  ∀ n, P1048853934745609851.a n = A351451 (n + 1)

end A351451

/-!
# A351453: Lexicographically earliest infinite sequence such that a(i) = a(j) => A006530(i) = A006530(j) and A007733(i) = A007733(j) for all i, j >= 1.

The programs for A351453, there is no canonical definition to state claims against.
-/

/-! ## A351453.P17608602325834892687

`A157928(A093694(n))+A115871(A003602(n+1))`
-/

namespace A351453.P17608602325834892687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A093694 n).toNat + A115871 (A003602 (n + 1)).toNat

end

end A351453.P17608602325834892687

/-! ## A351453.P18103913392603440558

`A336933(n+1)+A043545(A004928(n))`
-/

namespace A351453.P18103913392603440558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336933 (n + 1) + A043545 (A004928 n).toNat

end

end A351453.P18103913392603440558

/-! ## A351453.P8246502680320056613

`A336933(n+1)+A043545(A010015(n))`
-/

namespace A351453.P8246502680320056613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336933 (n + 1) + A043545 (A010015 n).toNat

end

end A351453.P8246502680320056613

/-! ## A351453.P8815868122927582101

`A336933(n+1)+A057427(A000447(n))`
-/

namespace A351453.P8815868122927582101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336933 (n + 1) + A057427 (A000447 n).toNat

end

end A351453.P8815868122927582101

/-! ## A351453.P2270124500516290267

`A336933(n+1)+A057979(A002182(n+1))`
-/

namespace A351453.P2270124500516290267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336933 (n + 1) + A057979 (A002182 (n + 1)).toNat

end

end A351453.P2270124500516290267

/-!
# A351455: a(n) = A064989(A001615(A003961(n))).

The programs for A351455, the canonical program `A351455.P6293380018795775580` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351455 has offset 1).

The definition of A351455 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A003961, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351455.P9709538902559640447

`A003557(n+1)*A351450(n+1)`
-/

namespace A351455.P9709538902559640447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A351450 (n + 1)

end

end A351455.P9709538902559640447

namespace A351455

/-- `A003557(n+1)*A351450(n+1)` -/
def P9709538902559640447.Spec : Prop :=
  ∀ n, P9709538902559640447.a n = A351455 (n + 1)

end A351455

/-! ## A351455.P6293380018795775580

`A064989(A001615(A003961(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351455

/-- `A064989(A001615(A003961(n+1)))` -/
def P6293380018795775580.Spec : Prop :=
  ∀ n, P6293380018795775580.a n = A351455 (n + 1)

theorem P6293380018795775580.correct : P6293380018795775580.Spec := by
  intro n
  simp only [A351455, Nat.add_sub_cancel]

end A351455

/-! ## A351455.P10038828486173896851

`A003557(n+1)*A326042(A007947(n+1))`
-/

namespace A351455.P10038828486173896851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A326042 (A007947 (n + 1)).toNat

end

end A351455.P10038828486173896851

namespace A351455

/-- `A003557(n+1)*A326042(A007947(n+1))` -/
def P10038828486173896851.Spec : Prop :=
  ∀ n, P10038828486173896851.a n = A351455 (n + 1)

end A351455

/-! ## A351455.P6753238574927125549

`A003557(n+1)*A326042(A204455(n+1))`
-/

namespace A351455.P6753238574927125549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A326042 (A204455 (n + 1)).toNat

end

end A351455.P6753238574927125549

namespace A351455

/-- `A003557(n+1)*A326042(A204455(n+1))` -/
def P6753238574927125549.Spec : Prop :=
  ∀ n, P6753238574927125549.a n = A351455 (n + 1)

end A351455

/-! ## A351455.P11473038319134489849

`A052126(A217434(n+1))*A351450(n+1)`
-/

namespace A351455.P11473038319134489849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A217434 (n + 1)).toNat * A351450 (n + 1)

end

end A351455.P11473038319134489849

namespace A351455

/-- `A052126(A217434(n+1))*A351450(n+1)` -/
def P11473038319134489849.Spec : Prop :=
  ∀ n, P11473038319134489849.a n = A351455 (n + 1)

end A351455

/-! ## A351455.P5815296112074493134

`A003557(n+1)*A351451(A302138(n+1))`
-/

namespace A351455.P5815296112074493134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A351451 (A302138 (n + 1)).toNat

end

end A351455.P5815296112074493134

namespace A351455

/-- `A003557(n+1)*A351451(A302138(n+1))` -/
def P5815296112074493134.Spec : Prop :=
  ∀ n, P5815296112074493134.a n = A351455 (n + 1)

end A351455

/-!
# A351456: a(n) = A003958(sigma(A003961(n))), where A003958 is multiplicative with a(p^e) = (p-1)^e, A003961 multiplicative with a(prime(k)^e) = prime(1+k)^e, and sigma is the sum of divisors function.

The programs for A351456, the canonical program `A351456.P12026428809911355765` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351456 has offset 1).

The definition of A351456 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003973, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351456.P14404205943566299103

`A351457(n+1)+A339905(n+1)`
-/

namespace A351456.P14404205943566299103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351457 (n + 1) + A339905 (n + 1)

end

end A351456.P14404205943566299103

namespace A351456

/-- `A351457(n+1)+A339905(n+1)` -/
def P14404205943566299103.Spec : Prop :=
  ∀ n, P14404205943566299103.a n = A351456 (n + 1)

end A351456

/-! ## A351456.P12026428809911355765

`A003958(A003973(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351456

/-- `A003958(A003973(n+1))` -/
def P12026428809911355765.Spec : Prop :=
  ∀ n, P12026428809911355765.a n = A351456 (n + 1)

theorem P12026428809911355765.correct : P12026428809911355765.Spec := by
  intro n
  simp only [A351456, Nat.add_sub_cancel]

end A351456

/-! ## A351456.P6512003402202379672

`A351442(A003961(n+1))`
-/

namespace A351456.P6512003402202379672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (A003961 (n + 1)).toNat

end

end A351456.P6512003402202379672

namespace A351456

/-- `A351442(A003961(n+1))` -/
def P6512003402202379672.Spec : Prop :=
  ∀ n, P6512003402202379672.a n = A351456 (n + 1)

end A351456

/-! ## A351456.P9226837133766627641

`A353794(n+1)/A326042(n+1)`
-/

namespace A351456.P9226837133766627641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353794 (n + 1) : ℚ) / (A326042 (n + 1) : ℚ)

end

end A351456.P9226837133766627641

namespace A351456

/-- `A353794(n+1)/A326042(n+1)` -/
def P9226837133766627641.Spec : Prop :=
  ∀ n, P9226837133766627641.a n = (A351456 (n + 1) : ℚ)

end A351456

/-! ## A351456.P13533468603098659225

`A351457(n+1)+A003958(A003961(n+1))`
-/

namespace A351456.P13533468603098659225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351457 (n + 1) + A003958 (A003961 (n + 1)).toNat

end

end A351456.P13533468603098659225

namespace A351456

/-- `A351457(n+1)+A003958(A003961(n+1))` -/
def P13533468603098659225.Spec : Prop :=
  ∀ n, P13533468603098659225.a n = A351456 (n + 1)

end A351456

/-! ## A351456.P13008592988964488841

`A003958(A354363(n+1)*A354364(n+1))`
-/

namespace A351456.P13008592988964488841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A354363 (n + 1) * A354364 (n + 1)).toNat

end

end A351456.P13008592988964488841

namespace A351456

/-- `A003958(A354363(n+1)*A354364(n+1))` -/
def P13008592988964488841.Spec : Prop :=
  ∀ n, P13008592988964488841.a n = A351456 (n + 1)

end A351456

/-! ## A351456.P11013834059721393752

`A351445(A003961(n+1))+A339905(n+1)`
-/

namespace A351456.P11013834059721393752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351445 (A003961 (n + 1)).toNat + A339905 (n + 1)

end

end A351456.P11013834059721393752

namespace A351456

/-- `A351445(A003961(n+1))+A339905(n+1)` -/
def P11013834059721393752.Spec : Prop :=
  ∀ n, P11013834059721393752.a n = A351456 (n + 1)

end A351456

/-! ## A351456.P16766576395742117228

`A339905(A326042(n+1))`
-/

namespace A351456.P16766576395742117228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339905 (A326042 (n + 1)).toNat

end

end A351456.P16766576395742117228

namespace A351456

/-- `A339905(A326042(n+1))` -/
def P16766576395742117228.Spec : Prop :=
  ∀ n, P16766576395742117228.a n = A351456 (n + 1)

end A351456

/-! ## A351456.P2856143163292473313

`A339905(1-A348736(n+1)+n)`
-/

namespace A351456.P2856143163292473313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339905 (1 - A348736 (n + 1) + (n : ℤ)).toNat

end

end A351456.P2856143163292473313

namespace A351456

/-- `A339905(1-A348736(n+1)+n)` -/
def P2856143163292473313.Spec : Prop :=
  ∀ n, P2856143163292473313.a n = A351456 (n + 1)

end A351456

/-! ## A351456.P11321712949729024637

`A003958(A003961(n+1-A348736(n+1)))`
-/

namespace A351456.P11321712949729024637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003961 ((n + 1 : ℤ) - A348736 (n + 1)).toNat).toNat

end

end A351456.P11321712949729024637

namespace A351456

/-- `A003958(A003961(n+1-A348736(n+1)))` -/
def P11321712949729024637.Spec : Prop :=
  ∀ n, P11321712949729024637.a n = A351456 (n + 1)

end A351456

/-! ## A351456.P9401049436655652172

`A353794(n+1)/A064989(A003973(n+1))`
-/

namespace A351456.P9401049436655652172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353794 (n + 1) : ℚ) / (A064989 (A003973 (n + 1)).toNat : ℚ)

end

end A351456.P9401049436655652172

namespace A351456

/-- `A353794(n+1)/A064989(A003973(n+1))` -/
def P9401049436655652172.Spec : Prop :=
  ∀ n, P9401049436655652172.a n = (A351456 (n + 1) : ℚ)

end A351456

/-! ## A351456.P6840021381906127265

`A353791(A003973(n+1))/A326042(n+1)`
-/

namespace A351456.P6840021381906127265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353791 (A003973 (n + 1)).toNat : ℚ) / (A326042 (n + 1) : ℚ)

end

end A351456.P6840021381906127265

namespace A351456

/-- `A353791(A003973(n+1))/A326042(n+1)` -/
def P6840021381906127265.Spec : Prop :=
  ∀ n, P6840021381906127265.a n = (A351456 (n + 1) : ℚ)

end A351456

/-!
# A351457: a(n) = A351456(n) - A339905(n).

The programs for A351457, the canonical program `A351457.P4852068756587702856` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351457 has offset 1).

The definition of A351457 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339905, A351456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351457.P4852068756587702856

`A351456(n+1)-A339905(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351457

/-- `A351456(n+1)-A339905(n+1)` -/
def P4852068756587702856.Spec : Prop :=
  ∀ n, P4852068756587702856.a n = A351457 (n + 1)

theorem P4852068756587702856.correct : P4852068756587702856.Spec := by
  intro n
  simp only [A351457, Nat.add_sub_cancel]

end A351457

/-! ## A351457.P7057911148276901322

`A351445(A003961(n+1))`
-/

namespace A351457.P7057911148276901322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351445 (A003961 (n + 1)).toNat

end

end A351457.P7057911148276901322

namespace A351457

/-- `A351445(A003961(n+1))` -/
def P7057911148276901322.Spec : Prop :=
  ∀ n, P7057911148276901322.a n = A351457 (n + 1)

end A351457

/-! ## A351457.P6577694272216614274

`A351456(n+1)-A003958(A003961(n+1))`
-/

namespace A351457.P6577694272216614274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351456 (n + 1) - A003958 (A003961 (n + 1)).toNat

end

end A351457.P6577694272216614274

namespace A351457

/-- `A351456(n+1)-A003958(A003961(n+1))` -/
def P6577694272216614274.Spec : Prop :=
  ∀ n, P6577694272216614274.a n = A351457 (n + 1)

end A351457

/-! ## A351457.P13253129603734122149

`A003958(A003973(n+1))-A339905(n+1)`
-/

namespace A351457.P13253129603734122149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003973 (n + 1)).toNat - A339905 (n + 1)

end

end A351457.P13253129603734122149

namespace A351457

/-- `A003958(A003973(n+1))-A339905(n+1)` -/
def P13253129603734122149.Spec : Prop :=
  ∀ n, P13253129603734122149.a n = A351457 (n + 1)

end A351457

/-! ## A351457.P15154366326470515297

`A351442(A003961(n+1))-A339905(n+1)`
-/

namespace A351457.P15154366326470515297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (A003961 (n + 1)).toNat - A339905 (n + 1)

end

end A351457.P15154366326470515297

namespace A351457

/-- `A351442(A003961(n+1))-A339905(n+1)` -/
def P15154366326470515297.Spec : Prop :=
  ∀ n, P15154366326470515297.a n = A351457 (n + 1)

end A351457

/-! ## A351457.P18022107618660937130

`A339905(A326042(n+1))-A339905(n+1)`
-/

namespace A351457.P18022107618660937130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339905 (A326042 (n + 1)).toNat - A339905 (n + 1)

end

end A351457.P18022107618660937130

namespace A351457

/-- `A339905(A326042(n+1))-A339905(n+1)` -/
def P18022107618660937130.Spec : Prop :=
  ∀ n, P18022107618660937130.a n = A351457 (n + 1)

end A351457

/-!
# A351460: Lexicographically earliest infinite sequence such that a(i) = a(j) => A006530(i) = A006530(j), A206787(i) = A206787(j) and A336651(i) = A336651(j) for all i, j >= 1.

The programs for A351460, the canonical program `A351460.P8243129244187876021` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351460 has offset 1).

The definition of A351460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351460.P2435891088240440332

`A317932(A064632(n+2))+floor(n/(xor(n, n+1)+1))`
-/

namespace A351460.P2435891088240440332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317932 (A064632 (n + 2)).toNat + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A351460.P2435891088240440332

namespace A351460

/-- `A317932(A064632(n+2))+floor(n/(xor(n, n+1)+1))` -/
def P2435891088240440332.Spec : Prop :=
  ∀ n, P2435891088240440332.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P11938145186211765853

`A003602(n+1)+A000035(A050376(3*n+1))`
-/

namespace A351460.P11938145186211765853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A000035 (A050376 (3 * n + 1)).toNat

end

end A351460.P11938145186211765853

namespace A351460

/-- `A003602(n+1)+A000035(A050376(3*n+1))` -/
def P11938145186211765853.Spec : Prop :=
  ∀ n, P11938145186211765853.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P7183955252031963635

`A020639(A128397(n+1))+floor(n/(xor(n, n+1)+1))`
-/

namespace A351460.P7183955252031963635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128397 (n + 1)).toNat + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A351460.P7183955252031963635

namespace A351460

/-- `A020639(A128397(n+1))+floor(n/(xor(n, n+1)+1))` -/
def P7183955252031963635.Spec : Prop :=
  ∀ n, P7183955252031963635.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P7014018324363363186

`A061498(A031377(n+1))+floor(n/(xor(n, n+1)+1))+1`
-/

namespace A351460.P7014018324363363186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (A031377 (n + 1)).toNat + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

end

end A351460.P7014018324363363186

namespace A351460

/-- `A061498(A031377(n+1))+floor(n/(xor(n, n+1)+1))+1` -/
def P7014018324363363186.Spec : Prop :=
  ∀ n, P7014018324363363186.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P18277947437425754352

`A001227(A000040(3*n+1))+floor(n/(xor(n, n+1)+1))`
-/

namespace A351460.P18277947437425754352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000040 (3 * n + 1)).toNat + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A351460.P18277947437425754352

namespace A351460

/-- `A001227(A000040(3*n+1))+floor(n/(xor(n, n+1)+1))` -/
def P18277947437425754352.Spec : Prop :=
  ∀ n, P18277947437425754352.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P8243129244187876021

`A003602(n+1)+A001065(A008578(3*n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A351460

/-- `A003602(n+1)+A001065(A008578(3*n+1))` -/
def P8243129244187876021.Spec : Prop :=
  ∀ n, P8243129244187876021.a n = A351460 (n + 1)

theorem P8243129244187876021.correct : P8243129244187876021.Spec := by
  intro n
  simp only [A351460, Nat.add_sub_cancel]

end A351460

/-! ## A351460.P16254004511844782742

`A055396(A120383(n+1))+A003602(n+1)`
-/

namespace A351460.P16254004511844782742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A120383 (n + 1)).toNat + A003602 (n + 1)

end

end A351460.P16254004511844782742

namespace A351460

/-- `A055396(A120383(n+1))+A003602(n+1)` -/
def P16254004511844782742.Spec : Prop :=
  ∀ n, P16254004511844782742.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P9716041226196178519

`A130130(A003961(n+1))+A025480(n)`
-/

namespace A351460.P9716041226196178519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A003961 (n + 1)).toNat + A025480 n

end

end A351460.P9716041226196178519

namespace A351460

/-- `A130130(A003961(n+1))+A025480(n)` -/
def P9716041226196178519.Spec : Prop :=
  ∀ n, P9716041226196178519.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P14245284139135087949

`A103391(A103391((n+1)*A001316(n)))`
-/

namespace A351460.P14245284139135087949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A103391 ((n + 1 : ℤ) * A001316 n).toNat).toNat

end

end A351460.P14245284139135087949

namespace A351460

/-- `A103391(A103391((n+1)*A001316(n)))` -/
def P14245284139135087949.Spec : Prop :=
  ∀ n, P14245284139135087949.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P823262710095289352

`A060576(A003961(n+1))+A003602(n+1)`
-/

namespace A351460.P823262710095289352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A003961 (n + 1)).toNat + A003602 (n + 1)

end

end A351460.P823262710095289352

namespace A351460

/-- `A060576(A003961(n+1))+A003602(n+1)` -/
def P823262710095289352.Spec : Prop :=
  ∀ n, P823262710095289352.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P12191971423637898748

`A003602(n+1)+A055396(A003961(n+1))-A055396(n+1)`
-/

namespace A351460.P12191971423637898748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + (A055396 (A003961 (n + 1)).toNat - A055396 (n + 1))

end

end A351460.P12191971423637898748

namespace A351460

/-- `A003602(n+1)+A055396(A003961(n+1))-A055396(n+1)` -/
def P12191971423637898748.Spec : Prop :=
  ∀ n, P12191971423637898748.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P12302908983204583559

`A025480(n)+A020639(A055932(n+1))`
-/

namespace A351460.P12302908983204583559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + A020639 (A055932 (n + 1)).toNat

end

end A351460.P12302908983204583559

namespace A351460

/-- `A025480(n)+A020639(A055932(n+1))` -/
def P12302908983204583559.Spec : Prop :=
  ∀ n, P12302908983204583559.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P1730987937175554455

`A025480(n)+ratio[A011782(n)]`
-/

namespace A351460.P1730987937175554455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025480 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A351460.P1730987937175554455

namespace A351460

/-- `A025480(n)+ratio[A011782(n)]` -/
def P1730987937175554455.Spec : Prop :=
  ∀ n, P1730987937175554455.a n = (A351460 (n + 1) : ℚ)

end A351460

/-! ## A351460.P5123582780762035175

`floor(atan(n+1))^(2^(n+5)-17)+floor(n/(xor(n, n+1)+1))+1`
-/

namespace A351460.P5123582780762035175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.arctan (n + 1 : ℝ)⌋ : ℚ) ^ ((2 ^ (n + 5) : ℤ) - 17 : ℤ) + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℚ)

end

end A351460.P5123582780762035175

namespace A351460

/-- `floor(atan(n+1))^(2^(n+5)-17)+floor(n/(xor(n, n+1)+1))+1` -/
def P5123582780762035175.Spec : Prop :=
  ∀ n, P5123582780762035175.a n = (A351460 (n + 1) : ℚ)

end A351460

/-! ## A351460.P5811715969194350589

`A003602(n+1)%A084858(n)+1`
-/

namespace A351460.P5811715969194350589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (n + 1)) (A084858 n) + 1

end

end A351460.P5811715969194350589

namespace A351460

/-- `A003602(n+1)%A084858(n)+1` -/
def P5811715969194350589.Spec : Prop :=
  ∀ n, P5811715969194350589.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P10005704365151697670

`and(1, (n+1)*2^n-1)+floor(n/(xor(n, n+1)+1))+1`
-/

namespace A351460.P10005704365151697670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (((n + 1) * 2 ^ n : ℤ) - 1) + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

end

end A351460.P10005704365151697670

namespace A351460

/-- `and(1, (n+1)*2^n-1)+floor(n/(xor(n, n+1)+1))+1` -/
def P10005704365151697670.Spec : Prop :=
  ∀ n, P10005704365151697670.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P11019470296978507047

`(floor(n/(xor(n, n+1)+1))+1)%((n+1)*or(1, 2^n))+1`
-/

namespace A351460.P11019470296978507047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) ((n + 1) * Nat.lor 1 (2 ^ n) : ℤ) + 1

end

end A351460.P11019470296978507047

namespace A351460

/-- `(floor(n/(xor(n, n+1)+1))+1)%((n+1)*or(1, 2^n))+1` -/
def P11019470296978507047.Spec : Prop :=
  ∀ n, P11019470296978507047.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P5768966888392448447

`gcd((n+1)*2^n-1, floor(2^(n-1)))+floor(n/(xor(n, n+1)+1))+1`
-/

namespace A351460.P5768966888392448447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (((n + 1) * 2 ^ n : ℤ) - 1) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℤ) + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

end

end A351460.P5768966888392448447

namespace A351460

/-- `gcd((n+1)*2^n-1, floor(2^(n-1)))+floor(n/(xor(n, n+1)+1))+1` -/
def P5768966888392448447.Spec : Prop :=
  ∀ n, P5768966888392448447.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P1146461273470072404

`A003602(n+1)+A000337(n)%2`
-/

namespace A351460.P1146461273470072404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + Int.tmod (A000337 n) 2

end

end A351460.P1146461273470072404

namespace A351460

/-- `A003602(n+1)+A000337(n)%2` -/
def P1146461273470072404.Spec : Prop :=
  ∀ n, P1146461273470072404.a n = A351460 (n + 1)

end A351460

/-! ## A351460.P6567980017454607956

`A003602(n+1)+A092442(n)%2`
-/

namespace A351460.P6567980017454607956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + Int.tmod (A092442 n) 2

end

end A351460.P6567980017454607956

namespace A351460

/-- `A003602(n+1)+A092442(n)%2` -/
def P6567980017454607956.Spec : Prop :=
  ∀ n, P6567980017454607956.a n = A351460 (n + 1)

end A351460

/-!
# A351461: Lexicographically earliest infinite sequence such that a(i) = a(j) => A206787(i) = A206787(j) and A336651(i) = A336651(j) for all i, j >= 1.

The programs for A351461, there is no canonical definition to state claims against.
-/

/-! ## A351461.P18235109812816058618

`A351037(n+1)+A000007(A099627(n))`
-/

namespace A351461.P18235109812816058618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351037 (n + 1) + A000007 (A099627 n).toNat

end

end A351461.P18235109812816058618

/-! ## A351461.P10880261646989103077

`A379971(A027865(n))+A351037(n+1)`
-/

namespace A351461.P10880261646989103077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379971 (A027865 n).toNat + A351037 (n + 1)

end

end A351461.P10880261646989103077

/-! ## A351461.P15950522404467957219

`A351037(n+1)%A016813(A228187(n+1))`
-/

namespace A351461.P15950522404467957219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351037 (n + 1)) (A016813 (A228187 (n + 1)).toNat)

end

end A351461.P15950522404467957219

/-! ## A351461.P11256962817614400507

`A001065(A006512(2*(n+1)))*A351037(n+1)`
-/

namespace A351461.P11256962817614400507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A006512 (2 * (n + 1))).toNat * A351037 (n + 1)

end

end A351461.P11256962817614400507

/-! ## A351461.P5035815678089276177

`A292269(A007522(3*n+4))*A351037(n+1)`
-/

namespace A351461.P5035815678089276177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A007522 (3 * n + 4)).toNat * A351037 (n + 1)

end

end A351461.P5035815678089276177

/-! ## A351461.P6757922759865594294

`A014577(A000290(n))*A351037(n+1)`
-/

namespace A351461.P6757922759865594294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A000290 n).toNat * A351037 (n + 1)

end

end A351461.P6757922759865594294

/-! ## A351461.P642050854393292042

`A351037(n+1)/A051340(A002061(n))`
-/

namespace A351461.P642050854393292042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351037 (n + 1) : ℚ) / (A051340 (A002061 n).toNat : ℚ)

end

end A351461.P642050854393292042

/-! ## A351461.P3140207136003731746

`A067029(A084758(n+1))*A351037(n+1)`
-/

namespace A351461.P3140207136003731746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A084758 (n + 1)).toNat * A351037 (n + 1)

end

end A351461.P3140207136003731746

/-! ## A351461.P11179685340676102653

`A351037(n+1)%A301939(n+1)`
-/

namespace A351461.P11179685340676102653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351037 (n + 1)) (A301939 (n + 1))

end

end A351461.P11179685340676102653

/-!
# A351462: Multiplicative, with a(p^k) = a(p^k-1) + 2 for any k > 0 and p prime.

The programs for A351462, there is no canonical definition to state claims against.
-/

/-! ## A351462.P6076699072827820575

`∑[A083261(A290234(n))]`
-/

namespace A351462.P6076699072827820575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083261 (A290234 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351462.P6076699072827820575

/-! ## A351462.P5260011973617439412

`∑[A180094(A285844(n))!]`
-/

namespace A351462.P5260011973617439412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A180094 (A285844 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351462.P5260011973617439412

/-! ## A351462.P1100126228222278082

`∑[A333226(∑[A151568(n)])]`
-/

namespace A351462.P1100126228222278082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151568 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351462.P1100126228222278082

/-! ## A351462.P10961334230116318487

`∑[A063086(∑[A374728(n+1)])]`
-/

namespace A351462.P10961334230116318487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374728 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351462.P10961334230116318487

/-! ## A351462.P12116857504481547408

`∑[A292586(n+1)%A359850(n)]`
-/

namespace A351462.P12116857504481547408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292586 (n + 1)) (A359850 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351462.P12116857504481547408

/-!
# A351464: Let f be multiplicative with f(prime(k)^e) = k + e*i for any k, e > 0 (where i denotes the imaginary unit); a(n) is the real part of f(n). See A351465 for the imaginary part.

The programs for A351464, there is no canonical definition to state claims against.
-/

/-! ## A351464.P6669664740447065747

`A225395(n+1)-A327695(A064988(n+1))`
-/

namespace A351464.P6669664740447065747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (n + 1) - A327695 (A064988 (n + 1)).toNat

end

end A351464.P6669664740447065747

/-! ## A351464.P7813590506685480624

`A290103(n+1)-A327695(A064988(n+1))`
-/

namespace A351464.P7813590506685480624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1) - A327695 (A064988 (n + 1)).toNat

end

end A351464.P7813590506685480624

/-! ## A351464.P12089348234857731634

`xor(A064839(n+1), A124761(A320008(n)))`
-/

namespace A351464.P12089348234857731634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064839 (n + 1)) (A124761 (A320008 n).toNat)

end

end A351464.P12089348234857731634

/-! ## A351464.P14237361029981072605

`xor(A064839(n+1), A124762(A331327(n)))`
-/

namespace A351464.P14237361029981072605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064839 (n + 1)) (A124762 (A331327 n).toNat)

end

end A351464.P14237361029981072605

/-! ## A351464.P2401165434963464054

`A102609(A366389(3*n+4))+A079067(n+1)`
-/

namespace A351464.P2401165434963464054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102609 (A366389 (3 * n + 4)).toNat + A079067 (n + 1)

end

end A351464.P2401165434963464054

/-!
# A351465: Let f be multiplicative with f(prime(k)^e) = k + e*i for any k, e > 0 (where i denotes the imaginary unit); a(n) is the imaginary part of f(n). See A351464 for the real part.

The programs for A351465, there is no canonical definition to state claims against.
-/

/-! ## A351465.P3003906651902915114

`sqrt(A351475(n+1)-A351464(n+1)²)`
-/

namespace A351465.P3003906651902915114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A351475 (n + 1) - A351464 (n + 1) ^ 2 : ℝ)

end

end A351465.P3003906651902915114

/-! ## A351465.P3583313806814237213

`A318573(n+1)*A340102(A008706(n))`
-/

namespace A351465.P3583313806814237213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (n + 1) * A340102 (A008706 n).toNat

end

end A351465.P3583313806814237213

/-! ## A351465.P6572570961978198012

`A318573((n+1)^A065941(n))`
-/

namespace A351465.P6572570961978198012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A065941 n : ℤ))).toNat

end

end A351465.P6572570961978198012

/-! ## A351465.P5783869708313081341

`A318573(n+1)+A069849(A318576(n+1))`
-/

namespace A351465.P5783869708313081341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (n + 1) + A069849 (A318576 (n + 1)).toNat

end

end A351465.P5783869708313081341

/-! ## A351465.P1905412300132783618

`A262352(A344977(n+3)*A344998(n+1))`
-/

namespace A351465.P1905412300132783618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (A344977 (n + 3) * A344998 (n + 1)).toNat

end

end A351465.P1905412300132783618

/-!
# A351466: a(n) = (a(n-1) + a(n-3))/2 if (a(n-1)+a(n-3)) is even. Otherwise, a(n)=a(n-1)+a(n-3).

The programs for A351466, there is no canonical definition to state claims against.
-/

/-! ## A351466.P12105030034482545350

`A026741(a(n-3)+a(n-1))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A351466.P12105030034482545350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  A026741 (a (n - 3) + a (n - 1)).toNat

end

end A351466.P12105030034482545350

/-! ## A351466.P1740778587088690229

`A219644(A252230(n+1)+A033192(n))`
-/

namespace A351466.P1740778587088690229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 (A252230 (n + 1) + A033192 n).toNat

end

end A351466.P1740778587088690229

/-! ## A351466.P13946608591802022030

`A103609(n)+A060950(A135491(n+3)+1)`
-/

namespace A351466.P13946608591802022030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + A060950 (A135491 (n + 3) + 1).toNat

end

end A351466.P13946608591802022030

/-! ## A351466.P13492625100370162293

`A000120(A152977(3*n+1)+A000170(n))`
-/

namespace A351466.P13492625100370162293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A152977 (3 * n + 1) + A000170 n).toNat

end

end A351466.P13492625100370162293

/-!
# A351467: Numbers with integer defect at most 1; m such that A350723(m) <= 1.

The programs for A351467, there is no canonical definition to state claims against.
-/

/-! ## A351467.P12230261220132035463

`lt[A350723(n+1), 2]+1`
-/

namespace A351467.P12230261220132035463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350723 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351467.P12230261220132035463

/-!
# A351468: Irregular triangle read by rows where row n is Newey's sequence containing all permutations of 1..n.

The programs for A351468, there is no canonical definition to state claims against.
-/

/-! ## A351468.P15372313559306997561

`A105265(lt[A322765(n+3), A299291(n)])`
-/

namespace A351468.P15372313559306997561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322765 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A351468.P15372313559306997561

/-! ## A351468.P6225720727244654504

`A133780(A124778(2*n+1)²+n)`
-/

namespace A351468.P6225720727244654504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133780 (A124778 (2 * n + 1) ^ 2 + (n : ℤ)).toNat

end

end A351468.P6225720727244654504

/-! ## A351468.P18025212314712584441

`A230404(A109128(3*n)*A226806(n+1))`
-/

namespace A351468.P18025212314712584441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 (A109128 (3 * n) * A226806 (n + 1)).toNat

end

end A351468.P18025212314712584441

/-! ## A351468.P18001348673739702160

`A194884(eq[A010169(n), A124778(n)])`
-/

namespace A351468.P18001348673739702160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194884 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351468.P18001348673739702160

/-! ## A351468.P3368029931316196097

`A359944(A138935(n+2))`
-/

namespace A351468.P3368029931316196097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359944 (A138935 (n + 2)).toNat

end

end A351468.P3368029931316196097

/-!
# A351469: Irregular triangle read by rows where row n is Adelman's sequence containing all permutations of 1..n.

The programs for A351469, there is no canonical definition to state claims against.
-/

/-! ## A351469.P3207946303045308040

`A023118(n+5)+A008683(A000079(n))`
-/

namespace A351469.P3207946303045308040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023118 (n + 5) + A008683 (A000079 n).toNat

end

end A351469.P3207946303045308040

/-! ## A351469.P8975897723002027331

`A122197(n+5)+A008683(A000079(n))`
-/

namespace A351469.P8975897723002027331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 5) + A008683 (A000079 n).toNat

end

end A351469.P8975897723002027331

/-! ## A351469.P5792395914597416422

`A073933(A264846(n+1))+A008683(A000079(n))`
-/

namespace A351469.P5792395914597416422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (A264846 (n + 1)).toNat + A008683 (A000079 n).toNat

end

end A351469.P5792395914597416422

/-! ## A351469.P17250124917075798059

`A073933(A264846(n+1))+A008683(A011782(n+1))`
-/

namespace A351469.P17250124917075798059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (A264846 (n + 1)).toNat + A008683 (A011782 (n + 1)).toNat

end

end A351469.P17250124917075798059

/-!
# A351471: Numbers m such that the largest digit in the decimal expansion of 1/m is 5.

The programs for A351471, there is no canonical definition to state claims against.
-/

/-! ## A351471.P16126757177358981585

`eq[5, A333236(n+1)]+1`
-/

namespace A351471.P16126757177358981585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351471.P16126757177358981585

/-! ## A351471.P6903304364024427618

`eq[5, A333236(A028310(n))]`
-/

namespace A351471.P6903304364024427618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351471.P6903304364024427618

/-! ## A351471.P6074285517758028945

`A014681(eq[5, A333236(n+1)])`
-/

namespace A351471.P6074285517758028945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351471.P6074285517758028945

/-! ## A351471.P11223481727715527448

`A020725(eq[5, A333236(n+1)])`
-/

namespace A351471.P11223481727715527448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351471.P11223481727715527448

/-! ## A351471.P31797693648854211

`eq[5, A333236(A065190(n+1))]`
-/

namespace A351471.P31797693648854211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351471.P31797693648854211

/-!
# A351472: Numbers m such that the largest digit in the decimal expansion of 1/m is 6.

The programs for A351472, there is no canonical definition to state claims against.
-/

/-! ## A351472.P8290676274367425356

`eq[6, A333236(n+1)]+1`
-/

namespace A351472.P8290676274367425356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351472.P8290676274367425356

/-! ## A351472.P2538439188532534965

`eq[6, A333236(A028310(n))]`
-/

namespace A351472.P2538439188532534965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351472.P2538439188532534965

/-! ## A351472.P7481479471559437949

`A020725(eq[6, A333236(n+1)])`
-/

namespace A351472.P7481479471559437949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351472.P7481479471559437949

/-! ## A351472.P13423548976692518570

`A065475(eq[6, A333236(n+1)])`
-/

namespace A351472.P13423548976692518570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351472.P13423548976692518570

/-! ## A351472.P13380690672794816280

`A092200(eq[6, A333236(n+1)])`
-/

namespace A351472.P13380690672794816280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351472.P13380690672794816280

/-!
# A351473: Numbers m such that the largest digit in the decimal expansion of 1/m is 7.

The programs for A351473, there is no canonical definition to state claims against.
-/

/-! ## A351473.P9813456208195090855

`A250120(A046097(n+5))-A235266(n+1)`
-/

namespace A351473.P9813456208195090855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A046097 (n + 5)).toNat - A235266 (n + 1)

end

end A351473.P9813456208195090855

/-!
# A351474: Numbers m such that the largest digit in the decimal expansion of 1/m is 8.

The programs for A351474, there is no canonical definition to state claims against.
-/

/-! ## A351474.P16623682284873317300

`eq[8, A333236(n+1)]+1`
-/

namespace A351474.P16623682284873317300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351474.P16623682284873317300

/-! ## A351474.P12910294481154691129

`eq[8, A333236(A028310(n))]`
-/

namespace A351474.P12910294481154691129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351474.P12910294481154691129

/-! ## A351474.P14957761385018679593

`A020725(eq[8, A333236(n+1)])`
-/

namespace A351474.P14957761385018679593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351474.P14957761385018679593

/-! ## A351474.P2235318586716543901

`eq[8, A333236(A060000(n+1))]`
-/

namespace A351474.P2235318586716543901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351474.P2235318586716543901

/-! ## A351474.P17788558368212795169

`A065475(eq[8, A333236(n+1)])`
-/

namespace A351474.P17788558368212795169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351474.P17788558368212795169

/-!
# A351475: Multiplicative with a(prime(k)^e) = k^2 + e^2 for any k, e > 0.

The programs for A351475, there is no canonical definition to state claims against.
-/

/-! ## A351475.P295936974175697637

`A351464(n+1)²+A351465(n+1)²`
-/

namespace A351475.P295936974175697637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351464 (n + 1) ^ 2 + A351465 (n + 1) ^ 2

end

end A351475.P295936974175697637

/-!
# A351476: If F is the Fermat point of a triangle ABC with A < B < C < 2*Pi/3, where AB, BC, CA, FA, FB and FC are all positive integers, then, this sequence gives the sum FA + FB + FC when gcd(a, b, c) = A351477(n).

The programs for A351476, there is no canonical definition to state claims against.
-/

/-! ## A351476.P17942787719220933787

`A336329(n+1)*A351477(n+1)`
-/

namespace A351476.P17942787719220933787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336329 (n + 1) * A351477 (n + 1)

end

end A351476.P17942787719220933787

/-! ## A351476.P2520524977843729903

`A351801(n+1)+A351803(n+1)+A351802(n+1)`
-/

namespace A351476.P2520524977843729903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351801 (n + 1) + (A351803 (n + 1) + A351802 (n + 1))

end

end A351476.P2520524977843729903

/-! ## A351476.P7262702078735060618

`A352360(3*(n+1))/A336332(n+1)*A336329(n+1)`
-/

namespace A351476.P7262702078735060618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352360 (3 * (n + 1)) : ℚ) / (A336332 (n + 1) : ℚ) * (A336329 (n + 1) : ℚ)

end

end A351476.P7262702078735060618

/-! ## A351476.P2266271504169026797

`A352360(3*n+1)/A336330(n+1)*A336329(n+1)`
-/

namespace A351476.P2266271504169026797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352360 (3 * n + 1) : ℚ) / (A336330 (n + 1) : ℚ) * (A336329 (n + 1) : ℚ)

end

end A351476.P2266271504169026797

/-! ## A351476.P8490598654419363272

`A352360(3*n+2)/A336331(n+1)*A336329(n+1)`
-/

namespace A351476.P8490598654419363272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352360 (3 * n + 2) : ℚ) / (A336331 (n + 1) : ℚ) * (A336329 (n + 1) : ℚ)

end

end A351476.P8490598654419363272

/-!
# A351477: a(n) is the common denominator of FA, FB and FC, where F is the Fermat point of the integer-sided triangle ABC with A < B < C < 2*Pi/3 such that FA + FB + FC = A336329(n).

The programs for A351477, there is no canonical definition to state claims against.
-/

/-! ## A351477.P968394932089923014

`A351476(n+1)/A336329(n+1)`
-/

namespace A351477.P968394932089923014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351476 (n + 1) : ℚ) / (A336329 (n + 1) : ℚ)

end

end A351477.P968394932089923014

/-! ## A351477.P11276825508720344285

`(A351801(n+1)+A351803(n+1)+A351802(n+1))/A336329(n+1)`
-/

namespace A351477.P11276825508720344285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351801 (n + 1) + (A351803 (n + 1) + A351802 (n + 1)) : ℚ) / (A336329 (n + 1) : ℚ)

end

end A351477.P11276825508720344285

/-! ## A351477.P15445681351275506158

`A352360(3*(n+1))/A336332(n+1)`
-/

namespace A351477.P15445681351275506158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352360 (3 * (n + 1)) : ℚ) / (A336332 (n + 1) : ℚ)

end

end A351477.P15445681351275506158

/-! ## A351477.P783099978887759234

`A352360(3*n+1)/A336330(n+1)`
-/

namespace A351477.P783099978887759234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352360 (3 * n + 1) : ℚ) / (A336330 (n + 1) : ℚ)

end

end A351477.P783099978887759234

/-! ## A351477.P5557246965673883455

`A352360(3*n+2)/A336331(n+1)`
-/

namespace A351477.P5557246965673883455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352360 (3 * n + 2) : ℚ) / (A336331 (n + 1) : ℚ)

end

end A351477.P5557246965673883455

/-!
# A351478: Numbers whose sum of even digits is twice the sum of odd digits.

The programs for A351478, there is no canonical definition to state claims against.
-/

/-! ## A351478.P10677114337063505854

`A335080(A002626(n+1))`
-/

namespace A351478.P10677114337063505854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335080 (A002626 (n + 1)).toNat

end

end A351478.P10677114337063505854

/-!
# A351479: Numbers whose sum of odd digits is twice the sum of even digits.

The programs for A351479, there is no canonical definition to state claims against.
-/

/-! ## A351479.P15304155340383553419

`eq[A071648(n+1), A071650(n+1)]+1`
-/

namespace A351479.P15304155340383553419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351479.P15304155340383553419

/-! ## A351479.P4025181053572386392

`A020725(eq[A071648(n+1), A071650(n+1)])`
-/

namespace A351479.P4025181053572386392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351479.P4025181053572386392

/-! ## A351479.P4029734492330808822

`A065475(eq[A071648(n+1), A071650(n+1)])`
-/

namespace A351479.P4029734492330808822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351479.P4029734492330808822

/-! ## A351479.P365680771839189327

`A153152(eq[A071648(n+1), A071650(n+1)])`
-/

namespace A351479.P365680771839189327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351479.P365680771839189327

/-! ## A351479.P3896082198428746647

`eq[A001613(n), A071650(A233583(n+1))]`
-/

namespace A351479.P3896082198428746647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351479.P3896082198428746647

/-!
# A351484: a(n) is the number of primitive triangulations of a 5 X n rectangle.

The programs for A351484, there is no canonical definition to state claims against.
-/

/-! ## A351484.P2178339400571809789

`A082640(A073786(n)+11)`
-/

namespace A351484.P2178339400571809789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082640 (A073786 n + 11).toNat

end

end A351484.P2178339400571809789

/-!
# A351485: 

The programs for A351485, there is no canonical definition to state claims against.
-/

/-! ## A351485.P8660899234580041342

`A082640(A045918(n+4)+2)`
-/

namespace A351485.P8660899234580041342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082640 (A045918 (n + 4) + 2).toNat

end

end A351485.P8660899234580041342

/-!
# A351489: Irregular triangle read by rows: T(n,k) is the minimum number of alphabetic symbols in a regular expression for the k lexicographically first palindromes of length 2*n over a binary alphabet, n >= 0, 1 <= k <= 2^n.

The programs for A351489, there is no canonical definition to state claims against.
-/

/-! ## A351489.P12483003687327057382

`2*(A188215(n+1)-1)`
-/

namespace A351489.P12483003687327057382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A188215 (n + 1) - 1)

end

end A351489.P12483003687327057382

/-! ## A351489.P16990772918858866140

`A053645(∑[n%2*a(floor(n/2))+2])` with `a(0)=4`
-/

namespace A351489.P16990772918858866140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  n % 2 * f1 ⌊(n : ℚ) / 2⌋.toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351489.P16990772918858866140

/-! ## A351489.P3600022967675482542

`A005843(A188215(n+1)-1)`
-/

namespace A351489.P3600022967675482542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A188215 (n + 1) - 1).toNat

end

end A351489.P3600022967675482542

/-! ## A351489.P5190978693996798376

`A289207(2*A188215(n+1))`
-/

namespace A351489.P5190978693996798376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (2 * A188215 (n + 1)).toNat

end

end A351489.P5190978693996798376

/-! ## A351489.P11865327583252299224

`2*(A053645(2*(n+1))+A023416(n+1))`
-/

namespace A351489.P11865327583252299224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053645 (2 * (n + 1)) + A023416 (n + 1))

end

end A351489.P11865327583252299224

/-! ## A351489.P2418726027518095955

`2*abs(A188215(n+1)+A033999(2*n+1))`
-/

namespace A351489.P2418726027518095955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A188215 (n + 1) + A033999 (2 * n + 1)|

end

end A351489.P2418726027518095955

/-! ## A351489.P1008959563390449709

`(A188215(n+1)-1)/2^A008683(A005382(n+1))`
-/

namespace A351489.P1008959563390449709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188215 (n + 1) - 1 : ℚ) / (2 : ℚ) ^ (A008683 (A005382 (n + 1)).toNat : ℤ)

end

end A351489.P1008959563390449709

/-!
# A351492: Expansion of e.g.f. (1 - x)^(-x^2/2).

The programs for A351492, there is no canonical definition to state claims against.
-/

/-! ## A351492.P10573868036273479278

`A355610(∑[n+3])`
-/

namespace A351492.P10573868036273479278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351492.P10573868036273479278

/-! ## A351492.P2564220544400864170

`lcm(A033999(n), A355610(A027379(n+1)))`
-/

namespace A351492.P2564220544400864170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A355610 (A027379 (n + 1)).toNat)

end

end A351492.P2564220544400864170

/-! ## A351492.P9533427226569514753

`or(A000038(n+1), A355610(A027379(n+1)))`
-/

namespace A351492.P9533427226569514753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n + 1)) (A355610 (A027379 (n + 1)).toNat)

end

end A351492.P9533427226569514753

/-! ## A351492.P4624456313513002714

`A000034(2*(n+2))*A355610(A027379(n+1))`
-/

namespace A351492.P4624456313513002714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 2)) * A355610 (A027379 (n + 1)).toNat

end

end A351492.P4624456313513002714

/-! ## A351492.P6296643695920087746

`A001221(A073703(n+1))*A355610(A027379(n+1))`
-/

namespace A351492.P6296643695920087746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073703 (n + 1)).toNat * A355610 (A027379 (n + 1)).toNat

end

end A351492.P6296643695920087746

/-!
# A351493: Expansion of e.g.f. (1 - x)^(-x^3/6).

The programs for A351493, there is no canonical definition to state claims against.
-/

/-! ## A351493.P15413453445206902992

`A355610(eq[3, A025581(n)])`
-/

namespace A351493.P15413453445206902992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351493.P15413453445206902992

/-! ## A351493.P6675127901727717453

`A355610(A052905(n+1)+1)`
-/

namespace A351493.P6675127901727717453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (A052905 (n + 1) + 1).toNat

end

end A351493.P6675127901727717453

/-! ## A351493.P13224021988496087454

`A355610(A133263(n+4)-6)`
-/

namespace A351493.P13224021988496087454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (A133263 (n + 4) - 6).toNat

end

end A351493.P13224021988496087454

/-! ## A351493.P14508683847405658651

`A355610(eq[3, A193592(n+1)])`
-/

namespace A351493.P14508683847405658651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351493.P14508683847405658651

/-! ## A351493.P3762268984872078766

`A355610(A167614(n+1)+2*n)`
-/

namespace A351493.P3762268984872078766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (A167614 (n + 1) + (2 * n : ℤ)).toNat

end

end A351493.P3762268984872078766

/-! ## A351493.P9500512472143175441

`A355610(A167614(n+2)-3+n)`
-/

namespace A351493.P9500512472143175441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (A167614 (n + 2) - 3 + (n : ℤ)).toNat

end

end A351493.P9500512472143175441

/-! ## A351493.P14657308893926395363

`A355610(lt[A047920(n+1), A355609(n+3)])`
-/

namespace A351493.P14657308893926395363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355610 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A351493.P14657308893926395363

/-!
# A351495: a(1) = 1, for n > 1, a(n) is the smallest positive number that has not yet appeared that is a multiple of the smallest prime that does not divide a(n-1).

The programs for A351495, there is no canonical definition to state claims against.
-/

/-! ## A351495.P7171700580821666051

`A316413(n+1)-A009205(A346644(n+1))`
-/

namespace A351495.P7171700580821666051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1) - A009205 (A346644 (n + 1)).toNat

end

end A351495.P7171700580821666051

/-! ## A351495.P3566146350511932818

`A359905(n+1)-A009205(A346644(n+1))`
-/

namespace A351495.P3566146350511932818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359905 (n + 1) - A009205 (A346644 (n + 1)).toNat

end

end A351495.P3566146350511932818

/-! ## A351495.P17359134841840556413

`A316413(n+1)-A009194(A000051(n))`
-/

namespace A351495.P17359134841840556413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1) - A009194 (A000051 n).toNat

end

end A351495.P17359134841840556413

/-! ## A351495.P9332212354213691565

`A316413(n+1)-A009205(A000079(n))`
-/

namespace A351495.P9332212354213691565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1) - A009205 (A000079 n).toNat

end

end A351495.P9332212354213691565

/-! ## A351495.P9137598263622465938

`A359905(n+1)-A009194(A000051(n))`
-/

namespace A351495.P9137598263622465938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359905 (n + 1) - A009194 (A000051 n).toNat

end

end A351495.P9137598263622465938

/-!
# A351498: Position k of first term in a run of odd terms with length > 1 in A093714.

The programs for A351498, there is no canonical definition to state claims against.
-/

/-! ## A351498.P13579701124118479761

`A352932(n+2)-1`
-/

namespace A351498.P13579701124118479761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352932 (n + 2) - 1

end

end A351498.P13579701124118479761

/-! ## A351498.P12997938824882248467

`∑[abs(Δ[A352932(n+1)])]`
-/

namespace A351498.P12997938824882248467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351498.P12997938824882248467

/-! ## A351498.P6425526198451513291

`record[Δ[A352932(A001511(n+1))]]`
-/

namespace A351498.P6425526198451513291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352932 (A001511 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351498.P6425526198451513291

/-! ## A351498.P16736766467340376414

`record[Δ[A352932(A004736(n+1))]]`
-/

namespace A351498.P16736766467340376414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352932 (A004736 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351498.P16736766467340376414

/-! ## A351498.P16474528218851637946

`record[Δ[A352932(A056538(n+1))]]`
-/

namespace A351498.P16474528218851637946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352932 (A056538 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351498.P16474528218851637946

/-!
# A351499: Odd m in A352928.

The programs for A351499, there is no canonical definition to state claims against.
-/

/-! ## A351499.P18122078848725689011

`record[A093178(A352928(n+1))]`
-/

namespace A351499.P18122078848725689011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A352928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351499.P18122078848725689011

/-! ## A351499.P14867688012557700676

`∩[A065917(n+1), A081694(n)]`
-/

namespace A351499.P14867688012557700676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081694 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351499.P14867688012557700676

/-! ## A351499.P6338042716955191015

`A065917(comp[∑[A330929(n+1)-2]])`
-/

namespace A351499.P6338042716955191015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330929 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065917 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A351499.P6338042716955191015

