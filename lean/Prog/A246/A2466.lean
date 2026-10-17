import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
# A246600: Number of divisors d of n with property that the binary representation of d can be obtained from the binary representation of n by changing any number of 1's to 0's.

The programs for A246600, the canonical program `A246600.P2682963133501465328` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246600 has offset 1).

The definition of A246600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246600.P2682963133501465328

`∑{d}[n+1, floor(and(#, n+1)/#)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246600

/-- `∑{d}[n+1, floor(and(#, n+1)/#)]` -/
def P2682963133501465328.Spec : Prop :=
  ∀ n, P2682963133501465328.a n = A246600 (n + 1)

theorem P2682963133501465328.correct : P2682963133501465328.Spec := by
  intro n
  simp only [A246600, Nat.add_sub_cancel]

end A246600

/-! ## A246600.P8825395124152325941

`∑{d}[n+1, floor((n+1)/or(#, n+1))]`
-/

namespace A246600.P8825395124152325941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(n + 1 : ℚ) / (Nat.lor d (n + 1) : ℚ)⌋

end

end A246600.P8825395124152325941

namespace A246600

/-- `∑{d}[n+1, floor((n+1)/or(#, n+1))]` -/
def P8825395124152325941.Spec : Prop :=
  ∀ n, P8825395124152325941.a n = A246600 (n + 1)

end A246600

/-! ## A246600.P13850083059670801600

`∑{d}[n+1, A000007(and(#, n+1-#))]`
-/

namespace A246600.P13850083059670801600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Int.land (d : ℤ) ((n + 1 : ℤ) - (d : ℤ))).toNat

end

end A246600.P13850083059670801600

namespace A246600

/-- `∑{d}[n+1, A000007(and(#, n+1-#))]` -/
def P13850083059670801600.Spec : Prop :=
  ∀ n, P13850083059670801600.a n = A246600 (n + 1)

end A246600

/-! ## A246600.P4697014788637409031

`∑{d}[n+1, A000007(xor(#, and(#, n+1)))]`
-/

namespace A246600.P4697014788637409031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Nat.xor d (Nat.land d (n + 1)))

end

end A246600.P4697014788637409031

namespace A246600

/-- `∑{d}[n+1, A000007(xor(#, and(#, n+1)))]` -/
def P4697014788637409031.Spec : Prop :=
  ∀ n, P4697014788637409031.a n = A246600 (n + 1)

end A246600

/-! ## A246600.P10130473154763189972

`∑{d}[n+1, C(n+1, #)%2]`
-/

namespace A246600.P10130473154763189972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (n + 1) d % 2

end

end A246600.P10130473154763189972

namespace A246600

/-- `∑{d}[n+1, C(n+1, #)%2]` -/
def P10130473154763189972.Spec : Prop :=
  ∀ n, (P10130473154763189972.a n : ℤ) = A246600 (n + 1)

end A246600

/-! ## A246600.P1460401678437228278

`∑{d}[n+1, A010052((n+1)*or(#, n+1))]`
-/

namespace A246600.P1460401678437228278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 ((n + 1) * Nat.lor d (n + 1))

end

end A246600.P1460401678437228278

namespace A246600

/-- `∑{d}[n+1, A010052((n+1)*or(#, n+1))]` -/
def P1460401678437228278.Spec : Prop :=
  ∀ n, P1460401678437228278.a n = A246600 (n + 1)

end A246600

/-! ## A246600.P13254894738513659214

`Δ[A325106(n)]+1`
-/

namespace A246600.P13254894738513659214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A246600.P13254894738513659214

namespace A246600

/-- `Δ[A325106(n)]+1` -/
def P13254894738513659214.Spec : Prop :=
  ∀ n, P13254894738513659214.a n = A246600 (n + 1)

end A246600

/-! ## A246600.P10170180356637205120

`Δ[A325101(n)]`
-/

namespace A246600.P10170180356637205120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246600.P10170180356637205120

namespace A246600

/-- `Δ[A325101(n)]` -/
def P10170180356637205120.Spec : Prop :=
  ∀ n, P10170180356637205120.a n = A246600 (n + 1)

end A246600

/-! ## A246600.P10537688170208925987

`A325101(n+1)-A325101(n)`
-/

namespace A246600.P10537688170208925987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325101 (n + 1) - A325101 n

end

end A246600.P10537688170208925987

namespace A246600

/-- `A325101(n+1)-A325101(n)` -/
def P10537688170208925987.Spec : Prop :=
  ∀ n, P10537688170208925987.a n = A246600 (n + 1)

end A246600

/-!
# A246601: Sum of divisors d of n with property that the binary representation of d can be obtained from the binary representation of n by changing any number of 1's to 0's.

The programs for A246601, the canonical program `A246601.P4678833771488351896` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246601 has offset 1).

The definition of A246601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246601.P4678833771488351896

`∑{d}[n+1, #*A047999(A000217(n+1)+#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246601

/-- `∑{d}[n+1, #*A047999(A000217(n+1)+#)]` -/
def P4678833771488351896.Spec : Prop :=
  ∀ n, P4678833771488351896.a n = A246601 (n + 1)

theorem P4678833771488351896.correct : P4678833771488351896.Spec := by
  intro n
  simp only [A246601, Nat.add_sub_cancel]

end A246601

/-! ## A246601.P14664633343191005315

`A059952(A360156(n+1))`
-/

namespace A246601.P14664633343191005315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059952 (A360156 (n + 1)).toNat

end

end A246601.P14664633343191005315

namespace A246601

/-- `A059952(A360156(n+1))` -/
def P14664633343191005315.Spec : Prop :=
  ∀ n, P14664633343191005315.a n = A246601 (n + 1)

end A246601

/-! ## A246601.P13807916632033282272

`A360156(n+1)%A360154(2*n+3)/2`
-/

namespace A246601.P13807916632033282272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A360156 (n + 1)) (A360154 (2 * n + 3)) : ℚ) / 2

end

end A246601.P13807916632033282272

namespace A246601

/-- `A360156(n+1)%A360154(2*n+3)/2` -/
def P13807916632033282272.Spec : Prop :=
  ∀ n, P13807916632033282272.a n = (A246601 (n + 1) : ℚ)

end A246601

/-! ## A246601.P7955000062590279181

`A360156(n+1)/A001227(A000043(n+3))`
-/

namespace A246601.P7955000062590279181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360156 (n + 1) : ℚ) / (A001227 (A000043 (n + 3)).toNat : ℚ)

end

end A246601.P7955000062590279181

namespace A246601

/-- `A360156(n+1)/A001227(A000043(n+3))` -/
def P7955000062590279181.Spec : Prop :=
  ∀ n, P7955000062590279181.a n = (A246601 (n + 1) : ℚ)

end A246601

/-! ## A246601.P8869874287846575380

`A360156(n+1)/A000005(A360154(2*(n+1)))`
-/

namespace A246601.P8869874287846575380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360156 (n + 1) : ℚ) / (A000005 (A360154 (2 * (n + 1))).toNat : ℚ)

end

end A246601.P8869874287846575380

namespace A246601

/-- `A360156(n+1)/A000005(A360154(2*(n+1)))` -/
def P8869874287846575380.Spec : Prop :=
  ∀ n, P8869874287846575380.a n = (A246601 (n + 1) : ℚ)

end A246601

/-!
# A246604: a(n) = Catalan(n) - n.

The programs for A246604, the canonical program `A246604.P5603396420743086449` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246604 has offset 0).

The definition of A246604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246604.P5603396420743086449

`A000108(n)-n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246604

/-- `A000108(n)-n` -/
def P5603396420743086449.Spec : Prop :=
  ∀ n, P5603396420743086449.a n = A246604 n

theorem P5603396420743086449.correct : P5603396420743086449.Spec := by
  intro n
  simp only [A246604]

end A246604

/-! ## A246604.P9997612264285990737

`abs(A168491(n))-n`
-/

namespace A246604.P9997612264285990737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - (n : ℤ)

end

end A246604.P9997612264285990737

namespace A246604

/-- `abs(A168491(n))-n` -/
def P9997612264285990737.Spec : Prop :=
  ∀ n, P9997612264285990737.a n = A246604 n

end A246604

/-! ## A246604.P14500732344644039152

`A120588(n+1)-n`
-/

namespace A246604.P14500732344644039152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - (n : ℤ)

end

end A246604.P14500732344644039152

namespace A246604

/-- `A120588(n+1)-n` -/
def P14500732344644039152.Spec : Prop :=
  ∀ n, P14500732344644039152.a n = A246604 n

end A246604

/-! ## A246604.P5273545855703003750

`A120304(n)+2-n`
-/

namespace A246604.P5273545855703003750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + (2 - (n : ℤ))

end

end A246604.P5273545855703003750

namespace A246604

/-- `A120304(n)+2-n` -/
def P5273545855703003750.Spec : Prop :=
  ∀ n, P5273545855703003750.a n = A246604 n

end A246604

/-! ## A246604.P8560229097433790080

`A028303(2*n)-n`
-/

namespace A246604.P8560229097433790080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) - (n : ℤ)

end

end A246604.P8560229097433790080

namespace A246604

/-- `A028303(2*n)-n` -/
def P8560229097433790080.Spec : Prop :=
  ∀ n, P8560229097433790080.a n = A246604 n

end A246604

/-! ## A246604.P15918648048996093565

`A028304(2*n)-n`
-/

namespace A246604.P15918648048996093565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - (n : ℤ)

end

end A246604.P15918648048996093565

namespace A246604

/-- `A028304(2*n)-n` -/
def P15918648048996093565.Spec : Prop :=
  ∀ n, P15918648048996093565.a n = A246604 n

end A246604

/-! ## A246604.P17270372227252340052

`A126120(2*n)-n`
-/

namespace A246604.P17270372227252340052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - (n : ℤ)

end

end A246604.P17270372227252340052

namespace A246604

/-- `A126120(2*n)-n` -/
def P17270372227252340052.Spec : Prop :=
  ∀ n, P17270372227252340052.a n = A246604 n

end A246604

/-! ## A246604.P5714178145232935840

`A126324(2*n)-n`
-/

namespace A246604.P5714178145232935840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n) - (n : ℤ)

end

end A246604.P5714178145232935840

namespace A246604

/-- `A126324(2*n)-n` -/
def P5714178145232935840.Spec : Prop :=
  ∀ n, P5714178145232935840.a n = A246604 n

end A246604

/-! ## A246604.P12999672462987284589

`A208355(2*n)-n`
-/

namespace A246604.P12999672462987284589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - (n : ℤ)

end

end A246604.P12999672462987284589

namespace A246604

/-- `A208355(2*n)-n` -/
def P12999672462987284589.Spec : Prop :=
  ∀ n, P12999672462987284589.a n = A246604 n

end A246604

/-! ## A246604.P12592648927323310809

`A329687(3*n)-n`
-/

namespace A246604.P12592648927323310809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (3 * n) - (n : ℤ)

end

end A246604.P12592648927323310809

namespace A246604

/-- `A329687(3*n)-n` -/
def P12592648927323310809.Spec : Prop :=
  ∀ n, P12592648927323310809.a n = A246604 n

end A246604

/-! ## A246604.P2947606226078852800

`A089408(Δ[n²])-n`
-/

namespace A246604.P2947606226078852800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A246604.P2947606226078852800

namespace A246604

/-- `A089408(Δ[n²])-n` -/
def P2947606226078852800.Spec : Prop :=
  ∀ n, P2947606226078852800.a n = A246604 n

end A246604

/-! ## A246604.P15537965248976200120

`A097331(Δ[n²])-n`
-/

namespace A246604.P15537965248976200120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A246604.P15537965248976200120

namespace A246604

/-- `A097331(Δ[n²])-n` -/
def P15537965248976200120.Spec : Prop :=
  ∀ n, P15537965248976200120.a n = A246604 n

end A246604

/-! ## A246604.P12160427119255400197

`abs(A115140(n+1)+n)`
-/

namespace A246604.P12160427119255400197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (n + 1) + (n : ℤ)|

end

end A246604.P12160427119255400197

namespace A246604

/-- `abs(A115140(n+1)+n)` -/
def P12160427119255400197.Spec : Prop :=
  ∀ n, P12160427119255400197.a n = A246604 n

end A246604

/-! ## A246604.P5615301397650027181

`abs(A210628(2*n+1)+n)`
-/

namespace A246604.P5615301397650027181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210628 (2 * n + 1) + (n : ℤ)|

end

end A246604.P5615301397650027181

namespace A246604

/-- `abs(A210628(2*n+1)+n)` -/
def P5615301397650027181.Spec : Prop :=
  ∀ n, P5615301397650027181.a n = A246604 n

end A246604

/-! ## A246604.P13546357830767890407

`abs(A090192(2*n+1))-n`
-/

namespace A246604.P13546357830767890407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 (2 * n + 1)| - (n : ℤ)

end

end A246604.P13546357830767890407

namespace A246604

/-- `abs(A090192(2*n+1))-n` -/
def P13546357830767890407.Spec : Prop :=
  ∀ n, P13546357830767890407.a n = A246604 n

end A246604

/-! ## A246604.P7785627048127324650

`abs(A105523(2*n+1))-n`
-/

namespace A246604.P7785627048127324650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 (2 * n + 1)| - (n : ℤ)

end

end A246604.P7785627048127324650

namespace A246604

/-- `abs(A105523(2*n+1))-n` -/
def P7785627048127324650.Spec : Prop :=
  ∀ n, P7785627048127324650.a n = A246604 n

end A246604

/-! ## A246604.P11959796961560393585

`abs(A182492(4*n+3))-n`
-/

namespace A246604.P11959796961560393585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (4 * n + 3)| - (n : ℤ)

end

end A246604.P11959796961560393585

namespace A246604

/-- `abs(A182492(4*n+3))-n` -/
def P11959796961560393585.Spec : Prop :=
  ∀ n, P11959796961560393585.a n = A246604 n

end A246604

/-! ## A246604.P8112478517011820291

`A001489(n)+A000108(n)`
-/

namespace A246604.P8112478517011820291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000108 n

end

end A246604.P8112478517011820291

namespace A246604

/-- `A001489(n)+A000108(n)` -/
def P8112478517011820291.Spec : Prop :=
  ∀ n, P8112478517011820291.a n = A246604 n

end A246604

/-! ## A246604.P2958514699862364648

`A263986(n)+A065220(n)`
-/

namespace A246604.P2958514699862364648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263986 n + A065220 n

end

end A246604.P2958514699862364648

namespace A246604

/-- `A263986(n)+A065220(n)` -/
def P2958514699862364648.Spec : Prop :=
  ∀ n, P2958514699862364648.a n = A246604 n

end A246604

/-! ## A246604.P3430515236602652317

`A132807(n)-A052944(n)`
-/

namespace A246604.P3430515236602652317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132807 n - A052944 n

end

end A246604.P3430515236602652317

namespace A246604

/-- `A132807(n)-A052944(n)` -/
def P3430515236602652317.Spec : Prop :=
  ∀ n, P3430515236602652317.a n = A246604 n

end A246604

/-!
# A246606: Central terms of the triangle A116853.

The programs for A246606, there is no canonical definition to state claims against.
-/

/-! ## A246606.P1740569415419001503

`A161132(Δ[n²])`
-/

namespace A246606.P1740569415419001503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161132 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246606.P1740569415419001503

/-! ## A246606.P4947610749907503422

`A161134((n+1)²)`
-/

namespace A246606.P4947610749907503422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161134 ((n + 1) ^ 2)

end

end A246606.P4947610749907503422

/-! ## A246606.P8344105267303435972

`A068106(2*(n+1)²)`
-/

namespace A246606.P8344105267303435972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (2 * (n + 1) ^ 2)

end

end A246606.P8344105267303435972

/-! ## A246606.P3694360122725445603

`A116853(∑[4*n]+1)`
-/

namespace A246606.P3694360122725445603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116853 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A246606.P3694360122725445603

/-! ## A246606.P2480652292642688514

`A161133((n+2)²)/(n+1)`
-/

namespace A246606.P2480652292642688514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161133 ((n + 2) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A246606.P2480652292642688514

/-!
# A246607: Expansion of e.g.f. exp(x - x^3).

The programs for A246607, there is no canonical definition to state claims against.
-/

/-! ## A246607.P5990750115332319739

`a(n-1)-3*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A246607.P5990750115332319739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - 3 * (((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3)))

end

end A246607.P5990750115332319739

/-! ## A246607.P18167054479451288000

`A362302(eq[6, A025581(n)])`
-/

namespace A246607.P18167054479451288000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246607.P18167054479451288000

/-! ## A246607.P257984425673143558

`A362302(A052905(n+4)-2)`
-/

namespace A246607.P257984425673143558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (A052905 (n + 4) - 2).toNat

end

end A246607.P257984425673143558

/-! ## A246607.P970251380166205495

`A362302(eq[4, A219347(n+1)])`
-/

namespace A246607.P970251380166205495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246607.P970251380166205495

/-! ## A246607.P473467768162149018

`A362302(eq[4, A219347(n)]-1)`
-/

namespace A246607.P473467768162149018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A246607.P473467768162149018

/-!
# A246610: Number of endofunctions on [n] whose cycle lengths are multiples of 3.

The programs for A246610, there is no canonical definition to state claims against.
-/

/-! ## A246610.P6746122166538349586

`A246609(∑[char[2]+n]+2)`
-/

namespace A246610.P6746122166538349586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A246610.P6746122166538349586

/-! ## A246610.P7065144067365369922

`A059995(n*(n^(n-1)-a(n-1)))` with `a(0)=1`
-/

namespace A246610.P7065144067365369922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059995 (SequenceMachineLib.roundAway ((n : ℚ) * ((n : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ)))).toNat

end

end A246610.P7065144067365369922

/-!
# A246611: Number of endofunctions on [n] whose cycle lengths are multiples of 4.

The programs for A246611, there is no canonical definition to state claims against.
-/

/-! ## A246611.P11335157949499101484

`A246609(∑[A000007(a(n-3))+n]+2)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A246611.P11335157949499101484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A000007 (f1 (n - 3)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A246611.P11335157949499101484

/-! ## A246611.P11563320591570589101

`A246609(A145018(n+1)%A077834(n))`
-/

namespace A246611.P11563320591570589101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (Int.tmod (A145018 (n + 1)) (A077834 n)).toNat

end

end A246611.P11563320591570589101

/-! ## A246611.P7700350263602445238

`A246609(∑[A258649(n)+n])`
-/

namespace A246611.P7700350263602445238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258649 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246611.P7700350263602445238

/-!
# A246612: Number of endofunctions on [n] whose cycle lengths are multiples of 5.

The programs for A246612, there is no canonical definition to state claims against.
-/

/-! ## A246612.P4854662042974616900

`A339629(or(2^n, log2(gcd(2, n))))`
-/

namespace A246612.P4854662042974616900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (Int.lor (2 ^ n : ℤ) (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ)))).toNat

end

end A246612.P4854662042974616900

/-! ## A246612.P5893786538529200594

`A339628(∑[∑[2^floor(n/2)]])`
-/

namespace A246612.P5893786538529200594
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339628 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A246612.P5893786538529200594

/-! ## A246612.P16625080397254200189

`A339629(char[∑[n+1]]+2^n)`
-/

namespace A246612.P16625080397254200189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 ((if ∃ j, f1 j = n then 1 else 0) + 2 ^ n)

end

end A246612.P16625080397254200189

/-!
# A246613: Number of endofunctions on [n] whose cycle lengths are multiples of 6.

The programs for A246613, there is no canonical definition to state claims against.
-/

/-! ## A246613.P17959553329238053046

`A354615(C(n, round(sqrt(n+1))))`
-/

namespace A246613.P17959553329238053046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354615 (Nat.choose n (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat)

end

end A246613.P17959553329238053046

/-! ## A246613.P375960173077383402

`A339629(∑[∑{d}[(n+1)², #/gcd(#, n+1)]])`
-/

namespace A246613.P375960173077383402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℚ) / (Nat.gcd d (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A246613.P375960173077383402

/-! ## A246613.P8928015469423183929

`A339629(∑[comp[a(n-2)+7]+n])` with `a(0)=7, a(1)=0, a(2)=6, a(3)=8`
-/

namespace A246613.P8928015469423183929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 0, 6, 8] fun n f2 =>
  f2 (n - 2) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246613.P8928015469423183929

/-! ## A246613.P15126360344141145629

`A339629(A029714(n))`
-/

namespace A246613.P15126360344141145629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (A029714 n).toNat

end

end A246613.P15126360344141145629

/-!
# A246614: Number of endofunctions on [n] whose cycle lengths are multiples of 7.

The programs for A246614, there is no canonical definition to state claims against.
-/

/-! ## A246614.P1137603665580527965

`A131182(A373934(n+1))`
-/

namespace A246614.P1137603665580527965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131182 (A373934 (n + 1)).toNat

end

end A246614.P1137603665580527965

/-! ## A246614.P947383228111900457

`A327143(n+1)!*A185327(n)`
-/

namespace A246614.P947383228111900457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A327143 (n + 1)).toNat : ℤ) * A185327 n

end

end A246614.P947383228111900457

/-! ## A246614.P14935844933198354316

`A084938(∑[A185274(2*n)+n])`
-/

namespace A246614.P14935844933198354316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246614.P14935844933198354316

/-! ## A246614.P17379411966430687036

`and(A327143(n+1)!, A176270(n))`
-/

namespace A246614.P17379411966430687036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A327143 (n + 1)).toNat : ℤ) (A176270 n)

end

end A246614.P17379411966430687036

/-! ## A246614.P819517156501692048

`A084938(∑[lt[A089000(3*(n+1)), 7]])`
-/

namespace A246614.P819517156501692048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (3 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246614.P819517156501692048

/-!
# A246615: Number of endofunctions on [n] whose cycle lengths are multiples of 8.

The programs for A246615, there is no canonical definition to state claims against.
-/

/-! ## A246615.P10769869335814956081

`lcm(A122350(n)!, A144417(A132296(n+1)))`
-/

namespace A246615.P10769869335814956081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A122350 n).toNat : ℤ) (A144417 (A132296 (n + 1)).toNat)

