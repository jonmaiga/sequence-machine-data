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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A132400: Period 4: repeat [1, 5, 3, 1].

The programs for A132400, the canonical program `A132400.P3460378576876306140` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132400 has offset 0).

The definition of A132400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132400.P3460378576876306140

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132400

/-- `a(n-4)` -/
def P3460378576876306140.Spec : Prop :=
  ∀ n, (P3460378576876306140.a n : ℤ) = A132400 n

theorem P3460378576876306140.correct : P3460378576876306140.Spec := by
  intro n
  simp only [A132400]

end A132400

/-!
# A132401: Period 8: repeat 0, 0, 1, 1, 2, -1, -1, -2.

The programs for A132401, the canonical program `A132401.P17049995401652107554` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132401 has offset 0).

The definition of A132401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132401.P17049995401652107554

`gcd(4, n)-(a(n-4)+2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132401

/-- `gcd(4, n)-(a(n-4)+2)` -/
def P17049995401652107554.Spec : Prop :=
  ∀ n, P17049995401652107554.a n = A132401 n

theorem P17049995401652107554.correct : P17049995401652107554.Spec := by
  intro n
  simp only [A132401]

end A132401

/-!
# A132402: Binomial transform of A004524 starting at 1.

The programs for A132402, the canonical program `A132402.P3234086134713568390` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132402 has offset 0).

The definition of A132402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132402.P3234086134713568390

`6*a(n-1)-14*a(n-2)+16*a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132402

/-- `6*a(n-1)-14*a(n-2)+16*a(n-3)-8*a(n-4)` -/
def P3234086134713568390.Spec : Prop :=
  ∀ n, P3234086134713568390.a n = A132402 n

theorem P3234086134713568390.correct : P3234086134713568390.Spec := by
  intro n
  simp only [A132402]

end A132402

/-! ## A132402.P14842886305779037604

`A323225(n)+2^n`
-/

namespace A132402.P14842886305779037604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 n + (2 ^ n : ℤ)

end

end A132402.P14842886305779037604

namespace A132402

/-- `A323225(n)+2^n` -/
def P14842886305779037604.Spec : Prop :=
  ∀ n, P14842886305779037604.a n = A132402 n

end A132402

/-! ## A132402.P7423601889588335878

`A038503(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A132402.P7423601889588335878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038503 n + 2 * a (n - 1)

end

end A132402.P7423601889588335878

namespace A132402

/-- `A038503(n)+2*a(n-1)` -/
def P7423601889588335878.Spec : Prop :=
  ∀ n, P7423601889588335878.a n = A132402 n

end A132402

/-! ## A132402.P7984276726588961819

`A045623(n)+A038504(n)`
-/

namespace A132402.P7984276726588961819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + A038504 n

end

end A132402.P7984276726588961819

namespace A132402

/-- `A045623(n)+A038504(n)` -/
def P7984276726588961819.Spec : Prop :=
  ∀ n, P7984276726588961819.a n = A132402 n

end A132402

/-! ## A132402.P15653161107554638512

`A135035(n)+A038505(n)`
-/

namespace A132402.P15653161107554638512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135035 n + A038505 n

end

end A132402.P15653161107554638512

namespace A132402

/-- `A135035(n)+A038505(n)` -/
def P15653161107554638512.Spec : Prop :=
  ∀ n, P15653161107554638512.a n = A132402 n

theorem P15653161107554638512.correct : P15653161107554638512.Spec := by
  intro n
  simp only [A132402, Nat.add_sub_cancel, A132402.P15653161107554638512.a, A132402.P3234086134713568390.a, A038505, A038505.P15386344615957042470.a, A135035, A135035.P17855894899510383413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132402

/-! ## A132402.P13652109297067471768

`A045891(n+1)-A000749(n)`
-/

namespace A132402.P13652109297067471768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) - A000749 n

end

end A132402.P13652109297067471768

namespace A132402

/-- `A045891(n+1)-A000749(n)` -/
def P13652109297067471768.Spec : Prop :=
  ∀ n, P13652109297067471768.a n = A132402 n

end A132402

/-! ## A132402.P13207287185930716210

`A000051(n)+A323225(n)-1`
-/

namespace A132402.P13207287185930716210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A323225 n - 1)

end

end A132402.P13207287185930716210

namespace A132402

/-- `A000051(n)+A323225(n)-1` -/
def P13207287185930716210.Spec : Prop :=
  ∀ n, P13207287185930716210.a n = A132402 n

end A132402

/-! ## A132402.P10089298265061922148

`A045623(n)+Δ[Δ[A000749(n)]]`
-/

namespace A132402.P10089298265061922148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (f1 (n + 1) - f1 n)

end

end A132402.P10089298265061922148

namespace A132402

/-- `A045623(n)+Δ[Δ[A000749(n)]]` -/
def P10089298265061922148.Spec : Prop :=
  ∀ n, P10089298265061922148.a n = A132402 n

end A132402

/-! ## A132402.P8498127008932381407

`A038505(n)+∑[A109975(n)-A038505(n)]`
-/

namespace A132402.P8498127008932381407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n - A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132402.P8498127008932381407

namespace A132402

/-- `A038505(n)+∑[A109975(n)-A038505(n)]` -/
def P8498127008932381407.Spec : Prop :=
  ∀ n, P8498127008932381407.a n = A132402 n

end A132402

/-! ## A132402.P3313264826488732223

`∑[A038503(n)/A000079(n)]*A000079(n)`
-/

namespace A132402.P3313264826488732223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038503 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A132402.P3313264826488732223

namespace A132402

/-- `∑[A038503(n)/A000079(n)]*A000079(n)` -/
def P3313264826488732223.Spec : Prop :=
  ∀ n, P3313264826488732223.a n = (A132402 n : ℚ)

end A132402

/-! ## A132402.P6209803537777677736

`A000749(n+1)+A135035(n)-A000749(n)`
-/

namespace A132402.P6209803537777677736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) + (A135035 n - A000749 n)

end

end A132402.P6209803537777677736

namespace A132402

/-- `A000749(n+1)+A135035(n)-A000749(n)` -/
def P6209803537777677736.Spec : Prop :=
  ∀ n, P6209803537777677736.a n = A132402 n

end A132402

/-! ## A132402.P9590250797221005522

`Δ[A045623(n)]-A000749(n)`
-/

namespace A132402.P9590250797221005522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000749 n

end

end A132402.P9590250797221005522

namespace A132402

/-- `Δ[A045623(n)]-A000749(n)` -/
def P9590250797221005522.Spec : Prop :=
  ∀ n, P9590250797221005522.a n = A132402 n

end A132402

/-! ## A132402.P6494601059193754232

`A038505(n+1)+Δ[A323225(n)]`
-/

namespace A132402.P6494601059193754232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) + (f1 (n + 1) - f1 n)

end

end A132402.P6494601059193754232

namespace A132402

/-- `A038505(n+1)+Δ[A323225(n)]` -/
def P6494601059193754232.Spec : Prop :=
  ∀ n, P6494601059193754232.a n = A132402 n

end A132402

/-! ## A132402.P5624187572657160207

`A045623(n+1)-(A045623(n)+A000749(n))`
-/

namespace A132402.P5624187572657160207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) - (A045623 n + A000749 n)

end

end A132402.P5624187572657160207

namespace A132402

/-- `A045623(n+1)-(A045623(n)+A000749(n))` -/
def P5624187572657160207.Spec : Prop :=
  ∀ n, P5624187572657160207.a n = A132402 n

end A132402

/-! ## A132402.P17201007076719557833

`A038505(n+1)+A323225(n+1)-A323225(n)`
-/

namespace A132402.P17201007076719557833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) + (A323225 (n + 1) - A323225 n)

end

end A132402.P17201007076719557833

namespace A132402

/-- `A038505(n+1)+A323225(n+1)-A323225(n)` -/
def P17201007076719557833.Spec : Prop :=
  ∀ n, P17201007076719557833.a n = A132402 n

end A132402

/-!
# A132403: Triangle read by rows: T(n,k) = nextprime( T(n-1,k) + T(n-1,k-1) ), where nextprime = A151800.

The programs for A132403, there is no canonical definition to state claims against.
-/

/-! ## A132403.P3692603485460865868

`A181659(A003991(n+1)%A341058(3*n+2))`
-/

namespace A132403.P3692603485460865868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181659 (Int.tmod (A003991 (n + 1)) (A341058 (3 * n + 2))).toNat

end

end A132403.P3692603485460865868

/-! ## A132403.P3935959241991223344

`A181659(A003991(n+1))%A341015(2*n+5)`
-/

namespace A132403.P3935959241991223344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181659 (A003991 (n + 1)).toNat) (A341015 (2 * n + 5))

end

end A132403.P3935959241991223344

/-! ## A132403.P7666531115185225147

`A008578(A131923(n))^A015070(n)!`
-/

namespace A132403.P7666531115185225147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A131923 n).toNat ^ Nat.factorial (A015070 n).toNat

end

end A132403.P7666531115185225147

/-! ## A132403.P9320886298404945248

`A008578(A131923(n))%p?[A232779(n)]`
-/

namespace A132403.P9320886298404945248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A131923 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A132403.P9320886298404945248

/-! ## A132403.P14788349341825798678

`A008578(A131923(n)%A151913(n+1))`
-/

namespace A132403.P14788349341825798678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.tmod (A131923 n) (A151913 (n + 1))).toNat

end

end A132403.P14788349341825798678

/-!
# A132405: Floor(exp(n)/n^2).

The programs for A132405, the canonical program `A132405.P17508344636815326094` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132405 has offset 1).

The definition of A132405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(n+1)/(n+1)²)` (program `A132405.P17508344636815326094`, by `A132405.P17508344636815326094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132405.P17508344636815326094

`floor(exp(n+1)/(n+1)²)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132405

/-- `floor(exp(n+1)/(n+1)²)` -/
def P17508344636815326094.Spec : Prop :=
  ∀ n, P17508344636815326094.a n = A132405 (n + 1)

theorem P17508344636815326094.correct : P17508344636815326094.Spec := by
  intro n
  simp only [A132405, Nat.add_sub_cancel]

end A132405

/-! ## A132405.P15833094457517352652

`A132408(n+1)-1`
-/

namespace A132405.P15833094457517352652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132408 (n + 1) - 1

end

end A132405.P15833094457517352652

namespace A132405

/-- `A132408(n+1)-1` -/
def P15833094457517352652.Spec : Prop :=
  ∀ n, P15833094457517352652.a n = A132405 (n + 1)

end A132405

/-! ## A132405.P17528443823109976796

`A163805(gcd(n, n+1))+A132408(n+1)`
-/

namespace A132405.P17528443823109976796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (Nat.gcd n (n + 1)) + A132408 (n + 1)

end

end A132405.P17528443823109976796

namespace A132405

/-- `A163805(gcd(n, n+1))+A132408(n+1)` -/
def P17528443823109976796.Spec : Prop :=
  ∀ n, P17528443823109976796.a n = A132405 (n + 1)

end A132405

/-! ## A132405.P7774681876650206982

`A132429(2*(2*n+1))+A132408(n+1)`
-/

namespace A132405.P7774681876650206982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (2 * (2 * n + 1)) + A132408 (n + 1)

end

end A132405.P7774681876650206982

namespace A132405

/-- `A132429(2*(2*n+1))+A132408(n+1)` -/
def P7774681876650206982.Spec : Prop :=
  ∀ n, P7774681876650206982.a n = A132405 (n + 1)

end A132405

/-! ## A132405.P10846092144782555189

`A144432(A127739(n+1))+A132408(n+1)`
-/

namespace A132405.P10846092144782555189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (A127739 (n + 1)).toNat + A132408 (n + 1)

end

end A132405.P10846092144782555189

namespace A132405

/-- `A144432(A127739(n+1))+A132408(n+1)` -/
def P10846092144782555189.Spec : Prop :=
  ∀ n, P10846092144782555189.a n = A132405 (n + 1)

end A132405

/-! ## A132405.P15586425755379937220

`A316441(A000040(n+1))+A132408(n+1)`
-/

namespace A132405.P15586425755379937220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A132408 (n + 1)

end

end A132405.P15586425755379937220

namespace A132405

/-- `A316441(A000040(n+1))+A132408(n+1)` -/
def P15586425755379937220.Spec : Prop :=
  ∀ n, P15586425755379937220.a n = A132405 (n + 1)

end A132405

/-! ## A132405.P11338573362500132151

`A316441(A054822(n+1))+A132408(n+1)`
-/

namespace A132405.P11338573362500132151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A054822 (n + 1)).toNat + A132408 (n + 1)

end

end A132405.P11338573362500132151

namespace A132405

/-- `A316441(A054822(n+1))+A132408(n+1)` -/
def P11338573362500132151.Spec : Prop :=
  ∀ n, P11338573362500132151.a n = A132405 (n + 1)

end A132405

/-! ## A132405.P11651888024870022814

`ceil(A132407(n+1)/(n+1))-1`
-/

namespace A132405.P11651888024870022814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132407 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A132405.P11651888024870022814

namespace A132405

/-- `ceil(A132407(n+1)/(n+1))-1` -/
def P11651888024870022814.Spec : Prop :=
  ∀ n, P11651888024870022814.a n = A132405 (n + 1)

end A132405

/-! ## A132405.P11975440611564335561

`A208769(A031368(n+1))+A132408(n+1)`
-/

namespace A132405.P11975440611564335561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208769 (A031368 (n + 1)).toNat + A132408 (n + 1)

end

end A132405.P11975440611564335561

namespace A132405

/-- `A208769(A031368(n+1))+A132408(n+1)` -/
def P11975440611564335561.Spec : Prop :=
  ∀ n, P11975440611564335561.a n = A132405 (n + 1)

end A132405

/-! ## A132405.P12051559055413625546

`A132419(A139280(n+1))+A132408(n+1)`
-/

namespace A132405.P12051559055413625546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 (A139280 (n + 1)).toNat + A132408 (n + 1)

end

end A132405.P12051559055413625546

namespace A132405

/-- `A132419(A139280(n+1))+A132408(n+1)` -/
def P12051559055413625546.Spec : Prop :=
  ∀ n, P12051559055413625546.a n = A132405 (n + 1)

end A132405

/-!
# A132406: Floor(exp(n)/n^3).

The programs for A132406, the canonical program `A132406.P1871691465811708931` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132406 has offset 1).

The definition of A132406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(n+1)/(n+1)^3)` (program `A132406.P1871691465811708931`, by `A132406.P1871691465811708931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132406.P1871691465811708931

`floor(exp(n+1)/(n+1)^3)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132406

/-- `floor(exp(n+1)/(n+1)^3)` -/
def P1871691465811708931.Spec : Prop :=
  ∀ n, P1871691465811708931.a n = A132406 (n + 1)

theorem P1871691465811708931.correct : P1871691465811708931.Spec := by
  intro n
  simp only [A132406, Nat.add_sub_cancel]

end A132406

/-! ## A132406.P3942315631605881223

`A132409(n+1)-1`
-/

namespace A132406.P3942315631605881223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132409 (n + 1) - 1

end

end A132406.P3942315631605881223

namespace A132406

/-- `A132409(n+1)-1` -/
def P3942315631605881223.Spec : Prop :=
  ∀ n, P3942315631605881223.a n = A132406 (n + 1)

end A132406

/-! ## A132406.P7008486661047283172

`A163805(gcd(n, n+1))+A132409(n+1)`
-/

namespace A132406.P7008486661047283172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (Nat.gcd n (n + 1)) + A132409 (n + 1)

end

end A132406.P7008486661047283172

namespace A132406

/-- `A163805(gcd(n, n+1))+A132409(n+1)` -/
def P7008486661047283172.Spec : Prop :=
  ∀ n, P7008486661047283172.a n = A132406 (n + 1)

end A132406

/-! ## A132406.P7996046166445792976

`A132429(2*(2*n+1))+A132409(n+1)`
-/

namespace A132406.P7996046166445792976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (2 * (2 * n + 1)) + A132409 (n + 1)

end

end A132406.P7996046166445792976

namespace A132406

/-- `A132429(2*(2*n+1))+A132409(n+1)` -/
def P7996046166445792976.Spec : Prop :=
  ∀ n, P7996046166445792976.a n = A132406 (n + 1)

end A132406

/-! ## A132406.P3070924335999453784

`A208769(A038614(n+1))+A132409(n+1)`
-/

namespace A132406.P3070924335999453784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208769 (A038614 (n + 1)).toNat + A132409 (n + 1)

end

end A132406.P3070924335999453784

namespace A132406

/-- `A208769(A038614(n+1))+A132409(n+1)` -/
def P3070924335999453784.Spec : Prop :=
  ∀ n, P3070924335999453784.a n = A132406 (n + 1)

end A132406

/-! ## A132406.P1857903003909694744

`ceil(A132408(n+1)/(n+1))-1`
-/

namespace A132406.P1857903003909694744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132408 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A132406.P1857903003909694744

namespace A132406

/-- `ceil(A132408(n+1)/(n+1))-1` -/
def P1857903003909694744.Spec : Prop :=
  ∀ n, P1857903003909694744.a n = A132406 (n + 1)

end A132406

/-! ## A132406.P6637897399784801020

`A208769(A031368(n+1))+A132409(n+1)`
-/

namespace A132406.P6637897399784801020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208769 (A031368 (n + 1)).toNat + A132409 (n + 1)

end

end A132406.P6637897399784801020

namespace A132406

/-- `A208769(A031368(n+1))+A132409(n+1)` -/
def P6637897399784801020.Spec : Prop :=
  ∀ n, P6637897399784801020.a n = A132406 (n + 1)

end A132406

/-! ## A132406.P1275876046321295663

`A137454(A014963((∑{e}[n, #]+1)!))+A132409(n+1)`
-/

namespace A132406.P1275876046321295663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137454 (A014963 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1))).toNat + A132409 (n + 1)

end

end A132406.P1275876046321295663

namespace A132406

/-- `A137454(A014963((∑{e}[n, #]+1)!))+A132409(n+1)` -/
def P1275876046321295663.Spec : Prop :=
  ∀ n, P1275876046321295663.a n = A132406 (n + 1)

end A132406

/-! ## A132406.P5010904392492528338

`A132419(A139280(n+1))+A132409(n+1)`
-/

namespace A132406.P5010904392492528338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 (A139280 (n + 1)).toNat + A132409 (n + 1)

end

end A132406.P5010904392492528338

namespace A132406

/-- `A132419(A139280(n+1))+A132409(n+1)` -/
def P5010904392492528338.Spec : Prop :=
  ∀ n, P5010904392492528338.a n = A132406 (n + 1)

end A132406

/-! ## A132406.P1076149875019057377

`A132419(A132383(n+2))+A132409(n+1)`
-/

namespace A132406.P1076149875019057377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 (A132383 (n + 2)).toNat + A132409 (n + 1)

end

end A132406.P1076149875019057377

namespace A132406

/-- `A132419(A132383(n+2))+A132409(n+1)` -/
def P1076149875019057377.Spec : Prop :=
  ∀ n, P1076149875019057377.a n = A132406 (n + 1)

end A132406

/-!
# A132407: a(n) = ceiling(exp(n)/n).

The programs for A132407, the canonical program `A132407.P12247966446801679962` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132407 has offset 1).

The definition of A132407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(exp(n+1)/(n+1))` (program `A132407.P12247966446801679962`, by `A132407.P12247966446801679962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132407.P12247966446801679962

`ceil(exp(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132407

/-- `ceil(exp(n+1)/(n+1))` -/
def P12247966446801679962.Spec : Prop :=
  ∀ n, P12247966446801679962.a n = A132407 (n + 1)

theorem P12247966446801679962.correct : P12247966446801679962.Spec := by
  intro n
  simp only [A132407, Nat.add_sub_cancel]

end A132407

/-! ## A132407.P10231494334604873534

`A107316(n+1)+1`
-/

namespace A132407.P10231494334604873534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107316 (n + 1) + 1

end

end A132407.P10231494334604873534

namespace A132407

/-- `A107316(n+1)+1` -/
def P10231494334604873534.Spec : Prop :=
  ∀ n, P10231494334604873534.a n = A132407 (n + 1)

end A132407

/-! ## A132407.P16885669515354445654

`A128105(n+1)/(n+1)`
-/

namespace A132407.P16885669515354445654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128105 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A132407.P16885669515354445654

namespace A132407

/-- `A128105(n+1)/(n+1)` -/
def P16885669515354445654.Spec : Prop :=
  ∀ n, P16885669515354445654.a n = (A132407 (n + 1) : ℚ)

end A132407

/-! ## A132407.P6709664604296495204

`floor(A045650(n+1)/(n+1))`
-/

namespace A132407.P6709664604296495204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045650 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A132407.P6709664604296495204

namespace A132407

/-- `floor(A045650(n+1)/(n+1))` -/
def P6709664604296495204.Spec : Prop :=
  ∀ n, P6709664604296495204.a n = A132407 (n + 1)

end A132407

/-! ## A132407.P3689049691076526824

`A128104(n+1)/(n+1)+1`
-/

namespace A132407.P3689049691076526824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128104 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A132407.P3689049691076526824

namespace A132407

/-- `A128104(n+1)/(n+1)+1` -/
def P3689049691076526824.Spec : Prop :=
  ∀ n, P3689049691076526824.a n = (A132407 (n + 1) : ℚ)

end A132407

/-! ## A132407.P3116926997887266289

`floor(A000149(n+1)/(n+1))+1`
-/

namespace A132407.P3116926997887266289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000149 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A132407.P3116926997887266289

namespace A132407

/-- `floor(A000149(n+1)/(n+1))+1` -/
def P3116926997887266289.Spec : Prop :=
  ∀ n, P3116926997887266289.a n = A132407 (n + 1)

end A132407

/-! ## A132407.P14801822826609751350

`floor(2/(n+1)*sinh(n+1))+1`
-/

namespace A132407.P14801822826609751350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / (n + 1 : ℚ) : ℝ) * Real.sinh (n + 1 : ℝ)⌋ + 1

end

end A132407.P14801822826609751350

namespace A132407

/-- `floor(2/(n+1)*sinh(n+1))+1` -/
def P14801822826609751350.Spec : Prop :=
  ∀ n, P14801822826609751350.a n = A132407 (n + 1)

end A132407

/-!
# A132408: Ceiling(exp(n)/n^2).

The programs for A132408, the canonical program `A132408.P2193815718934977843` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132408 has offset 1).

The definition of A132408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(exp(n+1)/(n+1)²)` (program `A132408.P2193815718934977843`, by `A132408.P2193815718934977843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132408.P2193815718934977843

`ceil(exp(n+1)/(n+1)²)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132408

/-- `ceil(exp(n+1)/(n+1)²)` -/
def P2193815718934977843.Spec : Prop :=
  ∀ n, P2193815718934977843.a n = A132408 (n + 1)

theorem P2193815718934977843.correct : P2193815718934977843.Spec := by
  intro n
  simp only [A132408, Nat.add_sub_cancel]

end A132408

/-! ## A132408.P15974536705804680051

`A132405(n+1)+1`
-/

namespace A132408.P15974536705804680051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132405 (n + 1) + 1

end

end A132408.P15974536705804680051

namespace A132408

/-- `A132405(n+1)+1` -/
def P15974536705804680051.Spec : Prop :=
  ∀ n, P15974536705804680051.a n = A132408 (n + 1)

end A132408

/-! ## A132408.P2739249027844654045

`abs(floor(A132407(n+1)/A001478(n+1)))`
-/

namespace A132408.P2739249027844654045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A132407 (n + 1) : ℚ) / (A001478 (n + 1) : ℚ)⌋|

end

end A132408.P2739249027844654045

namespace A132408

/-- `abs(floor(A132407(n+1)/A001478(n+1)))` -/
def P2739249027844654045.Spec : Prop :=
  ∀ n, P2739249027844654045.a n = A132408 (n + 1)

end A132408

/-! ## A132408.P17908828260072113038

`floor((exp((n+1)/2)/(n+1))²)+A132407(n+1)-A107316(n+1)`
-/

namespace A132408.P17908828260072113038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp ((n + 1 : ℚ) / 2 : ℝ) / (n + 1 : ℝ)) ^ 2⌋ + (A132407 (n + 1) - A107316 (n + 1))

