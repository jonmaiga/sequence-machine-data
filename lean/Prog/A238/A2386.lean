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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C025

/-!
# A238600: A sixth-order linear divisibility sequence related to the Fibonacci numbers: a(n) := (1/6)*Fibonacci(3*n)*Fibonacci(4*n)/Fibonacci(n).

The programs for A238600, there is no canonical definition to state claims against.
-/

/-! ## A238600.P17812580773214183590

`A001076(n+1)/A000045(n+1)*A004187(n+1)`
-/

namespace A238600.P17812580773214183590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A004187 (n + 1) : ℚ)

end

end A238600.P17812580773214183590

/-! ## A238600.P16366305203689300191

`A004187(n+1)/A001906(n+1)*A238536(n+1)`
-/

namespace A238600.P16366305203689300191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004187 (n + 1) : ℚ) / (A001906 (n + 1) : ℚ) * (A238536 (n + 1) : ℚ)

end

end A238600.P16366305203689300191

/-!
# A238601: A sixth-order linear divisibility sequence related to the Fibonacci numbers: a(n) := (1/10)*Fibonacci(3*n)*Fibonacci(5*n)/Fibonacci(n).

The programs for A238601, there is no canonical definition to state claims against.
-/

/-! ## A238601.P10316111795850607927

`∑[A033887(n)]*A088545(n+1)`
-/

namespace A238601.P10316111795850607927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A088545 (n + 1)

end

end A238601.P10316111795850607927

/-! ## A238601.P7970219837894279133

`Δ[A049652(n)]*A088545(n+1)`
-/

namespace A238601.P7970219837894279133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A088545 (n + 1)

end

end A238601.P7970219837894279133

/-! ## A238601.P8279390768252465285

`A001076(n+1)*A088545(n+1)`
-/

namespace A238601.P8279390768252465285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) * A088545 (n + 1)

end

end A238601.P8279390768252465285

/-! ## A238601.P10848469833950035171

`A088545(n+1)*A214978(A167614(n+1))`
-/

namespace A238601.P10848469833950035171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088545 (n + 1) * A214978 (A167614 (n + 1)).toNat

end

end A238601.P10848469833950035171

/-! ## A238601.P12304882534946625351

`(A059929(n)*A099921(n+1)+1)*A214978(A167614(n+1))`
-/

namespace A238601.P12304882534946625351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059929 n * A099921 (n + 1) + 1) * A214978 (A167614 (n + 1)).toNat

end

end A238601.P12304882534946625351

/-!
# A238602: A sixth-order linear divisibility sequence related to the Pell numbers: a(n) := (1/60)*Pell(3*n)*Pell(4*n)/Pell(n).

The programs for A238602, there is no canonical definition to state claims against.
-/

/-! ## A238602.P11645466328286152108

`A029547(n)/A000129(n+1)*A041085(n)`
-/

namespace A238602.P11645466328286152108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029547 n : ℚ) / (A000129 (n + 1) : ℚ) * (A041085 n : ℚ)

end

end A238602.P11645466328286152108

/-! ## A238602.P2713610455039764434

`A091761(n+1)/A000129(n+1)*A041085(n)`
-/

namespace A238602.P2713610455039764434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091761 (n + 1) : ℚ) / (A000129 (n + 1) : ℚ) * (A041085 n : ℚ)

end

end A238602.P2713610455039764434

/-!
# A238603: A sixth-order linear divisibility sequence related to A000225: a(n) := (1/105)*(2^(3*n) - 1)*(2^(4*n) - 1)/(2^n - 1).

The programs for A238603, the canonical program `A238603.P5915019799112550697` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238603 has offset 1).

The definition of A238603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238603.P5915019799112550697

`1/105*(2^(3*(n+1))-1)*(2^(4*(n+1))-1)/(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238603

/-- `1/105*(2^(3*(n+1))-1)*(2^(4*(n+1))-1)/(2^(n+1)-1)` -/
def P5915019799112550697.Spec : Prop :=
  ∀ n, P5915019799112550697.a n = (A238603 (n + 1) : ℚ)

end A238603

/-!
# A238604: a(n) = Sum_{k=0..3} f(n+k)^2 where f=A130519.

The programs for A238604, the canonical program `A238604.P13912507183018558157` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238604 has offset 0).

The definition of A238604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238604.P13912507183018558157

`∑[n*ceil((n%4+n²)/4)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238604

/-- `∑[n*ceil((n%4+n²)/4)]` -/
def P13912507183018558157.Spec : Prop :=
  ∀ n, P13912507183018558157.a n = A238604 n

theorem P13912507183018558157.correct : P13912507183018558157.Spec := by
  intro n
  simp only [A238604]

end A238604

/-! ## A238604.P4642206219430309186

`∑[n*(∑[2*ceil(n/4)]-n)]`
-/

namespace A238604.P4642206219430309186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℚ) / 4⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238604.P4642206219430309186

namespace A238604

/-- `∑[n*(∑[2*ceil(n/4)]-n)]` -/
def P4642206219430309186.Spec : Prop :=
  ∀ n, P4642206219430309186.a n = A238604 n

end A238604

/-! ## A238604.P9118581314633394030

`A307304(n+1)+A242601(n)`
-/

namespace A238604.P9118581314633394030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307304 (n + 1) + A242601 n

end

end A238604.P9118581314633394030

namespace A238604

/-- `A307304(n+1)+A242601(n)` -/
def P9118581314633394030.Spec : Prop :=
  ∀ n, P9118581314633394030.a n = A238604 n

end A238604

/-! ## A238604.P7397746810599059295

`A242601(n)+∑[n*(A000040(gcd(n+1, 2*n))+n²)]/4`
-/

namespace A238604.P7397746810599059295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000040 (Nat.gcd (n + 1) (2 * n)) + (n ^ 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242601 n : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A238604.P7397746810599059295

namespace A238604

/-- `A242601(n)+∑[n*(A000040(gcd(n+1, 2*n))+n²)]/4` -/
def P7397746810599059295.Spec : Prop :=
  ∀ n, P7397746810599059295.a n = (A238604 n : ℚ)

end A238604

/-! ## A238604.P12736819348448406098

`A011863(n)+A242601(n)+A109900(n)`
-/

namespace A238604.P12736819348448406098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 n + (A242601 n + A109900 n)

end

end A238604.P12736819348448406098

namespace A238604

/-- `A011863(n)+A242601(n)+A109900(n)` -/
def P12736819348448406098.Spec : Prop :=
  ∀ n, P12736819348448406098.a n = A238604 n

end A238604

/-! ## A238604.P10144803623638116267

`A001318(n)+A330520(n)+A242601(n)`
-/

namespace A238604.P10144803623638116267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (A330520 n + A242601 n)

end

end A238604.P10144803623638116267

namespace A238604

/-- `A001318(n)+A330520(n)+A242601(n)` -/
def P10144803623638116267.Spec : Prop :=
  ∀ n, P10144803623638116267.a n = A238604 n

end A238604

/-! ## A238604.P6315158867122711324

`A002817(n)+A242601(n)-A330520(n)`
-/

namespace A238604.P6315158867122711324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + (A242601 n - A330520 n)

end

end A238604.P6315158867122711324

namespace A238604

/-- `A002817(n)+A242601(n)-A330520(n)` -/
def P6315158867122711324.Spec : Prop :=
  ∀ n, P6315158867122711324.a n = A238604 n

end A238604

/-! ## A238604.P1050009358177034432

`A242601(n)+(A002817(n)+A001318(n))/2`
-/

namespace A238604.P1050009358177034432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242601 n : ℚ) + (A002817 n + A001318 n : ℚ) / 2

end

end A238604.P1050009358177034432

namespace A238604

/-- `A242601(n)+(A002817(n)+A001318(n))/2` -/
def P1050009358177034432.Spec : Prop :=
  ∀ n, P1050009358177034432.a n = (A238604 n : ℚ)

end A238604

/-!
# A238605: Semiprimes n such that (n+1)/4 also is a semiprime.

The programs for A238605, the canonical program `A238605.P18202506420963735544` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238605 has offset 1).

The definition of A238605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238605.P5983790200512561342

`filter[A063484(n+1), A353479(#)]`
-/

namespace A238605.P5983790200512561342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353479 (f1 j).toNat = 1) n)

end

end A238605.P5983790200512561342

namespace A238605

/-- `filter[A063484(n+1), A353479(#)]` -/
def P5983790200512561342.Spec : Prop :=
  ∀ n, P5983790200512561342.a n = A238605 (n + 1)

end A238605

/-! ## A238605.P8297437947250626442

`filter[A063484(n+1), A360109(#)]`
-/

namespace A238605.P8297437947250626442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360109 (f1 j).toNat = 1) n)

end

end A238605.P8297437947250626442

namespace A238605

/-- `filter[A063484(n+1), A360109(#)]` -/
def P8297437947250626442.Spec : Prop :=
  ∀ n, P8297437947250626442.a n = A238605 (n + 1)

end A238605

/-! ## A238605.P11176569004551075425

`filter[A114436(n+1), A353479(#)]`
-/

namespace A238605.P11176569004551075425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353479 (f1 j).toNat = 1) n)

end

end A238605.P11176569004551075425

namespace A238605

/-- `filter[A114436(n+1), A353479(#)]` -/
def P11176569004551075425.Spec : Prop :=
  ∀ n, P11176569004551075425.a n = A238605 (n + 1)

end A238605

/-! ## A238605.P13246770409913248392

`filter[A114436(n+1), A359162(#)]`
-/

namespace A238605.P13246770409913248392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359162 (f1 j).toNat = 1) n)

end

end A238605.P13246770409913248392

namespace A238605

/-- `filter[A114436(n+1), A359162(#)]` -/
def P13246770409913248392.Spec : Prop :=
  ∀ n, P13246770409913248392.a n = A238605 (n + 1)

end A238605

/-! ## A238605.P290408622913080848

`∩[A063484(n+1), A080774(n+1)]`
-/

namespace A238605.P290408622913080848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P290408622913080848

namespace A238605

/-- `∩[A063484(n+1), A080774(n+1)]` -/
def P290408622913080848.Spec : Prop :=
  ∀ n, (P290408622913080848.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P18202506420963735544

`∩[A080774(n+1), A114436(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A238605

/-- `∩[A080774(n+1), A114436(n+1)]` -/
def P18202506420963735544.Spec : Prop :=
  ∀ n, (P18202506420963735544.a n : ℤ) = A238605 (n + 1)

theorem P18202506420963735544.correct : P18202506420963735544.Spec := by
  intro n
  simp only [A238605, Nat.add_sub_cancel]

end A238605

/-! ## A238605.P9866034397111083231

`∩[A063484(n+1), A202237(n+1)]`
-/

namespace A238605.P9866034397111083231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P9866034397111083231

namespace A238605

/-- `∩[A063484(n+1), A202237(n+1)]` -/
def P9866034397111083231.Spec : Prop :=
  ∀ n, (P9866034397111083231.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P16667899594925558231

`∩[A063484(n+1), A360110(n+1)]`
-/

namespace A238605.P16667899594925558231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P16667899594925558231

namespace A238605

/-- `∩[A063484(n+1), A360110(n+1)]` -/
def P16667899594925558231.Spec : Prop :=
  ∀ n, (P16667899594925558231.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P11033948250127862975

`∩[A114436(n+1), A359163(n+1)]`
-/

namespace A238605.P11033948250127862975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P11033948250127862975

namespace A238605

/-- `∩[A114436(n+1), A359163(n+1)]` -/
def P11033948250127862975.Spec : Prop :=
  ∀ n, (P11033948250127862975.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P18070232814599934935

`∩[A001358(n+1), A217585(A001358(n+1))]`
-/

namespace A238605.P18070232814599934935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217585 (A001358 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P18070232814599934935

namespace A238605

/-- `∩[A001358(n+1), A217585(A001358(n+1))]` -/
def P18070232814599934935.Spec : Prop :=
  ∀ n, (P18070232814599934935.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P5379994986489185502

`∩[A001358(n+1), A131098(A088707(n+1))]`
-/

namespace A238605.P5379994986489185502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A088707 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P5379994986489185502

namespace A238605

/-- `∩[A001358(n+1), A131098(A088707(n+1))]` -/
def P5379994986489185502.Spec : Prop :=
  ∀ n, (P5379994986489185502.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P1335291395567822320

`∩[A006881(n+1), A131098(A088707(n+1))]`
-/

namespace A238605.P1335291395567822320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A088707 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P1335291395567822320

namespace A238605

/-- `∩[A006881(n+1), A131098(A088707(n+1))]` -/
def P1335291395567822320.Spec : Prop :=
  ∀ n, (P1335291395567822320.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P14814061106490830988

`∩[A131098(A001358(n+1)+1), A001358(n+1)]`
-/

namespace A238605.P14814061106490830988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A001358 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P14814061106490830988

namespace A238605

/-- `∩[A131098(A001358(n+1)+1), A001358(n+1)]` -/
def P14814061106490830988.Spec : Prop :=
  ∀ n, (P14814061106490830988.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P11542382013785955042

`∩[A186621(n+1)+1, A004767(A186621(n+1))]`
-/

namespace A238605.P11542382013785955042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A186621 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P11542382013785955042

namespace A238605

/-- `∩[A186621(n+1)+1, A004767(A186621(n+1))]` -/
def P11542382013785955042.Spec : Prop :=
  ∀ n, (P11542382013785955042.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P12460064804235996836

`∩[A004767(A001358(n+1)-1), A001358(n+1)]`
-/

namespace A238605.P12460064804235996836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A001358 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P12460064804235996836

namespace A238605

/-- `∩[A004767(A001358(n+1)-1), A001358(n+1)]` -/
def P12460064804235996836.Spec : Prop :=
  ∀ n, (P12460064804235996836.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P18276164530197948195

`filter[A335652(n+1), A353479(#)]`
-/

namespace A238605.P18276164530197948195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353479 (f1 j).toNat = 1) n)

end

end A238605.P18276164530197948195

namespace A238605

/-- `filter[A335652(n+1), A353479(#)]` -/
def P18276164530197948195.Spec : Prop :=
  ∀ n, P18276164530197948195.a n = A238605 (n + 1)

end A238605

/-! ## A238605.P15969243504728234533

`filter[A335652(n+1), A360109(#)]`
-/

namespace A238605.P15969243504728234533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360109 (f1 j).toNat = 1) n)

end

end A238605.P15969243504728234533

namespace A238605

/-- `filter[A335652(n+1), A360109(#)]` -/
def P15969243504728234533.Spec : Prop :=
  ∀ n, P15969243504728234533.a n = A238605 (n + 1)

end A238605

/-! ## A238605.P8011117482218259335

`∩[A080774(n+1), A335652(n+1)]`
-/

namespace A238605.P8011117482218259335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P8011117482218259335

namespace A238605

/-- `∩[A080774(n+1), A335652(n+1)]` -/
def P8011117482218259335.Spec : Prop :=
  ∀ n, (P8011117482218259335.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P13139304874800951865

`∩[A202237(n+1), A335652(n+1)]`
-/

namespace A238605.P13139304874800951865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P13139304874800951865

namespace A238605

/-- `∩[A202237(n+1), A335652(n+1)]` -/
def P13139304874800951865.Spec : Prop :=
  ∀ n, (P13139304874800951865.a n : ℤ) = A238605 (n + 1)

end A238605

/-! ## A238605.P15088411556834618538

`∩[A335652(n+1), A360110(n+1)]`
-/

namespace A238605.P15088411556834618538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238605.P15088411556834618538

namespace A238605

/-- `∩[A335652(n+1), A360110(n+1)]` -/
def P15088411556834618538.Spec : Prop :=
  ∀ n, (P15088411556834618538.a n : ℤ) = A238605 (n + 1)

end A238605

/-!
# A238606: Array: t(n,k) = number of partitions p of n such that the principal antidiagonal of the Ferrers matrix of p has k 1's.

The programs for A238606, there is no canonical definition to state claims against.
-/

/-! ## A238606.P17662091605825597506

`A331102(A324417(n+3))+A268193(n+1)`
-/

namespace A238606.P17662091605825597506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331102 (A324417 (n + 3)).toNat + A268193 (n + 1)

end

end A238606.P17662091605825597506

/-!
# A238607: Number of partitions p of 2n such that n - (number of parts of p) is a part of p.

The programs for A238607, there is no canonical definition to state claims against.
-/

/-! ## A238607.P9166666720834956418

`A238641(n+2)+1-A000065(n+2)`
-/

namespace A238607.P9166666720834956418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238641 (n + 2) + 1 - A000065 (n + 2)

end

end A238607.P9166666720834956418

/-!
# A238608: Number of partitions of n^3 into parts that are at most n.

The programs for A238608, there is no canonical definition to state claims against.
-/

/-! ## A238608.P8914194130711533353

`A238016(∑[n+3]+n+3)`
-/

namespace A238608.P8914194130711533353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A238608.P8914194130711533353

/-! ## A238608.P11847617658274929550

`A238016(A046691(n+2))%A054747(n+1)`
-/

namespace A238608.P11847617658274929550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238016 (A046691 (n + 2)).toNat) (A054747 (n + 1))

end

end A238608.P11847617658274929550

/-! ## A238608.P5040334008613218923

`A128854(n)+A304176(n)-A347604(n)`
-/

namespace A238608.P5040334008613218923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128854 n + (A304176 n - A347604 n)

end

end A238608.P5040334008613218923

/-!
# A238609: Number of partitions of n^4 into parts that are at most n.