end

end A246615.P10769869335814956081

/-! ## A246615.P17291621659004111421

`A261168(n+1)!*A017874(n)`
-/

namespace A246615.P17291621659004111421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A261168 (n + 1)).toNat : ℤ) * A017874 n

end

end A246615.P17291621659004111421

/-! ## A246615.P15568554532379004911

`lcm(A261168(n+1)!, dr(A008436(n)))`
-/

namespace A246615.P15568554532379004911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial (A261168 (n + 1)).toNat) (SequenceMachineLib.digitalRoot (A008436 n))

end

end A246615.P15568554532379004911

/-! ## A246615.P6624311995369837432

`C(A317573(n+2)!, A317578(2*n+3))`
-/

namespace A246615.P6624311995369837432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A317573 (n + 2)).toNat) (A317578 (2 * n + 3)).toNat

end

end A246615.P6624311995369837432

/-! ## A246615.P8120203635545802328

`A109488(A004091(n))`
-/

namespace A246615.P8120203635545802328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109488 (A004091 n).toNat

end

end A246615.P8120203635545802328

/-!
# A246616: Number of endofunctions on [n] whose cycle lengths are multiples of 9.

The programs for A246616, there is no canonical definition to state claims against.
-/

/-! ## A246616.P12265748805057416887

`A132393(∑[A185203(2*(n+2))+n])`
-/

namespace A246616.P12265748805057416887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 (2 * (n + 2)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246616.P12265748805057416887

/-! ## A246616.P14751631577984810045

`lcm(A097860(n)!, C(n, A004092(n²²)))`
-/

namespace A246616.P14751631577984810045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial (A097860 n).toNat) (Nat.choose n (A004092 ((n ^ 2) ^ 2)).toNat)

end

end A246616.P14751631577984810045

/-! ## A246616.P1126301335715328366

`and(A117378(A117400(n)), A279311(n))`
-/

namespace A246616.P1126301335715328366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117378 (A117400 n).toNat) (A279311 n)

end

end A246616.P1126301335715328366

/-! ## A246616.P11631901961219757451

`A193474(A143590(n+1)+A061885(n))`
-/

namespace A246616.P11631901961219757451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (A143590 (n + 1) + A061885 n).toNat

end

end A246616.P11631901961219757451

/-! ## A246616.P1027692717366308180

`A331918(A003973(n+1)*A331884(n))`
-/

namespace A246616.P1027692717366308180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 (A003973 (n + 1) * A331884 n).toNat

end

end A246616.P1027692717366308180

/-!
# A246617: Number of endofunctions on [n] whose cycle lengths are multiples of 10.

The programs for A246617, there is no canonical definition to state claims against.
-/

/-! ## A246617.P13249212559486760354

`A250266(n)!*A243745(n)`
-/

namespace A246617.P13249212559486760354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A250266 n).toNat : ℤ) * A243745 (n + 10)

end

end A246617.P13249212559486760354

/-! ## A246617.P12941925252157982709

`A276082(and(A000142(n), A002562(n+1)))`
-/

namespace A246617.P12941925252157982709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 (Int.land (A000142 n) (A002562 (n + 1))).toNat

end

end A246617.P12941925252157982709

/-! ## A246617.P8708095323832141067

`(∑{digits}[n, #]-∏{digits}[n, #])*or(a(n-1)+1, n-1)!` with `a(0)=1`
-/

namespace A246617.P8708095323832141067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)) * (Nat.factorial (Int.lor (a (n - 1) + 1) ((n : ℤ) - 1)).toNat : ℤ)

end

end A246617.P8708095323832141067

/-! ## A246617.P3329661935345525545

`A029577(a(n-1)+n)` with `a(0)=1`
-/

namespace A246617.P3329661935345525545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029577 (a (n - 1) + (n : ℤ)).toNat

end

end A246617.P3329661935345525545

/-! ## A246617.P533289818038331135

`A029577(or(n, a(n-1)))` with `a(0)=1`
-/

namespace A246617.P533289818038331135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029577 (Int.lor (n : ℤ) (a (n - 1))).toNat

end

end A246617.P533289818038331135

/-!
# A246618: Number of endofunctions on [2n] whose cycle lengths are multiples of n.

The programs for A246618, there is no canonical definition to state claims against.
-/

/-! ## A246618.P5247419051537258577

`A246609(∑[4*n])`
-/

namespace A246618.P5247419051537258577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246618.P5247419051537258577

/-! ## A246618.P7321921849137760203

`record[A246609(n*A008619(n))]`
-/

namespace A246618.P7321921849137760203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246609 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246618.P7321921849137760203

/-! ## A246618.P3657550505897082707

`record[gcd(A080232(n), A246609(n))]`
-/

namespace A246618.P3657550505897082707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A246609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246618.P3657550505897082707

/-! ## A246618.P7604291185746202554

`record[A077606(n+1)*A246609(n)]`
-/

namespace A246618.P7604291185746202554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A246609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246618.P7604291185746202554

/-! ## A246618.P9901415931090100176

`or(A000007(n), A246609(A046092(n)))`
-/

namespace A246618.P9901415931090100176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A246609 (A046092 n).toNat)

end

end A246618.P9901415931090100176

/-!
# A246619: Number of solid standard Young tableaux of shape [[4*n,n],[n]].

The programs for A246619, there is no canonical definition to state claims against.
-/

/-! ## A246619.P17608007332995986457

`record[A176129(A052905(n))]`
-/

namespace A246619.P17608007332995986457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246619.P17608007332995986457

/-! ## A246619.P8338654098442952469

`A176129(A052905(n+2))`
-/

namespace A246619.P8338654098442952469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (A052905 (n + 2)).toNat

end

end A246619.P8338654098442952469

/-! ## A246619.P8510420298210437651

`A176129(eq[3, A129713(n)])`
-/

namespace A246619.P8510420298210437651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246619.P8510420298210437651

/-! ## A246619.P11697648256285914250

`A176129(eq[4, A025581(n)])`
-/

namespace A246619.P11697648256285914250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246619.P11697648256285914250

/-! ## A246619.P8771849512165286657

`record[A176129(A055999(n)+1)]`
-/

namespace A246619.P8771849512165286657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246619.P8771849512165286657

/-!
# A246620: Number of solid standard Young tableaux of shape [[5*n,n],[n]].

The programs for A246620, there is no canonical definition to state claims against.
-/

/-! ## A246620.P14230562224262736135

`A176129(A055999(n+3))`
-/

namespace A246620.P14230562224262736135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (A055999 (n + 3)).toNat

end

end A246620.P14230562224262736135

/-! ## A246620.P196081438206418220

`A176129(eq[5, A025581(n)])`
-/

namespace A246620.P196081438206418220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246620.P196081438206418220

/-! ## A246620.P13168765105047949104

`A176129(Δ[A023551(n+1)])`
-/

namespace A246620.P13168765105047949104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (f1 (n + 1) - f1 n).toNat

end

end A246620.P13168765105047949104

/-! ## A246620.P10654063386889924367

`A176129(Δ[A026054(n+3)])`
-/

namespace A246620.P10654063386889924367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (f1 (n + 1) - f1 n).toNat

end

end A246620.P10654063386889924367

/-! ## A246620.P18187320951941749162

`A176129(eq[6, A004736(n+1)])`
-/

namespace A246620.P18187320951941749162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246620.P18187320951941749162

/-!
# A246621: Number of solid standard Young tableaux of shape [[6*n,n],[n]].

The programs for A246621, there is no canonical definition to state claims against.
-/

/-! ## A246621.P2450310699404602673

`A176129(eq[6, A025581(n)])`
-/

namespace A246621.P2450310699404602673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246621.P2450310699404602673

/-! ## A246621.P16320036287643145656

`A176129(eq[7, A193739(n)])`
-/

namespace A246621.P16320036287643145656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246621.P16320036287643145656

/-! ## A246621.P608847196400865206

`A176129(A155212(n+3)+1)`
-/

namespace A246621.P608847196400865206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (A155212 (n + 3) + 1).toNat

end

end A246621.P608847196400865206

/-! ## A246621.P17257495423323978019

`A176129(eq[7, A004736(n+1)])`
-/

namespace A246621.P17257495423323978019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246621.P17257495423323978019

/-! ## A246621.P13570947726837209449

`A176129(Δ[A023551(n+2)]-1)`
-/

namespace A246621.P13570947726837209449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (f1 (n + 1) - f1 n - 1).toNat

end

end A246621.P13570947726837209449

/-!
# A246622: Primes of the form n + product of nonzero digits of n, in order of their occurrence.

The programs for A246622, the canonical program `A246622.P10478257499552316779` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246622 has offset 1).

The definition of A246622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 784 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246622.P10478257499552316779

`p?[A063114(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246622

/-- `p?[A063114(n+1)]` -/
def P10478257499552316779.Spec : Prop :=
  ∀ n, P10478257499552316779.a n = A246622 (n + 1)

theorem P10478257499552316779.correct : P10478257499552316779.Spec := by
  intro n
  simp only [A246622, Nat.add_sub_cancel]

end A246622

/-! ## A246622.P12652473314951962935

`p?[A051801(n)+n]`
-/

namespace A246622.P12652473314951962935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246622.P12652473314951962935

namespace A246622

/-- `p?[A051801(n)+n]` -/
def P12652473314951962935.Spec : Prop :=
  ∀ n, P12652473314951962935.a n = A246622 (n + 1)

end A246622

/-! ## A246622.P10776633988104732296

`p?[2*(n+1)-A063543(n+1)]`
-/

namespace A246622.P10776633988104732296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A063543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246622.P10776633988104732296

namespace A246622

/-- `p?[2*(n+1)-A063543(n+1)]` -/
def P10776633988104732296.Spec : Prop :=
  ∀ n, P10776633988104732296.a n = A246622 (n + 1)

end A246622

/-! ## A246622.P8713745948326618785

`p?[A089898(A235049(n))+n]`
-/

namespace A246622.P8713745948326618785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A235049 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246622.P8713745948326618785

namespace A246622

/-- `p?[A089898(A235049(n))+n]` -/
def P8713745948326618785.Spec : Prop :=
  ∀ n, P8713745948326618785.a n = A246622 (n + 1)

end A246622

/-! ## A246622.P11731484852504670356

`p?[n-(A000007(n)-A051801(n))]`
-/

namespace A246622.P11731484852504670356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A000007 n - A051801 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246622.P11731484852504670356

namespace A246622

/-- `p?[n-(A000007(n)-A051801(n))]` -/
def P11731484852504670356.Spec : Prop :=
  ∀ n, P11731484852504670356.a n = A246622 (n + 1)

end A246622

/-! ## A246622.P1086510815455893617

`p?[A005843(n)-(n-A051801(n))]`
-/

namespace A246622.P1086510815455893617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A051801 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246622.P1086510815455893617

namespace A246622

/-- `p?[A005843(n)-(n-A051801(n))]` -/
def P1086510815455893617.Spec : Prop :=
  ∀ n, P1086510815455893617.a n = A246622 (n + 1)

end A246622

/-!
# A246623: Number of paths of a chess rook in an n-dimensional hypercube from (0...0) to (n...n) where the rook may move in steps that are multiples of (1,0..0), (0,1,0..0), ..., (0..0,1).

The programs for A246623, there is no canonical definition to state claims against.
-/

/-! ## A246623.P12486094339178461668

`n!*A308441(n)`
-/

namespace A246623.P12486094339178461668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A308441 n

end

end A246623.P12486094339178461668

/-! ## A246623.P1630302518938921451

`A181731(n*2*n+1)`
-/

namespace A246623.P1630302518938921451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181731 (n * (2 * n) + 1)

end

end A246623.P1630302518938921451

/-!
# A246624: a(1)=1 and a(n+1) is the smallest number m such that A244446(a(n)) < A244446(m).

The programs for A246624, there is no canonical definition to state claims against.
-/

/-! ## A246624.P7121509807215822515

`A007947(A151519(n+1)*A327426(n))`
-/

namespace A246624.P7121509807215822515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A151519 (n + 1) * A327426 n).toNat

end

end A246624.P7121509807215822515

/-! ## A246624.P7266108055934343963

`A011773(A016060(n+3)^A001156(n))`
-/

namespace A246624.P7266108055934343963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (SequenceMachineLib.roundAway ((A016060 (n + 3) : ℚ) ^ (A001156 n : ℤ))).toNat

end

end A246624.P7266108055934343963

/-!
# A246625: a(n) = A244446(A246624(n)).

The programs for A246625, there is no canonical definition to state claims against.
-/

/-! ## A246625.P7858741965068685763

`record[A244446(n+1)]`
-/

namespace A246625.P7858741965068685763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246625.P7858741965068685763

/-!
# A246626: a(1)=1, a(n+1) is the smallest number m such that A244447(a(n)) < A244447(m).

The programs for A246626, there is no canonical definition to state claims against.
-/

/-! ## A246626.P12002545121588725719

`∩[A274280(n+1), A364381(n+1)]`
-/

namespace A246626.P12002545121588725719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246626.P12002545121588725719

/-!
# A246629: a(n) = A244448(A246628(n)).

The programs for A246629, there is no canonical definition to state claims against.
-/

/-! ## A246629.P2425888878024857857

`A244448(A246628(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246629.P2425888878024857857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244448 (A246628 (n + 1)).toNat

end

end A246629.P2425888878024857857

/-!
# A246631: Number of integer solutions to x^2 + 2*y^2 + 2*z^2 = n.

The programs for A246631, there is no canonical definition to state claims against.
-/

/-! ## A246631.P17909525197417279007

`abs(A212885(n))`
-/

namespace A246631.P17909525197417279007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212885 n|

end

end A246631.P17909525197417279007

/-! ## A246631.P16116601170448821804

`A033717(2*n)`
-/

namespace A246631.P16116601170448821804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 (2 * n)

end

end A246631.P16116601170448821804

/-! ## A246631.P651997891840125993

`A087960(n)*A212885(n)`
-/

namespace A246631.P651997891840125993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A212885 n

end

end A246631.P651997891840125993

/-! ## A246631.P10881368622702312344

`A005875(n)/A084101(n)`
-/

namespace A246631.P10881368622702312344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 n : ℚ) / (A084101 n : ℚ)

end

end A246631.P10881368622702312344

/-! ## A246631.P9218635081011340641

`gcd(A005875(n), A169783(n))`
-/

namespace A246631.P9218635081011340641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005875 n) (A169783 n)

end

end A246631.P9218635081011340641

/-! ## A246631.P8638678126146739052

`gcd(A000038(n), A212885(n))`
-/

namespace A246631.P8638678126146739052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A212885 n)

end

end A246631.P8638678126146739052

/-! ## A246631.P8395463797748985475

`lcm(A000034(n), A212885(n))`
-/

namespace A246631.P8395463797748985475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A212885 n)

end

end A246631.P8395463797748985475

/-! ## A246631.P16329038635333143027

`2*A004013(n)-A212885(n)`
-/

namespace A246631.P16329038635333143027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004013 n - A212885 n

end

end A246631.P16329038635333143027

/-! ## A246631.P18249905019541449968

`A005875(n)/A236923(n)*A236924(n)`
-/

namespace A246631.P18249905019541449968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 n : ℚ) / (A236923 n : ℚ) * (A236924 n : ℚ)

end

end A246631.P18249905019541449968

/-! ## A246631.P1467543037862970788

`A057077(n+1)*A212885(n)`
-/

namespace A246631.P1467543037862970788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A212885 n

end

end A246631.P1467543037862970788

/-! ## A246631.P12205750406577264694

`abs(A080965(2*n))`
-/

namespace A246631.P12205750406577264694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080965 (2 * n)|

end

end A246631.P12205750406577264694

/-! ## A246631.P12949125521112743132

`abs(A083703(2*n))`
-/

namespace A246631.P12949125521112743132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083703 (2 * n)|

end

end A246631.P12949125521112743132

/-! ## A246631.P10303222097110013630

`abs(A319078(n))`
-/

namespace A246631.P10303222097110013630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319078 n|

end

end A246631.P10303222097110013630

/-! ## A246631.P10171517956224442890

`A057077(n)*A319078(n)`
-/

namespace A246631.P10171517956224442890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A319078 n

end

end A246631.P10171517956224442890

/-! ## A246631.P13659904637390143556

`gcd(A004013(n), A319078(n))`
-/

namespace A246631.P13659904637390143556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004013 n) (A319078 n)

end

end A246631.P13659904637390143556

/-! ## A246631.P16936441213241376020

`lcm(A001285(n), A319078(n))`
-/

namespace A246631.P16936441213241376020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A319078 n)

end

end A246631.P16936441213241376020

/-! ## A246631.P649167191491825847

`∑{d}[A319078(n), A000010(#)]`
-/

namespace A246631.P649167191491825847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A246631.P649167191491825847

/-! ## A246631.P10718503773678620166

`A329290(n)+A329290(n)-A319078(n)`
-/

namespace A246631.P10718503773678620166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329290 n + (A329290 n - A319078 n)

end

end A246631.P10718503773678620166

/-! ## A246631.P4813205363014281200

`A080917(4*n)`
-/

namespace A246631.P4813205363014281200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (4 * n)

end

end A246631.P4813205363014281200

/-! ## A246631.P7122926107551811194

`A028698(8*n)`
-/

namespace A246631.P7122926107551811194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028698 (8 * n)

end

end A246631.P7122926107551811194

/-!
# A246632: Number of solid standard Young tableaux of shape [[7*n,n],[n]].

The programs for A246632, there is no canonical definition to state claims against.
-/

/-! ## A246632.P5886406512143226857

`A176129(eq[7, A025581(n)])`
-/

namespace A246632.P5886406512143226857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246632.P5886406512143226857

/-! ## A246632.P5713167386190321553

`A176129(eq[8, A193739(n)])`
-/

namespace A246632.P5713167386190321553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246632.P5713167386190321553

/-! ## A246632.P14601484894011255179

`A176129(eq[13, A129713(n)])`
-/

namespace A246632.P14601484894011255179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246632.P14601484894011255179

/-! ## A246632.P9477478590431537537

`A176129(eq[15, A099375(n)])`
-/

namespace A246632.P9477478590431537537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246632.P9477478590431537537

/-! ## A246632.P7574740515273233237

`A176129(eq[5, A243070(n+1)])`
-/

namespace A246632.P7574740515273233237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246632.P7574740515273233237

/-!
# A246633: Number of solid standard Young tableaux of shape [[8*n,n],[n]].

The programs for A246633, there is no canonical definition to state claims against.
-/

/-! ## A246633.P2836595005076123094

`A176129(eq[8, A025581(n)])`
-/

namespace A246633.P2836595005076123094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246633.P2836595005076123094

/-! ## A246633.P7845024548780013514

`A176129(eq[9, A193739(n)])`
-/

namespace A246633.P7845024548780013514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246633.P7845024548780013514

/-! ## A246633.P17691042551036879290

`A176129(eq[17, A099375(n)])`
-/

namespace A246633.P17691042551036879290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246633.P17691042551036879290

/-! ## A246633.P4428430248248365419

`A176129(eq[8, A193592(n+1)])`
-/

namespace A246633.P4428430248248365419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246633.P4428430248248365419

/-! ## A246633.P11793110758523991839

`A176129(eq[9, A004736(n+1)])`
-/

namespace A246633.P11793110758523991839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246633.P11793110758523991839

/-!
# A246634: Number of solid standard Young tableaux of shape [[9*n,n],[n]].

The programs for A246634, there is no canonical definition to state claims against.
-/

/-! ## A246634.P8733316991329786786

`A176129(eq[8, A219347(n+1)])`
-/

namespace A246634.P8733316991329786786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246634.P8733316991329786786

/-! ## A246634.P480541257808154356

`A176129(eq[8, A219347(n)]-1)`
-/

namespace A246634.P480541257808154356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A246634.P480541257808154356

/-!
# A246636: Numbers k such that C(k+2,2) divides 2^(k+1) - 1.

The programs for A246636, there is no canonical definition to state claims against.
-/

/-! ## A246636.P14225320939676151674

`A272934(n+1)-1`
-/

namespace A246636.P14225320939676151674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272934 (n + 1) - 1

end

end A246636.P14225320939676151674

/-! ## A246636.P7556047956824260600

`A069051(n+1)-2`
-/

namespace A246636.P7556047956824260600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069051 (n + 1) - 2

end

end A246636.P7556047956824260600

/-! ## A246636.P13110542210697011518

`xor(2, A069051(1-(n-2*n)))`
-/

namespace A246636.P13110542210697011518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A069051 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A246636.P13110542210697011518

/-! ## A246636.P10561003315800923293

`xor(A122553(n), A272934(n+1))`
-/

namespace A246636.P10561003315800923293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122553 n) (A272934 (n + 1))

end

end A246636.P10561003315800923293

/-! ## A246636.P5919418603277871450

`A113679(n+2)+A069051(n+1)`
-/

namespace A246636.P5919418603277871450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (n + 2) + A069051 (n + 1)

end

end A246636.P5919418603277871450

/-! ## A246636.P10267600727590208714

`∩[A014741(n+1)+1, A350402(n+1)]-2`
-/

namespace A246636.P10267600727590208714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350402 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A246636.P10267600727590208714

/-! ## A246636.P5435601253036988876

`A299990(A082011(n+1))+A069051(n+1)`
-/

namespace A246636.P5435601253036988876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A082011 (n + 1)).toNat + A069051 (n + 1)

end

end A246636.P5435601253036988876

/-! ## A246636.P17178126713412605658

`xor(A069051(n+1), A073093(A000040(n+1)))`
-/

namespace A246636.P17178126713412605658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069051 (n + 1)) (A073093 (A000040 (n + 1)).toNat)

end