end

end A132408.P17908828260072113038

namespace A132408

/-- `floor((exp((n+1)/2)/(n+1))²)+A132407(n+1)-A107316(n+1)` -/
def P17908828260072113038.Spec : Prop :=
  ∀ n, P17908828260072113038.a n = A132408 (n + 1)

end A132408

/-! ## A132408.P12152905371404045977

`floor((exp((n+1)/2)/(n+1))²)-A208769(A054822(n+1))`
-/

namespace A132408.P12152905371404045977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp ((n + 1 : ℚ) / 2 : ℝ) / (n + 1 : ℝ)) ^ 2⌋ - A208769 (A054822 (n + 1)).toNat

end

end A132408.P12152905371404045977

namespace A132408

/-- `floor((exp((n+1)/2)/(n+1))²)-A208769(A054822(n+1))` -/
def P12152905371404045977.Spec : Prop :=
  ∀ n, P12152905371404045977.a n = A132408 (n + 1)

end A132408

/-!
# A132409: Ceiling(exp(n)/n^3).

The programs for A132409, the canonical program `A132409.P11612501948037646091` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132409 has offset 1).

The definition of A132409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(exp(n+1)/(n+1)^3)` (program `A132409.P11612501948037646091`, by `A132409.P11612501948037646091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132409.P11612501948037646091

`ceil(exp(n+1)/(n+1)^3)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132409

/-- `ceil(exp(n+1)/(n+1)^3)` -/
def P11612501948037646091.Spec : Prop :=
  ∀ n, P11612501948037646091.a n = A132409 (n + 1)

theorem P11612501948037646091.correct : P11612501948037646091.Spec := by
  intro n
  simp only [A132409, Nat.add_sub_cancel]

end A132409

/-! ## A132409.P13049582916892029187

`A132406(n+1)+1`
-/

namespace A132409.P13049582916892029187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132406 (n + 1) + 1

end

end A132409.P13049582916892029187

namespace A132409

/-- `A132406(n+1)+1` -/
def P13049582916892029187.Spec : Prop :=
  ∀ n, P13049582916892029187.a n = A132409 (n + 1)

end A132409

/-!
# A132411: a(0) = 0, a(1) = 1 and a(n) = n^2 - 1 with n >= 2.

The programs for A132411, the canonical program `A132411.P4426835114870435905` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132411 has offset 0).

The definition of A132411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132411.P4426835114870435905

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8, a(4)=15`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132411

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4426835114870435905.Spec : Prop :=
  ∀ n, P4426835114870435905.a n = A132411 n

theorem P4426835114870435905.correct : P4426835114870435905.Spec := by
  intro n
  simp only [A132411]

end A132411

/-! ## A132411.P13455423882216000260

`n²-floor(atan(n))`
-/

namespace A132411.P13455423882216000260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊Real.arctan (n : ℝ)⌋

end

end A132411.P13455423882216000260

namespace A132411

/-- `n²-floor(atan(n))` -/
def P13455423882216000260.Spec : Prop :=
  ∀ n, P13455423882216000260.a n = A132411 n

end A132411

/-! ## A132411.P8109951432021838979

`ceil(n²-atan(n))`
-/

namespace A132411.P8109951432021838979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) - Real.arctan (n : ℝ)⌉

end

end A132411.P8109951432021838979

namespace A132411

/-- `ceil(n²-atan(n))` -/
def P8109951432021838979.Spec : Prop :=
  ∀ n, P8109951432021838979.a n = A132411 n

end A132411

/-! ## A132411.P7347736045818292438

`record[abs(n*(2-n))]`
-/

namespace A132411.P7347736045818292438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (2 - (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132411.P7347736045818292438

namespace A132411

/-- `record[abs(n*(2-n))]` -/
def P7347736045818292438.Spec : Prop :=
  ∀ n, P7347736045818292438.a n = A132411 n

end A132411

/-! ## A132411.P1530346358568636559

`round((n²*acot(n))²)`
-/

namespace A132411.P1530346358568636559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)) ^ 2)

end

end A132411.P1530346358568636559

namespace A132411

/-- `round((n²*acot(n))²)` -/
def P1530346358568636559.Spec : Prop :=
  ∀ n, P1530346358568636559.a n = A132411 n

end A132411

/-! ## A132411.P10176023932357344404

`n²-floor(acot(acot(n)))`
-/

namespace A132411.P10176023932357344404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋

end

end A132411.P10176023932357344404

namespace A132411

/-- `n²-floor(acot(acot(n)))` -/
def P10176023932357344404.Spec : Prop :=
  ∀ n, P10176023932357344404.a n = A132411 n

end A132411

/-! ## A132411.P77565717197237011

`ceil(n²-acot(acot(n)))`
-/

namespace A132411.P77565717197237011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) - SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉

end

end A132411.P77565717197237011

namespace A132411

/-- `ceil(n²-acot(acot(n)))` -/
def P77565717197237011.Spec : Prop :=
  ∀ n, P77565717197237011.a n = A132411 n

end A132411

/-! ## A132411.P18311936332316285108

`sqrt(record[(n*(2-n))²])`
-/

namespace A132411.P18311936332316285108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (2 - (n : ℤ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A132411.P18311936332316285108

namespace A132411

/-- `sqrt(record[(n*(2-n))²])` -/
def P18311936332316285108.Spec : Prop :=
  ∀ n, P18311936332316285108.a n = (A132411 n : ℝ)

end A132411

/-! ## A132411.P6983850776215083267

`round(n²-atan(n)/2)`
-/

namespace A132411.P6983850776215083267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) - Real.arctan (n : ℝ) / 2)

end

end A132411.P6983850776215083267

namespace A132411

/-- `round(n²-atan(n)/2)` -/
def P6983850776215083267.Spec : Prop :=
  ∀ n, P6983850776215083267.a n = A132411 n

end A132411

/-! ## A132411.P16480572071173471161

`round((n-acot(n)/3)²)`
-/

namespace A132411.P16480572071173471161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - SequenceMachineLib.acot (n : ℝ) / 3) ^ 2)

end

end A132411.P16480572071173471161

namespace A132411

/-- `round((n-acot(n)/3)²)` -/
def P16480572071173471161.Spec : Prop :=
  ∀ n, P16480572071173471161.a n = A132411 n

end A132411

/-! ## A132411.P8484237179950592383

`round(n/acot(n-acot(n)))`
-/

namespace A132411.P8484237179950592383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((n : ℝ) - SequenceMachineLib.acot (n : ℝ)))

end

end A132411.P8484237179950592383

namespace A132411

/-- `round(n/acot(n-acot(n)))` -/
def P8484237179950592383.Spec : Prop :=
  ∀ n, P8484237179950592383.a n = A132411 n

end A132411

/-! ## A132411.P2511016850709843288

`round(n²-atan(atan(n))²)`
-/

namespace A132411.P2511016850709843288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) - Real.arctan (Real.arctan (n : ℝ)) ^ 2)

end

end A132411.P2511016850709843288

namespace A132411

/-- `round(n²-atan(atan(n))²)` -/
def P2511016850709843288.Spec : Prop :=
  ∀ n, P2511016850709843288.a n = A132411 n

end A132411

/-! ## A132411.P11714498573206298733

`∑[2*n-char[2]]-n`
-/

namespace A132411.P11714498573206298733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A132411.P11714498573206298733

namespace A132411

/-- `∑[2*n-char[2]]-n` -/
def P11714498573206298733.Spec : Prop :=
  ∀ n, P11714498573206298733.a n = A132411 n

end A132411

/-! ## A132411.P17737497657931445535

`round(n*(n-acot(n+1)))`
-/

namespace A132411.P17737497657931445535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * ((n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ)))

end

end A132411.P17737497657931445535

namespace A132411

/-- `round(n*(n-acot(n+1)))` -/
def P17737497657931445535.Spec : Prop :=
  ∀ n, P17737497657931445535.a n = A132411 n

end A132411

/-! ## A132411.P13712552851465559947

`∑[comp[a(n-1)+2]]` with `a(0)=3, a(1)=4`
-/

namespace A132411.P13712552851465559947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  f2 (n - 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132411.P13712552851465559947

namespace A132411

/-- `∑[comp[a(n-1)+2]]` -/
def P13712552851465559947.Spec : Prop :=
  ∀ n, (P13712552851465559947.a n : ℤ) = A132411 n

end A132411

/-! ## A132411.P13562580225982845702

`∑[comp[comp[lcm(2, n+1)]+3]]`
-/

namespace A132411.P13562580225982845702
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132411.P13562580225982845702

namespace A132411

/-- `∑[comp[comp[lcm(2, n+1)]+3]]` -/
def P13562580225982845702.Spec : Prop :=
  ∀ n, (P13562580225982845702.a n : ℤ) = A132411 n

end A132411

/-! ## A132411.P12115474242002021918

`∑[2*n-n^C(2, n)]`
-/

namespace A132411.P12115474242002021918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (n ^ Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132411.P12115474242002021918

namespace A132411

/-- `∑[2*n-n^C(2, n)]` -/
def P12115474242002021918.Spec : Prop :=
  ∀ n, P12115474242002021918.a n = A132411 n

end A132411

/-! ## A132411.P15672042107142144

`∑[gcd(n, C(2, n))+n-1]`
-/

namespace A132411.P15672042107142144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (Nat.choose 2 n) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132411.P15672042107142144

namespace A132411

/-- `∑[gcd(n, C(2, n))+n-1]` -/
def P15672042107142144.Spec : Prop :=
  ∀ n, P15672042107142144.a n = A132411 n

end A132411

/-! ## A132411.P12215134649306637830

`∪[n*(n+2), (5^n)!]`
-/

namespace A132411.P12215134649306637830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (5 ^ n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A132411.P12215134649306637830

namespace A132411

/-- `∪[n*(n+2), (5^n)!]` -/
def P12215134649306637830.Spec : Prop :=
  ∀ n, (P12215134649306637830.a n : ℤ) = A132411 n

end A132411

/-! ## A132411.P7618981303620107519

`∑[a(n-1)+2]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A132411.P7618981303620107519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132411.P7618981303620107519

namespace A132411

/-- `∑[a(n-1)+2]` -/
def P7618981303620107519.Spec : Prop :=
  ∀ n, (P7618981303620107519.a n : ℤ) = A132411 n

end A132411

/-!
# A132412: Floor(n^2*exp(n)).

The programs for A132412, the canonical program `A132412.P267649642231307597` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132412 has offset 1).

The definition of A132412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)²*exp(n+1))` (program `A132412.P267649642231307597`, by `A132412.P267649642231307597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132412.P267649642231307597

`floor((n+1)²*exp(n+1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132412

/-- `floor((n+1)²*exp(n+1))` -/
def P267649642231307597.Spec : Prop :=
  ∀ n, P267649642231307597.a n = A132412 (n + 1)

theorem P267649642231307597.correct : P267649642231307597.Spec := by
  intro n
  simp only [A132412, Nat.add_sub_cancel]

end A132412

/-! ## A132412.P985143256188804147

`A132413(n+1)-1`
-/

namespace A132412.P985143256188804147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132413 (n + 1) - 1

end

end A132412.P985143256188804147

namespace A132412

/-- `A132413(n+1)-1` -/
def P985143256188804147.Spec : Prop :=
  ∀ n, P985143256188804147.a n = A132412 (n + 1)

end A132412

/-! ## A132412.P10077631863751885782

`ceil(exp(n+1)*A000290(n+1))-1`
-/

namespace A132412.P10077631863751885782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n + 1 : ℝ) * (A000290 (n + 1) : ℝ)⌉ - 1

end

end A132412.P10077631863751885782

namespace A132412

/-- `ceil(exp(n+1)*A000290(n+1))-1` -/
def P10077631863751885782.Spec : Prop :=
  ∀ n, P10077631863751885782.a n = A132412 (n + 1)

end A132412

/-! ## A132412.P9955172002343422043

`A163805(gcd(n, n+1))+A132413(n+1)`
-/

namespace A132412.P9955172002343422043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (Nat.gcd n (n + 1)) + A132413 (n + 1)

end

end A132412.P9955172002343422043

namespace A132412

/-- `A163805(gcd(n, n+1))+A132413(n+1)` -/
def P9955172002343422043.Spec : Prop :=
  ∀ n, P9955172002343422043.a n = A132412 (n + 1)

end A132412

/-! ## A132412.P16933869346457396662

`A132429(2*(2*n+1))+A132413(n+1)`
-/

namespace A132412.P16933869346457396662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (2 * (2 * n + 1)) + A132413 (n + 1)

end

end A132412.P16933869346457396662

namespace A132412

/-- `A132429(2*(2*n+1))+A132413(n+1)` -/
def P16933869346457396662.Spec : Prop :=
  ∀ n, P16933869346457396662.a n = A132412 (n + 1)

end A132412

/-! ## A132412.P7307040218421252151

`A333248(A014963(∑[n+1]))+A132413(n+1)`
-/

namespace A132412.P7307040218421252151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333248 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A132413 (n + 1)

end

end A132412.P7307040218421252151

namespace A132412

/-- `A333248(A014963(∑[n+1]))+A132413(n+1)` -/
def P7307040218421252151.Spec : Prop :=
  ∀ n, P7307040218421252151.a n = A132412 (n + 1)

end A132412

/-! ## A132412.P1149000784515389351

`A132419(A139280(n+1))+A132413(n+1)`
-/

namespace A132412.P1149000784515389351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 (A139280 (n + 1)).toNat + A132413 (n + 1)

end

end A132412.P1149000784515389351

namespace A132412

/-- `A132419(A139280(n+1))+A132413(n+1)` -/
def P1149000784515389351.Spec : Prop :=
  ∀ n, P1149000784515389351.a n = A132412 (n + 1)

end A132412

/-! ## A132412.P12312512756165812559

`A132419(A132383(n+2))+A132413(n+1)`
-/

namespace A132412.P12312512756165812559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 (A132383 (n + 2)).toNat + A132413 (n + 1)

end

end A132412.P12312512756165812559

namespace A132412

/-- `A132419(A132383(n+2))+A132413(n+1)` -/
def P12312512756165812559.Spec : Prop :=
  ∀ n, P12312512756165812559.a n = A132412 (n + 1)

end A132412

/-!
# A132413: Ceiling(n^2*exp(n)).

The programs for A132413, the canonical program `A132413.P6671805889211594766` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132413 has offset 1).

The definition of A132413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)²*exp(n+1))` (program `A132413.P6671805889211594766`, by `A132413.P6671805889211594766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132413.P6671805889211594766

`ceil((n+1)²*exp(n+1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132413

/-- `ceil((n+1)²*exp(n+1))` -/
def P6671805889211594766.Spec : Prop :=
  ∀ n, P6671805889211594766.a n = A132413 (n + 1)

theorem P6671805889211594766.correct : P6671805889211594766.Spec := by
  intro n
  simp only [A132413, Nat.add_sub_cancel]

end A132413

/-! ## A132413.P302322004497466294

`floor((n+1)²*exp(n+1))+C(2, n+2)!`
-/

namespace A132413.P302322004497466294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) * Real.exp (n + 1 : ℝ)⌋ + (Nat.factorial (Nat.choose 2 (n + 2)) : ℤ)

end

end A132413.P302322004497466294

namespace A132413

/-- `floor((n+1)²*exp(n+1))+C(2, n+2)!` -/
def P302322004497466294.Spec : Prop :=
  ∀ n, P302322004497466294.a n = A132413 (n + 1)

end A132413

/-! ## A132413.P17350260240910416056

`floor((n+1)²*exp(n+1))+abs((-1)^val(n+1, 2))`
-/

namespace A132413.P17350260240910416056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) * Real.exp (n + 1 : ℝ)⌋ + |(-1) ^ SequenceMachineLib.valuation (n + 1) 2|

end

end A132413.P17350260240910416056

namespace A132413

/-- `floor((n+1)²*exp(n+1))+abs((-1)^val(n+1, 2))` -/
def P17350260240910416056.Spec : Prop :=
  ∀ n, P17350260240910416056.a n = A132413 (n + 1)

end A132413

/-! ## A132413.P236464145062055657

`floor((n+1)²*exp(n+1))+abs((-1)^∑{e}[n+1, #])`
-/

namespace A132413.P236464145062055657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) * Real.exp (n + 1 : ℝ)⌋ + |(-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)|

end

end A132413.P236464145062055657

namespace A132413

/-- `floor((n+1)²*exp(n+1))+abs((-1)^∑{e}[n+1, #])` -/
def P236464145062055657.Spec : Prop :=
  ∀ n, P236464145062055657.a n = A132413 (n + 1)

end A132413

/-! ## A132413.P10826873899893448512

`floor((n+1)²*exp(n+1))+((-1)^∑{e}[n+1, #])²`
-/

namespace A132413.P10826873899893448512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) * Real.exp (n + 1 : ℝ)⌋ + ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) ^ 2

end

end A132413.P10826873899893448512

namespace A132413

/-- `floor((n+1)²*exp(n+1))+((-1)^∑{e}[n+1, #])²` -/
def P10826873899893448512.Spec : Prop :=
  ∀ n, P10826873899893448512.a n = A132413 (n + 1)

end A132413

/-! ## A132413.P12363313586908009139

`A132412(n+1)+1`
-/

namespace A132413.P12363313586908009139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132412 (n + 1) + 1

end

end A132413.P12363313586908009139

namespace A132413

/-- `A132412(n+1)+1` -/
def P12363313586908009139.Spec : Prop :=
  ∀ n, P12363313586908009139.a n = A132413 (n + 1)

end A132413

/-! ## A132413.P16028578245450201373

`floor((n+1)²*exp(n+1))+A007318(∑[n])`
-/

namespace A132413.P16028578245450201373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) * Real.exp (n + 1 : ℝ)⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132413.P16028578245450201373

