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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A328901: Triangle T(n, k) read by rows: T(n, k) is the numerator of the rational Catalan number defined as binomial(n + k, n)/(n + k) for n > 0 and T(0, 0) = 1.

The programs for A328901, the canonical program `A328901.P982208090738083972` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328901 has offset 0).

The definition of A328901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328901.P982208090738083972

`A059481(n)/gcd(A003056(n), A059481(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328901

/-- `A059481(n)/gcd(A003056(n), A059481(n))` -/
def P982208090738083972.Spec : Prop :=
  ∀ n, P982208090738083972.a n = (A328901 n : ℚ)

end A328901

/-! ## A328901.P1130862388151831936

`A046899(n)/gcd(A046899(n), A051162(n))`
-/

namespace A328901.P1130862388151831936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046899 n : ℚ) / (Int.gcd (A046899 n) (A051162 n) : ℚ)

end

end A328901.P1130862388151831936

namespace A328901

/-- `A046899(n)/gcd(A046899(n), A051162(n))` -/
def P1130862388151831936.Spec : Prop :=
  ∀ n, P1130862388151831936.a n = (A328901 n : ℚ)

end A328901

/-! ## A328901.P2397811384877848222

`lcm(A046899(n), A134478(n))/A134478(n)`
-/

namespace A328901.P2397811384877848222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A046899 n) (A134478 n) : ℚ) / (A134478 n : ℚ)

end

end A328901.P2397811384877848222

namespace A328901

/-- `lcm(A046899(n), A134478(n))/A134478(n)` -/
def P2397811384877848222.Spec : Prop :=
  ∀ n, P2397811384877848222.a n = (A328901 n : ℚ)

end A328901

/-! ## A328901.P8844653584840457542

`A165661(A245300(n))`
-/

namespace A328901.P8844653584840457542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165661 (A245300 n).toNat

end

end A328901.P8844653584840457542

namespace A328901

/-- `A165661(A245300(n))` -/
def P8844653584840457542.Spec : Prop :=
  ∀ n, P8844653584840457542.a n = A328901 n

end A328901

/-! ## A328901.P3823600243744204504

`gcd(A008480(A100852(n)), A059481(n))`
-/

namespace A328901.P3823600243744204504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008480 (A100852 n).toNat) (A059481 n)

end

end A328901.P3823600243744204504

namespace A328901

/-- `gcd(A008480(A100852(n)), A059481(n))` -/
def P3823600243744204504.Spec : Prop :=
  ∀ n, (P3823600243744204504.a n : ℤ) = A328901 n

end A328901

/-!
# A328902: Triangle T(n, k) read by rows: T(n, k) is the denominator of the rational Catalan number defined as binomial(n + k, n)/(n + k) for 0 <= k <= n, n > 0; T(0, 0) = 1.

The programs for A328902, the canonical program `A328902.P11557614217852770634` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328902 has offset 0).

The definition of A328902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328902.P11557614217852770634

`A134478(n)/A046899(n)*A328901(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A328902

/-- `A134478(n)/A046899(n)*A328901(n)` -/
def P11557614217852770634.Spec : Prop :=
  ∀ n, P11557614217852770634.a n = (A328902 n : ℚ)

end A328902

/-! ## A328902.P2565827710479675013

`A134478(n)/gcd(A046899(n), A051162(n))`
-/

namespace A328902.P2565827710479675013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134478 n : ℚ) / (Int.gcd (A046899 n) (A051162 n) : ℚ)

end

end A328902.P2565827710479675013

namespace A328902

/-- `A134478(n)/gcd(A046899(n), A051162(n))` -/
def P2565827710479675013.Spec : Prop :=
  ∀ n, P2565827710479675013.a n = (A328902 n : ℚ)

end A328902

/-! ## A328902.P15728396377529453771

`A159335(A245300(A004277(n)-n))`
-/

namespace A328902.P15728396377529453771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A245300 (A004277 n - (n : ℤ)).toNat).toNat

end

end A328902.P15728396377529453771

namespace A328902

/-- `A159335(A245300(A004277(n)-n))` -/
def P15728396377529453771.Spec : Prop :=
  ∀ n, P15728396377529453771.a n = A328902 n

end A328902

/-! ## A328902.P7492603774608639241

`A159335(A245300(gcd(n, A008458(n))))`
-/

namespace A328902.P7492603774608639241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (A245300 (Int.gcd (n : ℤ) (A008458 n))).toNat

end

end A328902.P7492603774608639241

namespace A328902

/-- `A159335(A245300(gcd(n, A008458(n))))` -/
def P7492603774608639241.Spec : Prop :=
  ∀ n, P7492603774608639241.a n = A328902 n

end A328902

/-! ## A328902.P9682294867376742010

`gcd(A134478(n), A159335(A245300(n)))`
-/

namespace A328902.P9682294867376742010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134478 n) (A159335 (A245300 n).toNat)

end

end A328902.P9682294867376742010

namespace A328902

/-- `gcd(A134478(n), A159335(A245300(n)))` -/
def P9682294867376742010.Spec : Prop :=
  ∀ n, (P9682294867376742010.a n : ℤ) = A328902 n

end A328902

/-!
# A328903: Number of primes that are a concatenation of two positive integers whose sum is n.

The programs for A328903, there is no canonical definition to state claims against.
-/

/-! ## A328903.P7410994840044657098

`A001221(A061554((1-and(3, n)+n)*(n+1)))`
-/

namespace A328903.P7410994840044657098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A061554 ((1 - (Nat.land 3 n : ℤ) + (n : ℤ)) * (n + 1 : ℤ)).toNat).toNat

end

end A328903.P7410994840044657098

/-! ## A328903.P2837027247642676140

`Δ[A145804(n+1)]%A084057(A091684(n))`
-/

namespace A328903.P2837027247642676140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A084057 (A091684 n).toNat)

end

end A328903.P2837027247642676140

/-! ## A328903.P10966526274478806818

`A001222(C(A004186(n), A103489(n)))`
-/

namespace A328903.P10966526274478806818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A004186 n).toNat (A103489 n).toNat)

end

end A328903.P10966526274478806818

/-! ## A328903.P3619128024906259945

`A267263(A338132(n+5)%A174504(n))`
-/

namespace A328903.P3619128024906259945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (Int.tmod (A338132 (n + 5)) (A174504 n)).toNat

end

end A328903.P3619128024906259945

/-! ## A328903.P5940147384435466640

`A342845(xor(A007088(n), A098702(n+1)))`
-/

namespace A328903.P5940147384435466640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 (Int.xor (A007088 n) (A098702 (n + 1))).toNat

end

end A328903.P5940147384435466640

/-!
# A328911: Irregular triangle read by rows: T(n,k) = number of solutions to Erdös's Last Equation x_1*...*x_n = n*(x_1+...+x_n), 0 < x_1 <= ... <= x_n, having k+1 components x_i > 1, 1 <= k <= 2*log_2(n).

The programs for A328911, there is no canonical definition to state claims against.
-/

/-! ## A328911.P11330005597332977025

`C(A068908(A102973(n+5)), A007318(n))`
-/

namespace A328911.P11330005597332977025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068908 (A102973 (n + 5)).toNat).toNat (A007318 n).toNat

end

end A328911.P11330005597332977025

/-!
# A328915: If n = Product (p_j^k_j) then a(n) = Product (nextprime(p_j)), where nextprime = A151800.

The programs for A328915, the canonical program `A328915.P8931346115236859548` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328915 has offset 1).

The definition of A328915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328915.P8931346115236859548

`A007947(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A328915

/-- `A007947(A003961(n+1))` -/
def P8931346115236859548.Spec : Prop :=
  ∀ n, P8931346115236859548.a n = A328915 (n + 1)

theorem P8931346115236859548.correct : P8931346115236859548.Spec := by
  intro n
  simp only [A328915, Nat.add_sub_cancel]

end A328915

/-! ## A328915.P12451042709859864286

`A003961(∏{p}[1+n, #])`
-/

namespace A328915.P12451042709859864286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A328915.P12451042709859864286

namespace A328915

/-- `A003961(∏{p}[1+n, #])` -/
def P12451042709859864286.Spec : Prop :=
  ∀ n, P12451042709859864286.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P12845426834488962696

`∏{p}[n+1, A045965(#)]`
-/

namespace A328915.P12845426834488962696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A045965 p

end

end A328915.P12845426834488962696

namespace A328915

/-- `∏{p}[n+1, A045965(#)]` -/
def P12845426834488962696.Spec : Prop :=
  ∀ n, P12845426834488962696.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P15034199711210530708

`∏{p}[n+1, A064802(#)]`
-/

namespace A328915.P15034199711210530708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A064802 p

end

end A328915.P15034199711210530708

namespace A328915

/-- `∏{p}[n+1, A064802(#)]` -/
def P15034199711210530708.Spec : Prop :=
  ∀ n, P15034199711210530708.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P16910844681852021405

`∏{p}[n+1, A066169(#)]`
-/

namespace A328915.P16910844681852021405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A066169 p

end

end A328915.P16910844681852021405

namespace A328915

/-- `∏{p}[n+1, A066169(#)]` -/
def P16910844681852021405.Spec : Prop :=
  ∀ n, P16910844681852021405.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P3840515186973329325

`∏{p}[n+1, A067792(#)]`
-/

namespace A328915.P3840515186973329325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A067792 p

end

end A328915.P3840515186973329325

namespace A328915

/-- `∏{p}[n+1, A067792(#)]` -/
def P3840515186973329325.Spec : Prop :=
  ∀ n, P3840515186973329325.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P14652427432667719683

`∏{p}[n+1, A079427(#)]`
-/

namespace A328915.P14652427432667719683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A079427 p

end

end A328915.P14652427432667719683

namespace A328915

/-- `∏{p}[n+1, A079427(#)]` -/
def P14652427432667719683.Spec : Prop :=
  ∀ n, P14652427432667719683.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P8255305449981428531

`∏{p}[n+1, A079428(#)]`
-/

namespace A328915.P8255305449981428531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A079428 p

end

end A328915.P8255305449981428531

namespace A328915

/-- `∏{p}[n+1, A079428(#)]` -/
def P8255305449981428531.Spec : Prop :=
  ∀ n, P8255305449981428531.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P7696245625842009660

`∏{p}[n+1, A081761(#)]`
-/

namespace A328915.P7696245625842009660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A081761 p

end

end A328915.P7696245625842009660

namespace A328915

/-- `∏{p}[n+1, A081761(#)]` -/
def P7696245625842009660.Spec : Prop :=
  ∀ n, P7696245625842009660.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P16653994848908927716

`∏{p}[n+1, A082048(#)]`
-/

namespace A328915.P16653994848908927716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A082048 p

end

end A328915.P16653994848908927716

namespace A328915

/-- `∏{p}[n+1, A082048(#)]` -/
def P16653994848908927716.Spec : Prop :=
  ∀ n, P16653994848908927716.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P15270217433754302242

`∏{p}[n+1, A112276(#)]`
-/

namespace A328915.P15270217433754302242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A112276 p

end

end A328915.P15270217433754302242

namespace A328915

/-- `∏{p}[n+1, A112276(#)]` -/
def P15270217433754302242.Spec : Prop :=
  ∀ n, P15270217433754302242.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P14069564326347266051

`∏{p}[n+1, A117366(#)]`
-/

namespace A328915.P14069564326347266051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A117366 p

end

end A328915.P14069564326347266051

namespace A328915

/-- `∏{p}[n+1, A117366(#)]` -/
def P14069564326347266051.Spec : Prop :=
  ∀ n, P14069564326347266051.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P16392301757693619290

`∏{p}[n+1, A117367(#)]`
-/

namespace A328915.P16392301757693619290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A117367 p

end

end A328915.P16392301757693619290

namespace A328915

/-- `∏{p}[n+1, A117367(#)]` -/
def P16392301757693619290.Spec : Prop :=
  ∀ n, P16392301757693619290.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P17731053013814151444

`∏{p}[n+1, A151800(#)]`
-/

namespace A328915.P17731053013814151444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A151800 p

end

end A328915.P17731053013814151444

namespace A328915

/-- `∏{p}[n+1, A151800(#)]` -/
def P17731053013814151444.Spec : Prop :=
  ∀ n, P17731053013814151444.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P3918824878187130816

`∏{p}[n+1, A163620(#)]`
-/

namespace A328915.P3918824878187130816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A163620 p

end

end A328915.P3918824878187130816

namespace A328915

/-- `∏{p}[n+1, A163620(#)]` -/
def P3918824878187130816.Spec : Prop :=
  ∀ n, P3918824878187130816.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P13207127437180848352

`∏{p}[n+1, A253550(#)]`
-/

namespace A328915.P13207127437180848352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A253550 p

end

end A328915.P13207127437180848352

namespace A328915

/-- `∏{p}[n+1, A253550(#)]` -/
def P13207127437180848352.Spec : Prop :=
  ∀ n, P13207127437180848352.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P15656917182565023433

`A318321(∏{p}[n+1, #])`
-/

namespace A328915.P15656917182565023433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318321 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A328915.P15656917182565023433

namespace A328915

/-- `A318321(∏{p}[n+1, #])` -/
def P15656917182565023433.Spec : Prop :=
  ∀ n, P15656917182565023433.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P16785235536729226908

`∏{p}[n+1, A346091(#)]`
-/

namespace A328915.P16785235536729226908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A346091 p

end

end A328915.P16785235536729226908

namespace A328915

/-- `∏{p}[n+1, A346091(#)]` -/
def P16785235536729226908.Spec : Prop :=
  ∀ n, P16785235536729226908.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P17089681217123278625

`A003961(A076618(n+1)-1)`
-/

namespace A328915.P17089681217123278625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A076618 (n + 1) - 1).toNat

end

end A328915.P17089681217123278625

namespace A328915

/-- `A003961(A076618(n+1)-1)` -/
def P17089681217123278625.Spec : Prop :=
  ∀ n, P17089681217123278625.a n = A328915 (n + 1)

end A328915

/-! ## A328915.P14795827559495409900

`∏{p}[n+1, A007918(A000203(#))]`
-/

namespace A328915.P14795827559495409900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007918 (A000203 p).toNat

end

end A328915.P14795827559495409900

namespace A328915

/-- `∏{p}[n+1, A007918(A000203(#))]` -/
def P14795827559495409900.Spec : Prop :=
  ∀ n, P14795827559495409900.a n = A328915 (n + 1)

end A328915

/-!
# A328916: Number of n-digit decimal numbers containing 123 as a substring.

The programs for A328916, the canonical program `A328916.P16803181811202072821` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328916 has offset 0).

The definition of A328916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328916.P9539769010912659220

`ogf((x^3-x^4)/(1-20x+100x^2+x^3-10x^4))`
-/

namespace A328916.P9539769010912659220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, -1] [1, -20, 100, 1, -10] n

end

end A328916.P9539769010912659220

namespace A328916

/-- `ogf((x^3-x^4)/(1-20x+100x^2+x^3-10x^4))` -/
def P9539769010912659220.Spec : Prop :=
  ∀ n, P9539769010912659220.a n = A328916 n

end A328916

/-! ## A328916.P16803181811202072821

`10*a(n-1)+9*10^(n-4)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328916

/-- `10*a(n-1)+9*10^(n-4)-a(n-3)` -/
def P16803181811202072821.Spec : Prop :=
  ∀ n, P16803181811202072821.a n = (A328916 n : ℚ)

end A328916

/-! ## A328916.P6147620982296890248

`∑[A255379(∑[and(n, -(n+2))!])-A255376(n)]`
-/

namespace A328916.P6147620982296890248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (∑ j ∈ Finset.range (n + 1), f2 j) - A255376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328916.P6147620982296890248

namespace A328916

/-- `∑[A255379(∑[and(n, -(n+2))!])-A255376(n)]` -/
def P6147620982296890248.Spec : Prop :=
  ∀ n, P6147620982296890248.a n = A328916 n

end A328916

/-!
# A328917: Types of signatures of partitions of n (ordered firstly by decreasing greatest parts, then by decreasing sum of parts, then by increasing number of parts). Irregular triangle read by rows, length of row n is A088887(n).

The programs for A328917, there is no canonical definition to state claims against.
-/

/-! ## A328917.P2877705786696549426

`gcd(A319930(n)+A131536(n), A108228(n+1))`
-/

namespace A328917.P2877705786696549426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319930 n + A131536 n) (A108228 (n + 1))

end

end A328917.P2877705786696549426

/-! ## A328917.P7230095588205087835

`A329313(∑{d}[A010785(n), #])`
-/

namespace A328917.P7230095588205087835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A328917.P7230095588205087835

/-! ## A328917.P1562769550652057926

`A329313(∑{d}[A002113(n+1), #])`
-/

namespace A328917.P1562769550652057926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A328917.P1562769550652057926

/-! ## A328917.P4746471746380271544

`A329313(∑{d}[A030285(n+1), #])`
-/

namespace A328917.P4746471746380271544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A328917.P4746471746380271544

/-! ## A328917.P5376233388198552099

`A329313(∑{d}[A222620(n+1), #])`
-/

namespace A328917.P5376233388198552099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A328917.P5376233388198552099

/-!
# A328918: a(n) is the number of ordered pairs of positive integers (x, y) with x + y = 10^n, where x and y each have exactly n-digits but with initial zero digits allowed, and as strings, x and y are permutations of each other.

The programs for A328918, there is no canonical definition to state claims against.
-/

/-! ## A328918.P6188640111378683353

`∑{#}[floor(n/2), A287317(#)]`
-/

namespace A328918.P6188640111378683353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A287317 k

end

end A328918.P6188640111378683353

/-! ## A328918.P6425065466352741243

`A100038(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A328918.P6425065466352741243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A100038 (a (n - 2)).toNat

end

end A328918.P6425065466352741243

/-!
# A328919: Smallest index m such that from the m-th term on, the sequence {sigma_k(n) mod n: k >= 0} enters into a cycle.

The programs for A328919, there is no canonical definition to state claims against.
-/

/-! ## A328919.P12438184586047896040

`A052409(n+1)-floor(n/∏{p}[n+1, #])*A346459(2*n+3)`
-/

namespace A328919.P12438184586047896040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ * A346459 (2 * n + 3)

end

end A328919.P12438184586047896040

/-! ## A328919.P10535856980234594123

`A051904(n+1)*A267778(A000292(n))`
-/

namespace A328919.P10535856980234594123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1) * A267778 (A000292 n).toNat

end

end A328919.P10535856980234594123

/-! ## A328919.P16677259316817615959

`A051904(n+1)%A004521(A054842(n))`
-/

namespace A328919.P16677259316817615959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051904 (n + 1)) (A004521 (A054842 n).toNat)

end

end A328919.P16677259316817615959

/-! ## A328919.P16154973164484818947

`A052409(n+1)%A004521(A054842(n))`
-/

namespace A328919.P16154973164484818947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052409 (n + 1)) (A004521 (A054842 n).toNat)

end

end A328919.P16154973164484818947

/-! ## A328919.P1281075269624903406

`abs(A158052(n+1)*A267778(A000292(n)))`
-/

namespace A328919.P1281075269624903406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158052 (n + 1) * A267778 (A000292 n).toNat|

end

end A328919.P1281075269624903406

/-!
# A328920: let f(N) be the smallest index m such that from the m-th term on, the sequence {k^k mod N: k >= 0} enters into a cycle, then a(n) is the smallest number N such that f(N) = n, or 0 if no such n exists.

The programs for A328920, there is no canonical definition to state claims against.
-/

/-! ## A328920.P3042499963373677880

`A007814(A051000(3*(n+1)))^n`
-/

namespace A328920.P3042499963373677880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A051000 (3 * (n + 1))).toNat ^ n

end

end A328920.P3042499963373677880

/-! ## A328920.P7308042849897780576

`A276658(A003963(n+1))^A004891(n+1)`
-/

namespace A328920.P7308042849897780576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276658 (A003963 (n + 1)).toNat : ℚ) ^ (A004891 (n + 1) : ℤ)