end A246636.P17178126713412605658

/-! ## A246636.P8566047064168129486

`xor(A069051(n+1), A112842(A006519(2*n+1)))`
-/

namespace A246636.P8566047064168129486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069051 (n + 1)) (A112842 (A006519 (2 * n + 1)).toNat)

end

end A246636.P8566047064168129486

/-! ## A246636.P16250300739630785169

`and(A069051(n+1), A141725(n))`
-/

namespace A246636.P16250300739630785169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069051 (n + 1)) (A141725 n)

end

end A246636.P16250300739630785169

/-! ## A246636.P8537257544288338696

`and(A069051(n+1), A267921(n))`
-/

namespace A246636.P8537257544288338696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069051 (n + 1)) (A267921 n)

end

end A246636.P8537257544288338696

/-! ## A246636.P6249354609635100899

`and(A069051(n+1), A269911(n))`
-/

namespace A246636.P6249354609635100899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069051 (n + 1)) (A269911 n)

end

end A246636.P6249354609635100899

/-!
# A246637: Integers of the form (2^(k+1) - 1)/C(k+2,2).

The programs for A246637, there is no canonical definition to state claims against.
-/

/-! ## A246637.P12825699924391747957

`A000225(A272934(n+1))/A000217(A272934(n+1))`
-/

namespace A246637.P12825699924391747957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A272934 (n + 1)).toNat : ℚ) / (A000217 (A272934 (n + 1)).toNat : ℚ)

end

end A246637.P12825699924391747957

/-!
# A246638: Sequence a(n) = 2 + 3*A001519(n+1) appearing in a certain four circle touching problem together with A246639.

The programs for A246638, the canonical program `A246638.P40128564451278295` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246638 has offset 0).

The definition of A246638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246638.P40128564451278295

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=5, a(1)=8, a(2)=17`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246638

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P40128564451278295.Spec : Prop :=
  ∀ n, P40128564451278295.a n = A246638 n

theorem P40128564451278295.correct : P40128564451278295.Spec := by
  intro n
  simp only [A246638]

end A246638

/-! ## A246638.P17890742009317710601

`2+3*A001519(n+1)`
-/

namespace A246638.P17890742009317710601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + 3 * A001519 (n + 1)

end

end A246638.P17890742009317710601

namespace A246638

/-- `2+3*A001519(n+1)` -/
def P17890742009317710601.Spec : Prop :=
  ∀ n, P17890742009317710601.a n = A246638 n

end A246638

/-! ## A246638.P1013659240615059995

`record[a(n-2)-a(n-1)]+2` with `a(0)=3, a(1)=0`
-/

namespace A246638.P1013659240615059995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A246638.P1013659240615059995

namespace A246638

/-- `record[a(n-2)-a(n-1)]+2` -/
def P1013659240615059995.Spec : Prop :=
  ∀ n, P1013659240615059995.a n = A246638 n

end A246638

/-! ## A246638.P9024135858848831964

`record[2-(a(n-1)-a(n-2))]` with `a(0)=5, a(1)=2`
-/

namespace A246638.P9024135858848831964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  2 - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246638.P9024135858848831964

namespace A246638

/-- `record[2-(a(n-1)-a(n-2))]` -/
def P9024135858848831964.Spec : Prop :=
  ∀ n, P9024135858848831964.a n = A246638 n

end A246638

/-! ## A246638.P3729703127832536952

`3*a(n-1)-(a(n-2)+2)` with `a(0)=5, a(1)=8`
-/

namespace A246638.P3729703127832536952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  3 * a (n - 1) - (a (n - 2) + 2)

end

end A246638.P3729703127832536952

namespace A246638

/-- `3*a(n-1)-(a(n-2)+2)` -/
def P3729703127832536952.Spec : Prop :=
  ∀ n, P3729703127832536952.a n = A246638 n

end A246638

/-! ## A246638.P14875029174746790021

`3*a(n-1)-2-a(n-2)` with `a(0)=5, a(1)=8`
-/

namespace A246638.P14875029174746790021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  3 * a (n - 1) - 2 - a (n - 2)

end

end A246638.P14875029174746790021

namespace A246638

/-- `3*a(n-1)-2-a(n-2)` -/
def P14875029174746790021.Spec : Prop :=
  ∀ n, P14875029174746790021.a n = A246638 n

end A246638

/-! ## A246638.P4330423476535905631

`∑[A097134(n)]+4`
-/

namespace A246638.P4330423476535905631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A246638.P4330423476535905631

namespace A246638

/-- `∑[A097134(n)]+4` -/
def P4330423476535905631.Spec : Prop :=
  ∀ n, P4330423476535905631.a n = A246638 n

end A246638

/-! ## A246638.P15575569789126344920

`3*A122367(n)+2`
-/

namespace A246638.P15575569789126344920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122367 n + 2

end

end A246638.P15575569789126344920

namespace A246638

/-- `3*A122367(n)+2` -/
def P15575569789126344920.Spec : Prop :=
  ∀ n, P15575569789126344920.a n = A246638 n

end A246638

/-! ## A246638.P2490858499223505816

`3*A246640(n)-1`
-/

namespace A246638.P2490858499223505816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A246640 n - 1

end

end A246638.P2490858499223505816

namespace A246638

/-- `3*A246640(n)-1` -/
def P2490858499223505816.Spec : Prop :=
  ∀ n, P2490858499223505816.a n = A246638 n

end A246638

/-! ## A246638.P7539017734156999376

`A292291(n+2)+5`
-/

namespace A246638.P7539017734156999376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292291 (n + 2) + 5

end

end A246638.P7539017734156999376

namespace A246638

/-- `A292291(n+2)+5` -/
def P7539017734156999376.Spec : Prop :=
  ∀ n, P7539017734156999376.a n = A246638 n

end A246638

/-! ## A246638.P13230603772206096857

`A377628(2*n)+3`
-/

namespace A246638.P13230603772206096857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 (2 * n) + 3

end

end A246638.P13230603772206096857

namespace A246638

/-- `A377628(2*n)+3` -/
def P13230603772206096857.Spec : Prop :=
  ∀ n, P13230603772206096857.a n = A246638 n

end A246638

/-! ## A246638.P3872280879178509943

`A111314(2*n)+4`
-/

namespace A246638.P3872280879178509943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 (2 * n) + 4

end

end A246638.P3872280879178509943

namespace A246638

/-- `A111314(2*n)+4` -/
def P3872280879178509943.Spec : Prop :=
  ∀ n, P3872280879178509943.a n = A246638 n

end A246638

/-! ## A246638.P2595434532054123080

`A131326(2*n)+4`
-/

namespace A246638.P2595434532054123080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131326 (2 * n) + 4

end

end A246638.P2595434532054123080

namespace A246638

/-- `A131326(2*n)+4` -/
def P2595434532054123080.Spec : Prop :=
  ∀ n, P2595434532054123080.a n = A246638 n

end A246638

/-! ## A246638.P11056971078487606681

`3*A027941(n)+5`
-/

namespace A246638.P11056971078487606681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027941 n + 5

end

end A246638.P11056971078487606681

namespace A246638

/-- `3*A027941(n)+5` -/
def P11056971078487606681.Spec : Prop :=
  ∀ n, P11056971078487606681.a n = A246638 n

end A246638

/-! ## A246638.P9251436106747668795

`A187893(Δ[n²])+1`
-/

namespace A246638.P9251436106747668795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A246638.P9251436106747668795

namespace A246638

/-- `A187893(Δ[n²])+1` -/
def P9251436106747668795.Spec : Prop :=
  ∀ n, P9251436106747668795.a n = A246638 n

end A246638

/-! ## A246638.P12513369005118534022

`A022086(Δ[n²])+2`
-/

namespace A246638.P12513369005118534022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A246638.P12513369005118534022

namespace A246638

/-- `A022086(Δ[n²])+2` -/
def P12513369005118534022.Spec : Prop :=
  ∀ n, P12513369005118534022.a n = A246638 n

end A246638

/-! ## A246638.P11194207622284025427

`A097135(Δ[n²])+2`
-/

namespace A246638.P11194207622284025427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A246638.P11194207622284025427

namespace A246638

/-- `A097135(Δ[n²])+2` -/
def P11194207622284025427.Spec : Prop :=
  ∀ n, P11194207622284025427.a n = A246638 n

end A246638

/-! ## A246638.P16303125922311797168

`A292616(Δ[n²])+2`
-/

namespace A246638.P16303125922311797168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292616 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A246638.P16303125922311797168

namespace A246638

/-- `A292616(Δ[n²])+2` -/
def P16303125922311797168.Spec : Prop :=
  ∀ n, P16303125922311797168.a n = A246638 n

end A246638

/-! ## A246638.P5362661863741344163

`A097133(Δ[n²])+3`
-/

namespace A246638.P5362661863741344163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097133 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A246638.P5362661863741344163

namespace A246638

/-- `A097133(Δ[n²])+3` -/
def P5362661863741344163.Spec : Prop :=
  ∀ n, P5362661863741344163.a n = A246638 n

end A246638

/-!
# A246639: Sequence a(n) = 3 + 5*A001519(n+1) appearing in a certain three circle touching problem, together with A246638.

The programs for A246639, the canonical program `A246639.P14654479637476100524` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246639 has offset 0).

The definition of A246639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246639.P14654479637476100524

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=8, a(1)=13, a(2)=28`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246639

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P14654479637476100524.Spec : Prop :=
  ∀ n, P14654479637476100524.a n = A246639 n

theorem P14654479637476100524.correct : P14654479637476100524.Spec := by
  intro n
  simp only [A246639]

end A246639

/-! ## A246639.P2751978682720614275

`3+5*A001519(n+1)`
-/

namespace A246639.P2751978682720614275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + 5 * A001519 (n + 1)

end

end A246639.P2751978682720614275

namespace A246639

/-- `3+5*A001519(n+1)` -/
def P2751978682720614275.Spec : Prop :=
  ∀ n, P2751978682720614275.a n = A246639 n

end A246639

/-! ## A246639.P517474899080173527

`record[a(n-2)-a(n-1)]+3` with `a(0)=5, a(1)=0`
-/

namespace A246639.P517474899080173527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3

end

end A246639.P517474899080173527

namespace A246639

/-- `record[a(n-2)-a(n-1)]+3` -/
def P517474899080173527.Spec : Prop :=
  ∀ n, P517474899080173527.a n = A246639 n

end A246639

/-! ## A246639.P8174305537042691194

`A106729(n)+3`
-/

namespace A246639.P8174305537042691194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106729 n + 3

end

end A246639.P8174305537042691194

namespace A246639

/-- `A106729(n)+3` -/
def P8174305537042691194.Spec : Prop :=
  ∀ n, P8174305537042691194.a n = A246639 n

end A246639

/-! ## A246639.P298165846845680105

`A350919(n+1)-1`
-/

namespace A246639.P298165846845680105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350919 (n + 1) - 1

end

end A246639.P298165846845680105

namespace A246639

/-- `A350919(n+1)-1` -/
def P298165846845680105.Spec : Prop :=
  ∀ n, P298165846845680105.a n = A246639 n

end A246639

/-! ## A246639.P285094757009782804

`A122678(n+1)+7`
-/

namespace A246639.P285094757009782804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122678 (n + 1) + 7

end

end A246639.P285094757009782804

namespace A246639

/-- `A122678(n+1)+7` -/
def P285094757009782804.Spec : Prop :=
  ∀ n, P285094757009782804.a n = A246639 n

end A246639

/-! ## A246639.P3853890047143994815

`A153388(n)/2+4`
-/

namespace A246639.P3853890047143994815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153388 n : ℚ) / 2 + 4

end

end A246639.P3853890047143994815

namespace A246639

/-- `A153388(n)/2+4` -/
def P3853890047143994815.Spec : Prop :=
  ∀ n, P3853890047143994815.a n = (A246639 n : ℚ)

end A246639

/-! ## A246639.P1465297353715238127

`5*A122367(n)+3`
-/

namespace A246639.P1465297353715238127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A122367 n + 3

end

end A246639.P1465297353715238127

namespace A246639

/-- `5*A122367(n)+3` -/
def P1465297353715238127.Spec : Prop :=
  ∀ n, P1465297353715238127.a n = A246639 n

end A246639

/-! ## A246639.P16030168074041969509

`5*A246640(n)-2`
-/

namespace A246639.P16030168074041969509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A246640 n - 2

end

end A246639.P16030168074041969509

namespace A246639

/-- `5*A246640(n)-2` -/
def P16030168074041969509.Spec : Prop :=
  ∀ n, P16030168074041969509.a n = A246639 n

end A246639

/-! ## A246639.P9290337551074221612

`A289107(2*n)+6`
-/

namespace A246639.P9290337551074221612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289107 (2 * n) + 6

end

end A246639.P9290337551074221612

namespace A246639

/-- `A289107(2*n)+6` -/
def P9290337551074221612.Spec : Prop :=
  ∀ n, P9290337551074221612.a n = A246639 n

end A246639

/-! ## A246639.P8232351077767436751

`A022088(Δ[n²])+3`
-/

namespace A246639.P8232351077767436751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A246639.P8232351077767436751

namespace A246639

/-- `A022088(Δ[n²])+3` -/
def P8232351077767436751.Spec : Prop :=
  ∀ n, P8232351077767436751.a n = A246639 n

end A246639

/-! ## A246639.P7960443426186638918

`Δ[A201157(n+1)]+3`
-/

namespace A246639.P7960443426186638918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A246639.P7960443426186638918

namespace A246639

/-- `Δ[A201157(n+1)]+3` -/
def P7960443426186638918.Spec : Prop :=
  ∀ n, P7960443426186638918.a n = A246639 n

end A246639

/-! ## A246639.P3462357743033495824

`∑[A022088(2*n)]+8`
-/

namespace A246639.P3462357743033495824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A246639.P3462357743033495824

namespace A246639

/-- `∑[A022088(2*n)]+8` -/
def P3462357743033495824.Spec : Prop :=
  ∀ n, P3462357743033495824.a n = A246639 n

end A246639

/-! ## A246639.P9698732653646121830

`A371843(2*n+1)+4`
-/

namespace A246639.P9698732653646121830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371843 (2 * n + 1) + 4

end

end A246639.P9698732653646121830

namespace A246639

/-- `A371843(2*n+1)+4` -/
def P9698732653646121830.Spec : Prop :=
  ∀ n, P9698732653646121830.a n = A246639 n

end A246639

/-! ## A246639.P4468523460305030184

`5*A000045(Δ[n²])+3`
-/

namespace A246639.P4468523460305030184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A246639.P4468523460305030184

namespace A246639

/-- `5*A000045(Δ[n²])+3` -/
def P4468523460305030184.Spec : Prop :=
  ∀ n, P4468523460305030184.a n = A246639 n

end A246639

/-! ## A246639.P17551496070083218554

`Δ[5*A000045(2*n)]+3`
-/

namespace A246639.P17551496070083218554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A246639.P17551496070083218554

namespace A246639

/-- `Δ[5*A000045(2*n)]+3` -/
def P17551496070083218554.Spec : Prop :=
  ∀ n, P17551496070083218554.a n = A246639 n

end A246639

/-! ## A246639.P8362748380270859669

`5*A167816(2*n+1)+3`
-/

namespace A246639.P8362748380270859669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A167816 (2 * n + 1) + 3

end

end A246639.P8362748380270859669

namespace A246639

/-- `5*A167816(2*n+1)+3` -/
def P8362748380270859669.Spec : Prop :=
  ∀ n, P8362748380270859669.a n = A246639 n

end A246639

/-! ## A246639.P13404669900472660850

`5*(A000045(2*n+1)+1)-2`
-/

namespace A246639.P13404669900472660850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000045 (2 * n + 1) + 1) - 2

end

end A246639.P13404669900472660850

namespace A246639

/-- `5*(A000045(2*n+1)+1)-2` -/
def P13404669900472660850.Spec : Prop :=
  ∀ n, P13404669900472660850.a n = A246639 n

end A246639

/-! ## A246639.P13678477217115492618

`A092387(n+1)+A065034(n)`
-/

namespace A246639.P13678477217115492618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092387 (n + 1) + A065034 n

end

end A246639.P13678477217115492618

namespace A246639

/-- `A092387(n+1)+A065034(n)` -/
def P13678477217115492618.Spec : Prop :=
  ∀ n, P13678477217115492618.a n = A246639 n

end A246639

/-!
# A246640: Sequence a(n) = 1 + A001519(n+1) appearing in a certain touching problem for three circles and a chord, together with A246638.

The programs for A246640, the canonical program `A246640.P3752984100516187169` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246640 has offset 0).

The definition of A246640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246640.P3752984100516187169

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=2, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246640

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P3752984100516187169.Spec : Prop :=
  ∀ n, P3752984100516187169.a n = A246640 n

theorem P3752984100516187169.correct : P3752984100516187169.Spec := by
  intro n
  simp only [A246640]

end A246640

/-! ## A246640.P8933516868185810930

`1+A001519(n+1)`
-/

namespace A246640.P8933516868185810930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001519 (n + 1)

end

end A246640.P8933516868185810930

namespace A246640

/-- `1+A001519(n+1)` -/
def P8933516868185810930.Spec : Prop :=
  ∀ n, P8933516868185810930.a n = A246640 n

end A246640

/-! ## A246640.P5691902019539535416

`round(ϕ²*a(n-1))-2` with `a(0)=2`
-/

namespace A246640.P5691902019539535416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)) - 2

end

end A246640.P5691902019539535416

namespace A246640

/-- `round(ϕ²*a(n-1))-2` -/
def P5691902019539535416.Spec : Prop :=
  ∀ n, P5691902019539535416.a n = A246640 n

end A246640

/-! ## A246640.P10868789128987011788

`∑[ceil(ϕ²*a(n-1))]` with `a(0)=2, a(1)=1`
-/

namespace A246640.P10868789128987011788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246640.P10868789128987011788

namespace A246640

/-- `∑[ceil(ϕ²*a(n-1))]` -/
def P10868789128987011788.Spec : Prop :=
  ∀ n, P10868789128987011788.a n = A246640 n

end A246640

/-! ## A246640.P8550717221724279520

`∑[ceil(a(n-1)/(2-ϕ))]` with `a(0)=2, a(1)=1`
-/