namespace A132413

/-- `floor((n+1)²*exp(n+1))+A007318(∑[n])` -/
def P16028578245450201373.Spec : Prop :=
  ∀ n, P16028578245450201373.a n = A132413 (n + 1)

end A132413

/-!
# A132415: Integers that can be expressed as the sum of distinct squares in exactly a prime number of ways.

The programs for A132415, there is no canonical definition to state claims against.
-/

/-! ## A132415.P6998943948952785653

`eq[0, A007920(A033461(n))]`
-/

namespace A132415.P6998943948952785653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A033461 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132415.P6998943948952785653

/-! ## A132415.P7981915181939787904

`eq[0, A015024(A033461(n)²)]`
-/

namespace A132415.P7981915181939787904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015024 (A033461 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132415.P7981915181939787904

/-! ## A132415.P1152845317269282313

`lt[0, A302048(A033461(n)²)]`
-/

namespace A132415.P1152845317269282313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A033461 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132415.P1152845317269282313

/-! ## A132415.P7820671647213225569

`eq[2, A032741(A033461(n)²)]`
-/

namespace A132415.P7820671647213225569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A033461 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132415.P7820671647213225569

/-! ## A132415.P5835053640960613346

`eq[2, A074206(A033461(n)²)]`
-/

namespace A132415.P5835053640960613346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A033461 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132415.P5835053640960613346

/-! ## A132415.P2900656449005776502

`eq[2, A078898(A033461(n)²)]`
-/

namespace A132415.P2900656449005776502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A033461 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132415.P2900656449005776502

/-! ## A132415.P18247962920389417260

`eq[2, A105700(A033461(n)²)]`
-/

namespace A132415.P18247962920389417260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A033461 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132415.P18247962920389417260

/-! ## A132415.P3109313423063918054

`eq[2, A284345(A033461(n)²)]`
-/

namespace A132415.P3109313423063918054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 (A033461 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132415.P3109313423063918054

/-! ## A132415.P13173557403674737383

`eq[2, A105700(2*A033461(n))]`
-/

namespace A132415.P13173557403674737383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A033461 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132415.P13173557403674737383

/-! ## A132415.P13880043685612083037

`eq[1, A001222(A130330(A033461(n)+5))]`
-/

namespace A132415.P13880043685612083037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130330 (A033461 n + 5).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132415.P13880043685612083037

/-!
# A132418: Sequence is identical to its third differences in absolute values: a(n+k)=3a(n+k-1)-3a(n+k-2)+2a(n+k-3), k=0, 1, 2, 3, 4, a(n+5)=3a(n+4)-3a(n+3), n > 2.

The programs for A132418, there is no canonical definition to state claims against.
-/

/-! ## A132418.P12751946620602995370

`A132658(n+6)/21`
-/

namespace A132418.P12751946620602995370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132658 (n + 6) : ℚ) / 21

end

end A132418.P12751946620602995370

/-! ## A132418.P16250519484390340224

`∑[A024493(A069747(n+1)-A306684(n))]`
-/

namespace A132418.P16250519484390340224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (A069747 (n + 1) - A306684 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132418.P16250519484390340224

/-!
# A132419: Period 6: repeat [1, 1, -2, -1, -1, 2].

The programs for A132419, the canonical program `A132419.P11785938489810226282` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132419 has offset 0).

The definition of A132419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132419.P11785938489810226282

`A061347(n+1)*(-1)^floor(n/3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132419

/-- `A061347(n+1)*(-1)^floor(n/3)` -/
def P11785938489810226282.Spec : Prop :=
  ∀ n, P11785938489810226282.a n = (A132419 n : ℚ)

end A132419

/-!
# A132421: a(n) = LCM of the integers b(k), over all k where 1 <= k <= n, where b(k) = the k-th integer from among those positive integers which are coprime to (n+1-k).

The programs for A132421, there is no canonical definition to state claims against.
-/

/-! ## A132421.P8304505486914943523

`A162826(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A132421.P8304505486914943523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A162826 (a (n - 1)).toNat

end

end A132421.P8304505486914943523

/-!
# A132422: Array read by antidiagonals: A(m,1) = 1 for all positive integers m. A(m,n) = the m-th integer from among those positive integers which are coprime to A(m,n-1).

The programs for A132422, there is no canonical definition to state claims against.
-/

/-! ## A132422.P14858669989637741198

`or(A004070(n), A030308(A038221(n)))`
-/

namespace A132422.P14858669989637741198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004070 n) (A030308 (A038221 n).toNat)

end

end A132422.P14858669989637741198

/-! ## A132422.P11189333080392899932

`or(A010054(A008300(n)), A180562(n))`
-/

namespace A132422.P11189333080392899932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A008300 n).toNat) (A180562 n)

end

end A132422.P11189333080392899932

/-! ## A132422.P14476287654716505331

`or(A000035(A174039(n)), A180562(n))`
-/

namespace A132422.P14476287654716505331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A174039 n).toNat) (A180562 n)

end

end A132422.P14476287654716505331

/-! ## A132422.P10141177511931997221

`or(A004070(n), A010059(A329228(n+1)))`
-/

namespace A132422.P10141177511931997221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004070 n) (A010059 (A329228 (n + 1)).toNat)

end

end A132422.P10141177511931997221

/-! ## A132422.P3200860702336368601

`or(A004070(n), A341602(A052062(n+1)))`
-/

namespace A132422.P3200860702336368601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004070 n) (A341602 (A052062 (n + 1)).toNat)

end

end A132422.P3200860702336368601

/-!
# A132423: a(m) is the smallest positive integer such that A132422(m,n) = A132422(m,n+a(m)) for all n > some value.

The programs for A132423, there is no canonical definition to state claims against.
-/

/-! ## A132423.P16556480755246517419

`A086342(or(n, A014210(n)))`
-/

namespace A132423.P16556480755246517419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (Int.lor (n : ℤ) (A014210 n)).toNat

end

end A132423.P16556480755246517419

/-! ## A132423.P11603209925511693376

`A001222(12*A062931(2*n+1)+2)`
-/

namespace A132423.P11603209925511693376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * A062931 (2 * n + 1) + 2).toNat

end

end A132423.P11603209925511693376

/-! ## A132423.P12622426098286903251

`A002828(A213248(n+1)-∑{e}[n+1, #])`
-/

namespace A132423.P12622426098286903251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A213248 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A132423.P12622426098286903251

/-! ## A132423.P4242956993548771614

`A334216(A211860(n)+A002113(n+1))`
-/

namespace A132423.P4242956993548771614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334216 (A211860 n + A002113 (n + 1)).toNat

end

end A132423.P4242956993548771614

/-! ## A132423.P4584441144026041260

`A334216(A211860(n)+A082208(n+1))`
-/

namespace A132423.P4584441144026041260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334216 (A211860 n + A082208 (n + 1)).toNat

end

end A132423.P4584441144026041260

/-!
# A132424: a(0)=1 and, for n>0, a(n)=a(Floor((n-1)/a[n-1]))+2.

The programs for A132424, the canonical program `A132424.P10162263639612233080` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132424 has offset 0).

The definition of A132424 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n-1)/a(n-1)))+2` (program `A132424.P10162263639612233080`, by `A132424.P10162263639612233080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132424.P13594623435952061951

`2+a(floor((n-1)/a(n-1)))` with `a(0)=1`
-/