end

end A328920.P7308042849897780576

/-! ## A328920.P4499803650256227614

`(abs(1-n)*A262805(a(n-1)))^n` with `a(0)=1, a(1)=2`
-/

namespace A328920.P4499803650256227614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (|1 - (n : ℤ)| * A262805 (a (n - 1)).toNat) ^ n

end

end A328920.P4499803650256227614

/-!
# A328921: Triangle read by rows: T(n,k) = number of vertex labeled connected Goldstone diagrams with n interactions and k external potentials.

The programs for A328921, there is no canonical definition to state claims against.
-/

/-! ## A328921.P10447057543641194129

`A003056(n)!*A119274(n)-A328922(n)`
-/

namespace A328921.P10447057543641194129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A119274 n - A328922 n

end

end A328921.P10447057543641194129

/-! ## A328921.P10156598539733968062

`A117707(n)!*A119274(n)-A328922(n)`
-/

namespace A328921.P10156598539733968062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A117707 n).toNat : ℤ) * A119274 n - A328922 n

end

end A328921.P10156598539733968062

/-! ## A328921.P16387442079126056431

`A294317(n)!*A007318(n)-A328922(n)`
-/

namespace A328921.P16387442079126056431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A294317 n).toNat : ℤ) * A007318 n - A328922 n

end

end A328921.P16387442079126056431

/-! ## A328921.P17595986583339573370

`sqrt(A008459(n))*A294317(n)!-A328922(n)`
-/

namespace A328921.P17595986583339573370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (Nat.factorial (A294317 n).toNat : ℝ) - (A328922 n : ℝ)

end

end A328921.P17595986583339573370

/-! ## A328921.P8543734971771878069

`A007318(n)*A143084(A061579(n))-A328922(n)`
-/

namespace A328921.P8543734971771878069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A143084 (A061579 n).toNat - A328922 n

end

end A328921.P8543734971771878069

/-!
# A328922: Triangle T(n,k): vertex labeled disconnected Goldstone diagrams with n interactions and k external potentials.

The programs for A328922, there is no canonical definition to state claims against.
-/

/-! ## A328922.P1409948586905522048

`A003056(n)!*A119274(n)-A328921(n)`
-/

namespace A328922.P1409948586905522048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A119274 n - A328921 n

end

end A328922.P1409948586905522048

/-! ## A328922.P18440258000865151146

`A117707(n)!*A119274(n)-A328921(n)`
-/

namespace A328922.P18440258000865151146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A117707 n).toNat : ℤ) * A119274 n - A328921 n

end

end A328922.P18440258000865151146

/-! ## A328922.P3989012898018980228

`A294317(n)!*A007318(n)-A328921(n)`
-/

namespace A328922.P3989012898018980228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A294317 n).toNat : ℤ) * A007318 n - A328921 n

end

end A328922.P3989012898018980228

/-! ## A328922.P16444595171585839618

`sqrt(A008459(n))*A294317(n)!-A328921(n)`
-/

namespace A328922.P16444595171585839618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (Nat.factorial (A294317 n).toNat : ℝ) - (A328921 n : ℝ)

end

end A328922.P16444595171585839618

/-! ## A328922.P9338059028194197864

`A007318(n)*A143084(A061579(n))-A328921(n)`
-/

namespace A328922.P9338059028194197864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A143084 (A061579 n).toNat - A328921 n

end

end A328922.P9338059028194197864

/-!
# A328925: a(n) = A002322(n)/A118106(n); write n = Product_{i=1..t} p_i^e_i, then a(n) = A002322(n)/(lcm_{1<=i,j<=t,i!=j} ord(p_i,p_j^e_j)), where ord(a,r) is the multiplicative order of a modulo r, and A002322 is the Carmichael lambda (usually written as psi).

The programs for A328925, there is no canonical definition to state claims against.
-/

/-! ## A328925.P7920129982196980871

`A002322(n+1)/A118106(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328925.P7920129982196980871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A118106 (n + 1) : ℚ)

end

end A328925.P7920129982196980871

/-! ## A328925.P16157745209886208366

`(A263027(n+1)-1)/A118106(n+1)`
-/

namespace A328925.P16157745209886208366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263027 (n + 1) - 1 : ℚ) / (A118106 (n + 1) : ℚ)

end

end A328925.P16157745209886208366

/-! ## A328925.P339446831122908991

`(1-A277127(n+1)+n)/A118106(n+1)`
-/

namespace A328925.P339446831122908991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A277127 (n + 1) + (n : ℤ) : ℚ) / (A118106 (n + 1) : ℚ)

end

end A328925.P339446831122908991

/-! ## A328925.P5355171687971092944

`A023443(A263027(n+1))/A118106(n+1)`
-/

namespace A328925.P5355171687971092944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (A263027 (n + 1)).toNat : ℚ) / (A118106 (n + 1) : ℚ)

end

end A328925.P5355171687971092944

/-! ## A328925.P11289733182329239234

`A004736(A289622(n+1))/A118106(n+1)`
-/

namespace A328925.P11289733182329239234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (A289622 (n + 1)).toNat : ℚ) / (A118106 (n + 1) : ℚ)

end

end A328925.P11289733182329239234

/-! ## A328925.P14252541986084300045

`(A000010(n+1)-A104194(n+1))/A118106(n+1)`
-/

namespace A328925.P14252541986084300045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A104194 (n + 1) : ℚ) / (A118106 (n + 1) : ℚ)

end

end A328925.P14252541986084300045

/-! ## A328925.P11999419739852471220

`(A000040(n+1)-A104193(n+1))/A118106(n+1)`
-/

namespace A328925.P11999419739852471220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A104193 (n + 1) : ℚ) / (A118106 (n + 1) : ℚ)

end

end A328925.P11999419739852471220

/-! ## A328925.P8184493354318064876

`(A104192(n+1)-A104195(n+1))/A118106(n+1)`
-/

namespace A328925.P8184493354318064876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104192 (n + 1) - A104195 (n + 1) : ℚ) / (A118106 (n + 1) : ℚ)

end

end A328925.P8184493354318064876

/-! ## A328925.P9258866557744915726

`A000010(n+1)/(A034380(n+1)*A118106(n+1))`
-/

namespace A328925.P9258866557744915726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A034380 (n + 1) * A118106 (n + 1) : ℚ)

end

end A328925.P9258866557744915726

/-! ## A328925.P4711024047737960798

`∑{d}[n+1, A008683(#)*A141258((n+1)/#)]/A118106(n+1)`
-/

namespace A328925.P4711024047737960798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A141258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / (A118106 (n + 1) : ℚ)

end

end A328925.P4711024047737960798

/-!
# A328926: Numbers k such that A328925(k) = 1; numbers k such that if we write k = Product_{i=1..t} p_i^e_i, then lcm_{1<=i,j<=t,i!=j} ord(p_i,p_j^e_j) = A002322(k), where ord(a,r) is the multiplicative order of a modulo r, and A002322 is the Carmichael lambda (usually written as psi).

The programs for A328926, there is no canonical definition to state claims against.
-/

/-! ## A328926.P7962742583049086753

`eq[A002322(n+1), A118106(n+1)]+1`
-/

namespace A328926.P7962742583049086753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328926.P7962742583049086753

/-! ## A328926.P14663096815576423275

`eq[1, (A263027(n+1)-1)/A118106(n+1)]+1`
-/

namespace A328926.P14663096815576423275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263027 (n + 1) - 1 : ℚ) / (A118106 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A328926.P14663096815576423275

/-! ## A328926.P7039225247916824442

`eq[A004736(A289622(n+1)), A118106(n+1)]+1`
-/

namespace A328926.P7039225247916824442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A289622 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328926.P7039225247916824442

/-! ## A328926.P10718419310549939547

`eq[A000010(n+1)-A104194(n+1), A118106(n+1)]+1`
-/

namespace A328926.P10718419310549939547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A104194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328926.P10718419310549939547

/-! ## A328926.P8781646425651166278

`eq[A104192(n+1)-A104195(n+1), A118106(n+1)]+1`
-/

namespace A328926.P8781646425651166278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1) - A104195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328926.P8781646425651166278

/-! ## A328926.P1879038597422794928

`eq[1, (A000040(n+1)-A104193(n+1))/A118106(n+1)]+1`
-/

namespace A328926.P1879038597422794928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A104193 (n + 1) : ℚ) / (A118106 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A328926.P1879038597422794928

/-!
# A328927: Decimal expansion of (9^2 + (19^2)/22)^(1/4): an approximation for Pi from Srinivasa Ramanujan.

The programs for A328927, there is no canonical definition to state claims against.
-/

/-! ## A328927.P6207407627272283501

`A247385(n+1)-A347579(A247376(n))`
-/

namespace A328927.P6207407627272283501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247385 (n + 1) - A347579 (A247376 n).toNat

end

end A328927.P6207407627272283501

/-!
# A328928: Squares visited by a knight moving on a taxicab geometry numbered board where the knight moves to the smallest numbered unvisited square; the minimum distance from the origin is used if the square numbers are equal; the smallest spiral number ordering is used if the distances are equal.

The programs for A328928, there is no canonical definition to state claims against.
-/

/-! ## A328928.P18174865404068059679

`A214526(A328908(n)+1)`
-/

namespace A328928.P18174865404068059679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A328908 n + 1).toNat

end

end A328928.P18174865404068059679

/-! ## A328928.P5278354064328456629

`A214526(abs(A260196(n)-A328908(n)))`
-/

namespace A328928.P5278354064328456629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 |A260196 n - A328908 n|.toNat

end

end A328928.P5278354064328456629

/-! ## A328928.P14114709051732408840

`A214526(1-A260196(n)*A328908(n))`
-/

namespace A328928.P14114709051732408840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (1 - A260196 n * A328908 n).toNat

end

end A328928.P14114709051732408840

/-! ## A328928.P1067072366232393788

`A116939(A326922(n))%A101703(n+6)`
-/

namespace A328928.P1067072366232393788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116939 (A326922 n).toNat) (A101703 (n + 6))

end

end A328928.P1067072366232393788

/-! ## A328928.P14059240417354459527

`A116939(A326922(n))%A075824(A080036(n))`
-/

namespace A328928.P14059240417354459527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116939 (A326922 n).toNat) (A075824 (A080036 n).toNat)

end

end A328928.P14059240417354459527

/-! ## A328928.P4020775567408054407

`A116939(A326922(n))+A000007(A054554(n+1))`
-/

namespace A328928.P4020775567408054407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A326922 n).toNat + A000007 (A054554 (n + 1)).toNat

end

end A328928.P4020775567408054407

/-! ## A328928.P8727927264983695577

`A116939(A326922(n)%A293662(n+1))`
-/

namespace A328928.P8727927264983695577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.tmod (A326922 n) (A293662 (n + 1))).toNat

end

end A328928.P8727927264983695577

/-!
# A328929: Squares visited by a knight moving on a square-ringed numbered board where the knight moves to the smallest numbered unvisited square; the minimum distance from the origin is used if the square numbers are equal; the smallest spiral number ordering is used if the distances are equal.

The programs for A328929, there is no canonical definition to state claims against.
-/

/-! ## A328929.P12049767303660646568

`round(sqrt(A328909(n))/2)`
-/

namespace A328929.P12049767303660646568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A328909 n : ℝ) / 2)

end

end A328929.P12049767303660646568

/-! ## A328929.P12005462121825986519

`A110654(floor(sqrt(A328909(n))))`
-/

namespace A328929.P12005462121825986519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.sqrt (A328909 n)).toNat

end

end A328929.P12005462121825986519

/-! ## A328929.P6836293479241270014

`A004526(floor(sqrt(A328909(n)))+1)`
-/

namespace A328929.P6836293479241270014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.sqrt (A328909 n) + 1).toNat

end

end A328929.P6836293479241270014

/-! ## A328929.P8003124498290213486

`A008612(3*floor(sqrt(A328909(n)))+1)`
-/

namespace A328929.P8003124498290213486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (3 * Int.sqrt (A328909 n) + 1).toNat

end

end A328929.P8003124498290213486

/-!
# A328930: Numbers N such that A328919(N) < A051903(N); numbers N such that {sigma_k(N) mod N: k >= m} is purely periodic with some m < e, where e is the maximal exponent in prime factorization of N.

The programs for A328930, there is no canonical definition to state claims against.
-/

/-! ## A328930.P10424141185726758999

`lt[A328919(n+1), A051903(n+1)]+1`
-/

namespace A328930.P10424141185726758999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A328930.P10424141185726758999

/-! ## A328930.P9750041962943251629

`A059404(lt[A360866(3*n+5), A345330(n+1)]+1)`
-/

namespace A328930.P9750041962943251629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360866 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A328930.P9750041962943251629

/-! ## A328930.P3637939306266286825

`A059404(lt[A360866(3*n+5), A000040(2*(n+1))]+1)`
-/

namespace A328930.P3637939306266286825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360866 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A328930.P3637939306266286825

/-! ## A328930.P16715052715179860831

`A360246(lt[A192456(3*n+4), n])`
-/

namespace A328930.P16715052715179860831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192456 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A328930.P16715052715179860831

/-! ## A328930.P18088554611201112089

`A332785(lt[A239881(n+3), A000203(n+1)])`
-/

namespace A328930.P18088554611201112089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239881 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328930.P18088554611201112089

/-!
# A328931: Number of Hamiltonian paths in an n X n square, starting from an edge, finishing anywhere, all symmetries excluded.

The programs for A328931, there is no canonical definition to state claims against.
-/

/-! ## A328931.P10579652086718427945

`A089020(xor(7, 6*a(n-1)-a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A328931.P10579652086718427945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A089020 (Int.xor 7 (6 * a (n - 1) - a (n - 2))).toNat

end

end A328931.P10579652086718427945

/-!
# A328932: Number of primes that are a concatenation of two positive integers whose sum is prime(n).

The programs for A328932, there is no canonical definition to state claims against.
-/

/-! ## A328932.P3070059209796946538

`A328903(A000040(n+1))`
-/

namespace A328932.P3070059209796946538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (A000040 (n + 1)).toNat

end

end A328932.P3070059209796946538

/-! ## A328932.P15276975763439796576

`A328903(A008578(n+2))`
-/

namespace A328932.P15276975763439796576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (A008578 (n + 2)).toNat

end

end A328932.P15276975763439796576

/-! ## A328932.P16634899292604088033

`A328903(A182986(n+2))`
-/

namespace A328932.P16634899292604088033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (A182986 (n + 2)).toNat

end

end A328932.P16634899292604088033

/-! ## A328932.P14771418157899712745

`A328903(record[A006530(n+2)])`
-/

namespace A328932.P14771418157899712745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328932.P14771418157899712745

/-! ## A328932.P7686921451145518860

`A328903(record[A020639(n+2)])`
-/

namespace A328932.P7686921451145518860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328932.P7686921451145518860

/-! ## A328932.P7580766270903049966

`A328903(eq[1, A010051(n+1)]+1)`
-/

namespace A328932.P7580766270903049966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A328932.P7580766270903049966

/-! ## A328932.P3910631534696094917

`A328903(eq[1, A003415(n)])`
-/

namespace A328932.P3910631534696094917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328932.P3910631534696094917

/-! ## A328932.P18259706312565038674

`A328903(record[A039649(n+1)])`
-/

namespace A328932.P18259706312565038674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328932.P18259706312565038674

/-! ## A328932.P13617738031470660098

`A328903(record[A039650(n+1)])`
-/

namespace A328932.P13617738031470660098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328932.P13617738031470660098

/-! ## A328932.P16378212494302893288

`A328903(record[A014963(n+2)])`
-/

namespace A328932.P16378212494302893288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328932.P16378212494302893288

/-!
# A328934: Nonsquarefree N such that A328919(N) = 1; nonsquarefree N such that {sigma_t(N) mod N: t >= 1} is purely periodic, while {sigma_t(N) mod N: t >= 0} is not.

The programs for A328934, there is no canonical definition to state claims against.
-/

/-! ## A328934.P11609959882098282451

`filter[A328930(n+1), A328919(#)]`
-/

namespace A328934.P11609959882098282451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328919 (f1 j).toNat = 1) n)

end

end A328934.P11609959882098282451

/-! ## A328934.P13795258460464620800

`∩[A321453(n+1), A364996(n+1)]`
-/

namespace A328934.P13795258460464620800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328934.P13795258460464620800

/-! ## A328934.P9456385471140084322

`∩[A364996(n+1), A366319(n+1)]`
-/

namespace A328934.P9456385471140084322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328934.P9456385471140084322

/-! ## A328934.P15136860412759454819

`∩[A364996(n+1), A371731(n+1)]`
-/

namespace A328934.P15136860412759454819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328934.P15136860412759454819

/-!
# A328935: Imprimitive Carmichael numbers: Carmichael numbers m such that if m = p_1 * p_2 * ... *p_k is the prime factorization of m then g(m) = gcd(p_1 - 1, ..., p_k - 1) > sqrt(lambda(m)), where lambda is the Carmichael lambda function (A002322).

The programs for A328935, there is no canonical definition to state claims against.
-/

/-! ## A328935.P13991425884032439046

`A324316(A330929(n+1)+5)`
-/

namespace A328935.P13991425884032439046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324316 (A330929 (n + 1) + 5).toNat

end

end A328935.P13991425884032439046

/-!
# A328936: The number of imprimitive Carmichael numbers (A328935) below 10^n.

The programs for A328936, there is no canonical definition to state claims against.
-/

/-! ## A328936.P15554587841573939301

`A371058(A277224(n+2))`
-/

namespace A328936.P15554587841573939301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371058 (A277224 (n + 2)).toNat

end

end A328936.P15554587841573939301

/-!
# A328937: The number of imprimitive 3-Carmichael numbers (A087788 and A328935) below 10^n.

The programs for A328937, there is no canonical definition to state claims against.
-/

/-! ## A328937.P9349361425244525495

`A229924(n+1)+A135662(A154638(n+2))`
-/

namespace A328937.P9349361425244525495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229924 (n + 1) + A135662 (A154638 (n + 2)).toNat

end

end A328937.P9349361425244525495

/-! ## A328937.P8359969571284472698

`A066898(2*(n+2))-A268833(A067764(n+1))`
-/

namespace A328937.P8359969571284472698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066898 (2 * (n + 2)) - A268833 (A067764 (n + 1)).toNat

end

end A328937.P8359969571284472698

/-!
# A328943: a(n) = 2 + (n mod 4).

The programs for A328943, the canonical program `A328943.P15967666230688617744` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328943 has offset 0).

The definition of A328943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+n%4` (program `A328943.P15967666230688617744`, by `A328943.P15967666230688617744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A328943.P15967666230688617744

`2+n%4`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328943

/-- `2+n%4` -/
def P15967666230688617744.Spec : Prop :=
  ∀ n, (P15967666230688617744.a n : ℤ) = A328943 n

theorem P15967666230688617744.correct : P15967666230688617744.Spec := by
  intro n
  simp only [A328943]

end A328943

/-!
# A328944: Arithmetic numbers (A003601) that are not harmonic (A001599).

The programs for A328944, there is no canonical definition to state claims against.
-/

/-! ## A328944.P10639363887305727935

`A003601(A165024(n+1)+n)`
-/

namespace A328944.P10639363887305727935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (A165024 (n + 1) + (n : ℤ)).toNat

end

end A328944.P10639363887305727935

/-! ## A328944.P7260700577407372510

`A003601(A293754(2+n))`
-/

namespace A328944.P7260700577407372510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (A293754 (2 + n)).toNat

end

end A328944.P7260700577407372510

/-! ## A328944.P17202002044047067735

`filter[A272978(n+2), A245656(#)]`
-/

namespace A328944.P17202002044047067735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272978 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A328944.P17202002044047067735

/-! ## A328944.P7587197423819036614

`filter[A127161(n+1), A245656(#)]`
-/

namespace A328944.P7587197423819036614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A328944.P7587197423819036614

/-! ## A328944.P1142020966632601531

