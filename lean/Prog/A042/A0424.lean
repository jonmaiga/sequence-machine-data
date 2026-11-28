import SequenceMachineLib.Basic
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
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C037
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C013
import Seq.B003.C000
import Seq.B009.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A042401: Denominators of continued fraction convergents to sqrt(727).

The programs for A042401, there is no canonical definition to state claims against.
-/

/-! ## A042401.P12035006603204818872

`A140106(A042403(n))+1`
-/

namespace A042401.P12035006603204818872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A042403 n).toNat + 1

end

end A042401.P12035006603204818872

/-!
# A042402: Numerators of continued fraction convergents to sqrt(728).

The programs for A042402, the canonical program `A042402.P7287028875296336105` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042402 has offset 0).

The definition of A042402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042402.P7287028875296336105

`ogf((26+27x+26x^2-x^3)/(1-54x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042402

/-- `ogf((26+27x+26x^2-x^3)/(1-54x^2+x^4))` -/
def P7287028875296336105.Spec : Prop :=
  ∀ n, P7287028875296336105.a n = A042402 n

theorem P7287028875296336105.correct : P7287028875296336105.Spec := by
  intro n
  simp only [A042402]

end A042402

/-! ## A042402.P7135363270351197471

`gcd(2, n)*A041336(n)`
-/

namespace A042402.P7135363270351197471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041336 n

end

end A042402.P7135363270351197471

namespace A042402

/-- `gcd(2, n)*A041336(n)` -/
def P7135363270351197471.Spec : Prop :=
  ∀ n, P7135363270351197471.a n = A042402 n

end A042402

/-! ## A042402.P9551148630179717553

`A000034(n+1)*A041336(n)`
-/

namespace A042402.P9551148630179717553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041336 n

end

end A042402.P9551148630179717553

namespace A042402

/-- `A000034(n+1)*A041336(n)` -/
def P9551148630179717553.Spec : Prop :=
  ∀ n, P9551148630179717553.a n = A042402 n

end A042402

/-! ## A042402.P12520091196080341380

`A040001(n+2)*A041336(n)`
-/

namespace A042402.P12520091196080341380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041336 n

end

end A042402.P12520091196080341380

namespace A042402

/-- `A040001(n+2)*A041336(n)` -/
def P12520091196080341380.Spec : Prop :=
  ∀ n, P12520091196080341380.a n = A042402 n

end A042402

/-! ## A042402.P17939267751236714363

`A041336(n)*A288699(n+4)`
-/

namespace A042402.P17939267751236714363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041336 n * A288699 (n + 4)

end

end A042402.P17939267751236714363

namespace A042402

/-- `A041336(n)*A288699(n+4)` -/
def P17939267751236714363.Spec : Prop :=
  ∀ n, P17939267751236714363.a n = A042402 n

end A042402

/-! ## A042402.P11791357951296089008

`2/A000034(n)*A041336(n)`
-/

namespace A042402.P11791357951296089008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041336 n : ℚ)

end

end A042402.P11791357951296089008

namespace A042402

/-- `2/A000034(n)*A041336(n)` -/
def P11791357951296089008.Spec : Prop :=
  ∀ n, P11791357951296089008.a n = (A042402 n : ℚ)

end A042402

/-! ## A042402.P9872352950368477327

`lcm(A040001(n+4), A041336(n))`
-/

namespace A042402.P9872352950368477327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 (n + 4)) (A041336 n)

end

end A042402.P9872352950368477327

namespace A042402

/-- `lcm(A040001(n+4), A041336(n))` -/
def P9872352950368477327.Spec : Prop :=
  ∀ n, (P9872352950368477327.a n : ℤ) = A042402 n

end A042402

/-! ## A042402.P9440617947211378616

`A000032(Δ[A008619(n)])*A041336(n)`
-/

namespace A042402.P9440617947211378616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat * A041336 n

end

end A042402.P9440617947211378616

namespace A042402

/-- `A000032(Δ[A008619(n)])*A041336(n)` -/
def P9440617947211378616.Spec : Prop :=
  ∀ n, P9440617947211378616.a n = A042402 n

end A042402

/-!
# A042403: Denominators of continued fraction convergents to sqrt(728).

The programs for A042403, the canonical program `A042403.P309998127687783611` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042403 has offset 0).

The definition of A042403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042403.P2777969564508925265

`ogf((1+x-x^2)/(1-54x^2+x^4))`
-/

namespace A042403.P2777969564508925265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -54, 0, 1] n

end

end A042403.P2777969564508925265

namespace A042403

/-- `ogf((1+x-x^2)/(1-54x^2+x^4))` -/
def P2777969564508925265.Spec : Prop :=
  ∀ n, P2777969564508925265.a n = A042403 n

end A042403

/-! ## A042403.P309998127687783611

`54*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=53, a(3)=54`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042403

/-- `54*a(n-2)-a(n-4)` -/
def P309998127687783611.Spec : Prop :=
  ∀ n, P309998127687783611.a n = A042403 n

theorem P309998127687783611.correct : P309998127687783611.Spec := by
  intro n
  simp only [A042403]

end A042403

/-! ## A042403.P12596741029450942027

`A041337(n)/A000034(n)`
-/

namespace A042403.P12596741029450942027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041337 n : ℚ) / (A000034 n : ℚ)

end

end A042403.P12596741029450942027

namespace A042403

/-- `A041337(n)/A000034(n)` -/
def P12596741029450942027.Spec : Prop :=
  ∀ n, P12596741029450942027.a n = (A042403 n : ℚ)

end A042403

/-! ## A042403.P9621788018162007756

`A041337(n)/A040001(n+1)`
-/

namespace A042403.P9621788018162007756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041337 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A042403.P9621788018162007756

namespace A042403

/-- `A041337(n)/A040001(n+1)` -/
def P9621788018162007756.Spec : Prop :=
  ∀ n, P9621788018162007756.a n = (A042403 n : ℚ)

end A042403

/-! ## A042403.P915574846464164428

`A041337(n)/A288699(n+3)`
-/

namespace A042403.P915574846464164428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041337 n : ℚ) / (A288699 (n + 3) : ℚ)

end

end A042403.P915574846464164428

namespace A042403

/-- `A041337(n)/A288699(n+3)` -/
def P915574846464164428.Spec : Prop :=
  ∀ n, P915574846464164428.a n = (A042403 n : ℚ)

end A042403

/-! ## A042403.P221308305294942748

`A041337(n)/(Δ[A008619(n)]+1)`
-/

namespace A042403.P221308305294942748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041337 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A042403.P221308305294942748

namespace A042403

/-- `A041337(n)/(Δ[A008619(n)]+1)` -/
def P221308305294942748.Spec : Prop :=
  ∀ n, P221308305294942748.a n = (A042403 n : ℚ)

end A042403

/-! ## A042403.P13103152490330238402

`A041337(n)/A041329(Δ[A008619(n)])`
-/

namespace A042403.P13103152490330238402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041337 n : ℚ) / (A041329 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042403.P13103152490330238402

namespace A042403

/-- `A041337(n)/A041329(Δ[A008619(n)])` -/
def P13103152490330238402.Spec : Prop :=
  ∀ n, P13103152490330238402.a n = (A042403 n : ℚ)

end A042403

/-! ## A042403.P11999154704937902478

`A041337(n)/A041337(Δ[A008619(n)])`
-/

namespace A042403.P11999154704937902478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041337 n : ℚ) / (A041337 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042403.P11999154704937902478

namespace A042403

/-- `A041337(n)/A041337(Δ[A008619(n)])` -/
def P11999154704937902478.Spec : Prop :=
  ∀ n, P11999154704937902478.a n = (A042403 n : ℚ)

end A042403

/-!
# A042404: Numerators of continued fraction convergents to sqrt(730).

The programs for A042404, the canonical program `A042404.P15638000021948541415` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042404 has offset 0).

The definition of A042404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042404.P15638000021948541415

`ogf((27+x)/(1-54x-x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042404

/-- `ogf((27+x)/(1-54x-x^2))` -/
def P15638000021948541415.Spec : Prop :=
  ∀ n, P15638000021948541415.a n = A042404 n

theorem P15638000021948541415.correct : P15638000021948541415.Spec := by
  intro n
  simp only [A042404]

end A042404

/-! ## A042404.P16817018637925068401

`record[round(A042405(n)/a(n-1))]` with `a(0)=27`
-/

namespace A042404.P16817018637925068401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  SequenceMachineLib.roundAway ((A042405 n : ℚ) / (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042404.P16817018637925068401

namespace A042404

/-- `record[round(A042405(n)/a(n-1))]` -/
def P16817018637925068401.Spec : Prop :=
  ∀ n, P16817018637925068401.a n = A042404 n

end A042404

/-!
# A042405: Denominators of continued fraction convergents to sqrt(730).

The programs for A042405, the canonical program `A042405.P6878399625632336921` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042405 has offset 0).

The definition of A042405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042405.P10685637485020660431

`ogf(1/(1-54x-x^2))`
-/

namespace A042405.P10685637485020660431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -54, -1] n

end

end A042405.P10685637485020660431

namespace A042405

/-- `ogf(1/(1-54x-x^2))` -/
def P10685637485020660431.Spec : Prop :=
  ∀ n, P10685637485020660431.a n = A042405 n

end A042405

/-! ## A042405.P6878399625632336921

`54*a(n-1)+a(n-2)` with `a(0)=1, a(1)=54`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042405

/-- `54*a(n-1)+a(n-2)` -/
def P6878399625632336921.Spec : Prop :=
  ∀ n, (P6878399625632336921.a n : ℤ) = A042405 n

theorem P6878399625632336921.correct : P6878399625632336921.Spec := by
  intro n
  simp only [A042405]

end A042405

/-! ## A042405.P14140509589204898815

`(A042404(n)-a(n-1))/27` with `a(0)=1`
-/

namespace A042405.P14140509589204898815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A042404 n : ℚ) - a (n - 1)) / 27