namespace A132424.P13594623435952061951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 + a ⌊((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋.toNat

end

end A132424.P13594623435952061951

namespace A132424

/-- `2+a(floor((n-1)/a(n-1)))` -/
def P13594623435952061951.Spec : Prop :=
  ∀ n, (P13594623435952061951.a n : ℤ) = A132424 n

theorem P13594623435952061951.correct : P13594623435952061951.Spec := by
  intro n
  simp only [A132424, Nat.add_sub_cancel, A132424.P13594623435952061951.a, A132424.P10162263639612233080.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132424

/-! ## A132424.P10162263639612233080

`a(floor((n-1)/a(n-1)))+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132424

/-- `a(floor((n-1)/a(n-1)))+2` -/
def P10162263639612233080.Spec : Prop :=
  ∀ n, (P10162263639612233080.a n : ℤ) = A132424 n

theorem P10162263639612233080.correct : P10162263639612233080.Spec := by
  intro n
  simp only [A132424]

end A132424

/-! ## A132424.P16538480455646839483

`a(ceil(n/a(n-1))-1)+2` with `a(0)=1`
-/

namespace A132424.P16538480455646839483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n : ℚ) / (a (n - 1) : ℚ)⌉ - 1).toNat + 2

end

end A132424.P16538480455646839483

namespace A132424

/-- `a(ceil(n/a(n-1))-1)+2` -/
def P16538480455646839483.Spec : Prop :=
  ∀ n, (P16538480455646839483.a n : ℤ) = A132424 n

end A132424

/-! ## A132424.P17678404853099520998

`2-floor(-a(floor((n-1)/a(n-1))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132424.P17678404853099520998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (-a ⌊((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋.toNat)

end

end A132424.P17678404853099520998

namespace A132424

/-- `2-floor(-a(floor((n-1)/a(n-1))))` -/
def P17678404853099520998.Spec : Prop :=
  ∀ n, P17678404853099520998.a n = A132424 n

end A132424

/-! ## A132424.P5310032837809275186

`2-ceil(-a(ceil(n/a(n-1))-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A132424.P5310032837809275186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (-a (⌈(n : ℚ) / (a (n - 1) : ℚ)⌉ - 1).toNat)

end

end A132424.P5310032837809275186

namespace A132424

/-- `2-ceil(-a(ceil(n/a(n-1))-1))` -/
def P5310032837809275186.Spec : Prop :=
  ∀ n, P5310032837809275186.a n = A132424 n

end A132424

/-! ## A132424.P10029738801091625939

`A058321(a(floor((n-1)/a(n-1))))` with `a(0)=1`
-/

namespace A132424.P10029738801091625939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058321 (a ⌊((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋.toNat).toNat

end

end A132424.P10029738801091625939

namespace A132424

/-- `A058321(a(floor((n-1)/a(n-1))))` -/
def P10029738801091625939.Spec : Prop :=
  ∀ n, P10029738801091625939.a n = A132424 n

end A132424

/-!
# A132425: a(1)=1. a(2)=2. For n >= 3, a(n) is the smallest integer which is > a(n-1), is not coprime to a(n-1) and is such that a(n)-a(n-1) does not equal a(m)-a(m-1) for any m < n.

The programs for A132425, there is no canonical definition to state claims against.
-/

/-! ## A132425.P12893855136355223404

`A132426(n)+a(n-1)` with `a(0)=1`
-/

namespace A132425.P12893855136355223404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132426 n + a (n - 1)

end

end A132425.P12893855136355223404

/-! ## A132425.P1959300589731392160

`∑[A132426(round(sqrt(n²+1)))]`
-/

namespace A132425.P1959300589731392160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132426 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132425.P1959300589731392160

/-! ## A132425.P5380619042285825149

`∑[A132426(abs(1-n)+1)]-1`
-/

namespace A132425.P5380619042285825149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132426 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A132425.P5380619042285825149

/-! ## A132425.P16093393203899376376

`∑[A132426(n+1)]+1-A132426(n+1)`
-/

namespace A132425.P16093393203899376376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A132426 (n + 1)

end

end A132425.P16093393203899376376

/-! ## A132425.P17508996011747315174

`record[xor(A000688(n+1), A337502(n+1))]`
-/

namespace A132425.P17508996011747315174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000688 (n + 1)) (A337502 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132425.P17508996011747315174

/-!
# A132426: a(n) = A132425(n+1) - A132425(n).

The programs for A132426, there is no canonical definition to state claims against.
-/

/-! ## A132426.P10912823042857202643

`A132425(n+2)-A132425(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132426.P10912823042857202643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132425 (n + 2) - A132425 (n + 1)

end

end A132426.P10912823042857202643

/-! ## A132426.P18187052984802037115

`Δ[A132425(n+1)]`
-/

namespace A132426.P18187052984802037115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132426.P18187052984802037115

/-! ## A132426.P10031313886755110778

`Δ[record[A132425(A126759(n))]]`
-/

namespace A132426.P10031313886755110778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132425 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132426.P10031313886755110778

/-! ## A132426.P1291423297801458504

`Δ[record[A132425(A134478(n))]]`
-/

namespace A132426.P1291423297801458504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132425 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132426.P1291423297801458504

/-! ## A132426.P9019032775075892482

`Δ[record[A132425(A137734(n))]]`
-/

namespace A132426.P9019032775075892482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132425 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132426.P9019032775075892482

/-! ## A132426.P11802090683270461247

`abs(Δ[A132425(A008619(2*n))])`
-/

namespace A132426.P11802090683270461247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132425 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A132426.P11802090683270461247

/-!
# A132428: Central terms of triangle A132427.

The programs for A132428, there is no canonical definition to state claims against.
-/

/-! ## A132428.P14291076914521361187

`A132427(∑[2*n])`
-/

namespace A132428.P14291076914521361187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132427 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132428.P14291076914521361187

/-! ## A132428.P9576698328466674056

`and(-1, A132427(n²+n))`
-/

namespace A132428.P9576698328466674056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132427 (n ^ 2 + n))

end

end A132428.P9576698328466674056

/-! ## A132428.P2368527224420148491

`A132427(A002378(n))+char[8]`
-/

namespace A132428.P2368527224420148491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132427 (A002378 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132428.P2368527224420148491

/-! ## A132428.P16292196453623602953

`A000027(A132427(C(n+2, 2)-∑[1-n]))`
-/

namespace A132428.P16292196453623602953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A132427 ((Nat.choose (n + 2) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A132428.P16292196453623602953

/-!
# A132429: Period 4: repeat [3, 1, -1, -3].

The programs for A132429, the canonical program `A132429.P8089814914253259062` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132429 has offset 0).

The definition of A132429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132429.P8089814914253259062

`3-2*n%4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132429

/-- `3-2*n%4` -/
def P8089814914253259062.Spec : Prop :=
  ∀ n, P8089814914253259062.a n = A132429 n

theorem P8089814914253259062.correct : P8089814914253259062.Spec := by
  intro n
  simp only [A132429]

end A132429

/-!
# A132431: For n>0, let B_n be the subsemigroup of the full transformation monoid on the n-set [n] generated by the following functions: Let x be a certain element in [n]. Now the generators of B are those functions which map either x to any distinct element y in [n] leaving all the other elements fixed, or y to x leaving all the other elements fixed. Then a(n) = number of elements in B_n.

The programs for A132431, the canonical program `A132431.P14213066868819128410` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132431 has offset 1).

The definition of A132431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132431.P14213066868819128410

`A060226(n+1)-A062119(n+1)+A002378(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132431

/-- `A060226(n+1)-A062119(n+1)+A002378(n)` -/
def P14213066868819128410.Spec : Prop :=
  ∀ n, P14213066868819128410.a n = A132431 (n + 1)

theorem P14213066868819128410.correct : P14213066868819128410.Spec := by
  intro n
  simp only [A132431, Nat.add_sub_cancel]

end A132431

/-! ## A132431.P2942020569946924395

`(n+1)^(n+1)-(n+1)*n^n-n*(n+1)!+(n+1)*n`
-/

namespace A132431.P2942020569946924395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - ((n + 1) * n ^ n : ℤ) - (n * Nat.factorial (n + 1) : ℤ) + ((n + 1) * n : ℤ)

end

end A132431.P2942020569946924395

namespace A132431

/-- `(n+1)^(n+1)-(n+1)*n^n-n*(n+1)!+(n+1)*n` -/
def P2942020569946924395.Spec : Prop :=
  ∀ n, P2942020569946924395.a n = A132431 (n + 1)

end A132431

/-!
# A132432: Number of different values of i^2+j^2+k^2+l^2+m^2 for i,j,k,l,m in [0,n].

The programs for A132432, there is no canonical definition to state claims against.
-/

/-! ## A132432.P5019525369869476823

`A132438(A004880(n+1))-n²`
-/

namespace A132432.P5019525369869476823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132438 (A004880 (n + 1)).toNat - (n ^ 2 : ℤ)

end

end A132432.P5019525369869476823

/-! ## A132432.P8346736584691083491

`A132438(A004891(n+1))-n²`
-/

namespace A132432.P8346736584691083491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132438 (A004891 (n + 1)).toNat - (n ^ 2 : ℤ)

end

end A132432.P8346736584691083491

/-! ## A132432.P16633768467907561171

`A319079(A231056(n+2))+A081266(n)-n²`
-/

namespace A132432.P16633768467907561171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319079 (A231056 (n + 2)).toNat + A081266 n - (n ^ 2 : ℤ)

end

end A132432.P16633768467907561171

/-!
# A132433: a(1) = 2; for n>=2, a(n) = 8*a(n-1) + 1.

The programs for A132433, the canonical program `A132433.P17481110476253093791` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132433 has offset 1).

The definition of A132433 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+1` (program `A132433.P17481110476253093791`, by `A132433.P17481110476253093791.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132433.P17481110476253093791

`8*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132433

/-- `8*a(n-1)+1` -/
def P17481110476253093791.Spec : Prop :=
  ∀ n, (P17481110476253093791.a n : ℤ) = A132433 (n + 1)

theorem P17481110476253093791.correct : P17481110476253093791.Spec := by
  intro n
  simp only [A132433, Nat.add_sub_cancel]

end A132433

/-! ## A132433.P5701085045645470161

`(15*8^n-1)/7`
-/

namespace A132433.P5701085045645470161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 * 8 ^ n : ℤ) - 1 : ℚ) / 7

end

end A132433.P5701085045645470161

namespace A132433

/-- `(15*8^n-1)/7` -/
def P5701085045645470161.Spec : Prop :=
  ∀ n, P5701085045645470161.a n = (A132433 (n + 1) : ℚ)

theorem P5701085045645470161.correct : P5701085045645470161.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132433, Nat.add_sub_cancel, A132433.P5701085045645470161.a, A132433.P17481110476253093791.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132433, Nat.add_sub_cancel, A132433.P5701085045645470161.a, A132433.P17481110476253093791.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132433

/-! ## A132433.P7101229369146446461

`ogf((2-x)/(1-9x+8x^2))`
-/

namespace A132433.P7101229369146446461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -9, 8] n

end

end A132433.P7101229369146446461

namespace A132433

/-- `ogf((2-x)/(1-9x+8x^2))` -/
def P7101229369146446461.Spec : Prop :=
  ∀ n, P7101229369146446461.a n = A132433 (n + 1)

end A132433

/-! ## A132433.P14009837260856859281

`or(1, 8*a(n-1))` with `a(0)=2`
-/

namespace A132433.P14009837260856859281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 1 (8 * a (n - 1))

end

end A132433.P14009837260856859281

namespace A132433

/-- `or(1, 8*a(n-1))` -/
def P14009837260856859281.Spec : Prop :=
  ∀ n, (P14009837260856859281.a n : ℤ) = A132433 (n + 1)

end A132433

/-! ## A132433.P236528911558041471

`xor(1, 8*a(n-1))` with `a(0)=2`
-/

namespace A132433.P236528911558041471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 1 (8 * a (n - 1))

end

end A132433.P236528911558041471

namespace A132433

/-- `xor(1, 8*a(n-1))` -/
def P236528911558041471.Spec : Prop :=
  ∀ n, (P236528911558041471.a n : ℤ) = A132433 (n + 1)

end A132433

/-! ## A132433.P6204516683333002527

`∑[8*a(n-1)]` with `a(0)=2, a(1)=15`
-/

namespace A132433.P6204516683333002527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 15] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132433.P6204516683333002527

namespace A132433

/-- `∑[8*a(n-1)]` -/
def P6204516683333002527.Spec : Prop :=
  ∀ n, (P6204516683333002527.a n : ℤ) = A132433 (n + 1)

end A132433

/-! ## A132433.P17710463639146685848

`floor(3*3*a(n-1)-(a(n-1)-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A132433.P17710463639146685848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * (3 * a (n - 1)) - (a (n - 1) - 1)

end

end A132433.P17710463639146685848

namespace A132433

/-- `floor(3*3*a(n-1)-(a(n-1)-1))` -/
def P17710463639146685848.Spec : Prop :=
  ∀ n, P17710463639146685848.a n = A132433 (n + 1)

end A132433

/-! ## A132433.P16289804290837543072

`5*A083713(n)+2`
-/

namespace A132433.P16289804290837543072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A083713 n + 2

end

end A132433.P16289804290837543072

namespace A132433

/-- `5*A083713(n)+2` -/
def P16289804290837543072.Spec : Prop :=
  ∀ n, P16289804290837543072.a n = A132433 (n + 1)

end A132433

/-! ## A132433.P3067177602881550673

`A206918(Δ[n²])+1`
-/

namespace A132433.P3067177602881550673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A132433.P3067177602881550673

namespace A132433

/-- `A206918(Δ[n²])+1` -/
def P3067177602881550673.Spec : Prop :=
  ∀ n, P3067177602881550673.a n = A132433 (n + 1)

end A132433

/-! ## A132433.P6021255315689038004

`3*A125836(n+1)+2`
-/

namespace A132433.P6021255315689038004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A125836 (n + 1) + 2

end

end A132433.P6021255315689038004

namespace A132433

/-- `3*A125836(n+1)+2` -/
def P6021255315689038004.Spec : Prop :=
  ∀ n, P6021255315689038004.a n = A132433 (n + 1)

end A132433

/-! ## A132433.P9488699434626822716

`∑[A055274(n)+A001018(n)]`
-/

namespace A132433.P9488699434626822716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n + A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132433.P9488699434626822716

namespace A132433

/-- `∑[A055274(n)+A001018(n)]` -/
def P9488699434626822716.Spec : Prop :=
  ∀ n, P9488699434626822716.a n = A132433 (n + 1)

end A132433

/-! ## A132433.P3231927967354902072

`A125835(n+2)-A023001(n)`
-/

namespace A132433.P3231927967354902072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125835 (n + 2) - A023001 n

end

end A132433.P3231927967354902072

namespace A132433

/-- `A125835(n+2)-A023001(n)` -/
def P3231927967354902072.Spec : Prop :=
  ∀ n, P3231927967354902072.a n = A132433 (n + 1)

end A132433

/-! ## A132433.P1003578635865147090

`A083068(n)+A083713(n)+A083068(n)`
-/

namespace A132433.P1003578635865147090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083068 n + (A083713 n + A083068 n)

end

end A132433.P1003578635865147090

namespace A132433

/-- `A083068(n)+A083713(n)+A083068(n)` -/
def P1003578635865147090.Spec : Prop :=
  ∀ n, P1003578635865147090.a n = A132433 (n + 1)

end A132433

/-! ## A132433.P16524886157988422556

`A023001(n+1)+A083068(n)+A023001(n)`
-/

namespace A132433.P16524886157988422556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (n + 1) + (A083068 n + A023001 n)

end

end A132433.P16524886157988422556

namespace A132433

/-- `A023001(n+1)+A083068(n)+A023001(n)` -/
def P16524886157988422556.Spec : Prop :=
  ∀ n, P16524886157988422556.a n = A132433 (n + 1)

end A132433

/-!
# A132434: a(n) = A132433(n) - 33.

The programs for A132434, the canonical program `A132434.P11741610590592150908` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132434 has offset 3).

The definition of A132434 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A132433(n+3)-33` (program `A132434.P11741610590592150908`, by `A132434.P11741610590592150908.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132434.P11741610590592150908

`A132433(n+3)-33`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132434

/-- `A132433(n+3)-33` -/
def P11741610590592150908.Spec : Prop :=
  ∀ n, P11741610590592150908.a n = A132434 (n + 3)

theorem P11741610590592150908.correct : P11741610590592150908.Spec := by
  intro n
  simp only [A132434, Nat.add_sub_cancel]

end A132434

/-! ## A132434.P2672846329975187381

`∑[A110286(3*(n+1))]-16`
-/

namespace A132434.P2672846329975187381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110286 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 16

end

end A132434.P2672846329975187381

namespace A132434

/-- `∑[A110286(3*(n+1))]-16` -/
def P2672846329975187381.Spec : Prop :=
  ∀ n, P2672846329975187381.a n = A132434 (n + 3)

end A132434

/-!
# A132435: Composite integers n with two prime factors nearly equidistant from the integer part of the square root of n.

The programs for A132435, there is no canonical definition to state claims against.
-/

/-! ## A132435.P15715702537283558197

`A295088(A295068(n+1))-A295097(n+2)`
-/

namespace A132435.P15715702537283558197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295088 (A295068 (n + 1)).toNat - A295097 (n + 2)

end

end A132435.P15715702537283558197

/-! ## A132435.P13135147052257452446

`A001358(A349412(n+1))%A200657(n+1)`
-/

namespace A132435.P13135147052257452446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (A349412 (n + 1)).toNat) (A200657 (n + 1))

end

end A132435.P13135147052257452446

/-! ## A132435.P16553261343470437941

`A001358(lt[A274906(n+1), A043297(n+1)])`
-/

namespace A132435.P16553261343470437941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132435.P16553261343470437941

/-!
# A132436: A binomial recursion: a(n) = p(n) (see comment).

The programs for A132436, there is no canonical definition to state claims against.
-/

/-! ## A132436.P9890324635912370828

`A014307(n+1)-A132437(n+1)`
-/

namespace A132436.P9890324635912370828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 (n + 1) - A132437 (n + 1)

end

end A132436.P9890324635912370828

/-! ## A132436.P300365301187952295

`A036703(2*n*a(n-1))-1+n` with `a(0)=1, a(1)=1`
-/

namespace A132436.P300365301187952295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A036703 ((2 * n : ℤ) * a (n - 1)).toNat - 1 + (n : ℤ)

end

end A132436.P300365301187952295

/-!
# A132437: A binomial recursion: a(n) = q(n) (see comment).

The programs for A132437, there is no canonical definition to state claims against.
-/

/-! ## A132437.P1513014020764663458

`A014307(n+1)-A132436(n+1)`
-/

namespace A132437.P1513014020764663458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 (n + 1) - A132436 (n + 1)

end

end A132437.P1513014020764663458

/-! ## A132437.P1663271166515034411

`(A014307(n+1)+A014307(n+1))%A180875(n)`
-/

namespace A132437.P1663271166515034411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014307 (n + 1) + A014307 (n + 1)) (A180875 n)

end

end A132437.P1663271166515034411

/-!
# A132438: Number of different values of i^2+j^2+k^2+l^2+m^2+n^2 for i,j,k,l,m,n in [0,n].

The programs for A132438, there is no canonical definition to state claims against.
-/

/-! ## A132438.P4130314999764558619

`A132432(A004891(n+1))+n²`
-/

namespace A132438.P4130314999764558619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132432 (A004891 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A132438.P4130314999764558619

/-! ## A132438.P2178979668413461948

`A319079(A231056(n+2))+A081266(n)`
-/

namespace A132438.P2178979668413461948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319079 (A231056 (n + 2)).toNat + A081266 n

end

end A132438.P2178979668413461948

/-! ## A132438.P13079678799290328461

`A324692(A364535(n))+A010001(n)`
-/

namespace A132438.P13079678799290328461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A364535 n).toNat + A010001 n

end

end A132438.P13079678799290328461

/-!
# A132439: Square array a(m,n) read by antidiagonals, where a(m,n) is the number of ways to move a chess queen from the lower left corner to square (m,n), with the queen moving only up, right, or diagonally up-right.

The programs for A132439, there is no canonical definition to state claims against.
-/

/-! ## A132439.P14992960504514671321

`A111660(A229402(n+1)+1)`
-/

namespace A132439.P14992960504514671321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A229402 (n + 1) + 1).toNat

end

end A132439.P14992960504514671321

/-! ## A132439.P12999647838077309996

`A111660(A318024(n+1)+1)`
-/

namespace A132439.P12999647838077309996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A318024 (n + 1) + 1).toNat

end

end A132439.P12999647838077309996

/-! ## A132439.P1355842315051986085

`A204551(2*A229402(n+1)²)`
-/

namespace A132439.P1355842315051986085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (2 * A229402 (n + 1) ^ 2).toNat

end

end A132439.P1355842315051986085

/-! ## A132439.P3786927907888099042

`ceil(A229402(n+1)/2)%A359690(n+1)`
-/

namespace A132439.P3786927907888099042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A229402 (n + 1) : ℚ) / 2⌉ (A359690 (n + 1))

end

end A132439.P3786927907888099042

/-!
# A132440: Infinitesimal Pascal matrix: generator (lower triangular matrix representation) of the Pascal matrix, the classical operator xDx, iterated Laguerre transforms, associated matrices of the list partition transform and general Euler transformation for sequences.

The programs for A132440, the canonical program `A132440.P17079068129318921596` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132440 has offset 0).

The definition of A132440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132440.P10428423403602969264

`1-Δ[abs(a(n-1)/floor(a(n-1)/a(n-a(n-1)))+1)]` with `a(0)=1`
-/

namespace A132440.P10428423403602969264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  |f1 (n - 1) / (⌊f1 (n - 1) / f1 (SequenceMachineLib.roundAway ((n : ℚ) - f1 (n - 1))).toNat⌋ : ℚ) + 1|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A132440.P10428423403602969264

namespace A132440

/-- `1-Δ[abs(a(n-1)/floor(a(n-1)/a(n-a(n-1)))+1)]` -/
def P10428423403602969264.Spec : Prop :=
  ∀ n, P10428423403602969264.a n = (A132440 n : ℚ)

end A132440

/-! ## A132440.P17816618603143448510

`floor(sqrt(A132710(n)))`
-/

namespace A132440.P17816618603143448510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A132710 n)

end

end A132440.P17816618603143448510

namespace A132440

/-- `floor(sqrt(A132710(n)))` -/
def P17816618603143448510.Spec : Prop :=
  ∀ n, P17816618603143448510.a n = A132440 n

end A132440

/-! ## A132440.P17079068129318921596

`1-Δ[A094727(n+2)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A132440

/-- `1-Δ[A094727(n+2)]` -/
def P17079068129318921596.Spec : Prop :=
  ∀ n, P17079068129318921596.a n = A132440 n

theorem P17079068129318921596.correct : P17079068129318921596.Spec := by
  intro n
  simp only [A132440]

end A132440

/-! ## A132440.P1216386726218404642

`A007318(n)*char[∑[n]-2]`
-/

namespace A132440.P1216386726218404642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A132440.P1216386726218404642

namespace A132440

/-- `A007318(n)*char[∑[n]-2]` -/
def P1216386726218404642.Spec : Prop :=
  ∀ n, P1216386726218404642.a n = A132440 n

end A132440

/-! ## A132440.P13731015953170338024

`∑[char[∑[n+1]]]*A129186(n)`
-/

namespace A132440.P13731015953170338024
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A129186 n

end

end A132440.P13731015953170338024

namespace A132440

/-- `∑[char[∑[n+1]]]*A129186(n)` -/
def P13731015953170338024.Spec : Prop :=
  ∀ n, P13731015953170338024.a n = A132440 n

end A132440

/-! ## A132440.P3029285825070844917

`char[∑[n+2]-1]*A003056(n)`
-/

namespace A132440.P3029285825070844917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A003056 n

end

end A132440.P3029285825070844917

namespace A132440

/-- `char[∑[n+2]-1]*A003056(n)` -/
def P3029285825070844917.Spec : Prop :=
  ∀ n, P3029285825070844917.a n = A132440 n

end A132440

/-! ## A132440.P646998574390265149

`char[∑[n+2]-1]*A002260(n+1)`
-/

namespace A132440.P646998574390265149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002260 (n + 1)

end

end A132440.P646998574390265149

namespace A132440

/-- `char[∑[n+2]-1]*A002260(n+1)` -/
def P646998574390265149.Spec : Prop :=
  ∀ n, P646998574390265149.a n = A132440 n

end A132440

/-! ## A132440.P6891704615422887568

`A004526(A134082(n))`
-/

namespace A132440.P6891704615422887568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A134082 n).toNat

end

end A132440.P6891704615422887568

namespace A132440

/-- `A004526(A134082(n))` -/
def P6891704615422887568.Spec : Prop :=
  ∀ n, P6891704615422887568.a n = A132440 n

end A132440

/-! ## A132440.P3026956263109969802

`A002264(A131431(n+1))`
-/

namespace A132440.P3026956263109969802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A131431 (n + 1)).toNat

end

end A132440.P3026956263109969802

namespace A132440

/-- `A002264(A131431(n+1))` -/
def P3026956263109969802.Spec : Prop :=
  ∀ n, P3026956263109969802.a n = A132440 n

end A132440

/-! ## A132440.P2792350138478036275

`A142150(A132774(n+1))`
-/

namespace A132440.P2792350138478036275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A132774 (n + 1)).toNat

end

end A132440.P2792350138478036275

namespace A132440

/-- `A142150(A132774(n+1))` -/
def P2792350138478036275.Spec : Prop :=
  ∀ n, P2792350138478036275.a n = A132440 n

end A132440

/-! ## A132440.P594106945384540439

`A142150(A241151(n+2))`
-/

namespace A132440.P594106945384540439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A241151 (n + 2)).toNat

end

end A132440.P594106945384540439

namespace A132440

/-- `A142150(A241151(n+2))` -/
def P594106945384540439.Spec : Prop :=
  ∀ n, P594106945384540439.a n = A132440 n

end A132440

/-! ## A132440.P11668640399968619227

`A023531(n)-A132013(n)`
-/

namespace A132440.P11668640399968619227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n - A132013 n

end

end A132440.P11668640399968619227

namespace A132440

/-- `A023531(n)-A132013(n)` -/
def P11668640399968619227.Spec : Prop :=
  ∀ n, P11668640399968619227.a n = A132440 n

end A132440

/-! ## A132440.P16169680970685136574

`A110314(n)-A110330(n)`
-/

namespace A132440.P16169680970685136574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n - A110330 n

end

end A132440.P16169680970685136574

namespace A132440

/-- `A110314(n)-A110330(n)` -/
def P16169680970685136574.Spec : Prop :=
  ∀ n, P16169680970685136574.a n = A132440 n

theorem P16169680970685136574.correct : P16169680970685136574.Spec := by
  intro n
  simp only [A132440, Nat.add_sub_cancel, A132440.P16169680970685136574.a, A132440.P17079068129318921596.f1, A132440.P17079068129318921596.a, A094727, A094727.P1759177724676722475.a, A110314, A110314.P17590807438528676276.a, A110330, A110330.P12777464114074436010.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A094441, A094441.P3669008604322146488.a, A141679, A141679.P12256375055810763874.a, A002262, A002262.P12129691700837801527.a, A004442, A004442.P2439415777187857398.a, A007318, A007318.P302227728145965961.a, A099375, A099375.P13700148065993022910.a, A104762, A104762.P17027989488132899519.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A123231, A123231.P9037956020649098209.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132440

/-! ## A132440.P6607540937754467936

`A196389(n)-A167374(n)`
-/

namespace A132440.P6607540937754467936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n - A167374 n

end

end A132440.P6607540937754467936

namespace A132440

/-- `A196389(n)-A167374(n)` -/
def P6607540937754467936.Spec : Prop :=
  ∀ n, P6607540937754467936.a n = A132440 n

theorem P6607540937754467936.correct : P6607540937754467936.Spec := by
  intro n
  simp only [A132440, Nat.add_sub_cancel, A132440.P6607540937754467936.a, A132440.P17079068129318921596.f1, A132440.P17079068129318921596.a, A094727, A094727.P1759177724676722475.a, A167374, A167374.P10274264666879591430.a, A196389, A196389.P4708616426695059720.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A132440

/-! ## A132440.P2863879996020712174

`A003056(n*A129186(n))`
-/

namespace A132440.P2863879996020712174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n : ℤ) * A129186 n).toNat

end

end A132440.P2863879996020712174

namespace A132440

/-- `A003056(n*A129186(n))` -/
def P2863879996020712174.Spec : Prop :=
  ∀ n, P2863879996020712174.a n = A132440 n

end A132440

/-! ## A132440.P9667354335808615731

`A049780(n*A097806(n))`
-/

namespace A132440.P9667354335808615731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 ((n : ℤ) * A097806 n).toNat

end

end A132440.P9667354335808615731

namespace A132440

/-- `A049780(n*A097806(n))` -/
def P9667354335808615731.Spec : Prop :=
  ∀ n, P9667354335808615731.a n = A132440 n

end A132440

/-! ## A132440.P1641403385044974524

`A049695(n*A129186(n))`
-/

namespace A132440.P1641403385044974524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 ((n : ℤ) * A129186 n).toNat

end

end A132440.P1641403385044974524

namespace A132440

/-- `A049695(n*A129186(n))` -/
def P1641403385044974524.Spec : Prop :=
  ∀ n, P1641403385044974524.a n = A132440 n

end A132440

/-! ## A132440.P15172910641645076331

`A049780(n*A129186(n))`
-/

namespace A132440.P15172910641645076331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 ((n : ℤ) * A129186 n).toNat

end

end A132440.P15172910641645076331

namespace A132440

/-- `A049780(n*A129186(n))` -/
def P15172910641645076331.Spec : Prop :=
  ∀ n, P15172910641645076331.a n = A132440 n

end A132440

/-! ## A132440.P4872257058013865692

`A055630(n*A129186(n))`
-/

namespace A132440.P4872257058013865692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055630 ((n : ℤ) * A129186 n).toNat

end

end A132440.P4872257058013865692

namespace A132440

/-- `A055630(n*A129186(n))` -/
def P4872257058013865692.Spec : Prop :=
  ∀ n, P4872257058013865692.a n = A132440 n

end A132440

/-! ## A132440.P3908899624021267845

`A049780(n)*A136157(n)`
-/

namespace A132440.P3908899624021267845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n * A136157 n

end

end A132440.P3908899624021267845

namespace A132440

/-- `A049780(n)*A136157(n)` -/
def P3908899624021267845.Spec : Prop :=
  ∀ n, P3908899624021267845.a n = A132440 n

end A132440

/-!
# A132441: Number of 3-noncrossing stack-free partial matchings without 1-arcs.

The programs for A132441, there is no canonical definition to state claims against.
-/

/-! ## A132441.P12277135637085770692

`A249728(A026273(n!))`
-/

namespace A132441.P12277135637085770692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A026273 (Nat.factorial n)).toNat

end

end A132441.P12277135637085770692

/-! ## A132441.P7305306026994420493

`A249728(A184656(n!))`
-/

namespace A132441.P7305306026994420493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A184656 (Nat.factorial n)).toNat

end

end A132441.P7305306026994420493

/-! ## A132441.P7956006815628436528

`A187485(A249728(n!))`
-/

namespace A132441.P7956006815628436528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (A249728 (Nat.factorial n)).toNat

end

end A132441.P7956006815628436528

/-! ## A132441.P16487583803084740571

`A024417(A148968(n)+1)`
-/

namespace A132441.P16487583803084740571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148968 n + 1).toNat

end

end A132441.P16487583803084740571

/-!
# A132442: Triangle whose n-th row consists of the first n terms of the n-th row of A134866.

The programs for A132442, the canonical program `A132442.P4038622056087217901` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132442 has offset 1).

The definition of A132442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132442.P4038622056087217901

`∑{d}[A050873(n+1), #]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A132442

/-- `∑{d}[A050873(n+1), #]` -/
def P4038622056087217901.Spec : Prop :=
  ∀ n, (P4038622056087217901.a n : ℤ) = A132442 (n + 1)

theorem P4038622056087217901.correct : P4038622056087217901.Spec := by
  intro n
  simp only [A132442, Nat.add_sub_cancel]

end A132442

/-! ## A132442.P5803665175438896132

`A000203(A050873(n+1))`
-/

namespace A132442.P5803665175438896132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A050873 (n + 1)).toNat

end

end A132442.P5803665175438896132

namespace A132442

/-- `A000203(A050873(n+1))` -/
def P5803665175438896132.Spec : Prop :=
  ∀ n, P5803665175438896132.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P8845385233485589206

`A000203(A109004(comp[∑[n]]))`
-/

namespace A132442.P8845385233485589206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A109004 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A132442.P8845385233485589206

namespace A132442

/-- `A000203(A109004(comp[∑[n]]))` -/
def P8845385233485589206.Spec : Prop :=
  ∀ n, P8845385233485589206.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P5528175665941996904

`A000203(gcd(A002024(n+1), A025581(n)))`
-/

namespace A132442.P5528175665941996904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (A002024 (n + 1)) (A025581 n))

end

end A132442.P5528175665941996904

namespace A132442

/-- `A000203(gcd(A002024(n+1), A025581(n)))` -/
def P5528175665941996904.Spec : Prop :=
  ∀ n, P5528175665941996904.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P8106814544361929897

`A365347(A050873(n+1)²)`
-/

namespace A132442.P8106814544361929897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365347 (A050873 (n + 1) ^ 2).toNat

end

end A132442.P8106814544361929897

namespace A132442

/-- `A365347(A050873(n+1)²)` -/
def P8106814544361929897.Spec : Prop :=
  ∀ n, P8106814544361929897.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P4434378266471287480

`A000203(A067815(A004202(n+1)))`
-/

namespace A132442.P4434378266471287480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A067815 (A004202 (n + 1)).toNat).toNat

end

end A132442.P4434378266471287480

namespace A132442

/-- `A000203(A067815(A004202(n+1)))` -/
def P4434378266471287480.Spec : Prop :=
  ∀ n, P4434378266471287480.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P11389198103140701790

`A000203(A067815(A063657(n+1)))`
-/

namespace A132442.P11389198103140701790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A067815 (A063657 (n + 1)).toNat).toNat