namespace A246640.P8550717221724279520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  ⌈(f1 (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246640.P8550717221724279520

namespace A246640

/-- `∑[ceil(a(n-1)/(2-ϕ))]` -/
def P8550717221724279520.Spec : Prop :=
  ∀ n, P8550717221724279520.a n = A246640 n

end A246640

/-! ## A246640.P13987612397733680380

`record[a(n-2)-a(n-1)]+1` with `a(0)=1, a(1)=0`
-/

namespace A246640.P13987612397733680380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A246640.P13987612397733680380

namespace A246640

/-- `record[a(n-2)-a(n-1)]+1` -/
def P13987612397733680380.Spec : Prop :=
  ∀ n, P13987612397733680380.a n = A246640 n

end A246640

/-! ## A246640.P8112075410667978125

`record[1-(a(n-1)-a(n-2))]` with `a(0)=2, a(1)=0`
-/

namespace A246640.P8112075410667978125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  1 - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246640.P8112075410667978125

namespace A246640

/-- `record[1-(a(n-1)-a(n-2))]` -/
def P8112075410667978125.Spec : Prop :=
  ∀ n, P8112075410667978125.a n = A246640 n

end A246640

/-! ## A246640.P9050943899829058903

`3*a(n-1)-(a(n-2)+1)` with `a(0)=2, a(1)=3`
-/

namespace A246640.P9050943899829058903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * a (n - 1) - (a (n - 2) + 1)

end

end A246640.P9050943899829058903

namespace A246640

/-- `3*a(n-1)-(a(n-2)+1)` -/
def P9050943899829058903.Spec : Prop :=
  ∀ n, P9050943899829058903.a n = A246640 n

end A246640

/-! ## A246640.P2788557737732234657

`3*a(n-1)-1-a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A246640.P2788557737732234657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * a (n - 1) - 1 - a (n - 2)

end

end A246640.P2788557737732234657

namespace A246640

/-- `3*a(n-1)-1-a(n-2)` -/
def P2788557737732234657.Spec : Prop :=
  ∀ n, P2788557737732234657.a n = A246640 n

end A246640

/-! ## A246640.P11607786994809233459

`a(n-1)+a(n-1)+a(n-1)-(a(n-2)+1)` with `a(0)=2, a(1)=3`
-/

namespace A246640.P11607786994809233459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (a (n - 2) + 1)))

end

end A246640.P11607786994809233459

namespace A246640

/-- `a(n-1)+a(n-1)+a(n-1)-(a(n-2)+1)` -/
def P11607786994809233459.Spec : Prop :=
  ∀ n, P11607786994809233459.a n = A246640 n

end A246640

/-! ## A246640.P8648184842111310919

`a(n-1)-(1-(a(n-1)-(a(n-2)-a(n-1))))` with `a(0)=2, a(1)=3`
-/

namespace A246640.P8648184842111310919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (1 - (a (n - 1) - (a (n - 2) - a (n - 1))))

end

end A246640.P8648184842111310919

namespace A246640

/-- `a(n-1)-(1-(a(n-1)-(a(n-2)-a(n-1))))` -/
def P8648184842111310919.Spec : Prop :=
  ∀ n, P8648184842111310919.a n = A246640 n

end A246640

/-! ## A246640.P1659527167233898174

`A032908(n+1)`
-/

namespace A246640.P1659527167233898174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (n + 1)

end

end A246640.P1659527167233898174

namespace A246640

/-- `A032908(n+1)` -/
def P1659527167233898174.Spec : Prop :=
  ∀ n, P1659527167233898174.a n = A246640 n

end A246640

/-! ## A246640.P13308582905282347729

`A122367(n)+1`
-/

namespace A246640.P13308582905282347729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + 1

end

end A246640.P13308582905282347729

namespace A246640

/-- `A122367(n)+1` -/
def P13308582905282347729.Spec : Prop :=
  ∀ n, P13308582905282347729.a n = A246640 n

end A246640

/-! ## A246640.P1765475205268938748

`A027941(n)+2`
-/

namespace A246640.P1765475205268938748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + 2

end

end A246640.P1765475205268938748

namespace A246640

/-- `A027941(n)+2` -/
def P1765475205268938748.Spec : Prop :=
  ∀ n, P1765475205268938748.a n = A246640 n

end A246640

/-! ## A246640.P5144169932274809778

`A093467(n+2)`
-/

namespace A246640.P5144169932274809778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093467 (n + 2)

end

end A246640.P5144169932274809778

namespace A246640

/-- `A093467(n+2)` -/
def P5144169932274809778.Spec : Prop :=
  ∀ n, P5144169932274809778.a n = A246640 n

end A246640

/-! ## A246640.P9588041430062860672

`A052959(2*n)`
-/

namespace A246640.P9588041430062860672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 (2 * n)

end

end A246640.P9588041430062860672

namespace A246640

/-- `A052959(2*n)` -/
def P9588041430062860672.Spec : Prop :=
  ∀ n, P9588041430062860672.a n = A246640 n

end A246640

/-! ## A246640.P11246548442690432034

`or(2, A081714(n))`
-/

namespace A246640.P11246548442690432034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A081714 n)

end

end A246640.P11246548442690432034

namespace A246640

/-- `or(2, A081714(n))` -/
def P11246548442690432034.Spec : Prop :=
  ∀ n, P11246548442690432034.a n = A246640 n

end A246640

/-! ## A246640.P1862687655197058496

`A001611(Δ[n²])`
-/

namespace A246640.P1862687655197058496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246640.P1862687655197058496

namespace A246640

/-- `A001611(Δ[n²])` -/
def P1862687655197058496.Spec : Prop :=
  ∀ n, P1862687655197058496.a n = A246640 n

end A246640

/-!
# A246641: Sequence a(n) = (1 + A007805(n))/2, appearing in a certain touching problem for three circles and a chord, together with A007805.

The programs for A246641, the canonical program `A246641.P3335875455613299149` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246641 has offset 0).

The definition of A246641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246641.P3335875455613299149

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=153`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246641

/-- `19*a(n-1)-19*a(n-2)+a(n-3)` -/
def P3335875455613299149.Spec : Prop :=
  ∀ n, P3335875455613299149.a n = A246641 n

theorem P3335875455613299149.correct : P3335875455613299149.Spec := by
  intro n
  simp only [A246641]

end A246641

/-! ## A246641.P14362416705543653292

`(1+A007805(n))/2`
-/

namespace A246641.P14362416705543653292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A007805 n : ℚ) / 2

end

end A246641.P14362416705543653292

namespace A246641

/-- `(1+A007805(n))/2` -/
def P14362416705543653292.Spec : Prop :=
  ∀ n, P14362416705543653292.a n = (A246641 n : ℚ)

end A246641

/-! ## A246641.P11959428841818833494

`∑[record[floor(-ϕ^3*a(n-1))]]` with `a(0)=1, a(1)=8`
-/

namespace A246641.P11959428841818833494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  ⌊-(Real.goldenRatio ^ 3 * (f2 (n - 1) : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246641.P11959428841818833494

namespace A246641

/-- `∑[record[floor(-ϕ^3*a(n-1))]]` -/
def P11959428841818833494.Spec : Prop :=
  ∀ n, P11959428841818833494.a n = A246641 n

end A246641

/-! ## A246641.P16461139839500727994

`A053606(n)+1`
-/

namespace A246641.P16461139839500727994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053606 n + 1

end

end A246641.P16461139839500727994

namespace A246641

/-- `A053606(n)+1` -/
def P16461139839500727994.Spec : Prop :=
  ∀ n, P16461139839500727994.a n = A246641 n

end A246641

/-! ## A246641.P5661719919211035968

`A079962(6*n)`
-/

namespace A246641.P5661719919211035968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 (6 * n)

end

end A246641.P5661719919211035968

namespace A246641

/-- `A079962(6*n)` -/
def P5661719919211035968.Spec : Prop :=
  ∀ n, P5661719919211035968.a n = A246641 n

end A246641

/-! ## A246641.P14160180240040811616

`∑[A134492(n)]+1`
-/

namespace A246641.P14160180240040811616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A246641.P14160180240040811616

namespace A246641

/-- `∑[A134492(n)]+1` -/
def P14160180240040811616.Spec : Prop :=
  ∀ n, P14160180240040811616.a n = A246641 n

end A246641

/-! ## A246641.P1532475068582986950

`∑[A088305(3*n)]`
-/

namespace A246641.P1532475068582986950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246641.P1532475068582986950

namespace A246641

/-- `∑[A088305(3*n)]` -/
def P1532475068582986950.Spec : Prop :=
  ∀ n, P1532475068582986950.a n = A246641 n

end A246641

/-! ## A246641.P13927998072570824798

`A293552(6*n+3)`
-/

namespace A246641.P13927998072570824798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (6 * n + 3)

end

end A246641.P13927998072570824798

namespace A246641

/-- `A293552(6*n+3)` -/
def P13927998072570824798.Spec : Prop :=
  ∀ n, P13927998072570824798.a n = A246641 n

end A246641

/-! ## A246641.P12637620422836300939

`∑[A014445(2*n)]+1`
-/

namespace A246641.P12637620422836300939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A246641.P12637620422836300939

namespace A246641

/-- `∑[A014445(2*n)]+1` -/
def P12637620422836300939.Spec : Prop :=
  ∀ n, P12637620422836300939.a n = A246641 n

end A246641

/-! ## A246641.P16673814008765989941

`∑[A000045(6*n)]+1`
-/

namespace A246641.P16673814008765989941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A246641.P16673814008765989941

namespace A246641

/-- `∑[A000045(6*n)]+1` -/
def P16673814008765989941.Spec : Prop :=
  ∀ n, P16673814008765989941.a n = A246641 n

end A246641

/-!
# A246642: Sequence appearing in the curvature of a certain four-circle touching problem: (-3 + 5*A007805(n))/2.

The programs for A246642, the canonical program `A246642.P16651578366724394100` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246642 has offset 0).

The definition of A246642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246642.P16651578366724394100

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=1, a(1)=41, a(2)=761`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246642

/-- `19*a(n-1)-19*a(n-2)+a(n-3)` -/
def P16651578366724394100.Spec : Prop :=
  ∀ n, P16651578366724394100.a n = A246642 n

theorem P16651578366724394100.correct : P16651578366724394100.Spec := by
  intro n
  simp only [A246642]

end A246642

/-! ## A246642.P5738513002932045766

`A157093(n)-3`
-/

namespace A246642.P5738513002932045766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157093 n - 3

end

end A246642.P5738513002932045766

namespace A246642

/-- `A157093(n)-3` -/
def P5738513002932045766.Spec : Prop :=
  ∀ n, P5738513002932045766.a n = A246642 n

end A246642

/-! ## A246642.P12497575767219973577

`∑[A054888(3*n)]`
-/

namespace A246642.P12497575767219973577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246642.P12497575767219973577

namespace A246642

/-- `∑[A054888(3*n)]` -/
def P12497575767219973577.Spec : Prop :=
  ∀ n, P12497575767219973577.a n = A246642 n

end A246642

/-! ## A246642.P14276625675966928387

`5*A053606(n)+1`
-/

namespace A246642.P14276625675966928387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A053606 n + 1

end

end A246642.P14276625675966928387

namespace A246642

/-- `5*A053606(n)+1` -/
def P14276625675966928387.Spec : Prop :=
  ∀ n, P14276625675966928387.a n = A246642 n

end A246642

/-! ## A246642.P5526330651427995659

`5*A246641(n)-4`
-/

namespace A246642.P5526330651427995659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A246641 n - 4

end

end A246642.P5526330651427995659

namespace A246642

/-- `5*A246641(n)-4` -/
def P5526330651427995659.Spec : Prop :=
  ∀ n, P5526330651427995659.a n = A246642 n

end A246642

/-! ## A246642.P10438431495683119447

`∑[2*A004292(n)]-1`
-/

namespace A246642.P10438431495683119447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A246642.P10438431495683119447

namespace A246642

/-- `∑[2*A004292(n)]-1` -/
def P10438431495683119447.Spec : Prop :=
  ∀ n, P10438431495683119447.a n = A246642 n

end A246642

/-! ## A246642.P771814916882553225

`4*A280070(n+1)-3`
-/

namespace A246642.P771814916882553225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A280070 (n + 1) - 3

end

end A246642.P771814916882553225

namespace A246642

/-- `4*A280070(n+1)-3` -/
def P771814916882553225.Spec : Prop :=
  ∀ n, P771814916882553225.a n = A246642 n

end A246642

/-! ## A246642.P18203885474355625914

`∑[5*A000045(6*n)]+1`
-/

namespace A246642.P18203885474355625914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A246642.P18203885474355625914

namespace A246642

/-- `∑[5*A000045(6*n)]+1` -/
def P18203885474355625914.Spec : Prop :=
  ∀ n, P18203885474355625914.a n = A246642 n

end A246642

/-! ## A246642.P4099031217857153346

`∑[10*floor(A001611(6*n)/2)]+1`
-/

namespace A246642.P4099031217857153346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(A001611 (6 * n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A246642.P4099031217857153346

namespace A246642

/-- `∑[10*floor(A001611(6*n)/2)]+1` -/
def P4099031217857153346.Spec : Prop :=
  ∀ n, P4099031217857153346.a n = A246642 n

end A246642

/-! ## A246642.P8889284955564237892

`∑[A203976(A008458(n))]`
-/

namespace A246642.P8889284955564237892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246642.P8889284955564237892

namespace A246642

/-- `∑[A203976(A008458(n))]` -/
def P8889284955564237892.Spec : Prop :=
  ∀ n, P8889284955564237892.a n = A246642 n

end A246642

/-!
# A246643: A sequence used in the touching circle problem described in A247512.

The programs for A246643, the canonical program `A246643.P13594091445890163297` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246643 has offset 0).

The definition of A246643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246643.P13594091445890163297

`31*a(n-1)-279*a(n-2)+729*a(n-3)` with `a(0)=1, a(1)=10, a(2)=121`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246643

/-- `31*a(n-1)-279*a(n-2)+729*a(n-3)` -/
def P13594091445890163297.Spec : Prop :=
  ∀ n, P13594091445890163297.a n = A246643 n

theorem P13594091445890163297.correct : P13594091445890163297.Spec := by
  intro n
  simp only [A246643]

end A246643

/-! ## A246643.P16329350242091827851

`A289414(n)²/A011557(n)`
-/

namespace A246643.P16329350242091827851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289414 n ^ 2 : ℚ) / (A011557 n : ℚ)

end

end A246643.P16329350242091827851

namespace A246643

/-- `A289414(n)²/A011557(n)` -/
def P16329350242091827851.Spec : Prop :=
  ∀ n, P16329350242091827851.a n = (A246643 n : ℚ)

end A246643

/-!
# A246645: Expansion of 1/(1 - 22*x + 81*x^2), used in A246643.

The programs for A246645, the canonical program `A246645.P1565540707533707876` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246645 has offset 0).

The definition of A246645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246645.P1565540707533707876

`22*a(n-1)-81*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246645

/-- `22*a(n-1)-81*a(n-2)` -/
def P1565540707533707876.Spec : Prop :=
  ∀ n, P1565540707533707876.a n = A246645 n

theorem P1565540707533707876.correct : P1565540707533707876.Spec := by
  intro n
  simp only [A246645]

end A246645

/-! ## A246645.P10695655786632784568

`A002534(2*(n+1))/2`
-/

namespace A246645.P10695655786632784568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002534 (2 * (n + 1)) : ℚ) / 2

end

end A246645.P10695655786632784568

namespace A246645

/-- `A002534(2*(n+1))/2` -/
def P10695655786632784568.Spec : Prop :=
  ∀ n, P10695655786632784568.a n = (A246645 n : ℚ)

end A246645

/-! ## A246645.P18097672519006520235

`∑[A002535(n)]*A002535(n+1)`
-/

namespace A246645.P18097672519006520235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002535 (n + 1)

end

end A246645.P18097672519006520235

namespace A246645

/-- `∑[A002535(n)]*A002535(n+1)` -/
def P18097672519006520235.Spec : Prop :=
  ∀ n, P18097672519006520235.a n = A246645 n

end A246645

/-! ## A246645.P9484914732151825375

`A002534(n+1)*A002535(n+1)`
-/

namespace A246645.P9484914732151825375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002534 (n + 1) * A002535 (n + 1)

end

end A246645.P9484914732151825375

namespace A246645

/-- `A002534(n+1)*A002535(n+1)` -/
def P9484914732151825375.Spec : Prop :=
  ∀ n, P9484914732151825375.a n = A246645 n

end A246645

/-! ## A246645.P17483396526942853026

`round(cosh(log(A002534(2*n+2))))`
-/

namespace A246645.P17483396526942853026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (A002534 (2 * n + 2) : ℝ)))

end

end A246645.P17483396526942853026

namespace A246645

/-- `round(cosh(log(A002534(2*n+2))))` -/
def P17483396526942853026.Spec : Prop :=
  ∀ n, P17483396526942853026.a n = A246645 n

end A246645

/-!
# A246647: Starting numbers k = a(n) for the (modified) Collatz map iteration which survive in the sieved Collatz table of A246646.

The programs for A246647, there is no canonical definition to state claims against.
-/

/-! ## A246647.P13537811212508677338

`record[(n+2)%A070167(2*(n+2))]`
-/

namespace A246647.P13537811212508677338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A070167 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246647.P13537811212508677338

/-! ## A246647.P8110234300592728851

`lt[A001281(A113019(3*(n+1))), A118881(n)]`
-/

namespace A246647.P8110234300592728851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A113019 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246647.P8110234300592728851

/-! ## A246647.P9286130741087028526

`lt[A087774(n), A010882(A078861(n+1))]`
-/

namespace A246647.P9286130741087028526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087774 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A078861 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246647.P9286130741087028526

/-! ## A246647.P14600443943210518436

`A026179(A077168(n))+1`
-/

namespace A246647.P14600443943210518436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (A077168 n).toNat + 1

end

end A246647.P14600443943210518436

/-! ## A246647.P5845780998495277654

`(A026179(n+1)+1)%A002918(n)`
-/

namespace A246647.P5845780998495277654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026179 (n + 1) + 1) (A002918 n)

end

end A246647.P5845780998495277654

/-!
# A246648: Numbers k such that 2*k + 1 divides 2^(k+1) - 1.

The programs for A246648, there is no canonical definition to state claims against.
-/

/-! ## A246648.P6455069495509601357

`A081856(n+1)-1`
-/

namespace A246648.P6455069495509601357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081856 (n + 1) - 1

end

end A246648.P6455069495509601357

/-! ## A246648.P6121922238215609934

`A094267(3*n+n+1)+A081856(n+1)`
-/

namespace A246648.P6121922238215609934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (3 * n + (n + 1)) + A081856 (n + 1)

end

end A246648.P6121922238215609934

/-! ## A246648.P11007322210384651593

`A118830(A005408(n))+A081856(n+1)`
-/

namespace A246648.P11007322210384651593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A005408 n).toNat + A081856 (n + 1)

end

end A246648.P11007322210384651593

/-! ## A246648.P10048697510839868274

`A118830(A091209(n+1))+A081856(n+1)`
-/

namespace A246648.P10048697510839868274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A091209 (n + 1)).toNat + A081856 (n + 1)

end

end A246648.P10048697510839868274

/-! ## A246648.P6657537062244244734

`A118830(A091214(n+1))+A081856(n+1)`
-/

namespace A246648.P6657537062244244734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A091214 (n + 1)).toNat + A081856 (n + 1)

end

end A246648.P6657537062244244734

/-! ## A246648.P3288613684087747999

`A305974(A000040(n+1))+A081856(n+1)`
-/

namespace A246648.P3288613684087747999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A000040 (n + 1)).toNat + A081856 (n + 1)

end

end A246648.P3288613684087747999

/-! ## A246648.P13312031316074207081

`A305974(p?[A001414(n+1)])+A081856(n+1)`
-/

namespace A246648.P13312031316074207081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A081856 (n + 1)

end

end A246648.P13312031316074207081

/-! ## A246648.P2455073257558814439

`A305974(p?[A305973(n+1)])+A081856(n+1)`
-/

namespace A246648.P2455073257558814439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A081856 (n + 1)

end

end A246648.P2455073257558814439

/-! ## A246648.P16272109920452152961

`A305974(p?[A305974(n+1)])+A081856(n+1)`
-/

namespace A246648.P16272109920452152961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A081856 (n + 1)

end

end A246648.P16272109920452152961

/-! ## A246648.P13927241496159957418

`A118830(A106904(n+1))+A081856(n+1)`
-/

namespace A246648.P13927241496159957418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A106904 (n + 1)).toNat + A081856 (n + 1)

end

end A246648.P13927241496159957418

/-! ## A246648.P6809069373923947653

`A305974(p?[A222231(n)])+A081856(n+1)`
-/

namespace A246648.P6809069373923947653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A081856 (n + 1)

end

end A246648.P6809069373923947653

/-! ## A246648.P898291044569357755

`A305974(p?[A222235(n)])+A081856(n+1)`
-/

namespace A246648.P898291044569357755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A081856 (n + 1)

end

end A246648.P898291044569357755

/-! ## A246648.P940709901041318622

`A305974(A002145(n+1))+A081856(n+1)`
-/

namespace A246648.P940709901041318622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A002145 (n + 1)).toNat + A081856 (n + 1)

end

end A246648.P940709901041318622

/-! ## A246648.P8734992519089557400

`A305974(A005384(n+1))+A081856(n+1)`
-/

namespace A246648.P8734992519089557400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A005384 (n + 1)).toNat + A081856 (n + 1)

end

end A246648.P8734992519089557400

/-! ## A246648.P1513566856067011724

`A102283(A107135(n+1))+A081856(n+1)`
-/

namespace A246648.P1513566856067011724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A107135 (n + 1)).toNat + A081856 (n + 1)

end

end A246648.P1513566856067011724

/-! ## A246648.P7022839806737220830

`and(A198852(n)+A081856(n+1), A198852(n))`
-/

namespace A246648.P7022839806737220830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198852 n + A081856 (n + 1)) (A198852 n)

end

end A246648.P7022839806737220830

/-!
# A246650: Expansion of phi(x) * chi(-x) * psi(x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A246650, there is no canonical definition to state claims against.
-/

/-! ## A246650.P4355506929364394029

`A033999(n)*A246752(n)`
-/

namespace A246650.P4355506929364394029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246752 n

end

end A246650.P4355506929364394029

/-! ## A246650.P12007531068153182737

`A246752(n)*A309873(n+1)`
-/

namespace A246650.P12007531068153182737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246752 n * A309873 (n + 1)

end

end A246650.P12007531068153182737

/-! ## A246650.P18130604894191153532

`A246752(and(1, -n))*A246752(n)`
-/

namespace A246650.P18130604894191153532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246752 (Int.land 1 (-(n : ℤ))).toNat * A246752 n

end

end A246650.P18130604894191153532

/-! ## A246650.P7699870280783077181

`A246752(val(n+1, 2))*A246752(n)`
-/

namespace A246650.P7699870280783077181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246752 (SequenceMachineLib.valuation (n + 1) 2) * A246752 n

end

end A246650.P7699870280783077181

/-! ## A246650.P10194902244896155722

`A077925(A007814(n+1))*A246752(n)`
-/

namespace A246650.P10194902244896155722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (A007814 (n + 1)).toNat * A246752 n

end

end A246650.P10194902244896155722

/-! ## A246650.P16038194124503342575

`A246752(n)/A077925(A007814(n+1)²)`
-/

namespace A246650.P16038194124503342575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246752 n : ℚ) / (A077925 (A007814 (n + 1) ^ 2).toNat : ℚ)

end

end A246650.P16038194124503342575

/-! ## A246650.P5625841080199652849

`A246752(n)/A246752(A007814(n+1)²)`
-/

namespace A246650.P5625841080199652849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246752 n : ℚ) / (A246752 (A007814 (n + 1) ^ 2).toNat : ℚ)

end

end A246650.P5625841080199652849

/-! ## A246650.P3192809127342466376

`A246752(n)/A309873(n+1)^A053742(n)`
-/

namespace A246650.P3192809127342466376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246752 n : ℚ) / (A309873 (n + 1) : ℚ) ^ (A053742 n : ℤ)

end

end A246650.P3192809127342466376

/-! ## A246650.P10974180826924612104

`A130595(∑[n])*A246752(n)`
-/

namespace A246650.P10974180826924612104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (∑ j ∈ Finset.range (n + 1), f1 j) * A246752 n

end

end A246650.P10974180826924612104

/-!
# A246652: G.f.: 1 / AGM(1-5*x+x^2, 1+3*x+x^2).

The programs for A246652, there is no canonical definition to state claims against.
-/

/-! ## A246652.P15529179420075725010

`A214701(A278094(n+1)+A149303(n))`
-/

namespace A246652.P15529179420075725010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A278094 (n + 1) + A149303 n).toNat

end

end A246652.P15529179420075725010

/-! ## A246652.P6244418256692779109

`A169743(A265007(n))`
-/

namespace A246652.P6244418256692779109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169743 (A265007 n).toNat

end

end A246652.P6244418256692779109

/-!
# A246653: G.f.: Sum_{n>=0} x^n / (1-x^2)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k] * [Sum_{k=0..n} C(n,k)^2 * x^(2*k)].

The programs for A246653, there is no canonical definition to state claims against.
-/

/-! ## A246653.P17759465980305164806

`A005503(n)-A194821(A005362(n))`
-/

namespace A246653.P17759465980305164806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005503 n - A194821 (A005362 n).toNat

end