`∩[A003601(n+1), A127161(n+1)]`
-/

namespace A328944.P1142020966632601531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328944.P1142020966632601531

/-!
# A328945: Numbers m that are neither arithmetic (A003601) nor harmonic (A001599).

The programs for A328945, there is no canonical definition to state claims against.
-/

/-! ## A328945.P14527509316268247383

`A326713(∑[A268643(n)!])`
-/

namespace A328945.P14527509316268247383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A268643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326713 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328945.P14527509316268247383

/-! ## A328945.P15457760447575742927

`record[A094759(A326713(n+1))]`
-/

namespace A328945.P15457760447575742927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (A326713 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328945.P15457760447575742927

/-! ## A328945.P560164867441328706

`A326713(2-A015142(n)+n)`
-/

namespace A328945.P560164867441328706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326713 (2 - A015142 n + (n : ℤ)).toNat

end

end A328945.P560164867441328706

/-! ## A328945.P9105598972999882857

`A326713(2-(A015142(n)-n))`
-/

namespace A328945.P9105598972999882857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326713 (2 - (A015142 n - (n : ℤ))).toNat

end

end A328945.P9105598972999882857

/-! ## A328945.P13196726167108359385

`record[A326713(n+1)/A268643(n)!]`
-/

namespace A328945.P13196726167108359385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326713 (n + 1) : ℚ) / (Nat.factorial (A268643 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328945.P13196726167108359385

/-!
# A328946: Product of primorials of consecutive integers (second definition A034386).

The programs for A328946, the canonical program `A328946.P2919445735218718925` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328946 has offset 0).

The definition of A328946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328946.P2919445735218718925

`lcm(n, a(n-1)²/a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328946

/-- `lcm(n, a(n-1)²/a(n-2))` -/
def P2919445735218718925.Spec : Prop :=
  ∀ n, (P2919445735218718925.a n : ℤ) = A328946 n

theorem P2919445735218718925.correct : P2919445735218718925.Spec := by
  intro n
  simp only [A328946]

end A328946

/-! ## A328946.P1600090504147780352

`∏[lcm(a(n-1), ∏{p}[n, #])]` with `a(0)=1`
-/

namespace A328946.P1600090504147780352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm (f1 (n - 1)) (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A328946.P1600090504147780352

namespace A328946

/-- `∏[lcm(a(n-1), ∏{p}[n, #])]` -/
def P1600090504147780352.Spec : Prop :=
  ∀ n, (P1600090504147780352.a n : ℤ) = A328946 n

end A328946

/-! ## A328946.P4322011190572908326

`∏[A034386(n)]`
-/

namespace A328946.P4322011190572908326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A328946.P4322011190572908326

namespace A328946

/-- `∏[A034386(n)]` -/
def P4322011190572908326.Spec : Prop :=
  ∀ n, P4322011190572908326.a n = A328946 n

end A328946

/-! ## A328946.P6577102362227239614

`∏[A300951(2*n)]`
-/

namespace A328946.P6577102362227239614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A328946.P6577102362227239614

namespace A328946

/-- `∏[A300951(2*n)]` -/
def P6577102362227239614.Spec : Prop :=
  ∀ n, P6577102362227239614.a n = A328946 n

end A328946

/-! ## A328946.P889886937014397265

`abs(A118686(∑[n+2]))`
-/

namespace A328946.P889886937014397265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118686 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A328946.P889886937014397265

namespace A328946

/-- `abs(A118686(∑[n+2]))` -/
def P889886937014397265.Spec : Prop :=
  ∀ n, P889886937014397265.a n = A328946 n

end A328946

/-!
# A328947: Numbers formed from decimal digits 0 and/or 1 which are divisible by 7.

The programs for A328947, the canonical program `A328947.P4451189695784527050` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328947 has offset 1).

The definition of A328947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4681 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328947.P4451189695784527050

`A007088(eq[0, A007088(n)%7])`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328947

/-- `A007088(eq[0, A007088(n)%7])` -/
def P4451189695784527050.Spec : Prop :=
  ∀ n, P4451189695784527050.a n = A328947 (n + 1)

theorem P4451189695784527050.correct : P4451189695784527050.Spec := by
  intro n
  simp only [A328947, Nat.add_sub_cancel]

end A328947

/-! ## A328947.P12078848682160935670

`A007088(eq[7, gcd(7, A007088(n))])`
-/

namespace A328947.P12078848682160935670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A007088 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328947.P12078848682160935670

namespace A328947

/-- `A007088(eq[7, gcd(7, A007088(n))])` -/
def P12078848682160935670.Spec : Prop :=
  ∀ n, P12078848682160935670.a n = A328947 (n + 1)

end A328947

/-! ## A328947.P7102741058893790172

`A007089(eq[n, A109048(A060374(n))])`
-/

namespace A328947.P7102741058893790172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109048 (A060374 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328947.P7102741058893790172

namespace A328947

/-- `A007089(eq[n, A109048(A060374(n))])` -/
def P7102741058893790172.Spec : Prop :=
  ∀ n, P7102741058893790172.a n = A328947 (n + 1)

end A328947

/-! ## A328947.P12809990535030983340

`∩[7*n, A007088(n)]`
-/

namespace A328947.P12809990535030983340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328947.P12809990535030983340

namespace A328947

/-- `∩[7*n, A007088(n)]` -/
def P12809990535030983340.Spec : Prop :=
  ∀ n, (P12809990535030983340.a n : ℤ) = A328947 (n + 1)

end A328947

/-! ## A328947.P1452101341591042581

`∩[7*n, A278038(n)]`
-/

namespace A328947.P1452101341591042581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328947.P1452101341591042581

namespace A328947

/-- `∩[7*n, A278038(n)]` -/
def P1452101341591042581.Spec : Prop :=
  ∀ n, (P1452101341591042581.a n : ℤ) = A328947 (n + 1)

end A328947

/-!
# A328948: Number of primes that are a concatenation of two positive integers whose product is n.

The programs for A328948, there is no canonical definition to state claims against.
-/

/-! ## A328948.P9547673369470574011

`A000002(A332836(n))*A156258(2*n+3)`
-/

namespace A328948.P9547673369470574011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A332836 n).toNat * A156258 (2 * n + 3)

end

end A328948.P9547673369470574011

/-! ## A328948.P9156500126753369247

`A270417(n+1)+A096271(A002487(n+8)%A283503(n+9))`
-/

namespace A328948.P9156500126753369247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1) + A096271 (Int.tmod (A002487 (n + 8)) (A283503 (n + 9))).toNat

end

end A328948.P9156500126753369247

/-! ## A328948.P6827198406062812394

`∑[A182992(A079542(n+1))]%3`
-/

namespace A328948.P6827198406062812394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182992 (A079542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A328948.P6827198406062812394

/-! ## A328948.P18062165896963691754

`∑[A092782(A188808(n+1))]%3`
-/

namespace A328948.P18062165896963691754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (A188808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A328948.P18062165896963691754

/-! ## A328948.P1521731306004461408

`A083093(Δ[A000566(A075190(n+1))])`
-/

namespace A328948.P1521731306004461408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A075190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083093 (f1 (n + 1) - f1 n).toNat

end

end A328948.P1521731306004461408

/-!
# A328949: Number of non-primitive Pythagorean triples with n as a leg or the hypotenuse.

The programs for A328949, the canonical program `A328949.P9082150225325732429` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328949 has offset 1).

The definition of A328949 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328708, A328712, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328949.P9082150225325732429

`A328708(n+1)+A328712(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A328949

/-- `A328708(n+1)+A328712(n+1)` -/
def P9082150225325732429.Spec : Prop :=
  ∀ n, P9082150225325732429.a n = A328949 (n + 1)

theorem P9082150225325732429.correct : P9082150225325732429.Spec := by
  intro n
  simp only [A328949, Nat.add_sub_cancel]

end A328949

/-! ## A328949.P9756157491391917290

`A046081(n+1)-A024363(n+1)`
-/

namespace A328949.P9756157491391917290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - A024363 (n + 1)

end

end A328949.P9756157491391917290

namespace A328949

/-- `A046081(n+1)-A024363(n+1)` -/
def P9756157491391917290.Spec : Prop :=
  ∀ n, P9756157491391917290.a n = A328949 (n + 1)

theorem P9756157491391917290.correct : P9756157491391917290.Spec := by
  intro n
  simp only [A328949, Nat.add_sub_cancel, A328949.P9756157491391917290.a, A328949.P9082150225325732429.a, A024363, A024363.P18199515356215548539.a, A046081, A046081.P5098545024402691022.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A004526, A004526.P10084182425416171735.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A019590, A019590.P14414942524970611003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328949

/-! ## A328949.P12441716109709740224

`∑{d}[n+1, A046081(#)*A157658((n+1)/#)]`
-/

namespace A328949.P12441716109709740224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046081 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328949.P12441716109709740224

namespace A328949

/-- `∑{d}[n+1, A046081(#)*A157658((n+1)/#)]` -/
def P12441716109709740224.Spec : Prop :=
  ∀ n, P12441716109709740224.a n = A328949 (n + 1)

end A328949

/-! ## A328949.P12902103276289151329

`A046081(n+1)-(A024362(n+1)+A024361(n+1))`
-/

namespace A328949.P12902103276289151329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - (A024362 (n + 1) + A024361 (n + 1))

end

end A328949.P12902103276289151329

namespace A328949

/-- `A046081(n+1)-(A024362(n+1)+A024361(n+1))` -/
def P12902103276289151329.Spec : Prop :=
  ∀ n, P12902103276289151329.a n = A328949 (n + 1)

theorem P12902103276289151329.correct : P12902103276289151329.Spec := by
  intro n
  simp only [A328949, Nat.add_sub_cancel, A328949.P12902103276289151329.a, A328949.P9082150225325732429.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046081, A046081.P5098545024402691022.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A004526, A004526.P10084182425416171735.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A000089, A000089.P6732950680245443794.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A019590, A019590.P14414942524970611003.a, A063014, A063014.P2435970929241132637.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328949

/-! ## A328949.P14990539977028159624

`A046079(n+1)+A046080(n+1)-A024363(n+1)`
-/

namespace A328949.P14990539977028159624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) + (A046080 (n + 1) - A024363 (n + 1))

end

end A328949.P14990539977028159624

namespace A328949

/-- `A046079(n+1)+A046080(n+1)-A024363(n+1)` -/
def P14990539977028159624.Spec : Prop :=
  ∀ n, P14990539977028159624.a n = A328949 (n + 1)

theorem P14990539977028159624.correct : P14990539977028159624.Spec := by
  intro n
  simp only [A328949, Nat.add_sub_cancel, A328949.P14990539977028159624.a, A328949.P9082150225325732429.a, A024363, A024363.P18199515356215548539.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A063014, A063014.P2435970929241132637.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A000089, A000089.P6732950680245443794.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A019590, A019590.P14414942524970611003.a, A063725, A063725.P16120519344882003695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328949

/-! ## A328949.P5286873839822291110

`A046080(n+1)+A328708(n+1)-A024362(n+1)`
-/

namespace A328949.P5286873839822291110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1) + (A328708 (n + 1) - A024362 (n + 1))

end

end A328949.P5286873839822291110

namespace A328949

/-- `A046080(n+1)+A328708(n+1)-A024362(n+1)` -/
def P5286873839822291110.Spec : Prop :=
  ∀ n, P5286873839822291110.a n = A328949 (n + 1)

theorem P5286873839822291110.correct : P5286873839822291110.Spec := by
  intro n
  simp only [A328949, Nat.add_sub_cancel, A328949.P5286873839822291110.a, A328949.P9082150225325732429.a, A024362, A024362.P4327117018867467884.a, A046080, A046080.P16111352627053334427.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A024361, A024361.P1146025692209475519.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A019590, A019590.P14414942524970611003.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A026741, A026741.P7397200255647832146.a, A063725, A063725.P16120519344882003695.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328949

/-! ## A328949.P11730143158458810985

`A046079(n+1)+A328712(n+1)-A024361(n+1)`
-/

namespace A328949.P11730143158458810985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) + (A328712 (n + 1) - A024361 (n + 1))

end

end A328949.P11730143158458810985

namespace A328949

/-- `A046079(n+1)+A328712(n+1)-A024361(n+1)` -/
def P11730143158458810985.Spec : Prop :=
  ∀ n, P11730143158458810985.a n = A328949 (n + 1)

theorem P11730143158458810985.correct : P11730143158458810985.Spec := by
  intro n
  simp only [A328949, Nat.add_sub_cancel, A328949.P11730143158458810985.a, A328949.P9082150225325732429.a, A024361, A024361.P1146025692209475519.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A004526, A004526.P10084182425416171735.a, A024362, A024362.P4327117018867467884.a, A046080, A046080.P16111352627053334427.a, A317528, A317528.P11231978490309807637.f1, A317528.P11231978490309807637.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A019590, A019590.P14414942524970611003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328949

/-!
# A328950: Numerators for the "Minimum-Redundancy Code" card problem.

The programs for A328950, there is no canonical definition to state claims against.
-/

/-! ## A328950.P2466293070886931850

`∑[∑[a(floor(n/2))+1]]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A328950.P2466293070886931850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328950.P2466293070886931850

/-! ## A328950.P5120568388188275767

`∑[floor(a(n-1)-((n-a(n-1))/n-3))]` with `a(0)=0, a(1)=3`
-/

namespace A328950.P5120568388188275767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) - (((n : ℤ) - f1 (n - 1) : ℚ) / (n : ℚ) - 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328950.P5120568388188275767

/-! ## A328950.P10339303163956010157

`∑[a(n-1)+(a(n-1)-a(n-1)%n)/n+2]` with `a(0)=0, a(1)=3`
-/

namespace A328950.P10339303163956010157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + ((f1 (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) (n : ℤ) : ℚ)) / (n : ℚ) + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328950.P10339303163956010157

/-! ## A328950.P5617853023401195768

`∑[∑[A099396(2*n+1)]+2*n]`
-/

namespace A328950.P5617853023401195768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099396 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328950.P5617853023401195768

/-! ## A328950.P12876304983081157310

`∑[∑[a(A004526(n))+1]]-1` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A328950.P12876304983081157310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n f2 =>
  f2 (A004526 n).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A328950.P12876304983081157310

/-! ## A328950.P17546755939470876470

`∑[∑[A029837(floor(n/3)+1)]+3*n]`
-/

namespace A328950.P17546755939470876470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (⌊(n : ℚ) / 3⌋ + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328950.P17546755939470876470

/-! ## A328950.P8979864442024098275

`∑[∑[A007456(A222657(n))]]`
-/

namespace A328950.P8979864442024098275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A222657 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328950.P8979864442024098275

/-! ## A328950.P17118033271387084382

`∑[∑[A029837(A047438(n+1))]]`
-/

namespace A328950.P17118033271387084382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A047438 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328950.P17118033271387084382

/-! ## A328950.P12257381157101921004

`∑[∑[A029837(A047478(n+1))]]`
-/

namespace A328950.P12257381157101921004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A047478 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328950.P12257381157101921004

/-! ## A328950.P4371559632583863137

`∑[∑[A029837(A047591(n+1))]]`
-/

namespace A328950.P4371559632583863137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A047591 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328950.P4371559632583863137

/-!
# A328952: Arithmetic numbers (A003601) that are not antiharmonic (A020487).

The programs for A328952, the canonical program `A328952.P16779788815327458219` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328952 has offset 1).

The definition of A328952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7794 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328952.P16779788815327458219

`filter[A158276(n+1), A245656(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A328952

/-- `filter[A158276(n+1), A245656(#)]` -/
def P16779788815327458219.Spec : Prop :=
  ∀ n, P16779788815327458219.a n = A328952 (n + 1)

theorem P16779788815327458219.correct : P16779788815327458219.Spec := by
  intro n
  simp only [A328952, Nat.add_sub_cancel]

end A328952

/-! ## A328952.P1053991496650297515

`∩[A003601(n+1), A158276(n+1)]`
-/

namespace A328952.P1053991496650297515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328952.P1053991496650297515

namespace A328952

/-- `∩[A003601(n+1), A158276(n+1)]` -/
def P1053991496650297515.Spec : Prop :=
  ∀ n, (P1053991496650297515.a n : ℤ) = A328952 (n + 1)

end A328952

/-! ## A328952.P8481202573728201983

`∩[A158276(n+1), A328557(n+1)]`
-/

namespace A328952.P8481202573728201983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328952.P8481202573728201983

namespace A328952

/-- `∩[A158276(n+1), A328557(n+1)]` -/
def P8481202573728201983.Spec : Prop :=
  ∀ n, (P8481202573728201983.a n : ℤ) = A328952 (n + 1)

end A328952

/-! ## A328952.P15263495944419176808

`∩[A328557(n+1), A378501(n+1)]`
-/

namespace A328952.P15263495944419176808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328952.P15263495944419176808

namespace A328952

/-- `∩[A328557(n+1), A378501(n+1)]` -/
def P15263495944419176808.Spec : Prop :=
  ∀ n, (P15263495944419176808.a n : ℤ) = A328952 (n + 1)

end A328952

/-! ## A328952.P4899184225008095431

`filter[A028753(n+1), A245656(#)]`
-/

namespace A328952.P4899184225008095431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A328952.P4899184225008095431

namespace A328952

/-- `filter[A028753(n+1), A245656(#)]` -/
def P4899184225008095431.Spec : Prop :=
  ∀ n, P4899184225008095431.a n = A328952 (n + 1)

end A328952

/-!
# A328953: Antiharmonic numbers (A020487) that are not arithmetic (A003601).

The programs for A328953, there is no canonical definition to state claims against.
-/

/-! ## A328953.P2350085740445786545

`∩[A020487(n+1), A049642(n+1)]`
-/

namespace A328953.P2350085740445786545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328953.P2350085740445786545

/-! ## A328953.P15036032629290090726

`∩[A020487(n+1), A328945(n+1)]`
-/

namespace A328953.P15036032629290090726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328953.P15036032629290090726

/-! ## A328953.P8129937793137664229

`∩[A020487(n+1), A342106(n+1)]`
-/

namespace A328953.P8129937793137664229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328953.P8129937793137664229

/-! ## A328953.P11509894753710897033

`∩[∪[A227771(n+1), n²], A342106(n+1)]`
-/

namespace A328953.P11509894753710897033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227771 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A328953.P11509894753710897033

/-! ## A328953.P12364992626465066686

`A020487(lt[A279647(3*n+8), A114492(3*n+2)])`
-/

namespace A328953.P12364992626465066686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279647 (3 * n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114492 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328953.P12364992626465066686

/-!
# A328954: Numbers m that are neither arithmetic (A003601) nor antiharmonic (A020487).

The programs for A328954, there is no canonical definition to state claims against.
-/

/-! ## A328954.P17842691452721283521

`∩[A049642(n+1), A158276(n+1)]`
-/

namespace A328954.P17842691452721283521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328954.P17842691452721283521

/-! ## A328954.P10287115165763080454

`∩[A158276(n+1), A328559(n+1)]`
-/

namespace A328954.P10287115165763080454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328954.P10287115165763080454

/-! ## A328954.P12515502183501420150

`∩[A323733(n+1), A328559(n+1)]`
-/

namespace A328954.P12515502183501420150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328954.P12515502183501420150

/-! ## A328954.P2285225957243169995

`∩[A028783(n+1), A049642(n+1)]`
-/

namespace A328954.P2285225957243169995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328954.P2285225957243169995

/-! ## A328954.P13324613480700274002

`∩[A028783(n+1), A328559(n+1)]`
-/

namespace A328954.P13324613480700274002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328954.P13324613480700274002

/-!
# A328956: Numbers k such that sigma_0(k) = omega(k) * Omega(k), where sigma_0 = A000005, omega = A001221, Omega = A001222.

The programs for A328956, the canonical program `A328956.P11991261187535572273` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328956 has offset 1).

The definition of A328956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328956.P11991261187535572273

`eq[0, A328958(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A328956

/-- `eq[0, A328958(n+1)]+1` -/
def P11991261187535572273.Spec : Prop :=
  ∀ n, (P11991261187535572273.a n : ℤ) = A328956 (n + 1)

theorem P11991261187535572273.correct : P11991261187535572273.Spec := by
  intro n
  simp only [A328956, Nat.add_sub_cancel]

end A328956

/-! ## A328956.P3836788989052552412

`comp[∪[A328957(n+1), n²]]`
-/

namespace A328956.P3836788989052552412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328957 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A328956.P3836788989052552412

namespace A328956

/-- `comp[∪[A328957(n+1), n²]]` -/
def P3836788989052552412.Spec : Prop :=
  ∀ n, (P3836788989052552412.a n : ℤ) = A328956 (n + 1)

end A328956

/-! ## A328956.P5601393374789651612

`lt[A328958(A028310(n))², 1]`
-/

namespace A328956.P5601393374789651612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328956.P5601393374789651612

namespace A328956

/-- `lt[A328958(A028310(n))², 1]` -/
def P5601393374789651612.Spec : Prop :=
  ∀ n, (P5601393374789651612.a n : ℤ) = A328956 (n + 1)

end A328956

/-! ## A328956.P8783669463849908256

`eq[A000005(n+1), A113901(n+1)]+1`
-/

namespace A328956.P8783669463849908256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328956.P8783669463849908256

namespace A328956

/-- `eq[A000005(n+1), A113901(n+1)]+1` -/
def P8783669463849908256.Spec : Prop :=
  ∀ n, (P8783669463849908256.a n : ℤ) = A328956 (n + 1)

end A328956

/-! ## A328956.P8608349292283340619

`∩[A109421(n+1), A345945(n+1)]`
-/

namespace A328956.P8608349292283340619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328956.P8608349292283340619

namespace A328956

/-- `∩[A109421(n+1), A345945(n+1)]` -/
def P8608349292283340619.Spec : Prop :=
  ∀ n, (P8608349292283340619.a n : ℤ) = A328956 (n + 1)

end A328956

/-! ## A328956.P16541467024082127380

`∩[A105642(n+1), A109421(n+1)]`
-/

namespace A328956.P16541467024082127380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328956.P16541467024082127380

namespace A328956

/-- `∩[A105642(n+1), A109421(n+1)]` -/
def P16541467024082127380.Spec : Prop :=
  ∀ n, (P16541467024082127380.a n : ℤ) = A328956 (n + 1)

end A328956

/-! ## A328956.P2185487825098562406

`∩[A052485(n+1), A304634(n+1)]`
-/

namespace A328956.P2185487825098562406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328956.P2185487825098562406

namespace A328956

/-- `∩[A052485(n+1), A304634(n+1)]` -/
def P2185487825098562406.Spec : Prop :=
  ∀ n, (P2185487825098562406.a n : ℤ) = A328956 (n + 1)

end A328956

/-! ## A328956.P7704160318406949698

`∩[A109421(n+1), A304634(n+1)]`
-/

namespace A328956.P7704160318406949698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328956.P7704160318406949698

namespace A328956

/-- `∩[A109421(n+1), A304634(n+1)]` -/
def P7704160318406949698.Spec : Prop :=
  ∀ n, (P7704160318406949698.a n : ℤ) = A328956 (n + 1)

end A328956

/-! ## A328956.P8166674197086331094

`∩[A109421(n+1), A174896(n+1)]`
-/

namespace A328956.P8166674197086331094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328956.P8166674197086331094

namespace A328956

/-- `∩[A109421(n+1), A174896(n+1)]` -/
def P8166674197086331094.Spec : Prop :=
  ∀ n, (P8166674197086331094.a n : ℤ) = A328956 (n + 1)

end A328956

/-!
# A328957: Numbers k such that sigma_0(k) != omega(k) * Omega(k), where sigma_0 = A000005, omega = A001221, Omega = A001222.

The programs for A328957, the canonical program `A328957.P13829238471357950740` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328957 has offset 1).

The definition of A328957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328957.P13829238471357950740

`lt[0, A328958(n+1)²]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A328957

/-- `lt[0, A328958(n+1)²]+1` -/
def P13829238471357950740.Spec : Prop :=
  ∀ n, (P13829238471357950740.a n : ℤ) = A328957 (n + 1)

theorem P13829238471357950740.correct : P13829238471357950740.Spec := by
  intro n
  simp only [A328957, Nat.add_sub_cancel]

end A328957

/-! ## A328957.P3293071005446723840

`∪[A000961(n+1), A109422(n+1)]`
-/

namespace A328957.P3293071005446723840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328957.P3293071005446723840

namespace A328957

/-- `∪[A000961(n+1), A109422(n+1)]` -/
def P3293071005446723840.Spec : Prop :=
  ∀ n, (P3293071005446723840.a n : ℤ) = A328957 (n + 1)

end A328957

/-! ## A328957.P50708312699280455

`∪[A008578(n+1), A109422(n+1)]`
-/

namespace A328957.P50708312699280455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328957.P50708312699280455

namespace A328957

/-- `∪[A008578(n+1), A109422(n+1)]` -/
def P50708312699280455.Spec : Prop :=
  ∀ n, (P50708312699280455.a n : ℤ) = A328957 (n + 1)

end A328957

/-! ## A328957.P1507319016016910034

`∪[A015919(n+1), A109422(n+1)]`
-/

namespace A328957.P1507319016016910034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328957.P1507319016016910034

namespace A328957

/-- `∪[A015919(n+1), A109422(n+1)]` -/
def P1507319016016910034.Spec : Prop :=
  ∀ n, (P1507319016016910034.a n : ℤ) = A328957 (n + 1)

end A328957

/-! ## A328957.P1872553596620429498

`∪[A033946(n+1), A109422(n+1)]`
-/

namespace A328957.P1872553596620429498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328957.P1872553596620429498

namespace A328957

/-- `∪[A033946(n+1), A109422(n+1)]` -/
def P1872553596620429498.Spec : Prop :=
  ∀ n, (P1872553596620429498.a n : ℤ) = A328957 (n + 1)

end A328957

/-! ## A328957.P3255702601083103823

`∪[A046022(n+1), A109422(n+1)]`
-/

namespace A328957.P3255702601083103823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328957.P3255702601083103823

namespace A328957

/-- `∪[A046022(n+1), A109422(n+1)]` -/
def P3255702601083103823.Spec : Prop :=
  ∀ n, (P3255702601083103823.a n : ℤ) = A328957 (n + 1)

end A328957

/-! ## A328957.P5296633032176684177

`∪[A067126(n+1), A109422(n+1)]`
-/

namespace A328957.P5296633032176684177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328957.P5296633032176684177

namespace A328957

/-- `∪[A067126(n+1), A109422(n+1)]` -/
def P5296633032176684177.Spec : Prop :=
  ∀ n, (P5296633032176684177.a n : ℤ) = A328957 (n + 1)

end A328957

/-! ## A328957.P10941397264337161629

`∪[A074583(n+1), A109422(n+1)]`
-/

namespace A328957.P10941397264337161629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328957.P10941397264337161629

namespace A328957

/-- `∪[A074583(n+1), A109422(n+1)]` -/
def P10941397264337161629.Spec : Prop :=
  ∀ n, (P10941397264337161629.a n : ℤ) = A328957 (n + 1)

end A328957

/-! ## A328957.P11464150112920559960

`∪[A084400(n+1), A109422(n+1)]`
-/

namespace A328957.P11464150112920559960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328957.P11464150112920559960

namespace A328957

/-- `∪[A084400(n+1), A109422(n+1)]` -/
def P11464150112920559960.Spec : Prop :=
  ∀ n, (P11464150112920559960.a n : ℤ) = A328957 (n + 1)

end A328957

/-!
# A328958: a(n) = d(n) - (omega(n) * bigomega(n)), where d (number of divisors) = A000005, omega = A001221, bigomega = A001222.

The programs for A328958, the canonical program `A328958.P3249382024381690087` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328958 has offset 1).

The definition of A328958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328958.P3249382024381690087

`A000005(n+1)-A113901(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328958

/-- `A000005(n+1)-A113901(n+1)` -/
def P3249382024381690087.Spec : Prop :=
  ∀ n, P3249382024381690087.a n = A328958 (n + 1)

theorem P3249382024381690087.correct : P3249382024381690087.Spec := by
  intro n
  simp only [A328958, Nat.add_sub_cancel]

end A328958

/-! ## A328958.P7261506270059808662

`A000005(n+1)-A001221(n+1)*A001222(n+1)`
-/

namespace A328958.P7261506270059808662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001221 (n + 1) * A001222 (n + 1)

end

end A328958.P7261506270059808662

namespace A328958

/-- `A000005(n+1)-A001221(n+1)*A001222(n+1)` -/
def P7261506270059808662.Spec : Prop :=
  ∀ n, P7261506270059808662.a n = A328958 (n + 1)

end A328958

/-! ## A328958.P1810005538899536557

`Δ[A006218(n)]-A113901(n+1)`
-/

namespace A328958.P1810005538899536557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A113901 (n + 1)

end

end A328958.P1810005538899536557

namespace A328958

/-- `Δ[A006218(n)]-A113901(n+1)` -/
def P1810005538899536557.Spec : Prop :=
  ∀ n, P1810005538899536557.a n = A328958 (n + 1)

end A328958

/-! ## A328958.P7066886841625809143

`Δ[A054519(n)]-A113901(n+1)`
-/

namespace A328958.P7066886841625809143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A113901 (n + 1)

end

end A328958.P7066886841625809143

namespace A328958

/-- `Δ[A054519(n)]-A113901(n+1)` -/
def P7066886841625809143.Spec : Prop :=
  ∀ n, P7066886841625809143.a n = A328958 (n + 1)

end A328958

/-! ## A328958.P13599259737724919307

`A033273(n+1)-A307409(n+1)`
-/

namespace A328958.P13599259737724919307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A307409 (n + 1)

end

end A328958.P13599259737724919307

namespace A328958

/-- `A033273(n+1)-A307409(n+1)` -/
def P13599259737724919307.Spec : Prop :=
  ∀ n, P13599259737724919307.a n = A328958 (n + 1)

theorem P13599259737724919307.correct : P13599259737724919307.Spec := by
  intro n
  simp only [A328958, Nat.add_sub_cancel, A328958.P13599259737724919307.a, A328958.P3249382024381690087.a, A000005, A000005.P16091521709108585461.a, A033273, A033273.P18420659424697249895.a, A113901, A113901.P4362226141671724758.a, A307409, A307409.P14464226460867145203.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328958

/-! ## A328958.P15013032513865279366

`A328959(n+1)+2-A001221(n+1)`
-/

namespace A328958.P15013032513865279366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (n + 1) + (2 - A001221 (n + 1))

end

end A328958.P15013032513865279366

namespace A328958

/-- `A328959(n+1)+2-A001221(n+1)` -/
def P15013032513865279366.Spec : Prop :=
  ∀ n, P15013032513865279366.a n = A328958 (n + 1)

theorem P15013032513865279366.correct : P15013032513865279366.Spec := by
  intro n
  simp only [A328958, Nat.add_sub_cancel, A328958.P15013032513865279366.a, A328958.P3249382024381690087.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A113901, A113901.P4362226141671724758.a, A328959, A328959.P14672643124768497102.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A307408, A307408.P14900321585277075839.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328958

/-! ## A328958.P1565394206049120345

`A000005(n+1)-(A307409(n+1)+A001221(n+1))`
-/

namespace A328958.P1565394206049120345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A307409 (n + 1) + A001221 (n + 1))

end

end A328958.P1565394206049120345

namespace A328958

/-- `A000005(n+1)-(A307409(n+1)+A001221(n+1))` -/
def P1565394206049120345.Spec : Prop :=
  ∀ n, P1565394206049120345.a n = A328958 (n + 1)

theorem P1565394206049120345.correct : P1565394206049120345.Spec := by
  intro n
  simp only [A328958, Nat.add_sub_cancel, A328958.P1565394206049120345.a, A328958.P3249382024381690087.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A113901, A113901.P4362226141671724758.a, A307409, A307409.P14464226460867145203.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328958

/-! ## A328958.P2432811022900267604

`A307408(n+1)+A328959(n+1)-A113901(n+1)`
-/

namespace A328958.P2432811022900267604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307408 (n + 1) + (A328959 (n + 1) - A113901 (n + 1))

end

end A328958.P2432811022900267604

namespace A328958

/-- `A307408(n+1)+A328959(n+1)-A113901(n+1)` -/
def P2432811022900267604.Spec : Prop :=
  ∀ n, P2432811022900267604.a n = A328958 (n + 1)

theorem P2432811022900267604.correct : P2432811022900267604.Spec := by
  intro n
  simp only [A328958, Nat.add_sub_cancel, A328958.P2432811022900267604.a, A328958.P3249382024381690087.a, A000005, A000005.P16091521709108585461.a, A113901, A113901.P4362226141671724758.a, A307408, A307408.P14900321585277075839.a, A328959, A328959.P14672643124768497102.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328958

/-! ## A328958.P15271239173502618762

`A000005(n+1)-A001222(n+1)*A001222(A007947(n+1))`
-/

namespace A328958.P15271239173502618762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001222 (n + 1) * A001222 (A007947 (n + 1)).toNat

end

end A328958.P15271239173502618762

namespace A328958

/-- `A000005(n+1)-A001222(n+1)*A001222(A007947(n+1))` -/
def P15271239173502618762.Spec : Prop :=
  ∀ n, P15271239173502618762.a n = A328958 (n + 1)

end A328958

/-! ## A328958.P1776012559674250177

`A000005(n+1)-A001222(n+1)*A001222(A034444(n+1))`
-/

namespace A328958.P1776012559674250177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001222 (n + 1) * A001222 (A034444 (n + 1)).toNat

end

end A328958.P1776012559674250177

namespace A328958

/-- `A000005(n+1)-A001222(n+1)*A001222(A034444(n+1))` -/
def P1776012559674250177.Spec : Prop :=
  ∀ n, P1776012559674250177.a n = A328958 (n + 1)

end A328958

/-! ## A328958.P18022713089311599156

`A000005(n+1)-A001222(n+1)*A001222(A074816(n+1))`
-/

namespace A328958.P18022713089311599156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001222 (n + 1) * A001222 (A074816 (n + 1)).toNat

end

end A328958.P18022713089311599156

namespace A328958

/-- `A000005(n+1)-A001222(n+1)*A001222(A074816(n+1))` -/
def P18022713089311599156.Spec : Prop :=
  ∀ n, P18022713089311599156.a n = A328958 (n + 1)

end A328958

/-! ## A328958.P6633480692892880481

`A000005(n+1)-A001222(n+1)*A001222(A181819(n+1))`
-/

namespace A328958.P6633480692892880481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001222 (n + 1) * A001222 (A181819 (n + 1)).toNat

end

end A328958.P6633480692892880481

namespace A328958

/-- `A000005(n+1)-A001222(n+1)*A001222(A181819(n+1))` -/
def P6633480692892880481.Spec : Prop :=
  ∀ n, P6633480692892880481.a n = A328958 (n + 1)

end A328958

/-! ## A328958.P5838425232657996991

`A000005(n+1)-A001222(n+1)*A001222(A324291(n+1))`
-/

namespace A328958.P5838425232657996991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001222 (n + 1) * A001222 (A324291 (n + 1)).toNat

end

end A328958.P5838425232657996991

namespace A328958

/-- `A000005(n+1)-A001222(n+1)*A001222(A324291(n+1))` -/
def P5838425232657996991.Spec : Prop :=
  ∀ n, P5838425232657996991.a n = A328958 (n + 1)

end A328958

/-! ## A328958.P3962210902885796741

`∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]-A113901(n+1)`
-/

namespace A328958.P3962210902885796741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋) - A113901 (n + 1)

end

end A328958.P3962210902885796741

namespace A328958

/-- `∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]-A113901(n+1)` -/
def P3962210902885796741.Spec : Prop :=
  ∀ n, P3962210902885796741.a n = A328958 (n + 1)

end A328958

/-! ## A328958.P5503359855725502245

`A113901(A338506(n+1))-A113901(n+1)`
-/

namespace A328958.P5503359855725502245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (A338506 (n + 1)).toNat - A113901 (n + 1)

end

end A328958.P5503359855725502245

namespace A328958

/-- `A113901(A338506(n+1))-A113901(n+1)` -/
def P5503359855725502245.Spec : Prop :=
  ∀ n, P5503359855725502245.a n = A328958 (n + 1)

end A328958

/-!
# A328959: a(n) = sigma_0(n) - 2 - (omega(n) - 1) * nu(n), where sigma_0 = A000005, nu = A001221, omega = A001222.

The programs for A328959, the canonical program `A328959.P14672643124768497102` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328959 has offset 1).

The definition of A328959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328959.P14672643124768497102

`A000005(n+1)-A307408(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328959

/-- `A000005(n+1)-A307408(n+1)` -/
def P14672643124768497102.Spec : Prop :=
  ∀ n, P14672643124768497102.a n = A328959 (n + 1)

theorem P14672643124768497102.correct : P14672643124768497102.Spec := by
  intro n
  simp only [A328959, Nat.add_sub_cancel]

end A328959

/-! ## A328959.P8188404754297189451

`Δ[A006218(n)]-A307408(n+1)`
-/

namespace A328959.P8188404754297189451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307408 (n + 1)

end

end A328959.P8188404754297189451

namespace A328959

/-- `Δ[A006218(n)]-A307408(n+1)` -/
def P8188404754297189451.Spec : Prop :=
  ∀ n, P8188404754297189451.a n = A328959 (n + 1)

end A328959

/-! ## A328959.P4967782515777344499

`Δ[A054519(n)]-A307408(n+1)`
-/

namespace A328959.P4967782515777344499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307408 (n + 1)

end

end A328959.P4967782515777344499

namespace A328959

/-- `Δ[A054519(n)]-A307408(n+1)` -/
def P4967782515777344499.Spec : Prop :=
  ∀ n, P4967782515777344499.a n = A328959 (n + 1)

end A328959

/-! ## A328959.P7154358761775876685

`A000005(n+1)-(A307409(n+1)+2)`
-/

namespace A328959.P7154358761775876685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A307409 (n + 1) + 2)

end

end A328959.P7154358761775876685

namespace A328959

/-- `A000005(n+1)-(A307409(n+1)+2)` -/
def P7154358761775876685.Spec : Prop :=
  ∀ n, P7154358761775876685.a n = A328959 (n + 1)

end A328959

/-! ## A328959.P8861792699546924357

`A001221(n+1)+A328958(n+1)-2`
-/

namespace A328959.P8861792699546924357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A328958 (n + 1) - 2)

end

end A328959.P8861792699546924357

namespace A328959

/-- `A001221(n+1)+A328958(n+1)-2` -/
def P8861792699546924357.Spec : Prop :=
  ∀ n, P8861792699546924357.a n = A328959 (n + 1)

theorem P8861792699546924357.correct : P8861792699546924357.Spec := by
  intro n
  simp only [A328959, Nat.add_sub_cancel, A328959.P8861792699546924357.a, A328959.P14672643124768497102.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A307408, A307408.P14900321585277075839.a, A328958, A328958.P3249382024381690087.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A113901, A113901.P4362226141671724758.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328959

/-! ## A328959.P9252726403647617681

`A320111(A103517(n))-A307408(n+1)`
-/

namespace A328959.P9252726403647617681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A103517 n).toNat - A307408 (n + 1)

end

end A328959.P9252726403647617681

namespace A328959

/-- `A320111(A103517(n))-A307408(n+1)` -/
def P9252726403647617681.Spec : Prop :=
  ∀ n, P9252726403647617681.a n = A328959 (n + 1)

end A328959

/-! ## A328959.P10465856512754348041

`∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]-A307408(n+1)`
-/

namespace A328959.P10465856512754348041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋) - A307408 (n + 1)

end

end A328959.P10465856512754348041

namespace A328959

/-- `∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]-A307408(n+1)` -/
def P10465856512754348041.Spec : Prop :=
  ∀ n, P10465856512754348041.a n = A328959 (n + 1)

end A328959

/-! ## A328959.P12639497679513071561

`A293813(A328855(n+1))-A000007(n)`
-/

namespace A328959.P12639497679513071561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 (A328855 (n + 1)).toNat - A000007 n

end

end A328959.P12639497679513071561

namespace A328959

/-- `A293813(A328855(n+1))-A000007(n)` -/
def P12639497679513071561.Spec : Prop :=
  ∀ n, P12639497679513071561.a n = A328959 (n + 1)

end A328959

/-! ## A328959.P18067234681799592720

`and(A000096(n), A326291(n+1))-A000007(n)`
-/

namespace A328959.P18067234681799592720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000096 n) (A326291 (n + 1)) - A000007 n

end

end A328959.P18067234681799592720

namespace A328959

/-- `and(A000096(n), A326291(n+1))-A000007(n)` -/
def P18067234681799592720.Spec : Prop :=
  ∀ n, P18067234681799592720.a n = A328959 (n + 1)

end A328959

/-! ## A328959.P17710521700553994315

`floor(A248736(A323436(n+1)+1)-2/(n+1))`
-/

namespace A328959.P17710521700553994315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248736 (A323436 (n + 1) + 1).toNat : ℚ) - 2 / (n + 1 : ℚ)⌋

end

end A328959.P17710521700553994315

namespace A328959

/-- `floor(A248736(A323436(n+1)+1)-2/(n+1))` -/
def P17710521700553994315.Spec : Prop :=
  ∀ n, P17710521700553994315.a n = A328959 (n + 1)

end A328959

/-!
# A328960: Number of integer partitions of n whose number of nontrivial submultisets is greater than their number of distinct parts times their number of parts minus 1.

The programs for A328960, there is no canonical definition to state claims against.
-/

/-! ## A328960.P4692077940326868657

`A248333(A319005(n))`
-/

namespace A328960.P4692077940326868657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A319005 n).toNat

end

end A328960.P4692077940326868657

/-!
# A328961: Positive integers n such that sigma_0(n) - 3 = (omega(n) - 1) * nu(n), where sigma_0 = A000005, nu = A001221, omega = A001222.

The programs for A328961, there is no canonical definition to state claims against.
-/

/-! ## A328961.P12012942440064836961

`eq[1, A328959(n+1)]+1`
-/

namespace A328961.P12012942440064836961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328961.P12012942440064836961

/-! ## A328961.P16394532045356715398

`eq[1, A328959(A028310(n))]`
-/

namespace A328961.P16394532045356715398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328961.P16394532045356715398

/-! ## A328961.P9009612429410493817

`eq[8, A053392(A074206(n))]`
-/

namespace A328961.P9009612429410493817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328961.P9009612429410493817

/-! ## A328961.P12073474578912794029

`record[A007948(A307341(n+3))]`
-/

namespace A328961.P12073474578912794029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A307341 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328961.P12073474578912794029

/-! ## A328961.P1470611027161554221

`A020725(eq[1, A328959(n+1)])`
-/

namespace A328961.P1470611027161554221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328961.P1470611027161554221

/-! ## A328961.P13101520953759043687

`eq[1, A328959(A233583(n+1))]`
-/

namespace A328961.P13101520953759043687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328961.P13101520953759043687

/-! ## A328961.P8020444268600641636

`filter[A038109(n+1), A101637(#)]`
-/

namespace A328961.P8020444268600641636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A328961.P8020444268600641636

/-! ## A328961.P15291159049334757511

`filter[A048944(n+1), A101637(#)]`
-/

namespace A328961.P15291159049334757511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A328961.P15291159049334757511

/-! ## A328961.P6549583899643186060

`filter[A059269(n+1), A101637(#)]`
-/

namespace A328961.P6549583899643186060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A328961.P6549583899643186060

/-! ## A328961.P3891869102391212548

`filter[A067259(n+1), A101637(#)]`
-/

namespace A328961.P3891869102391212548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A328961.P3891869102391212548

/-!
# A328963: Smallest k such that n = sigma_0(k) - ((bigomega(k)-1)*omega(k)), where sigma_0 = A000005, omega = A001221, bigomega = A001222.

The programs for A328963, there is no canonical definition to state claims against.
-/

/-! ## A328963.P1535226960467665109

`record[gcd(A035116(n+1), A160535(n))]`
-/

namespace A328963.P1535226960467665109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035116 (n + 1)) (A160535 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328963.P1535226960467665109

/-! ## A328963.P17629280398016700475

`A171578(A194096(n+1))`
-/

namespace A328963.P17629280398016700475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171578 (A194096 (n + 1)).toNat

end

end A328963.P17629280398016700475

/-!
# A328964: Smallest k such that omega(k) * bigomega(k) = n, where omega = A001221, bigomega = A001222.

The programs for A328964, there is no canonical definition to state claims against.
-/

/-! ## A328964.P17265283366323286102

`A003160(A328965(n))`
-/

namespace A328964.P17265283366323286102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A328965 n).toNat