end

end A132442.P11389198103140701790

namespace A132442

/-- `A000203(A067815(A063657(n+1)))` -/
def P11389198103140701790.Spec : Prop :=
  ∀ n, P11389198103140701790.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P8605413276906213800

`A127570(2*A050873(n+1)²)`
-/

namespace A132442.P8605413276906213800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127570 (2 * A050873 (n + 1) ^ 2).toNat

end

end A132442.P8605413276906213800

namespace A132442

/-- `A127570(2*A050873(n+1)²)` -/
def P8605413276906213800.Spec : Prop :=
  ∀ n, P8605413276906213800.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P7069959407862414655

`A000203(A289508(A087112(n+1)))`
-/

namespace A132442.P7069959407862414655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A289508 (A087112 (n + 1)).toNat).toNat

end

end A132442.P7069959407862414655

namespace A132442

/-- `A000203(A289508(A087112(n+1)))` -/
def P7069959407862414655.Spec : Prop :=
  ∀ n, P7069959407862414655.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P14728402233468573671

`A000203(A093057(n+1)+1)`
-/

namespace A132442.P14728402233468573671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A093057 (n + 1) + 1).toNat

end

end A132442.P14728402233468573671

namespace A132442

/-- `A000203(A093057(n+1)+1)` -/
def P14728402233468573671.Spec : Prop :=
  ∀ n, P14728402233468573671.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P16784979642535292522

`A000203(A005555(A093057(n+1)))`
-/

namespace A132442.P16784979642535292522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005555 (A093057 (n + 1)).toNat).toNat

end

end A132442.P16784979642535292522

namespace A132442

/-- `A000203(A005555(A093057(n+1)))` -/
def P16784979642535292522.Spec : Prop :=
  ∀ n, P16784979642535292522.a n = A132442 (n + 1)

end A132442

/-! ## A132442.P10112334564725400219

`A000203(A099244(A099627(n)))`
-/

namespace A132442.P10112334564725400219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A099244 (A099627 n).toNat).toNat

end

end A132442.P10112334564725400219

namespace A132442

/-- `A000203(A099244(A099627(n)))` -/
def P10112334564725400219.Spec : Prop :=
  ∀ n, P10112334564725400219.a n = A132442 (n + 1)

end A132442

/-!
# A132443: Number of n x n crossword puzzles with rotational symmetry and exactly one black square per row.

The programs for A132443, there is no canonical definition to state claims against.
-/

/-! ## A132443.P10235180882885389472

`2*A132444(n+3)`
-/

namespace A132443.P10235180882885389472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132444 (n + 3)

end

end A132443.P10235180882885389472

/-! ## A132443.P13128790412987662232

`A005843(A132444(n+3))`
-/

namespace A132443.P13128790412987662232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A132444 (n + 3)).toNat

end

end A132443.P13128790412987662232

/-! ## A132443.P9067286830095266306

`A057356(lcm(7, A132444(n+3)))`
-/

namespace A132443.P9067286830095266306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (Int.lcm 7 (A132444 (n + 3)))

end

end A132443.P9067286830095266306

/-! ## A132443.P2740435150600692593

`A132444(n+3)/abs(A065357(n)/2)`
-/

namespace A132443.P2740435150600692593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132444 (n + 3) : ℚ) / |(A065357 n : ℚ) / 2|

end

end A132443.P2740435150600692593

/-! ## A132443.P7558577840469641579

`A132444(A069799(n+3))+A132444(n+3)`
-/

namespace A132443.P7558577840469641579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132444 (A069799 (n + 3)).toNat + A132444 (n + 3)

end

end A132443.P7558577840469641579

/-!
# A132444: Number of n x n crossword puzzles with rotational symmetry and exactly one black square per row, up to symmetry.

The programs for A132444, there is no canonical definition to state claims against.
-/

/-! ## A132444.P7964541338778188131

`A132443(n+3)/2`
-/

namespace A132444.P7964541338778188131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132443 (n + 3) : ℚ) / 2

end

end A132444.P7964541338778188131

/-! ## A132444.P5592978871216312729

`A001281(A132443(n+3))`
-/

namespace A132444.P5592978871216312729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A132443 (n + 3)).toNat

end

end A132444.P5592978871216312729

/-! ## A132444.P15311433379865922093

`A004524(A132443(n+3)+1)`
-/

namespace A132444.P15311433379865922093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A132443 (n + 3) + 1).toNat

end

end A132444.P15311433379865922093

/-! ## A132444.P3355145032868743061

`A004526(A132443(n+3)+1)`
-/

namespace A132444.P3355145032868743061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A132443 (n + 3) + 1).toNat

end

end A132444.P3355145032868743061

/-! ## A132444.P9397099624920271365

`A028242(A132443(n+3)+1)`
-/

namespace A132444.P9397099624920271365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A132443 (n + 3) + 1).toNat

end

end A132444.P9397099624920271365

/-!
# A132445: Number of n X n crossword puzzles with rotational symmetry and at most one black square per row.

The programs for A132445, there is no canonical definition to state claims against.
-/

/-! ## A132445.P355650503894220125

`A359121(A370033(n+2))`
-/

namespace A132445.P355650503894220125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359121 (A370033 (n + 2)).toNat

end

end A132445.P355650503894220125

/-! ## A132445.P708614060514002374

`∑[A131818(A236913(3*n)-n)]`
-/

namespace A132445.P708614060514002374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A236913 (3 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132445.P708614060514002374

/-! ## A132445.P17263083902112674973

`A348841(A006206(3*n+5)+n)+1`
-/

namespace A132445.P17263083902112674973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348841 (A006206 (3 * n + 5) + (n : ℤ)).toNat + 1

end

end A132445.P17263083902112674973

/-!
# A132446: The number of n x n crossword puzzles with at most one black square per row up to horizontal/vertical symmetry.

The programs for A132446, there is no canonical definition to state claims against.
-/

/-! ## A132446.P2740443234896453177

`∑[A283961(∑[A283959(n+2)]-n)]`
-/

namespace A132446.P2740443234896453177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283959 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283961 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132446.P2740443234896453177

/-! ## A132446.P6798093446565096019

`A138495(n)+A000041(A002379(n))`
-/

namespace A132446.P6798093446565096019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 n + A000041 (A002379 n).toNat

end

end A132446.P6798093446565096019

/-!
# A132447: First primitive GF(2)[X] polynomial of degree n.

The programs for A132447, there is no canonical definition to state claims against.
-/

/-! ## A132447.P15484291228456666739

`A132448(n+1)+2^(n+1)`
-/

namespace A132447.P15484291228456666739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132448 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A132447.P15484291228456666739

/-! ## A132447.P7519925906074023990

`or(A048578(n), A132448(n+1))`
-/

namespace A132447.P7519925906074023990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048578 n) (A132448 (n + 1))

end

end A132447.P7519925906074023990

/-! ## A132447.P8864756058594772625

`or(A132448(n+1), A198633(n))`
-/

namespace A132447.P8864756058594772625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132448 (n + 1)) (A198633 n)

end

end A132447.P8864756058594772625

/-! ## A132447.P8766153494301831954

`or(A122111(A000040(n+1)), A132448(n+1))`
-/

namespace A132447.P8766153494301831954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122111 (A000040 (n + 1)).toNat) (A132448 (n + 1))

end

end A132447.P8766153494301831954

/-! ## A132447.P8291394978266078279

`A048578(n)+A132448(n+1)-A038712(2*n+5)`
-/

namespace A132447.P8291394978266078279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n + (A132448 (n + 1) - A038712 (2 * n + 5))

end

end A132447.P8291394978266078279

/-!
# A132448: First primitive polynomial over GF(2) of degree n, X^n suppressed.

The programs for A132448, there is no canonical definition to state claims against.
-/

/-! ## A132448.P17419342940451285474

`and(∑[2^n], A132447(n+1))`
-/

namespace A132448.P17419342940451285474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A132447 (n + 1))

end

end A132448.P17419342940451285474

/-! ## A132448.P17047191351714281058

`and(A132447(n+1), A285542(n))`
-/

namespace A132448.P17047191351714281058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132447 (n + 1)) (A285542 n)

end

end A132448.P17047191351714281058

/-! ## A132448.P9035669830865436685

`A132447(n+1)-(A126646(n)+1)`
-/

namespace A132448.P9035669830865436685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132447 (n + 1) - (A126646 n + 1)

end

end A132448.P9035669830865436685

/-! ## A132448.P3329016786243795875

`and(A132447(n+1), A263806(n))`
-/

namespace A132448.P3329016786243795875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132447 (n + 1)) (A263806 n)

end

end A132448.P3329016786243795875

/-! ## A132448.P17816773768436178738

`and(A132447(n+1), A267816(n))`
-/

namespace A132448.P17816773768436178738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132447 (n + 1)) (A267816 n)

end

end A132448.P17816773768436178738

/-! ## A132448.P15045630737345775458

`and(A132447(n+1), A195460(n+1))`
-/

namespace A132448.P15045630737345775458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132447 (n + 1)) (A195460 (n + 1))

end

end A132448.P15045630737345775458

/-! ## A132448.P3484530608527464453

`and(A132447(n+1), A220236(n+1))`
-/

namespace A132448.P3484530608527464453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132447 (n + 1)) (A220236 (n + 1))

end

end A132448.P3484530608527464453

/-! ## A132448.P11329400783804626234

`and(A132447(n+1), A381707(n+1))`
-/

namespace A132448.P11329400783804626234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132447 (n + 1)) (A381707 (n + 1))

end

end A132448.P11329400783804626234

/-!
# A132449: First primitive GF(2)[X] polynomial of degree n with at most 5 terms.

The programs for A132449, there is no canonical definition to state claims against.
-/

/-! ## A132449.P5812723969264993437

`A132447(n+1)+char[48]`
-/

namespace A132449.P5812723969264993437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132447 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132449.P5812723969264993437

/-! ## A132449.P17569152140825188275

`A132450(n+1)+2^(n+1)`
-/

namespace A132449.P17569152140825188275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132450 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A132449.P17569152140825188275

/-! ## A132449.P4131851447386874819

`A132447(A387051(n))`
-/

namespace A132449.P4131851447386874819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132447 (A387051 n).toNat

end

end A132449.P4131851447386874819

/-! ## A132449.P16753573058376895828

`A132447(A008684(n+1))`
-/

namespace A132449.P16753573058376895828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132447 (A008684 (n + 1)).toNat

end

end A132449.P16753573058376895828

/-! ## A132449.P10337068130245274435

`A132447(A032513(n+1))`
-/

namespace A132449.P10337068130245274435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132447 (A032513 (n + 1)).toNat

end

end A132449.P10337068130245274435

/-!
# A132451: First primitive GF(2)[X] polynomials of degree n with exactly 5 terms.

The programs for A132451, there is no canonical definition to state claims against.
-/

/-! ## A132451.P5567762193053690611

`A061358(n)*A371166(A102726(n))`
-/

namespace A132451.P5567762193053690611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n * A371166 (A102726 n).toNat

end

end A132451.P5567762193053690611

/-! ## A132451.P3615829219028751955

`A002265(n)*A165887(A133928(n+1))`
-/

namespace A132451.P3615829219028751955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n * A165887 (A133928 (n + 1)).toNat

end

end A132451.P3615829219028751955

/-!
# A132452: First primitive GF(2)[X] polynomials of degree n with exactly 5 terms, X^n suppressed.

The programs for A132452, there is no canonical definition to state claims against.
-/

/-! ## A132452.P11398046267442302463

`A132451(n+5)-A132479(n+3)`
-/

namespace A132452.P11398046267442302463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132451 (n + 5) - A132479 (n + 3)

end

end A132452.P11398046267442302463

/-!
# A132456: Number of partitions of n into composite parts such that succeeding parts have a common prime factor.

The programs for A132456, there is no canonical definition to state claims against.
-/

/-! ## A132456.P15128463858832193124

`and(A023895(n), A047298(A187893(n)))`
-/

namespace A132456.P15128463858832193124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023895 n) (A047298 (A187893 n).toNat)

end

end A132456.P15128463858832193124

/-! ## A132456.P1044053743778703038

`A023895(n)*A359550(A102981(n+1))`
-/

namespace A132456.P1044053743778703038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n * A359550 (A102981 (n + 1)).toNat

end

end A132456.P1044053743778703038

/-! ## A132456.P17274677283603904515

`A023895(n)%A275732(A247569(n+2))`
-/

namespace A132456.P17274677283603904515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023895 n) (A275732 (A247569 (n + 2)).toNat)

end

end A132456.P17274677283603904515

/-! ## A132456.P6987908192415956745

`and(A023895(n), A135347(A000292(2*n+1)))`
-/

namespace A132456.P6987908192415956745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023895 n) (A135347 (A000292 (2 * n + 1)).toNat)

end

end A132456.P6987908192415956745

/-! ## A132456.P14560594855470668753

`and(A023895(n), A291875(A291845(n)))`
-/

namespace A132456.P14560594855470668753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023895 n) (A291875 (A291845 n).toNat)

end

end A132456.P14560594855470668753

/-!
# A132457: Composites of the form ((x+y)/3+2)/(x-y), where x and y are prime.

The programs for A132457, there is no canonical definition to state claims against.
-/

/-! ## A132457.P1504502056005277133

`∩[A102554(n+1), A186243(n+1)]`
-/

namespace A132457.P1504502056005277133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132457.P1504502056005277133

/-! ## A132457.P11582781155498848563

`∩[A186243(n+1), A382900(n+1)]`
-/

namespace A132457.P11582781155498848563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132457.P11582781155498848563

/-! ## A132457.P4738022232770257928

`∩[A186243(n+1), A323521(n+1)]`
-/

namespace A132457.P4738022232770257928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132457.P4738022232770257928

/-! ## A132457.P18273984698056693780

`∩[A186243(n+1), A379722(n+1)]`
-/

namespace A132457.P18273984698056693780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132457.P18273984698056693780

/-! ## A132457.P12627157305241146817

`filter[A186243(n+1), A174889(#)]`
-/

namespace A132457.P12627157305241146817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A132457.P12627157305241146817

/-!
# A132458: Let df(n,k) = Product_{i=0..k-1} (n-i) be the descending factorial and let P(m,n) = df(n-1,m-1)^2*(2*n-m)/((m-1)!*m!). Sequence gives P(4,n).

The programs for A132458, the canonical program `A132458.P12527965884493786901` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132458 has offset 1).

The definition of A132458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132458.P12527965884493786901

`(n-2)²*(n-1)^3*n²/72`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132458

/-- `(n-2)²*(n-1)^3*n²/72` -/
def P12527965884493786901.Spec : Prop :=
  ∀ n, P12527965884493786901.a n = (A132458 (n + 1) : ℚ)

end A132458

/-! ## A132458.P11016346584287914908

`Δ[C(n, 4)²]`
-/

namespace A132458.P11016346584287914908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132458.P11016346584287914908

namespace A132458

/-- `Δ[C(n, 4)²]` -/
def P11016346584287914908.Spec : Prop :=
  ∀ n, P11016346584287914908.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P4247866870126351440

`Δ[C(n, 4)^(4/2)]`
-/