end A246653.P17759465980305164806

/-! ## A246653.P1652686408230727249

`A332086(or(A077828(n), A097076(n)))`
-/

namespace A246653.P1652686408230727249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (Int.lor (A077828 n) (A097076 n)).toNat

end

end A246653.P1652686408230727249

/-!
# A246654: T(n,k) = 2*(K(n,2)*I(k,2) - (-1)^(n+k)*I(n,2)*K(k,2)), where I(n,x) and K(n,x) are Bessel functions; triangle read by rows for 0 <= k <= n.

The programs for A246654, there is no canonical definition to state claims against.
-/

/-! ## A246654.P18373631747895291829

`char[comp[∑[n-1]]]*A062323(n+1)`
-/

namespace A246654.P18373631747895291829
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A062323 (n + 1)

end

end A246654.P18373631747895291829

/-! ## A246654.P2837661307057995855

`A062323((n+1)^(1-char[∑[n-1]]))`
-/

namespace A246654.P2837661307057995855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ))).toNat

end

end A246654.P2837661307057995855

/-! ## A246654.P7751472859340362594

`A062323(n+1)%A027466(n)`
-/

namespace A246654.P7751472859340362594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062323 (n + 1)) (A027466 n)

end

end A246654.P7751472859340362594

/-! ## A246654.P1963061900295371482

`A062323(n+1)*A178334(A025581(n))`
-/

namespace A246654.P1963061900295371482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (n + 1) * A178334 (A025581 n).toNat

end

end A246654.P1963061900295371482

/-! ## A246654.P12362151946331073024

`A062323(A000027(n+1))%A066667(n)`
-/

namespace A246654.P12362151946331073024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062323 (A000027 (n + 1)).toNat) (A066667 n)

end

end A246654.P12362151946331073024

/-! ## A246654.P7916848361055836450

`A062323(A254667(n+1))%A066667(n)`
-/

namespace A246654.P7916848361055836450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062323 (A254667 (n + 1)).toNat) (A066667 n)

end

end A246654.P7916848361055836450

/-! ## A246654.P15629075384255572822

`or(A000038(n), A062323(n+1))%A066667(n)`
-/

namespace A246654.P15629075384255572822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A000038 n) (A062323 (n + 1))) (A066667 n)

end

end A246654.P15629075384255572822

/-!
# A246655: Prime powers: numbers of the form p^k where p is a prime and k >= 1.

The programs for A246655, the canonical program `A246655.P17244467699733575268` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246655 has offset 1).

The definition of A246655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246655.P2302191067120461210

`A000961(n+2)`
-/

namespace A246655.P2302191067120461210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

end

end A246655.P2302191067120461210

namespace A246655

/-- `A000961(n+2)` -/
def P2302191067120461210.Spec : Prop :=
  ∀ n, P2302191067120461210.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P17244467699733575268

`ceil(sqrt(A060615(n)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246655

/-- `ceil(sqrt(A060615(n)))` -/
def P17244467699733575268.Spec : Prop :=
  ∀ n, P17244467699733575268.a n = A246655 (n + 1)

theorem P17244467699733575268.correct : P17244467699733575268.Spec := by
  intro n
  simp only [A246655, Nat.add_sub_cancel]

end A246655

/-! ## A246655.P12184252617552142497

`∑[A275120(n+1)]`
-/

namespace A246655.P12184252617552142497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246655.P12184252617552142497

namespace A246655

/-- `∑[A275120(n+1)]` -/
def P12184252617552142497.Spec : Prop :=
  ∀ n, P12184252617552142497.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P2673525109332972160

`∑[A057820(n+1)]+1`
-/

namespace A246655.P2673525109332972160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A246655.P2673525109332972160

namespace A246655

/-- `∑[A057820(n+1)]+1` -/
def P2673525109332972160.Spec : Prop :=
  ∀ n, P2673525109332972160.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P9753028481557225732

`ceil(root(A329119(n+1), 3))`
-/

namespace A246655.P9753028481557225732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A329119 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A246655.P9753028481557225732

namespace A246655

/-- `ceil(root(A329119(n+1), 3))` -/
def P9753028481557225732.Spec : Prop :=
  ∀ n, P9753028481557225732.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P17345371095253721284

`ceil(root(A003841(n+1), 6))`
-/

namespace A246655.P17345371095253721284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003841 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌉

end

end A246655.P17345371095253721284

namespace A246655

/-- `ceil(root(A003841(n+1), 6))` -/
def P17345371095253721284.Spec : Prop :=
  ∀ n, P17345371095253721284.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P11563678985019977668

`ceil(sqrt(sqrt(A059238(n+1))))`
-/

namespace A246655.P11563678985019977668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A059238 (n + 1) : ℝ))⌉

end

end A246655.P11563678985019977668

namespace A246655

/-- `ceil(sqrt(sqrt(A059238(n+1))))` -/
def P11563678985019977668.Spec : Prop :=
  ∀ n, P11563678985019977668.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P11506326319740843273

`A329119(n+1)/A060615(n)`
-/

namespace A246655.P11506326319740843273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329119 (n + 1) : ℚ) / (A060615 n : ℚ)

end

end A246655.P11506326319740843273

namespace A246655

/-- `A329119(n+1)/A060615(n)` -/
def P11506326319740843273.Spec : Prop :=
  ∀ n, P11506326319740843273.a n = (A246655 (n + 1) : ℚ)

end A246655

/-! ## A246655.P15640698039503114388

`A001597(n+1)-A377044(n+1)`
-/

namespace A246655.P15640698039503114388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - A377044 (n + 1)

end

end A246655.P15640698039503114388

namespace A246655

/-- `A001597(n+1)-A377044(n+1)` -/
def P15640698039503114388.Spec : Prop :=
  ∀ n, P15640698039503114388.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P17625027966699516332

`gcd(A003841(n+1), A367014(n+1))`
-/

namespace A246655.P17625027966699516332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003841 (n + 1)) (A367014 (n + 1))

end

end A246655.P17625027966699516332

namespace A246655

/-- `gcd(A003841(n+1), A367014(n+1))` -/
def P17625027966699516332.Spec : Prop :=
  ∀ n, (P17625027966699516332.a n : ℤ) = A246655 (n + 1)

end A246655

/-! ## A246655.P13832235594401179243

`sqrt(A056798(n+2))`
-/

namespace A246655.P13832235594401179243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 2) : ℝ)

end

end A246655.P13832235594401179243

namespace A246655

/-- `sqrt(A056798(n+2))` -/
def P13832235594401179243.Spec : Prop :=
  ∀ n, P13832235594401179243.a n = (A246655 (n + 1) : ℝ)

end A246655

/-! ## A246655.P15187292574541436674

`Δ[A024918(n+1)]`
-/

namespace A246655.P15187292574541436674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246655.P15187292574541436674

namespace A246655

/-- `Δ[A024918(n+1)]` -/
def P15187292574541436674.Spec : Prop :=
  ∀ n, P15187292574541436674.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P17685625326102662653

`A181062(n+2)+1`
-/

namespace A246655.P17685625326102662653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2) + 1

end

end A246655.P17685625326102662653

namespace A246655

/-- `A181062(n+2)+1` -/
def P17685625326102662653.Spec : Prop :=
  ∀ n, P17685625326102662653.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P11582034534483222982

`A138929(n+2)/2`
-/

namespace A246655.P11582034534483222982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 2) : ℚ) / 2

end

end A246655.P11582034534483222982

namespace A246655

/-- `A138929(n+2)/2` -/
def P11582034534483222982.Spec : Prop :=
  ∀ n, P11582034534483222982.a n = (A246655 (n + 1) : ℚ)

end A246655

/-! ## A246655.P16084585246230055210

`A024918(n+2)-A024918(n+1)`
-/

namespace A246655.P16084585246230055210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 2) - A024918 (n + 1)

end

end A246655.P16084585246230055210

namespace A246655

/-- `A024918(n+2)-A024918(n+1)` -/
def P16084585246230055210.Spec : Prop :=
  ∀ n, P16084585246230055210.a n = A246655 (n + 1)

end A246655

/-! ## A246655.P3944393316785036054

`A192134(n+2)+A192015(n+2)`
-/

namespace A246655.P3944393316785036054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192134 (n + 2) + A192015 (n + 2)

end

end A246655.P3944393316785036054

namespace A246655

/-- `A192134(n+2)+A192015(n+2)` -/
def P3944393316785036054.Spec : Prop :=
  ∀ n, P3944393316785036054.a n = A246655 (n + 1)

end A246655

/-!
# A246656: Triangle read by rows: T(n, k) is the coefficient of x^k of the polynomial p_n(x) representing the n-th diagonal of A246654.

The programs for A246656, there is no canonical definition to state claims against.
-/

/-! ## A246656.P12733134188458303772

`A344339(A092921(n)*A167279(n+1))`
-/

namespace A246656.P12733134188458303772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344339 (A092921 n * A167279 (n + 1)).toNat

end

end A246656.P12733134188458303772

/-! ## A246656.P13951792706414259246

`A274183(A195040(n)^A374740(n))`
-/

namespace A246656.P13951792706414259246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274183 (SequenceMachineLib.roundAway ((A195040 n : ℚ) ^ (A374740 n : ℤ))).toNat

end

end A246656.P13951792706414259246

/-! ## A246656.P12430813771184563679

`A326434(A326404(n))%A326376(n+1)`
-/

namespace A246656.P12430813771184563679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326434 (A326404 n).toNat) (A326376 (n + 1))

end

end A246656.P12430813771184563679

/-! ## A246656.P15819027010315054699

`A124768(A173655(n+1)*A298454(n+1))`
-/

namespace A246656.P15819027010315054699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A173655 (n + 1) * A298454 (n + 1)).toNat

end

end A246656.P15819027010315054699

/-! ## A246656.P11396593115799519848

`C(A224697(n), A040540(A060136(n)))`
-/

namespace A246656.P11396593115799519848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A224697 n).toNat (A040540 (A060136 n).toNat).toNat

end

end A246656.P11396593115799519848

/-!
# A246657: a(n) = round(3F2([1, 3/2, 1 - n], [2, 2], -4)).

The programs for A246657, there is no canonical definition to state claims against.
-/

/-! ## A246657.P15034951308797672862

`A005185(A200539(n))-A341457(n+9)`
-/

namespace A246657.P15034951308797672862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A200539 n).toNat - A341457 (n + 9)

end

end A246657.P15034951308797672862

/-! ## A246657.P17429687169410231923

`A340764(A091843(n)+n)`
-/

namespace A246657.P17429687169410231923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A091843 n + (n : ℤ)).toNat

end

end A246657.P17429687169410231923

/-! ## A246657.P1419396559258838294

`A008616(A281352(n)+A115243(n))`
-/

namespace A246657.P1419396559258838294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A281352 n + A115243 n).toNat

end

end A246657.P1419396559258838294

/-!
# A246658: Triangle read by rows: T(n,k) = K(n,1)*I(k,1) - (-1)^(n+k)*I(n,1)* K(k,1), where I(n,x) and K(n,x) are Bessel functions; 0<=k<=n.

The programs for A246658, there is no canonical definition to state claims against.
-/

/-! ## A246658.P688463471990972126

`A050977(A003418(n))%A120108(n)`
-/

namespace A246658.P688463471990972126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050977 (A003418 n).toNat) (A120108 n)

end

end A246658.P688463471990972126

/-! ## A246658.P2232545661373516327

`A321484(n)%A321441(A321352(n+1))`
-/

namespace A246658.P2232545661373516327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321484 n) (A321441 (A321352 (n + 1)).toNat)

end

end A246658.P2232545661373516327

/-!
# A246659: a(n) = binomial(n-h,h)*hypergeometric([h-n/2,h-(n-1)/2],[1],4), h = floor(n/4).

The programs for A246659, the canonical program `A246659.P12015513086948377768` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246659 has offset 0).

The definition of A246659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132885, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246659.P12015513086948377768

`A132885(A054925(n+2)-1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246659

/-- `A132885(A054925(n+2)-1)` -/
def P12015513086948377768.Spec : Prop :=
  ∀ n, P12015513086948377768.a n = A246659 n

theorem P12015513086948377768.correct : P12015513086948377768.Spec := by
  intro n
  simp only [A246659]

end A246659

/-! ## A246659.P16045435252786483040

`A132885(A011848(n)+n)`
-/

namespace A246659.P16045435252786483040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 (A011848 n + (n : ℤ)).toNat

end

end A246659.P16045435252786483040

namespace A246659

/-- `A132885(A011848(n)+n)` -/
def P16045435252786483040.Spec : Prop :=
  ∀ n, P16045435252786483040.a n = A246659 n

end A246659

/-! ## A246659.P3110439791616665501

`A132885(floor(A000096(n)/2))`
-/

namespace A246659.P3110439791616665501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 ⌊(A000096 n : ℚ) / 2⌋.toNat

end

end A246659.P3110439791616665501

namespace A246659

/-- `A132885(floor(A000096(n)/2))` -/
def P3110439791616665501.Spec : Prop :=
  ∀ n, P3110439791616665501.a n = A246659 n

end A246659

/-! ## A246659.P11777444754409159659

`A132885(∑[n]-A054925(n))`
-/

namespace A246659.P11777444754409159659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A054925 n).toNat

end

end A246659.P11777444754409159659

namespace A246659

/-- `A132885(∑[n]-A054925(n))` -/
def P11777444754409159659.Spec : Prop :=
  ∀ n, P11777444754409159659.a n = A246659 n

end A246659

/-! ## A246659.P12117725629426963580

`A132885(eq[0, A132896(2*n+1)])`
-/

namespace A246659.P12117725629426963580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246659.P12117725629426963580

namespace A246659

/-- `A132885(eq[0, A132896(2*n+1)])` -/
def P12117725629426963580.Spec : Prop :=
  ∀ n, P12117725629426963580.a n = A246659 n

end A246659

/-!
# A246660: Run Length Transform of factorials.

The programs for A246660, the canonical program `A246660.P2458529780599884726` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246660 has offset 0).

The definition of A246660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A112624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246660.P11900118321846191688

`A323505(n)/A323506(n)`
-/

namespace A246660.P11900118321846191688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A323506 n : ℚ)

end

end A246660.P11900118321846191688

namespace A246660

/-- `A323505(n)/A323506(n)` -/
def P11900118321846191688.Spec : Prop :=
  ∀ n, P11900118321846191688.a n = (A246660 n : ℚ)

end A246660

/-! ## A246660.P2458529780599884726

`A112624(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A246660

/-- `A112624(A005940(1+n))` -/
def P2458529780599884726.Spec : Prop :=
  ∀ n, P2458529780599884726.a n = A246660 n

theorem P2458529780599884726.correct : P2458529780599884726.Spec := by
  intro n
  simp only [A246660]

end A246660

/-! ## A246660.P368315298645191235

`∏{e}[A278222(n), #!]`
-/

namespace A246660.P368315298645191235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A246660.P368315298645191235

namespace A246660

/-- `∏{e}[A278222(n), #!]` -/
def P368315298645191235.Spec : Prop :=
  ∀ n, (P368315298645191235.a n : ℤ) = A246660 n

end A246660

/-! ## A246660.P17905921900445323654

`A321898(A246029(n))`
-/

namespace A246660.P17905921900445323654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321898 (A246029 n).toNat

end

end A246660.P17905921900445323654

namespace A246660

/-- `A321898(A246029(n))` -/
def P17905921900445323654.Spec : Prop :=
  ∀ n, P17905921900445323654.a n = A246660 n

end A246660

/-! ## A246660.P4874696563926680065

`∏{e}[A278222(n), A000142(#)]`
-/

namespace A246660.P4874696563926680065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)

end

end A246660.P4874696563926680065

namespace A246660

/-- `∏{e}[A278222(n), A000142(#)]` -/
def P4874696563926680065.Spec : Prop :=
  ∀ n, P4874696563926680065.a n = A246660 n

end A246660

/-! ## A246660.P6007549159669568200

`A112624(A278222(n))`
-/

namespace A246660.P6007549159669568200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A278222 n).toNat

end

end A246660.P6007549159669568200

namespace A246660

/-- `A112624(A278222(n))` -/
def P6007549159669568200.Spec : Prop :=
  ∀ n, P6007549159669568200.a n = A246660 n

end A246660

/-! ## A246660.P11115639783923827158

`∏{e}[A005940(n+1), #!]`
-/

namespace A246660.P11115639783923827158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A246660.P11115639783923827158

namespace A246660

/-- `∏{e}[A005940(n+1), #!]` -/
def P11115639783923827158.Spec : Prop :=
  ∀ n, (P11115639783923827158.a n : ℤ) = A246660 n

end A246660

/-! ## A246660.P5316330422804349090

`∏{e}[A332815(n), #!]`
-/

namespace A246660.P5316330422804349090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A246660.P5316330422804349090

namespace A246660

/-- `∏{e}[A332815(n), #!]` -/
def P5316330422804349090.Spec : Prop :=
  ∀ n, (P5316330422804349090.a n : ℤ) = A246660 n

end A246660

/-! ## A246660.P13474743704875857099

`A112624(A332815(n))`
-/

namespace A246660.P13474743704875857099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A332815 n).toNat

end

end A246660.P13474743704875857099

namespace A246660

/-- `A112624(A332815(n))` -/
def P13474743704875857099.Spec : Prop :=
  ∀ n, P13474743704875857099.a n = A246660 n

end A246660

/-! ## A246660.P3127462303284379408

`A112624(A374717(n+1))`
-/

namespace A246660.P3127462303284379408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A374717 (n + 1)).toNat

end

end A246660.P3127462303284379408

namespace A246660

/-- `A112624(A374717(n+1))` -/
def P3127462303284379408.Spec : Prop :=
  ∀ n, P3127462303284379408.a n = A246660 n

end A246660

/-!
# A246661: Run Length Transform of swinging factorials (A056040).

The programs for A246661, the canonical program `A246661.P5855440614250438167` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246661 has offset 0).

The definition of A246661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246661.P5855440614250438167

`∏{e}[A278222(n), A056040(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A246661

/-- `∏{e}[A278222(n), A056040(#)]` -/
def P5855440614250438167.Spec : Prop :=
  ∀ n, P5855440614250438167.a n = A246661 n

theorem P5855440614250438167.correct : P5855440614250438167.Spec := by
  intro n
  simp only [A246661]

end A246661

/-! ## A246661.P835335995294578119

`∏{e}[A005940(n+1), A056040(#)]`
-/

namespace A246661.P835335995294578119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056040 (Nat.factorization (f1 n).natAbs p)

end

end A246661.P835335995294578119

namespace A246661

/-- `∏{e}[A005940(n+1), A056040(#)]` -/
def P835335995294578119.Spec : Prop :=
  ∀ n, P835335995294578119.a n = A246661 n

end A246661

/-! ## A246661.P3070320300094983377

`∏{e}[A005940(n+1), A056042(#)]`
-/

namespace A246661.P3070320300094983377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056042 (Nat.factorization (f1 n).natAbs p)

end

end A246661.P3070320300094983377

namespace A246661

/-- `∏{e}[A005940(n+1), A056042(#)]` -/
def P3070320300094983377.Spec : Prop :=
  ∀ n, P3070320300094983377.a n = A246661 n

end A246661

/-! ## A246661.P9550727926577201324

`∏{e}[A332815(n), A056040(#)]`
-/

namespace A246661.P9550727926577201324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056040 (Nat.factorization (f1 n).natAbs p)

end

end A246661.P9550727926577201324

namespace A246661

/-- `∏{e}[A332815(n), A056040(#)]` -/
def P9550727926577201324.Spec : Prop :=
  ∀ n, P9550727926577201324.a n = A246661 n

end A246661

/-! ## A246661.P4024162693164649932

`∏{e}[A332815(n), A056042(#)]`
-/

namespace A246661.P4024162693164649932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056042 (Nat.factorization (f1 n).natAbs p)

end

end A246661.P4024162693164649932

namespace A246661

/-- `∏{e}[A332815(n), A056042(#)]` -/
def P4024162693164649932.Spec : Prop :=
  ∀ n, P4024162693164649932.a n = A246661 n

end A246661

/-! ## A246661.P14957651713641646347

`A295665(A278159(n))`
-/

namespace A246661.P14957651713641646347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (A278159 n).toNat

end

end A246661.P14957651713641646347

namespace A246661

/-- `A295665(A278159(n))` -/
def P14957651713641646347.Spec : Prop :=
  ∀ n, P14957651713641646347.a n = A246661 n

end A246661

/-! ## A246661.P16674968048589659341

`A038387(25*A246660(n))`
-/

namespace A246661.P16674968048589659341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (25 * A246660 n).toNat

end

end A246661.P16674968048589659341

namespace A246661

/-- `A038387(25*A246660(n))` -/
def P16674968048589659341.Spec : Prop :=
  ∀ n, P16674968048589659341.a n = A246661 n

end A246661

/-! ## A246661.P12672381727453030260

`A038387(or(A151935(n), A246660(n)))`
-/

namespace A246661.P12672381727453030260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (Int.lor (A151935 n) (A246660 n)).toNat

end

end A246661.P12672381727453030260

namespace A246661

/-- `A038387(or(A151935(n), A246660(n)))` -/
def P12672381727453030260.Spec : Prop :=
  ∀ n, P12672381727453030260.a n = A246661 n

end A246661

/-! ## A246661.P5752378097725781792

`A066990(or(A151935(n), A246660(n)))`
-/

namespace A246661.P5752378097725781792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (Int.lor (A151935 n) (A246660 n)).toNat

end

end A246661.P5752378097725781792

namespace A246661

/-- `A066990(or(A151935(n), A246660(n)))` -/
def P5752378097725781792.Spec : Prop :=
  ∀ n, P5752378097725781792.a n = A246661 n

end A246661

/-! ## A246661.P552976060848675584

`A038387(A246660(n))/A246660(A151935(n)²)`
-/

namespace A246661.P552976060848675584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038387 (A246660 n).toNat : ℚ) / (A246660 (A151935 n ^ 2).toNat : ℚ)

end

end A246661.P552976060848675584

namespace A246661

/-- `A038387(A246660(n))/A246660(A151935(n)²)` -/
def P552976060848675584.Spec : Prop :=
  ∀ n, P552976060848675584.a n = (A246661 n : ℚ)

end A246661

/-!
# A246663: Products of swinging factorials A056040.

The programs for A246663, there is no canonical definition to state claims against.
-/

/-! ## A246663.P14787488596389290066

`record[A032741(A045619(n+1))+1]`
-/

namespace A246663.P14787488596389290066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A045619 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246663.P14787488596389290066

/-! ## A246663.P15005989117700877534

`record[A000005(A210062(2*n+1))]`
-/

namespace A246663.P15005989117700877534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A210062 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246663.P15005989117700877534

/-! ## A246663.P1237664025976462674

`record[A273353(n+1)-A181646(n+1)]`
-/

namespace A246663.P1237664025976462674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273353 (n + 1) - A181646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246663.P1237664025976462674

/-! ## A246663.P956923527468058294

`record[A000005(A004773(A136244(n)))]`
-/

namespace A246663.P956923527468058294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004773 (A136244 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246663.P956923527468058294

/-!
# A246669: Catalan(prime(n)).

The programs for A246669, there is no canonical definition to state claims against.
-/

/-! ## A246669.P200512287783131336

`A000108(p?[comp[n²]])`
-/

namespace A246669.P200512287783131336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A246669.P200512287783131336

/-! ## A246669.P10862066258717854667

`A000108(eq[1, ∑{e}[n, #]])`
-/

namespace A246669.P10862066258717854667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246669.P10862066258717854667

/-! ## A246669.P6989502274372075128

`A000108(Δ[A007504(n)])`
-/

namespace A246669.P6989502274372075128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n).toNat

end

end A246669.P6989502274372075128

/-! ## A246669.P4033530409045537466

`A000108(A000040(n+1))`
-/

namespace A246669.P4033530409045537466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A000040 (n + 1)).toNat