end

end A328964.P17265283366323286102

/-! ## A328964.P8238157872375728457

`A106249(A328965(n)+1)`
-/

namespace A328964.P8238157872375728457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A328965 n + 1).toNat

end

end A328964.P8238157872375728457

/-! ## A328964.P14442297182129959795

`A004524(A328965(n)+2)`
-/

namespace A328964.P14442297182129959795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A328965 n + 2).toNat

end

end A328964.P14442297182129959795

/-! ## A328964.P2484347709586574836

`A106249(xor(1, A328965(n)))`
-/

namespace A328964.P2484347709586574836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (Int.xor 1 (A328965 n)).toNat

end

end A328964.P2484347709586574836

/-!
# A328965: Smallest k such that (bigomega(k) - 1) * omega(k) = n, and 0 if none exists, where omega = A001221, bigomega = A001222.

The programs for A328965, there is no canonical definition to state claims against.
-/

/-! ## A328965.P11033136547416698330

`A072946(n)^((A073015(n)+1)%3)`
-/

namespace A328965.P11033136547416698330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072946 n : ℚ) ^ (Int.tmod (A073015 n + 1) 3 : ℤ)

end

end A328965.P11033136547416698330

/-! ## A328965.P3820913994528470872

`A285948(n)+A059841(A041007(n))`
-/