The programs for A238609, there is no canonical definition to state claims against.
-/

/-! ## A238609.P1286815190708379645

`A238016(A056115(n)+10)`
-/

namespace A238609.P1286815190708379645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (A056115 n + 10).toNat

end

end A238609.P1286815190708379645

/-! ## A238609.P12442054232557943087

`A238016(eq[4, A025581(n)])`
-/

namespace A238609.P12442054232557943087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238609.P12442054232557943087

/-! ## A238609.P11897301341314123473

`A238016(eq[5, A193739(n)])`
-/

namespace A238609.P11897301341314123473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238609.P11897301341314123473

/-! ## A238609.P16173438472310198959

`A238016(eq[4, A193592(n+1)])`
-/

namespace A238609.P16173438472310198959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238609.P16173438472310198959

/-!
# A238610: Number of partitions of n^5 into parts that are at most n.

The programs for A238610, there is no canonical definition to state claims against.
-/

/-! ## A238610.P8750638345819286608

`A238016(A055999(n+3))`
-/

namespace A238610.P8750638345819286608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (A055999 (n + 3)).toNat

end

end A238610.P8750638345819286608

/-! ## A238610.P17521161130902771760

`A238016(eq[5, A025581(n)])`
-/

namespace A238610.P17521161130902771760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238610.P17521161130902771760

/-! ## A238610.P903239920188215002

`A238016(eq[6, A193739(n)])`
-/

namespace A238610.P903239920188215002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238610.P903239920188215002

/-! ## A238610.P3343320413060971328

`A238016(eq[63, A130330(n)])`
-/

namespace A238610.P3343320413060971328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238610.P3343320413060971328

/-! ## A238610.P2534343011224215734

`A238016(Δ[A026054(n+3)])`
-/

namespace A238610.P2534343011224215734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (f1 (n + 1) - f1 n).toNat

end

end A238610.P2534343011224215734

/-!
# A238611: Number of partitions of n^6 into parts that are at most n.

The programs for A238611, there is no canonical definition to state claims against.
-/

/-! ## A238611.P4782239338680150987

`A238016(eq[6, A193592(n+1)])`
-/

namespace A238611.P4782239338680150987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238611.P4782239338680150987

/-! ## A238611.P9636116074600485835

`A238016(eq[7, A004736(n+1)])`
-/

namespace A238611.P9636116074600485835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238611.P9636116074600485835

/-! ## A238611.P4181444232166315319

`A238016(Δ[A026054(n+4)]-1)`
-/

namespace A238611.P4181444232166315319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (f1 (n + 1) - f1 n - 1).toNat

end

end A238611.P4181444232166315319

/-!
# A238612: Number of partitions of n^7 into parts that are at most n.

The programs for A238612, there is no canonical definition to state claims against.
-/

/-! ## A238612.P11273112319038099776

`A238016(eq[7, A193592(n+1)])`
-/

namespace A238612.P11273112319038099776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238612.P11273112319038099776

/-! ## A238612.P8318441768185703891

`A238016(eq[8, A004736(n+1)])`
-/

namespace A238612.P8318441768185703891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238612.P8318441768185703891

/-! ## A238612.P3142239461643373234

`A238016(2*n+A000124(n+6)+6)`
-/

namespace A238612.P3142239461643373234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A238612.P3142239461643373234

/-! ## A238612.P2259714266335587918

`A238016(A000217(n+10)-A004273(n+14))`
-/

namespace A238612.P2259714266335587918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (A000217 (n + 10) - A004273 (n + 14)).toNat

end

end A238612.P2259714266335587918

/-! ## A238612.P2972950001258069089

`A238016(A161680(n+11)-A004273(n+14))`
-/

namespace A238612.P2972950001258069089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (A161680 (n + 11) - A004273 (n + 14)).toNat

end

end A238612.P2972950001258069089

/-!
# A238613: Number of partitions of n^8 into parts that are at most n.

The programs for A238613, there is no canonical definition to state claims against.
-/

/-! ## A238613.P17704921937673409718

`A238016(eq[9, A004736(n+1)])`
-/

namespace A238613.P17704921937673409718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238613.P17704921937673409718

/-!
# A238616: Number of partitions of n having standard deviation σ < 1.

The programs for A238616, there is no canonical definition to state claims against.
-/

/-! ## A238616.P16540748771489308512

`A000041(n+1)-A238620(n+1)`
-/

namespace A238616.P16540748771489308512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238620 (n + 1)

end

end A238616.P16540748771489308512

/-! ## A238616.P14456305733129923060

`A239223(∑[∑[A267043(n)]])`
-/

namespace A238616.P14456305733129923060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238616.P14456305733129923060

/-! ## A238616.P7467248263470850458

`A238617(n+1)-A238618(n+1)`
-/

namespace A238616.P7467248263470850458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (n + 1) - A238618 (n + 1)

end

end A238616.P7467248263470850458

/-! ## A238616.P920747792074009370

`A239223(A002620(n)+2-C(2, n+2))`
-/

namespace A238616.P920747792074009370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239223 (A002620 n + (2 - (Nat.choose 2 (n + 2) : ℤ))).toNat

end

end A238616.P920747792074009370

/-! ## A238616.P16995412301920181074

`A239223(A078832((n+1)²)+A002620(n))`
-/

namespace A238616.P16995412301920181074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239223 (A078832 ((n + 1) ^ 2) + A002620 n).toNat

end

end A238616.P16995412301920181074

/-! ## A238616.P16091266723835707082

`A239223(∑[A065033(n)]-A140106(n+1))`
-/

namespace A238616.P16091266723835707082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239223 (∑ j ∈ Finset.range (n + 1), f1 j - A140106 (n + 1)).toNat

end

end A238616.P16091266723835707082

/-! ## A238616.P14454264995694505428

`A239223(A002620(n+2)-A140106(2*n+1))`
-/

namespace A238616.P14454264995694505428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239223 (A002620 (n + 2) - A140106 (2 * n + 1)).toNat

end

end A238616.P14454264995694505428

/-! ## A238616.P16067448986019589801

`A238617(n+1)+A057428(n)*A238618(n+1)`
-/

namespace A238616.P16067448986019589801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (n + 1) + A057428 n * A238618 (n + 1)

end

end A238616.P16067448986019589801

/-! ## A238616.P1604808548430400502

`A238617(n+1)+-A238618(n+1)%A000009(n)`
-/

namespace A238616.P1604808548430400502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (n + 1) + Int.tmod (-A238618 (n + 1)) (A000009 n)

end

end A238616.P1604808548430400502

/-!
# A238617: Number of partitions of n having standard deviation σ <= 1.

The programs for A238617, there is no canonical definition to state claims against.
-/

/-! ## A238617.P902968378341575582

`A238618(n+1)+A238616(n+1)`
-/

namespace A238617.P902968378341575582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238618 (n + 1) + A238616 (n + 1)

end

end A238617.P902968378341575582

/-! ## A238617.P9472903182442918189

`A239223(A002620(n)+2-C(2, n+2))+A238618(n+1)`
-/

namespace A238617.P9472903182442918189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239223 (A002620 n + (2 - (Nat.choose 2 (n + 2) : ℤ))).toNat + A238618 (n + 1)

end

end A238617.P9472903182442918189

/-! ## A238617.P439125911824392773

`A239223(A078832((n+1)²)+A002620(n))+A238618(n+1)`
-/

namespace A238617.P439125911824392773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239223 (A078832 ((n + 1) ^ 2) + A002620 n).toNat + A238618 (n + 1)

end

end A238617.P439125911824392773

/-! ## A238617.P15134305185490130447

`A239223(A002620(n+2)-A140106(2*n+1))+A238618(n+1)`
-/

namespace A238617.P15134305185490130447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239223 (A002620 (n + 2) - A140106 (2 * n + 1)).toNat + A238618 (n + 1)

end

end A238617.P15134305185490130447

/-!
# A238618: Number of partitions of n having standard deviation σ = 1.

The programs for A238618, there is no canonical definition to state claims against.
-/

/-! ## A238618.P14519886296988575190

`A238617(n+1)-A238616(n+1)`
-/

namespace A238618.P14519886296988575190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (n + 1) - A238616 (n + 1)

end

end A238618.P14519886296988575190

/-! ## A238618.P6291698212587451218

`A238617(C(n+1, n))%A238616(n+1)`
-/

namespace A238618.P6291698212587451218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238617 (Nat.choose (n + 1) n)) (A238616 (n + 1))

end

end A238618.P6291698212587451218

/-! ## A238618.P6093305117862315764

`A238617(n+1)%A238616(round(Δ[n²/2]))`
-/

namespace A238618.P6093305117862315764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238617 (n + 1)) (A238616 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat)

end

end A238618.P6093305117862315764

/-! ## A238618.P1908401383039065881

`A292579(A238617(n+1)%A238616(n+1))`
-/

namespace A238618.P1908401383039065881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (Int.tmod (A238617 (n + 1)) (A238616 (n + 1))).toNat

end

end A238618.P1908401383039065881

/-! ## A238618.P2859400296148757233

`(A238617(n+1)+A000007(n))%A238616(n+1)`
-/

namespace A238618.P2859400296148757233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238617 (n + 1) + A000007 n) (A238616 (n + 1))

end

end A238618.P2859400296148757233

/-! ## A238618.P10978204153546405101

`A238617(A000027(n+1))%A000027(A238616(n+1))`
-/

namespace A238618.P10978204153546405101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238617 (A000027 (n + 1)).toNat) (A000027 (A238616 (n + 1)).toNat)

end

end A238618.P10978204153546405101

/-!
# A238619: Number of partitions of n having population standard deviation > 1.

The programs for A238619, there is no canonical definition to state claims against.
-/

/-! ## A238619.P2122017293173148352

`Δ[A000070(n)]-A238617(n+1)`
-/

namespace A238619.P2122017293173148352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238617 (n + 1)

end

end A238619.P2122017293173148352

/-! ## A238619.P1102796279113677479

`record[A035363(n)]-A238617(n+1)`
-/

namespace A238619.P1102796279113677479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238617 (n + 1)

end

end A238619.P1102796279113677479

/-! ## A238619.P14586718494123795629

`record[A035377(n)]-A238617(n+1)`
-/

namespace A238619.P14586718494123795629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238617 (n + 1)

end

end A238619.P14586718494123795629

/-! ## A238619.P12299186257556683731

`record[A035444(n)]-A238617(n+1)`
-/

namespace A238619.P12299186257556683731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238617 (n + 1)

end

end A238619.P12299186257556683731

/-! ## A238619.P15131548419567843206

`A000041(n+1)-A238617(n+1)`
-/

namespace A238619.P15131548419567843206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238617 (n + 1)

end

end A238619.P15131548419567843206

/-!
# A238620: Number of partitions of n having population standard deviation >= 1.

The programs for A238620, there is no canonical definition to state claims against.
-/

/-! ## A238620.P16260295489869343880

`A000041(n+1)-A238616(n+1)`
-/

namespace A238620.P16260295489869343880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238616 (n + 1)

end

end A238620.P16260295489869343880

/-! ## A238620.P12613761449252976395

`Δ[A000070(n)]-A238616(n+1)`
-/

namespace A238620.P12613761449252976395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238616 (n + 1)

end

end A238620.P12613761449252976395

/-! ## A238620.P10476353662772259436

`record[A035363(n)]-A238616(n+1)`
-/

namespace A238620.P10476353662772259436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238616 (n + 1)

end

end A238620.P10476353662772259436

/-! ## A238620.P15480593241490977506

`record[A035377(n)]-A238616(n+1)`
-/

namespace A238620.P15480593241490977506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238616 (n + 1)

end

end A238620.P15480593241490977506

/-! ## A238620.P6624810221631917020

`record[A035444(n)]-A238616(n+1)`
-/

namespace A238620.P6624810221631917020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238616 (n + 1)

end

end A238620.P6624810221631917020

/-!
# A238622: Number of partitions of n such that floor(n/2) or ceiling(n/2) is a part.

The programs for A238622, there is no canonical definition to state claims against.
-/

/-! ## A238622.P8207179757807904381

`A066639(n+1)+A035363(n)`
-/

namespace A238622.P8207179757807904381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066639 (n + 1) + A035363 n

end

end A238622.P8207179757807904381

/-! ## A238622.P16268122584080573425

`A066639(n+1)+A035444(2*n)`
-/

namespace A238622.P16268122584080573425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066639 (n + 1) + A035444 (2 * n)

end

end A238622.P16268122584080573425

/-! ## A238622.P7489255303388907618

`A072233(∑[or(1, n+1)])+A035363(n)`
-/

namespace A238622.P7489255303388907618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (∑ j ∈ Finset.range (n + 1), f1 j) + A035363 n

end

end A238622.P7489255303388907618

/-! ## A238622.P8416659785575874540

`A035363(n)+abs(1-Δ[A238628(n+1)])`
-/

namespace A238622.P8416659785575874540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + |1 - (f1 (n + 1) - f1 n)|

end

end A238622.P8416659785575874540

/-! ## A238622.P17436207482192588032

`A035363(n)+A000065(round((n+1)/2))+n%2`
-/

namespace A238622.P17436207482192588032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A000065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2)).toNat + ((n % 2 : ℕ) : ℤ))

end

end A238622.P17436207482192588032

/-! ## A238622.P8109900503594734615

`A035363(n)+A000041(floor(n/2)+1)-char[2*n]`
-/

namespace A238622.P8109900503594734615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A000041 (⌊(n : ℚ) / 2⌋ + 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A238622.P8109900503594734615

/-! ## A238622.P12176375385366452961

`A061199(A101881(n))+A035363(n)`
-/

namespace A238622.P12176375385366452961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A101881 n).toNat + A035363 n

end

end A238622.P12176375385366452961

/-! ## A238622.P8485830228321823645

`A000065(A027656(n))+A000041(A110654(n))`
-/

namespace A238622.P8485830228321823645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A027656 n).toNat + A000041 (A110654 n).toNat

end

end A238622.P8485830228321823645

/-! ## A238622.P10734082589713530939

`A000065(A008619(n))+A000041(A142150(n))`
-/

namespace A238622.P10734082589713530939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A008619 n).toNat + A000041 (A142150 n).toNat

end

end A238622.P10734082589713530939

/-!
# A238623: Number of partitions of n such that neither floor(n/2) nor ceiling(n/2) is a part.

The programs for A238623, there is no canonical definition to state claims against.
-/

/-! ## A238623.P7894631630271873464

`Δ[A000070(n)]-A238622(n+1)`
-/

namespace A238623.P7894631630271873464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238622 (n + 1)

end

end A238623.P7894631630271873464

/-! ## A238623.P355789790787916847

`Δ[A225751(n)]-A066639(n+1)`
-/

namespace A238623.P355789790787916847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A066639 (n + 1)

end

end A238623.P355789790787916847

/-! ## A238623.P17305242914942656077

`record[A035363(n)]-A238622(n+1)`
-/

namespace A238623.P17305242914942656077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238622 (n + 1)

end

end A238623.P17305242914942656077

/-! ## A238623.P17327470245313771381

`record[A035377(n)]-A238622(n+1)`
-/

namespace A238623.P17327470245313771381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238622 (n + 1)

end

end A238623.P17327470245313771381

/-! ## A238623.P13439909359522298078

`record[A035444(n)]-A238622(n+1)`
-/

namespace A238623.P13439909359522298078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238622 (n + 1)

end

end A238623.P13439909359522298078

/-!
# A238624: Number of partitions of n such that either both floor(n/2) and ceiling(n/2) are parts or else neither is a part.

The programs for A238624, there is no canonical definition to state claims against.
-/

/-! ## A238624.P7587414188426095697

`Δ[A225751(n)-A238629(A028310(n))]`
-/

namespace A238624.P7587414188426095697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225751 n - A238629 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238624.P7587414188426095697

/-!
# A238625: Number of partitions p of n such that 1 + (1/2)*max(p) is a part of p.

The programs for A238625, there is no canonical definition to state claims against.
-/

/-! ## A238625.P14420250065110814915

`A158388(n)+A087897(2*n)`
-/

namespace A238625.P14420250065110814915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A087897 (2 * n)

end

end A238625.P14420250065110814915

/-! ## A238625.P14979659944638313521

`A087897(2*n)-A134824(n+1)`
-/

namespace A238625.P14979659944638313521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * n) - A134824 (n + 1)

end

end A238625.P14979659944638313521

/-! ## A238625.P10205244257260512265

`A087897(2*n)-A260196(2*n)`
-/

namespace A238625.P10205244257260512265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * n) - A260196 (2 * n)

end

end A238625.P10205244257260512265

/-! ## A238625.P6002021532650306720

`A087897(2*n)+A260196(n+1)+2`
-/

namespace A238625.P6002021532650306720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * n) + (A260196 (n + 1) + 2)

end

end A238625.P6002021532650306720

/-! ## A238625.P5039357413158919586

`(A087897(2*n)+1)*A324113(2*n+3)`
-/

namespace A238625.P5039357413158919586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087897 (2 * n) + 1) * A324113 (2 * n + 3)

end

end A238625.P5039357413158919586

/-! ## A238625.P17778308673704393162

`A087897(2*n)+A016171(A123330(n))`
-/

namespace A238625.P17778308673704393162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * n) + A016171 (A123330 n).toNat

end

end A238625.P17778308673704393162

/-! ## A238625.P11509180391318533307

`A087897(2*n)-A008836(A006530(n+1))`
-/

namespace A238625.P11509180391318533307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * n) - A008836 (A006530 (n + 1)).toNat