end

end A246669.P4033530409045537466

/-! ## A246669.P15455443177426229653

`A057977(A100484(n+1))`
-/

namespace A246669.P15455443177426229653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (A100484 (n + 1)).toNat

end

end A246669.P15455443177426229653

/-!
# A246670: a(n) = prime(Catalan(n)).

The programs for A246670, there is no canonical definition to state claims against.
-/

/-! ## A246670.P16117769069132528244

`A001748(A000108(n))/3`
-/

namespace A246670.P16117769069132528244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A000108 n).toNat : ℚ) / 3

end

end A246670.P16117769069132528244

/-! ## A246670.P14364033076825271318

`A001749(abs(A168491(n)))/4`
-/

namespace A246670.P14364033076825271318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 |A168491 n|.toNat : ℚ) / 4

end

end A246670.P14364033076825271318

/-! ## A246670.P5664259596865700634

`A001748(A120588(n+1))/3`
-/

namespace A246670.P5664259596865700634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A120588 (n + 1)).toNat : ℚ) / 3

end

end A246670.P5664259596865700634

/-! ## A246670.P17264995882530798524

`A001748(A120304(n)+2)/3`
-/

namespace A246670.P17264995882530798524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A120304 n + 2).toNat : ℚ) / 3

end

end A246670.P17264995882530798524

/-! ## A246670.P6592998060324779352

`A001748(A028303(2*n))/3`
-/

namespace A246670.P6592998060324779352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A028303 (2 * n)).toNat : ℚ) / 3

end

end A246670.P6592998060324779352

/-!
# A246674: Run Length Transform of A000225.

The programs for A246674, the canonical program `A246674.P4555323764649668052` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246674 has offset 0).

The definition of A246674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246674.P4555323764649668052

`∏{e}[A278222(n), A255047(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A246674

/-- `∏{e}[A278222(n), A255047(#)]` -/
def P4555323764649668052.Spec : Prop :=
  ∀ n, P4555323764649668052.a n = A246674 n

theorem P4555323764649668052.correct : P4555323764649668052.Spec := by
  intro n
  simp only [A246674]

end A246674

/-! ## A246674.P16236148973674334005

`∏{e}[A278222(n), A000079(#)-1]`
-/

namespace A246674.P16236148973674334005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000079 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A246674.P16236148973674334005

namespace A246674

/-- `∏{e}[A278222(n), A000079(#)-1]` -/
def P16236148973674334005.Spec : Prop :=
  ∀ n, P16236148973674334005.a n = A246674 n

end A246674

/-! ## A246674.P14220099610841212383

`A324910(A278222(n))`
-/

namespace A246674.P14220099610841212383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (A278222 n).toNat

end

end A246674.P14220099610841212383

namespace A246674

/-- `A324910(A278222(n))` -/
def P14220099610841212383.Spec : Prop :=
  ∀ n, P14220099610841212383.a n = A246674 n

end A246674

/-! ## A246674.P7427326699479476155

`∏{e}[A005940(n+1), A213247(#)]`
-/

namespace A246674.P7427326699479476155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A213247 (Nat.factorization (f1 n).natAbs p)

end

end A246674.P7427326699479476155

namespace A246674

/-- `∏{e}[A005940(n+1), A213247(#)]` -/
def P7427326699479476155.Spec : Prop :=
  ∀ n, P7427326699479476155.a n = A246674 n

end A246674

/-! ## A246674.P12672207796859281565

`∏{e}[A005940(n+1), A255047(#)]`
-/

namespace A246674.P12672207796859281565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255047 (Nat.factorization (f1 n).natAbs p)

end

end A246674.P12672207796859281565

namespace A246674

/-- `∏{e}[A005940(n+1), A255047(#)]` -/
def P12672207796859281565.Spec : Prop :=
  ∀ n, P12672207796859281565.a n = A246674 n

end A246674

/-! ## A246674.P6292531171081011859

`∏{e}[A005940(n+1), A000079(#)-1]`
-/

namespace A246674.P6292531171081011859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000079 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A246674.P6292531171081011859

namespace A246674

/-- `∏{e}[A005940(n+1), A000079(#)-1]` -/
def P6292531171081011859.Spec : Prop :=
  ∀ n, P6292531171081011859.a n = A246674 n

end A246674

/-! ## A246674.P6476935339989824739

`∏{e}[A005940(n+1), A000203(A131577(#))]`
-/

namespace A246674.P6476935339989824739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000203 (A131577 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A246674.P6476935339989824739

namespace A246674

/-- `∏{e}[A005940(n+1), A000203(A131577(#))]` -/
def P6476935339989824739.Spec : Prop :=
  ∀ n, P6476935339989824739.a n = A246674 n

end A246674

/-! ## A246674.P15265504919679124298

`∏{e}[A005940(n+1), A281837(A000217(#)+1)-1]`
-/

namespace A246674.P15265504919679124298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A281837 (A000217 (Nat.factorization (f1 n).natAbs p) + 1).toNat - 1)

end

end A246674.P15265504919679124298

namespace A246674

/-- `∏{e}[A005940(n+1), A281837(A000217(#)+1)-1]` -/
def P15265504919679124298.Spec : Prop :=
  ∀ n, P15265504919679124298.a n = A246674 n

end A246674

/-! ## A246674.P1632829292649569225

`∏{e}[A332815(n), A000079(#)-1]`
-/

namespace A246674.P1632829292649569225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000079 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A246674.P1632829292649569225

namespace A246674

/-- `∏{e}[A332815(n), A000079(#)-1]` -/
def P1632829292649569225.Spec : Prop :=
  ∀ n, P1632829292649569225.a n = A246674 n

end A246674

/-! ## A246674.P12956076464156962138

`A324910(A005940(n+1))`
-/

namespace A246674.P12956076464156962138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (A005940 (n + 1)).toNat

end

end A246674.P12956076464156962138

namespace A246674

/-- `A324910(A005940(n+1))` -/
def P12956076464156962138.Spec : Prop :=
  ∀ n, P12956076464156962138.a n = A246674 n

end A246674

/-! ## A246674.P14526719516747603308

`A324910(A332815(n))`
-/

namespace A246674.P14526719516747603308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (A332815 n).toNat

end

end A246674.P14526719516747603308

namespace A246674

/-- `A324910(A332815(n))` -/
def P14526719516747603308.Spec : Prop :=
  ∀ n, P14526719516747603308.a n = A246674 n

end A246674

/-! ## A246674.P10529421379271412953

`A000265(A356397(n))`
-/

namespace A246674.P10529421379271412953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A356397 n).toNat

end

end A246674.P10529421379271412953

namespace A246674

/-- `A000265(A356397(n))` -/
def P10529421379271412953.Spec : Prop :=
  ∀ n, P10529421379271412953.a n = A246674 n

end A246674

/-! ## A246674.P8984982418121200235

`gcd(A331519(n), A356397(n))`
-/

namespace A246674.P8984982418121200235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331519 n) (A356397 n)

end

end A246674.P8984982418121200235

namespace A246674

/-- `gcd(A331519(n), A356397(n))` -/
def P8984982418121200235.Spec : Prop :=
  ∀ n, (P8984982418121200235.a n : ℤ) = A246674 n

end A246674

/-! ## A246674.P7376852423488981418

`A324910(A374717(n+1))`
-/

namespace A246674.P7376852423488981418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (A374717 (n + 1)).toNat

end

end A246674.P7376852423488981418

namespace A246674

/-- `A324910(A374717(n+1))` -/
def P7376852423488981418.Spec : Prop :=
  ∀ n, P7376852423488981418.a n = A246674 n

end A246674

/-!
# A246675: Permutation of natural numbers: a(n) = A000079(A055396(n+1)-1) * ((2*A246277(n+1))-1).

The programs for A246675, there is no canonical definition to state claims against.
-/

/-! ## A246675.P14039052850913045157

`A000079(A055396(n+2)-1)*(2*A246277(n+2)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246675.P14039052850913045157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055396 (n + 2) - 1).toNat * (2 * A246277 (n + 2) - 1)

end

end A246675.P14039052850913045157

/-! ## A246675.P8676640619017213242

`A054582(A246274(n+1)-1)`
-/

namespace A246675.P8676640619017213242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (A246274 (n + 1) - 1).toNat

end

end A246675.P8676640619017213242

/-! ## A246675.P17429590195633767482

`A249812(A249815(n+1))`
-/

namespace A246675.P17429590195633767482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249812 (A249815 (n + 1)).toNat

end

end A246675.P17429590195633767482

/-! ## A246675.P598842108623172332

`A249812(A249817(n+2)-1)`
-/

namespace A246675.P598842108623172332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249812 (A249817 (n + 2) - 1).toNat

end

end A246675.P598842108623172332

/-! ## A246675.P3363824267843597362

`A135764(A246276(n+1))`
-/

namespace A246675.P3363824267843597362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A246276 (n + 1)).toNat

end

end A246675.P3363824267843597362

/-! ## A246675.P8649410985088571042

`A135764(A252752(n+2)-1)`
-/

namespace A246675.P8649410985088571042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A252752 (n + 2) - 1).toNat

end

end A246675.P8649410985088571042

/-! ## A246675.P6112210592813960407

`A246679(A108228(n+2))`
-/

namespace A246675.P6112210592813960407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246679 (A108228 (n + 2)).toNat

end

end A246675.P6112210592813960407

/-! ## A246675.P14661023523113671879

`A246679(A048673(n+2)-1)`
-/

namespace A246675.P14661023523113671879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246679 (A048673 (n + 2) - 1).toNat

end

end A246675.P14661023523113671879

/-!
# A246676: Permutation of natural numbers: a(n) = A242378(A007814(n), (1+A000265(n))) - 1.

The programs for A246676, there is no canonical definition to state claims against.
-/

/-! ## A246676.P10332474154098869533

`A249816(A249811(n+1))`
-/

namespace A246676.P10332474154098869533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A249811 (n + 1)).toNat

end

end A246676.P10332474154098869533

/-! ## A246676.P13238765740827186683

`A249816(A207801(n+2)-1)`
-/

namespace A246676.P13238765740827186683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (A207801 (n + 2) - 1).toNat

end

end A246676.P13238765740827186683

/-! ## A246676.P12752577563466692285

`A249818(A207801(n+2))+A153881(n+2)`
-/

namespace A246676.P12752577563466692285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A207801 (n + 2)).toNat + A153881 (n + 2)

end

end A246676.P12752577563466692285

/-! ## A246676.P13095961194281431653

`A249818(A207801(n+2))-A008683(gcd(n, n+1))`
-/

namespace A246676.P13095961194281431653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A207801 (n + 2)).toNat - A008683 (Nat.gcd n (n + 1))

end

end A246676.P13095961194281431653

/-! ## A246676.P9322049460199075136

`A260196(2*(n+2))+A249818(A207801(n+2))`
-/

namespace A246676.P9322049460199075136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * (n + 2)) + A249818 (A207801 (n + 2)).toNat

end

end A246676.P9322049460199075136

/-! ## A246676.P7313390248441155639

`A246275(A249725(n+1))`
-/

namespace A246676.P7313390248441155639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (A249725 (n + 1)).toNat

end

end A246676.P7313390248441155639

/-! ## A246676.P6906653678782546088

`A246273(A209268(n+1))`
-/

namespace A246676.P6906653678782546088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246273 (A209268 (n + 1)).toNat

end

end A246676.P6906653678782546088

/-! ## A246676.P14376027170143526222

`A246278(A249725(n+1)+1)-1`
-/

namespace A246676.P14376027170143526222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (A249725 (n + 1) + 1).toNat - 1

end

end A246676.P14376027170143526222

/-!
# A246677: Permutation of natural numbers: a(1) = 1, a(2n) = A000079(A055396(2n+1)-1) * ((2*A246277(2n+1))-1), a(2n+1) = 1 + 2*a(n).

The programs for A246677, there is no canonical definition to state claims against.
-/

/-! ## A246677.P5514762149579637151

`A156552(n+2)%∏[p?[round(8*n/7)]²]`
-/

namespace A246677.P5514762149579637151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (n + 2)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A246677.P5514762149579637151

/-! ## A246677.P14690446459161667753

`A156552(A340008(2*(n+2)))`
-/

namespace A246677.P14690446459161667753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A340008 (2 * (n + 2))).toNat

end

end A246677.P14690446459161667753

/-! ## A246677.P3106091673694122876

`A156552(n+2)%A049521(n)`
-/

namespace A246677.P3106091673694122876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (n + 2)) (A049521 n)

end

end A246677.P3106091673694122876

/-! ## A246677.P3899818264887201638

`A156552(ceil(log2(A045544(n+1))))`
-/

namespace A246677.P3899818264887201638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 ⌈Real.logb 2 (A045544 (n + 1) : ℝ)⌉.toNat

end

end A246677.P3899818264887201638

/-! ## A246677.P4254203540535736800

`A156552(ceil(log2(A132453(n+1))))`
-/

namespace A246677.P4254203540535736800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 ⌈Real.logb 2 (A132453 (n + 1) : ℝ)⌉.toNat

end

end A246677.P4254203540535736800

/-!
# A246678: Permutation of natural numbers: a(1) = 1, a(2n+1) = 1 + 2*a(n), a(2n) = A242378(A001511(n), (1+A000265(n))) - 1.

The programs for A246678, there is no canonical definition to state claims against.
-/

/-! ## A246678.P16352498710745998381

`A005940(A157684(3*n+5))-1`
-/

namespace A246678.P16352498710745998381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A157684 (3 * n + 5)).toNat - 1

end

end A246678.P16352498710745998381

/-! ## A246678.P10484891749692690758

`abs(A174344(A005940(2*(n+2))²))`
-/

namespace A246678.P10484891749692690758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174344 (A005940 (2 * (n + 2)) ^ 2).toNat|

end

end A246678.P10484891749692690758

/-! ## A246678.P9350122601943836941

`A174344((A005940(2*(n+2))-1)²)`
-/

namespace A246678.P9350122601943836941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 ((A005940 (2 * (n + 2)) - 1) ^ 2).toNat

end

end A246678.P9350122601943836941

/-! ## A246678.P11317329202727386778

`(A005940(n+2)-1)%A345959(2*n+3)`
-/

namespace A246678.P11317329202727386778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (n + 2) - 1) (A345959 (2 * n + 3))

end

end A246678.P11317329202727386778

/-! ## A246678.P13218678220690345089

`A005940(n+2)-A057427(A019538(n+1))`
-/

namespace A246678.P13218678220690345089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2) - A057427 (A019538 (n + 1)).toNat

end

end A246678.P13218678220690345089

/-!
# A246679: Permutation of natural numbers, even bisection of A246675 halved: a(n) = A246675(2*n)/2.

The programs for A246679, there is no canonical definition to state claims against.
-/

/-! ## A246679.P1869325455566450019

`A246675(A064216(n+2)-1)`
-/

namespace A246679.P1869325455566450019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246675 (A064216 (n + 2) - 1).toNat

end

end A246679.P1869325455566450019

/-! ## A246679.P2013323371671246064

`A246675(2*(n+1))/2`
-/

namespace A246679.P2013323371671246064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246675 (2 * (n + 1)) : ℚ) / 2

end

end A246679.P2013323371671246064

/-! ## A246679.P13647033224297053043

`A246677(2*(n+1))/2`
-/

namespace A246679.P13647033224297053043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246677 (2 * (n + 1)) : ℚ) / 2

end

end A246679.P13647033224297053043

/-! ## A246679.P15884337839477256008

`A135764(A246276(2*(n+1)))/2`
-/

namespace A246679.P15884337839477256008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135764 (A246276 (2 * (n + 1))).toNat : ℚ) / 2

end

end A246679.P15884337839477256008

/-! ## A246679.P7745067423008771188

`A249812(A249815(2*(n+1)))/2`
-/

namespace A246679.P7745067423008771188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249812 (A249815 (2 * (n + 1))).toNat : ℚ) / 2

end

end A246679.P7745067423008771188

/-!
# A246680: Permutation of natural numbers, even bisection of A246676 halved: a(n) = A246676(2*n)/2.

The programs for A246680, there is no canonical definition to state claims against.
-/

/-! ## A246680.P11302963487516102402

`A246676(2*(n+1))/2`
-/

namespace A246680.P11302963487516102402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246676 (2 * (n + 1)) : ℚ) / 2

end

end A246680.P11302963487516102402

/-! ## A246680.P13793415800675427496

`A246678(2*(n+1))/2`
-/

namespace A246680.P13793415800675427496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246678 (2 * (n + 1)) : ℚ) / 2

end

end A246680.P13793415800675427496

/-! ## A246680.P13687618979613381645

`round(A246676(A004277(n+1))/2)`
-/

namespace A246680.P13687618979613381645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A246676 (A004277 (n + 1)).toNat : ℚ) / 2)

end

end A246680.P13687618979613381645

/-! ## A246680.P1676229292732415856

`2^A008683(A020484(n))*A246678(2*(n+1))`
-/

namespace A246680.P1676229292732415856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) * (A246678 (2 * (n + 1)) : ℚ)

end

end A246680.P1676229292732415856

/-! ## A246680.P8195685294588199421

`A249816(A249811(2*(n+1)))/2`
-/

namespace A246680.P8195685294588199421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249816 (A249811 (2 * (n + 1))).toNat : ℚ) / 2

end

end A246680.P8195685294588199421

/-! ## A246680.P14467779381357275043

`A014682(A246676(2*(n+1)))`
-/

namespace A246680.P14467779381357275043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A246676 (2 * (n + 1))).toNat

end

end A246680.P14467779381357275043

/-! ## A246680.P6813947677308240568

`A014682(A246678(2*(n+1)))`
-/

namespace A246680.P6813947677308240568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A246678 (2 * (n + 1))).toNat

end

end A246680.P6813947677308240568

/-! ## A246680.P11729697083009867246

`A328399(A246678(2*(n+1))-2)`
-/

namespace A246680.P11729697083009867246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A246678 (2 * (n + 1)) - 2).toNat

end

end A246680.P11729697083009867246

/-! ## A246680.P1664490779010573800

`∑{d}[A246676(2*(n+1)), A305804(#)]`
-/

namespace A246680.P1664490779010573800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A246680.P1664490779010573800

/-! ## A246680.P17270897829473107632

`A000217(A246678(2*n+2))%A246678(2*n+2)`
-/

namespace A246680.P17270897829473107632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A246678 (2 * n + 2)).toNat) (A246678 (2 * n + 2))

end

end A246680.P17270897829473107632

/-! ## A246680.P8706909666955250473

`A253885(A246676(n+1))/2`
-/

namespace A246680.P8706909666955250473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 (A246676 (n + 1)).toNat : ℚ) / 2

end

end A246680.P8706909666955250473

/-! ## A246680.P17504015293822118840

`A048673(A246676(n+1)+1)-1`
-/

namespace A246680.P17504015293822118840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A246676 (n + 1) + 1).toNat - 1

end

end A246680.P17504015293822118840

/-! ## A246680.P4658210225632170118

`A246275(A249725(2*(n+1)))/2`
-/

namespace A246680.P4658210225632170118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246275 (A249725 (2 * (n + 1))).toNat : ℚ) / 2

end

end A246680.P4658210225632170118

/-! ## A246680.P14066929480871757871

`A246277(A246676(2*n+2))`
-/

namespace A246680.P14066929480871757871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A246676 (2 * n + 2)).toNat

end

end A246680.P14066929480871757871

/-! ## A246680.P1532227461200013363

`A246277(A246678(2*n+2))`
-/

namespace A246680.P1532227461200013363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A246678 (2 * n + 2)).toNat

end

end A246680.P1532227461200013363

/-! ## A246680.P17954486560862604201

`A003602(A246676(2*(n+1))-1)`
-/

namespace A246680.P17954486560862604201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A246676 (2 * (n + 1)) - 1).toNat

end

end A246680.P17954486560862604201

/-! ## A246680.P4867550442675472672

