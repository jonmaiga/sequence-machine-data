import SequenceMachineLib.Basic
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
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C011
import Seq.B003.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C022
import Seq.Opaque.C023

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

The programs for A042402, there is no canonical definition to state claims against.
-/

/-! ## A042402.P7135363270351197471

`gcd(2, n)*A041336(n)`
-/

namespace A042402.P7135363270351197471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041336 n

end

end A042402.P7135363270351197471

/-! ## A042402.P9551148630179717553

`A000034(n+1)*A041336(n)`
-/

namespace A042402.P9551148630179717553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041336 n

end

end A042402.P9551148630179717553

/-! ## A042402.P12520091196080341380

`A040001(n+2)*A041336(n)`
-/

namespace A042402.P12520091196080341380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041336 n

end

end A042402.P12520091196080341380

/-! ## A042402.P17939267751236714363

`A041336(n)*A288699(n+4)`
-/

namespace A042402.P17939267751236714363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041336 n * A288699 (n + 4)

end

end A042402.P17939267751236714363

/-! ## A042402.P11791357951296089008

`2/A000034(n)*A041336(n)`
-/

namespace A042402.P11791357951296089008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041336 n : ℚ)

end

end A042402.P11791357951296089008

/-! ## A042402.P9872352950368477327

`lcm(A040001(n+4), A041336(n))`
-/

namespace A042402.P9872352950368477327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 (n + 4)) (A041336 n)

end

end A042402.P9872352950368477327

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

/-!
# A042403: Denominators of continued fraction convergents to sqrt(728).

The programs for A042403, the canonical program `A042403.P309998127687783611` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042403 has offset 0).

The definition of A042403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042403.P309998127687783611

`54*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=53, a(3)=54`

The canonical program, it is in `Seq.B000.C007`.
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

The programs for A042404, there is no canonical definition to state claims against.
-/

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

/-!
# A042405: Denominators of continued fraction convergents to sqrt(730).

The programs for A042405, the canonical program `A042405.P6878399625632336921` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042405 has offset 0).

The definition of A042405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042405.P6878399625632336921

`54*a(n-1)+a(n-2)` with `a(0)=1, a(1)=54`

The canonical program, it is in `Seq.B000.C007`.
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

The programs for A042408, there is no canonical definition to state claims against.
-/

/-! ## A042408.P9714934413082936914

`A041338(3*n+2)`
-/

namespace A042408.P9714934413082936914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041338 (3 * n + 2)

end

end A042408.P9714934413082936914

/-! ## A042408.P6123113990168979801

`or(1, A041338(A016789(n)))`
-/

namespace A042408.P6123113990168979801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041338 (A016789 n).toNat)

end

end A042408.P6123113990168979801

/-! ## A042408.P9761540980774038833

`A041338(A016789(n))+A000038(n+1)`
-/

namespace A042408.P9761540980774038833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041338 (A016789 n).toNat + A000038 (n + 1)

end

end A042408.P9761540980774038833

/-! ## A042408.P905524900492282598

`A007318(C(n, 2))*A041338(A016789(n))`
-/

namespace A042408.P905524900492282598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A041338 (A016789 n).toNat

end

end A042408.P905524900492282598

/-! ## A042408.P12621518648861288012

`A041338(A016789(n))+n%A028310(n)`
-/

namespace A042408.P12621518648861288012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041338 (A016789 n).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A042408.P12621518648861288012

/-! ## A042408.P7832338737137717399

`A007318(∑[n])²*A041338(A016789(n))`
-/

namespace A042408.P7832338737137717399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * A041338 (A016789 n).toNat

end

end A042408.P7832338737137717399

/-! ## A042408.P14663008476099497689

`A041338(A016789(n))+A005843(n+1)%2`
-/

namespace A042408.P14663008476099497689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041338 (A016789 n).toNat + Int.tmod (A005843 (n + 1)) 2

end