namespace A328965.P3820913994528470872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285948 n + A059841 (A041007 n).toNat

end

end A328965.P3820913994528470872

/-! ## A328965.P2740035402577219728

`A285978(A243360(n+1))+A285948(n)`
-/

namespace A328965.P2740035402577219728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285978 (A243360 (n + 1)).toNat + A285948 n

end

end A328965.P2740035402577219728

/-! ## A328965.P2078929142052121248

`A285844(n)+A000035(A348339(n+2))`
-/

namespace A328965.P2078929142052121248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285844 n + A000035 (A348339 (n + 2)).toNat

end

end A328965.P2078929142052121248

/-! ## A328965.P9990039129811126349

`A285844(n)+A000035(A285835(n+4))`
-/

namespace A328965.P9990039129811126349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285844 n + A000035 (A285835 (n + 4)).toNat

end

end A328965.P9990039129811126349

/-!
# A328966: Number of strict factorizations of n with integer average.

The programs for A328966, there is no canonical definition to state claims against.
-/

/-! ## A328966.P4518917388113978890

`A111651(gcd(A058481(n+1), A083212(n+1)))`
-/

namespace A328966.P4518917388113978890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (Int.gcd (A058481 (n + 1)) (A083212 (n + 1)))

end

end A328966.P4518917388113978890

/-! ## A328966.P12704022829020046726

`gcd(A001316(A211159(n+1)), A010944(n))`
-/

namespace A328966.P12704022829020046726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 (A211159 (n + 1)).toNat) (A010944 n)

end

end A328966.P12704022829020046726

/-! ## A328966.P8261535540933751458

`A369054(A123375(n+1))+A034380(n+2)`
-/

namespace A328966.P8261535540933751458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A123375 (n + 1)).toNat + A034380 (n + 2)

end

end A328966.P8261535540933751458

/-! ## A328966.P17404289258816865231

`A324417(A317508(3*n+5))+A034380(n+2)`
-/

namespace A328966.P17404289258816865231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324417 (A317508 (3 * n + 5)).toNat + A034380 (n + 2)

end

end A328966.P17404289258816865231

/-! ## A328966.P1979346914648224933

`A080100(A096826(2*(n+2))%A111492(2*n+1))`
-/

namespace A328966.P1979346914648224933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (Int.tmod (A096826 (2 * (n + 2))) (A111492 (2 * n + 1))).toNat

end

end A328966.P1979346914648224933

/-!
# A328967: a(n+1) = 1 - Sum_{k=1..n} a(floor(n/k)).

The programs for A328967, there is no canonical definition to state claims against.
-/

/-! ## A328967.P5988296966513335605

`∑[A281487(n+1)]`
-/

namespace A328967.P5988296966513335605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328967.P5988296966513335605

/-! ## A328967.P5085466686666124260

`A281487(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A328967.P5085466686666124260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281487 (n + 1) + a (A023443 n).toNat

end

end A328967.P5085466686666124260

/-! ## A328967.P4596622424206134022

`A281487(n+1)+a(A000027(n)-1)` with `a(0)=1`
-/

namespace A328967.P4596622424206134022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281487 (n + 1) + a (A000027 n - 1).toNat

end

end A328967.P4596622424206134022

/-! ## A328967.P8178207984316929642

`A281487(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A328967.P8178207984316929642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281487 (n + 1) + a (A028310 n - 1).toNat

end

end A328967.P8178207984316929642

/-! ## A328967.P2715560489244590008

`A281487(n+1)+a(n-A000203(((-1)^n)²))` with `a(0)=1`
-/

namespace A328967.P2715560489244590008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281487 (n + 1) + a ((n : ℤ) - A000203 (((-1) ^ n) ^ 2).toNat).toNat

end

end A328967.P2715560489244590008

/-! ## A328967.P13690722748337878595

`A281487(n+1)+a(A123108(2*n)-1)` with `a(0)=1`
-/

namespace A328967.P13690722748337878595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281487 (n + 1) + a (A123108 (2 * n) - 1).toNat

end

end A328967.P13690722748337878595

/-!
# A328969: Irregular table T(n,k), n >= 2, k=1..pi(n). arising in expressing the sequence A006022 as the coefficients depending on the maximal k-th prime factor pk of the formula for A006022(n) of its unique prime factor equation.

The programs for A328969, there is no canonical definition to state claims against.
-/

/-! ## A328969.P14010066432394753524

`A059106(A323409(ceil(15^(n/4))+n²+3))`
-/

namespace A328969.P14010066432394753524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059106 (A323409 (⌈(15 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉ + (n ^ 2 + 3 : ℤ)).toNat).toNat

end

end A328969.P14010066432394753524

/-! ## A328969.P14844917775660345994

`A330959(A330959(n)+A289272(n))`
-/

namespace A328969.P14844917775660345994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330959 (A330959 n + A289272 n).toNat

end

end A328969.P14844917775660345994

/-! ## A328969.P9794217439688696837

`A250120(n)%A263111(A334056(n))`
-/

namespace A328969.P9794217439688696837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 n) (A263111 (A334056 n).toNat)

end

end A328969.P9794217439688696837

/-! ## A328969.P18072637827330630280

`A126970(gcd(A123105(n), A127897(n+2)))`
-/

namespace A328969.P18072637827330630280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126970 (Int.gcd (A123105 (n + 31)) (A127897 (n + 2)))

end

end A328969.P18072637827330630280

/-! ## A328969.P12727866820936139371

`A345197(A302500(n+1))*A365401(n+1)`
-/

namespace A328969.P12727866820936139371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A302500 (n + 1)).toNat * A365401 (n + 1)

end

end A328969.P12727866820936139371

/-!
# A328970: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1 - x^j) / (1 - x^prime(j)) is zero.

The programs for A328970, there is no canonical definition to state claims against.
-/

/-! ## A328970.P16182822033374498307

`eq[0, A302234(n)]`
-/

namespace A328970.P16182822033374498307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328970.P16182822033374498307

/-! ## A328970.P15279946017702926276

`lt[lcm(n, A302234(n+1)), n]+1`
-/

namespace A328970.P15279946017702926276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A302234 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A328970.P15279946017702926276

/-! ## A328970.P7184543081502342515

`lt[A008592(lcm(2, A302234(n))), 1]`
-/

namespace A328970.P7184543081502342515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (Int.lcm 2 (A302234 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328970.P7184543081502342515

/-! ## A328970.P9782974763416421966

`lt[(A027642(n)*A302234(n))², 1]`
-/

namespace A328970.P9782974763416421966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027642 n * A302234 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328970.P9782974763416421966

/-! ## A328970.P3834320848776334685

`lt[A302234(n)², A093521(2*(n+2))]`
-/

namespace A328970.P3834320848776334685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302234 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093521 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328970.P3834320848776334685

/-! ## A328970.P8139888064419543738

`lt[A302234(n)², A020639(2*(n+1))-1]`
-/

namespace A328970.P8139888064419543738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302234 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328970.P8139888064419543738

/-! ## A328970.P8708699445224024266

`lt[(A210442(n)*A302234(n))², A210442(n)]`
-/

namespace A328970.P8708699445224024266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A210442 n * A302234 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328970.P8708699445224024266

/-! ## A328970.P2267298169119990293

`lt[A302234(n)², A210442(A338929(n+1))]`
-/

namespace A328970.P2267298169119990293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302234 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A338929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328970.P2267298169119990293

/-!
# A328971: Numerator of the fraction (hypotenuse - difference of legs) / (sum of legs - hypotenuse) of the n-th primitive Pythagorean triangle.

The programs for A328971, there is no canonical definition to state claims against.
-/

/-! ## A328971.P12498739163617546884

`A046087(n+1)/A118962(n+1)*A328972(n+1)`
-/

namespace A328971.P12498739163617546884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) : ℚ) / (A118962 (n + 1) : ℚ) * (A328972 (n + 1) : ℚ)

end

end A328971.P12498739163617546884

/-! ## A328971.P3126528129605770201

`gcd(A020882(n+1)+A014498(n+1), A046087(n+1))`
-/

namespace A328971.P3126528129605770201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020882 (n + 1) + A014498 (n + 1)) (A046087 (n + 1))

end

end A328971.P3126528129605770201

/-! ## A328971.P14054853286221191309

`A046087(n+1)/gcd(A087459(n+1), A118962(n+1))`
-/

namespace A328971.P14054853286221191309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) : ℚ) / (Int.gcd (A087459 (n + 1)) (A118962 (n + 1)) : ℚ)

end

end A328971.P14054853286221191309

/-! ## A328971.P2812982831853866061

`A046087(n+1)/A019554(A118962(n+1))`
-/

namespace A328971.P2812982831853866061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) : ℚ) / (A019554 (A118962 (n + 1)).toNat : ℚ)

end

end A328971.P2812982831853866061

/-! ## A328971.P6315002758991433789

`A000188(A046086(n+1)+A020882(n+1))`
-/

namespace A328971.P6315002758991433789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A046086 (n + 1) + A020882 (n + 1)).toNat

end

end A328971.P6315002758991433789

/-! ## A328971.P9440733086573642408

`A000188(A120681(n+1)+A118961(n+1))`
-/

namespace A328971.P9440733086573642408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A120681 (n + 1) + A118961 (n + 1)).toNat

end

end A328971.P9440733086573642408

/-! ## A328971.P11362985326837598580

`A241898(A120681(n+1)+A118961(n+1))`
-/

namespace A328971.P11362985326837598580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (A120681 (n + 1) + A118961 (n + 1)).toNat

end

end A328971.P11362985326837598580

/-!
# A328972: Denominator of the fraction (hypotenuse - difference of legs) / (sum of legs - hypotenuse) of the n-th primitive Pythagorean triangle.

The programs for A328972, there is no canonical definition to state claims against.
-/

/-! ## A328972.P13143009730445911931

`gcd(A014498(n+1), A046087(n+1))`
-/

namespace A328972.P13143009730445911931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014498 (n + 1)) (A046087 (n + 1))

end

end A328972.P13143009730445911931

/-! ## A328972.P1544696611280594494

`A118962(n+1)/gcd(A087459(n+1), A118962(n+1))`
-/

namespace A328972.P1544696611280594494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118962 (n + 1) : ℚ) / (Int.gcd (A087459 (n + 1)) (A118962 (n + 1)) : ℚ)

end

end A328972.P1544696611280594494

/-! ## A328972.P12269849417961392578

`gcd(A033991(A014498(n+1)), A118962(n+1))`
-/

namespace A328972.P12269849417961392578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033991 (A014498 (n + 1)).toNat) (A118962 (n + 1))

end

end A328972.P12269849417961392578

/-! ## A328972.P1884466355373234832

`A331362(A118962(n+1))`
-/

namespace A328972.P1884466355373234832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (A118962 (n + 1)).toNat

end

end A328972.P1884466355373234832

/-! ## A328972.P8521663558957999285

`A000188(A118962(n+1))`
-/

namespace A328972.P8521663558957999285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A118962 (n + 1)).toNat

end

end A328972.P8521663558957999285

/-! ## A328972.P2562499387803249851

`A241898(A118962(char[2]+1+n))`
-/

namespace A328972.P2562499387803249851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (A118962 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat

end

end A328972.P2562499387803249851

/-! ## A328972.P8351691890748295055

`A000188(A020882(n+1)-A046086(n+1))`
-/

namespace A328972.P8351691890748295055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A020882 (n + 1) - A046086 (n + 1)).toNat

end

end A328972.P8351691890748295055

/-! ## A328972.P10743227737374145249

`A241898(A118962(n+1))%A000040(n+1)`
-/

namespace A328972.P10743227737374145249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241898 (A118962 (n + 1)).toNat) (A000040 (n + 1))

end

end A328972.P10743227737374145249

/-! ## A328972.P11684505683861218406

`A241898(A118962(n+1)%A005891(n+1))`
-/

namespace A328972.P11684505683861218406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (Int.tmod (A118962 (n + 1)) (A005891 (n + 1))).toNat

end

end A328972.P11684505683861218406

/-! ## A328972.P12589841378093234531

`A241898(2*A118962(n+1)-A118962(n+1))`
-/

namespace A328972.P12589841378093234531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (2 * A118962 (n + 1) - A118962 (n + 1)).toNat

end

end A328972.P12589841378093234531

/-! ## A328972.P13697723694241821383

`A241898(lcm(2, A118962(n+1)))`
-/

namespace A328972.P13697723694241821383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (Int.lcm 2 (A118962 (n + 1)))

end

end A328972.P13697723694241821383

/-! ## A328972.P4700076549804654231

`A019554(2*A118962(n+1))/2`
-/

namespace A328972.P4700076549804654231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * A118962 (n + 1)).toNat : ℚ) / 2

end

end A328972.P4700076549804654231

/-! ## A328972.P6217029612111089673

`A118962(n+1)/A241898(2*A118962(n+1))`
-/

namespace A328972.P6217029612111089673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118962 (n + 1) : ℚ) / (A241898 (2 * A118962 (n + 1)).toNat : ℚ)

end

end A328972.P6217029612111089673

/-!
# A328973: Numbers k such that A053392(k) > k.

The programs for A328973, there is no canonical definition to state claims against.
-/

/-! ## A328973.P1798576699731315037

`lt[n, A053392(n)]`
-/

namespace A328973.P1798576699731315037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328973.P1798576699731315037

/-! ## A328973.P3034975449815581473

`A291884(n+1)+4/(1/5)²`
-/

namespace A328973.P3034975449815581473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291884 (n + 1) : ℚ) + 4 / ((1 : ℚ) / 5) ^ 2

end

end A328973.P3034975449815581473

/-! ## A328973.P5503298741834327702

`comp[A329623(n)+A053392(n)]`
-/