end

end A238625.P11509180391318533307

/-! ## A238625.P44808383496442075

`A087897(2*n)-A008683(A039635(n+1))`
-/

namespace A238625.P44808383496442075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * n) - A008683 (A039635 (n + 1)).toNat

end

end A238625.P44808383496442075

/-! ## A238625.P11494402257757910817

`(A134824(2*n)-A087897(2*n))*A134824(2*n)`
-/

namespace A238625.P11494402257757910817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134824 (2 * n) - A087897 (2 * n)) * A134824 (2 * n)

end

end A238625.P11494402257757910817

/-!
# A238626: Number of partitions p of n such that max(p) - 2*min(p) is a part of p.

The programs for A238626, there is no canonical definition to state claims against.
-/

/-! ## A238626.P5455345446449890514

`A248333(record[A184198(n)+A023532(n)])`
-/

namespace A238626.P5455345446449890514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 n + A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238626.P5455345446449890514

/-! ## A238626.P10294977794902390341

`A003106(2*n)-A055640(A214825(n))`
-/

namespace A238626.P10294977794902390341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (2 * n) - A055640 (A214825 n).toNat

end

end A238626.P10294977794902390341

/-! ## A238626.P9764967708908430681

`A391233(2*n+3)+A010815(A056578(n+1))`
-/

namespace A238626.P9764967708908430681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391233 (2 * n + 3) + A010815 (A056578 (n + 1)).toNat

end

end A238626.P9764967708908430681

/-!
# A238627: Number of partitions p of n such that max(p) - 3*min(p) is a part of p.

The programs for A238627, there is no canonical definition to state claims against.
-/

/-! ## A238627.P8228676875370192711

`A320278(∑[A320286(n)-A320272(n+1)])`
-/

namespace A238627.P8228676875370192711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320286 n - A320272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238627.P8228676875370192711

/-!
# A238628: Number of partitions p of n such that n - max(p) is a part of p.

The programs for A238628, there is no canonical definition to state claims against.
-/

/-! ## A238628.P2955377563693400522

`floor(Δ[A025065(n)]+n/2)`
-/

namespace A238628.P2955377563693400522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) + (n : ℚ) / 2⌋

end

end A238628.P2955377563693400522

/-! ## A238628.P11116390074554844152

`floor(A035363(n+1)+n/2)`
-/

namespace A238628.P11116390074554844152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035363 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A238628.P11116390074554844152

/-! ## A238628.P6506689869223190829

`floor(A103919(∑[n+1])+n/2)`
-/

namespace A238628.P6506689869223190829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103919 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (n : ℚ) / 2⌋

end

end A238628.P6506689869223190829

/-! ## A238628.P8168436420707761607

`∑[Δ[A035363(n)]+(n+1)%2]`
-/

namespace A238628.P8168436420707761607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238628.P8168436420707761607

/-! ## A238628.P7006827816993953056

`Δ[A100824(or(1, n))]+floor(n/2)`
-/

namespace A238628.P7006827816993953056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊(n : ℚ) / 2⌋

end

end A238628.P7006827816993953056

/-! ## A238628.P11002722241742299643

`Δ[A100835(or(1, n))]+floor(n/2)`
-/

namespace A238628.P11002722241742299643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100835 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊(n : ℚ) / 2⌋

end

end A238628.P11002722241742299643

/-! ## A238628.P7137963648280987823

`A035444(2*(n+1))+floor(n/2)`
-/

namespace A238628.P7137963648280987823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * (n + 1)) + ⌊(n : ℚ) / 2⌋

end

end A238628.P7137963648280987823

/-! ## A238628.P279733820200874038

`A004526(n)+Δ[A025065(n)]`
-/

namespace A238628.P279733820200874038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (f1 (n + 1) - f1 n)

end

end A238628.P279733820200874038

/-! ## A238628.P8431193754190110410

`A035363(n+1)+A004526(n)`
-/

namespace A238628.P8431193754190110410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) + A004526 n

end

end A238628.P8431193754190110410

/-! ## A238628.P16466451448569959536

`A002265(2*n)+Δ[A025065(n)]`
-/

namespace A238628.P16466451448569959536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n) + (f1 (n + 1) - f1 n)

end

end A238628.P16466451448569959536

/-!
# A238629: Number of partitions p of n such that n - 2*(number of parts of p) is a part of p.

The programs for A238629, there is no canonical definition to state claims against.
-/

/-! ## A238629.P16178659442806251874

`∑[A035363(n+2)]-A109613(n)`
-/

namespace A238629.P16178659442806251874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109613 n

end

end A238629.P16178659442806251874

/-! ## A238629.P10957584630499173390

`A058682(A008619(n))-A004526(n)`
-/

namespace A238629.P10957584630499173390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (A008619 n).toNat - A004526 n

end

end A238629.P10957584630499173390

/-! ## A238629.P13033946653725642409

`A026905(A008619(n))-A109613(n)`
-/

namespace A238629.P13033946653725642409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (A008619 n).toNat - A109613 n

end

end A238629.P13033946653725642409

/-! ## A238629.P16515658633835210390

`A058682(A004526(n)+1)-A004526(n)`
-/

namespace A238629.P16515658633835210390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (A004526 n + 1).toNat - A004526 n

end

end A238629.P16515658633835210390

/-! ## A238629.P8349442439197921201

`A025065(n+2)-A005843(A008619(n))`
-/

namespace A238629.P8349442439197921201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (n + 2) - A005843 (A008619 n).toNat

end

end A238629.P8349442439197921201

/-! ## A238629.P7305415296083104659

`A025065(n+2)-A005843(A123108(n+2))`
-/

namespace A238629.P7305415296083104659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (n + 2) - A005843 (A123108 (n + 2)).toNat

end

end A238629.P7305415296083104659

/-! ## A238629.P10940657370850856048

`A025065(n+2)-(A065033(n+1)+A065033(n+1))`
-/

namespace A238629.P10940657370850856048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (n + 2) - (A065033 (n + 1) + A065033 (n + 1))

end

end A238629.P10940657370850856048

/-! ## A238629.P8315144529661493015

`eq[1, A117506(n+1)]-n`
-/

namespace A238629.P8315144529661493015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A238629.P8315144529661493015

/-! ## A238629.P17086894226901657319

`eq[1, A036040(n+1)]-n`
-/

namespace A238629.P17086894226901657319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A238629.P17086894226901657319

/-!
# A238630: Number of partitions of 3^n into parts that are at most 3.

The programs for A238630, the canonical program `A238630.P10529200024699329487` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238630 has offset 0).

The definition of A238630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238630.P10529200024699329487

`round((3^n+3)²/12)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238630

/-- `round((3^n+3)²/12)` -/
def P10529200024699329487.Spec : Prop :=
  ∀ n, P10529200024699329487.a n = A238630 n

theorem P10529200024699329487.correct : P10529200024699329487.Spec := by
  intro n
  simp only [A238630]

end A238630

/-! ## A238630.P15322693253027442976

`A001399(3^n)`
-/

namespace A238630.P15322693253027442976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (3 ^ n)

end

end A238630.P15322693253027442976

namespace A238630

/-- `A001399(3^n)` -/
def P15322693253027442976.Spec : Prop :=
  ∀ n, P15322693253027442976.a n = A238630 n

end A238630

/-! ## A238630.P9430951131734841194

`floor(∑[3*a(n-1)]²/3)` with `a(0)=2, a(1)=1`
-/

namespace A238630.P9430951131734841194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 3⌋

end

end A238630.P9430951131734841194

namespace A238630

/-- `floor(∑[3*a(n-1)]²/3)` -/
def P9430951131734841194.Spec : Prop :=
  ∀ n, P9430951131734841194.a n = A238630 n

end A238630

/-! ## A238630.P357256990590373449

`floor(A115098(n)²/3)`
-/

namespace A238630.P357256990590373449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115098 n ^ 2 : ℚ) / 3⌋

end

end A238630.P357256990590373449

namespace A238630

/-- `floor(A115098(n)²/3)` -/
def P357256990590373449.Spec : Prop :=
  ∀ n, P357256990590373449.a n = A238630 n

end A238630

/-! ## A238630.P12800841146726570939

`A117220(A022330(n))`
-/

namespace A238630.P12800841146726570939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117220 (A022330 n).toNat

end

end A238630.P12800841146726570939

namespace A238630

/-- `A117220(A022330(n))` -/
def P12800841146726570939.Spec : Prop :=
  ∀ n, P12800841146726570939.a n = A238630 n

end A238630

/-! ## A238630.P10714940621722818130

`A117220(∑[A020914(n)])`
-/

namespace A238630.P10714940621722818130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117220 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238630.P10714940621722818130

namespace A238630

/-- `A117220(∑[A020914(n)])` -/
def P10714940621722818130.Spec : Prop :=
  ∀ n, P10714940621722818130.a n = A238630 n

end A238630

/-! ## A238630.P8881885896569229146

`A124302(n)²*A122553(n)`
-/

namespace A238630.P8881885896569229146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n ^ 2 * A122553 n

end

end A238630.P8881885896569229146

namespace A238630

/-- `A124302(n)²*A122553(n)` -/
def P8881885896569229146.Spec : Prop :=
  ∀ n, P8881885896569229146.a n = A238630 n

end A238630

/-! ## A238630.P13577466536060281059

`A094388(n)/2*A115098(n)`
-/

namespace A238630.P13577466536060281059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094388 n : ℚ) / 2 * (A115098 n : ℚ)

end

end A238630.P13577466536060281059

namespace A238630

/-- `A094388(n)/2*A115098(n)` -/
def P13577466536060281059.Spec : Prop :=
  ∀ n, P13577466536060281059.a n = (A238630 n : ℚ)

end A238630

/-! ## A238630.P10313819385291837720

`A001998(2*n)+1-A124302(2*n)`
-/

namespace A238630.P10313819385291837720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 (2 * n) + (1 - A124302 (2 * n))

end

end A238630.P10313819385291837720

namespace A238630

/-- `A001998(2*n)+1-A124302(2*n)` -/
def P10313819385291837720.Spec : Prop :=
  ∀ n, P10313819385291837720.a n = A238630 n

end A238630

/-! ## A238630.P3949985409174918547

`A015518(A004273(n))+A007051(n)`
-/

namespace A238630.P3949985409174918547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (A004273 n).toNat + A007051 n

end

end A238630.P3949985409174918547

namespace A238630

/-- `A015518(A004273(n))+A007051(n)` -/
def P3949985409174918547.Spec : Prop :=
  ∀ n, P3949985409174918547.a n = A238630 n

end A238630

/-! ## A238630.P4474611308204136944

`∑[A154992(A004273(n))+A094388(n)]`
-/

namespace A238630.P4474611308204136944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (A004273 n).toNat + A094388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238630.P4474611308204136944

namespace A238630

/-- `∑[A154992(A004273(n))+A094388(n)]` -/
def P4474611308204136944.Spec : Prop :=
  ∀ n, P4474611308204136944.a n = A238630 n

end A238630

/-!
# A238631: Number of partitions of 4^n into parts that are at most 4.

The programs for A238631, there is no canonical definition to state claims against.
-/

/-! ## A238631.P9370557900436799049

`A274100(2*n)`
-/

namespace A238631.P9370557900436799049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274100 (2 * n)

end

end A238631.P9370557900436799049

/-! ## A238631.P6791153131942354730

`record[A274100(n)/(-1)^n]`
-/

namespace A238631.P6791153131942354730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274100 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238631.P6791153131942354730

/-! ## A238631.P7597730020963259497

`or(A000007(n), A274100(A005843(n)))`
-/

namespace A238631.P7597730020963259497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A274100 (A005843 n).toNat)

end

end A238631.P7597730020963259497

/-! ## A238631.P884871962328701760

`A274100(A005843(n))+char[A151745(n+1)]`
-/

namespace A238631.P884871962328701760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274100 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A238631.P884871962328701760

/-! ## A238631.P15016581902195336193

`A274100(A005843(n))+char[A252361(n+1)]`
-/

namespace A238631.P15016581902195336193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252361 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274100 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A238631.P15016581902195336193

/-! ## A238631.P5523424290029338170

`A274100(A005843(n))+char[A252364(n+1)]`
-/

namespace A238631.P5523424290029338170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252364 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274100 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A238631.P5523424290029338170

/-! ## A238631.P3030385242343961383

`A274100(A005843(n))+char[A252365(n+1)]`
-/

namespace A238631.P3030385242343961383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252365 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274100 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A238631.P3030385242343961383

/-! ## A238631.P11453174690824269748

`A274100(A005843(n))+char[A252369(n+1)]`
-/

namespace A238631.P11453174690824269748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274100 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A238631.P11453174690824269748

/-!
# A238632: Number of partitions of 5^n into parts that are at most 5.

The programs for A238632, there is no canonical definition to state claims against.
-/

/-! ## A238632.P14805151135107584697

`A238016(A167499(n+4))`
-/

namespace A238632.P14805151135107584697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (A167499 (n + 4)).toNat

end

end A238632.P14805151135107584697

/-! ## A238632.P11268641475395763538

`A238016(eq[5, A002262(n)])`
-/

namespace A238632.P11268641475395763538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238632.P11268641475395763538

/-! ## A238632.P8559722255277874018

`A238016(eq[5, A133233(n)])`
-/

namespace A238632.P8559722255277874018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238632.P8559722255277874018

/-! ## A238632.P2914839513567482123

`A238016(eq[32, A059268(n)])`
-/

namespace A238632.P2914839513567482123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238632.P2914839513567482123

/-! ## A238632.P17944128342672646645

`A238016(eq[6, A002260(n+1)])`
-/

namespace A238632.P17944128342672646645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238632.P17944128342672646645

/-!
# A238633: Number of partitions of 6^n into parts that are at most 6.

The programs for A238633, there is no canonical definition to state claims against.
-/

/-! ## A238633.P18151065554977033574

`A238016(eq[6, A002262(n)])`
-/

namespace A238633.P18151065554977033574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238633.P18151065554977033574

/-! ## A238633.P2999782126956176417

`A238016(eq[7, A135223(n+1)])`
-/

namespace A238633.P2999782126956176417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238633.P2999782126956176417

/-! ## A238633.P9881570597430387224

`A238016(A000124(n+6)+6-A057427(n))`
-/

namespace A238633.P9881570597430387224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (A000124 (n + 6) + 6 - A057427 n).toNat

end

end A238633.P9881570597430387224

/-!
# A238634: Number of partitions of 7^n into parts that are at most 7.

The programs for A238634, there is no canonical definition to state claims against.
-/

/-! ## A238634.P7594431320883895848

`A238016(eq[7, A002262(n)])`
-/

namespace A238634.P7594431320883895848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238634.P7594431320883895848

/-! ## A238634.P8184541700311348534

`A238016(A000096(n+6)+8)`
-/

namespace A238634.P8184541700311348534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (A000096 (n + 6) + 8).toNat

end

end A238634.P8184541700311348534

/-!
# A238636: 

The programs for A238636, there is no canonical definition to state claims against.
-/

/-! ## A238636.P15614139762689141016

`A238016(eq[9, A002262(n)])`
-/

namespace A238636.P15614139762689141016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238636.P15614139762689141016

/-!
# A238637: 

The programs for A238637, there is no canonical definition to state claims against.
-/

/-! ## A238637.P5617818633567779597

`A238016(eq[10, A002262(n)])`
-/

namespace A238637.P5617818633567779597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238637.P5617818633567779597

/-!
# A238638: Position of n-th row of Pascal's triangle in Mathematica-ordered list of partitions of 2^n.

The programs for A238638, there is no canonical definition to state claims against.
-/

/-! ## A238638.P18138174436854640209

`A071501((2*n)^n)`
-/

namespace A238638.P18138174436854640209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071501 ((2 * n) ^ n)

end

end A238638.P18138174436854640209

/-!
# A238639: Position of [n, n-1, ..., 2, 1] in Mathematica-ordered list of partitions of n(n+1)/2.

The programs for A238639, there is no canonical definition to state claims against.
-/

/-! ## A238639.P15378861624087375275

`ceil(A019503(n+1)/3)`
-/

namespace A238639.P15378861624087375275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019503 (n + 1) : ℚ) / 3⌉

end

end A238639.P15378861624087375275

/-! ## A238639.P260670120398893160

`A138995(A019503(n+1))`
-/

namespace A238639.P260670120398893160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138995 (A019503 (n + 1)).toNat

end

end A238639.P260670120398893160

/-! ## A238639.P1785315720864471196

`A189671(A019503(n+1)+1)`
-/

namespace A238639.P1785315720864471196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A019503 (n + 1) + 1).toNat

end

end A238639.P1785315720864471196

/-!
# A238640: Position of [n, n, ..., n] (n n's) in Mathematica-ordered list of partitions of n^2.

The programs for A238640, there is no canonical definition to state claims against.
-/

/-! ## A238640.P1372345703743172965

`A072213(n)+1-A206226(n)`
-/

namespace A238640.P1372345703743172965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072213 n + (1 - A206226 n)

end

end A238640.P1372345703743172965

/-! ## A238640.P12207278175416854283

`A347585(n)+1-A206240(n)`
-/

namespace A238640.P12207278175416854283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347585 n + (1 - A206240 n)

end

end A238640.P12207278175416854283

/-! ## A238640.P321212163868348079

`A000041(n²)+1-A206226(n)`
-/

namespace A238640.P321212163868348079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ 2) + 1 - A206226 n

end

end A238640.P321212163868348079

/-! ## A238640.P927789711494013785

`A133041(n²)-n²+1-A206226(n)`
-/

namespace A238640.P927789711494013785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (n ^ 2) - (n ^ 2 : ℤ) + 1 - A206226 n

end

end A238640.P927789711494013785

/-! ## A238640.P10131108860956738214

`A000041(∑[2*n+1]-(2*n+1))+C(2, n+3)+1-A206226(n)`
-/

namespace A238640.P10131108860956738214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1)) + (Nat.choose 2 (n + 3) : ℤ) + 1 - A206226 n

end

end A238640.P10131108860956738214

/-! ## A238640.P16368408390696110771

`abs(A033999(n))-(A206240(n)-A347585(n))`
-/

namespace A238640.P16368408390696110771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| - (A206240 n - A347585 n)

end

end A238640.P16368408390696110771

/-! ## A238640.P12871330771251889551

`A000034(2*n)-(A206240(n)-A347585(n))`
-/

namespace A238640.P12871330771251889551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) - (A206240 n - A347585 n)

end

end A238640.P12871330771251889551

/-! ## A238640.P16906623012742782938

`A033999(2*n)-(A206240(n)-A347585(n))`
-/

namespace A238640.P16906623012742782938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) - (A206240 n - A347585 n)

end

end A238640.P16906623012742782938

/-! ## A238640.P6126477619799929476

`A001222(A051697(n))-(A206240(n)-A347585(n))`
-/

namespace A238640.P6126477619799929476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051697 n).toNat - (A206240 n - A347585 n)

end

end A238640.P6126477619799929476

/-! ## A238640.P10407269088741481965

`A001222(A051698(n))-(A206240(n)-A347585(n))`
-/

namespace A238640.P10407269088741481965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051698 n).toNat - (A206240 n - A347585 n)

end

end A238640.P10407269088741481965

/-!
# A238641: Number of partitions p of 2n-1 such that n - (number of parts of p) is a part of p.

The programs for A238641, there is no canonical definition to state claims against.
-/

/-! ## A238641.P16508686952449565338

`A196087(n+1)-A000065(n+1)`
-/

namespace A238641.P16508686952449565338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) - A000065 (n + 1)

end

end A238641.P16508686952449565338

/-! ## A238641.P14150088096125273674

`A196087(n+1)+1-Δ[A000070(n)]`
-/

namespace A238641.P14150088096125273674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A238641.P14150088096125273674

/-! ## A238641.P3209890600966609259

`A196087(n+1)+1-record[A035363(n)]`
-/

namespace A238641.P3209890600966609259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + (1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238641.P3209890600966609259

/-! ## A238641.P7919833820057269053

`A196087(n+1)+1-record[A035444(n)]`
-/

namespace A238641.P7919833820057269053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + (1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238641.P7919833820057269053

/-! ## A238641.P1468976549974848331

`A196087(n+1)+1-record[A114099(n)]`
-/

namespace A238641.P1468976549974848331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + (1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238641.P1468976549974848331

/-! ## A238641.P9405565956444904214

`A066186(n+1)+1-A093694(n+1)`
-/

namespace A238641.P9405565956444904214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (1 - A093694 (n + 1))

end

end A238641.P9405565956444904214

/-! ## A238641.P8393116325230158166

`A182724(n+1)+1-A006128(n+1)`
-/

namespace A238641.P8393116325230158166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182724 (n + 1) + (1 - A006128 (n + 1))

end

end A238641.P8393116325230158166

/-! ## A238641.P6346426968874937548

`A196087(n+1)+1-A000041(n+1)`
-/

namespace A238641.P6346426968874937548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + (1 - A000041 (n + 1))

end

end A238641.P6346426968874937548

/-! ## A238641.P6368754884689050373

`A196087(n+1)+1-∑[A187219(n+1)]`
-/

namespace A238641.P6368754884689050373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238641.P6368754884689050373

/-! ## A238641.P5926411586854457298

`n*A000041(n+1)+1-A006128(n+1)`
-/

namespace A238641.P5926411586854457298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 (n + 1) + (1 - A006128 (n + 1))

end

end A238641.P5926411586854457298

/-! ## A238641.P4782273338357392782

`A066186(n+1)-(A006128(n+1)+A000065(n+1))`
-/

namespace A238641.P4782273338357392782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A006128 (n + 1) + A000065 (n + 1))

end

end A238641.P4782273338357392782

/-! ## A238641.P8497140458793587215

`A161224(∑[n+1])-A000065(n+1)`
-/

namespace A238641.P8497140458793587215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161224 (∑ j ∈ Finset.range (n + 1), f1 j) - A000065 (n + 1)

end

end A238641.P8497140458793587215

/-! ## A238641.P9479732775906384621

`A196087(n+1)-∑[A116598(∑[n+1])]`
-/

namespace A238641.P9479732775906384621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238641.P9479732775906384621

/-! ## A238641.P14678006020624244160

`A161224(∑[n+1])+1-A000041(n+1)`
-/

namespace A238641.P14678006020624244160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161224 (∑ j ∈ Finset.range (n + 1), f1 j) + (1 - A000041 (n + 1))

end

end A238641.P14678006020624244160

/-!
# A238642: a(n) = n if n+1 is prime; otherwise, a(n) = n * (smallest prime factor of n+1).

The programs for A238642, there is no canonical definition to state claims against.
-/

/-! ## A238642.P2777502165815799922

`(n+1)*A107286(n+2)`
-/

namespace A238642.P2777502165815799922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A107286 (n + 2)

end

end A238642.P2777502165815799922

/-! ## A238642.P16919587890131838027

`(n+1)*(A057237(n+2)%(n+1)+1)`
-/

namespace A238642.P16919587890131838027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (Int.tmod (A057237 (n + 2)) (n + 1 : ℤ) + 1)

end

end A238642.P16919587890131838027

/-! ## A238642.P13484285691755698139

`(n+1)*A020639(A181569(n+1))`
-/

namespace A238642.P13484285691755698139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (A181569 (n + 1)).toNat

end

end A238642.P13484285691755698139

/-! ## A238642.P9573881822619948904

`(n+1)*A020639((n+2)/A006530(n+2))`
-/

namespace A238642.P9573881822619948904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A006530 (n + 2) : ℚ))).toNat

end

end A238642.P9573881822619948904

/-! ## A238642.P9717923053404747157

`(n+1)*(n+2)/A117818(n+2)`
-/

namespace A238642.P9717923053404747157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) / (A117818 (n + 2) : ℚ))

end

end A238642.P9717923053404747157

/-! ## A238642.P13647327068239664483

`(n+1)*A020639(A048671(n+2))`
-/

namespace A238642.P13647327068239664483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (A048671 (n + 2)).toNat

end

end A238642.P13647327068239664483

/-! ## A238642.P10690679318040189473

`(n+1)*A020639(A052126(n+2))`
-/

namespace A238642.P10690679318040189473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (A052126 (n + 2)).toNat

end

end A238642.P10690679318040189473

/-! ## A238642.P3749962856097352263

`(n+1)*A028310(A063918(n+2))`
-/

namespace A238642.P3749962856097352263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028310 (A063918 (n + 2)).toNat

end

end A238642.P3749962856097352263

/-! ## A238642.P283032413572090203

`A020639(A072504(n+2))*(n+1)`
-/

namespace A238642.P283032413572090203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072504 (n + 2)).toNat * (n + 1 : ℤ)

end

end A238642.P283032413572090203

/-! ## A238642.P10073251515949007620

`(n+1)*A020639((n+2)/A014963(n+2))`
-/

namespace A238642.P10073251515949007620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A014963 (n + 2) : ℚ))).toNat

end

end A238642.P10073251515949007620

/-! ## A238642.P9158767311107033587

`(n+1)/A032742(n+2)*A005451(n+2)`
-/

namespace A238642.P9158767311107033587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 2) : ℚ) * (A005451 (n + 2) : ℚ)

end

end A238642.P9158767311107033587

/-! ## A238642.P17691909926081002868

`(n+1)*A079868(A033676(A068794(n+2)))`
-/

namespace A238642.P17691909926081002868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079868 (A033676 (A068794 (n + 2)).toNat).toNat

end

end A238642.P17691909926081002868

/-! ## A238642.P16444124705958864511

`(n+1)*A020639(∏{p}[n+2, (n+2)/#])`
-/

namespace A238642.P16444124705958864511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 2 : ℚ) / (p : ℚ))).toNat