namespace A132458.P4247866870126351440
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℝ) ^ ((4 : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P4247866870126351440

namespace A132458

/-- `Δ[C(n, 4)^(4/2)]` -/
def P4247866870126351440.Spec : Prop :=
  ∀ n, P4247866870126351440.a n = (A132458 (n + 1) : ℝ)

end A132458

/-! ## A132458.P10151267126918531911

`(n-1)/2*C(n, 3)²`
-/

namespace A132458.P10151267126918531911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (Nat.choose n 3 ^ 2 : ℚ)

end

end A132458.P10151267126918531911

namespace A132458

/-- `(n-1)/2*C(n, 3)²` -/
def P10151267126918531911.Spec : Prop :=
  ∀ n, P10151267126918531911.a n = (A132458 (n + 1) : ℚ)

end A132458

/-! ## A132458.P6452363303811042301

`Δ[(n-A014626(n))²]`
-/

namespace A132458.P6452363303811042301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A014626 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P6452363303811042301

namespace A132458

/-- `Δ[(n-A014626(n))²]` -/
def P6452363303811042301.Spec : Prop :=
  ∀ n, P6452363303811042301.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P4899833184525199622

`Δ[A000332(n)²]`
-/

namespace A132458.P4899833184525199622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P4899833184525199622

namespace A132458

/-- `Δ[A000332(n)²]` -/
def P4899833184525199622.Spec : Prop :=
  ∀ n, P4899833184525199622.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P201430335007423458

`Δ[(A034827(n)/2)²]`
-/

namespace A132458.P201430335007423458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034827 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P201430335007423458

namespace A132458

/-- `Δ[(A034827(n)/2)²]` -/
def P201430335007423458.Spec : Prop :=
  ∀ n, P201430335007423458.a n = (A132458 (n + 1) : ℚ)

end A132458

/-! ## A132458.P12799657752266235784

`Δ[(A052762(n)/24)²]`
-/

namespace A132458.P12799657752266235784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A052762 n : ℚ) / 24) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P12799657752266235784

namespace A132458

/-- `Δ[(A052762(n)/24)²]` -/
def P12799657752266235784.Spec : Prop :=
  ∀ n, P12799657752266235784.a n = (A132458 (n + 1) : ℚ)

end A132458

/-! ## A132458.P8423104684787322329

`Δ[∑{d}[n, A346761(#)]²]`
-/

namespace A132458.P8423104684787322329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A346761 d) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P8423104684787322329

namespace A132458

/-- `Δ[∑{d}[n, A346761(#)]²]` -/
def P8423104684787322329.Spec : Prop :=
  ∀ n, P8423104684787322329.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P15071732035365845006

`Δ[(n-∑[A050407(n)])²]`
-/

namespace A132458.P15071732035365845006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P15071732035365845006

namespace A132458

/-- `Δ[(n-∑[A050407(n)])²]` -/
def P15071732035365845006.Spec : Prop :=
  ∀ n, P15071732035365845006.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P994180434647103516

`Δ[A052762(n)/24*A000332(n)]`
-/

namespace A132458.P994180434647103516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 24 * (A000332 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P994180434647103516

namespace A132458

/-- `Δ[A052762(n)/24*A000332(n)]` -/
def P994180434647103516.Spec : Prop :=
  ∀ n, P994180434647103516.a n = (A132458 (n + 1) : ℚ)

end A132458

/-! ## A132458.P13047190823865505452

`Δ[(A000125(n)-Δ[A006261(n)])²]`
-/

namespace A132458.P13047190823865505452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000125 n - (f2 (n + 1) - f2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P13047190823865505452

namespace A132458

/-- `Δ[(A000125(n)-Δ[A006261(n)])²]` -/
def P13047190823865505452.Spec : Prop :=
  ∀ n, P13047190823865505452.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P16663098689431386456

`A000332(n+1)²-A000332(n)²`
-/

namespace A132458.P16663098689431386456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) ^ 2 - A000332 n ^ 2

end

end A132458.P16663098689431386456

namespace A132458

/-- `A000332(n+1)²-A000332(n)²` -/
def P16663098689431386456.Spec : Prop :=
  ∀ n, P16663098689431386456.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P1504211919374495326

`Δ[Δ[A000389(n)]²]`
-/

namespace A132458.P1504211919374495326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P1504211919374495326

namespace A132458

/-- `Δ[Δ[A000389(n)]²]` -/
def P1504211919374495326.Spec : Prop :=
  ∀ n, P1504211919374495326.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P10808391270953499494

`Δ[Δ[A000389(n)]*A000332(n)]`
-/

namespace A132458.P10808391270953499494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P10808391270953499494

namespace A132458

/-- `Δ[Δ[A000389(n)]*A000332(n)]` -/
def P10808391270953499494.Spec : Prop :=
  ∀ n, P10808391270953499494.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P2129903590957841711

`Δ[A052762(n)/24*Δ[A000389(n)]]`
-/

namespace A132458.P2129903590957841711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 24 * (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P2129903590957841711

namespace A132458

/-- `Δ[A052762(n)/24*Δ[A000389(n)]]` -/
def P2129903590957841711.Spec : Prop :=
  ∀ n, P2129903590957841711.a n = (A132458 (n + 1) : ℚ)

end A132458

/-! ## A132458.P15125031513811075681

`Δ[(A000127(n+1)-Δ[A000127(n+1)])²]`
-/

namespace A132458.P15125031513811075681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000127 (n + 1) - (f2 (n + 1) - f2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P15125031513811075681

namespace A132458

/-- `Δ[(A000127(n+1)-Δ[A000127(n+1)])²]` -/
def P15125031513811075681.Spec : Prop :=
  ∀ n, P15125031513811075681.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P15654200559326853791

`Δ[A331575(2*n)]`
-/

namespace A132458.P15654200559326853791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331575 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P15654200559326853791

namespace A132458

/-- `Δ[A331575(2*n)]` -/
def P15654200559326853791.Spec : Prop :=
  ∀ n, P15654200559326853791.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P11373696616050756173

`A331575(2*(n+1))-A331575(2*n)`
-/

namespace A132458.P11373696616050756173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331575 (2 * (n + 1)) - A331575 (2 * n)

end

end A132458.P11373696616050756173

namespace A132458

/-- `A331575(2*(n+1))-A331575(2*n)` -/
def P11373696616050756173.Spec : Prop :=
  ∀ n, P11373696616050756173.a n = A132458 (n + 1)

end A132458

/-! ## A132458.P10917003808026871659

`Δ[(A333321(2*n+1)-A333321(2*n))²]`
-/

namespace A132458.P10917003808026871659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333321 (2 * n + 1) - A333321 (2 * n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132458.P10917003808026871659

namespace A132458

/-- `Δ[(A333321(2*n+1)-A333321(2*n))²]` -/
def P10917003808026871659.Spec : Prop :=
  ∀ n, P10917003808026871659.a n = A132458 (n + 1)

end A132458

/-!
# A132460: Irregular triangle read by rows of the initial floor(n/2) + 1 coefficients of 1/C(x)^n, where C(x) is the g.f. of the Catalan sequence (A000108).

The programs for A132460, the canonical program `A132460.P7544697064205325681` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132460 has offset 0).

The definition of A132460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132460.P13119006327950701222

`A213234(or(n, n%a(n-1)²))` with `a(0)=1`
-/

namespace A132460.P13119006327950701222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213234 (Int.lor (n : ℤ) (Int.tmod (n : ℤ) (a (n - 1) ^ 2))).toNat

end

end A132460.P13119006327950701222

namespace A132460

/-- `A213234(or(n, n%a(n-1)²))` -/
def P13119006327950701222.Spec : Prop :=
  ∀ n, P13119006327950701222.a n = A132460 n

end A132460

/-! ## A132460.P13984410931282524248

`A213234(n-a(n-1)²%a(n-1))` with `a(0)=1`
-/

namespace A132460.P13984410931282524248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213234 ((n : ℤ) - Int.tmod (a (n - 1) ^ 2) (a (n - 1))).toNat

end

end A132460.P13984410931282524248

namespace A132460

/-- `A213234(n-a(n-1)²%a(n-1))` -/
def P13984410931282524248.Spec : Prop :=
  ∀ n, P13984410931282524248.a n = A132460 n

end A132460

/-! ## A132460.P9221721855895712303

`A213234(A028310(n))`
-/

namespace A132460.P9221721855895712303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (A028310 n).toNat

end

end A132460.P9221721855895712303

namespace A132460

/-- `A213234(A028310(n))` -/
def P9221721855895712303.Spec : Prop :=
  ∀ n, P9221721855895712303.a n = A132460 n

end A132460

/-! ## A132460.P143652278745293004

`A213234(A143051(n+1))`
-/

namespace A132460.P143652278745293004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (A143051 (n + 1)).toNat

end

end A132460.P143652278745293004

namespace A132460

/-- `A213234(A143051(n+1))` -/
def P143652278745293004.Spec : Prop :=
  ∀ n, P143652278745293004.a n = A132460 n

end A132460

/-! ## A132460.P9804727183088732799

`A213234(A000007(n)+n)`
-/

namespace A132460.P9804727183088732799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (A000007 n + (n : ℤ)).toNat

end

end A132460.P9804727183088732799

namespace A132460

/-- `A213234(A000007(n)+n)` -/
def P9804727183088732799.Spec : Prop :=
  ∀ n, P9804727183088732799.a n = A132460 n

end A132460

/-! ## A132460.P10698667239335423352

`A213234(n)-A000007(n)`
-/

namespace A132460.P10698667239335423352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 n - A000007 n

end

end A132460.P10698667239335423352

namespace A132460

/-- `A213234(n)-A000007(n)` -/
def P10698667239335423352.Spec : Prop :=
  ∀ n, P10698667239335423352.a n = A132460 n

end A132460

/-! ## A132460.P17629123245516031301

`A213234(n)/A054977(n)`
-/

namespace A132460.P17629123245516031301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213234 n : ℚ) / (A054977 n : ℚ)

end

end A132460.P17629123245516031301

namespace A132460

/-- `A213234(n)/A054977(n)` -/
def P17629123245516031301.Spec : Prop :=
  ∀ n, P17629123245516031301.a n = (A132460 n : ℚ)

end A132460

/-! ## A132460.P3331690837041230441

`A213234(A057428(n)+1+n)`
-/

namespace A132460.P3331690837041230441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (A057428 n + 1 + (n : ℤ)).toNat

end

end A132460.P3331690837041230441

namespace A132460

/-- `A213234(A057428(n)+1+n)` -/
def P3331690837041230441.Spec : Prop :=
  ∀ n, P3331690837041230441.a n = A132460 n

end A132460

/-! ## A132460.P13236540211830485407

`A213234(A054977(n)-1+n)`
-/

namespace A132460.P13236540211830485407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (A054977 n - 1 + (n : ℤ)).toNat

end

end A132460.P13236540211830485407

namespace A132460

/-- `A213234(A054977(n)-1+n)` -/
def P13236540211830485407.Spec : Prop :=
  ∀ n, P13236540211830485407.a n = A132460 n

end A132460

/-! ## A132460.P8892120312171716750

`A213234(A054977(n)-(1-n))`
-/

namespace A132460.P8892120312171716750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (A054977 n - (1 - (n : ℤ))).toNat

end

end A132460.P8892120312171716750

namespace A132460

/-- `A213234(A054977(n)-(1-n))` -/
def P8892120312171716750.Spec : Prop :=
  ∀ n, P8892120312171716750.a n = A132460 n

end A132460

/-! ## A132460.P3424978398861189597

`A213234(n)-1-A057428(n)`
-/

namespace A132460.P3424978398861189597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 n - 1 - A057428 n

end

end A132460.P3424978398861189597

namespace A132460

/-- `A213234(n)-1-A057428(n)` -/
def P3424978398861189597.Spec : Prop :=
  ∀ n, P3424978398861189597.a n = A132460 n

end A132460

/-! ## A132460.P8805445316215463391

`A213234(A001316(n)%2+n)`
-/

namespace A132460.P8805445316215463391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (Int.tmod (A001316 n) 2 + (n : ℤ)).toNat

end

end A132460.P8805445316215463391

namespace A132460

/-- `A213234(A001316(n)%2+n)` -/
def P8805445316215463391.Spec : Prop :=
  ∀ n, P8805445316215463391.a n = A132460 n

end A132460

/-! ## A132460.P1097099460839347761

`A213234(gcd(n, A089800(n)+n))`
-/

namespace A132460.P1097099460839347761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (Int.gcd (n : ℤ) (A089800 n + (n : ℤ)))

end

end A132460.P1097099460839347761

namespace A132460

/-- `A213234(gcd(n, A089800(n)+n))` -/
def P1097099460839347761.Spec : Prop :=
  ∀ n, P1097099460839347761.a n = A132460 n

end A132460

/-! ## A132460.P1180038808733821713

`A213234(n)/A213234(A000194(n)²)`
-/

namespace A132460.P1180038808733821713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213234 n : ℚ) / (A213234 (A000194 n ^ 2).toNat : ℚ)

end

end A132460.P1180038808733821713

namespace A132460

/-- `A213234(n)/A213234(A000194(n)²)` -/
def P1180038808733821713.Spec : Prop :=
  ∀ n, P1180038808733821713.a n = (A132460 n : ℚ)

end A132460

/-! ## A132460.P8999036272492799691

`A213234(n)/A213234(A004159(n)²)`
-/

namespace A132460.P8999036272492799691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213234 n : ℚ) / (A213234 (A004159 n ^ 2).toNat : ℚ)

end

end A132460.P8999036272492799691

namespace A132460

/-- `A213234(n)/A213234(A004159(n)²)` -/
def P8999036272492799691.Spec : Prop :=
  ∀ n, P8999036272492799691.a n = (A132460 n : ℚ)

end A132460

/-! ## A132460.P12455794614340619371

`A213234(n)/A213234(A001222(n+1)²)`
-/

namespace A132460.P12455794614340619371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213234 n : ℚ) / (A213234 (A001222 (n + 1) ^ 2).toNat : ℚ)

end

end A132460.P12455794614340619371

namespace A132460

/-- `A213234(n)/A213234(A001222(n+1)²)` -/
def P12455794614340619371.Spec : Prop :=
  ∀ n, P12455794614340619371.a n = (A132460 n : ℚ)

end A132460

/-! ## A132460.P2087667995733987496

`gcd(A213234(n)², A089800(n))/A213234(n)`
-/

namespace A132460.P2087667995733987496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A213234 n ^ 2) (A089800 n) : ℚ) / (A213234 n : ℚ)

end

end A132460.P2087667995733987496

namespace A132460

/-- `gcd(A213234(n)², A089800(n))/A213234(n)` -/
def P2087667995733987496.Spec : Prop :=
  ∀ n, P2087667995733987496.a n = (A132460 n : ℚ)

end A132460

/-! ## A132460.P7544697064205325681

`A293600(A056536(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A132460

/-- `A293600(A056536(n+1))` -/
def P7544697064205325681.Spec : Prop :=
  ∀ n, P7544697064205325681.a n = A132460 n

theorem P7544697064205325681.correct : P7544697064205325681.Spec := by
  intro n
  simp only [A132460]

end A132460

/-! ## A132460.P16608679700325656557

`A213234(n)/A027642(2*n+1)`
-/

namespace A132460.P16608679700325656557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213234 n : ℚ) / (A027642 (2 * n + 1) : ℚ)

end

end A132460.P16608679700325656557

namespace A132460

/-- `A213234(n)/A027642(2*n+1)` -/
def P16608679700325656557.Spec : Prop :=
  ∀ n, P16608679700325656557.a n = (A132460 n : ℚ)

end A132460

/-! ## A132460.P12287236095714168420

`A213234(n)/A213234(A055086(n)²)`
-/

namespace A132460.P12287236095714168420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213234 n : ℚ) / (A213234 (A055086 n ^ 2).toNat : ℚ)

end

end A132460.P12287236095714168420

namespace A132460

/-- `A213234(n)/A213234(A055086(n)²)` -/
def P12287236095714168420.Spec : Prop :=
  ∀ n, P12287236095714168420.a n = (A132460 n : ℚ)

end A132460

/-!
# A132461: Row squared sums of triangle of Lucas polynomials (A034807) for n>0: Sum_{k=0..floor(n/2)} A034807(n,k)^2, with a(0)=1.

The programs for A132461, there is no canonical definition to state claims against.
-/

/-! ## A132461.P17488891237750083848

`Δ[A262689(Δ[A214372(n+1)])]`
-/

namespace A132461.P17488891237750083848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214372 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132461.P17488891237750083848

/-! ## A132461.P12986261191448688786

`A025428(A072827(n+4)-char[4])`
-/

namespace A132461.P12986261191448688786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A072827 (n + 4) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A132461.P12986261191448688786

/-! ## A132461.P11723955243725443428

`A177432(n)-A262028(A157274(n))`
-/

namespace A132461.P11723955243725443428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177432 n - A262028 (A157274 n).toNat

end

end A132461.P11723955243725443428

/-!
# A132462: Number of partitions of n into distinct parts congruent to 0 or 2 modulo 3.

The programs for A132462, there is no canonical definition to state claims against.
-/

/-! ## A132462.P596042603633971174

`Δ[A324473(∑[A117958(n)])]`
-/

namespace A132462.P596042603633971174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324473 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132462.P596042603633971174

/-! ## A132462.P2094589678881814689

`A368751(A026688(n))`
-/

namespace A132462.P2094589678881814689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368751 (A026688 n).toNat

end

end A132462.P2094589678881814689

/-! ## A132462.P4224503481589069744

`A046816(n+3)-A269250(A006820(n))`
-/

namespace A132462.P4224503481589069744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 (n + 3) - A269250 (A006820 n).toNat

end

end A132462.P4224503481589069744

/-! ## A132462.P10702432898328005680

`A301569(A022342(n+1))%A331565(3*n+5)`
-/

namespace A132462.P10702432898328005680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301569 (A022342 (n + 1)).toNat) (A331565 (3 * n + 5))

end

end A132462.P10702432898328005680

/-!
# A132463: Number of partitions of n into distinct parts congruent to 0 or 1 modulo 3.

The programs for A132463, there is no canonical definition to state claims against.
-/

/-! ## A132463.P11453400258277597810

`A261029(A032579(n+4))`
-/

namespace A132463.P11453400258277597810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 (A032579 (n + 4)).toNat

end

end A132463.P11453400258277597810

/-! ## A132463.P1948934710156685866

`A101080(xor(A033192(n), A177702(n))+1)`
-/

namespace A132463.P1948934710156685866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101080 (Int.xor (A033192 n) (A177702 n) + 1).toNat

end

end A132463.P1948934710156685866

/-!
# A132464: Let df(n,k) = Product_{i=0..k-1} (n-i) be the descending factorial and let P(m,n) = df(n-1,m-1)^2*(2*n-m)/((m-1)!*m!). Sequence gives P(6,n).

The programs for A132464, the canonical program `A132464.P6250011109291071197` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132464 has offset 1).

The definition of A132464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132464.P6250011109291071197

`Δ[C(n, 6)²]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132464

/-- `Δ[C(n, 6)²]` -/
def P6250011109291071197.Spec : Prop :=
  ∀ n, P6250011109291071197.a n = A132464 (n + 1)

theorem P6250011109291071197.correct : P6250011109291071197.Spec := by
  intro n
  simp only [A132464, Nat.add_sub_cancel]

end A132464

/-! ## A132464.P8982700673782743865

`Δ[C(n, 6)^2]`
-/

namespace A132464.P8982700673782743865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 6 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132464.P8982700673782743865

namespace A132464

/-- `Δ[C(n, 6)^2]` -/
def P8982700673782743865.Spec : Prop :=
  ∀ n, P8982700673782743865.a n = A132464 (n + 1)

theorem P8982700673782743865.correct : P8982700673782743865.Spec := by
  intro n
  simp only [A132464, Nat.add_sub_cancel, A132464.P8982700673782743865.f1, A132464.P8982700673782743865.a, A132464.P6250011109291071197.f1, A132464.P6250011109291071197.a, SequenceMachineLib.memo_apply]

end A132464

/-! ## A132464.P4183002733651539224

`Δ[C(n, 6)*C(n, 6)]`
-/

namespace A132464.P4183002733651539224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 6 * Nat.choose n 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132464.P4183002733651539224

namespace A132464

/-- `Δ[C(n, 6)*C(n, 6)]` -/
def P4183002733651539224.Spec : Prop :=
  ∀ n, P4183002733651539224.a n = A132464 (n + 1)