namespace A328973.P5503298741834327702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329623 n + A053392 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328973.P5503298741834327702

/-! ## A328973.P16716636608881184709

`lt[A000030(n)+9, A007953(n)]`
-/

namespace A328973.P16716636608881184709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328973.P16716636608881184709

/-! ## A328973.P6298023588733830407

`eq[n+1, (n+1)%A000201(A053392(n)+1)]`
-/

namespace A328973.P6298023588733830407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000201 (A053392 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328973.P6298023588733830407

/-! ## A328973.P9904796289184044152

`lt[A000030(n), A093882(A007953(n))]`
-/

namespace A328973.P9904796289184044152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328973.P9904796289184044152

/-! ## A328973.P14102168581962635979

`eq[A235224(2*n+1), A235224(A053392(n))]`
-/

namespace A328973.P14102168581962635979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A053392 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328973.P14102168581962635979

/-!
# A328977: Number of planar 2-connected irreducible graphs with n vertices.

The programs for A328977, there is no canonical definition to state claims against.
-/

/-! ## A328977.P525262268781357950

`A065033(A111342(n)+A000292(n))`
-/

namespace A328977.P525262268781357950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A111342 n + A000292 n).toNat

end

end A328977.P525262268781357950

/-!
# A328978: Row sums of A329059.

The programs for A328978, there is no canonical definition to state claims against.
-/

/-! ## A328978.P12297903750749050452

`∑{#}[n, (n+1)^(#-1)*C(4*n-#+2, n-#)]`
-/

namespace A328978.P12297903750749050452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1 : ℚ) ^ ((k : ℤ) - 1 : ℤ) * (Nat.choose ((4 * n : ℤ) - (k : ℤ) + 2).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A328978.P12297903750749050452

/-!
# A328979: Trajectory of 0 under repeated application of the morphism 0 -> 0010, 1 -> 1010.

The programs for A328979, the canonical program `A328979.P8029719245021851967` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328979 has offset 1).

The definition of A328979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328979.P8029719245021851967

`val(2-xor(n, -n), 6)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328979

/-- `val(2-xor(n, -n), 6)` -/
def P8029719245021851967.Spec : Prop :=
  ∀ n, (P8029719245021851967.a n : ℤ) = A328979 (n + 1)

theorem P8029719245021851967.correct : P8029719245021851967.Spec := by
  intro n
  simp only [A328979, Nat.add_sub_cancel]

end A328979

/-! ## A328979.P14831102703622450877

`val(and(n, -n)+10, 6)`
-/

namespace A328979.P14831102703622450877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land (n : ℤ) (-(n : ℤ)) + 10).toNat 6

end

end A328979.P14831102703622450877

namespace A328979

/-- `val(and(n, -n)+10, 6)` -/
def P14831102703622450877.Spec : Prop :=
  ∀ n, (P14831102703622450877.a n : ℤ) = A328979 (n + 1)

end A328979

/-! ## A328979.P14987297268939713746

`∑{e}[and(n, -n), #]%2`
-/

namespace A328979.P14987297268939713746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2

end

end A328979.P14987297268939713746

namespace A328979

/-- `∑{e}[and(n, -n), #]%2` -/
def P14987297268939713746.Spec : Prop :=
  ∀ n, (P14987297268939713746.a n : ℤ) = A328979 (n + 1)

end A328979

/-! ## A328979.P14237933830201503479

`∑{e}[or(n, -n), #]%2`
-/

namespace A328979.P14237933830201503479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2

end

end A328979.P14237933830201503479

namespace A328979

/-- `∑{e}[or(n, -n), #]%2` -/
def P14237933830201503479.Spec : Prop :=
  ∀ n, (P14237933830201503479.a n : ℤ) = A328979 (n + 1)

end A328979

/-! ## A328979.P6246690775301282829

`char[comp[n*and(n, -n)]]`
-/

namespace A328979.P6246690775301282829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A328979.P6246690775301282829

namespace A328979

/-- `char[comp[n*and(n, -n)]]` -/
def P6246690775301282829.Spec : Prop :=
  ∀ n, (P6246690775301282829.a n : ℤ) = A328979 (n + 1)

end A328979

/-! ## A328979.P11313344653775250311

`val(xor(n, n-1)+3, 6)`
-/

namespace A328979.P11313344653775250311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.xor (n : ℤ) ((n : ℤ) - 1) + 3).toNat 6

end

end A328979.P11313344653775250311

namespace A328979

/-- `val(xor(n, n-1)+3, 6)` -/
def P11313344653775250311.Spec : Prop :=
  ∀ n, (P11313344653775250311.a n : ℤ) = A328979 (n + 1)

end A328979

/-! ## A328979.P7081932552592851918

`4%gcd(3, xor(n, n-1))`
-/

namespace A328979.P7081932552592851918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % Int.gcd 3 (Int.xor (n : ℤ) ((n : ℤ) - 1))

end

end A328979.P7081932552592851918

namespace A328979

/-- `4%gcd(3, xor(n, n-1))` -/
def P7081932552592851918.Spec : Prop :=
  ∀ n, (P7081932552592851918.a n : ℤ) = A328979 (n + 1)

end A328979

/-! ## A328979.P16396315880143801742

`7%(xor(n, n-1)%6)`
-/

namespace A328979.P16396315880143801742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 6)

end

end A328979.P16396315880143801742

namespace A328979

/-- `7%(xor(n, n-1)%6)` -/
def P16396315880143801742.Spec : Prop :=
  ∀ n, P16396315880143801742.a n = A328979 (n + 1)

end A328979

/-! ## A328979.P4629230899021745430

`(n+1)%(2-a(floor(n/2)))` with `a(0)=0`
-/

namespace A328979.P4629230899021745430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (n + 1 : ℤ) (2 - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A328979.P4629230899021745430

namespace A328979

/-- `(n+1)%(2-a(floor(n/2)))` -/
def P4629230899021745430.Spec : Prop :=
  ∀ n, P4629230899021745430.a n = A328979 (n + 1)

end A328979

/-! ## A328979.P4573953165966557774

`(n-1)%(a(floor(n/2))-2)` with `a(0)=0`
-/

namespace A328979.P4573953165966557774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n : ℤ) - 1) (a ⌊(n : ℚ) / 2⌋.toNat - 2)

end

end A328979.P4573953165966557774

namespace A328979

/-- `(n-1)%(a(floor(n/2))-2)` -/
def P4573953165966557774.Spec : Prop :=
  ∀ n, P4573953165966557774.a n = A328979 (n + 1)

end A328979

/-! ## A328979.P13623578760318263486

`gcd(n, 2-a(floor(n/2)))-1` with `a(0)=0`
-/

namespace A328979.P13623578760318263486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.gcd (n : ℤ) (2 - a ⌊(n : ℚ) / 2⌋.toNat) : ℤ) - 1

end

end A328979.P13623578760318263486

namespace A328979

/-- `gcd(n, 2-a(floor(n/2)))-1` -/
def P13623578760318263486.Spec : Prop :=
  ∀ n, P13623578760318263486.a n = A328979 (n + 1)

end A328979

/-! ## A328979.P9762790767230893677

`char[(n+1)*(xor(n, n+1)+1)]`
-/

namespace A328979.P9762790767230893677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.xor n (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A328979.P9762790767230893677

namespace A328979

/-- `char[(n+1)*(xor(n, n+1)+1)]` -/
def P9762790767230893677.Spec : Prop :=
  ∀ n, (P9762790767230893677.a n : ℤ) = A328979 (n + 1)

end A328979

/-! ## A328979.P5620733385431403612

`(val(n, 2)+2*a(n-1))%2` with `a(0)=0`
-/

namespace A328979.P5620733385431403612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 2 + 2 * a (n - 1)) % 2

end

end A328979.P5620733385431403612

namespace A328979

/-- `(val(n, 2)+2*a(n-1))%2` -/
def P5620733385431403612.Spec : Prop :=
  ∀ n, (P5620733385431403612.a n : ℤ) = A328979 (n + 1)

end A328979

/-! ## A328979.P17969788752333102499

`and(1, val(n, 2)+2*a(n-1))` with `a(0)=0`
-/

namespace A328979.P17969788752333102499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 (SequenceMachineLib.valuation n 2 + 2 * a (n - 1))

end

end A328979.P17969788752333102499

namespace A328979

/-- `and(1, val(n, 2)+2*a(n-1))` -/
def P17969788752333102499.Spec : Prop :=
  ∀ n, (P17969788752333102499.a n : ℤ) = A328979 (n + 1)

end A328979

/-! ## A328979.P8271478258285086275

`1-(a(n-1)+a(floor(n/2)))` with `a(0)=0, a(1)=0`
-/

namespace A328979.P8271478258285086275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - (a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat)

end

end A328979.P8271478258285086275

namespace A328979

/-- `1-(a(n-1)+a(floor(n/2)))` -/
def P8271478258285086275.Spec : Prop :=
  ∀ n, P8271478258285086275.a n = A328979 (n + 1)

end A328979

/-! ## A328979.P11985073229768892154

`1-a(n-1)-a(floor(n/2))` with `a(0)=0, a(1)=0`
-/

namespace A328979.P11985073229768892154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - a (n - 1) - a ⌊(n : ℚ) / 2⌋.toNat

end

end A328979.P11985073229768892154

namespace A328979

/-- `1-a(n-1)-a(floor(n/2))` -/
def P11985073229768892154.Spec : Prop :=
  ∀ n, P11985073229768892154.a n = A328979 (n + 1)

end A328979

/-! ## A328979.P6916920382108819388

`A093050(n)%2`
-/

namespace A328979.P6916920382108819388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093050 n) 2

end

end A328979.P6916920382108819388

namespace A328979

/-- `A093050(n)%2` -/
def P6916920382108819388.Spec : Prop :=
  ∀ n, P6916920382108819388.a n = A328979 (n + 1)

end A328979

/-! ## A328979.P7293575730281847003

`A093052(n)%2`
-/

namespace A328979.P7293575730281847003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093052 n) 2

end

end A328979.P7293575730281847003

namespace A328979

/-- `A093052(n)%2` -/
def P7293575730281847003.Spec : Prop :=
  ∀ n, P7293575730281847003.a n = A328979 (n + 1)

end A328979

/-! ## A328979.P254365126097579741

`A327491(n)%2`
-/

namespace A328979.P254365126097579741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327491 n) 2

end

end A328979.P254365126097579741

namespace A328979

/-- `A327491(n)%2` -/
def P254365126097579741.Spec : Prop :=
  ∀ n, P254365126097579741.a n = A328979 (n + 1)

end A328979

/-!
# A328981: Indicator function of numbers whose binary representation ends in an even positive number of 0's.

The programs for A328981, the canonical program `A328981.P4173490097379195379` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328981 has offset 1).

The definition of A328981 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359832, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328981.P4173490097379195379

`1-A359832(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A328981

/-- `1-A359832(n+1)` -/
def P4173490097379195379.Spec : Prop :=
  ∀ n, P4173490097379195379.a n = A328981 (n + 1)

theorem P4173490097379195379.correct : P4173490097379195379.Spec := by
  intro n
  simp only [A328981, Nat.add_sub_cancel]

end A328981

/-! ## A328981.P3848358389930886984

`1-A096268(n)-(n+1)%2`
-/

namespace A328981.P3848358389930886984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096268 n - (((n + 1) % 2 : ℕ) : ℤ)

end

end A328981.P3848358389930886984

namespace A328981

/-- `1-A096268(n)-(n+1)%2` -/
def P3848358389930886984.Spec : Prop :=
  ∀ n, P3848358389930886984.a n = A328981 (n + 1)

end A328981

/-! ## A328981.P2563715803078367848

`(val(n+1, 2)+n)%2`
-/

namespace A328981.P2563715803078367848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + n) % 2

end

end A328981.P2563715803078367848

namespace A328981

/-- `(val(n+1, 2)+n)%2` -/
def P2563715803078367848.Spec : Prop :=
  ∀ n, (P2563715803078367848.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P6185082260385172166

`and(1, val(n+1, 2)+n)`
-/

namespace A328981.P6185082260385172166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2 + n)

end

end A328981.P6185082260385172166

namespace A328981

/-- `and(1, val(n+1, 2)+n)` -/
def P6185082260385172166.Spec : Prop :=
  ∀ n, (P6185082260385172166.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P11507563362038084245

`xor(or(1, n), n+1)%3`
-/

namespace A328981.P11507563362038084245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.lor 1 n) (n + 1) % 3

end

end A328981.P11507563362038084245

namespace A328981

/-- `xor(or(1, n), n+1)%3` -/
def P11507563362038084245.Spec : Prop :=
  ∀ n, (P11507563362038084245.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P12573988070358561938

`∑{p}[val(n+1, 2), val(#, 2)]`
-/

namespace A328981.P12573988070358561938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2

end

end A328981.P12573988070358561938

namespace A328981

/-- `∑{p}[val(n+1, 2), val(#, 2)]` -/
def P12573988070358561938.Spec : Prop :=
  ∀ n, (P12573988070358561938.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P2999127803039316248

`val(∏{p}[val(n+1, 2), #], 2)`
-/

namespace A328981.P2999127803039316248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 2

end

end A328981.P2999127803039316248

namespace A328981

/-- `val(∏{p}[val(n+1, 2), #], 2)` -/
def P2999127803039316248.Spec : Prop :=
  ∀ n, (P2999127803039316248.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P11754615096672111310

`and(n, xor(n, n+1)%3)`
-/

namespace A328981.P11754615096672111310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor n (n + 1) % 3)

end

end A328981.P11754615096672111310

namespace A328981

/-- `and(n, xor(n, n+1)%3)` -/
def P11754615096672111310.Spec : Prop :=
  ∀ n, (P11754615096672111310.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P724132644113471655

`val(or(n, n+1)-(n-2), 6)`
-/

namespace A328981.P724132644113471655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.lor n (n + 1) : ℤ) - ((n : ℤ) - 2)).toNat 6

end

end A328981.P724132644113471655

namespace A328981

/-- `val(or(n, n+1)-(n-2), 6)` -/
def P724132644113471655.Spec : Prop :=
  ∀ n, (P724132644113471655.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P10222212662002379982

`val(val(n+1, 2)²+n+3, 2)`
-/

namespace A328981.P10222212662002379982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (n + 1) 2 ^ 2 + (n + 3)) 2

end

end A328981.P10222212662002379982

namespace A328981

/-- `val(val(n+1, 2)²+n+3, 2)` -/
def P10222212662002379982.Spec : Prop :=
  ∀ n, (P10222212662002379982.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P4410309897436943542

`xor(n+2, n-1)%((2*n+1)%4)`
-/

namespace A328981.P4410309897436943542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n + 2 : ℤ) ((n : ℤ) - 1)) (((2 * n + 1) % 4 : ℕ) : ℤ)

end

end A328981.P4410309897436943542

namespace A328981

/-- `xor(n+2, n-1)%((2*n+1)%4)` -/
def P4410309897436943542.Spec : Prop :=
  ∀ n, P4410309897436943542.a n = A328981 (n + 1)

end A328981

/-! ## A328981.P18098475098110125097

`A151851(n)%2`
-/

namespace A328981.P18098475098110125097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151851 n) 2

end

end A328981.P18098475098110125097

namespace A328981

/-- `A151851(n)%2` -/
def P18098475098110125097.Spec : Prop :=
  ∀ n, P18098475098110125097.a n = A328981 (n + 1)

end A328981

/-! ## A328981.P10681001150664511548

`A151852(n)%2`
-/

namespace A328981.P10681001150664511548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151852 n) 2

end

end A328981.P10681001150664511548

namespace A328981

/-- `A151852(n)%2` -/
def P10681001150664511548.Spec : Prop :=
  ∀ n, P10681001150664511548.a n = A328981 (n + 1)

end A328981

/-! ## A328981.P10443364856226037549

`A378992(n)%2`
-/

namespace A328981.P10443364856226037549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378992 n) 2

end

end A328981.P10443364856226037549

namespace A328981

/-- `A378992(n)%2` -/
def P10443364856226037549.Spec : Prop :=
  ∀ n, P10443364856226037549.a n = A328981 (n + 1)

end A328981

/-! ## A328981.P16871625010940775156

`val(A364900(n), 2)`
-/

namespace A328981.P16871625010940775156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A364900 n).toNat 2

end

end A328981.P16871625010940775156

namespace A328981

/-- `val(A364900(n), 2)` -/
def P16871625010940775156.Spec : Prop :=
  ∀ n, (P16871625010940775156.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P16032180634953209277

`n%A029884(n)`
-/

namespace A328981.P16032180634953209277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A029884 n)

end

end A328981.P16032180634953209277

namespace A328981

/-- `n%A029884(n)` -/
def P16032180634953209277.Spec : Prop :=
  ∀ n, P16032180634953209277.a n = A328981 (n + 1)

end A328981

/-! ## A328981.P11505684448892651352

`char[A131323(n+1)]`
-/

namespace A328981.P11505684448892651352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A328981.P11505684448892651352

namespace A328981

/-- `char[A131323(n+1)]` -/
def P11505684448892651352.Spec : Prop :=
  ∀ n, (P11505684448892651352.a n : ℤ) = A328981 (n + 1)

end A328981

/-! ## A328981.P211816016776525787

`A058190(n+1)%2`
-/

namespace A328981.P211816016776525787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058190 (n + 1)) 2

end

end A328981.P211816016776525787

namespace A328981

/-- `A058190(n+1)%2` -/
def P211816016776525787.Spec : Prop :=
  ∀ n, P211816016776525787.a n = A328981 (n + 1)

end A328981

/-! ## A328981.P13051552644772579465

`A072905(n+1)%2`
-/

namespace A328981.P13051552644772579465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072905 (n + 1)) 2

end

end A328981.P13051552644772579465

namespace A328981

/-- `A072905(n+1)%2` -/
def P13051552644772579465.Spec : Prop :=
  ∀ n, P13051552644772579465.a n = A328981 (n + 1)

end A328981

/-!
# A328982: Sorted list of the numbers of the form 5m+2 (m>=0) together with numbers of the form 5m-2+eps (m>=1), where eps = 1 if the binary expansion of m ends in an odd number of 0's and is otherwise 0.

The programs for A328982, there is no canonical definition to state claims against.
-/

/-! ## A328982.P8083201780709314747

`∑[gcd(2, n)]+n-val(n+1, 2)%2`
-/

namespace A328982.P8083201780709314747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - ((SequenceMachineLib.valuation (n + 1) 2 % 2 : ℕ) : ℤ)

end

end A328982.P8083201780709314747

/-! ## A328982.P2362425028938368352

`comp[3*n]+xor(n, n+1)%3+n`
-/

namespace A328982.P2362425028938368352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (Nat.xor n (n + 1) % 3 + n)

end

end A328982.P2362425028938368352

/-! ## A328982.P11710884980367735404

`record[-A328196(n+3)]`
-/

namespace A328982.P11710884980367735404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A328196 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328982.P11710884980367735404

/-! ## A328982.P18253296862152061136

`abs(A328196(2*n+3))`
-/

namespace A328982.P18253296862152061136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328196 (2 * n + 3)|

end

end A328982.P18253296862152061136

/-! ## A328982.P3077535617218776741

`-A328196(n+3+n)`
-/

namespace A328982.P3077535617218776741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A328196 (n + 3 + n)

end

end A328982.P3077535617218776741

/-! ## A328982.P7515840973562983482

`∑[gcd(2, n)]+n-A096268(n)`
-/

namespace A328982.P7515840973562983482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - A096268 n

end

end A328982.P7515840973562983482

/-! ## A328982.P16347990406514356771

`A298468(n+1)-(and(1, n)+2)`
-/

namespace A328982.P16347990406514356771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298468 (n + 1) - (Nat.land 1 n + 2 : ℤ)

end

end A328982.P16347990406514356771

/-! ## A328982.P10997431262242411815

`A026491(n+1)+floor(n/2)-2`
-/