end

end A042405.P14140509589204898815

namespace A042405

/-- `(A042404(n)-a(n-1))/27` -/
def P14140509589204898815.Spec : Prop :=
  ∀ n, P14140509589204898815.a n = (A042405 n : ℚ)

end A042405

/-! ## A042405.P3322881975261585233

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=54`
-/

namespace A042405.P3322881975261585233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 54] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042405.P3322881975261585233

namespace A042405

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P3322881975261585233.Spec : Prop :=
  ∀ n, P3322881975261585233.a n = (A042405 n : ℚ)

end A042405

/-! ## A042405.P15618141047675245865

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=54`
-/

namespace A042405.P15618141047675245865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 54] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042405.P15618141047675245865

namespace A042405

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P15618141047675245865.Spec : Prop :=
  ∀ n, P15618141047675245865.a n = A042405 n

end A042405

/-!
# A042408: Numerators of continued fraction convergents to sqrt(732).

The programs for A042408, the canonical program `A042408.P17871418103958595691` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042408 has offset 0).

The definition of A042408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042408.P17871418103958595691

`ogf((27+487x+27x^2-x^3)/(1-974x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042408

/-- `ogf((27+487x+27x^2-x^3)/(1-974x^2+x^4))` -/
def P17871418103958595691.Spec : Prop :=
  ∀ n, P17871418103958595691.a n = A042408 n

theorem P17871418103958595691.correct : P17871418103958595691.Spec := by
  intro n
  simp only [A042408]

end A042408

/-! ## A042408.P9714934413082936914

`A041338(3*n+2)`
-/

namespace A042408.P9714934413082936914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041338 (3 * n + 2)

end

end A042408.P9714934413082936914

namespace A042408

/-- `A041338(3*n+2)` -/
def P9714934413082936914.Spec : Prop :=
  ∀ n, P9714934413082936914.a n = A042408 n

end A042408

/-!
# A042409: Denominators of continued fraction convergents to sqrt(732).

The programs for A042409, the canonical program `A042409.P9199531015252329874` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042409 has offset 0).

The definition of A042409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042409.P9199531015252329874

`ogf((1+18x-x^2)/(1-974x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042409

/-- `ogf((1+18x-x^2)/(1-974x^2+x^4))` -/
def P9199531015252329874.Spec : Prop :=
  ∀ n, P9199531015252329874.a n = A042409 n

theorem P9199531015252329874.correct : P9199531015252329874.Spec := by
  intro n
  simp only [A042409]

end A042409

/-! ## A042409.P6425986699928659791

`∑[A041339(3*n)]`
-/

namespace A042409.P6425986699928659791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041339 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042409.P6425986699928659791

namespace A042409

/-- `∑[A041339(3*n)]` -/
def P6425986699928659791.Spec : Prop :=
  ∀ n, P6425986699928659791.a n = A042409 n

end A042409

/-! ## A042409.P5109120312609938304

`∑[record[A041339(A006368(n))]]`
-/

namespace A042409.P5109120312609938304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041339 (A006368 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042409.P5109120312609938304

namespace A042409

/-- `∑[record[A041339(A006368(n))]]` -/
def P5109120312609938304.Spec : Prop :=
  ∀ n, P5109120312609938304.a n = A042409 n

end A042409

/-! ## A042409.P11850660615251608196

`record[A041339(A006368(n+1))]+a(n-1)` with `a(0)=1`
-/

namespace A042409.P11850660615251608196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041339 (A006368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A042409.P11850660615251608196

namespace A042409

/-- `record[A041339(A006368(n+1))]+a(n-1)` -/
def P11850660615251608196.Spec : Prop :=
  ∀ n, P11850660615251608196.a n = A042409 n

end A042409

/-! ## A042409.P16832319705055676338

`A041339(3*n+2)/2`
-/

namespace A042409.P16832319705055676338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041339 (3 * n + 2) : ℚ) / 2

end

end A042409.P16832319705055676338

namespace A042409

/-- `A041339(3*n+2)/2` -/
def P16832319705055676338.Spec : Prop :=
  ∀ n, P16832319705055676338.a n = (A042409 n : ℚ)

end A042409

/-!
# A042414: Numerators of continued fraction convergents to sqrt(735).

The programs for A042414, the canonical program `A042414.P13108268982687351519` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042414 has offset 0).

The definition of A042414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042414.P13108268982687351519

`ogf((27+244x+27x^2-x^3)/(1-488x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042414

/-- `ogf((27+244x+27x^2-x^3)/(1-488x^2+x^4))` -/
def P13108268982687351519.Spec : Prop :=
  ∀ n, P13108268982687351519.a n = A042414 n

theorem P13108268982687351519.correct : P13108268982687351519.Spec := by
  intro n
  simp only [A042414]

end A042414

/-! ## A042414.P14841109762373592480

`A041022(3*n+2)`
-/

namespace A042414.P14841109762373592480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041022 (3 * n + 2)

end

end A042414.P14841109762373592480

namespace A042414

/-- `A041022(3*n+2)` -/
def P14841109762373592480.Spec : Prop :=
  ∀ n, P14841109762373592480.a n = A042414 n

end A042414

/-! ## A042414.P7646131389112913584

`record[A041022(Δ[A341706(n)])]`
-/

namespace A042414.P7646131389112913584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041022 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042414.P7646131389112913584

namespace A042414

/-- `record[A041022(Δ[A341706(n)])]` -/
def P7646131389112913584.Spec : Prop :=
  ∀ n, P7646131389112913584.a n = A042414 n

end A042414

/-! ## A042414.P1456482124557354415

`A145543(2*n+3+n)*A176040(n)`
-/

namespace A042414.P1456482124557354415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145543 (2 * n + 3 + n) * A176040 n

end

end A042414.P1456482124557354415

namespace A042414

/-- `A145543(2*n+3+n)*A176040(n)` -/
def P1456482124557354415.Spec : Prop :=
  ∀ n, P1456482124557354415.a n = A042414 n

end A042414

/-!
# A042415: Denominators of continued fraction convergents to sqrt(735).

The programs for A042415, the canonical program `A042415.P5726732230353186374` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042415 has offset 0).

The definition of A042415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042415.P5726732230353186374

`ogf((1+9x-x^2)/(1-488x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042415

/-- `ogf((1+9x-x^2)/(1-488x^2+x^4))` -/
def P5726732230353186374.Spec : Prop :=
  ∀ n, P5726732230353186374.a n = A042415 n

theorem P5726732230353186374.correct : P5726732230353186374.Spec := by
  intro n
  simp only [A042415]

end A042415

/-! ## A042415.P4047213668311198187

`A041023(2+n*3)/7`
-/

namespace A042415.P4047213668311198187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041023 (2 + n * 3) : ℚ) / 7

end

end A042415.P4047213668311198187

namespace A042415

/-- `A041023(2+n*3)/7` -/
def P4047213668311198187.Spec : Prop :=
  ∀ n, P4047213668311198187.a n = (A042415 n : ℚ)

end A042415

/-!
# A042417: Denominators of continued fraction convergents to sqrt(736).

The programs for A042417, there is no canonical definition to state claims against.
-/

/-! ## A042417.P7014072307451126746

`eq[A049581(A192517(n+1)), A049581(n)]`
-/

namespace A042417.P7014072307451126746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A192517 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042417.P7014072307451126746

/-! ## A042417.P885940855064940804

`eq[A143182(A192517(n+1)), A143182(n)]`
-/

namespace A042417.P885940855064940804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (A192517 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A042417.P885940855064940804

/-!
# A042420: Numerators of continued fraction convergents to sqrt(738).

The programs for A042420, the canonical program `A042420.P13735386214063757501` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042420 has offset 0).

The definition of A042420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042420.P13735386214063757501

`ogf((27+163x+27x^2-x^3)/(1-326x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042420

/-- `ogf((27+163x+27x^2-x^3)/(1-326x^2+x^4))` -/
def P13735386214063757501.Spec : Prop :=
  ∀ n, P13735386214063757501.a n = A042420 n

theorem P13735386214063757501.correct : P13735386214063757501.Spec := by
  intro n
  simp only [A042420]

end A042420

/-! ## A042420.P16074399077329453535

`abs(A041144(n)*A112030(n))`
-/

namespace A042420.P16074399077329453535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A041144 n * A112030 n|

end

end A042420.P16074399077329453535

namespace A042420

/-- `abs(A041144(n)*A112030(n))` -/
def P16074399077329453535.Spec : Prop :=
  ∀ n, P16074399077329453535.a n = A042420 n

end A042420

/-! ## A042420.P16743861615748642254

`A041144(n)*A112030(n²)`
-/

namespace A042420.P16743861615748642254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041144 n * A112030 (n ^ 2)

end

end A042420.P16743861615748642254

namespace A042420

/-- `A041144(n)*A112030(n²)` -/
def P16743861615748642254.Spec : Prop :=
  ∀ n, P16743861615748642254.a n = A042420 n

end A042420

/-! ## A042420.P6300454866624588506

`Δ[A014601(n)]*A041144(n)`
-/

namespace A042420.P6300454866624588506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041144 n

end

end A042420.P6300454866624588506

namespace A042420

/-- `Δ[A014601(n)]*A041144(n)` -/
def P6300454866624588506.Spec : Prop :=
  ∀ n, P6300454866624588506.a n = A042420 n

end A042420

/-! ## A042420.P16406539473101001031

`A010684(n+1)*A041144(n)`
-/

namespace A042420.P16406539473101001031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1) * A041144 n

end

end A042420.P16406539473101001031

namespace A042420

/-- `A010684(n+1)*A041144(n)` -/
def P16406539473101001031.Spec : Prop :=
  ∀ n, P16406539473101001031.a n = A042420 n

end A042420

/-! ## A042420.P13624304392205910103

`gcd(A040006(n), A041144(n))*A041144(n)`
-/

namespace A042420.P13624304392205910103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A040006 n) (A041144 n) : ℤ) * A041144 n

end

end A042420.P13624304392205910103

namespace A042420

/-- `gcd(A040006(n), A041144(n))*A041144(n)` -/
def P13624304392205910103.Spec : Prop :=
  ∀ n, P13624304392205910103.a n = A042420 n

end A042420

/-!
# A042421: Denominators of continued fraction convergents to sqrt(738).

The programs for A042421, the canonical program `A042421.P1760640046289690139` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042421 has offset 0).

The definition of A042421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042421.P1760640046289690139

`ogf((1+6x-x^2)/(1-326x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042421

/-- `ogf((1+6x-x^2)/(1-326x^2+x^4))` -/
def P1760640046289690139.Spec : Prop :=
  ∀ n, P1760640046289690139.a n = A042421 n

theorem P1760640046289690139.correct : P1760640046289690139.Spec := by
  intro n
  simp only [A042421]

end A042421

/-! ## A042421.P2250433920555717548

`lcm(3, A041145(n))/3`
-/

namespace A042421.P2250433920555717548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A041145 n) : ℚ) / 3

end

end A042421.P2250433920555717548

namespace A042421

/-- `lcm(3, A041145(n))/3` -/
def P2250433920555717548.Spec : Prop :=
  ∀ n, P2250433920555717548.a n = (A042421 n : ℚ)

end A042421

/-! ## A042421.P1406235254448621668

`A041145(n)/Δ[A042948(n)]`
-/

namespace A042421.P1406235254448621668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042421.P1406235254448621668

namespace A042421

/-- `A041145(n)/Δ[A042948(n)]` -/
def P1406235254448621668.Spec : Prop :=
  ∀ n, P1406235254448621668.a n = (A042421 n : ℚ)

end A042421

/-! ## A042421.P14126285151538008276

`A041145(n)/A053742(n)%4`
-/

namespace A042421.P14126285151538008276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (Int.tmod (A053742 n) 4 : ℚ)

end

end A042421.P14126285151538008276

namespace A042421

/-- `A041145(n)/A053742(n)%4` -/
def P14126285151538008276.Spec : Prop :=
  ∀ n, P14126285151538008276.a n = (A042421 n : ℚ)

end A042421

/-! ## A042421.P4574177034763012167

`A041145(n)/(2-A004442(n)+n)`
-/

namespace A042421.P4574177034763012167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (2 - A004442 n + (n : ℤ) : ℚ)

end

end A042421.P4574177034763012167

namespace A042421

/-- `A041145(n)/(2-A004442(n)+n)` -/
def P4574177034763012167.Spec : Prop :=
  ∀ n, P4574177034763012167.a n = (A042421 n : ℚ)

end A042421

/-! ## A042421.P10851063994458532324

`A041145(n)/A228035(A000124(n))`
-/

namespace A042421.P10851063994458532324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (A228035 (A000124 n).toNat : ℚ)

end

end A042421.P10851063994458532324

namespace A042421

/-- `A041145(n)/A228035(A000124(n))` -/
def P10851063994458532324.Spec : Prop :=
  ∀ n, P10851063994458532324.a n = (A042421 n : ℚ)

end A042421

/-!
# A042425: Denominators of continued fraction convergents to sqrt(740).

The programs for A042425, there is no canonical definition to state claims against.
-/

/-! ## A042425.P8383946218299038191

`A234741(A041123(n)²)`
-/

namespace A042425.P8383946218299038191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234741 (A041123 n ^ 2).toNat

end

end A042425.P8383946218299038191

/-!
# A042432: Numerators of continued fraction convergents to sqrt(744).

The programs for A042432, there is no canonical definition to state claims against.
-/

/-! ## A042432.P3259112323290516162

`a(n-1)+A233583(a(n-2))+1` with `a(0)=27, a(1)=82`
-/

namespace A042432.P3259112323290516162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27, 82] fun n a =>
  a (n - 1) + (A233583 (a (n - 2)).toNat + 1)

end

end A042432.P3259112323290516162

/-!
# A042433: Denominators of continued fraction convergents to sqrt(744).

The programs for A042433, there is no canonical definition to state claims against.
-/

/-! ## A042433.P1544414505376709118

`A193965(∑[(n+1)/10^val(n+1, 10)])`
-/

namespace A042433.P1544414505376709118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193965 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A042433.P1544414505376709118

/-!
# A042438: Numerators of continued fraction convergents to sqrt(747).

The programs for A042438, the canonical program `A042438.P16411349185961827908` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042438 has offset 0).

The definition of A042438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042438.P16411349185961827908

`ogf((27+82x+27x^2-x^3)/(1-164x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042438

/-- `ogf((27+82x+27x^2-x^3)/(1-164x^2+x^4))` -/
def P16411349185961827908.Spec : Prop :=
  ∀ n, P16411349185961827908.a n = A042438 n

theorem P16411349185961827908.correct : P16411349185961827908.Spec := by
  intro n
  simp only [A042438]

end A042438

/-! ## A042438.P18222709961195867764

`Δ[a(n-2)+4]*A041146(n)` with `a(0)=0, a(1)=3`
-/

namespace A042438.P18222709961195867764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A041146 n

end

end A042438.P18222709961195867764

namespace A042438

/-- `Δ[a(n-2)+4]*A041146(n)` -/
def P18222709961195867764.Spec : Prop :=
  ∀ n, P18222709961195867764.a n = A042438 n

end A042438

/-! ## A042438.P15304561932824472264

`abs(A041146(n)*A112030(n))`
-/

namespace A042438.P15304561932824472264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A041146 n * A112030 n|

end

end A042438.P15304561932824472264

namespace A042438

/-- `abs(A041146(n)*A112030(n))` -/
def P15304561932824472264.Spec : Prop :=
  ∀ n, P15304561932824472264.a n = A042438 n

end A042438

/-! ## A042438.P18044224246696303477

`A041146(n)*A112030(n²)`
-/

namespace A042438.P18044224246696303477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041146 n * A112030 (n ^ 2)

end

end A042438.P18044224246696303477

namespace A042438

/-- `A041146(n)*A112030(n²)` -/
def P18044224246696303477.Spec : Prop :=
  ∀ n, P18044224246696303477.a n = A042438 n

end A042438

/-! ## A042438.P5165200634865936213

`Δ[A014601(n)]*A041146(n)`
-/

namespace A042438.P5165200634865936213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041146 n

end

end A042438.P5165200634865936213

namespace A042438

/-- `Δ[A014601(n)]*A041146(n)` -/
def P5165200634865936213.Spec : Prop :=
  ∀ n, P5165200634865936213.a n = A042438 n

end A042438

/-! ## A042438.P3707539129998391257

`A010684(n+1)*A041146(n)`
-/

namespace A042438.P3707539129998391257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1) * A041146 n

end

end A042438.P3707539129998391257

namespace A042438

/-- `A010684(n+1)*A041146(n)` -/
def P3707539129998391257.Spec : Prop :=
  ∀ n, P3707539129998391257.a n = A042438 n

end A042438

/-!
# A042439: Denominators of continued fraction convergents to sqrt(747).

The programs for A042439, the canonical program `A042439.P4252490679780071286` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042439 has offset 0).

The definition of A042439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042439.P4252490679780071286

`ogf((1+3x-x^2)/(1-164x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042439

/-- `ogf((1+3x-x^2)/(1-164x^2+x^4))` -/
def P4252490679780071286.Spec : Prop :=
  ∀ n, P4252490679780071286.a n = A042439 n

theorem P4252490679780071286.correct : P4252490679780071286.Spec := by
  intro n
  simp only [A042439]

end A042439

/-! ## A042439.P10075758948583160394

`A041147(n)/(2*n+1)%4`
-/

namespace A042439.P10075758948583160394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041147 n : ℚ) / (((2 * n + 1) % 4 : ℕ) : ℚ)

end

end A042439.P10075758948583160394

namespace A042439

/-- `A041147(n)/(2*n+1)%4` -/
def P10075758948583160394.Spec : Prop :=
  ∀ n, P10075758948583160394.a n = (A042439 n : ℚ)

end A042439

/-! ## A042439.P9402642143625605289

`A041147(n)/A010684(n)`
-/

namespace A042439.P9402642143625605289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041147 n : ℚ) / (A010684 n : ℚ)

end

end A042439.P9402642143625605289

namespace A042439

/-- `A041147(n)/A010684(n)` -/
def P9402642143625605289.Spec : Prop :=
  ∀ n, P9402642143625605289.a n = (A042439 n : ℚ)

end A042439

/-! ## A042439.P6891736951477358874

`A041147(n)/A010873(2*n+1)`
-/

namespace A042439.P6891736951477358874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041147 n : ℚ) / (A010873 (2 * n + 1) : ℚ)