theorem P4183002733651539224.correct : P4183002733651539224.Spec := by
  intro n
  simp only [A132464, Nat.add_sub_cancel, A132464.P4183002733651539224.f1, A132464.P4183002733651539224.a, A132464.P6250011109291071197.f1, A132464.P6250011109291071197.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132464

/-! ## A132464.P7005688432135226943

`(n-2)/3*C(n, 5)²`
-/

namespace A132464.P7005688432135226943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / 3 * (Nat.choose n 5 ^ 2 : ℚ)

end

end A132464.P7005688432135226943

namespace A132464

/-- `(n-2)/3*C(n, 5)²` -/
def P7005688432135226943.Spec : Prop :=
  ∀ n, P7005688432135226943.a n = (A132464 (n + 1) : ℚ)

theorem P7005688432135226943.correct : P7005688432135226943.Spec := by
  intro n
  simp only [A132464, Nat.add_sub_cancel, A132464.P7005688432135226943.a, A132464.P6250011109291071197.f1, A132464.P6250011109291071197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132464

/-! ## A132464.P5567252460331160550

`∑[A000389(n)]²-A000579(n)²`
-/

namespace A132464.P5567252460331160550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A000579 n ^ 2

end

end A132464.P5567252460331160550

namespace A132464

/-- `∑[A000389(n)]²-A000579(n)²` -/
def P5567252460331160550.Spec : Prop :=
  ∀ n, P5567252460331160550.a n = A132464 (n + 1)

end A132464

/-! ## A132464.P1098137017938480788

`Δ[A000579(n)²]`
-/

namespace A132464.P1098137017938480788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132464.P1098137017938480788

namespace A132464

/-- `Δ[A000579(n)²]` -/
def P1098137017938480788.Spec : Prop :=
  ∀ n, P1098137017938480788.a n = A132464 (n + 1)

theorem P1098137017938480788.correct : P1098137017938480788.Spec := by
  intro n
  simp only [A132464, Nat.add_sub_cancel, A132464.P1098137017938480788.f1, A132464.P1098137017938480788.a, A132464.P6250011109291071197.f1, A132464.P6250011109291071197.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132464

/-! ## A132464.P2698726425502348526

`Δ[(A008859(n)-Δ[A008859(n)])²]`
-/

namespace A132464.P2698726425502348526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008859 n - (f2 (n + 1) - f2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132464.P2698726425502348526

namespace A132464

/-- `Δ[(A008859(n)-Δ[A008859(n)])²]` -/
def P2698726425502348526.Spec : Prop :=
  ∀ n, P2698726425502348526.a n = A132464 (n + 1)

end A132464

/-! ## A132464.P17729187811069128380

`(A000579(n+1)+A000579(n))*A000389(n)`
-/

namespace A132464.P17729187811069128380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000579 (n + 1) + A000579 n) * A000389 n

end

end A132464.P17729187811069128380

namespace A132464

/-- `(A000579(n+1)+A000579(n))*A000389(n)` -/
def P17729187811069128380.Spec : Prop :=
  ∀ n, P17729187811069128380.a n = A132464 (n + 1)

theorem P17729187811069128380.correct : P17729187811069128380.Spec := by
  intro n
  simp only [A132464, Nat.add_sub_cancel, A132464.P17729187811069128380.a, A132464.P6250011109291071197.f1, A132464.P6250011109291071197.a, A000389, A000389.P15450220129395289428.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132464

/-! ## A132464.P15843207998278638239

`Δ[(A035038(n)-A035039(n))²]`
-/

namespace A132464.P15843207998278638239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035038 n - A035039 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132464.P15843207998278638239

namespace A132464

/-- `Δ[(A035038(n)-A035039(n))²]` -/
def P15843207998278638239.Spec : Prop :=
  ∀ n, P15843207998278638239.a n = A132464 (n + 1)

end A132464

/-!
# A132465: Let df(n,k) = Product_{i=0..k-1} (n-i) be the descending factorial and let P(m,n) = df(n-1,m-1)^2*(2*n-m)/((m-1)!*m!). Sequence gives P(7,n).

The programs for A132465, there is no canonical definition to state claims against.
-/

/-! ## A132465.P627989427389302294

`Δ[C(n, 7)²]`
-/

namespace A132465.P627989427389302294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 7 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132465.P627989427389302294

/-! ## A132465.P6092442829484337331

`Δ[C(n, 7)^2]`
-/

namespace A132465.P6092442829484337331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 7 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132465.P6092442829484337331

/-! ## A132465.P4572402680752931577

`Δ[C(n, 7)*C(n, 7)]`
-/

namespace A132465.P4572402680752931577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 7 * Nat.choose n 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132465.P4572402680752931577

/-! ## A132465.P14881508133087070812

`Δ[Δ[Δ[A115205(n)]]²]`
-/

namespace A132465.P14881508133087070812
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132465.P14881508133087070812

/-! ## A132465.P13833399206358182304

`Δ[∑[A000579(abs(1-n))]²]`
-/

namespace A132465.P13833399206358182304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132465.P13833399206358182304

/-!
# A132466: Let df(n,k) = Product_{i=0..k-1} (n-i) be the descending factorial and let P(m,n) = df(n-1,m-1)^2*(2*n-m)/((m-1)!*m!). Sequence gives P(8,n).

The programs for A132466, there is no canonical definition to state claims against.
-/

/-! ## A132466.P12839292067831570914

`Δ[C(n, 8)²]`
-/

namespace A132466.P12839292067831570914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 8 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132466.P12839292067831570914

/-! ## A132466.P14437012674619039116

`Δ[C(n, 8)^2]`
-/

namespace A132466.P14437012674619039116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 8 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132466.P14437012674619039116

/-! ## A132466.P15179438558092583381

`Δ[C(n, 8)*C(n, 8)]`
-/

namespace A132466.P15179438558092583381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 8 * Nat.choose n 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132466.P15179438558092583381

/-! ## A132466.P9263045344474036962

`C(n+1, 8)²-C(n, 8)²`
-/

namespace A132466.P9263045344474036962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 8 ^ 2 : ℤ) - (Nat.choose n 8 ^ 2 : ℤ)

end

end A132466.P9263045344474036962

/-! ## A132466.P13715887181789832055

`Δ[Δ[A115205(n)]²]`
-/

namespace A132466.P13715887181789832055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132466.P13715887181789832055

/-!
# A132467: Denominators associated with Taylor series expansion of inverse error function. See A092676 for numerators and further information.

The programs for A132467, there is no canonical definition to state claims against.
-/

/-! ## A132467.P13179341622978885535

`A092677(n+1)/(2*n+1)`
-/

namespace A132467.P13179341622978885535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092677 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A132467.P13179341622978885535

/-! ## A132467.P5351228304041196906

`floor(A092677(n+1)/A005408(n))`
-/

namespace A132467.P5351228304041196906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092677 (n + 1) : ℚ) / (A005408 n : ℚ)⌋

end

end A132467.P5351228304041196906

/-! ## A132467.P6462649241714625869

`A000680(n)/gcd(A000680(n), A002067(n))`
-/

namespace A132467.P6462649241714625869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000680 n : ℚ) / (Int.gcd (A000680 n) (A002067 n) : ℚ)

end

end A132467.P6462649241714625869

/-! ## A132467.P11214872509267356584

`A092676(n+1)/A002067(n)*A007019(n)/(2*n+1)`
-/

namespace A132467.P11214872509267356584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092676 (n + 1) : ℚ) / (A002067 n : ℚ) * (A007019 n : ℚ) / (2 * n + 1 : ℚ)

end

end A132467.P11214872509267356584

/-!
# A132468: Longest gap between numbers relatively prime to n.

The programs for A132468, there is no canonical definition to state claims against.
-/

/-! ## A132468.P4642126451325404856

`A048669(n+1)-1`
-/

namespace A132468.P4642126451325404856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (n + 1) - 1

end

end A132468.P4642126451325404856

/-! ## A132468.P3773610089707434910

`A059169(4*A048669(n+1))`
-/

namespace A132468.P3773610089707434910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A048669 (n + 1)).toNat

end

end A132468.P3773610089707434910

/-! ## A132468.P12291917034534158888

`A134824(n)+A049298(n+1)`
-/

namespace A132468.P12291917034534158888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n + A049298 (n + 1)

end

end A132468.P12291917034534158888

/-! ## A132468.P11852200536673462099

`A049298(n+1)+A130706(n)-1`
-/

namespace A132468.P11852200536673462099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049298 (n + 1) + (A130706 n - 1)

end

end A132468.P11852200536673462099

/-! ## A132468.P8559827271336503056

`A127229(n+5)%A048669(n+1)`
-/

namespace A132468.P8559827271336503056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A048669 (n + 1))

end

end A132468.P8559827271336503056

/-! ## A132468.P9670229382662904194

`(A048669(n+1)+n)%A007947(n+1)`
-/

namespace A132468.P9670229382662904194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048669 (n + 1) + (n : ℤ)) (A007947 (n + 1))

end

end A132468.P9670229382662904194

/-! ## A132468.P1947591736035161776

`and(A048669(n+1)+A003817(n), A003817(n))`
-/

namespace A132468.P1947591736035161776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1) + A003817 n) (A003817 n)

end

end A132468.P1947591736035161776

/-! ## A132468.P12437953435630266218

`A134824(n+2)+A048669(n+1)`
-/

namespace A132468.P12437953435630266218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A048669 (n + 1)

end

end A132468.P12437953435630266218

/-! ## A132468.P11726910560277119099

`and(A048669(n+1)+A000225(n), A000225(n))`
-/

namespace A132468.P11726910560277119099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048669 (n + 1) + A000225 n) (A000225 n)

end

end A132468.P11726910560277119099

/-! ## A132468.P7264052395704143571

`A083800(n+1)%A048669(n+1)`
-/

namespace A132468.P7264052395704143571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A048669 (n + 1))

end

end A132468.P7264052395704143571

/-! ## A132468.P16346151485016298594

`A070198(n)%A048669(n+1)`
-/

namespace A132468.P16346151485016298594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A048669 (n + 1))

end

end A132468.P16346151485016298594

/-! ## A132468.P3024559927063453572

`A079782(n+1)%A048669(n+1)`
-/

namespace A132468.P3024559927063453572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A048669 (n + 1))

end

end A132468.P3024559927063453572

/-! ## A132468.P16830432156382603437

`A083685(n+1)%A048669(n+1)`
-/

namespace A132468.P16830432156382603437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A048669 (n + 1))

end

end A132468.P16830432156382603437

/-! ## A132468.P16212664774828880712

`A121934(n+1)%A048669(n+1)`
-/

namespace A132468.P16212664774828880712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A048669 (n + 1))

end

end A132468.P16212664774828880712

/-! ## A132468.P7760548374918302893

`gcd(A001898(n), A049298(n+1))-1`
-/

namespace A132468.P7760548374918302893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A001898 n) (A049298 (n + 1)) : ℤ) - 1

end

end A132468.P7760548374918302893

/-! ## A132468.P5515030583319616648

`A030494(n+1)%A048669(n+1)`
-/

namespace A132468.P5515030583319616648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A048669 (n + 1))

end

end A132468.P5515030583319616648

/-! ## A132468.P342076104334440832

`A072828(n+1)%A048669(n+1)`
-/

namespace A132468.P342076104334440832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A048669 (n + 1))

end

end A132468.P342076104334440832

/-! ## A132468.P2733528898638320743

`A086827(n+1)%A048669(n+1)`
-/

namespace A132468.P2733528898638320743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086827 (n + 1)) (A048669 (n + 1))

end

end A132468.P2733528898638320743

/-! ## A132468.P624644287600230373

`∑{p}[n+1, A230850(A230850((n-#)²))]`
-/

namespace A132468.P624644287600230373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A230850 (A230850 (((n : ℤ) - (p : ℤ)) ^ 2).toNat).toNat

end

end A132468.P624644287600230373

/-!
# A132469: a(n) = (2^(5*n) - 1)/31.

The programs for A132469, the canonical program `A132469.P11428190627548545082` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132469 has offset 0).

The definition of A132469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132469.P11428190627548545082

`floor(32^n/31)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132469

/-- `floor(32^n/31)` -/
def P11428190627548545082.Spec : Prop :=
  ∀ n, P11428190627548545082.a n = A132469 n

theorem P11428190627548545082.correct : P11428190627548545082.Spec := by
  intro n
  simp only [A132469]

end A132469

/-! ## A132469.P2760089563841197780

`(2^(5*n)-1)/31`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132469.P2760089563841197780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (5 * n) : ℤ) - 1 : ℚ) / 31

end

end A132469.P2760089563841197780

namespace A132469

/-- `(2^(5*n)-1)/31` -/
def P2760089563841197780.Spec : Prop :=
  ∀ n, P2760089563841197780.a n = (A132469 n : ℚ)

end A132469

/-! ## A132469.P8597821982794470007

`32*a(n-1)+1` with `a(0)=0`
-/

namespace A132469.P8597821982794470007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  32 * a (n - 1) + 1

end

end A132469.P8597821982794470007

namespace A132469

/-- `32*a(n-1)+1` -/
def P8597821982794470007.Spec : Prop :=
  ∀ n, (P8597821982794470007.a n : ℤ) = A132469 n

end A132469

/-! ## A132469.P14415201099941433149

`lcm(32, a(n-1))+1` with `a(0)=0`
-/

namespace A132469.P14415201099941433149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 32 (a (n - 1)) + 1

end

end A132469.P14415201099941433149

namespace A132469

/-- `lcm(32, a(n-1))+1` -/
def P14415201099941433149.Spec : Prop :=
  ∀ n, (P14415201099941433149.a n : ℤ) = A132469 n

end A132469

/-! ## A132469.P6630869781711275301

`or(1, 32*a(n-1))` with `a(0)=0`
-/

namespace A132469.P6630869781711275301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (32 * a (n - 1))

end

end A132469.P6630869781711275301

namespace A132469

/-- `or(1, 32*a(n-1))` -/
def P6630869781711275301.Spec : Prop :=
  ∀ n, (P6630869781711275301.a n : ℤ) = A132469 n

end A132469

/-! ## A132469.P16977747840211463785

`xor(1, 32*a(n-1))` with `a(0)=0`
-/

namespace A132469.P16977747840211463785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (32 * a (n - 1))

end

end A132469.P16977747840211463785

namespace A132469

/-- `xor(1, 32*a(n-1))` -/
def P16977747840211463785.Spec : Prop :=
  ∀ n, (P16977747840211463785.a n : ℤ) = A132469 n

end A132469

/-! ## A132469.P8622305550557011867

`∑[32*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A132469.P8622305550557011867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  32 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132469.P8622305550557011867

namespace A132469

/-- `∑[32*a(n-1)]` -/
def P8622305550557011867.Spec : Prop :=
  ∀ n, (P8622305550557011867.a n : ℤ) = A132469 n

end A132469

/-! ## A132469.P15295768598226187459

`a(n-1)/(1/2)^5+1` with `a(0)=0`
-/

namespace A132469.P15295768598226187459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 5 + 1

end

end A132469.P15295768598226187459

namespace A132469

/-- `a(n-1)/(1/2)^5+1` -/
def P15295768598226187459.Spec : Prop :=
  ∀ n, P15295768598226187459.a n = (A132469 n : ℚ)

end A132469

/-! ## A132469.P16181670805027558004

`a(n-1)+(2^(n-1))^5` with `a(0)=0`
-/

namespace A132469.P16181670805027558004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 5

end

end A132469.P16181670805027558004

namespace A132469

/-- `a(n-1)+(2^(n-1))^5` -/
def P16181670805027558004.Spec : Prop :=
  ∀ n, P16181670805027558004.a n = (A132469 n : ℚ)

end A132469

/-! ## A132469.P5550309588623104010

`1-(a(n-1)-33*a(n-1))` with `a(0)=0`
-/

namespace A132469.P5550309588623104010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - 33 * a (n - 1))

end

end A132469.P5550309588623104010

namespace A132469

/-- `1-(a(n-1)-33*a(n-1))` -/
def P5550309588623104010.Spec : Prop :=
  ∀ n, P5550309588623104010.a n = A132469 n

end A132469

/-!
# A132470: Smallest number at distance exactly 3n from nearest prime.

The programs for A132470, there is no canonical definition to state claims against.
-/

/-! ## A132470.P8032120071636257124

`A077019(3*n)`
-/

namespace A132470.P8032120071636257124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 (3 * n)

end

end A132470.P8032120071636257124

/-! ## A132470.P2651296795949733914

`record[A077019(A071045(n))]`
-/

namespace A132470.P2651296795949733914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 (A071045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132470.P2651296795949733914

/-! ## A132470.P4065533975293717394

`record[A077019(n)^A049347(n)]`
-/

namespace A132470.P4065533975293717394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077019 n : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132470.P4065533975293717394

/-! ## A132470.P8976048086937225134

`record[A077019(A004524(A019426(n)))]`
-/

namespace A132470.P8976048086937225134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 (A004524 (A019426 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132470.P8976048086937225134

/-! ## A132470.P9311401399907988331

`record[A077019(A046667(A016789(n)))]`
-/

namespace A132470.P9311401399907988331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 (A046667 (A016789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132470.P9311401399907988331

/-! ## A132470.P6954842417475709680

`record[A077019(A026430(A186421(n)))]`
-/

namespace A132470.P6954842417475709680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 (A026430 (A186421 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132470.P6954842417475709680

/-! ## A132470.P17605411353806773422

`record[A077019(n)^A010892(A005408(n))]`
-/

namespace A132470.P17605411353806773422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077019 n : ℚ) ^ (A010892 (A005408 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132470.P17605411353806773422

/-!
# A132472: Column 0 of triangle A132471.

The programs for A132472, there is no canonical definition to state claims against.
-/

/-! ## A132472.P2457897570752983980

`A132471(∑[n])`
-/

namespace A132472.P2457897570752983980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132471 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132472.P2457897570752983980

/-! ## A132472.P16796840085213818553

`and(-1, A132471(A000217(n)))`
-/

namespace A132472.P16796840085213818553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132471 (A000217 n).toNat)

end

end A132472.P16796840085213818553

/-! ## A132472.P16656712513846760998

`A132471(C(n+1, 2))^A178334(n)`
-/

namespace A132472.P16656712513846760998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132471 (Nat.choose (n + 1) 2) : ℚ) ^ (A178334 n : ℤ)

end

end A132472.P16656712513846760998

/-! ## A132472.P13590213189475367919

`A332281(n)+A132471(n*(n+1)/2)`
-/

namespace A132472.P13590213189475367919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A132471 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A132472.P13590213189475367919

/-! ## A132472.P12848788361589061206

`A132471(n*(n+1)/2)%A105717(n)`
-/

namespace A132472.P12848788361589061206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132471 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat) (A105717 n)

end

end A132472.P12848788361589061206

/-!
# A132473: Column 1 of triangle A132471.

The programs for A132473, there is no canonical definition to state claims against.
-/

/-! ## A132473.P9123728217607089892

`record[A132471(comp[∑[n]])]`
-/

namespace A132473.P9123728217607089892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132471 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132473.P9123728217607089892

/-! ## A132473.P13610987023023306992

`A132471(∑[n+1]+1)`
-/

namespace A132473.P13610987023023306992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132471 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132473.P13610987023023306992

/-! ## A132473.P10773566915318014360

`record[A103631(n)*A132471(n)]`
-/

namespace A132473.P10773566915318014360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A132471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132473.P10773566915318014360

/-! ## A132473.P15905272168519219648

`record[gcd(A132471(n), A370366(n))]`
-/

namespace A132473.P15905272168519219648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132471 n) (A370366 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132473.P15905272168519219648

/-! ## A132473.P11690771432277891291

`record[and(A132471(n), A294951(n))]`
-/

namespace A132473.P11690771432277891291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132471 n) (A294951 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132473.P11690771432277891291

/-!
# A132474: Column 2 of triangle A132471.

The programs for A132474, there is no canonical definition to state claims against.
-/

/-! ## A132474.P10960811815104271682

`A132471(∑[n+2]+3)`
-/

namespace A132474.P10960811815104271682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132471 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A132474.P10960811815104271682

/-! ## A132474.P12130819206375950606

`record[A132471(n)*A274537(n)]`
-/

namespace A132474.P12130819206375950606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132471 n * A274537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132474.P12130819206375950606

/-! ## A132474.P15130925701062974384

`record[A132471(n+2)%(A132471(n)+1)]`
-/

namespace A132474.P15130925701062974384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132471 (n + 2)) (A132471 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132474.P15130925701062974384

/-!
# A132476: A007318^(-1) * [3*A007318^2 - 2*A000012].

The programs for A132476, there is no canonical definition to state claims against.
-/

/-! ## A132476.P2958244871156172378

`2*A132309(n)-A007318(n)`
-/

namespace A132476.P2958244871156172378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132309 n - A007318 n

end

end A132476.P2958244871156172378

/-! ## A132476.P11966103279606598734

`(A132478(n)+A132309(n))/2`
-/

namespace A132476.P11966103279606598734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132478 n + A132309 n : ℚ) / 2

end

end A132476.P11966103279606598734

/-! ## A132476.P3882498601851154859

`A001281(A132478(n)+A132309(n))`
-/

namespace A132476.P3882498601851154859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A132478 n + A132309 n).toNat

end

end A132476.P3882498601851154859

/-! ## A132476.P1889213984023321226

`A004525(A132478(n)+A132309(n))`
-/

namespace A132476.P1889213984023321226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A132478 n + A132309 n).toNat

end

end A132476.P1889213984023321226

/-! ## A132476.P14374742749310292720

`A004526(A132478(n)+A132309(n))`
-/

namespace A132476.P14374742749310292720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A132478 n + A132309 n).toNat

end

end A132476.P14374742749310292720

/-! ## A132476.P13654072020391686993

`A006370(A132478(n)+A132309(n))`
-/

namespace A132476.P13654072020391686993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A132478 n + A132309 n).toNat