end A042408.P14663008476099497689

/-! ## A042408.P9963960235014638482

`A041338(A016789(n))+5%A039704(n+3)`
-/

namespace A042408.P9963960235014638482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041338 (A016789 n).toNat + Int.tmod 5 (A039704 (n + 3))

end

end A042408.P9963960235014638482

/-! ## A042408.P13557195749799210665

`A007318(C(n+1, 2))+A041338(A016789(n))-1`
-/

namespace A042408.P13557195749799210665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 1) 2) + (A041338 (A016789 n).toNat - 1)

end

end A042408.P13557195749799210665

/-!
# A042409: Denominators of continued fraction convergents to sqrt(732).

The programs for A042409, there is no canonical definition to state claims against.
-/

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

/-! ## A042409.P16832319705055676338

`A041339(3*n+2)/2`
-/

namespace A042409.P16832319705055676338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041339 (3 * n + 2) : ℚ) / 2

end

end A042409.P16832319705055676338

/-!
# A042414: Numerators of continued fraction convergents to sqrt(735).

The programs for A042414, there is no canonical definition to state claims against.
-/

/-! ## A042414.P14841109762373592480

`A041022(3*n+2)`
-/

namespace A042414.P14841109762373592480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041022 (3 * n + 2)

end

end A042414.P14841109762373592480

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

/-! ## A042414.P6876691657653861935

`A041022(A016789(n))-(3*n)%3`
-/

namespace A042414.P6876691657653861935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041022 (A016789 n).toNat - ((3 * n % 3 : ℕ) : ℤ)

end

end A042414.P6876691657653861935

/-! ## A042414.P7473691881646947436

`or(A000007(n), A041022(A016789(n)))`
-/

namespace A042414.P7473691881646947436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A041022 (A016789 n).toNat)

end

end A042414.P7473691881646947436

/-! ## A042414.P11792992621927793229

`or(A000038(n), A041022(A016789(n)))`
-/

namespace A042414.P11792992621927793229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A041022 (A016789 n).toNat)

end

end A042414.P11792992621927793229

/-! ## A042414.P13809147774871296869

`A007318(∑[n])*A041022(A016789(n))`
-/

namespace A042414.P13809147774871296869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A041022 (A016789 n).toNat

end

end A042414.P13809147774871296869

/-! ## A042414.P12935189349373078657

`lcm(A041022(A016789(n)), A106400(n+9))`
-/

namespace A042414.P12935189349373078657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041022 (A016789 n).toNat) (A106400 (n + 9))

end

end A042414.P12935189349373078657

/-! ## A042414.P14902168862915722657

`A041022(A016789(n))/A001222(A066277(n+1))`
-/

namespace A042414.P14902168862915722657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041022 (A016789 n).toNat : ℚ) / (A001222 (A066277 (n + 1)).toNat : ℚ)

end

end A042414.P14902168862915722657

/-! ## A042414.P1341952921511650110

`A041022(A016789(n))/A001222(A139035(n+1))`
-/

namespace A042414.P1341952921511650110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041022 (A016789 n).toNat : ℚ) / (A001222 (A139035 (n + 1)).toNat : ℚ)

end

end A042414.P1341952921511650110

/-! ## A042414.P13016653831244502833

`A000108(C(n, 64)²)*A041022(A016789(n))`
-/

namespace A042414.P13016653831244502833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64 ^ 2) * A041022 (A016789 n).toNat

end

end A042414.P13016653831244502833

/-!
# A042415: Denominators of continued fraction convergents to sqrt(735).

The programs for A042415, there is no canonical definition to state claims against.
-/

/-! ## A042415.P343842230874597899

`A041023(3*n+2)/7`
-/

namespace A042415.P343842230874597899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041023 (3 * n + 2) : ℚ) / 7

end

end A042415.P343842230874597899

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

The programs for A042420, there is no canonical definition to state claims against.
-/