namespace A328982.P10997431262242411815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (n + 1) + (⌊(n : ℚ) / 2⌋ - 2)

end

end A328982.P10997431262242411815

/-! ## A328982.P2608501365418643728

`∑[3-and(1, n)]-A056832(n+1)`
-/

namespace A328982.P2608501365418643728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056832 (n + 1)

end

end A328982.P2608501365418643728

/-! ## A328982.P16122726538180484287

`record[gcd(val(n+1, 2), A328196(n+1))]`
-/

namespace A328982.P16122726538180484287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A328196 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328982.P16122726538180484287

/-!
# A328983: Complement of A328982.

The programs for A328983, there is no canonical definition to state claims against.
-/

/-! ## A328983.P16876458840935952030

`A249031(comp[record[lcm(2, n)]])`
-/

namespace A328983.P16876458840935952030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A328983.P16876458840935952030

/-! ## A328983.P8839576876589369436

`A249031(ceil(4*n/3)+1)`
-/

namespace A328983.P8839576876589369436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (⌈4 * ((n : ℚ) / 3)⌉ + 1).toNat

end

end A328983.P8839576876589369436

/-! ## A328983.P18108142372258158143

`comp[A328982(n+1)-1]+1`
-/

namespace A328983.P18108142372258158143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328982 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A328983.P18108142372258158143

/-! ## A328983.P10229380855616752426

`comp[floor(acot(n)²)-A328196(n+1)]`
-/

namespace A328983.P10229380855616752426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - A328196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328983.P10229380855616752426

/-! ## A328983.P13331137063452190374

`A101544(∑[n]%3+2*n+1)`
-/

namespace A328983.P13331137063452190374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101544 ((∑ j ∈ Finset.range (n + 1), f1 j) % 3 + 2 * n + 1)

end

end A328983.P13331137063452190374

/-! ## A328983.P14436792242462821982

`record[A249031(A116966(n))]`
-/

namespace A328983.P14436792242462821982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (A116966 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328983.P14436792242462821982

/-! ## A328983.P2951181790439996112

`A101544(A047259(n+1))`
-/

namespace A328983.P2951181790439996112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101544 (A047259 (n + 1)).toNat

end

end A328983.P2951181790439996112

/-! ## A328983.P960958088420728723

`record[A249031(A056699(n+1))]`
-/

namespace A328983.P960958088420728723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (A056699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328983.P960958088420728723

/-! ## A328983.P9258094736181161143

`A101544(A131534(n)+2*n)`
-/

namespace A328983.P9258094736181161143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101544 (A131534 n + (2 * n : ℤ)).toNat

end

end A328983.P9258094736181161143

/-! ## A328983.P8304205296115545674

`filter[A249031(n+1), A179850(#)]`
-/

namespace A328983.P8304205296115545674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179850 (f1 j).toNat = 1) n)

end

end A328983.P8304205296115545674

/-!
# A328984: If n is even, a(n) = floor((5t+1)/2) where t=n/2; if n == 1 (mod 4) then a(n) = 10t+1 where t = (n-1)/4; and if n == 3 (mod 4) then a(n) = 10t+7 where t = (n-3)/4.

The programs for A328984, the canonical program `A328984.P4971678310613194335` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328984 has offset 1).

The definition of A328984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328984.P6041927951954711682

`ogf((1+3x+6x^2+2x^3+3x^4)/(1-x^2-x^4+x^6))`
-/

namespace A328984.P6041927951954711682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 6, 2, 3] [1, 0, -1, 0, -1, 0, 1] n

end

end A328984.P6041927951954711682

namespace A328984

/-- `ogf((1+3x+6x^2+2x^3+3x^4)/(1-x^2-x^4+x^6))` -/
def P6041927951954711682.Spec : Prop :=
  ∀ n, P6041927951954711682.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P4971678310613194335

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=5, a(4)=11, a(5)=8`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328984

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P4971678310613194335.Spec : Prop :=
  ∀ n, P4971678310613194335.a n = A328984 (n + 1)

theorem P4971678310613194335.correct : P4971678310613194335.Spec := by
  intro n
  simp only [A328984, Nat.add_sub_cancel]

end A328984

/-! ## A328984.P1779075705865115826

`∑[a(n-2)-a(n-1)%5]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A328984.P1779075705865115826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 2) - Int.tmod (f1 (n - 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328984.P1779075705865115826

namespace A328984

/-- `∑[a(n-2)-a(n-1)%5]` -/
def P1779075705865115826.Spec : Prop :=
  ∀ n, P1779075705865115826.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P3372532146636488103

`A328985(n)+a(n-1)` with `a(0)=1`
-/

namespace A328984.P3372532146636488103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328985 n + a (n - 1)

end

end A328984.P3372532146636488103

namespace A328984

/-- `A328985(n)+a(n-1)` -/
def P3372532146636488103.Spec : Prop :=
  ∀ n, P3372532146636488103.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P5999626581846792083

`gcd(2, n)*A047203(n+1)+1`
-/

namespace A328984.P5999626581846792083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A047203 (n + 1) + 1

end

end A328984.P5999626581846792083

namespace A328984

/-- `gcd(2, n)*A047203(n+1)+1` -/
def P5999626581846792083.Spec : Prop :=
  ∀ n, P5999626581846792083.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P12785186632142703013

`∑[A212152(a(n-1)-1)]-a(n-1)` with `a(0)=1`
-/

namespace A328984.P12785186632142703013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A212152 (f1 (n - 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A328984.P12785186632142703013

namespace A328984

/-- `∑[A212152(a(n-1)-1)]-a(n-1)` -/
def P12785186632142703013.Spec : Prop :=
  ∀ n, P12785186632142703013.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P3572718397332912624

`A040001(n)*A047203(n+1)+1`
-/

namespace A328984.P3572718397332912624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A047203 (n + 1) + 1

end

end A328984.P3572718397332912624

namespace A328984

/-- `A040001(n)*A047203(n+1)+1` -/
def P3572718397332912624.Spec : Prop :=
  ∀ n, P3572718397332912624.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P16902478706123232325

`abs(A047203(n+1)*A280193(n))+1`
-/

namespace A328984.P16902478706123232325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047203 (n + 1) * A280193 n| + 1

end

end A328984.P16902478706123232325

namespace A328984

/-- `abs(A047203(n+1)*A280193(n))+1` -/
def P16902478706123232325.Spec : Prop :=
  ∀ n, P16902478706123232325.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P12247543519914342351

`∑[A328985(n+1)]+1-A328985(n+1)`
-/

namespace A328984.P12247543519914342351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A328985 (n + 1))

end

end A328984.P12247543519914342351

namespace A328984

/-- `∑[A328985(n+1)]+1-A328985(n+1)` -/
def P12247543519914342351.Spec : Prop :=
  ∀ n, P12247543519914342351.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P7956509158681884470

`2*A047203(n+1)/(A000035(n)+1)+1`
-/

namespace A328984.P7956509158681884470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A047203 (n + 1) : ℚ) / (A000035 n + 1 : ℚ) + 1

end

end A328984.P7956509158681884470

namespace A328984

/-- `2*A047203(n+1)/(A000035(n)+1)+1` -/
def P7956509158681884470.Spec : Prop :=
  ∀ n, P7956509158681884470.a n = (A328984 (n + 1) : ℚ)

end A328984

/-! ## A328984.P3142801136085872736

`A000027((char[2*n]+1)*A047203(n+1)+1)`
-/

namespace A328984.P3142801136085872736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A047203 (n + 1) + 1).toNat

end

end A328984.P3142801136085872736

namespace A328984

/-- `A000027((char[2*n]+1)*A047203(n+1)+1)` -/
def P3142801136085872736.Spec : Prop :=
  ∀ n, P3142801136085872736.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P13474089018228203830

`∑[A000005(A084316(a(n-1)+1)+1)]-a(n-1)` with `a(0)=1`
-/

namespace A328984.P13474089018228203830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000005 (A084316 (f1 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A328984.P13474089018228203830

namespace A328984

/-- `∑[A000005(A084316(a(n-1)+1)+1)]-a(n-1)` -/
def P13474089018228203830.Spec : Prop :=
  ∀ n, P13474089018228203830.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P5089108357554541938

`(A135416(A135517(n+2))+1)*A047203(n+1)+1`
-/

namespace A328984.P5089108357554541938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135416 (A135517 (n + 2)).toNat + 1) * A047203 (n + 1) + 1

end

end A328984.P5089108357554541938

namespace A328984

/-- `(A135416(A135517(n+2))+1)*A047203(n+1)+1` -/
def P5089108357554541938.Spec : Prop :=
  ∀ n, P5089108357554541938.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P14390581823453116817

`A047207(n+2)+A000035(n+1)*A047207(n+1)`
-/

namespace A328984.P14390581823453116817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (n + 2) + A000035 (n + 1) * A047207 (n + 1)

end

end A328984.P14390581823453116817

namespace A328984

/-- `A047207(n+2)+A000035(n+1)*A047207(n+1)` -/
def P14390581823453116817.Spec : Prop :=
  ∀ n, P14390581823453116817.a n = A328984 (n + 1)

end A328984

/-! ## A328984.P14385557985973470336

`2*A047203(n+1)/A176895(2*n)+1`
-/

namespace A328984.P14385557985973470336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A047203 (n + 1) : ℚ) / (A176895 (2 * n) : ℚ)) + 1

end

end A328984.P14385557985973470336

namespace A328984

/-- `2*A047203(n+1)/A176895(2*n)+1` -/
def P14385557985973470336.Spec : Prop :=
  ∀ n, P14385557985973470336.a n = (A328984 (n + 1) : ℚ)

end A328984

/-! ## A328984.P3328802026564004541

`A026741(∑[A026741(a(n-4))])` with `a(0)=1, a(1)=5, a(2)=1, a(3)=3`
-/

namespace A328984.P3328802026564004541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 1, 3] fun n f1 =>
  A026741 (f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328984.P3328802026564004541

namespace A328984

/-- `A026741(∑[A026741(a(n-4))])` -/
def P3328802026564004541.Spec : Prop :=
  ∀ n, P3328802026564004541.a n = A328984 (n + 1)

end A328984

/-!
# A328985: First differences of A328984.

The programs for A328985, the canonical program `A328985.P16522205583382113047` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328985 has offset 1).

The definition of A328985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328985.P16522205583382113047

`ogf((2+6x+2x^2+4x^3+x^4)/(1+x-x^4-x^5))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328985

/-- `ogf((2+6x+2x^2+4x^3+x^4)/(1+x-x^4-x^5))` -/
def P16522205583382113047.Spec : Prop :=
  ∀ n, P16522205583382113047.a n = A328985 (n + 1)

theorem P16522205583382113047.correct : P16522205583382113047.Spec := by
  intro n
  simp only [A328985, Nat.add_sub_cancel]

end A328985

/-! ## A328985.P17789781221964796205

`a(n-2)-a(n-1)%5` with `a(0)=2, a(1)=4`
-/

namespace A328985.P17789781221964796205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) - Int.tmod (a (n - 1)) 5

end

end A328985.P17789781221964796205

namespace A328985

/-- `a(n-2)-a(n-1)%5` -/
def P17789781221964796205.Spec : Prop :=
  ∀ n, P17789781221964796205.a n = A328985 (n + 1)

end A328985

/-! ## A328985.P16750593819288843785

`Δ[(2-and(1, n))*ceil(5*n/4)]`
-/

namespace A328985.P16750593819288843785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * ⌈5 * ((n : ℚ) / 4)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328985.P16750593819288843785

namespace A328985

/-- `Δ[(2-and(1, n))*ceil(5*n/4)]` -/
def P16750593819288843785.Spec : Prop :=
  ∀ n, P16750593819288843785.a n = A328985 (n + 1)

end A328985

/-! ## A328985.P13277648758949378991

`Δ[A328984(1+n)]`
-/

namespace A328985.P13277648758949378991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328985.P13277648758949378991

namespace A328985

/-- `Δ[A328984(1+n)]` -/
def P13277648758949378991.Spec : Prop :=
  ∀ n, P13277648758949378991.a n = A328985 (n + 1)

end A328985

/-! ## A328985.P7375467428239397171

`Δ[gcd(2, n)*A047203(n+1)]`
-/

namespace A328985.P7375467428239397171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A047203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328985.P7375467428239397171

namespace A328985

/-- `Δ[gcd(2, n)*A047203(n+1)]` -/
def P7375467428239397171.Spec : Prop :=
  ∀ n, P7375467428239397171.a n = A328985 (n + 1)

end A328985

/-! ## A328985.P10898366834682566381

`Δ[A040001(n)*A047203(n+1)]`
-/

namespace A328985.P10898366834682566381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A047203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328985.P10898366834682566381

namespace A328985

/-- `Δ[A040001(n)*A047203(n+1)]` -/
def P10898366834682566381.Spec : Prop :=
  ∀ n, P10898366834682566381.a n = A328985 (n + 1)

end A328985

/-! ## A328985.P8881176298262346744

`A328984(n+2)-A328984(n+1)`
-/

namespace A328985.P8881176298262346744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (n + 2) - A328984 (n + 1)

end

end A328985.P8881176298262346744

namespace A328985

/-- `A328984(n+2)-A328984(n+1)` -/
def P8881176298262346744.Spec : Prop :=
  ∀ n, P8881176298262346744.a n = A328985 (n + 1)

end A328985

/-! ## A328985.P11498597503794208689

`Δ[(2-A000035(n))*A047203(n+1)]`
-/

namespace A328985.P11498597503794208689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A047203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328985.P11498597503794208689

namespace A328985

/-- `Δ[(2-A000035(n))*A047203(n+1)]` -/
def P11498597503794208689.Spec : Prop :=
  ∀ n, P11498597503794208689.a n = A328985 (n + 1)

end A328985

/-! ## A328985.P5241275556877355013

`Δ[(A135416(A135517(n+2))+1)*A047203(n+1)]`
-/

namespace A328985.P5241275556877355013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135416 (A135517 (n + 2)).toNat + 1) * A047203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328985.P5241275556877355013

namespace A328985

/-- `Δ[(A135416(A135517(n+2))+1)*A047203(n+1)]` -/
def P5241275556877355013.Spec : Prop :=
  ∀ n, P5241275556877355013.a n = A328985 (n + 1)

end A328985

/-! ## A328985.P6011519591628051170

`Δ[A029579(A083219(A016861(n)))]`
-/

namespace A328985.P6011519591628051170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A083219 (A016861 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328985.P6011519591628051170

namespace A328985

/-- `Δ[A029579(A083219(A016861(n)))]` -/
def P6011519591628051170.Spec : Prop :=
  ∀ n, P6011519591628051170.a n = A328985 (n + 1)

end A328985

/-!
# A328986: The sequence C(n) defined in the comments (A and B smallest missing numbers, offset 1).

The programs for A328986, there is no canonical definition to state claims against.
-/

/-! ## A328986.P10967935637994050243

`floor(2*sqrt(∑[n]))+floor((sqrt(2)+3)*(n+1))`
-/

namespace A328986.P10967935637994050243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋ + ⌊(Real.sqrt (2 : ℝ) + 3) * (n + 1 : ℝ)⌋

end

end A328986.P10967935637994050243

/-! ## A328986.P7979642713311914040

`A189573(comp[floor(n*sqrt(2))])`
-/

namespace A328986.P7979642713311914040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A328986.P7979642713311914040

/-! ## A328986.P13376482508095936296

`A286667(floor(2*sqrt(∑[n]))+2*(n+1))`
-/

namespace A328986.P13376482508095936296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286667 (⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋ + (2 * (n + 1) : ℤ)).toNat

end

end A328986.P13376482508095936296

/-! ## A328986.P1637284869679104746

`∩[A327207(n+1), round(n/(2-sqrt(2)))+1]`
-/

namespace A328986.P1637284869679104746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (2 - Real.sqrt (2 : ℝ))) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328986.P1637284869679104746

/-! ## A328986.P1496186041541159954

`abs(A171588(2*n+1)+2*comp[floor(n*sqrt(2))-1]-n)`
-/

namespace A328986.P1496186041541159954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171588 (2 * n + 1) + ((2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))|

end

end A328986.P1496186041541159954

/-! ## A328986.P14356638811199390168

`filter[A189573(n+1), A286665(#)]`
-/

namespace A328986.P14356638811199390168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286665 (f1 j).toNat = 1) n)

end

end A328986.P14356638811199390168

/-! ## A328986.P6967151257861300662

`filter[A189573(n+1), A327205(#)]`
-/

namespace A328986.P6967151257861300662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327205 (f1 j).toNat = 1) n)

end

end A328986.P6967151257861300662

/-! ## A328986.P3210031132950309531

`ceil(A289037(A286690(n+1))/4)`
-/

namespace A328986.P3210031132950309531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289037 (A286690 (n + 1)).toNat : ℚ) / 4⌉

end

end A328986.P3210031132950309531

/-! ## A328986.P13131780305848539726

`A187970(A285077(2*(n+1))+n)`
-/

namespace A328986.P13131780305848539726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187970 (A285077 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A328986.P13131780305848539726

/-! ## A328986.P14360855609410353724

`(A328987(n)+A098021(n+1))/2`
-/

namespace A328986.P14360855609410353724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328987 n + A098021 (n + 1) : ℚ) / 2

end

end A328986.P14360855609410353724

/-!
# A328987: The sequence C(n) defined in the comments (A and B smallest missing numbers, offset 0).

The programs for A328987, there is no canonical definition to state claims against.
-/

/-! ## A328987.P5900022320959635902

`A328986(n+1)-A004641(A328986(n+1))`
-/

namespace A328987.P5900022320959635902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328986 (n + 1) - A004641 (A328986 (n + 1)).toNat

end

end A328987.P5900022320959635902

/-! ## A328987.P16750920027557850406

`A064437(A080652(n+1)%A328986(n+1))`
-/

namespace A328987.P16750920027557850406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (Int.tmod (A080652 (n + 1)) (A328986 (n + 1))).toNat

end

end A328987.P16750920027557850406

/-! ## A328987.P14631268033832535058

`A003152(A184119(n+1)%A398032(n+1))`
-/

namespace A328987.P14631268033832535058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (Int.tmod (A184119 (n + 1)) (A398032 (n + 1))).toNat

end

end A328987.P14631268033832535058

/-! ## A328987.P16100067659408757859

`A189573(A184119(n+1))%A398032(n+2)`
-/

namespace A328987.P16100067659408757859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189573 (A184119 (n + 1)).toNat) (A398032 (n + 2))

end

end A328987.P16100067659408757859

/-! ## A328987.P17938066055313928610

`A064437((A001954(n)+1-n)%A132327(n+2))`
-/

namespace A328987.P17938066055313928610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (Int.tmod (A001954 n + (1 - (n : ℤ))) (A132327 (n + 2))).toNat

end

end A328987.P17938066055313928610

/-!
# A328988: Number of partitions of n with rank a multiple of 3.

The programs for A328988, there is no canonical definition to state claims against.
-/

/-! ## A328988.P14005787389001741016

`A000041(n+1)-2*A328989(n+1)`
-/

namespace A328988.P14005787389001741016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - 2 * A328989 (n + 1)

end

end A328988.P14005787389001741016

/-! ## A328988.P7365929706722729528

`(A000041(n+1)+2*A053274(n+1))/3`
-/

namespace A328988.P7365929706722729528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) + 2 * A053274 (n + 1) : ℚ) / 3

end

end A328988.P7365929706722729528

/-! ## A328988.P14938401273700651626

`record[A035363(n)]-2*A328989(n+1)`
-/

namespace A328988.P14938401273700651626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A328989 (n + 1)

end

end A328988.P14938401273700651626

/-! ## A328988.P251887461752552694

`A328989(n+1)+A053274(n+1)`
-/

namespace A328988.P251887461752552694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328989 (n + 1) + A053274 (n + 1)

end

end A328988.P251887461752552694

/-! ## A328988.P6996090897328087835

`record[A124094(n)]-2*A328989(n+1)`
-/