end

end A238642.P16444124705958864511

/-!
# A238644: Number of binary words on {H,T} that end in THTH but do not contain the contiguous subsequence HTHH.

The programs for A238644, there is no canonical definition to state claims against.
-/

/-! ## A238644.P14900567550159527094

`ceil(A001462(A292555(n))/2)-1`
-/

namespace A238644.P14900567550159527094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001462 (A292555 n).toNat : ℚ) / 2⌉ - 1

end

end A238644.P14900567550159527094

/-! ## A238644.P8047274181521251912

`A172471(floor(A034008(2*n+3)/A086499(2*n+1)))`
-/

namespace A238644.P8047274181521251912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ⌊(A034008 (2 * n + 3) : ℚ) / (A086499 (2 * n + 1) : ℚ)⌋.toNat

end

end A238644.P8047274181521251912

/-! ## A238644.P1044164834310102001

`A085141(A005355(n))`
-/

namespace A238644.P1044164834310102001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A005355 n).toNat

end

end A238644.P1044164834310102001

/-! ## A238644.P7298408180224618321

`A000194(A238212(∑[n]))`
-/

namespace A238644.P7298408180224618321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A238212 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A238644.P7298408180224618321

/-! ## A238644.P15460174325052732674

`A135665(A068598(2*(n+1))+1)`
-/

namespace A238644.P15460174325052732674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A068598 (2 * (n + 1)) + 1).toNat

end

end A238644.P15460174325052732674

/-!
# A238645: Number of odd primes p < 2*n such that the number of squarefree numbers among 1, ..., ((p-1)/2)*n is prime.

The programs for A238645, there is no canonical definition to state claims against.
-/

/-! ## A238645.P12513550878339877409

`A001221(and(A116803(n+1), A147745(n+1)))`
-/

namespace A238645.P12513550878339877409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.land (A116803 (n + 1)) (A147745 (n + 1))).toNat

end

end A238645.P12513550878339877409

/-! ## A238645.P17803862828937127269

`∑{e}[A174800(n)+A148279(n), #]`
-/

namespace A238645.P17803862828937127269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174800 n + A148279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A238645.P17803862828937127269

/-! ## A238645.P15931594918185906364

`A001222(floor(sqrt(A018018(2*n+1))))`
-/

namespace A238645.P15931594918185906364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.sqrt (A018018 (2 * n + 1))).toNat

end

end A238645.P15931594918185906364

/-! ## A238645.P3736842665383325490

`A001222(floor(sqrt(A018019(2*n+1))))`
-/

namespace A238645.P3736842665383325490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.sqrt (A018019 (2 * n + 1))).toNat

end

end A238645.P3736842665383325490

/-! ## A238645.P641496759707577903

`A053574(A283406(n)+A008574(n))`
-/

namespace A238645.P641496759707577903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (A283406 n + A008574 n).toNat

end

end A238645.P641496759707577903

/-!
# A238646: Number of primes p < n such that the number of squarefree numbers among 1, ..., n-p is prime.

The programs for A238646, there is no canonical definition to state claims against.
-/

/-! ## A238646.P15462262887622068252

`A072491(A063656(A178455(n)))`
-/

namespace A238646.P15462262887622068252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A063656 (A178455 n).toNat).toNat

end

end A238646.P15462262887622068252

/-! ## A238646.P17755878809121330866

`A001221(A286098(A243087(n)))`
-/

namespace A238646.P17755878809121330866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A286098 (A243087 n).toNat).toNat

end

end A238646.P17755878809121330866

/-! ## A238646.P1086528425583086464

`A031346(A014430(∑[A030057(n+1)]))`
-/

namespace A238646.P1086528425583086464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A014430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A238646.P1086528425583086464

/-! ## A238646.P14814205843122573545

`∑{p}[A286098(A243087(n)), -A008683(#)]`
-/

namespace A238646.P14814205843122573545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 (A243087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (-A008683 p)

end

end A238646.P14814205843122573545

/-! ## A238646.P10305505254336689105

`A001221(C(A108917(n), A183025(n+1)))`
-/

namespace A238646.P10305505254336689105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A108917 n).toNat (A183025 (n + 1)).toNat)

end

end A238646.P10305505254336689105

/-!
# A238648: Number of (n+2) X (n+2) 0..1 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A238648, there is no canonical definition to state claims against.
-/

/-! ## A238648.P1398962869699380012

`A238654(∑[4*n]+1)`
-/

namespace A238648.P1398962869699380012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238648.P1398962869699380012

/-! ## A238648.P2218927818428153511

`record[A238654(A330613(n+1))]`
-/

namespace A238648.P2218927818428153511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238648.P2218927818428153511

/-! ## A238648.P13604554050640248197

`record[A003982(n)*A238654(n+1)]`
-/

namespace A238648.P13604554050640248197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A238654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238648.P13604554050640248197

/-! ## A238648.P13899719453151236392

`record[gcd(A003987(n), A238654(n+1))]`
-/

namespace A238648.P13899719453151236392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A238654 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238648.P13899719453151236392

/-! ## A238648.P1923206214214953161

`A014963(30*(n+1))*A238654(A001844(n))`
-/

namespace A238648.P1923206214214953161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (30 * (n + 1)) * A238654 (A001844 n).toNat

end

end A238648.P1923206214214953161

/-!
# A238649: Number of (n+2) X (3+2) 0..1 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A238649, the canonical program `A238649.P8158536791834749420` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238649 has offset 1).

The definition of A238649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238649.P8158536791834749420

`2*a(n-1)+5*a(n-2)-a(n-4)` with `a(0)=3, a(1)=18, a(2)=51, a(3)=189`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238649

/-- `2*a(n-1)+5*a(n-2)-a(n-4)` -/
def P8158536791834749420.Spec : Prop :=
  ∀ n, P8158536791834749420.a n = A238649 (n + 1)

theorem P8158536791834749420.correct : P8158536791834749420.Spec := by
  intro n
  simp only [A238649, Nat.add_sub_cancel]

end A238649

/-! ## A238649.P16194784557993207464

`A060521(n+1)/2`
-/

namespace A238649.P16194784557993207464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060521 (n + 1) : ℚ) / 2

end

end A238649.P16194784557993207464

namespace A238649

/-- `A060521(n+1)/2` -/
def P16194784557993207464.Spec : Prop :=
  ∀ n, P16194784557993207464.a n = (A238649 (n + 1) : ℚ)

end A238649

/-! ## A238649.P18420439509914005228

`A208287(A167614(n+1))/2`
-/

namespace A238649.P18420439509914005228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208287 (A167614 (n + 1)).toNat : ℚ) / 2

end

end A238649.P18420439509914005228

namespace A238649

/-- `A208287(A167614(n+1))/2` -/
def P18420439509914005228.Spec : Prop :=
  ∀ n, P18420439509914005228.a n = (A238649 (n + 1) : ℚ)

end A238649

/-! ## A238649.P11263874843363146623

`A208287(A167499(n)+n)/2`
-/

namespace A238649.P11263874843363146623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208287 (A167499 n + (n : ℤ)).toNat : ℚ) / 2

end

end A238649.P11263874843363146623

namespace A238649

/-- `A208287(A167499(n)+n)/2` -/
def P11263874843363146623.Spec : Prop :=
  ∀ n, P11263874843363146623.a n = (A238649 (n + 1) : ℚ)

end A238649

/-! ## A238649.P9690288184760544650

`A208420(A167499(n)+n)/2`
-/

namespace A238649.P9690288184760544650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208420 (A167499 n + (n : ℤ)).toNat : ℚ) / 2

end

end A238649.P9690288184760544650

namespace A238649

/-- `A208420(A167499(n)+n)/2` -/
def P9690288184760544650.Spec : Prop :=
  ∀ n, P9690288184760544650.a n = (A238649 (n + 1) : ℚ)

end A238649

/-!
# A238650: Number of (n+2)X(4+2) 0..1 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A238650, there is no canonical definition to state claims against.
-/

/-! ## A238650.P12997370252417617651

`A060522(n+1)/2`
-/

namespace A238650.P12997370252417617651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060522 (n + 1) : ℚ) / 2

end

end A238650.P12997370252417617651

/-! ## A238650.P6588010069655689963

`round(A060522(A008619(2*n))/2)`
-/

namespace A238650.P6588010069655689963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A060522 (A008619 (2 * n)).toNat : ℚ) / 2)

end

end A238650.P6588010069655689963

/-! ## A238650.P3127853465839244774

`ceil(A060522(A008619(4*n/2))/2)`
-/

namespace A238650.P3127853465839244774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060522 (A008619 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 2))).toNat).toNat : ℚ) / 2⌉

end

end A238650.P3127853465839244774

/-! ## A238650.P9571130174906271330

`or(A060522(A008619(2*n))/2, A000007(n))`
-/

namespace A238650.P9571130174906271330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A060522 (A008619 (2 * n)).toNat : ℚ) / 2)) (A000007 n)

end

end A238650.P9571130174906271330

/-! ## A238650.P175969046441418665

`A060522(A008619(2*n))/2*A008683(C(n, n²)!)`
-/

namespace A238650.P175969046441418665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060522 (A008619 (2 * n)).toNat : ℚ) / 2 * (A008683 (Nat.factorial (Nat.choose n (n ^ 2))) : ℚ)