/-! ## A042420.P16074399077329453535

`abs(A041144(n)*A112030(n))`
-/

namespace A042420.P16074399077329453535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A041144 n * A112030 n|

end

end A042420.P16074399077329453535

/-! ## A042420.P16743861615748642254

`A041144(n)*A112030(n²)`
-/

namespace A042420.P16743861615748642254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041144 n * A112030 (n ^ 2)

end

end A042420.P16743861615748642254

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

/-! ## A042420.P16406539473101001031

`A010684(n+1)*A041144(n)`
-/

namespace A042420.P16406539473101001031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1) * A041144 n

end

end A042420.P16406539473101001031

/-! ## A042420.P13624304392205910103

`gcd(A040006(n), A041144(n))*A041144(n)`
-/

namespace A042420.P13624304392205910103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A040006 n) (A041144 n) : ℤ) * A041144 n

end

end A042420.P13624304392205910103

/-!
# A042421: Denominators of continued fraction convergents to sqrt(738).

The programs for A042421, there is no canonical definition to state claims against.
-/

/-! ## A042421.P2250433920555717548

`lcm(3, A041145(n))/3`
-/

namespace A042421.P2250433920555717548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A041145 n) : ℚ) / 3

end

end A042421.P2250433920555717548

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

/-! ## A042421.P14126285151538008276

`A041145(n)/A053742(n)%4`
-/

namespace A042421.P14126285151538008276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (Int.tmod (A053742 n) 4 : ℚ)

end

end A042421.P14126285151538008276

/-! ## A042421.P4574177034763012167

`A041145(n)/(2-A004442(n)+n)`
-/

namespace A042421.P4574177034763012167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (2 - A004442 n + (n : ℤ) : ℚ)

end

end A042421.P4574177034763012167

/-! ## A042421.P10851063994458532324

`A041145(n)/A228035(A000124(n))`
-/

namespace A042421.P10851063994458532324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (A228035 (A000124 n).toNat : ℚ)

end

end A042421.P10851063994458532324

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

/-! ## A042433.P11806828935796180769

`A193965(A062918(n+1))`
-/

namespace A042433.P11806828935796180769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193965 (A062918 (n + 1)).toNat

end

end A042433.P11806828935796180769

/-! ## A042433.P5317761024771607121

`A193965(∑[A004086(n+1)])`
-/

namespace A042433.P5317761024771607121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A042433.P5317761024771607121

/-! ## A042433.P13742267789358566717

`A193965(∑[A004719(n+1)])`
-/

namespace A042433.P13742267789358566717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A042433.P13742267789358566717

/-!
# A042438: Numerators of continued fraction convergents to sqrt(747).

The programs for A042438, there is no canonical definition to state claims against.
-/

/-! ## A042438.P15304561932824472264

`abs(A041146(n)*A112030(n))`
-/

namespace A042438.P15304561932824472264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A041146 n * A112030 n|

end

end A042438.P15304561932824472264

/-! ## A042438.P18044224246696303477

`A041146(n)*A112030(n²)`
-/

namespace A042438.P18044224246696303477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041146 n * A112030 (n ^ 2)

end

end A042438.P18044224246696303477

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

/-! ## A042438.P3707539129998391257

`A010684(n+1)*A041146(n)`
-/

namespace A042438.P3707539129998391257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1) * A041146 n

end

end A042438.P3707539129998391257

/-!
# A042439: Denominators of continued fraction convergents to sqrt(747).

The programs for A042439, there is no canonical definition to state claims against.
-/

/-! ## A042439.P9402642143625605289

`A041147(n)/A010684(n)`
-/

namespace A042439.P9402642143625605289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041147 n : ℚ) / (A010684 n : ℚ)

end

end A042439.P9402642143625605289

/-! ## A042439.P6891736951477358874

`A041147(n)/A010873(2*n+1)`
-/