`A008619(A246678(2*(n+1))-1)`
-/

namespace A246680.P4867550442675472672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A246678 (2 * (n + 1)) - 1).toNat

end

end A246680.P4867550442675472672

/-! ## A246680.P4806768031081802858

`A242112(A246676(2*(n+1))-2)`
-/

namespace A246680.P4806768031081802858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (A246676 (2 * (n + 1)) - 2).toNat

end

end A246680.P4806768031081802858

/-! ## A246680.P6794735359149106053

`A078898(A246275(A249725(2*(n+1))))`
-/

namespace A246680.P6794735359149106053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A246275 (A249725 (2 * (n + 1))).toNat).toNat

end

end A246680.P6794735359149106053

/-! ## A246680.P6211646926344289936

`A246277(A249818(A246676(n+2+n)))`
-/

namespace A246680.P6211646926344289936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A249818 (A246676 (n + 2 + n)).toNat).toNat

end

end A246680.P6211646926344289936

/-!
# A246681: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(p_n) = A003961(a(n)), a(c_n) = 2*a(n), where p_n = n-th prime = A000040(n), c_n = n-th composite number = A002808(n), and A003961(n) shifts the prime factorization of n one step towards larger primes.

The programs for A246681, there is no canonical definition to state claims against.
-/

/-! ## A246681.P3686872050160072260

`A163511(A237427(n))%A340663(3*n+1)`
-/

namespace A246681.P3686872050160072260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163511 (A237427 n).toNat) (A340663 (3 * n + 1))

end

end A246681.P3686872050160072260

/-! ## A246681.P13077572697885065346

`A163511(A237427(n))%A359015(n+3)`
-/

namespace A246681.P13077572697885065346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163511 (A237427 n).toNat) (A359015 (n + 3))

end

end A246681.P13077572697885065346

/-!
# A246682: Permutation of natural numbers: a(1) = 0, a(2) = 1, and for n > 1, a(2n) = nthcomposite(a(n)), a(2n-1) = nthprime(a(A064989(2n-1))), where nthprime = A000040, nthcomposite = A002808, and A064989(n) shifts the prime factorization of n one step towards smaller primes.

The programs for A246682, there is no canonical definition to state claims against.
-/

/-! ## A246682.P4923084628200523367

`A065855(A246378(A243071(2*(n+1))))`
-/

namespace A246682.P4923084628200523367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A246378 (A243071 (2 * (n + 1))).toNat).toNat

end

end A246682.P4923084628200523367

/-! ## A246682.P3801395656024797978

`Δ[A097847(A097793(2*n))]+n`
-/

namespace A246682.P3801395656024797978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097847 (A097793 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A246682.P3801395656024797978

/-! ## A246682.P6081743559343075174

`A237126(A243071(n+1)%A307331(n+1))`
-/

namespace A246682.P6081743559343075174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237126 (Int.tmod (A243071 (n + 1)) (A307331 (n + 1))).toNat

end

end A246682.P6081743559343075174

/-!
# A246683: Permutation of natural numbers: a(1) = 1, a(n) = A000079(A055396(n+1)-1) * ((2*a(A246277(n+1))) - 1).

The programs for A246683, there is no canonical definition to state claims against.
-/

/-! ## A246683.P12369132152656516547

`A249813(A250244(n+1))`
-/

namespace A246683.P12369132152656516547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249813 (A250244 (n + 1)).toNat

end

end A246683.P12369132152656516547

/-! ## A246683.P3986098657441346329

`A249813(A249815(A249815(A246684(A249813(n+1)))))`
-/

namespace A246683.P3986098657441346329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249813 (A249815 (A249815 (A246684 (A249813 (n + 1)).toNat).toNat).toNat).toNat

end

end A246683.P3986098657441346329

/-! ## A246683.P2883022099811563060

`A249813(A249815(n+1))%p?[A074742(n)]`
-/

namespace A246683.P2883022099811563060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249813 (A249815 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A246683.P2883022099811563060

/-! ## A246683.P6968709546930430677

`A249813(A249816(n+1)%A114042(2*(n+2)))`
-/

namespace A246683.P6968709546930430677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249813 (Int.tmod (A249816 (n + 1)) (A114042 (2 * (n + 2)))).toNat

end

end A246683.P6968709546930430677

/-! ## A246683.P3888138868009627310

`A249814(A249813(A249813(A250243(n+1))))`
-/

namespace A246683.P3888138868009627310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249814 (A249813 (A249813 (A250243 (n + 1)).toNat).toNat).toNat

end

end A246683.P3888138868009627310

/-!
# A246684: "Caves of prime shift" permutation: a(1) = 1, a(n) = A242378(A007814(n), 2*a(A003602(n))) - 1.

The programs for A246684, there is no canonical definition to state claims against.
-/

/-! ## A246684.P2836868267600612424

`A250243(A249814(n+1))`
-/

namespace A246684.P2836868267600612424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250243 (A249814 (n + 1)).toNat

end

end A246684.P2836868267600612424

/-! ## A246684.P8144870415044866297

`A249816(A249814(n+1))%p?[A158493(n)]`
-/

namespace A246684.P8144870415044866297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249816 (A249814 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A246684.P8144870415044866297

/-! ## A246684.P13515522760365854879

`A249816(A249814(n+1)%A020602(n+1))`
-/

namespace A246684.P13515522760365854879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (Int.tmod (A249814 (n + 1)) (A020602 (n + 1))).toNat

end

end A246684.P13515522760365854879

/-! ## A246684.P1680944434544560864

`A001221(A249782(n+1))*A249816(A249814(n+1))`
-/

namespace A246684.P1680944434544560864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A249782 (n + 1)).toNat * A249816 (A249814 (n + 1)).toNat

end

end A246684.P1680944434544560864

/-! ## A246684.P13399664480631358934

`A250244(A249814(A114881(A038722(A249742(n+1)))))`
-/

namespace A246684.P13399664480631358934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250244 (A249814 (A114881 (A038722 (A249742 (n + 1)).toNat).toNat).toNat).toNat

end

end A246684.P13399664480631358934

/-!
# A246685: Run Length Transform of sequence 1, 3, 5, 17, 257, 65537, ... (1 followed by Fermat numbers).

The programs for A246685, there is no canonical definition to state claims against.
-/

/-! ## A246685.P14282985378826412371

`A000005(A227349(n)^A245195(n))`
-/

namespace A246685.P14282985378826412371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A227349 n : ℚ) ^ (A245195 n : ℤ))).toNat

end

end A246685.P14282985378826412371

/-! ## A246685.P2546847646102368301

`A000005(A284580(n)^A245195(n))`
-/

namespace A246685.P2546847646102368301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A284580 n : ℚ) ^ (A245195 n : ℤ))).toNat

end

end A246685.P2546847646102368301

/-! ## A246685.P10840467685335336920

`A001222(A227349(n)^A245195(n))+1`
-/

namespace A246685.P10840467685335336920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A227349 n : ℚ) ^ (A245195 n : ℤ))).toNat + 1

end

end A246685.P10840467685335336920

/-! ## A246685.P10654762968946613453

`A001222(A284580(n)^A245195(n))+1`
-/

namespace A246685.P10654762968946613453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A284580 n : ℚ) ^ (A245195 n : ℤ))).toNat + 1

end

end A246685.P10654762968946613453

/-! ## A246685.P15775352186632979551

`A360802(A227349(n)%A360803(n+1))`
-/

namespace A246685.P15775352186632979551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360802 (Int.tmod (A227349 n) (A360803 (n + 1))).toNat

end

end A246685.P15775352186632979551

/-!
# A246688: Triangle in which n-th row lists lexicographically ordered increasing lists of parts of all partitions of n into distinct parts.

The programs for A246688, there is no canonical definition to state claims against.
-/

/-! ## A246688.P2737762055433480096

`A139124(A336815(n))`
-/

namespace A246688.P2737762055433480096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139124 (A336815 n).toNat

end

end A246688.P2737762055433480096

/-! ## A246688.P15525938107534556674

`A035612(A094837(n+1))`
-/

namespace A246688.P15525938107534556674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A094837 (n + 1)).toNat

end

end A246688.P15525938107534556674

/-! ## A246688.P6754597219025162103

`A326194(5*A316349(n+1))`
-/

namespace A246688.P6754597219025162103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326194 (5 * A316349 (n + 1)).toNat

end

end A246688.P6754597219025162103

/-! ## A246688.P15763137042171751527

`∑{e}[A194986(A131577(n+3)), #]`
-/

namespace A246688.P15763137042171751527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (A131577 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A246688.P15763137042171751527

/-! ## A246688.P9076299371137497581

`A212625(A208510(3*n+5))-A093957(n+5)`
-/

namespace A246688.P9076299371137497581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A208510 (3 * n + 5)).toNat - A093957 (n + 5)

end

end A246688.P9076299371137497581

/-!
# A246689: Expansion of e.g.f. 1/(1 - x^3)^(1 + 1/x + 1/x^2).

The programs for A246689, there is no canonical definition to state claims against.
-/

/-! ## A246689.P1744144561530686804

`A004525(A118589(n)+A000262(n))`
-/

namespace A246689.P1744144561530686804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A118589 n + A000262 n).toNat

end

end A246689.P1744144561530686804

/-! ## A246689.P1072305250377905473

`A029578(A118589(n)+A000262(n))`
-/

namespace A246689.P1072305250377905473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A118589 n + A000262 n).toNat

end

end A246689.P1072305250377905473

/-! ## A246689.P18252334327872695817

`A106249(A118589(n)+A000262(n))`
-/

namespace A246689.P18252334327872695817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A118589 n + A000262 n).toNat

end

end A246689.P18252334327872695817

/-!
# A246690: Number A(n,k) of compositions of n into parts of the k-th list of distinct parts in the order given by A246688; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A246690, there is no canonical definition to state claims against.
-/

/-! ## A246690.P17113237057669739974

`A265744(A246720(n)^A114388(2*(n+2)))`
-/

namespace A246690.P17113237057669739974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (SequenceMachineLib.roundAway ((A246720 n : ℚ) ^ (A114388 (2 * (n + 2)) : ℤ))).toNat

end

end A246690.P17113237057669739974

/-! ## A246690.P17447135471515915463

`A035614(A246720(n)^A004526(n))`
-/

namespace A246690.P17447135471515915463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 (SequenceMachineLib.roundAway ((A246720 n : ℚ) ^ (A004526 n : ℤ))).toNat

end

end A246690.P17447135471515915463

/-! ## A246690.P14079973224690976061

`A055640(A246720(n)^A008611(n))`
-/

namespace A246690.P14079973224690976061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A246720 n : ℚ) ^ (A008611 n : ℤ))).toNat

end

end A246690.P14079973224690976061

/-! ## A246690.P11005659636614518392

`A055640(A246720(n)^A008620(n))`
-/

namespace A246690.P11005659636614518392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A246720 n : ℚ) ^ (A008620 n : ℤ))).toNat

end

end A246690.P11005659636614518392

/-! ## A246690.P7809729654972128618

`A055640(A246720(n)^A008621(n))`
-/

namespace A246690.P7809729654972128618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A246720 n : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A246690.P7809729654972128618

/-!
# A246691: Number of compositions of n into parts of the n-th list of distinct parts in the order given by A246688.

The programs for A246691, there is no canonical definition to state claims against.
-/

/-! ## A246691.P647048621741204497

`A246690(∑[4*n])`
-/

namespace A246691.P647048621741204497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246690 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246691.P647048621741204497

/-! ## A246691.P2350227100944239578

`char[A001281(n)]*A246690(A106232(n+1))`
-/

namespace A246691.P2350227100944239578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246690 (A106232 (n + 1)).toNat

end

end A246691.P2350227100944239578

/-! ## A246691.P7336512284452784484

`char[A002487(n)]*A246690(A106232(n+1))`
-/

namespace A246691.P7336512284452784484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246690 (A106232 (n + 1)).toNat

end

end A246691.P7336512284452784484

/-! ## A246691.P1229981717185337318

`char[A004442(n)]*A246690(A106232(n+1))`
-/

namespace A246691.P1229981717185337318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246690 (A106232 (n + 1)).toNat

end

end A246691.P1229981717185337318

/-! ## A246691.P17101241970538008073

`char[A008612(n)]*A246690(A106232(n+1))`
-/

namespace A246691.P17101241970538008073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246690 (A106232 (n + 1)).toNat

end

end A246691.P17101241970538008073

/-! ## A246691.P14815080846404528709

`A246690(A106232(n+1))+A000035(2*n)`
-/

namespace A246691.P14815080846404528709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246690 (A106232 (n + 1)).toNat + A000035 (2 * n)

end

end A246691.P14815080846404528709

/-! ## A246691.P2069123849623822859

`A001222(A007918(n))*A246690(A106232(n+1))`
-/

namespace A246691.P2069123849623822859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A246690 (A106232 (n + 1)).toNat

end

end A246691.P2069123849623822859

/-! ## A246691.P1477704885807712326

`A246690(A106232(n+1))+A008683(A001248(n+1))`
-/

namespace A246691.P1477704885807712326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246690 (A106232 (n + 1)).toNat + A008683 (A001248 (n + 1)).toNat

end

end A246691.P1477704885807712326

/-!
# A246692: Numbers k such that k | A000129(k).

The programs for A246692, the canonical program `A246692.P5270854730874171209` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246692 has offset 1).

The definition of A246692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246692.P5270854730874171209

`record[gcd(n+1, A270388(2*(n+1)))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A246692

/-- `record[gcd(n+1, A270388(2*(n+1)))]` -/
def P5270854730874171209.Spec : Prop :=
  ∀ n, (P5270854730874171209.a n : ℤ) = A246692 (n + 1)

theorem P5270854730874171209.correct : P5270854730874171209.Spec := by
  intro n
  simp only [A246692, Nat.add_sub_cancel]

end A246692

/-! ## A246692.P8483549443178310226

`record[A032742(A270342(n+1))]`
-/

namespace A246692.P8483549443178310226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A270342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246692.P8483549443178310226

namespace A246692

/-- `record[A032742(A270342(n+1))]` -/
def P8483549443178310226.Spec : Prop :=
  ∀ n, P8483549443178310226.a n = A246692 (n + 1)

end A246692

/-! ## A246692.P3346428618730767783

`record[A003602(A270342(n+1)-1)]`
-/

namespace A246692.P3346428618730767783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A270342 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246692.P3346428618730767783

namespace A246692

/-- `record[A003602(A270342(n+1)-1)]` -/
def P3346428618730767783.Spec : Prop :=
  ∀ n, P3346428618730767783.a n = A246692 (n + 1)

end A246692

/-! ## A246692.P3371835986446243467

`record[A260739(A270342(A126759(n)))]`
-/

namespace A246692.P3371835986446243467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A270342 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246692.P3371835986446243467

namespace A246692

/-- `record[A260739(A270342(A126759(n)))]` -/
def P3371835986446243467.Spec : Prop :=
  ∀ n, P3371835986446243467.a n = A246692 (n + 1)

end A246692

/-! ## A246692.P16105953438940860

`record[A260739(A270342(A003602(n+1)))]`
-/

namespace A246692.P16105953438940860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A270342 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246692.P16105953438940860

namespace A246692

/-- `record[A260739(A270342(A003602(n+1)))]` -/
def P16105953438940860.Spec : Prop :=
  ∀ n, P16105953438940860.a n = A246692 (n + 1)

end A246692

/-! ## A246692.P11822170104954796175

`record[A260739(A270342(A260739(n+1)))]`
-/

namespace A246692.P11822170104954796175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A270342 (A260739 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246692.P11822170104954796175

namespace A246692

/-- `record[A260739(A270342(A260739(n+1)))]` -/
def P11822170104954796175.Spec : Prop :=
  ∀ n, P11822170104954796175.a n = A246692 (n + 1)

end A246692

/-! ## A246692.P6253307159997297771

`lt[A270388(A233583(n+1)+n), 1]`
-/

namespace A246692.P6253307159997297771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (A233583 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246692.P6253307159997297771

namespace A246692

/-- `lt[A270388(A233583(n+1)+n), 1]` -/
def P6253307159997297771.Spec : Prop :=
  ∀ n, (P6253307159997297771.a n : ℤ) = A246692 (n + 1)

end A246692

/-!
# A246693: Integers of the form A000129(k)/k.

The programs for A246693, there is no canonical definition to state claims against.
-/

/-! ## A246693.P10054212209690846968

`∏{p}[A287679(n+1), A106617(#)]`
-/

namespace A246693.P10054212209690846968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A106617 p

end

end A246693.P10054212209690846968

/-! ## A246693.P1348569814671016940

`A273943(∏{p}[A287679(n+1), #])`
-/

namespace A246693.P1348569814671016940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A246693.P1348569814671016940

/-!
# A246694: Triangle read by rows: T(n,k) = T(n,k-2) + 1 if n > 1 and 2 <= k <= n; T(0,0) = 1, T(1,0) = 1, T(1,1) = 2; if n > 1 is odd, then T(n,0) = T(n-1,n-2) + 1 and T(n,1) = T(n-1,n-1) + 1; if n > 1 is even, then T(n,0) = T(n-1,n-1) + 1 and T(n,1) = T(n-1,n-2) + 1.

The programs for A246694, the canonical program `A246694.P8696891911788978763` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246694 has offset 0).

The definition of A246694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246694.P8696891911788978763

`A209278(A204164(n+1)+A161680(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246694

/-- `A209278(A204164(n+1)+A161680(n))` -/
def P8696891911788978763.Spec : Prop :=
  ∀ n, P8696891911788978763.a n = A246694 n

theorem P8696891911788978763.correct : P8696891911788978763.Spec := by
  intro n
  simp only [A246694]

end A246694

/-! ## A246694.P4862499092876591369

`ceil(A246696(n)/2)`
-/

namespace A246694.P4862499092876591369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A246696 n : ℚ) / 2⌉

end

end A246694.P4862499092876591369

namespace A246694

/-- `ceil(A246696(n)/2)` -/
def P4862499092876591369.Spec : Prop :=
  ∀ n, P4862499092876591369.a n = A246694 n

end A246694

/-! ## A246694.P17533864372302477446

`round(A246696(n-char[1])/2)`
-/

namespace A246694.P17533864372302477446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A246696 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / 2)

end

end A246694.P17533864372302477446

namespace A246694

/-- `round(A246696(n-char[1])/2)` -/
def P17533864372302477446.Spec : Prop :=
  ∀ n, P17533864372302477446.a n = A246694 n

end A246694

/-! ## A246694.P5974982944748664911

`A065033(A246696(n))`
-/

namespace A246694.P5974982944748664911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A246696 n).toNat

end

end A246694.P5974982944748664911

namespace A246694

/-- `A065033(A246696(n))` -/
def P5974982944748664911.Spec : Prop :=
  ∀ n, P5974982944748664911.a n = A246694 n

end A246694

/-! ## A246694.P8719901514404538936

`A004526(A246696(n)+1)`
-/

namespace A246694.P8719901514404538936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A246696 n + 1).toNat

end

end A246694.P8719901514404538936

namespace A246694

/-- `A004526(A246696(n)+1)` -/
def P8719901514404538936.Spec : Prop :=
  ∀ n, P8719901514404538936.a n = A246694 n

end A246694

/-! ## A246694.P6379415299703050887

`(A246696(n)+A128174(n+1))/2`
-/

namespace A246694.P6379415299703050887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246696 n + A128174 (n + 1) : ℚ) / 2

end

end A246694.P6379415299703050887

namespace A246694

/-- `(A246696(n)+A128174(n+1))/2` -/
def P6379415299703050887.Spec : Prop :=
  ∀ n, P6379415299703050887.a n = (A246694 n : ℚ)

end A246694

/-! ## A246694.P9390227950591125180

`round(A246696(n)/2)%∑[A000032(n)]`
-/

namespace A246694.P9390227950591125180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A246696 n : ℚ) / 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246694.P9390227950591125180

namespace A246694

/-- `round(A246696(n)/2)%∑[A000032(n)]` -/
def P9390227950591125180.Spec : Prop :=
  ∀ n, P9390227950591125180.a n = A246694 n

end A246694

/-! ## A246694.P3141408268659697412

`A007318(C(2, n))*round(A246696(n)/2)`
-/

namespace A246694.P3141408268659697412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A246696 n : ℚ) / 2)

end

end A246694.P3141408268659697412

namespace A246694

/-- `A007318(C(2, n))*round(A246696(n)/2)` -/
def P3141408268659697412.Spec : Prop :=
  ∀ n, P3141408268659697412.a n = A246694 n

end A246694

/-! ## A246694.P14623794279259597213

`A000041(C(2, n+2))*round(A246696(n)/2)`
-/

namespace A246694.P14623794279259597213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * SequenceMachineLib.roundAway ((A246696 n : ℚ) / 2)

end

end A246694.P14623794279259597213

namespace A246694

/-- `A000041(C(2, n+2))*round(A246696(n)/2)` -/
def P14623794279259597213.Spec : Prop :=
  ∀ n, P14623794279259597213.a n = A246694 n

end A246694

/-! ## A246694.P7814573443369801555

`A000108(C(2, n+2))*round(A246696(n)/2)`
-/

namespace A246694.P7814573443369801555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * SequenceMachineLib.roundAway ((A246696 n : ℚ) / 2)

end

end A246694.P7814573443369801555

namespace A246694

/-- `A000108(C(2, n+2))*round(A246696(n)/2)` -/
def P7814573443369801555.Spec : Prop :=
  ∀ n, P7814573443369801555.a n = A246694 n

end A246694

/-!
# A246695: Row sums of the triangular array A246694.

The programs for A246695, the canonical program `A246695.P17912927996560494877` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246695 has offset 0).

The definition of A246695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246695.P17912927996560494877

`∑[∑[n*gcd(2, n)]+1]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246695

/-- `∑[∑[n*gcd(2, n)]+1]` -/
def P17912927996560494877.Spec : Prop :=
  ∀ n, (P17912927996560494877.a n : ℤ) = A246695 n

theorem P17912927996560494877.correct : P17912927996560494877.Spec := by
  intro n
  simp only [A246695]

end A246695

/-! ## A246695.P9115663704423027246

`∑[∑[n*(2-n%2)]+1]`
-/

namespace A246695.P9115663704423027246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246695.P9115663704423027246

namespace A246695

/-- `∑[∑[n*(2-n%2)]+1]` -/
def P9115663704423027246.Spec : Prop :=
  ∀ n, P9115663704423027246.a n = A246695 n

end A246695

/-! ## A246695.P8266233625515880193

`∑[floor(comp[3*n]²/3)+1]`
-/

namespace A246695.P8266233625515880193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2 : ℚ) / 3⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246695.P8266233625515880193