end

end A238650.P175969046441418665

/-!
# A238651: Number of (n+2)X(5+2) 0..1 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A238651, there is no canonical definition to state claims against.
-/

/-! ## A238651.P995468505741666963

`A238654(A056000(n)+15)`
-/

namespace A238651.P995468505741666963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A056000 n + 15).toNat

end

end A238651.P995468505741666963

/-! ## A238651.P17904999735337236640

`A238654(A000217(n+4)+5)`
-/

namespace A238651.P17904999735337236640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A000217 (n + 4) + 5).toNat

end

end A238651.P17904999735337236640

/-! ## A238651.P12856256955128439578

`A238654(A027379(n+2)+8)`
-/

namespace A238651.P12856256955128439578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A027379 (n + 2) + 8).toNat

end

end A238651.P12856256955128439578

/-! ## A238651.P3338765861952219303

`A238654(A034856(n+4)-(n-2))`
-/

namespace A238651.P3338765861952219303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A034856 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A238651.P3338765861952219303

/-! ## A238651.P17200067874925587969

`A238654((n+3)²+6-A000096(n))`
-/

namespace A238651.P17200067874925587969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (((n + 3) ^ 2 + 6 : ℤ) - A000096 n).toNat

end

end A238651.P17200067874925587969

/-!
# A238652: Number of (n+2)X(6+2) 0..1 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A238652, there is no canonical definition to state claims against.
-/

/-! ## A238652.P3596075137701096450

`A238654(eq[7, A131818(n+1)])`
-/

namespace A238652.P3596075137701096450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238652.P3596075137701096450

/-! ## A238652.P18417801342196534769

`A238654(A000124(n+6)-(n+1))`
-/

namespace A238652.P18417801342196534769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A238652.P18417801342196534769

/-! ## A238652.P9342063444578650789

`A238654(A374007(n+1))`
-/

namespace A238652.P9342063444578650789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A374007 (n + 1)).toNat

end

end A238652.P9342063444578650789

/-! ## A238652.P13677382883328355363

`A238654(A052905(n+3))`
-/

namespace A238652.P13677382883328355363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A052905 (n + 3)).toNat

end

end A238652.P13677382883328355363

/-! ## A238652.P1416452155291406198

`A238654(eq[3, A219347(n)])`
-/

namespace A238652.P1416452155291406198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238652.P1416452155291406198

/-!
# A238653: Number of (n+2)X(7+2) 0..1 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A238653, there is no canonical definition to state claims against.
-/

/-! ## A238653.P7121462873564518438

`A238654(eq[11, A066657(n)])`
-/

namespace A238653.P7121462873564518438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238653.P7121462873564518438

/-! ## A238653.P5198345136530612225

`A238654(eq[8, A131818(n+1)])`
-/

namespace A238653.P5198345136530612225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238653.P5198345136530612225

/-! ## A238653.P17227766073112705923

`A238654(A374008(n+1))`
-/

namespace A238653.P17227766073112705923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A374008 (n + 1)).toNat

end

end A238653.P17227766073112705923

/-! ## A238653.P11502697038690598445

`A238654(A055999(n+4))`
-/

namespace A238653.P11502697038690598445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (A055999 (n + 4)).toNat

end

end A238653.P11502697038690598445

/-! ## A238653.P16362069423859151209

`A238654(eq[4, A219347(n)])`
-/

namespace A238653.P16362069423859151209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238653.P16362069423859151209

/-!
# A238654: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..1 introduced in row major order.

The programs for A238654, there is no canonical definition to state claims against.
-/

/-! ## A238654.P13025567585844209586

`(A207808(n+1)/2)%A097271(3*n+4)`
-/

namespace A238654.P13025567585844209586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A207808 (n + 1) : ℚ) / 2)) (A097271 (3 * n + 4))

end

end A238654.P13025567585844209586

/-! ## A238654.P445808666043669838

`A207808(n+1)/A001227(A001632(n+1))`
-/

namespace A238654.P445808666043669838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207808 (n + 1) : ℚ) / (A001227 (A001632 (n + 1)).toNat : ℚ)

end

end A238654.P445808666043669838

/-! ## A238654.P7733869077781311525

`A207808(n+1)/A000005(A006794(n+1))`
-/

namespace A238654.P7733869077781311525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207808 (n + 1) : ℚ) / (A000005 (A006794 (n + 1)).toNat : ℚ)

end

end A238654.P7733869077781311525

/-! ## A238654.P1322371395386362254

`A207808(n+1)/A001227(A069246(n+1))`
-/

namespace A238654.P1322371395386362254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207808 (n + 1) : ℚ) / (A001227 (A069246 (n + 1)).toNat : ℚ)

end

end A238654.P1322371395386362254

/-! ## A238654.P7736873421490353995

`A207808(n+1)/A020639(A291804(n+1))`
-/

namespace A238654.P7736873421490353995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207808 (n + 1) : ℚ) / (A020639 (A291804 (n + 1)).toNat : ℚ)

end

end A238654.P7736873421490353995

/-!
# A238658: Number of partitions of n having population standard deviation < 2.

The programs for A238658, there is no canonical definition to state claims against.
-/

/-! ## A238658.P7261300621912032226

`A238659(n+1)-A238660(n+1)`
-/

namespace A238658.P7261300621912032226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238659 (n + 1) - A238660 (n + 1)

end

end A238658.P7261300621912032226

/-! ## A238658.P12629511226989025673

`Δ[A000070(n)]-A238662(n+1)`
-/

namespace A238658.P12629511226989025673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238662 (n + 1)

end

end A238658.P12629511226989025673

/-! ## A238658.P10223723854099712110

`record[A035363(n)]-A238662(n+1)`
-/

namespace A238658.P10223723854099712110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238662 (n + 1)

end

end A238658.P10223723854099712110

/-! ## A238658.P1686454916683226159

`record[A035444(n)]-A238662(n+1)`
-/

namespace A238658.P1686454916683226159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238662 (n + 1)

end

end A238658.P1686454916683226159

/-! ## A238658.P81826441221796442

`A000041(n+1)-A238662(n+1)`
-/

namespace A238658.P81826441221796442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238662 (n + 1)

end

end A238658.P81826441221796442

/-!
# A238659: Number of partitions of n having standard deviation σ <= 2.

The programs for A238659, there is no canonical definition to state claims against.
-/

/-! ## A238659.P5528523720308733866

`A238660(n+1)+A238658(n+1)`
-/

namespace A238659.P5528523720308733866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238660 (n + 1) + A238658 (n + 1)

end

end A238659.P5528523720308733866

/-! ## A238659.P2300364375343576695

`Δ[A000070(n)]-A238661(n+1)`
-/

namespace A238659.P2300364375343576695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238661 (n + 1)

end

end A238659.P2300364375343576695

/-! ## A238659.P13105933276039590263

`record[A035363(n)]-A238661(n+1)`
-/

namespace A238659.P13105933276039590263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238661 (n + 1)

end

end A238659.P13105933276039590263

/-! ## A238659.P12804129834659927246

`A000041(n+1)-A238661(n+1)`
-/

namespace A238659.P12804129834659927246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238661 (n + 1)

end

end A238659.P12804129834659927246

/-! ## A238659.P5630638899301845387

`A213598(n+1)-A238661(n+1)`
-/

namespace A238659.P5630638899301845387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (n + 1) - A238661 (n + 1)

end

end A238659.P5630638899301845387

/-!
# A238660: Number of partitions of n having population standard deviation = 2.

The programs for A238660, there is no canonical definition to state claims against.
-/

/-! ## A238660.P9781818207461476871

`A238659(n+1)-A238658(n+1)`
-/

namespace A238660.P9781818207461476871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238659 (n + 1) - A238658 (n + 1)

end

end A238660.P9781818207461476871

/-! ## A238660.P17076900160757985332

`A238659(A000027(n+1))%A238658(n+1)`
-/

namespace A238660.P17076900160757985332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238659 (A000027 (n + 1)).toNat) (A238658 (n + 1))

end

end A238660.P17076900160757985332

/-! ## A238660.P13088104352213301651

`A238662(n+1)-A238661(n+1)`
-/

namespace A238660.P13088104352213301651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238662 (n + 1) - A238661 (n + 1)

end

end A238660.P13088104352213301651

/-! ## A238660.P629772977782760105

`A238662(n+1)-(Δ[A000070(n)]-A238659(n+1))`
-/

namespace A238660.P629772977782760105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238662 (n + 1) - (f1 (n + 1) - f1 n - A238659 (n + 1))

end

end A238660.P629772977782760105

/-! ## A238660.P5781373968990113575

`Δ[A000070(n)]-A238661(n+1)-A238658(n+1)`
-/

namespace A238660.P5781373968990113575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238661 (n + 1) - A238658 (n + 1)

end

end A238660.P5781373968990113575

/-!
# A238661: Number of partitions of n having standard deviation σ > 2.

The programs for A238661, there is no canonical definition to state claims against.
-/

/-! ## A238661.P4111653775568858455

`Δ[A000070(n)]-A238659(n+1)`
-/

namespace A238661.P4111653775568858455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238659 (n + 1)

end

end A238661.P4111653775568858455

/-! ## A238661.P2427278694387762958

`record[A035363(n)]-A238659(n+1)`
-/

namespace A238661.P2427278694387762958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238659 (n + 1)

end

end A238661.P2427278694387762958

/-! ## A238661.P10125199341300961672

`record[A035444(n)]-A238659(n+1)`
-/

namespace A238661.P10125199341300961672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238659 (n + 1)

end

end A238661.P10125199341300961672

/-! ## A238661.P10497857686521024071

`A000041(n+1)-A238659(n+1)`
-/

namespace A238661.P10497857686521024071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238659 (n + 1)

end

end A238661.P10497857686521024071

/-! ## A238661.P13736090415467400522

`A238662(n+1)-A238660(n+1)`
-/

namespace A238661.P13736090415467400522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238662 (n + 1) - A238660 (n + 1)

end

end A238661.P13736090415467400522

/-!
# A238662: Number of partitions of n having population standard deviation >= 2.

The programs for A238662, there is no canonical definition to state claims against.
-/

/-! ## A238662.P5987021445818243131

`Δ[A000070(n)]-A238658(n+1)`
-/

namespace A238662.P5987021445818243131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238658 (n + 1)

end

end A238662.P5987021445818243131

/-! ## A238662.P14383556020236434469

`A238661(n+1)+A238660(n+1)`
-/

namespace A238662.P14383556020236434469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238661 (n + 1) + A238660 (n + 1)

end

end A238662.P14383556020236434469

/-! ## A238662.P11660557015744979984

`A000041(n+1)-A238658(n+1)`
-/

namespace A238662.P11660557015744979984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238658 (n + 1)

end

end A238662.P11660557015744979984

/-! ## A238662.P2885444946522254377

`A000065(n+1)+1-A238658(n+1)`
-/

namespace A238662.P2885444946522254377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + 1 - A238658 (n + 1)

end

end A238662.P2885444946522254377

/-! ## A238662.P4911986557107585366

`A238660(n+1)+Δ[A000070(n)]-A238659(n+1)`
-/

namespace A238662.P4911986557107585366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238660 (n + 1) + (f1 (n + 1) - f1 n - A238659 (n + 1))

end

end A238662.P4911986557107585366

/-!
# A238663: n-th prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238663, there is no canonical definition to state claims against.
-/

/-! ## A238663.P11421215973509471680

`A238086(∑[4*n]+1)`
-/

namespace A238663.P11421215973509471680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238663.P11421215973509471680

/-! ## A238663.P4334234081394554723

`or(1, A238086((n+1)²+n²))`
-/

namespace A238663.P4334234081394554723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 ((n + 1) ^ 2 + n ^ 2))

end

end A238663.P4334234081394554723

/-! ## A238663.P12811741420945737291

`and(-1, A238086(A001844(n)))`
-/

namespace A238663.P12811741420945737291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A238086 (A001844 n).toNat)

end

end A238663.P12811741420945737291

/-! ## A238663.P3857720786595674092

`A238086(xor(3, Δ[n²]²)/2)+A000007(2*(n+2))`
-/

namespace A238663.P3857720786595674092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (SequenceMachineLib.roundAway ((Int.xor 3 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) : ℚ) / 2)).toNat + A000007 (2 * (n + 2))

end

end A238663.P3857720786595674092

/-! ## A238663.P2136312648307234617

`or(A238086(A001844(n)), A267525(n))`
-/

namespace A238663.P2136312648307234617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238086 (A001844 n).toNat) (A267525 n)

end

end A238663.P2136312648307234617

/-!
# A238664: Primes p such that (p+2)^2+2 is prime but (p+1)^2+1 is not prime.

The programs for A238664, there is no canonical definition to state claims against.
-/

/-! ## A238664.P13283083657354637042

`A238086(∑[n+2])`
-/

namespace A238664.P13283083657354637042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238664.P13283083657354637042

/-! ## A238664.P11619679220050262907

`record[A238086(abs(A201163(n)))]`
-/

namespace A238664.P11619679220050262907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238664.P11619679220050262907

/-! ## A238664.P1662780683187741533

`record[A238086(A101881(n)+1)]`
-/

namespace A238664.P1662780683187741533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238664.P1662780683187741533

/-! ## A238664.P15167610600335620385

`p?[A238086(A055998(n)+2)]`
-/

namespace A238664.P15167610600335620385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055998 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238664.P15167610600335620385

/-! ## A238664.P9839323906832305293

`p?[A238086(A046691(n)+3)]`
-/

namespace A238664.P9839323906832305293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A046691 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238664.P9839323906832305293

/-! ## A238664.P4483219578471493799

`p?[A238086(A034856(n+1)+1)]`
-/

namespace A238664.P4483219578471493799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A034856 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238664.P4483219578471493799

/-! ## A238664.P252021744378727646

`p?[A238086(A167614(n+1)-4)]`
-/

namespace A238664.P252021744378727646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167614 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238664.P252021744378727646

/-! ## A238664.P2905420545011893000

`A006530(A238086(A000096(n+1)))`
-/

namespace A238664.P2905420545011893000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A238086 (A000096 (n + 1)).toNat).toNat

end

end A238664.P2905420545011893000

/-! ## A238664.P6198071905822450931

`∑{d}[A238086(A000096(n+1)), A000010(#)]`
-/

namespace A238664.P6198071905822450931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A238664.P6198071905822450931

/-! ## A238664.P2330957542574898953

`∑{p}[A238086(A000096(n+1)), A020639(#)]`
-/

namespace A238664.P2330957542574898953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A238664.P2330957542574898953

/-!
# A238665: Primes p such that (p+3)^2+3 is prime but (p+j)^2+j is not prime for all 0

The programs for A238665, there is no canonical definition to state claims against.
-/

/-! ## A238665.P5263388668272519061

`A238086(∑[n+3]+1)`
-/

namespace A238665.P5263388668272519061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238665.P5263388668272519061

/-! ## A238665.P16140455327585450718

`p?[A238086(Δ[A008778(n)])]`
-/

namespace A238665.P16140455327585450718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238665.P16140455327585450718

/-! ## A238665.P5718054167253821425

`p?[A238086(A034856(n+2))]`
-/

namespace A238665.P5718054167253821425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A034856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238665.P5718054167253821425

/-! ## A238665.P5314385583405306095

`p?[A238086(A052905(n)+3)]`
-/

namespace A238665.P5314385583405306095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A052905 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238665.P5314385583405306095

/-! ## A238665.P13068189040060285647

`p?[A238086(A055999(n)+4)]`
-/

namespace A238665.P13068189040060285647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055999 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238665.P13068189040060285647

/-! ## A238665.P3535583774071790224

`p?[A238086(A000124(n+3)-3)]`
-/

namespace A238665.P3535583774071790224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 3) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238665.P3535583774071790224

/-! ## A238665.P12574985050136301684

`∑{d}[A238086(A000124(n+3)-3), A000010(#)]`
-/

namespace A238665.P12574985050136301684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 3) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A238665.P12574985050136301684

/-! ## A238665.P14586573493491393081

`∏{d}[A238086(A000124(n+3)-3), A006530(#)]`
-/

namespace A238665.P14586573493491393081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 3) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A238665.P14586573493491393081

/-! ## A238665.P1427294561308678873

`∏{d}[A238086(A000124(n+3)-3), A020639(#)]`
-/

namespace A238665.P1427294561308678873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 3) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A238665.P1427294561308678873

/-!
# A238666: Primes p such that (p+4)^2+4 is prime but (p+j)^2+j is not prime for all 0

The programs for A238666, there is no canonical definition to state claims against.
-/

/-! ## A238666.P18315550213362268018

`A238086(∑[n+4]+3)`
-/

namespace A238666.P18315550213362268018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A238666.P18315550213362268018

/-! ## A238666.P126061472075237676

`p?[A238086(A027379(n+2))]`
-/

namespace A238666.P126061472075237676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A027379 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238666.P126061472075237676

/-! ## A238666.P9067404366853832196

`p?[A238086(A055998(n+2))]`
-/

namespace A238666.P9067404366853832196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055998 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238666.P9067404366853832196

/-! ## A238666.P16853906995663117335

`p?[A238086(A155212(n)+5)]`
-/

namespace A238666.P16853906995663117335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A155212 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238666.P16853906995663117335

/-! ## A238666.P10719350578440618880

`record[A238086(A027379(abs(2-n)))]`
-/

namespace A238666.P10719350578440618880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A027379 |2 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238666.P10719350578440618880

/-! ## A238666.P14363070166410859334