namespace A328988.P6996090897328087835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A328989 (n + 1)

end

end A328988.P6996090897328087835

/-! ## A328988.P12449023076933790929

`A238121(A000217(n+1))-2*A328989(n+1)`
-/

namespace A328988.P12449023076933790929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 (n + 1)).toNat - 2 * A328989 (n + 1)

end

end A328988.P12449023076933790929

/-!
# A328989: Number of partitions of n with rank congruent to 1 mod 3.

The programs for A328989, there is no canonical definition to state claims against.
-/

/-! ## A328989.P9059431789441260582

`(A000041(n+1)-A328988(n+1))/2`
-/

namespace A328989.P9059431789441260582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) - A328988 (n + 1) : ℚ) / 2

end

end A328989.P9059431789441260582

/-! ## A328989.P12458113470997445497

`(A000041(n+1)-A053274(n+1))/3`
-/

namespace A328989.P12458113470997445497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) - A053274 (n + 1) : ℚ) / 3

end

end A328989.P12458113470997445497

/-! ## A328989.P2335745149501826482

`A328988(n+1)-A053274(n+1)`
-/

namespace A328989.P2335745149501826482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328988 (n + 1) - A053274 (n + 1)

end

end A328989.P2335745149501826482

/-! ## A328989.P17177804815142698160

`A004526(A052810(n+1)-A328988(n+1))`
-/

namespace A328989.P17177804815142698160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A052810 (n + 1) - A328988 (n + 1)).toNat

end

end A328989.P17177804815142698160

/-!
# A328990: a(n) = (3*b(n) + b(n-1) + 1)/2, where b = A005409.

The programs for A328990, the canonical program `A328990.P16501387904384504543` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328990 has offset 1).

The definition of A328990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328990.P8683907775965277412

`ogf((2+x)/(1-3x+x^2+x^3))`
-/

namespace A328990.P8683907775965277412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -3, 1, 1] n

end

end A328990.P8683907775965277412

namespace A328990

/-- `ogf((2+x)/(1-3x+x^2+x^3))` -/
def P8683907775965277412.Spec : Prop :=
  ∀ n, P8683907775965277412.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P16501387904384504543

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=2, a(1)=7, a(2)=19`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328990

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P16501387904384504543.Spec : Prop :=
  ∀ n, P16501387904384504543.a n = A328990 (n + 1)

theorem P16501387904384504543.correct : P16501387904384504543.Spec := by
  intro n
  simp only [A328990, Nat.add_sub_cancel]

end A328990

/-! ## A328990.P5669593816716773009

`(A002203(n+3)-6)/4`
-/

namespace A328990.P5669593816716773009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (n + 3) - 6 : ℚ) / 4

end

end A328990.P5669593816716773009

namespace A328990

/-- `(A002203(n+3)-6)/4` -/
def P5669593816716773009.Spec : Prop :=
  ∀ n, P5669593816716773009.a n = (A328990 (n + 1) : ℚ)

end A328990

/-! ## A328990.P11548059617536047238

`ceil((sqrt(2)+1)*a(n-1))+2` with `a(0)=2`
-/

namespace A328990.P11548059617536047238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌉ + 2

end

end A328990.P11548059617536047238

namespace A328990

/-- `ceil((sqrt(2)+1)*a(n-1))+2` -/
def P11548059617536047238.Spec : Prop :=
  ∀ n, P11548059617536047238.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P13734719535022296610

`round((sqrt(2)+1)*a(n-1))+2` with `a(0)=2`
-/

namespace A328990.P13734719535022296610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)) + 2

end

end A328990.P13734719535022296610

namespace A328990

/-- `round((sqrt(2)+1)*a(n-1))+2` -/
def P13734719535022296610.Spec : Prop :=
  ∀ n, P13734719535022296610.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P2758363259190666672

`∑[2*a(n-1)+a(n-2)]` with `a(0)=2, a(1)=5`
-/

namespace A328990.P2758363259190666672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  2 * f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328990.P2758363259190666672

namespace A328990

/-- `∑[2*a(n-1)+a(n-2)]` -/
def P2758363259190666672.Spec : Prop :=
  ∀ n, (P2758363259190666672.a n : ℤ) = A328990 (n + 1)

end A328990

/-! ## A328990.P7570581555681487826

`2*a(n-1)+a(n-2)+3` with `a(0)=2, a(1)=7`
-/

namespace A328990.P7570581555681487826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n a =>
  2 * a (n - 1) + (a (n - 2) + 3)

end

end A328990.P7570581555681487826

namespace A328990

/-- `2*a(n-1)+a(n-2)+3` -/
def P7570581555681487826.Spec : Prop :=
  ∀ n, (P7570581555681487826.a n : ℤ) = A328990 (n + 1)

end A328990

/-! ## A328990.P8595285175353185922

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=2, a(1)=5`
-/

namespace A328990.P8595285175353185922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328990.P8595285175353185922

namespace A328990

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P8595285175353185922.Spec : Prop :=
  ∀ n, (P8595285175353185922.a n : ℤ) = A328990 (n + 1)

end A328990

/-! ## A328990.P9156483704211739056

`a(n-1)+3+a(n-1)+a(n-2)` with `a(0)=2, a(1)=7`
-/

namespace A328990.P9156483704211739056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n a =>
  a (n - 1) + 3 + (a (n - 1) + a (n - 2))

end

end A328990.P9156483704211739056

namespace A328990

/-- `a(n-1)+3+a(n-1)+a(n-2)` -/
def P9156483704211739056.Spec : Prop :=
  ∀ n, (P9156483704211739056.a n : ℤ) = A328990 (n + 1)

end A328990

/-! ## A328990.P682576679969324529

`A181658(Δ[n²])`
-/

namespace A328990.P682576679969324529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181658 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A328990.P682576679969324529

namespace A328990

/-- `A181658(Δ[n²])` -/
def P682576679969324529.Spec : Prop :=
  ∀ n, P682576679969324529.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P9165220009110576702

`∑[A000129(n+2)]`
-/

namespace A328990.P9165220009110576702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328990.P9165220009110576702

namespace A328990

/-- `∑[A000129(n+2)]` -/
def P9165220009110576702.Spec : Prop :=
  ∀ n, P9165220009110576702.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P2922324463880702964

`∑[A215928(n+2)]`
-/

namespace A328990.P2922324463880702964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328990.P2922324463880702964

namespace A328990

/-- `∑[A215928(n+2)]` -/
def P2922324463880702964.Spec : Prop :=
  ∀ n, P2922324463880702964.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P6400204881794734524

`Δ[A048776(n)]-1`
-/

namespace A328990.P6400204881794734524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A328990.P6400204881794734524

namespace A328990

/-- `Δ[A048776(n)]-1` -/
def P6400204881794734524.Spec : Prop :=
  ∀ n, P6400204881794734524.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P8355192604223631771

`A048739(n+1)-1`
-/

namespace A328990.P8355192604223631771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (n + 1) - 1

end

end A328990.P8355192604223631771

namespace A328990

/-- `A048739(n+1)-1` -/
def P8355192604223631771.Spec : Prop :=
  ∀ n, P8355192604223631771.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P8613975871744537818

`A024537(n+2)-2`
-/

namespace A328990.P8613975871744537818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (n + 2) - 2

end

end A328990.P8613975871744537818

namespace A328990

/-- `A024537(n+2)-2` -/
def P8613975871744537818.Spec : Prop :=
  ∀ n, P8613975871744537818.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P17231895391877388003

`A171842(n+3)-2`
-/

namespace A328990.P17231895391877388003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 3) - 2

end

end A328990.P17231895391877388003

namespace A328990

/-- `A171842(n+3)-2` -/
def P17231895391877388003.Spec : Prop :=
  ∀ n, P17231895391877388003.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P8116213201751798138

`A048777(n)+1+n`
-/

namespace A328990.P8116213201751798138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048777 n + 1 + (n : ℤ)

end

end A328990.P8116213201751798138

namespace A328990

/-- `A048777(n)+1+n` -/
def P8116213201751798138.Spec : Prop :=
  ∀ n, P8116213201751798138.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P16100200199225797754

`∑[abs(A077985(n+1))]`
-/

namespace A328990.P16100200199225797754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328990.P16100200199225797754

namespace A328990

/-- `∑[abs(A077985(n+1))]` -/
def P16100200199225797754.Spec : Prop :=
  ∀ n, P16100200199225797754.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P8893167507783332894

`∑[abs(A176981(n+3))]`
-/

namespace A328990.P8893167507783332894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328990.P8893167507783332894

namespace A328990

/-- `∑[abs(A176981(n+3))]` -/
def P8893167507783332894.Spec : Prop :=
  ∀ n, P8893167507783332894.a n = A328990 (n + 1)

end A328990

/-! ## A328990.P2441966385375157602

`∑[∑[A078057(n)]+1]`
-/

namespace A328990.P2441966385375157602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328990.P2441966385375157602

namespace A328990

/-- `∑[∑[A078057(n)]+1]` -/
def P2441966385375157602.Spec : Prop :=
  ∀ n, P2441966385375157602.a n = A328990 (n + 1)

end A328990

/-!
# A328994: a(n) = n^2*(1+n)*(1+n^2)/4.

The programs for A328994, the canonical program `A328994.P2245231520189772910` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328994 has offset 1).

The definition of A328994 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A328994.anchor (n : ℕ) : (A328994 (n + 1) : ℚ) = ((n + 1) ^ 2 * (1 + (n + 1)) * (1 + (n + 1) ^ 2) : ℚ) / 4` in `Proof.A328.A328994`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A328994.P14352945952839801259

`ogf((1+9x+15x^2+5x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A328994.P14352945952839801259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 15, 5] [1, -6, 15, -20, 15, -6, 1] n

end

end A328994.P14352945952839801259

namespace A328994

/-- `ogf((1+9x+15x^2+5x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P14352945952839801259.Spec : Prop :=
  ∀ n, P14352945952839801259.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P2245231520189772910

`(n+1)²*(1+n+1)*(1+(n+1)²)/4`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328994

/-- `(n+1)²*(1+n+1)*(1+(n+1)²)/4` -/
def P2245231520189772910.Spec : Prop :=
  ∀ n, P2245231520189772910.a n = (A328994 (n + 1) : ℚ)

end A328994

/-! ## A328994.P12432071450952215565

`(n+2)*C((n+1)²+1, 2)/2`
-/

namespace A328994.P12432071450952215565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.choose ((n + 1) ^ 2 + 1) 2 : ℚ) / 2

end

end A328994.P12432071450952215565

namespace A328994

/-- `(n+2)*C((n+1)²+1, 2)/2` -/
def P12432071450952215565.Spec : Prop :=
  ∀ n, P12432071450952215565.a n = (A328994 (n + 1) : ℚ)

end A328994

/-! ## A328994.P8657257885141165858

`A176060(n)+A072474(n+1)`
-/

namespace A328994.P8657257885141165858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 n + A072474 (n + 1)

end

end A328994.P8657257885141165858

namespace A328994

/-- `A176060(n)+A072474(n+1)` -/
def P8657257885141165858.Spec : Prop :=
  ∀ n, P8657257885141165858.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P2652804118569732447

`A387429(n+1)+A152457(n)`
-/

namespace A328994.P2652804118569732447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387429 (n + 1) + A152457 n

end

end A328994.P2652804118569732447

namespace A328994

/-- `A387429(n+1)+A152457(n)` -/
def P2652804118569732447.Spec : Prop :=
  ∀ n, P2652804118569732447.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P4241235880080856631

`A005997(n+1)*A080335(n)`
-/

namespace A328994.P4241235880080856631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1) * A080335 n

end

end A328994.P4241235880080856631

namespace A328994

/-- `A005997(n+1)*A080335(n)` -/
def P4241235880080856631.Spec : Prop :=
  ∀ n, P4241235880080856631.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P2834494348761584157

`A213843(n+1)+n*A153978(n+1)`
-/

namespace A328994.P2834494348761584157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213843 (n + 1) + (n : ℤ) * A153978 (n + 1)

end

end A328994.P2834494348761584157

namespace A328994

/-- `A213843(n+1)+n*A153978(n+1)` -/
def P2834494348761584157.Spec : Prop :=
  ∀ n, P2834494348761584157.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P4333234517890335730

`(A006000(n)+A000217(n))*A000217(n+1)`
-/

namespace A328994.P4333234517890335730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006000 n + A000217 n) * A000217 (n + 1)

end

end A328994.P4333234517890335730

namespace A328994

/-- `(A006000(n)+A000217(n))*A000217(n+1)` -/
def P4333234517890335730.Spec : Prop :=
  ∀ n, P4333234517890335730.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P9245864528747641184

`(A081436(n)-A006002(n))*A000217(n+1)`
-/

namespace A328994.P9245864528747641184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081436 n - A006002 n) * A000217 (n + 1)

end

end A328994.P9245864528747641184

namespace A328994

/-- `(A081436(n)-A006002(n))*A000217(n+1)` -/
def P9245864528747641184.Spec : Prop :=
  ∀ n, P9245864528747641184.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P12275555182874454618

`(A000330(n)+A000292(n+1))*A000217(n+1)`
-/

namespace A328994.P12275555182874454618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000330 n + A000292 (n + 1)) * A000217 (n + 1)

end

end A328994.P12275555182874454618

namespace A328994

/-- `(A000330(n)+A000292(n+1))*A000217(n+1)` -/
def P12275555182874454618.Spec : Prop :=
  ∀ n, P12275555182874454618.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P5877471388546187175

`(A002817(n+1)-A002817(n))*A000217(n+1)`
-/

namespace A328994.P5877471388546187175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002817 (n + 1) - A002817 n) * A000217 (n + 1)

end

end A328994.P5877471388546187175

namespace A328994

/-- `(A002817(n+1)-A002817(n))*A000217(n+1)` -/
def P5877471388546187175.Spec : Prop :=
  ∀ n, P5877471388546187175.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P977670963349524956

`∑[n+1]*A006003(n+1)`
-/

namespace A328994.P977670963349524956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A006003 (n + 1)

end

end A328994.P977670963349524956

namespace A328994

/-- `∑[n+1]*A006003(n+1)` -/
def P977670963349524956.Spec : Prop :=
  ∀ n, P977670963349524956.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P33298212249570508

`(n+1)/2*A071237(n+1)`
-/

namespace A328994.P33298212249570508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A071237 (n + 1) : ℚ)

end

end A328994.P33298212249570508

namespace A328994

/-- `(n+1)/2*A071237(n+1)` -/
def P33298212249570508.Spec : Prop :=
  ∀ n, P33298212249570508.a n = (A328994 (n + 1) : ℚ)

end A328994

/-! ## A328994.P17924025848707486190

`∑[n+1]+n*A001621(n+1)`
-/

namespace A328994.P17924025848707486190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * A001621 (n + 1)

end

end A328994.P17924025848707486190

namespace A328994

/-- `∑[n+1]+n*A001621(n+1)` -/
def P17924025848707486190.Spec : Prop :=
  ∀ n, P17924025848707486190.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P15577176040194260984

`A002411(n+1)+n*A000537(n+1)`
-/

namespace A328994.P15577176040194260984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 1) + (n : ℤ) * A000537 (n + 1)

end

end A328994.P15577176040194260984

namespace A328994

/-- `A002411(n+1)+n*A000537(n+1)` -/
def P15577176040194260984.Spec : Prop :=
  ∀ n, P15577176040194260984.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P18031766390410737517

`Δ[a(n-1)+A000217(n)*A006003(n)]` with `a(0)=6`
-/

namespace A328994.P18031766390410737517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + A000217 n * A006003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328994.P18031766390410737517

namespace A328994

/-- `Δ[a(n-1)+A000217(n)*A006003(n)]` -/
def P18031766390410737517.Spec : Prop :=
  ∀ n, P18031766390410737517.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P7698957648457313444

`A006003(n+1)+A000096(n)*A006003(n+1)`
-/

namespace A328994.P7698957648457313444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) + A000096 n * A006003 (n + 1)

end

end A328994.P7698957648457313444

namespace A328994

/-- `A006003(n+1)+A000096(n)*A006003(n+1)` -/
def P7698957648457313444.Spec : Prop :=
  ∀ n, P7698957648457313444.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P17100208070499964237

`A000217(n+1)+A000124(n+1)*A027480(n)`
-/

namespace A328994.P17100208070499964237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000124 (n + 1) * A027480 n

end

end A328994.P17100208070499964237

namespace A328994

/-- `A000217(n+1)+A000124(n+1)*A027480(n)` -/
def P17100208070499964237.Spec : Prop :=
  ∀ n, P17100208070499964237.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P10864991841878099497

`(A019298(n+1)+A019298(n))*A000217(n+1)`
-/

namespace A328994.P10864991841878099497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019298 (n + 1) + A019298 n) * A000217 (n + 1)

end

end A328994.P10864991841878099497

namespace A328994

/-- `(A019298(n+1)+A019298(n))*A000217(n+1)` -/
def P10864991841878099497.Spec : Prop :=
  ∀ n, P10864991841878099497.a n = A328994 (n + 1)

end A328994

/-! ## A328994.P7049444524471559202

`(A002411(n+1)-A000217(n))*A000217(n+1)`
-/

namespace A328994.P7049444524471559202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002411 (n + 1) - A000217 n) * A000217 (n + 1)

end

end A328994.P7049444524471559202

namespace A328994

/-- `(A002411(n+1)-A000217(n))*A000217(n+1)` -/
def P7049444524471559202.Spec : Prop :=
  ∀ n, P7049444524471559202.a n = A328994 (n + 1)

end A328994

/-!
# A328995: Dirichlet g.f. = Product_{primes p == 1 mod 3} (1+p^(-s))/(1-p^(-s)).

The programs for A328995, there is no canonical definition to state claims against.
-/

/-! ## A328995.P799783315723437466

`∏{p}[6*n+1, (#+1)%3]`
-/

namespace A328995.P799783315723437466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + 1) % 3

end

end A328995.P799783315723437466

/-! ## A328995.P5028348941385358894

`A000086(6*n+1)`
-/

namespace A328995.P5028348941385358894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (6 * n + 1)

end

end A328995.P5028348941385358894

/-! ## A328995.P16705076053334689455

`A000091(6*n+1)`
-/

namespace A328995.P16705076053334689455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000091 (6 * n + 1)

end

end A328995.P16705076053334689455

/-! ## A328995.P12557087949617456402

`A091393(6*n+1)`
-/

namespace A328995.P12557087949617456402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (6 * n + 1)

end

end A328995.P12557087949617456402

/-! ## A328995.P4157202683949666453

`A000082(6*n+1)%6`
-/

namespace A328995.P4157202683949666453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000082 (6 * n + 1)) 6

end

end A328995.P4157202683949666453

/-! ## A328995.P5023858866275180367

`A001615(6*n+1)%6`
-/

namespace A328995.P5023858866275180367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001615 (6 * n + 1)) 6

end

end A328995.P5023858866275180367

/-! ## A328995.P8644826033054492072

`A033196(6*n+1)%6`
-/

namespace A328995.P8644826033054492072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033196 (6 * n + 1)) 6

end

end A328995.P8644826033054492072

/-!
# A328996: Numbers with at least three digits such that the absolute differences between successive digits forms a palindrome without leading zeros.

The programs for A328996, there is no canonical definition to state claims against.
-/

/-! ## A328996.P2435844803616643811

`∩[A086918(n+1), A241158(n+1)]`
-/

namespace A328996.P2435844803616643811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328996.P2435844803616643811

/-! ## A328996.P15320334181000699229

`lt[A321804(n), A321804(A040115(n))]`
-/

namespace A328996.P15320334181000699229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328996.P15320334181000699229

/-!
# A328998: Primes that never appear as sums of terms in successive triples in A329333.

The programs for A328998, there is no canonical definition to state claims against.
-/

/-! ## A328998.P1518313567245686245

`A166246(∑[A324066(n+1)+4])`
-/

namespace A328998.P1518313567245686245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324066 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166246 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328998.P1518313567245686245