end

end A042439.P6891736951477358874

namespace A042439

/-- `A041147(n)/A010873(2*n+1)` -/
def P6891736951477358874.Spec : Prop :=
  ∀ n, P6891736951477358874.a n = (A042439 n : ℚ)

end A042439

/-! ## A042439.P11377425005830376820

`A041147(n)/A000244(Δ[A004526(n)])`
-/

namespace A042439.P11377425005830376820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041147 n : ℚ) / (A000244 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042439.P11377425005830376820

namespace A042439

/-- `A041147(n)/A000244(Δ[A004526(n)])` -/
def P11377425005830376820.Spec : Prop :=
  ∀ n, P11377425005830376820.a n = (A042439 n : ℚ)

end A042439

/-! ## A042439.P13969719706561931560

`A041147(n)/A118482(Δ[A004526(n)])`
-/

namespace A042439.P13969719706561931560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041147 n : ℚ) / (A118482 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042439.P13969719706561931560

namespace A042439

/-- `A041147(n)/A118482(Δ[A004526(n)])` -/
def P13969719706561931560.Spec : Prop :=
  ∀ n, P13969719706561931560.a n = (A042439 n : ℚ)

end A042439

/-! ## A042439.P5495889343057418518

`A041147(n)/A167667(Δ[A004526(n)])`
-/

namespace A042439.P5495889343057418518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041147 n : ℚ) / (A167667 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042439.P5495889343057418518

namespace A042439

/-- `A041147(n)/A167667(Δ[A004526(n)])` -/
def P5495889343057418518.Spec : Prop :=
  ∀ n, P5495889343057418518.a n = (A042439 n : ℚ)

end A042439

/-!
# A042441: Denominators of continued fraction convergents to sqrt(748).

The programs for A042441, there is no canonical definition to state claims against.
-/

/-! ## A042441.P6699011821916107687

`A371030(A041399(n+1))`
-/

namespace A042441.P6699011821916107687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371030 (A041399 (n + 1)).toNat

end

end A042441.P6699011821916107687

/-!
# A042443: Denominators of continued fraction convergents to sqrt(749).

The programs for A042443, there is no canonical definition to state claims against.
-/

/-! ## A042443.P18040822116146468857

`record[gcd(A113873(n), A206559(n+1))]`
-/

namespace A042443.P18040822116146468857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113873 n) (A206559 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042443.P18040822116146468857

/-! ## A042443.P6210921126045249263

`A113873(eq[A025826(n), A080339(n+1)])`
-/

namespace A042443.P6210921126045249263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A042443.P6210921126045249263

/-!
# A042447: Denominators of continued fraction convergents to sqrt(751).

The programs for A042447, there is no canonical definition to state claims against.
-/

/-! ## A042447.P13033844438288060886

`lcm(A028293(n), A257008(A109975(n)))`
-/

namespace A042447.P13033844438288060886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028293 n) (A257008 (A109975 n).toNat)