`p?[A238086(Δ[A034857(n+1)])]`
-/

namespace A238666.P14363070166410859334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238666.P14363070166410859334

/-! ## A238666.P17129937039945622147

`p?[A238086(A000124(n+4)-4)]`
-/

namespace A238666.P17129937039945622147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 4) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238666.P17129937039945622147

/-! ## A238666.P10702731449021272273

`∑{d}[A238086(A027379(n+2)), A000010(#)]`
-/

namespace A238666.P10702731449021272273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A027379 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A238666.P10702731449021272273

/-!
# A238667: Primes p such that (p+5)^2+5 is prime but (p+j)^2+j is not prime for all 0

The programs for A238667, there is no canonical definition to state claims against.
-/

/-! ## A238667.P16904507533249596327

`A238086(∑[n+5]+6)`
-/

namespace A238667.P16904507533249596327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A238667.P16904507533249596327

/-! ## A238667.P2832507231364038784

`p?[A238086(Δ[A264443(n)])]`
-/

namespace A238667.P2832507231364038784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238667.P2832507231364038784

/-! ## A238667.P15045400512342558353

`p?[A238086(A046691(n+3))]`
-/

namespace A238667.P15045400512342558353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A046691 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238667.P15045400512342558353

/-! ## A238667.P1388162981809373215

`p?[A238086(Δ[A023545(n+1)])]`
-/

namespace A238667.P1388162981809373215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238667.P1388162981809373215

/-! ## A238667.P12645919361630101764

`p?[A238086(A000096(n+4)-3)]`
-/

namespace A238667.P12645919361630101764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 4) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238667.P12645919361630101764

/-! ## A238667.P15630755719894888511

`∑{d}[A238086(A046691(n+3)), A000010(#)]`
-/

namespace A238667.P15630755719894888511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A046691 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A238667.P15630755719894888511

/-! ## A238667.P17340943882961212317

`∏{p}[A238086(A046691(n+3)), A020639(#)]`
-/

namespace A238667.P17340943882961212317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A046691 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A238667.P17340943882961212317

/-! ## A238667.P17486579408603954548

`A007318(C(2, n+2))*A238086(A046691(n+3))`
-/

namespace A238667.P17486579408603954548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A238086 (A046691 (n + 3)).toNat

end

end A238667.P17486579408603954548

/-! ## A238667.P5306760723641740485

`((-1)^A007318(n))²*A238086(Δ[A023545(n+1)])`
-/

namespace A238667.P5306760723641740485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A238086 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A238667.P5306760723641740485

/-!
# A238668: Primes p such that (p+6)^2+6 is prime but (p+j)^2+j is not prime for all 0

The programs for A238668, there is no canonical definition to state claims against.
-/

/-! ## A238668.P1365826529043167242

`A238086(∑[n+6]+10)`
-/

namespace A238668.P1365826529043167242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A238668.P1365826529043167242

/-! ## A238668.P5532949332210800389

`p?[A238086(A052905(n+3))]`
-/

namespace A238668.P5532949332210800389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A052905 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238668.P5532949332210800389

/-! ## A238668.P2204221674202721774

`p?[A238086(A055999(n+3)+1)]`
-/

namespace A238668.P2204221674202721774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055999 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238668.P2204221674202721774

/-! ## A238668.P5311700237222334080

`p?[A238086(A046691(n+4)-1)]`
-/

namespace A238668.P5311700237222334080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A046691 (n + 4) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238668.P5311700237222334080

/-! ## A238668.P15936017845008461436

`p?[A238086(A000096(n+5)-4)]`
-/

namespace A238668.P15936017845008461436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 5) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238668.P15936017845008461436

/-! ## A238668.P13503445409576748771

`p?[A238086(A000217(n+6)-5)]`
-/

namespace A238668.P13503445409576748771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 6) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238668.P13503445409576748771

/-! ## A238668.P10560044910513779091

`or(1, A238086(Δ[A023551(n+1)]+1))`
-/

namespace A238668.P10560044910513779091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (f1 (n + 1) - f1 n + 1).toNat)

end

end A238668.P10560044910513779091

/-! ## A238668.P13302018762100281730

`∑{d}[A238086(A000217(n+6)-5), A000010(#)]`
-/

namespace A238668.P13302018762100281730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 6) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A238668.P13302018762100281730

/-! ## A238668.P11102739780701958560

`∏{d}[A238086(A000217(n+6)-5), A020639(#)]`
-/

namespace A238668.P11102739780701958560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 6) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A238668.P11102739780701958560

/-!
# A238669: Primes p such that (p+7)^2+7 is prime but (p+j)^2+j is not prime for all 0

The programs for A238669, there is no canonical definition to state claims against.
-/

/-! ## A238669.P10464831626385803460

`A238086(A055999(n+4))`
-/

namespace A238669.P10464831626385803460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055999 (n + 4)).toNat

end

end A238669.P10464831626385803460

/-! ## A238669.P7022180611242118944

`A238086(eq[4, A219347(n)])`
-/

namespace A238669.P7022180611242118944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238669.P7022180611242118944

/-! ## A238669.P12736352037306205423

`A238086(eq[6, A193592(n)])`
-/

namespace A238669.P12736352037306205423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238669.P12736352037306205423

/-! ## A238669.P10192321776619465477

`A238086(Δ[A023551(n+2)])`
-/

namespace A238669.P10192321776619465477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (f1 (n + 1) - f1 n).toNat

end

end A238669.P10192321776619465477

/-! ## A238669.P15152867567278904730

`A238086(Δ[A026054(n+4)])`
-/

namespace A238669.P15152867567278904730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (f1 (n + 1) - f1 n).toNat

end

end A238669.P15152867567278904730

/-! ## A238669.P6609707948334745199

`A238086(A052905(n+4)-1)`
-/

namespace A238669.P6609707948334745199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A052905 (n + 4) - 1).toNat

end

end A238669.P6609707948334745199

/-! ## A238669.P2844570365939483236

`A238086(A027379(n+5)-3)`
-/

namespace A238669.P2844570365939483236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A027379 (n + 5) - 3).toNat

end

end A238669.P2844570365939483236

/-! ## A238669.P16632885755523822773

`A238086(A055998(n+5)-3)`
-/

namespace A238669.P16632885755523822773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055998 (n + 5) - 3).toNat

end

end A238669.P16632885755523822773

/-! ## A238669.P4420139784669620604

`A238086(A000096(n+6)-5)`
-/

namespace A238669.P4420139784669620604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 6) - 5).toNat

end

end A238669.P4420139784669620604

/-! ## A238669.P5352487941995597507

`A238086(A000217(n+7)-6)`
-/

namespace A238669.P5352487941995597507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 7) - 6).toNat

end

end A238669.P5352487941995597507

/-!
# A238670: Primes p such that (p+8)^2+8 is prime but (p+j)^2+j is not prime for all 0

The programs for A238670, there is no canonical definition to state claims against.
-/

/-! ## A238670.P12610423280033895925

`A238086(C(n+8, 2)+n+1)`
-/

namespace A238670.P12610423280033895925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (Nat.choose (n + 8) 2 + n + 1)

end

end A238670.P12610423280033895925

/-! ## A238670.P2447410629111385411

`A238086(A056126(n)+29)`
-/

namespace A238670.P2447410629111385411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A056126 n + 29).toNat

end

end A238670.P2447410629111385411

/-! ## A238670.P9302474837341776747

`A238086(eq[5, A219347(n)])`
-/

namespace A238670.P9302474837341776747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238670.P9302474837341776747

/-! ## A238670.P2572153152128855562

`A238086(eq[7, A193592(n)])`
-/

namespace A238670.P2572153152128855562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238670.P2572153152128855562

/-! ## A238670.P9430730565642192023

`A238086(A155212(n+4)+1)`
-/

namespace A238670.P9430730565642192023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A155212 (n + 4) + 1).toNat

end

end A238670.P9430730565642192023

/-! ## A238670.P6184610624459639260

`A238086(A055999(n+5)-1)`
-/

namespace A238670.P6184610624459639260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055999 (n + 5) - 1).toNat

end

end A238670.P6184610624459639260

/-! ## A238670.P7533754715660751883

`A238086(A027379(n+6)-4)`
-/

namespace A238670.P7533754715660751883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A027379 (n + 6) - 4).toNat

end

end A238670.P7533754715660751883

/-! ## A238670.P15705993915084658959

`A238086(A034856(n+7)-5)`
-/

namespace A238670.P15705993915084658959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A034856 (n + 7) - 5).toNat

end

end A238670.P15705993915084658959

/-! ## A238670.P12737228019666218879

`A238086(A000096(n+7)-6)`
-/

namespace A238670.P12737228019666218879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 7) - 6).toNat

end

end A238670.P12737228019666218879

/-! ## A238670.P16086824819404444659

`A238086(A000217(n+8)-7)`
-/

namespace A238670.P16086824819404444659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 8) - 7).toNat

end

end A238670.P16086824819404444659

/-!
# A238671: Primes p such that (p+9)^2+9 is prime but (p+j)^2+j is not prime for all 0

The programs for A238671, there is no canonical definition to state claims against.
-/

/-! ## A238671.P2611112213126626872

`A238086(A155212(n+5))`
-/

namespace A238671.P2611112213126626872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A155212 (n + 5)).toNat

end

end A238671.P2611112213126626872

/-! ## A238671.P8270424209871182514

`A238086(eq[6, A219347(n)])`
-/

namespace A238671.P8270424209871182514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238671.P8270424209871182514

/-! ## A238671.P13145080046396256307

`A238086(A055999(n+6)-2)`
-/

namespace A238671.P13145080046396256307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055999 (n + 6) - 2).toNat

end

end A238671.P13145080046396256307

/-! ## A238671.P17740400981886654750

`A238086(A055998(n+7)-5)`
-/

namespace A238671.P17740400981886654750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055998 (n + 7) - 5).toNat

end

end A238671.P17740400981886654750

/-! ## A238671.P7449036820169288941

`A238086(A000096(n+8)-7)`
-/

namespace A238671.P7449036820169288941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 8) - 7).toNat

end

end A238671.P7449036820169288941

/-! ## A238671.P13974745864594491070

`A238086(A000217(n+9)-8)`
-/

namespace A238671.P13974745864594491070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 9) - 8).toNat

end

end A238671.P13974745864594491070

/-! ## A238671.P5731587320858614235

`A238086(A000124(n+9)-9)`
-/

namespace A238671.P5731587320858614235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 9) - 9).toNat

end

end A238671.P5731587320858614235

/-!
# A238672: Primes p such that (p+10)^2+10 is prime but (p+j)^2+j is not prime for all 0

The programs for A238672, there is no canonical definition to state claims against.
-/

/-! ## A238672.P8801642206251748245

`A238086(eq[8, A219347(n)])`
-/

namespace A238672.P8801642206251748245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238672.P8801642206251748245

/-! ## A238672.P1627043079950608842

`A238086(eq[9, A193592(n)])`
-/

namespace A238672.P1627043079950608842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238672.P1627043079950608842

/-! ## A238672.P5675197238813597504

`A238086(A055999(n+7)-3)`
-/

namespace A238672.P5675197238813597504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055999 (n + 7) - 3).toNat

end

end A238672.P5675197238813597504

/-! ## A238672.P10266984432085666184

`A238086(A046691(n+8)-5)`
-/

namespace A238672.P10266984432085666184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A046691 (n + 8) - 5).toNat

end

end A238672.P10266984432085666184

/-! ## A238672.P12031363779101646911

`A238086(A055998(n+8)-6)`
-/

namespace A238672.P12031363779101646911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055998 (n + 8) - 6).toNat

end

end A238672.P12031363779101646911

/-! ## A238672.P15470360763893900839

`A238086(A000217(n+10)-9)`
-/

namespace A238672.P15470360763893900839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 10) - 9).toNat

end

end A238672.P15470360763893900839

/-! ## A238672.P2593964903548882745

`A238086(A000124(n+10)-10)`
-/

namespace A238672.P2593964903548882745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 10) - 10).toNat

end

end A238672.P2593964903548882745

/-! ## A238672.P9129522032011642001

`A238086(A000096(n+8)+n+2)`
-/

namespace A238672.P9129522032011642001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 8) + (n + 2 : ℤ)).toNat

end

end A238672.P9129522032011642001

/-! ## A238672.P4851361330728713890

`A238086(A161680(n+7)+A016813(n+6))`
-/

namespace A238672.P4851361330728713890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A161680 (n + 7) + A016813 (n + 6)).toNat

end

end A238672.P4851361330728713890

/-!
# A238673: First prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238673, there is no canonical definition to state claims against.
-/

/-! ## A238673.P9038017124044003886

`A238086(∑[n]+1)`
-/

namespace A238673.P9038017124044003886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238673.P9038017124044003886

/-! ## A238673.P16091399427315188045

`or(1, A238086(A000124(n)))`
-/

namespace A238673.P16091399427315188045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A000124 n).toNat)

end

end A238673.P16091399427315188045

/-! ## A238673.P4057161520935962427

`or(1, A238086(∑[A028310(n)]))`
-/

namespace A238673.P4057161520935962427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A238673.P4057161520935962427

/-! ## A238673.P5037250207094289794

`A238086(A000124(n))%A017309(n)`
-/

namespace A238673.P5037250207094289794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238086 (A000124 n).toNat) (A017309 n)

end

end A238673.P5037250207094289794

/-! ## A238673.P13660000530461553585

`lcm(A033999(n), A238086(A000124(n)))`
-/

namespace A238673.P13660000530461553585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A238086 (A000124 n).toNat)

end

end A238673.P13660000530461553585

/-! ## A238673.P8307157958226550504

`A238086(A000124(n))+A000007(n+1)`
-/

namespace A238673.P8307157958226550504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 n).toNat + A000007 (n + 1)

end

end A238673.P8307157958226550504

/-! ## A238673.P9972363582595065787

`A238086(A000124(n))+A000038(n+1)`
-/

namespace A238673.P9972363582595065787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 n).toNat + A000038 (n + 1)

end

end A238673.P9972363582595065787

/-! ## A238673.P10563720589342630431

`A007318(C(2, n))*A238086(A000124(n))`
-/

namespace A238673.P10563720589342630431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A238086 (A000124 n).toNat

end

end A238673.P10563720589342630431

/-! ## A238673.P17641879718084080634

`A000108(and(1, -n))*A238086(A000124(n))`
-/

namespace A238673.P17641879718084080634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (-(n : ℤ))).toNat * A238086 (A000124 n).toNat

end

end A238673.P17641879718084080634

/-! ## A238673.P11683291326550267118

`A238086(A000124(n))+char[A000041(n+38)]`
-/

namespace A238673.P11683291326550267118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 38)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A238673.P11683291326550267118

/-! ## A238673.P147538014282413662

`A238086(A000124(n))+A008683(4*(n+1))`
-/

namespace A238673.P147538014282413662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 n).toNat + A008683 (4 * (n + 1))

end

end A238673.P147538014282413662

/-! ## A238673.P12419154962038944609

`A014963(6*(n+2))*A238086(A000124(n))`
-/

namespace A238673.P12419154962038944609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A238086 (A000124 n).toNat

end

end A238673.P12419154962038944609

/-! ## A238673.P1729386101815840381

`A000041(C(2, n+2))*A238086(A000124(n))`
-/

namespace A238673.P1729386101815840381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A238086 (A000124 n).toNat

end

end A238673.P1729386101815840381

/-! ## A238673.P7505848625115818413

`A000108(C(2, n+2))*A238086(A000124(n))`
-/

namespace A238673.P7505848625115818413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A238086 (A000124 n).toNat

end

end A238673.P7505848625115818413

/-! ## A238673.P4596734047097411848

`A007318(and(2, n-1))*A238086(A000124(n))`
-/

namespace A238673.P4596734047097411848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 1)).toNat * A238086 (A000124 n).toNat

end

end A238673.P4596734047097411848

/-! ## A238673.P11952519516574627024

`A238086(A000124(n))+val(A006530(n+2), 10)`
-/

namespace A238673.P11952519516574627024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 n).toNat + (SequenceMachineLib.valuation (A006530 (n + 2)).toNat 10 : ℤ)

end

end A238673.P11952519516574627024

/-! ## A238673.P13302966072564606652

`A238086(A000124(n))+A000045(C(n, n+1))`
-/

namespace A238673.P13302966072564606652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 n).toNat + A000045 (Nat.choose n (n + 1))

end

end A238673.P13302966072564606652

/-! ## A238673.P3299054511622719758

`A000041(floor(1/(n+1)))*A238086(A000124(n))`
-/

namespace A238673.P3299054511622719758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat * A238086 (A000124 n).toNat

end

end A238673.P3299054511622719758

/-!
# A238674: Second prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238674, there is no canonical definition to state claims against.
-/

/-! ## A238674.P15940944225379516423

`A238086(∑[n+1]+2)`
-/

namespace A238674.P15940944225379516423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238674.P15940944225379516423

/-! ## A238674.P10739165422905048066

`or(1, A238086(A133263(n+1)))`
-/

namespace A238674.P10739165422905048066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A133263 (n + 1)).toNat)

end

end A238674.P10739165422905048066

/-! ## A238674.P15833450448282486868

`or(1, A238086(A000096(n)+3))`
-/

namespace A238674.P15833450448282486868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A000096 n + 3).toNat)

end

end A238674.P15833450448282486868

/-! ## A238674.P3456034496310197941

`or(1, A238086(A152948(n+3)))`
-/