namespace A042439.P6891736951477358874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041147 n : ℚ) / (A010873 (2 * n + 1) : ℚ)

end

end A042439.P6891736951477358874

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

The programs for A042456, there is no canonical definition to state claims against.
-/

/-! ## A042456.P9618842903263630009

`A041148(n)*A176040(n)`
-/

namespace A042456.P9618842903263630009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041148 n * A176040 n

end

end A042456.P9618842903263630009

/-! ## A042456.P7138831790388454770

`(A033999(n)+2)*A041148(n)`
-/

namespace A042456.P7138831790388454770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 2) * A041148 n

end

end A042456.P7138831790388454770

/-! ## A042456.P5725161175676811799

`A041148(n)*A056753((n+1)²)`
-/

namespace A042456.P5725161175676811799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041148 n * A056753 ((n + 1) ^ 2)

end

end A042456.P5725161175676811799

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

/-!
# A042457: Denominators of continued fraction convergents to sqrt(756).

The programs for A042457, there is no canonical definition to state claims against.
-/

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

The programs for A042467, there is no canonical definition to state claims against.
-/

/-! ## A042467.P15119718576226267339

`a(n-2)+a(n-1)*A040733(n)` with `a(0)=1, a(1)=1`
-/

namespace A042467.P15119718576226267339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040733 n

end

end A042467.P15119718576226267339

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
# A042485: Denominators of continued fraction convergents to sqrt(770).

The programs for A042485, the canonical program `A042485.P17330649644404306320` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042485 has offset 0).

The definition of A042485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042485.P17330649644404306320

`222*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=219, a(5)=223, a(6)=665, a(7)=888`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042485

/-- `222*a(n-4)-a(n-8)` -/
def P17330649644404306320.Spec : Prop :=
  ∀ n, P17330649644404306320.a n = A042485 n

theorem P17330649644404306320.correct : P17330649644404306320.Spec := by
  intro n
  simp only [A042485]

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

/-! ## A042485.P5726076550734948770

`A004277(A041741(n))-A041253(n)`
-/

namespace A042485.P5726076550734948770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041741 n).toNat - A041253 n

end

end A042485.P5726076550734948770

namespace A042485

/-- `A004277(A041741(n))-A041253(n)` -/
def P5726076550734948770.Spec : Prop :=
  ∀ n, P5726076550734948770.a n = A042485 n

end A042485

/-!
# A042487: Denominators of continued fraction convergents to sqrt(771).

The programs for A042487, there is no canonical definition to state claims against.
-/

/-! ## A042487.P9018017785614571085

`A231555(A128318(n))+n!`
-/

namespace A042487.P9018017785614571085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231555 (A128318 n).toNat + (Nat.factorial n : ℤ)

end

end A042487.P9018017785614571085

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
# A042497: Denominators of continued fraction convergents to sqrt(776).

The programs for A042497, there is no canonical definition to state claims against.
-/

/-! ## A042497.P2841597829022638212

`A140106(A042505(n))+1`
-/

namespace A042497.P2841597829022638212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A042505 n).toNat + 1

end

end A042497.P2841597829022638212

/-!
# A042499: Denominators of continued fraction convergents to sqrt(777).

The programs for A042499, there is no canonical definition to state claims against.
-/

/-! ## A042499.P12215562944775525847

`A004277(A041473(n))-A041023(n)`
-/

namespace A042499.P12215562944775525847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041473 n).toNat - A041023 n

end

end A042499.P12215562944775525847

/-! ## A042499.P16487165160513134419

`A004277(A041751(n))-A041259(n)`
-/

namespace A042499.P16487165160513134419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041751 n).toNat - A041259 n

end

end A042499.P16487165160513134419

/-! ## A042499.P9071840104164067248

`A004277(A042093(n))-A041751(n)`
-/

namespace A042499.P9071840104164067248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042093 n).toNat - A041751 n

end

end A042499.P9071840104164067248