end

end A042447.P13033844438288060886

/-!
# A042456: Numerators of continued fraction convergents to sqrt(756).

The programs for A042456, the canonical program `A042456.P5655236679837795534` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042456 has offset 0).

The definition of A042456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042456.P5655236679837795534

`ogf((27+55x+27x^2-x^3)/(1-110x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042456

/-- `ogf((27+55x+27x^2-x^3)/(1-110x^2+x^4))` -/
def P5655236679837795534.Spec : Prop :=
  ∀ n, P5655236679837795534.a n = A042456 n

theorem P5655236679837795534.correct : P5655236679837795534.Spec := by
  intro n
  simp only [A042456]

end A042456

/-! ## A042456.P9618842903263630009

`A041148(n)*A176040(n)`
-/

namespace A042456.P9618842903263630009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041148 n * A176040 n

end

end A042456.P9618842903263630009

namespace A042456

/-- `A041148(n)*A176040(n)` -/
def P9618842903263630009.Spec : Prop :=
  ∀ n, P9618842903263630009.a n = A042456 n

end A042456

/-! ## A042456.P7138831790388454770

`(A033999(n)+2)*A041148(n)`
-/

namespace A042456.P7138831790388454770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 2) * A041148 n

end

end A042456.P7138831790388454770

namespace A042456

/-- `(A033999(n)+2)*A041148(n)` -/
def P7138831790388454770.Spec : Prop :=
  ∀ n, P7138831790388454770.a n = A042456 n

end A042456

/-! ## A042456.P5725161175676811799

`A041148(n)*A056753((n+1)²)`
-/

namespace A042456.P5725161175676811799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041148 n * A056753 ((n + 1) ^ 2)

end

end A042456.P5725161175676811799

namespace A042456

/-- `A041148(n)*A056753((n+1)²)` -/
def P5725161175676811799.Spec : Prop :=
  ∀ n, P5725161175676811799.a n = A042456 n

end A042456

/-! ## A042456.P11815092607823613558

`A041148(n)*A091088(Δ[A007494(n)])`
-/

namespace A042456.P11815092607823613558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041148 n * A091088 (f1 (n + 1) - f1 n).toNat

end

end A042456.P11815092607823613558

namespace A042456

/-- `A041148(n)*A091088(Δ[A007494(n)])` -/
def P11815092607823613558.Spec : Prop :=
  ∀ n, P11815092607823613558.a n = A042456 n

end A042456

/-! ## A042456.P16789814323094333091

`A041148(n)*A178543(Δ[A007494(n)])`
-/

namespace A042456.P16789814323094333091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041148 n * A178543 (f1 (n + 1) - f1 n).toNat

end

end A042456.P16789814323094333091

namespace A042456

/-- `A041148(n)*A178543(Δ[A007494(n)])` -/
def P16789814323094333091.Spec : Prop :=
  ∀ n, P16789814323094333091.a n = A042456 n

end A042456

/-!
# A042457: Denominators of continued fraction convergents to sqrt(756).

The programs for A042457, the canonical program `A042457.P1080881093190212481` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042457 has offset 0).

The definition of A042457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042457.P1080881093190212481

`ogf((1+2x-x^2)/(1-110x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042457

/-- `ogf((1+2x-x^2)/(1-110x^2+x^4))` -/
def P1080881093190212481.Spec : Prop :=
  ∀ n, P1080881093190212481.a n = A042457 n

theorem P1080881093190212481.correct : P1080881093190212481.Spec := by
  intro n
  simp only [A042457]

end A042457

/-! ## A042457.P7462493632665686420

`A041149(n)/(Δ[or(1, n)]+1)`
-/

namespace A042457.P7462493632665686420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041149 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 : ℚ)

end

end A042457.P7462493632665686420

namespace A042457

/-- `A041149(n)/(Δ[or(1, n)]+1)` -/
def P7462493632665686420.Spec : Prop :=
  ∀ n, P7462493632665686420.a n = (A042457 n : ℚ)

end A042457

/-! ## A042457.P3991474340852380327

`∑[A041351(A042948(n))]`
-/

namespace A042457.P3991474340852380327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041351 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042457.P3991474340852380327

namespace A042457

/-- `∑[A041351(A042948(n))]` -/
def P3991474340852380327.Spec : Prop :=
  ∀ n, P3991474340852380327.a n = A042457 n

end A042457

/-! ## A042457.P4072652690846676222

`∑[A041351(A080412(2*n))]`
-/

namespace A042457.P4072652690846676222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041351 (A080412 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042457.P4072652690846676222

namespace A042457

/-- `∑[A041351(A080412(2*n))]` -/
def P4072652690846676222.Spec : Prop :=
  ∀ n, P4072652690846676222.a n = A042457 n

end A042457

/-! ## A042457.P15009920177207224501

`A041149(n)/Δ[A042948(n)]`
-/

namespace A042457.P15009920177207224501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041149 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042457.P15009920177207224501

namespace A042457

/-- `A041149(n)/Δ[A042948(n)]` -/
def P15009920177207224501.Spec : Prop :=
  ∀ n, P15009920177207224501.a n = (A042457 n : ℚ)

end A042457

/-! ## A042457.P14004182398850764139

`A041149(n)/A004442(Δ[or(1, n)])`
-/

namespace A042457.P14004182398850764139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041149 n : ℚ) / (A004442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A042457.P14004182398850764139

namespace A042457

/-- `A041149(n)/A004442(Δ[or(1, n)])` -/
def P14004182398850764139.Spec : Prop :=
  ∀ n, P14004182398850764139.a n = (A042457 n : ℚ)

end A042457

/-!
# A042459: Denominators of continued fraction convergents to sqrt(757).

The programs for A042459, there is no canonical definition to state claims against.
-/

/-! ## A042459.P370578409208242845

`A151893(A038703(n+1)-A010054(n))`
-/

namespace A042459.P370578409208242845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151893 (A038703 (n + 1) - A010054 n).toNat

end

end A042459.P370578409208242845

/-!
# A042465: Denominators of continued fraction convergents to sqrt(760).

The programs for A042465, there is no canonical definition to state claims against.
-/

/-! ## A042465.P9309519346962423987

`∑[A274650(Δ[A189860(n+1)])]`
-/

namespace A042465.P9309519346962423987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189860 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042465.P9309519346962423987

/-!
# A042467: Denominators of continued fraction convergents to sqrt(761).

The programs for A042467, the canonical program `A042467.P15119718576226267339` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042467 has offset 0).

The definition of A042467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042467.P15119718576226267339

`a(n-2)+a(n-1)*A040733(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042467

/-- `a(n-2)+a(n-1)*A040733(n)` -/
def P15119718576226267339.Spec : Prop :=
  ∀ n, P15119718576226267339.a n = A042467 n

theorem P15119718576226267339.correct : P15119718576226267339.Spec := by
  intro n
  simp only [A042467]

end A042467

/-!
# A042475: Denominators of continued fraction convergents to sqrt(765).

The programs for A042475, there is no canonical definition to state claims against.
-/

/-! ## A042475.P16392533639297176737

`A023987(A346968(n))`
-/

namespace A042475.P16392533639297176737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023987 (A346968 n).toNat

end

end A042475.P16392533639297176737

/-!
# A042479: Denominators of continued fraction convergents to sqrt(767).

The programs for A042479, there is no canonical definition to state claims against.
-/

/-! ## A042479.P3285211155152949827

`A022103(n)%A022095(A078213(n+1))`
-/

namespace A042479.P3285211155152949827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022103 n) (A022095 (A078213 (n + 1)).toNat)

end

end A042479.P3285211155152949827

/-!
# A042481: Denominators of continued fraction convergents to sqrt(768).

The programs for A042481, there is no canonical definition to state claims against.
-/

/-! ## A042481.P14732657835255293994

`A106619(9*A041357(n))`
-/

namespace A042481.P14732657835255293994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (9 * A041357 n).toNat

end

end A042481.P14732657835255293994

/-!
# A042484: Numerators of continued fraction convergents to sqrt(770).

The programs for A042484, the canonical program `A042484.P17974490404640590287` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042484 has offset 0).

The definition of A042484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042484.P17974490404640590287

`ogf((27+28x+83x^2+111x^3+83x^4-28x^5+27x^6-x^7)/(1-222x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042484

/-- `ogf((27+28x+83x^2+111x^3+83x^4-28x^5+27x^6-x^7)/(1-222x^4+x^8))` -/
def P17974490404640590287.Spec : Prop :=
  ∀ n, P17974490404640590287.a n = A042484 n

theorem P17974490404640590287.correct : P17974490404640590287.Spec := by
  intro n
  simp only [A042484]

end A042484

/-!
# A042485: Denominators of continued fraction convergents to sqrt(770).

The programs for A042485, the canonical program `A042485.P17330649644404306320` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042485 has offset 0).

The definition of A042485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042485.P17330649644404306320

`222*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=219, a(5)=223, a(6)=665, a(7)=888`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042485

/-- `222*a(n-4)-a(n-8)` -/
def P17330649644404306320.Spec : Prop :=
  ∀ n, P17330649644404306320.a n = A042485 n

theorem P17330649644404306320.correct : P17330649644404306320.Spec := by
  intro n
  simp only [A042485]

end A042485

/-! ## A042485.P8083256926558220336

`ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-222x^4+x^8))`
-/

namespace A042485.P8083256926558220336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 4, -3, 1, -1] [1, 0, 0, 0, -222, 0, 0, 0, 1] n

end

end A042485.P8083256926558220336

namespace A042485

/-- `ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-222x^4+x^8))` -/
def P8083256926558220336.Spec : Prop :=
  ∀ n, P8083256926558220336.a n = A042485 n

end A042485

/-! ## A042485.P997366914917480564

`A004277(A041465(n))-A041021(n)`
-/

namespace A042485.P997366914917480564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041465 n).toNat - A041021 n