namespace A238674.P3456034496310197941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A152948 (n + 3)).toNat)

end

end A238674.P3456034496310197941

/-! ## A238674.P14601749133483510305

`abs(A165326(n)*A238086(A000096(n)+3))`
-/

namespace A238674.P14601749133483510305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165326 n * A238086 (A000096 n + 3).toNat|

end

end A238674.P14601749133483510305

/-! ## A238674.P7075313569366398452

`char[A069888(n)]*A238086(A133263(n+1))`
-/

namespace A238674.P7075313569366398452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A238086 (A133263 (n + 1)).toNat

end

end A238674.P7075313569366398452

/-! ## A238674.P5759801867345938288

`A238086(A133263(n+1))%Δ[A000152(n)]`
-/

namespace A238674.P5759801867345938288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238086 (A133263 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A238674.P5759801867345938288

/-! ## A238674.P13483290520622936429

`A238086(A000096(n)+3)+val(A000040(n+1), 4)`
-/

namespace A238674.P13483290520622936429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 n + 3).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A238674.P13483290520622936429

/-! ## A238674.P364440532289820163

`A238086(A000096(n)+3)+1-A007318(C(3, n))`
-/

namespace A238674.P364440532289820163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 n + 3).toNat + 1 - A007318 (Nat.choose 3 n)

end

end A238674.P364440532289820163

/-! ## A238674.P4559480151773066478

`A007318(C(2, n+2))*A238086(A152948(n+3))`
-/

namespace A238674.P4559480151773066478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A238086 (A152948 (n + 3)).toNat

end

end A238674.P4559480151773066478

/-!
# A238675: Third prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238675, there is no canonical definition to state claims against.
-/

/-! ## A238675.P17859749453996195237

`A238086(∑[n+2]+4)`
-/

namespace A238675.P17859749453996195237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238675.P17859749453996195237

/-! ## A238675.P10363849357339911327

`or(1, A238086(A167614(n+1)))`
-/

namespace A238675.P10363849357339911327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A167614 (n + 1)).toNat)

end

end A238675.P10363849357339911327

/-! ## A238675.P2886757351390030920

`or(1, A238086(A152949(n+4)))`
-/

namespace A238675.P2886757351390030920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A152949 (n + 4)).toNat)

end

end A238675.P2886757351390030920

/-! ## A238675.P9215107661682638932

`or(1, A238086(A055998(n)+6))`
-/

namespace A238675.P9215107661682638932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A055998 n + 6).toNat)

end

end A238675.P9215107661682638932

/-! ## A238675.P11243046343479005102

`or(1, A238086(A046691(n)+7))`
-/

namespace A238675.P11243046343479005102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A046691 n + 7).toNat)

end

end A238675.P11243046343479005102

/-! ## A238675.P10637756808015976619

`or(1, A238086(A167499(n)+n))`
-/

namespace A238675.P10637756808015976619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A167499 n + (n : ℤ)).toNat)

end

end A238675.P10637756808015976619

/-! ## A238675.P12421138608354492167

`or(1, A238086(A000217(n+2)+3))`
-/

namespace A238675.P12421138608354492167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A000217 (n + 2) + 3).toNat)

end

end A238675.P12421138608354492167

/-! ## A238675.P1396407936519962155

`A007318(and(n, -(n+1)))*A238086(A046691(n)+7)`
-/

namespace A238675.P1396407936519962155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land (n : ℤ) (-(n + 1 : ℤ))).toNat * A238086 (A046691 n + 7).toNat

end

end A238675.P1396407936519962155

/-!
# A238676: Fourth prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238676, there is no canonical definition to state claims against.
-/

/-! ## A238676.P7223169747115234958

`A238086(∑[n+3]+7)`
-/

namespace A238676.P7223169747115234958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238676.P7223169747115234958

/-! ## A238676.P12569026782744993990

`or(1, A238086(A055999(n)+10))`
-/

namespace A238676.P12569026782744993990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A055999 n + 10).toNat)

end

end A238676.P12569026782744993990

/-! ## A238676.P5967275370704862017

`or(1, A238086(Δ[A005286(n)]+5))`
-/

namespace A238676.P5967275370704862017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (f1 (n + 1) - f1 n + 5).toNat)

end

end A238676.P5967275370704862017

/-! ## A238676.P12941962549180644002

`or(1, A238086(A167614(n+2)+1))`
-/

namespace A238676.P12941962549180644002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A167614 (n + 2) + 1).toNat)

end

end A238676.P12941962549180644002

/-! ## A238676.P18207300933406828666

`or(1, A238086(A000124(n+3)+3))`
-/

namespace A238676.P18207300933406828666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A000124 (n + 3) + 3).toNat)

end

end A238676.P18207300933406828666

/-! ## A238676.P13995253824548714777

`A238086(A000124(n+3)+3)^A007318(C(3, n))`
-/

namespace A238676.P13995253824548714777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238086 (A000124 (n + 3) + 3).toNat : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A238676.P13995253824548714777

/-! ## A238676.P3400549144296060566

`A238086(Δ[A005286(n)]+5)+A008683(4*(n+1))`
-/

namespace A238676.P3400549144296060566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (f1 (n + 1) - f1 n + 5).toNat + A008683 (4 * (n + 1))

end

end A238676.P3400549144296060566

/-! ## A238676.P1668048557985218512

`((-1)^A007318(n))²*A238086(Δ[A005286(n)]+5)`
-/

namespace A238676.P1668048557985218512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A238086 (f1 (n + 1) - f1 n + 5).toNat : ℚ)

end

end A238676.P1668048557985218512

/-! ## A238676.P17232823334508339153

`A000108(C(2, n+2))+A238086(A167614(n+2)+1)-1`
-/

namespace A238676.P17232823334508339153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) + (A238086 (A167614 (n + 2) + 1).toNat - 1)

end

end A238676.P17232823334508339153

/-! ## A238676.P17037688993480409299

`A014963(A000010((2*n+1)²))*A238086(A167614(n+2)+1)`
-/

namespace A238676.P17037688993480409299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000010 ((2 * n + 1) ^ 2)).toNat * A238086 (A167614 (n + 2) + 1).toNat

end

end A238676.P17037688993480409299

/-!
# A238677: Fifth prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238677, there is no canonical definition to state claims against.
-/

/-! ## A238677.P8616953563880628088

`A238086(∑[n+4]+11)`
-/

namespace A238677.P8616953563880628088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A238677.P8616953563880628088

/-! ## A238677.P9770811642206459388

`or(1, A238086(A167499(n+3)))`
-/

namespace A238677.P9770811642206459388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238086 (A167499 (n + 3)).toNat)

end

end A238677.P9770811642206459388

/-! ## A238677.P11128002882358280551

`char[A091018(n)]*A238086(A167499(n+3))`
-/

namespace A238677.P11128002882358280551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A238086 (A167499 (n + 3)).toNat

end

end A238677.P11128002882358280551

/-! ## A238677.P17634922792631657275

`char[A106610(n)]*A238086(A167499(n+3))`
-/

namespace A238677.P17634922792631657275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A238086 (A167499 (n + 3)).toNat

end

end A238677.P17634922792631657275

/-! ## A238677.P17481189649010289528

`char[A222244(n)]*A238086(A167499(n+3))`
-/

namespace A238677.P17481189649010289528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A238086 (A167499 (n + 3)).toNat

end

end A238677.P17481189649010289528

/-! ## A238677.P9436009973729489966

`A238086(A167499(n+3))+A063524(n+2)`
-/

namespace A238677.P9436009973729489966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167499 (n + 3)).toNat + A063524 (n + 2)

end

end A238677.P9436009973729489966

/-! ## A238677.P10051620140297960085

`A007318(C(2, n))*A238086(A167499(n+3))`
-/

namespace A238677.P10051620140297960085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A238086 (A167499 (n + 3)).toNat

end

end A238677.P10051620140297960085

/-! ## A238677.P8455867884220209400

`A238086(A167499(n+3))+A008683(4*(n+1))`
-/

namespace A238677.P8455867884220209400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167499 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A238677.P8455867884220209400

/-! ## A238677.P10942376914525473866

`A000010(((-1)^n)²)*A238086(A167499(n+3))`
-/

namespace A238677.P10942376914525473866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A238086 (A167499 (n + 3)).toNat

end

end A238677.P10942376914525473866

/-!
# A238678: Sixth prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238678, there is no canonical definition to state claims against.
-/

/-! ## A238678.P5926559626140573993

`A238086(ceil((2*(n+1)+9)²/8)+5)`
-/

namespace A238678.P5926559626140573993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (⌈((2 * (n + 1) + 9) ^ 2 : ℚ) / 8⌉ + 5).toNat

end

end A238678.P5926559626140573993

/-!
# A238679: Seventh prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238679, there is no canonical definition to state claims against.
-/

/-! ## A238679.P8277970851235029519

`A238086(A167487(n+5))`
-/

namespace A238679.P8277970851235029519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167487 (n + 5)).toNat

end

end A238679.P8277970851235029519

/-! ## A238679.P3295364024181926796

`A238086(A056119(n)+28)`
-/

namespace A238679.P3295364024181926796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A056119 n + 28).toNat

end

end A238679.P3295364024181926796

/-! ## A238679.P13124883081723225377

`A238086(A166136(n+5)+1)`
-/

namespace A238679.P13124883081723225377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A166136 (n + 5) + 1).toNat

end

end A238679.P13124883081723225377

/-! ## A238679.P16039604540948144765

`A238086(A167499(n+5)+2)`
-/

namespace A238679.P16039604540948144765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167499 (n + 5) + 2).toNat

end

end A238679.P16039604540948144765

/-! ## A238679.P12617456132395461353

`A238086(A167614(n+5)+4)`
-/

namespace A238679.P12617456132395461353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167614 (n + 5) + 4).toNat

end

end A238679.P12617456132395461353

/-! ## A238679.P12288325760433558059

`A238086(A133263(n+6)+5)`
-/

namespace A238679.P12288325760433558059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A133263 (n + 6) + 5).toNat

end

end A238679.P12288325760433558059

/-! ## A238679.P6973537838752489416

`A238086(A000124(n+6)+6)`
-/

namespace A238679.P6973537838752489416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 6) + 6).toNat

end

end A238679.P6973537838752489416

/-! ## A238679.P2794644890700929789

`A238086(A000096(n+5)+8)`
-/

namespace A238679.P2794644890700929789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 5) + 8).toNat

end

end A238679.P2794644890700929789

/-! ## A238679.P8080167193958126854

`A238086(A000217(n+6)+7)`
-/

namespace A238679.P8080167193958126854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 6) + 7).toNat

end

end A238679.P8080167193958126854

/-! ## A238679.P2920539812978399892

`A238086(A034856(n+5)+9)`
-/

namespace A238679.P2920539812978399892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A034856 (n + 5) + 9).toNat

end

end A238679.P2920539812978399892

/-!
# A238680: Eighth prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238680, there is no canonical definition to state claims against.
-/

/-! ## A238680.P15355999326177863173

`A238086(C(n+9, 2)-n)`
-/

namespace A238680.P15355999326177863173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (Nat.choose (n + 9) 2 - n)

end

end A238680.P15355999326177863173

/-! ## A238680.P10921913211395172001

`A238086(A167487(n+6)+1)`
-/

namespace A238680.P10921913211395172001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167487 (n + 6) + 1).toNat

end

end A238680.P10921913211395172001

/-! ## A238680.P17068961186716513778

`A238086(A166136(n+6)+2)`
-/

namespace A238680.P17068961186716513778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A166136 (n + 6) + 2).toNat

end

end A238680.P17068961186716513778

/-! ## A238680.P3921461211831375357

`A238086(A167614(n+6)+5)`
-/

namespace A238680.P3921461211831375357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167614 (n + 6) + 5).toNat

end

end A238680.P3921461211831375357

/-! ## A238680.P8053766716372610553

`A238086(A133263(n+7)+6)`
-/

namespace A238680.P8053766716372610553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A133263 (n + 7) + 6).toNat

end

end A238680.P8053766716372610553

/-! ## A238680.P4230699665817795574

`A238086(A000124(n+7)+7)`
-/

namespace A238680.P4230699665817795574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 7) + 7).toNat

end

end A238680.P4230699665817795574

/-! ## A238680.P14696763527772973991

`A238086(A000096(n+6)+9)`
-/

namespace A238680.P14696763527772973991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 6) + 9).toNat

end

end A238680.P14696763527772973991

/-! ## A238680.P9954947582322926209

`A238086(A000217(n+7)+8)`
-/

namespace A238680.P9954947582322926209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 7) + 8).toNat

end

end A238680.P9954947582322926209

/-! ## A238680.P14773260225181933386

`A238086(A161680(n+8)+8)`
-/

namespace A238680.P14773260225181933386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A161680 (n + 8) + 8).toNat

end

end A238680.P14773260225181933386

/-! ## A238680.P12469559963562872583

`A238086(A052905(n+4)+13)`
-/

namespace A238680.P12469559963562872583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A052905 (n + 4) + 13).toNat

end

end A238680.P12469559963562872583

/-!
# A238681: Ninth prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238681, there is no canonical definition to state claims against.
-/

/-! ## A238681.P14031312445231933006

`A238086(A167499(n+7)+4)`
-/

namespace A238681.P14031312445231933006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167499 (n + 7) + 4).toNat

end

end A238681.P14031312445231933006

/-! ## A238681.P1072377390886473372

`A238086(A167614(n+7)+6)`
-/

namespace A238681.P1072377390886473372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167614 (n + 7) + 6).toNat

end

end A238681.P1072377390886473372

/-! ## A238681.P7476329202840277984

`A238086(A000124(n+8)+8)`
-/

namespace A238681.P7476329202840277984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 8) + 8).toNat

end

end A238681.P7476329202840277984

/-! ## A238681.P1411627048685239090

`A238086(A000217(n+8)+9)`
-/

namespace A238681.P1411627048685239090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 8) + 9).toNat

end

end A238681.P1411627048685239090

/-! ## A238681.P17615997465921209013

`A238086(A161680(n+9)+9)`
-/

namespace A238681.P17615997465921209013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A161680 (n + 9) + 9).toNat

end

end A238681.P17615997465921209013

/-! ## A238681.P7240610740113300196

`A238086(A000096(n+8)-(n-1))`
-/

namespace A238681.P7240610740113300196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000096 (n + 8) - ((n : ℤ) - 1)).toNat

end

end A238681.P7240610740113300196

/-! ## A238681.P9226793406541748648

`A238086(A166136(n+8)-(n+6))`
-/

namespace A238681.P9226793406541748648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A166136 (n + 8) - (n + 6 : ℤ)).toNat

end

end A238681.P9226793406541748648

/-! ## A238681.P16450425195359936177

`A238086(A024000(n)+A000096(n+8))`
-/

namespace A238681.P16450425195359936177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A024000 n + A000096 (n + 8)).toNat

end

end A238681.P16450425195359936177

/-! ## A238681.P7764707878900092110

`A238086(A056119(n+7)-A008706(n+5))`
-/

namespace A238681.P7764707878900092110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A056119 (n + 7) - A008706 (n + 5)).toNat

end

end A238681.P7764707878900092110

/-!
# A238682: Tenth prime p such that (p+n)^2+n is prime but (p+j)^2+j is not prime for all 0

The programs for A238682, there is no canonical definition to state claims against.
-/

/-! ## A238682.P13274035257411424042

`A238086(A167499(n+8)+5)`
-/

namespace A238682.P13274035257411424042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A167499 (n + 8) + 5).toNat

end

end A238682.P13274035257411424042

/-! ## A238682.P5093278147877664904

`A238086(A000124(n+9)+9)`
-/

namespace A238682.P5093278147877664904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000124 (n + 9) + 9).toNat

end

end A238682.P5093278147877664904

/-! ## A238682.P17886378567080923431

`A238086(A000217(n+9)+10)`
-/

namespace A238682.P17886378567080923431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A000217 (n + 9) + 10).toNat

end

end A238682.P17886378567080923431

/-! ## A238682.P18228999395236776256

`A238086(A161680(n+10)+10)`
-/

namespace A238682.P18228999395236776256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A161680 (n + 10) + 10).toNat

end

end A238682.P18228999395236776256

/-! ## A238682.P14115239616985239500

`A238086(eq[11, A131818(n+1)])`
-/

namespace A238682.P14115239616985239500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238682.P14115239616985239500

/-! ## A238682.P4390577639291964733

`A238086(A055998(n+8)-(n-3))`
-/

namespace A238682.P4390577639291964733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A055998 (n + 8) - ((n : ℤ) - 3)).toNat

end

end A238682.P4390577639291964733

/-! ## A238682.P11538851063425671060

`A238086(A016813(n+10)+A000096(n+4))`
-/

namespace A238682.P11538851063425671060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A016813 (n + 10) + A000096 (n + 4)).toNat

end

end A238682.P11538851063425671060

/-! ## A238682.P5473814874151204598

`A238086(A002620(n+5)+A002620(n+14))`
-/

namespace A238682.P5473814874151204598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A002620 (n + 5) + A002620 (n + 14)).toNat

end

end A238682.P5473814874151204598

/-!
# A238683: Reduced numerators of integral of the Stirling numbers of first kind.

The programs for A238683, there is no canonical definition to state claims against.
-/

/-! ## A238683.P6229387747067434630

`A048994(n)/A002260(n+1)*A238157(n)`
-/

namespace A238683.P6229387747067434630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048994 n : ℚ) / (A002260 (n + 1) : ℚ) * (A238157 n : ℚ)