namespace A246695

/-- `∑[floor(comp[3*n]²/3)+1]` -/
def P8266233625515880193.Spec : Prop :=
  ∀ n, P8266233625515880193.a n = A246695 n

end A246695

/-! ## A246695.P13792965839302064948

`∑[∑[2*n/(and(1, n)+1)]]+n+1`
-/

namespace A246695.P13792965839302064948
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.land 1 n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℚ)

end

end A246695.P13792965839302064948

namespace A246695

/-- `∑[∑[2*n/(and(1, n)+1)]]+n+1` -/
def P13792965839302064948.Spec : Prop :=
  ∀ n, P13792965839302064948.a n = (A246695 n : ℚ)

end A246695

/-! ## A246695.P13791611131814909095

`∑[A014255(n)]-∑[n]`
-/

namespace A246695.P13791611131814909095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A246695.P13791611131814909095

namespace A246695

/-- `∑[A014255(n)]-∑[n]` -/
def P13791611131814909095.Spec : Prop :=
  ∀ n, P13791611131814909095.a n = A246695 n

end A246695

/-! ## A246695.P10316605783134766705

`A128624(n+1)-∑[n]`
-/

namespace A246695.P10316605783134766705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128624 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A246695.P10316605783134766705

namespace A246695

/-- `A128624(n+1)-∑[n]` -/
def P10316605783134766705.Spec : Prop :=
  ∀ n, P10316605783134766705.a n = A246695 n

end A246695

/-! ## A246695.P4303131100073764942

`A257083(n)+a(n-1)` with `a(0)=1`
-/

namespace A246695.P4303131100073764942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257083 n + a (n - 1)

end

end A246695.P4303131100073764942

namespace A246695

/-- `A257083(n)+a(n-1)` -/
def P4303131100073764942.Spec : Prop :=
  ∀ n, P4303131100073764942.a n = A246695 n

end A246695

/-! ## A246695.P18188683482030005775

`∑[A001082(n+1)]+n+1`
-/

namespace A246695.P18188683482030005775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A246695.P18188683482030005775

namespace A246695

/-- `∑[A001082(n+1)]+n+1` -/
def P18188683482030005775.Spec : Prop :=
  ∀ n, P18188683482030005775.a n = A246695 n

end A246695

/-! ## A246695.P1217763850320339592

`(A317614(n+1)+n+1)/2`
-/

namespace A246695.P1217763850320339592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317614 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A246695.P1217763850320339592

namespace A246695

/-- `(A317614(n+1)+n+1)/2` -/
def P1217763850320339592.Spec : Prop :=
  ∀ n, P1217763850320339592.a n = (A246695 n : ℚ)

end A246695

/-! ## A246695.P9868079450445806761

`A101881(n)+A002717(n)`
-/

namespace A246695.P9868079450445806761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n + A002717 n

end

end A246695.P9868079450445806761

namespace A246695

/-- `A101881(n)+A002717(n)` -/
def P9868079450445806761.Spec : Prop :=
  ∀ n, P9868079450445806761.a n = A246695 n

end A246695

/-! ## A246695.P14902395705446765923

`A131941(n)+A005993(n)`
-/

namespace A246695.P14902395705446765923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n + A005993 n

end

end A246695.P14902395705446765923

namespace A246695

/-- `A131941(n)+A005993(n)` -/
def P14902395705446765923.Spec : Prop :=
  ∀ n, P14902395705446765923.a n = A246695 n

end A246695

/-! ## A246695.P15491070886353520282

`A077043(n)+A005999(n+1)`
-/

namespace A246695.P15491070886353520282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + A005999 (n + 1)

end

end A246695.P15491070886353520282

namespace A246695

/-- `A077043(n)+A005999(n+1)` -/
def P15491070886353520282.Spec : Prop :=
  ∀ n, P15491070886353520282.a n = A246695 n

end A246695

/-! ## A246695.P9402593626598308306

`A005997(n+1)-A002620(n)`
-/

namespace A246695.P9402593626598308306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1) - A002620 n

end

end A246695.P9402593626598308306

namespace A246695

/-- `A005997(n+1)-A002620(n)` -/
def P9402593626598308306.Spec : Prop :=
  ∀ n, P9402593626598308306.a n = A246695 n

end A246695

/-! ## A246695.P8566579829817300893

`A199771(n+1)-A093353(n)`
-/

namespace A246695.P8566579829817300893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199771 (n + 1) - A093353 n

end

end A246695.P8566579829817300893

namespace A246695

/-- `A199771(n+1)-A093353(n)` -/
def P8566579829817300893.Spec : Prop :=
  ∀ n, P8566579829817300893.a n = A246695 n

end A246695

/-! ## A246695.P12926094631704583936

`A212968(n)-2*A000292(n)`
-/

namespace A246695.P12926094631704583936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 n - 2 * A000292 n

end

end A246695.P12926094631704583936

namespace A246695

/-- `A212968(n)-2*A000292(n)` -/
def P12926094631704583936.Spec : Prop :=
  ∀ n, P12926094631704583936.a n = A246695 n

end A246695

/-! ## A246695.P6902306900447710623

`A272459(n+1)+A254749(n+1)`
-/

namespace A246695.P6902306900447710623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272459 (n + 1) + A254749 (n + 1)

end

end A246695.P6902306900447710623

namespace A246695

/-- `A272459(n+1)+A254749(n+1)` -/
def P6902306900447710623.Spec : Prop :=
  ∀ n, P6902306900447710623.a n = A246695 n

end A246695

/-! ## A246695.P82510241161795025

`A143785(n+1)-A171769(n+1)`
-/

namespace A246695.P82510241161795025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143785 (n + 1) - A171769 (n + 1)

end

end A246695.P82510241161795025

namespace A246695

/-- `A143785(n+1)-A171769(n+1)` -/
def P82510241161795025.Spec : Prop :=
  ∀ n, P82510241161795025.a n = A246695 n

end A246695

/-! ## A246695.P17063820954400050298

`A145066(n+1)-A003451(n+5)`
-/

namespace A246695.P17063820954400050298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145066 (n + 1) - A003451 (n + 5)

end

end A246695.P17063820954400050298

namespace A246695

/-- `A145066(n+1)-A003451(n+5)` -/
def P17063820954400050298.Spec : Prop :=
  ∀ n, P17063820954400050298.a n = A246695 n

end A246695

/-! ## A246695.P11229774372087987333

`A109900(n)+A109900(n)+A026741(n+1)`
-/

namespace A246695.P11229774372087987333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + (A109900 n + A026741 (n + 1))

end

end A246695.P11229774372087987333

namespace A246695

/-- `A109900(n)+A109900(n)+A026741(n+1)` -/
def P11229774372087987333.Spec : Prop :=
  ∀ n, P11229774372087987333.a n = A246695 n

end A246695

/-! ## A246695.P1673971117720045479

`A005997(n+1)-A004526(n)*A110654(n)`
-/

namespace A246695.P1673971117720045479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1) - A004526 n * A110654 n

end

end A246695.P1673971117720045479

namespace A246695

/-- `A005997(n+1)-A004526(n)*A110654(n)` -/
def P1673971117720045479.Spec : Prop :=
  ∀ n, P1673971117720045479.a n = A246695 n

end A246695

/-!
# A246696: Triangle t(n,k) = t(n,k-2) + 2 if n > 1 and 2 <= k <= n; t(0,0) = 1, t(1,0) = 2, t(1,1) = 3; if n > 1 is odd, then t(n,0) = t(n-1,n-2) + 2 and t(n,1) = t(n-1,n-1) + 2; if n > 1 is even, then t(n,0) = t(n-1,n-1) + 2 and t(n,1) = t(n-1,n-2) + 2.

The programs for A246696, there is no canonical definition to state claims against.
-/

/-! ## A246696.P8640324054949294343

`ceil(2*(n+1)*A246694(n)/(n+2))`
-/

namespace A246696.P8640324054949294343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (n + 1) : ℚ) * ((A246694 n : ℚ) / (n + 2 : ℚ))⌉

end

end A246696.P8640324054949294343

/-! ## A246696.P4793320211270788

`2*A246694(n)-A128174(n+1)`
-/

namespace A246696.P4793320211270788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246694 n - A128174 (n + 1)

end

end A246696.P4793320211270788

/-! ## A246696.P13273546473299423982

`A004277(A246694(n))-A128174(n+1)`
-/

namespace A246696.P13273546473299423982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A246694 n).toNat - A128174 (n + 1)

end

end A246696.P13273546473299423982

/-! ## A246696.P341989772658646603

`A004277(A246694(n))-val(A038481(n), 4)`
-/

namespace A246696.P341989772658646603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A246694 n).toNat - (SequenceMachineLib.valuation (A038481 n).toNat 4 : ℤ)

end

end A246696.P341989772658646603

/-! ## A246696.P17944591755868380058

`2*A246694(n)-A059841(A108872(n+1))`
-/

namespace A246696.P17944591755868380058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246694 n - A059841 (A108872 (n + 1)).toNat

end

end A246696.P17944591755868380058

/-! ## A246696.P2771451905969450402

`2*A246694(n)-A168561(n)/A046854(n)`
-/

namespace A246696.P2771451905969450402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A246694 n : ℚ) - (A168561 n : ℚ) / (A046854 n : ℚ)

end

end A246696.P2771451905969450402

/-! ## A246696.P15356353060561249812

`2*A246694(n)-ceil(A168561(n)/A007318(n))`
-/

namespace A246696.P15356353060561249812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246694 n - ⌈(A168561 n : ℚ) / (A007318 n : ℚ)⌉

end

end A246696.P15356353060561249812

/-! ## A246696.P7977427199262353462

`A004273(A246694(n))+A000035(A025581(n))`
-/

namespace A246696.P7977427199262353462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A246694 n).toNat + A000035 (A025581 n).toNat

end

end A246696.P7977427199262353462

/-! ## A246696.P14986222219969672716

`A059841(A004736(n+1))+A004273(A246694(n))`
-/

namespace A246696.P14986222219969672716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004736 (n + 1)).toNat + A004273 (A246694 n).toNat

end

end A246696.P14986222219969672716

/-! ## A246696.P17868309284979495993

`A005843(A246694(n))-A059841(A108872(n+1))`
-/

namespace A246696.P17868309284979495993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A246694 n).toNat - A059841 (A108872 (n + 1)).toNat

end

end A246696.P17868309284979495993

/-!
# A246697: Row sums of the triangular array A246696.

The programs for A246697, the canonical program `A246697.P8265733685056776068` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246697 has offset 0).

The definition of A246697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246697.P8265733685056776068

`∑[n+1]+n*∑[or(1, n)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A246697

/-- `∑[n+1]+n*∑[or(1, n)]` -/
def P8265733685056776068.Spec : Prop :=
  ∀ n, (P8265733685056776068.a n : ℤ) = A246697 n

theorem P8265733685056776068.correct : P8265733685056776068.Spec := by
  intro n
  simp only [A246697]

end A246697

/-! ## A246697.P5636121128145976456

`∑[n+1]+lcm(n, ∑[or(1, n)])`
-/

namespace A246697.P5636121128145976456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A246697.P5636121128145976456

namespace A246697

/-- `∑[n+1]+lcm(n, ∑[or(1, n)])` -/
def P5636121128145976456.Spec : Prop :=
  ∀ n, (P5636121128145976456.a n : ℤ) = A246697 n

end A246697

/-! ## A246697.P17863231816863257522

`∑[(n+1)²+2*floor(n/2)²]`
-/

namespace A246697.P17863231816863257522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * ⌊(n : ℚ) / 2⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246697.P17863231816863257522

namespace A246697

/-- `∑[(n+1)²+2*floor(n/2)²]` -/
def P17863231816863257522.Spec : Prop :=
  ∀ n, P17863231816863257522.a n = A246697 n

end A246697

/-! ## A246697.P17459397386784922652

`ceil(cosh(log((n+1)^3+n*gcd(2, n))))`
-/

namespace A246697.P17459397386784922652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log ((n + 1) ^ 3 + n * Nat.gcd 2 n : ℝ))⌉

end

end A246697.P17459397386784922652

namespace A246697

/-- `ceil(cosh(log((n+1)^3+n*gcd(2, n))))` -/
def P17459397386784922652.Spec : Prop :=
  ∀ n, P17459397386784922652.a n = A246697 n

end A246697

/-! ## A246697.P10245768139465584493

`(n+1)*∑[n+1]-n*∑[n%2]`
-/

namespace A246697.P10245768139465584493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)

end

end A246697.P10245768139465584493

namespace A246697

/-- `(n+1)*∑[n+1]-n*∑[n%2]` -/
def P10245768139465584493.Spec : Prop :=
  ∀ n, P10245768139465584493.a n = A246697 n

end A246697

/-! ## A246697.P8396043264444549872

`∑[A354594(n)]+(n+1)²`
-/

namespace A246697.P8396043264444549872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A246697.P8396043264444549872

namespace A246697

/-- `∑[A354594(n)]+(n+1)²` -/
def P8396043264444549872.Spec : Prop :=
  ∀ n, P8396043264444549872.a n = A246697 n

end A246697

/-! ## A246697.P5494177195903742468

`A249127(n)+A006001(n)`
-/

namespace A246697.P5494177195903742468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249127 n + A006001 n

end

end A246697.P5494177195903742468

namespace A246697

/-- `A249127(n)+A006001(n)` -/
def P5494177195903742468.Spec : Prop :=
  ∀ n, P5494177195903742468.a n = A246697 n

end A246697

/-! ## A246697.P7289622859312816478

`A130472(n)+A074149(n+1)`
-/

namespace A246697.P7289622859312816478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A074149 (n + 1)

end

end A246697.P7289622859312816478

namespace A246697

/-- `A130472(n)+A074149(n+1)` -/
def P7289622859312816478.Spec : Prop :=
  ∀ n, P7289622859312816478.a n = A246697 n

end A246697

/-! ## A246697.P13030127857637918382

`A317614(n+1)+A110654(n)`
-/

namespace A246697.P13030127857637918382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) + A110654 n

end

end A246697.P13030127857637918382

namespace A246697

/-- `A317614(n+1)+A110654(n)` -/
def P13030127857637918382.Spec : Prop :=
  ∀ n, P13030127857637918382.a n = A246697 n

end A246697

/-! ## A246697.P1773429076024162041

`A323724(n)+A134238(n+1)`
-/

namespace A246697.P1773429076024162041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323724 n + A134238 (n + 1)

end

end A246697.P1773429076024162041

namespace A246697

/-- `A323724(n)+A134238(n+1)` -/
def P1773429076024162041.Spec : Prop :=
  ∀ n, P1773429076024162041.a n = A246697 n

end A246697

/-! ## A246697.P14453229261340347010

`A319556(n+1)+A212976(n)`
-/

namespace A246697.P14453229261340347010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319556 (n + 1) + A212976 n

end

end A246697.P14453229261340347010

namespace A246697

/-- `A319556(n+1)+A212976(n)` -/
def P14453229261340347010.Spec : Prop :=
  ∀ n, P14453229261340347010.a n = A246697 n

end A246697

/-! ## A246697.P8226286830298971965

`A074149(n+1)-A001057(n)`
-/

namespace A246697.P8226286830298971965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 1) - A001057 n

end

end A246697.P8226286830298971965

namespace A246697

/-- `A074149(n+1)-A001057(n)` -/
def P8226286830298971965.Spec : Prop :=
  ∀ n, P8226286830298971965.a n = A246697 n

end A246697

/-! ## A246697.P3654980296518307763

`A132127(n+1)-A026741(n)`
-/

namespace A246697.P3654980296518307763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132127 (n + 1) - A026741 n

end

end A246697.P3654980296518307763

namespace A246697

/-- `A132127(n+1)-A026741(n)` -/
def P3654980296518307763.Spec : Prop :=
  ∀ n, P3654980296518307763.a n = A246697 n

end A246697

/-! ## A246697.P17003656028908038306

`A138179(n+1)-A074378(n)`
-/

namespace A246697.P17003656028908038306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138179 (n + 1) - A074378 n

end

end A246697.P17003656028908038306

namespace A246697

/-- `A138179(n+1)-A074378(n)` -/
def P17003656028908038306.Spec : Prop :=
  ∀ n, P17003656028908038306.a n = A246697 n

end A246697

/-! ## A246697.P18080389367006987230

`A180857(n+1)-A035608(n)`
-/

namespace A246697.P18080389367006987230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180857 (n + 1) - A035608 n

end

end A246697.P18080389367006987230

namespace A246697

/-- `A180857(n+1)-A035608(n)` -/
def P18080389367006987230.Spec : Prop :=
  ∀ n, P18080389367006987230.a n = A246697 n

end A246697

/-! ## A246697.P2941872592479302936

`A006000(n)+n*A008619(n)`
-/

namespace A246697.P2941872592479302936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n + (n : ℤ) * A008619 n

end

end A246697.P2941872592479302936

namespace A246697

/-- `A006000(n)+n*A008619(n)` -/
def P2941872592479302936.Spec : Prop :=
  ∀ n, P2941872592479302936.a n = A246697 n

end A246697

/-! ## A246697.P12307155162556868976

`A142150(n)+∑[∑[A008486(n)]]`
-/

namespace A246697.P12307155162556868976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246697.P12307155162556868976

namespace A246697

/-- `A142150(n)+∑[∑[A008486(n)]]` -/
def P12307155162556868976.Spec : Prop :=
  ∀ n, P12307155162556868976.a n = A246697 n

end A246697

/-! ## A246697.P14768467017374596133

`A182260(n+1)+A140144(n+1)`
-/

namespace A246697.P14768467017374596133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) + A140144 (n + 1)

end

end A246697.P14768467017374596133

namespace A246697

/-- `A182260(n+1)+A140144(n+1)` -/
def P14768467017374596133.Spec : Prop :=
  ∀ n, P14768467017374596133.a n = A246697 n

end A246697

/-! ## A246697.P12028315526495052829

`A323723(n+1)+A004526(n)+1`
-/

namespace A246697.P12028315526495052829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323723 (n + 1) + (A004526 n + 1)

end

end A246697.P12028315526495052829

namespace A246697

/-- `A323723(n+1)+A004526(n)+1` -/
def P12028315526495052829.Spec : Prop :=
  ∀ n, P12028315526495052829.a n = A246697 n

end A246697

/-! ## A246697.P9809278353260586205

`A317614(n+1)+n-A004526(n)`
-/

namespace A246697.P9809278353260586205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) + ((n : ℤ) - A004526 n)

end

end A246697.P9809278353260586205

namespace A246697

/-- `A317614(n+1)+n-A004526(n)` -/
def P9809278353260586205.Spec : Prop :=
  ∀ n, P9809278353260586205.a n = A246697 n

end A246697

/-!
# A246698: Inverse of A246696 considered as a permutation of the positive integers.

The programs for A246698, there is no canonical definition to state claims against.
-/

/-! ## A246698.P14150163190380000563

`A261348(A010702(n)*A186219(n+1))`
-/

namespace A246698.P14150163190380000563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261348 (A010702 n * A186219 (n + 1)).toNat

end

end A246698.P14150163190380000563

/-! ## A246698.P4610941070278272173

`A163563(A266072(n)+∑[A163563(n+1)])`
-/

namespace A246698.P4610941070278272173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A266072 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246698.P4610941070278272173

/-! ## A246698.P15700901371473824147

`A318573(n+1)+A226046(A278041(n)-1)`
-/

namespace A246698.P15700901371473824147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (n + 1) + A226046 (A278041 n - 1).toNat

end

end A246698.P15700901371473824147

/-! ## A246698.P14269329941489217276

`A318573(n+1)+A226046(A003146(n+1)-2)`
-/

namespace A246698.P14269329941489217276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (n + 1) + A226046 (A003146 (n + 1) - 2).toNat

end

end A246698.P14269329941489217276

/-! ## A246698.P14710750972375263796

`A318573(n+1)+A226046(A278041(n))`
-/

namespace A246698.P14710750972375263796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (n + 1) + A226046 (A278041 n).toNat

end

end A246698.P14710750972375263796

/-!
# A246699: Squarefree n such that C(2^n - 1, n) is also squarefree, where C is the binomial coefficient.

The programs for A246699, there is no canonical definition to state claims against.
-/

/-! ## A246699.P10137695886977796662

`record[∏{p}[A245569(n+1), #]]`
-/

namespace A246699.P10137695886977796662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245569 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246699.P10137695886977796662

/-! ## A246699.P11512591876910547282

`filter[A245569(n+1), A098725(#)]`
-/

namespace A246699.P11512591876910547282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A246699.P11512591876910547282

/-! ## A246699.P4413171210683990791

`filter[A245569(n+1), A341625(#)]`
-/

namespace A246699.P4413171210683990791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A246699.P4413171210683990791

/-! ## A246699.P5388323137122233023

`filter[A245569(n+1), A359550(#)]`
-/

namespace A246699.P5388323137122233023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A246699.P5388323137122233023

/-! ## A246699.P8433019834460123673

`filter[A245569(n+2), A008966(#)]`
-/

namespace A246699.P8433019834460123673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A246699.P8433019834460123673