end

end A042485.P997366914917480564

namespace A042485

/-- `A004277(A041465(n))-A041021(n)` -/
def P997366914917480564.Spec : Prop :=
  ∀ n, P997366914917480564.a n = A042485 n

end A042485

/-!
# A042487: Denominators of continued fraction convergents to sqrt(771).

The programs for A042487, there is no canonical definition to state claims against.
-/

/-! ## A042487.P15222478215948901249

`∑{d}[A219782(A062394(n)), #]`
-/

namespace A042487.P15222478215948901249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219782 (A062394 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A042487.P15222478215948901249

/-!
# A042488: Numerators of continued fraction convergents to sqrt(772).

The programs for A042488, there is no canonical definition to state claims against.
-/

/-! ## A042488.P13080995377817679953

`A239161(A041822(n)+A005185(n+1))`
-/

namespace A042488.P13080995377817679953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239161 (A041822 n + A005185 (n + 1)).toNat

end

end A042488.P13080995377817679953

/-!
# A042496: Numerators of continued fraction convergents to sqrt(776).

The programs for A042496, the canonical program `A042496.P9505071352104672031` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042496 has offset 0).

The definition of A042496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042496.P9505071352104672031

`ogf((27+28x+167x^2+195x^3+167x^4-28x^5+27x^6-x^7)/(1-390x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042496

/-- `ogf((27+28x+167x^2+195x^3+167x^4-28x^5+27x^6-x^7)/(1-390x^4+x^8))` -/
def P9505071352104672031.Spec : Prop :=
  ∀ n, P9505071352104672031.a n = A042496 n

theorem P9505071352104672031.correct : P9505071352104672031.Spec := by
  intro n
  simp only [A042496]

end A042496

/-!
# A042497: Denominators of continued fraction convergents to sqrt(776).

The programs for A042497, the canonical program `A042497.P3444997367663184126` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042497 has offset 0).

The definition of A042497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042497.P3444997367663184126

`ogf((1+x+6x^2+7x^3-6x^4+x^5-x^6)/(1-390x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042497

/-- `ogf((1+x+6x^2+7x^3-6x^4+x^5-x^6)/(1-390x^4+x^8))` -/
def P3444997367663184126.Spec : Prop :=
  ∀ n, P3444997367663184126.a n = A042497 n

theorem P3444997367663184126.correct : P3444997367663184126.Spec := by
  intro n
  simp only [A042497]

end A042497

/-!
# A042498: Numerators of continued fraction convergents to sqrt(777).

The programs for A042498, the canonical program `A042498.P2902596351206057373` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042498 has offset 0).

The definition of A042498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042498.P2902596351206057373

`ogf((27+28x+195x^2+223x^3+195x^4-28x^5+27x^6-x^7)/(1-446x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042498

/-- `ogf((27+28x+195x^2+223x^3+195x^4-28x^5+27x^6-x^7)/(1-446x^4+x^8))` -/
def P2902596351206057373.Spec : Prop :=
  ∀ n, P2902596351206057373.a n = A042498 n

theorem P2902596351206057373.correct : P2902596351206057373.Spec := by
  intro n
  simp only [A042498]

end A042498

/-!
# A042499: Denominators of continued fraction convergents to sqrt(777).

The programs for A042499, the canonical program `A042499.P4894747929712859761` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042499 has offset 0).

The definition of A042499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042499.P4894747929712859761

`ogf((1+x+7x^2+8x^3-7x^4+x^5-x^6)/(1-446x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A042499

/-- `ogf((1+x+7x^2+8x^3-7x^4+x^5-x^6)/(1-446x^4+x^8))` -/
def P4894747929712859761.Spec : Prop :=
  ∀ n, P4894747929712859761.a n = A042499 n

theorem P4894747929712859761.correct : P4894747929712859761.Spec := by
  intro n
  simp only [A042499]

end A042499

/-! ## A042499.P12215562944775525847

`A004277(A041473(n))-A041023(n)`
-/

namespace A042499.P12215562944775525847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041473 n).toNat - A041023 n

end

end A042499.P12215562944775525847

namespace A042499

/-- `A004277(A041473(n))-A041023(n)` -/
def P12215562944775525847.Spec : Prop :=
  ∀ n, P12215562944775525847.a n = A042499 n

end A042499

/-! ## A042499.P16487165160513134419

`A004277(A041751(n))-A041259(n)`
-/

namespace A042499.P16487165160513134419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041751 n).toNat - A041259 n

end

end A042499.P16487165160513134419

namespace A042499

/-- `A004277(A041751(n))-A041259(n)` -/
def P16487165160513134419.Spec : Prop :=
  ∀ n, P16487165160513134419.a n = A042499 n

end A042499