end

end A238683.P6229387747067434630

/-! ## A238683.P6033072841256791428

`A132393(n)/A140756(n+1)*A238157(n)`
-/

namespace A238683.P6033072841256791428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n : ℚ) / (A140756 (n + 1) : ℚ) * (A238157 n : ℚ)

end

end A238683.P6033072841256791428

/-! ## A238683.P7865894587805991229

`A048994(n)/gcd(A002260(n+1), A132393(n))`
-/

namespace A238683.P7865894587805991229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048994 n : ℚ) / (Int.gcd (A002260 (n + 1)) (A132393 n) : ℚ)

end

end A238683.P7865894587805991229

/-! ## A238683.P11186485955035926969

`A048994(n)/gcd(A048994(n), A140756(n+1))`
-/

namespace A238683.P11186485955035926969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048994 n : ℚ) / (Int.gcd (A048994 n) (A140756 (n + 1)) : ℚ)

end

end A238683.P11186485955035926969

/-! ## A238683.P7475799569176801418

`lcm(A002260(n+1), A048994(n))/A140756(n+1)`
-/

namespace A238683.P7475799569176801418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002260 (n + 1)) (A048994 n) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A238683.P7475799569176801418

/-!
# A238684: a(1) = a(2) = 1; for n > 2, a(n) is the product of prime factors of the n-th Fibonacci number.

The programs for A238684, the canonical program `A238684.P14301598205073559122` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238684 has offset 1).

The definition of A238684 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238684.P14301598205073559122

`A007947(A000045(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A238684

/-- `A007947(A000045(n+1))` -/
def P14301598205073559122.Spec : Prop :=
  ∀ n, P14301598205073559122.a n = A238684 (n + 1)

theorem P14301598205073559122.correct : P14301598205073559122.Spec := by
  intro n
  simp only [A238684, Nat.add_sub_cancel]

end A238684

/-! ## A238684.P15167888632056872515

`∏{d}[n+1, A178763(#)]`
-/

namespace A238684.P15167888632056872515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A178763 d

end

end A238684.P15167888632056872515

namespace A238684

/-- `∏{d}[n+1, A178763(#)]` -/
def P15167888632056872515.Spec : Prop :=
  ∀ n, P15167888632056872515.a n = A238684 (n + 1)

end A238684

/-! ## A238684.P14151052489673905932

`∏{p}[round(ϕ*a(n-1)), #]` with `a(0)=0, a(1)=1`
-/

namespace A238684.P14151052489673905932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A238684.P14151052489673905932

namespace A238684

/-- `∏{p}[round(ϕ*a(n-1)), #]` -/
def P14151052489673905932.Spec : Prop :=
  ∀ n, (P14151052489673905932.a n : ℤ) = A238684 (n + 1)

end A238684

/-! ## A238684.P5729444680865213954

`∏{p}[Δ[floor(ϕ*a(n-1))], #]` with `a(0)=2`
-/

namespace A238684.P5729444680865213954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  ⌊Real.goldenRatio * (f2 (n - 1) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A238684.P5729444680865213954

namespace A238684

/-- `∏{p}[Δ[floor(ϕ*a(n-1))], #]` -/
def P5729444680865213954.Spec : Prop :=
  ∀ n, (P5729444680865213954.a n : ℤ) = A238684 (n + 1)

end A238684

/-! ## A238684.P9666244798155800814

`∏{p}[a(n-1)+a(n-2), #]` with `a(0)=1, a(1)=1`
-/

namespace A238684.P9666244798155800814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A238684.P9666244798155800814

namespace A238684

/-- `∏{p}[a(n-1)+a(n-2), #]` -/
def P9666244798155800814.Spec : Prop :=
  ∀ n, (P9666244798155800814.a n : ℤ) = A238684 (n + 1)

end A238684

/-!
# A238685: a(n) = n! * A129505(n) * (-1)^(n+1).

The programs for A238685, there is no canonical definition to state claims against.
-/

/-! ## A238685.P15959963899266942423

`(n+1)!*A129505(n+1)*(-1)^(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238685.P15959963899266942423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A129505 (n + 1) * (-1) ^ (n + 2)

end

end A238685.P15959963899266942423

/-! ## A238685.P8003728860792063376

`A048594(∑[4*n]+1)`
-/

namespace A238685.P8003728860792063376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048594 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238685.P8003728860792063376

/-! ## A238685.P2500843367573483845

`A028421(A046092(n))*A133942(n)`
-/

namespace A238685.P2500843367573483845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A046092 n).toNat * A133942 n

end

end A238685.P2500843367573483845

/-! ## A238685.P10969662450675724655

`or(A000007(n), A048594(A001844(n)))`
-/

namespace A238685.P10969662450675724655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A048594 (A001844 n).toNat)

end

end A238685.P10969662450675724655

/-! ## A238685.P12689247308069968396

`A014963(A008588(n+1))*A048594(A001844(n))`
-/

namespace A238685.P12689247308069968396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008588 (n + 1)).toNat * A048594 (A001844 n).toNat

end

end A238685.P12689247308069968396

/-!
# A238686: Number of compositions c of n such that no three points (i,c_i), (j,c_j), (k,c_k) are collinear, where c_i denotes the i-th part.

The programs for A238686, there is no canonical definition to state claims against.
-/

/-! ## A238686.P5535248829250845496

`A038716(n)+A002024(A124302(n))`
-/

namespace A238686.P5535248829250845496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038716 n + A002024 (A124302 n).toNat

end

end A238686.P5535248829250845496

/-! ## A238686.P14035718127373714014

`A162425(A181600(n)-1)`
-/

namespace A238686.P14035718127373714014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162425 (A181600 n - 1).toNat

end

end A238686.P14035718127373714014

/-! ## A238686.P3975188526773493596

`A024317(A052952(n)²)+1`
-/

namespace A238686.P3975188526773493596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A052952 n ^ 2).toNat + 1

end

end A238686.P3975188526773493596

/-! ## A238686.P14115285133305386727

`A344615(n)+A076489(A000108(n))`
-/

namespace A238686.P14115285133305386727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344615 n + A076489 (A000108 n).toNat

end

end A238686.P14115285133305386727

/-! ## A238686.P4557742038580921271

`A036378(n)+∑[A001221(A213093(n))]`
-/

namespace A238686.P4557742038580921271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A213093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238686.P4557742038580921271

/-!
# A238688: Triangle read by rows: T(n,k) = A059381(n)/(A059381(k)*A059381(n-k)).

The programs for A238688, there is no canonical definition to state claims against.
-/

/-! ## A238688.P12136090422010449855

`A238453(n)*A238498(n)`
-/

namespace A238688.P12136090422010449855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238453 n * A238498 n

end

end A238688.P12136090422010449855

/-! ## A238688.P792545699412201143

`A238498(n)*A239702(n)*A246465(n)`
-/

namespace A238688.P792545699412201143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238498 n * A239702 n * A246465 n

end

end A238688.P792545699412201143

/-! ## A238688.P6335533201614398492

`A000010(A048804(n))*A246465(n)*A238498(n)`
-/

namespace A238688.P6335533201614398492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A048804 n).toNat * A246465 n * A238498 n

end

end A238688.P6335533201614398492

/-! ## A238688.P11023468905400918705

`A246465(n)²*A007434(A048804(n))`
-/

namespace A238688.P11023468905400918705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246465 n ^ 2 * A007434 (A048804 n).toNat

end

end A238688.P11023468905400918705

/-! ## A238688.P17418669167803997015

`∑{d}[A048804(n), A255914(n)/#]`
-/

namespace A238688.P17418669167803997015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A255914 n : ℚ) / (d : ℚ)

end

end A238688.P17418669167803997015

/-! ## A238688.P13058773164789895009

`A238498(n)/A007318(n)*A255914(n)`
-/

namespace A238688.P13058773164789895009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238498 n : ℚ) / (A007318 n : ℚ) * (A255914 n : ℚ)

end

end A238688.P13058773164789895009

/-! ## A238688.P6075117619898347066

`A238498(n)/Δ[A102363(n)]*A255914(n)`
-/

namespace A238688.P6075117619898347066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238498 n : ℚ) / (f1 (n + 1) - f1 n : ℚ) * (A255914 n : ℚ)

end

end A238688.P6075117619898347066

/-!
# A238689: Table read by rows: first row is {1}; for n >1, T(n, k) is the k-th largest prime factor of n (repeated prime factors are counted repeatedly).

The programs for A238689, there is no canonical definition to state claims against.
-/

/-! ## A238689.P18101614890166495543

`A020639(A285904(n+1))`
-/

namespace A238689.P18101614890166495543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285904 (n + 1)).toNat

end

end A238689.P18101614890166495543

/-! ## A238689.P5495534354762620678

`A014673(2*A285904(n+1))`
-/

namespace A238689.P5495534354762620678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A285904 (n + 1)).toNat

end

end A238689.P5495534354762620678

/-! ## A238689.P4315067146672346537

`A014673(A285904(n+1)+A285904(n+1))`
-/

namespace A238689.P4315067146672346537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A285904 (n + 1) + A285904 (n + 1)).toNat

end

end A238689.P4315067146672346537

/-! ## A238689.P18164712707873149820

`A115561(4*A285904(n+1))`
-/

namespace A238689.P18164712707873149820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (4 * A285904 (n + 1)).toNat

end

end A238689.P18164712707873149820

/-! ## A238689.P3167274651295666006

`A107286(A285904(n+1)²)`
-/

namespace A238689.P3167274651295666006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A285904 (n + 1) ^ 2).toNat

end

end A238689.P3167274651295666006

/-! ## A238689.P17148716632693698208

`A014673(A285904(n+1)²)`
-/

namespace A238689.P17148716632693698208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A285904 (n + 1) ^ 2).toNat

end

end A238689.P17148716632693698208

/-!
# A238690: Let each integer m (1 <= m <= n) be factorized as m = prime_m(1)*prime_m(2)*...*prime_m(bigomega(m)), with the primes sorted in nonincreasing order. Then a(n) is the number of values of m such that each prime_m(i) <= prime_n(i).

The programs for A238690, the canonical program `A238690.P9686778180323937467` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238690 has offset 1).

The definition of A238690 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085082, A181821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238690.P9686778180323937467

`A085082(A181821(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A238690

/-- `A085082(A181821(n+1))` -/
def P9686778180323937467.Spec : Prop :=
  ∀ n, P9686778180323937467.a n = A238690 (n + 1)

theorem P9686778180323937467.correct : P9686778180323937467.Spec := by
  intro n
  simp only [A238690, Nat.add_sub_cancel]

end A238690

/-! ## A238690.P8139887529814263924

`A238746(A361808(n+1))`
-/

namespace A238690.P8139887529814263924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238746 (A361808 (n + 1)).toNat

end

end A238690.P8139887529814263924

namespace A238690

/-- `A238746(A361808(n+1))` -/
def P8139887529814263924.Spec : Prop :=
  ∀ n, P8139887529814263924.a n = A238690 (n + 1)

end A238690

/-! ## A238690.P9354612361182266292

`∑{d}[A181821(n+1), A322585(#)]`
-/

namespace A238690.P9354612361182266292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A238690.P9354612361182266292

namespace A238690

/-- `∑{d}[A181821(n+1), A322585(#)]` -/
def P9354612361182266292.Spec : Prop :=
  ∀ n, P9354612361182266292.a n = A238690 (n + 1)

end A238690

/-! ## A238690.P9236182985262368145

`∑{d}[A122111(n+1)*A181811(A322865(n+1)), A322585(#)]`
-/

namespace A238690.P9236182985262368145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) * A181811 (A322865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A238690.P9236182985262368145

namespace A238690

/-- `∑{d}[A122111(n+1)*A181811(A322865(n+1)), A322585(#)]` -/
def P9236182985262368145.Spec : Prop :=
  ∀ n, P9236182985262368145.a n = A238690 (n + 1)

end A238690

/-! ## A238690.P9067922985295808971

`A347205(2*A156552(n+1))`
-/

namespace A238690.P9067922985295808971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (2 * A156552 (n + 1)).toNat

end

end A238690.P9067922985295808971

namespace A238690

/-- `A347205(2*A156552(n+1))` -/
def P9067922985295808971.Spec : Prop :=
  ∀ n, P9067922985295808971.a n = A238690 (n + 1)

end A238690

/-!
# A238691: a(n) = A190339(n)/A224911(n).

The programs for A238691, there is no canonical definition to state claims against.
-/

/-! ## A238691.P9882979847043306827

`A190339(n)/A060308(n+1)`
-/

namespace A238691.P9882979847043306827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190339 n : ℚ) / (A060308 (n + 1) : ℚ)

end

end A238691.P9882979847043306827

/-! ## A238691.P540175069216739145

`A190339(n)/A000040(A099802(n+1))`
-/

namespace A238691.P540175069216739145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190339 n : ℚ) / (A000040 (A099802 (n + 1)).toNat : ℚ)

end

end A238691.P540175069216739145

/-! ## A238691.P150268508094251268

`A190339(n)/A055377(A059558(n+1))`
-/

namespace A238691.P150268508094251268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190339 n : ℚ) / (A055377 (A059558 (n + 1)).toNat : ℚ)

end

end A238691.P150268508094251268

/-! ## A238691.P9783533986492295061

`A190339(n)/A136548(A144396(n+1))`
-/

namespace A238691.P9783533986492295061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190339 n : ℚ) / (A136548 (A144396 (n + 1)).toNat : ℚ)

end

end A238691.P9783533986492295061

/-! ## A238691.P13226952531484469861

`(A181131(n)+A169585(n))/A060308(n+1)`
-/

namespace A238691.P13226952531484469861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181131 n + A169585 n : ℚ) / (A060308 (n + 1) : ℚ)

end

end A238691.P13226952531484469861

/-! ## A238691.P2189396622005955108

`gcd(∏[A238256(n+1)], A190339(n))`
-/

namespace A238691.P2189396622005955108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A190339 n)

end

end A238691.P2189396622005955108

/-!
# A238696: a(n) = Sum_{k=0..floor(n/2)} binomial(n*(n-k), n*k).

The programs for A238696, there is no canonical definition to state claims against.
-/

/-! ## A238696.P8465136434419012355

`A331677(∑[34*a(n-1)-a(n-2)])` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A238696.P8465136434419012355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331677 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238696.P8465136434419012355

/-!
# A238699: Primes p such that 2p + 3 and 4p + 3 are both prime.

The programs for A238699, there is no canonical definition to state claims against.
-/

/-! ## A238699.P7203772769669094569

`∩[A023204(n+1), A023213(n+1)]`
-/

namespace A238699.P7203772769669094569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P7203772769669094569

/-! ## A238699.P12733323992752483023

`p?[A115334(n+1)]`
-/

namespace A238699.P12733323992752483023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238699.P12733323992752483023

/-! ## A238699.P1082725702049886362

`∩[A023204(n+1), A115334(n+1)]`
-/

namespace A238699.P1082725702049886362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P1082725702049886362

/-! ## A238699.P14939082666000039734

`∩[A023213(n+1), A115334(n+1)]`
-/

namespace A238699.P14939082666000039734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P14939082666000039734

/-! ## A238699.P14587377211157214106

`∩[A045356(n+1), A115334(n+1)]`
-/

namespace A238699.P14587377211157214106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P14587377211157214106

/-! ## A238699.P4569073788202495518

`∩[A042991(n+1), A115334(n+1)]`
-/

namespace A238699.P4569073788202495518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P4569073788202495518

/-! ## A238699.P5709550903646766276

`∩[A045348(n+1), A115334(n+1)]`
-/

namespace A238699.P5709550903646766276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P5709550903646766276

/-! ## A238699.P7474749270172077777

`∩[A080191(n+1), A115334(n+1)]`
-/

namespace A238699.P7474749270172077777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P7474749270172077777

/-! ## A238699.P9816512661594268940

`∩[A049557(n+1), A115334(n+1)]`
-/

namespace A238699.P9816512661594268940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P9816512661594268940

/-! ## A238699.P5679798797877191877

`∩[A040159(n+1), A115334(n+1)]`
-/

namespace A238699.P5679798797877191877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P5679798797877191877

/-! ## A238699.P12959224290807556032

`∩[A040161(n+1), A115334(n+1)]`
-/

namespace A238699.P12959224290807556032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P12959224290807556032

/-! ## A238699.P16320161850222514177

`∩[A040165(n+1), A115334(n+1)]`
-/

namespace A238699.P16320161850222514177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P16320161850222514177

/-! ## A238699.P16317640048827254132

`∩[A040169(n+1), A115334(n+1)]`
-/

namespace A238699.P16317640048827254132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P16317640048827254132

/-! ## A238699.P17236102693179716322

`∩[A040171(n+1), A115334(n+1)]`
-/

namespace A238699.P17236102693179716322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P17236102693179716322

/-! ## A238699.P7542852310047446844

`∩[A040177(n+1), A115334(n+1)]`
-/

namespace A238699.P7542852310047446844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P7542852310047446844

/-! ## A238699.P9590490031893917085

`∩[A040179(n+1), A115334(n+1)]`
-/

namespace A238699.P9590490031893917085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P9590490031893917085

/-! ## A238699.P8792331166304378442

`∩[A040184(n+1), A115334(n+1)]`
-/

namespace A238699.P8792331166304378442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P8792331166304378442

/-! ## A238699.P13189005238222460781

`∩[A040970(n+1), A115334(n+1)]`
-/

namespace A238699.P13189005238222460781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238699.P13189005238222460781