end

end A132476.P13654072020391686993

/-! ## A132476.P12834122332036304134

`A025480(A132478(n)+A132309(n))`
-/

namespace A132476.P12834122332036304134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A132478 n + A132309 n).toNat

end

end A132476.P12834122332036304134

/-! ## A132476.P14225629217464930956

`A026741(A132478(n)+A132309(n))`
-/

namespace A132476.P14225629217464930956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A132478 n + A132309 n).toNat

end

end A132476.P14225629217464930956

/-! ## A132476.P12282262706148125107

`A004277(A132309(n))-A007318(n)`
-/

namespace A132476.P12282262706148125107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A132309 n).toNat - A007318 n

end

end A132476.P12282262706148125107

/-! ## A132476.P13256487325752433594

`A004273(A132309(n))-A014473(n)`
-/

namespace A132476.P13256487325752433594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A132309 n).toNat - A014473 n

end

end A132476.P13256487325752433594

/-!
# A132477: Row sums of triangle A132476.

The programs for A132477, the canonical program `A132477.P11905172552266908438` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132477 has offset 0).

The definition of A132477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132477.P11905172552266908438

`2*a(n-1)` with `a(0)=1, a(1)=4, a(2)=12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132477

/-- `2*a(n-1)` -/
def P11905172552266908438.Spec : Prop :=
  ∀ n, (P11905172552266908438.a n : ℤ) = A132477 n

theorem P11905172552266908438.correct : P11905172552266908438.Spec := by
  intro n
  simp only [A132477]

end A132477

/-! ## A132477.P2710827067143292191

`ogf((1+2x+4x^2)/(1-2x))`
-/

namespace A132477.P2710827067143292191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4] [1, -2] n

end

end A132477.P2710827067143292191

namespace A132477

/-- `ogf((1+2x+4x^2)/(1-2x))` -/
def P2710827067143292191.Spec : Prop :=
  ∀ n, P2710827067143292191.a n = A132477 n

end A132477

/-! ## A132477.P11737702642671819907

`and(3*2^n, -3)`
-/

namespace A132477.P11737702642671819907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * 2 ^ n : ℤ) (-3)

end

end A132477.P11737702642671819907

namespace A132477

/-- `and(3*2^n, -3)` -/
def P11737702642671819907.Spec : Prop :=
  ∀ n, P11737702642671819907.a n = A132477 n

end A132477

/-! ## A132477.P5641385024181018896

`or(2, 3*2^n)-2`
-/

namespace A132477.P5641385024181018896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * 2 ^ n) : ℤ) - 2

end

end A132477.P5641385024181018896

namespace A132477

/-- `or(2, 3*2^n)-2` -/
def P5641385024181018896.Spec : Prop :=
  ∀ n, P5641385024181018896.a n = A132477 n

end A132477

/-! ## A132477.P273952281159368304

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=4, a(2)=12`
-/

namespace A132477.P273952281159368304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 12] fun n a =>
  a (n - 1) + a (n - 1)

end

end A132477.P273952281159368304

namespace A132477

/-- `a(n-1)+a(n-1)` -/
def P273952281159368304.Spec : Prop :=
  ∀ n, (P273952281159368304.a n : ℤ) = A132477 n

theorem P273952281159368304.correct : P273952281159368304.Spec := by
  intro n
  simp only [A132477, Nat.add_sub_cancel, A132477.P273952281159368304.a, A132477.P11905172552266908438.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132477

/-! ## A132477.P11102725430281825325

`(3-floor(2/(n+1)))*2^n`
-/

namespace A132477.P11102725430281825325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ⌊2 / (n + 1 : ℚ)⌋) * (2 ^ n : ℤ)

end

end A132477.P11102725430281825325

namespace A132477

/-- `(3-floor(2/(n+1)))*2^n` -/
def P11102725430281825325.Spec : Prop :=
  ∀ n, P11102725430281825325.a n = A132477 n

end A132477

/-! ## A132477.P11462356397002801353

`A033484(n)+2%(n+1)`
-/

namespace A132477.P11462356397002801353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n + ((2 % (n + 1) : ℕ) : ℤ)

end

end A132477.P11462356397002801353

namespace A132477

/-- `A033484(n)+2%(n+1)` -/
def P11462356397002801353.Spec : Prop :=
  ∀ n, P11462356397002801353.a n = A132477 n

end A132477

/-! ## A132477.P13441264281193104745

`lcm(2^n, Δ[A111286(n+1)])`
-/

namespace A132477.P13441264281193104745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A132477.P13441264281193104745

namespace A132477

/-- `lcm(2^n, Δ[A111286(n+1)])` -/
def P13441264281193104745.Spec : Prop :=
  ∀ n, (P13441264281193104745.a n : ℤ) = A132477 n

end A132477

/-! ## A132477.P6488813117731016902

`A063759(A130773(n))`
-/

namespace A132477.P6488813117731016902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (A130773 n).toNat

end

end A132477.P6488813117731016902

namespace A132477

/-- `A063759(A130773(n))` -/
def P6488813117731016902.Spec : Prop :=
  ∀ n, P6488813117731016902.a n = A132477 n

end A132477

/-! ## A132477.P2750037718897456453

`A029744(A267873(n+1))`
-/

namespace A132477.P2750037718897456453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A267873 (n + 1)).toNat

end

end A132477.P2750037718897456453

namespace A132477

/-- `A029744(A267873(n+1))` -/
def P2750037718897456453.Spec : Prop :=
  ∀ n, P2750037718897456453.a n = A132477 n

end A132477

/-! ## A132477.P15271058806625902363

`A082505(n)+A003945(n)`
-/

namespace A132477.P15271058806625902363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 n + A003945 n

end

end A132477.P15271058806625902363

namespace A132477

/-- `A082505(n)+A003945(n)` -/
def P15271058806625902363.Spec : Prop :=
  ∀ n, P15271058806625902363.a n = A132477 n

end A132477

/-! ## A132477.P274172185005966867

`A052940(n)-A134824(n)`
-/

namespace A132477.P274172185005966867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 n - A134824 n

end

end A132477.P274172185005966867

namespace A132477

/-- `A052940(n)-A134824(n)` -/
def P274172185005966867.Spec : Prop :=
  ∀ n, P274172185005966867.a n = A132477 n

end A132477

/-! ## A132477.P7585931364200433301

`A053209(n)-A296954(n)`
-/

namespace A132477.P7585931364200433301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n - A296954 n

end

end A132477.P7585931364200433301

namespace A132477

/-- `A053209(n)-A296954(n)` -/
def P7585931364200433301.Spec : Prop :=
  ∀ n, P7585931364200433301.a n = A132477 n

end A132477

/-! ## A132477.P1503801173011970712

`A267649(n)-A165751(n)`
-/

namespace A132477.P1503801173011970712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267649 n - A165751 n

end

end A132477.P1503801173011970712

namespace A132477

/-- `A267649(n)-A165751(n)` -/
def P1503801173011970712.Spec : Prop :=
  ∀ n, P1503801173011970712.a n = A132477 n

end A132477

/-! ## A132477.P5609509190585453295

`lcm(A000079(n), A329502(n))`
-/

namespace A132477.P5609509190585453295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A329502 n)

end

end A132477.P5609509190585453295

namespace A132477

/-- `lcm(A000079(n), A329502(n))` -/
def P5609509190585453295.Spec : Prop :=
  ∀ n, (P5609509190585453295.a n : ℤ) = A132477 n

end A132477

/-! ## A132477.P6658735313755280881

`xor(A082505(n), A146523(n))`
-/

namespace A132477.P6658735313755280881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082505 n) (A146523 n)

end

end A132477.P6658735313755280881

namespace A132477

/-- `xor(A082505(n), A146523(n))` -/
def P6658735313755280881.Spec : Prop :=
  ∀ n, P6658735313755280881.a n = A132477 n

end A132477

/-! ## A132477.P5952634556324074649

`A082505(n)+Δ[A042950(n)]`
-/

namespace A132477.P5952634556324074649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 n + (f1 (n + 1) - f1 n)

end

end A132477.P5952634556324074649

namespace A132477

/-- `A082505(n)+Δ[A042950(n)]` -/
def P5952634556324074649.Spec : Prop :=
  ∀ n, P5952634556324074649.a n = A132477 n

end A132477

/-! ## A132477.P3739441107238478668

`A186949(n+1)+A186949(n)`
-/

namespace A132477.P3739441107238478668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 (n + 1) + A186949 n

end

end A132477.P3739441107238478668

namespace A132477

/-- `A186949(n+1)+A186949(n)` -/
def P3739441107238478668.Spec : Prop :=
  ∀ n, P3739441107238478668.a n = A132477 n

end A132477

/-! ## A132477.P10863615903303767544

`A029744(A158799(n)+2*n)`
-/

namespace A132477.P10863615903303767544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A158799 n + (2 * n : ℤ)).toNat

end

end A132477.P10863615903303767544

namespace A132477

/-- `A029744(A158799(n)+2*n)` -/
def P10863615903303767544.Spec : Prop :=
  ∀ n, P10863615903303767544.a n = A132477 n

end A132477

/-! ## A132477.P11619146772294441035

`A095121(n)+2*A127904(n)`
-/

namespace A132477.P11619146772294441035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + 2 * A127904 n

end

end A132477.P11619146772294441035

namespace A132477

/-- `A095121(n)+2*A127904(n)` -/
def P11619146772294441035.Spec : Prop :=
  ∀ n, P11619146772294441035.a n = A132477 n

end A132477

/-!
# A132478: A007318^(-1) * [4*A007318^(2) - 3*A000012].

The programs for A132478, there is no canonical definition to state claims against.
-/

/-! ## A132478.P1928406545019187537

`2*A132476(n)-A132309(n)`
-/

namespace A132478.P1928406545019187537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132476 n - A132309 n

end

end A132478.P1928406545019187537

/-! ## A132478.P3078278501024906735

`A008486(A132309(n))-A028326(n)`
-/

namespace A132478.P3078278501024906735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A132309 n).toNat - A028326 n

end

end A132478.P3078278501024906735

/-! ## A132478.P11547117492963138191

`A005843(A132476(n))-A132309(n)`
-/

namespace A132478.P11547117492963138191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A132476 n).toNat - A132309 n

end

end A132478.P11547117492963138191

/-! ## A132478.P11287786150119652314

`A008486(A132309(n))-2*A007318(n)`
-/

namespace A132478.P11287786150119652314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A132309 n).toNat - 2 * A007318 n

end

end A132478.P11287786150119652314

/-! ## A132478.P16280095910584045178

`2*A132476(n)+A132309(n)*A134824(n+2)`
-/

namespace A132478.P16280095910584045178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132476 n + A132309 n * A134824 (n + 2)

end

end A132478.P16280095910584045178

/-! ## A132478.P1105343511252421639

`A008486(A132309(n))+A001478(2*A007318(n))`
-/

namespace A132478.P1105343511252421639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A132309 n).toNat + A001478 (2 * A007318 n).toNat

end

end A132478.P1105343511252421639

/-! ## A132478.P7871124422844375487

`A132476(n)+A001281(A132476(n)-A007318(n))`
-/

namespace A132478.P7871124422844375487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132476 n + A001281 (A132476 n - A007318 n).toNat

end

end A132478.P7871124422844375487

/-! ## A132478.P9325880231063441612

`A132476(n)+A004525(A132476(n)-A007318(n))`
-/

namespace A132478.P9325880231063441612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132476 n + A004525 (A132476 n - A007318 n).toNat

end

end A132478.P9325880231063441612

/-! ## A132478.P3628808503073429118

`A132476(n)+A004526(A132476(n)-A007318(n))`
-/

namespace A132478.P3628808503073429118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132476 n + A004526 (A132476 n - A007318 n).toNat

end

end A132478.P3628808503073429118

/-! ## A132478.P2922453078581073009

`A331803(A132476(n)-A007318(n))+A132476(n)`
-/

namespace A132478.P2922453078581073009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331803 (A132476 n - A007318 n).toNat + A132476 n

end

end A132478.P2922453078581073009

/-!
# A132479: Row sums of triangle A132478.

The programs for A132479, the canonical program `A132479.P10164486910716817361` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132479 has offset 0).

The definition of A132479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132479.P8317947608057834265

`ogf((1+3x+6x^2)/(1-2x))`
-/

namespace A132479.P8317947608057834265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 6] [1, -2] n

end

end A132479.P8317947608057834265

namespace A132479

/-- `ogf((1+3x+6x^2)/(1-2x))` -/
def P8317947608057834265.Spec : Prop :=
  ∀ n, P8317947608057834265.a n = A132479 n

end A132479

/-! ## A132479.P10164486910716817361

`2*a(n-1)` with `a(0)=1, a(1)=5, a(2)=16`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132479

/-- `2*a(n-1)` -/
def P10164486910716817361.Spec : Prop :=
  ∀ n, (P10164486910716817361.a n : ℤ) = A132479 n

theorem P10164486910716817361.correct : P10164486910716817361.Spec := by
  intro n
  simp only [A132479]

end A132479

/-! ## A132479.P10659798649411766469

`(2%a(n-1))^(n+2)` with `a(0)=1, a(1)=5`
-/

namespace A132479.P10659798649411766469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (2 % a (n - 1)) ^ (n + 2)

end

end A132479.P10659798649411766469

namespace A132479

/-- `(2%a(n-1))^(n+2)` -/
def P10659798649411766469.Spec : Prop :=
  ∀ n, (P10659798649411766469.a n : ℤ) = A132479 n

end A132479

/-! ## A132479.P4077871539755079947

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=5, a(2)=16`
-/

namespace A132479.P4077871539755079947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 16] fun n a =>
  a (n - 1) + a (n - 1)

end

end A132479.P4077871539755079947

namespace A132479

/-- `a(n-1)+a(n-1)` -/
def P4077871539755079947.Spec : Prop :=
  ∀ n, (P4077871539755079947.a n : ℤ) = A132479 n

theorem P4077871539755079947.correct : P4077871539755079947.Spec := by
  intro n
  simp only [A132479, Nat.add_sub_cancel, A132479.P4077871539755079947.a, A132479.P10164486910716817361.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132479

/-! ## A132479.P8270553877578929183

`2^(n+2)-C(3, n²+1)`
-/

namespace A132479.P8270553877578929183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - (Nat.choose 3 (n ^ 2 + 1) : ℤ)

end

end A132479.P8270553877578929183

namespace A132479

/-- `2^(n+2)-C(3, n²+1)` -/
def P8270553877578929183.Spec : Prop :=
  ∀ n, P8270553877578929183.a n = A132479 n

end A132479

/-! ## A132479.P14177666525143842726

`∑[(char[2]+2)*A000225(n)+2]-1`
-/

namespace A132479.P14177666525143842726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = n then 1 else 0) + 2 : ℕ) : ℤ) * A000225 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A132479.P14177666525143842726

namespace A132479

/-- `∑[(char[2]+2)*A000225(n)+2]-1` -/
def P14177666525143842726.Spec : Prop :=
  ∀ n, P14177666525143842726.a n = A132479 n

end A132479

/-! ## A132479.P10963259226965248446

`2^(n+2)-A000045(C(4, 2*n+1))`
-/

namespace A132479.P10963259226965248446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A000045 (Nat.choose 4 (2 * n + 1))

end

end A132479.P10963259226965248446

namespace A132479

/-- `2^(n+2)-A000045(C(4, 2*n+1))` -/
def P10963259226965248446.Spec : Prop :=
  ∀ n, P10963259226965248446.a n = A132479 n

end A132479

/-! ## A132479.P1911582035256774001

`A029745(A223134(n))`
-/

namespace A132479.P1911582035256774001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029745 (A223134 n).toNat

end

end A132479.P1911582035256774001

namespace A132479

/-- `A029745(A223134(n))` -/
def P1911582035256774001.Spec : Prop :=
  ∀ n, P1911582035256774001.a n = A132479 n

end A132479

/-! ## A132479.P11584159293107782300

`A094958(A267873(n+1))`
-/

namespace A132479.P11584159293107782300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A267873 (n + 1)).toNat

end

end A132479.P11584159293107782300

namespace A132479

/-- `A094958(A267873(n+1))` -/
def P11584159293107782300.Spec : Prop :=
  ∀ n, P11584159293107782300.a n = A132479 n

end A132479

/-! ## A132479.P4982148140707739757

`A267870(2*n+1)+or(1, A283591(n+1))`
-/

namespace A132479.P4982148140707739757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (2 * n + 1) + Int.lor 1 (A283591 (n + 1))

end

end A132479.P4982148140707739757

namespace A132479

/-- `A267870(2*n+1)+or(1, A283591(n+1))` -/
def P4982148140707739757.Spec : Prop :=
  ∀ n, P4982148140707739757.a n = A132479 n

end A132479

/-! ## A132479.P14783566825708717352

`and(A173034(n), A273385(n))`
-/

namespace A132479.P14783566825708717352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173034 n) (A273385 n)

end

end A132479.P14783566825708717352

namespace A132479

/-- `and(A173034(n), A273385(n))` -/
def P14783566825708717352.Spec : Prop :=
  ∀ n, P14783566825708717352.a n = A132479 n

end A132479

/-! ## A132479.P10224538377543362805

`record[and(A000051(n+1), A010036(n))]`
-/

namespace A132479.P10224538377543362805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 (n + 1)) (A010036 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132479.P10224538377543362805

namespace A132479

/-- `record[and(A000051(n+1), A010036(n))]` -/
def P10224538377543362805.Spec : Prop :=
  ∀ n, P10224538377543362805.a n = A132479 n

end A132479

/-! ## A132479.P9846677364482059421

`A000079(n+2)-A034188(n²+5)`
-/

namespace A132479.P9846677364482059421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A034188 (n ^ 2 + 5)

end

end A132479.P9846677364482059421

namespace A132479

/-- `A000079(n+2)-A034188(n²+5)` -/
def P9846677364482059421.Spec : Prop :=
  ∀ n, P9846677364482059421.a n = A132479 n

end A132479

