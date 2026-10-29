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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C047
import Seq.B000.C050
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A117400: Sum of the first F(n) primes, where F(n) is the n-th Fibonacci number.

The programs for A117400, the canonical program `A117400.P676579641845705266` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117400 has offset 0).

The definition of A117400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117400.P676579641845705266

`A007504(A000045(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A117400

/-- `A007504(A000045(n))` -/
def P676579641845705266.Spec : Prop :=
  ∀ n, P676579641845705266.a n = A117400 n

theorem P676579641845705266.correct : P676579641845705266.Spec := by
  intro n
  simp only [A117400]

end A117400

/-! ## A117400.P10084689292322505663

`A007504(round(ϕ^n/sqrt(5)))`
-/

namespace A117400.P10084689292322505663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A117400.P10084689292322505663

namespace A117400

/-- `A007504(round(ϕ^n/sqrt(5)))` -/
def P10084689292322505663.Spec : Prop :=
  ∀ n, P10084689292322505663.a n = A117400 n

end A117400

/-! ## A117400.P15220226920404027158

`and(-1, A007504(abs(A236191(n))))`
-/

namespace A117400.P15220226920404027158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007504 |A236191 n|.toNat)

end

end A117400.P15220226920404027158

namespace A117400

/-- `and(-1, A007504(abs(A236191(n))))` -/
def P15220226920404027158.Spec : Prop :=
  ∀ n, P15220226920404027158.a n = A117400 n

end A117400

/-! ## A117400.P10963596813506932788

`and(-1, A007504(A212804(n+1)))`
-/

namespace A117400.P10963596813506932788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007504 (A212804 (n + 1)).toNat)

end

end A117400.P10963596813506932788

namespace A117400

/-- `and(-1, A007504(A212804(n+1)))` -/
def P10963596813506932788.Spec : Prop :=
  ∀ n, P10963596813506932788.a n = A117400 n

end A117400

/-!
# A117401: Triangle T(n,k) = 2^(k*(n-k)), read by rows.

The programs for A117401, the canonical program `A117401.P10868702067772274963` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117401 has offset 0).

The definition of A117401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117401.P10868702067772274963

`2^(col(n)*(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117401

/-- `2^(col(n)*(row(n)-col(n)))` -/
def P10868702067772274963.Spec : Prop :=
  ∀ n, P10868702067772274963.a n = (A117401 n : ℚ)

end A117401

/-! ## A117401.P9629778081018820701

`2^((row(n)-col(n))*col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117401.P9629778081018820701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A117401.P9629778081018820701

namespace A117401

/-- `2^((row(n)-col(n))*col(n))` -/
def P9629778081018820701.Spec : Prop :=
  ∀ n, P9629778081018820701.a n = (A117401 n : ℚ)

end A117401

/-! ## A117401.P7969614164659938040

`(2^col(n))^(row(n)-col(n))`
-/

namespace A117401.P7969614164659938040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A117401.P7969614164659938040

namespace A117401

/-- `(2^col(n))^(row(n)-col(n))` -/
def P7969614164659938040.Spec : Prop :=
  ∀ n, P7969614164659938040.a n = (A117401 n : ℚ)

end A117401

/-! ## A117401.P12139057008089715851

`2^A004247(n)`
-/

namespace A117401.P12139057008089715851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004247 n : ℤ)

end

end A117401.P12139057008089715851

namespace A117401

/-- `2^A004247(n)` -/
def P12139057008089715851.Spec : Prop :=
  ∀ n, P12139057008089715851.a n = (A117401 n : ℚ)

end A117401

/-! ## A117401.P10937399032569610779

`2^(A077028(n)-1)`
-/

namespace A117401.P10937399032569610779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A077028 n - 1 : ℤ)

end

end A117401.P10937399032569610779

namespace A117401

/-- `2^(A077028(n)-1)` -/
def P10937399032569610779.Spec : Prop :=
  ∀ n, P10937399032569610779.a n = (A117401 n : ℚ)

end A117401

/-! ## A117401.P10180078394436018691

`2^(1-A176270(n))`
-/

namespace A117401.P10180078394436018691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 - A176270 n : ℤ)

end

end A117401.P10180078394436018691

namespace A117401

/-- `2^(1-A176270(n))` -/
def P10180078394436018691.Spec : Prop :=
  ∀ n, P10180078394436018691.a n = (A117401 n : ℚ)

end A117401

/-! ## A117401.P11433506157770729483

`2^(A309555(n)-3)`
-/

namespace A117401.P11433506157770729483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A309555 n - 3 : ℤ)

end

end A117401.P11433506157770729483

namespace A117401

/-- `2^(A309555(n)-3)` -/
def P11433506157770729483.Spec : Prop :=
  ∀ n, P11433506157770729483.a n = (A117401 n : ℚ)

end A117401

/-! ## A117401.P741884526510299705

`A000079(A004247(n))`
-/

namespace A117401.P741884526510299705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004247 n).toNat

end

end A117401.P741884526510299705

namespace A117401

/-- `A000079(A004247(n))` -/
def P741884526510299705.Spec : Prop :=
  ∀ n, P741884526510299705.a n = A117401 n

end A117401

/-! ## A117401.P336622141056556845

`A011782(A077028(n))`
-/

namespace A117401.P336622141056556845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A077028 n).toNat

end

end A117401.P336622141056556845

namespace A117401

/-- `A011782(A077028(n))` -/
def P336622141056556845.Spec : Prop :=
  ∀ n, P336622141056556845.a n = A117401 n

end A117401

/-! ## A117401.P14028838228255068957

`A016116(A157528(n))`
-/

namespace A117401.P14028838228255068957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A157528 n).toNat

end

end A117401.P14028838228255068957

namespace A117401

/-- `A016116(A157528(n))` -/
def P14028838228255068957.Spec : Prop :=
  ∀ n, P14028838228255068957.a n = A117401 n

end A117401

/-! ## A117401.P4233039120067753625

`A140426(A287326(n))`
-/

namespace A117401.P4233039120067753625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140426 (A287326 n).toNat

end

end A117401.P4233039120067753625

namespace A117401

/-- `A140426(A287326(n))` -/
def P4233039120067753625.Spec : Prop :=
  ∀ n, P4233039120067753625.a n = A117401 n

end A117401

/-! ## A117401.P13219256211713000232

`A173862(A296180(n))`
-/

namespace A117401.P13219256211713000232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (A296180 n).toNat

end

end A117401.P13219256211713000232

namespace A117401

/-- `A173862(A296180(n))` -/
def P13219256211713000232.Spec : Prop :=
  ∀ n, P13219256211713000232.a n = A117401 n

end A117401

/-! ## A117401.P8280158118615945104

`A016116(A130154(n+1))`
-/

namespace A117401.P8280158118615945104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A130154 (n + 1)).toNat

end

end A117401.P8280158118615945104

namespace A117401

/-- `A016116(A130154(n+1))` -/
def P8280158118615945104.Spec : Prop :=
  ∀ n, P8280158118615945104.a n = A117401 n

end A117401

/-! ## A117401.P9225693713998434488

`A000079(A077028(n)-1)`
-/

namespace A117401.P9225693713998434488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A077028 n - 1).toNat

end

end A117401.P9225693713998434488

namespace A117401

/-- `A000079(A077028(n)-1)` -/
def P9225693713998434488.Spec : Prop :=
  ∀ n, P9225693713998434488.a n = A117401 n

end A117401

/-! ## A117401.P17008910822967378728

`A000079(1-A176270(n))`
-/

namespace A117401.P17008910822967378728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (1 - A176270 n).toNat

end

end A117401.P17008910822967378728

namespace A117401

/-- `A000079(1-A176270(n))` -/
def P17008910822967378728.Spec : Prop :=
  ∀ n, P17008910822967378728.a n = A117401 n

end A117401

/-! ## A117401.P16379860371355731051

`A059268(n)^log2(A130321(n))`
-/

namespace A117401.P16379860371355731051
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℝ) ^ (Real.logb 2 (A130321 n : ℝ))

end

end A117401.P16379860371355731051

namespace A117401

/-- `A059268(n)^log2(A130321(n))` -/
def P16379860371355731051.Spec : Prop :=
  ∀ n, P16379860371355731051.a n = (A117401 n : ℝ)

end A117401

/-! ## A117401.P6346582137621721705

`A173862((A287326(n)+1)/2)`
-/

namespace A117401.P6346582137621721705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (SequenceMachineLib.roundAway ((A287326 n + 1 : ℚ) / 2)).toNat

end

end A117401.P6346582137621721705

namespace A117401

/-- `A173862((A287326(n)+1)/2)` -/
def P6346582137621721705.Spec : Prop :=
  ∀ n, P6346582137621721705.a n = A117401 n

end A117401

/-! ## A117401.P14141714876266433207

`2^(A002262(n)*A025581(n))`
-/

namespace A117401.P14141714876266433207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n * A025581 n : ℤ)

end

end A117401.P14141714876266433207

namespace A117401

/-- `2^(A002262(n)*A025581(n))` -/
def P14141714876266433207.Spec : Prop :=
  ∀ n, P14141714876266433207.a n = (A117401 n : ℚ)

end A117401

/-! ## A117401.P8594200981393288485

`A000079(A002262(n)*A025581(n))`
-/

namespace A117401.P8594200981393288485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n * A025581 n).toNat

end

end A117401.P8594200981393288485

namespace A117401

/-- `A000079(A002262(n)*A025581(n))` -/
def P8594200981393288485.Spec : Prop :=
  ∀ n, P8594200981393288485.a n = A117401 n

end A117401

/-! ## A117401.P76808673832949767

`A000225(A002262(n)*A025581(n))+1`
-/

namespace A117401.P76808673832949767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002262 n * A025581 n).toNat + 1

end

end A117401.P76808673832949767

namespace A117401

/-- `A000225(A002262(n)*A025581(n))+1` -/
def P76808673832949767.Spec : Prop :=
  ∀ n, P76808673832949767.a n = A117401 n

end A117401

/-!
# A117402: Row sums of triangle A117401: a(n) = Sum_{k=0..n} 2^((n-k)*k) for n>=0.

The programs for A117402, the canonical program `A117402.P2322095710826475098` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117402 has offset 0).

The definition of A117402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117402.P2322095710826475098

`∑{#}[n, 2^((n-#)*#)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117402

/-- `∑{#}[n, 2^((n-#)*#)]` -/
def P2322095710826475098.Spec : Prop :=
  ∀ n, P2322095710826475098.a n = (A117402 n : ℚ)

end A117402

/-! ## A117402.P8898804392011071292

`2^(n-1)*a(n-2)+2` with `a(0)=1, a(1)=2`
-/

namespace A117402.P8898804392011071292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 2) + 2

end

end A117402.P8898804392011071292

namespace A117402

/-- `2^(n-1)*a(n-2)+2` -/
def P8898804392011071292.Spec : Prop :=
  ∀ n, P8898804392011071292.a n = (A117402 n : ℚ)

end A117402

/-! ## A117402.P13451767084692964663

`a(n-2)*A011782(n)+2` with `a(0)=1, a(1)=2`
-/

namespace A117402.P13451767084692964663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A011782 n + 2

end

end A117402.P13451767084692964663

namespace A117402

/-- `a(n-2)*A011782(n)+2` -/
def P13451767084692964663.Spec : Prop :=
  ∀ n, P13451767084692964663.a n = A117402 n

end A117402

/-! ## A117402.P13231242422830184539

`a(n-2)*A131577(n)+2` with `a(0)=1, a(1)=2`
-/

namespace A117402.P13231242422830184539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A131577 n + 2

end

end A117402.P13231242422830184539

namespace A117402

/-- `a(n-2)*A131577(n)+2` -/
def P13231242422830184539.Spec : Prop :=
  ∀ n, P13231242422830184539.a n = A117402 n

end A117402

/-! ## A117402.P8045638543370291584

`2-a(n-2)*A157823(n)` with `a(0)=1, a(1)=2`
-/

namespace A117402.P8045638543370291584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - a (n - 2) * A157823 n

end

end A117402.P8045638543370291584

namespace A117402

/-- `2-a(n-2)*A157823(n)` -/
def P8045638543370291584.Spec : Prop :=
  ∀ n, P8045638543370291584.a n = A117402 n

end A117402

/-!
# A117403: a(n) = Sum_{k=0..floor(n/2)} 2^((n-2*k)*k) for n>=0.

The programs for A117403, the canonical program `A117403.P338339586776474500` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117403 has offset 0).

The definition of A117403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117403.P338339586776474500

`∑{#}[floor(n/2), 2^((n-2*#)*#)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117403

/-- `∑{#}[floor(n/2), 2^((n-2*#)*#)]` -/
def P338339586776474500.Spec : Prop :=
  ∀ n, P338339586776474500.a n = (A117403 n : ℚ)

end A117403

/-! ## A117403.P13731865564040510670

`A106432(A351437(n+1))`
-/

namespace A117403.P13731865564040510670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A351437 (n + 1)).toNat

end

end A117403.P13731865564040510670

namespace A117403

/-- `A106432(A351437(n+1))` -/
def P13731865564040510670.Spec : Prop :=
  ∀ n, P13731865564040510670.a n = A117403 n

end A117403

/-! ## A117403.P12019000178426683660

`A106432(A369073(n+1))`
-/

namespace A117403.P12019000178426683660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A369073 (n + 1)).toNat

end

end A117403.P12019000178426683660

namespace A117403

/-- `A106432(A369073(n+1))` -/
def P12019000178426683660.Spec : Prop :=
  ∀ n, P12019000178426683660.a n = A117403 n

end A117403

/-! ## A117403.P1194715436835272167

`A097745(A032160(n+2))`
-/

namespace A117403.P1194715436835272167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097745 (A032160 (n + 2)).toNat

end

end A117403.P1194715436835272167

namespace A117403

/-- `A097745(A032160(n+2))` -/
def P1194715436835272167.Spec : Prop :=
  ∀ n, P1194715436835272167.a n = A117403 n

end A117403

/-!
# A117404: Triangular numbers for which the sum of the digits is a square.

The programs for A117404, there is no canonical definition to state claims against.
-/

/-! ## A117404.P14481340695365093318

`eq[A009766(n), A010052(A007953(n))]`
-/

namespace A117404.P14481340695365093318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117404.P14481340695365093318

/-! ## A117404.P10503208366616625362

`eq[A000122(A007953(n)), A029653(n)]`
-/

namespace A117404.P10503208366616625362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117404.P10503208366616625362

/-! ## A117404.P2635875345492569113

`eq[A002260(n+1), A010052(A007953(n))]`
-/

namespace A117404.P2635875345492569113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117404.P2635875345492569113

/-! ## A117404.P8862297728117661111

`eq[A096294(A007953(n)), A201811(n+1)]`
-/

namespace A117404.P8862297728117661111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096294 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117404.P8862297728117661111

/-! ## A117404.P14762464081114209260

`eq[A111845(A007953(n)), A173018(n)]`
-/

namespace A117404.P14762464081114209260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111845 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117404.P14762464081114209260

/-!
# A117405: Semiprime nearest to 2^n. (In case of a tie, choose the smaller).

The programs for A117405, there is no canonical definition to state claims against.
-/

/-! ## A117405.P14489725893911995666

`2^n+A117406(n)`
-/

namespace A117405.P14489725893911995666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A117406 n

end

end A117405.P14489725893911995666

/-! ## A117405.P10096547034982164023

`A117406(n)+A000079(n)`
-/

namespace A117405.P10096547034982164023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117406 n + A000079 n

end

end A117405.P10096547034982164023

/-! ## A117405.P10066357807143638290

`A117406(n)+Δ[A000225(n)]`
-/

namespace A117405.P10066357807143638290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117406 n + (f1 (n + 1) - f1 n)

end

end A117405.P10066357807143638290

/-! ## A117405.P6736240617386684934

`A117406(n)+A011782(n+1)`
-/

namespace A117405.P6736240617386684934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117406 n + A011782 (n + 1)

end

end A117405.P6736240617386684934

/-! ## A117405.P7245424487247769478

`A000051(n)+A117406(n)-1`
-/

namespace A117405.P7245424487247769478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A117406 n - 1)

end

end A117405.P7245424487247769478

/-!
# A117406: Integer k such that 2^n + k = A117405(n).

The programs for A117406, there is no canonical definition to state claims against.
-/

/-! ## A117406.P2669149193270122937

`A117405(n)-2^n`
-/

namespace A117406.P2669149193270122937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117405 n - (2 ^ n : ℤ)

end

end A117406.P2669149193270122937

/-! ## A117406.P12148881426647245619

`A117405(n)+1-A000051(n)`
-/

namespace A117406.P12148881426647245619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117405 n + 1 - A000051 n

end

end A117406.P12148881426647245619

/-! ## A117406.P14882984785076093455

`(A117405(n)-A000079(n))%8`
-/

namespace A117406.P14882984785076093455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117405 n - A000079 n) 8

end

end A117406.P14882984785076093455

/-! ## A117406.P17981541783443476733

`A000045(n)+A117405(n)-A117591(n)`
-/

namespace A117406.P17981541783443476733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A117405 n - A117591 n)

end

end A117406.P17981541783443476733

/-! ## A117406.P1903209429281963394

`A117405(n)-A059959(n)-A117387(n)`
-/

namespace A117406.P1903209429281963394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117405 n - A059959 n - A117387 n

end

end A117406.P1903209429281963394

/-!
# A117407: a(n) = j if n is T(j), else a(n) = k if n is U(k), where T is a Beatty sequence based on (sqrt(5)+5)/2 (A054770) and U is its complement (A063732).

The programs for A117407, there is no canonical definition to state claims against.
-/

/-! ## A117407.P9634895508082739791

`A048865(p?[A116570(A117385(n+1))])`
-/

namespace A117407.P9634895508082739791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (A117385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117407.P9634895508082739791

/-! ## A117407.P5694016611721446505

`A193592(eq[n, A194988(n+1)])`
-/

namespace A117407.P5694016611721446505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117407.P5694016611721446505

/-! ## A117407.P9552379498157118457

`A193739(eq[n, A194988(n+1)])`
-/

namespace A117407.P9552379498157118457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117407.P9552379498157118457

/-!
# A117408: Triangle read by rows: T(n,k) is the number of partitions of n into odd parts in which the largest part occurs k times (1<=k<=n).

The programs for A117408, there is no canonical definition to state claims against.
-/

/-! ## A117408.P15725686816695992226

`A255072(A027185(n+1))^A317624(2*n+1)`
-/

namespace A117408.P15725686816695992226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255072 (A027185 (n + 1)).toNat : ℚ) ^ (A317624 (2 * n + 1) : ℤ)

end

end A117408.P15725686816695992226

/-! ## A117408.P14634113494543362850

`A255072(A027185(n+1))^A000041(A055672(n))`
-/

namespace A117408.P14634113494543362850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255072 (A027185 (n + 1)).toNat : ℚ) ^ (A000041 (A055672 n).toNat : ℤ)

end

end A117408.P14634113494543362850

/-! ## A117408.P3553703926952264355

`A255072(A027185(n+1))^A002326(A055671(n))`
-/

namespace A117408.P3553703926952264355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255072 (A027185 (n + 1)).toNat : ℚ) ^ (A002326 (A055671 n).toNat : ℤ)

end

end A117408.P3553703926952264355

/-! ## A117408.P8825161495877806988

`A255072(A027185(n+1))+A000038(A007504(n+1))`
-/

namespace A117408.P8825161495877806988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A027185 (n + 1)).toNat + A000038 (A007504 (n + 1)).toNat

end

end A117408.P8825161495877806988

/-! ## A117408.P7259738847430665316

`A010051(A069485(n+1))*A255072(A027185(n+1))`
-/

namespace A117408.P7259738847430665316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A069485 (n + 1)).toNat * A255072 (A027185 (n + 1)).toNat

end

end A117408.P7259738847430665316

/-! ## A117408.P4427034622281211110

`A255072(A027185(n+1))^A033630(A320057(n+1))`
-/

namespace A117408.P4427034622281211110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255072 (A027185 (n + 1)).toNat : ℚ) ^ (A033630 (A320057 (n + 1)).toNat : ℤ)

end

end A117408.P4427034622281211110

/-!
# A117409: Number of partitions of n into odd parts in which the largest part occurs only once.

The programs for A117409, there is no canonical definition to state claims against.
-/

/-! ## A117409.P5579171138189475688

`∑{d}[1-n, A078374(#)]`
-/

namespace A117409.P5579171138189475688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078374 d

end

end A117409.P5579171138189475688

/-! ## A117409.P9166879648205888489

`A052839(abs(1-n))-1`
-/

namespace A117409.P9166879648205888489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 |1 - (n : ℤ)|.toNat - 1

end

end A117409.P9166879648205888489

/-! ## A117409.P9810603397375702784

`A000009(abs(1-n))-char[1]`
-/

namespace A117409.P9810603397375702784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 |1 - (n : ℤ)|.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A117409.P9810603397375702784

/-! ## A117409.P6105641401191850791

`A000009(n-a(C(2, n)))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A117409.P6105641401191850791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A000009 ((n : ℤ) - a (Nat.choose 2 n)).toNat

end

end A117409.P6105641401191850791

/-! ## A117409.P14294598677811967168

`xor(C(3, n+2), A000009(abs(2-n)+1))`
-/

namespace A117409.P14294598677811967168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 3 (n + 2) : ℤ) (A000009 (|2 - (n : ℤ)| + 1).toNat)

end

end A117409.P14294598677811967168

/-! ## A117409.P13585066300670036311

`A035457(comp[2*n+3])`
-/

namespace A117409.P13585066300670036311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117409.P13585066300670036311

/-! ## A117409.P8831421196830978415

`A000009(abs(1-n))%A000032(n)`
-/

namespace A117409.P8831421196830978415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 |1 - (n : ℤ)|.toNat) (A000032 n)

end

end A117409.P8831421196830978415

/-! ## A117409.P12307047100091915285

`A264403(∑[n]-floor(atan(n)))`
-/

namespace A117409.P12307047100091915285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A117409.P12307047100091915285

/-! ## A117409.P15663409313097193273

`A285229(A133263(n)-(n+1))`
-/

namespace A117409.P15663409313097193273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (A133263 n - (n + 1 : ℤ)).toNat

end

end A117409.P15663409313097193273

/-! ## A117409.P13934991002803728189

`A079126(∑[n-char[2]])`
-/

namespace A117409.P13934991002803728189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117409.P13934991002803728189

/-! ## A117409.P11906366194866887771

`A286335(A186752(n+2))`
-/

namespace A117409.P11906366194866887771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A186752 (n + 2)).toNat

end

end A117409.P11906366194866887771

/-!
# A117410: Expansion of q^(-5/24) * eta(q^2)^3 / eta(q) in powers of q.

The programs for A117410, there is no canonical definition to state claims against.
-/

/-! ## A117410.P675859015007180642

`A033999(n)*A107034(n)`
-/

namespace A117410.P675859015007180642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A107034 n

end

end A117410.P675859015007180642

/-! ## A117410.P712438043945359849

`A009001(2*n)*A107034(n)`
-/

namespace A117410.P712438043945359849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A107034 n

end

end A117410.P712438043945359849

/-! ## A117410.P1381354337642048429

`A009531(2*n+1)*A107034(n)`
-/

namespace A117410.P1381354337642048429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A107034 n

end

end A117410.P1381354337642048429

/-! ## A117410.P14629444266603329262

`A034947(2*n+1)*A107034(n)`
-/

namespace A117410.P14629444266603329262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A107034 n

end

end A117410.P14629444266603329262

/-! ## A117410.P4427061379370523047

`1/A034947(A016825(n))*A107034(n)`
-/

namespace A117410.P4427061379370523047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A034947 (A016825 n).toNat : ℚ) * (A107034 n : ℚ)

end

end A117410.P4427061379370523047

/-! ## A117410.P6263124537441081201

`A008683(A116570(n))*A107034(n)`
-/

namespace A117410.P6263124537441081201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A116570 n).toNat * A107034 n

end

end A117410.P6263124537441081201

/-! ## A117410.P4869312809767447148

`A094267(n²)*A107034(n)`
-/

namespace A117410.P4869312809767447148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A107034 n

end

end A117410.P4869312809767447148

/-!
# A117411: Skew triangle associated to the Euler numbers.

The programs for A117411, the canonical program `A117411.P2575899155432081916` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117411 has offset 0).

The definition of A117411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117411.P2575899155432081916

`A117435(A185180(n+1)-1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117411

/-- `A117435(A185180(n+1)-1)` -/
def P2575899155432081916.Spec : Prop :=
  ∀ n, P2575899155432081916.a n = A117411 n

theorem P2575899155432081916.correct : P2575899155432081916.Spec := by
  intro n
  simp only [A117411]

end A117411

/-! ## A117411.P2498150053000097288

`A098158(n)*A167314(A057728(n+1))`
-/

namespace A117411.P2498150053000097288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A167314 (A057728 (n + 1)).toNat

end

end A117411.P2498150053000097288

namespace A117411

/-- `A098158(n)*A167314(A057728(n+1))` -/
def P2498150053000097288.Spec : Prop :=
  ∀ n, P2498150053000097288.a n = A117411 n

end A117411

/-! ## A117411.P9824892477941848316

`A167314(A057728(n+1))*A202023(A061579(n))`
-/

namespace A117411.P9824892477941848316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167314 (A057728 (n + 1)).toNat * A202023 (A061579 n).toNat

end

end A117411.P9824892477941848316

namespace A117411

/-- `A167314(A057728(n+1))*A202023(A061579(n))` -/
def P9824892477941848316.Spec : Prop :=
  ∀ n, P9824892477941848316.a n = A117411 n

end A117411

/-! ## A117411.P985693489208691280

`A103633(A185869(n+1))*A167314(A057728(n+1))`
-/

namespace A117411.P985693489208691280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (A185869 (n + 1)).toNat * A167314 (A057728 (n + 1)).toNat

end

end A117411.P985693489208691280

namespace A117411

/-- `A103633(A185869(n+1))*A167314(A057728(n+1))` -/
def P985693489208691280.Spec : Prop :=
  ∀ n, P985693489208691280.a n = A117411 n

end A117411

/-! ## A117411.P13555592655024984149

`A167314(A057728(n+1))*A202023(A038722(n+2))`
-/

namespace A117411.P13555592655024984149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167314 (A057728 (n + 1)).toNat * A202023 (A038722 (n + 2)).toNat

end

end A117411.P13555592655024984149

namespace A117411

/-- `A167314(A057728(n+1))*A202023(A038722(n+2))` -/
def P13555592655024984149.Spec : Prop :=
  ∀ n, P13555592655024984149.a n = A117411 n

end A117411

/-! ## A117411.P2155838717327088220

`A152815(2*A063656(n))*A167314(A057728(n+1))`
-/

namespace A117411.P2155838717327088220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (2 * A063656 n).toNat * A167314 (A057728 (n + 1)).toNat

end

end A117411.P2155838717327088220

namespace A117411

/-- `A152815(2*A063656(n))*A167314(A057728(n+1))` -/
def P2155838717327088220.Spec : Prop :=
  ∀ n, P2155838717327088220.a n = A117411 n

end A117411

/-! ## A117411.P6154511009852023719

`A167314(A057728(n+1))/A068555(n)*A115951(n)`
-/

namespace A117411.P6154511009852023719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167314 (A057728 (n + 1)).toNat : ℚ) / (A068555 n : ℚ) * (A115951 n : ℚ)

end

end A117411.P6154511009852023719

namespace A117411

/-- `A167314(A057728(n+1))/A068555(n)*A115951(n)` -/
def P6154511009852023719.Spec : Prop :=
  ∀ n, P6154511009852023719.a n = (A117411 n : ℚ)

end A117411

/-! ## A117411.P778259815693339782

`A098158(n)*A167314(A130321(n))`
-/

namespace A117411.P778259815693339782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A167314 (A130321 n).toNat

end

end A117411.P778259815693339782

namespace A117411

/-- `A098158(n)*A167314(A130321(n))` -/
def P778259815693339782.Spec : Prop :=
  ∀ n, P778259815693339782.a n = A117411 n

end A117411

/-! ## A117411.P3673790192488476288

`A098158(n)*A320283(A068913(n)²)`
-/

namespace A117411.P3673790192488476288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A320283 (A068913 n ^ 2).toNat

end

end A117411.P3673790192488476288

namespace A117411

/-- `A098158(n)*A320283(A068913(n)²)` -/
def P3673790192488476288.Spec : Prop :=
  ∀ n, P3673790192488476288.a n = A117411 n

end A117411

/-!
# A117412: Sum of the interior angles of an n-sided polygon, in gradians.

The programs for A117412, the canonical program `A117412.P1748786084788128` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117412 has offset 3).

The definition of A117412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117412.P1748786084788128

`200*(n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117412

/-- `200*(n+1)` -/
def P1748786084788128.Spec : Prop :=
  ∀ n, (P1748786084788128.a n : ℤ) = A117412 (n + 3)

theorem P1748786084788128.correct : P1748786084788128.Spec := by
  intro n
  simp only [A117412, Nat.add_sub_cancel]

end A117412

/-!
# A117413: Expansion of (1-x^2)/(1-2*x^2+4*x^3+x^4).

The programs for A117413, the canonical program `A117413.P9585619987528953365` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117413 has offset 0).

The definition of A117413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x^2+4x^3+x^4))` (program `A117413.P9585619987528953365`, by `A117413.P9585619987528953365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117413.P9585619987528953365

`ogf((1-x^2)/(1-2x^2+4x^3+x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117413

/-- `ogf((1-x^2)/(1-2x^2+4x^3+x^4))` -/
def P9585619987528953365.Spec : Prop :=
  ∀ n, P9585619987528953365.a n = A117413 n

theorem P9585619987528953365.correct : P9585619987528953365.Spec := by
  intro n
  simp only [A117413]

end A117413

/-! ## A117413.P7553165690676314652

`2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=-4`
-/

namespace A117413.P7553165690676314652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, -4] fun n a =>
  2 * a (n - 2) - 4 * a (n - 3) - a (n - 4)

end

end A117413.P7553165690676314652

namespace A117413

/-- `2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P7553165690676314652.Spec : Prop :=
  ∀ n, P7553165690676314652.a n = A117413 n

end A117413

/-! ## A117413.P135167258713080608

`A033999(n)*A052922(2*n)`
-/

namespace A117413.P135167258713080608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A052922 (2 * n)

end

end A117413.P135167258713080608

namespace A117413

/-- `A033999(n)*A052922(2*n)` -/
def P135167258713080608.Spec : Prop :=
  ∀ n, P135167258713080608.a n = A117413 n

end A117413

/-! ## A117413.P11922909358953721491

`(-1)^n*A052922(A005843(n))`
-/

namespace A117413.P11922909358953721491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A052922 (A005843 n).toNat

end

end A117413.P11922909358953721491

namespace A117413

/-- `(-1)^n*A052922(A005843(n))` -/
def P11922909358953721491.Spec : Prop :=
  ∀ n, P11922909358953721491.a n = A117413 n

end A117413

/-! ## A117413.P16130127606610680759

`A007273(Δ[A284491(n+1)]²)*A052922(2*n)`
-/

namespace A117413.P16130127606610680759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007273 ((f1 (n + 1) - f1 n) ^ 2).toNat * A052922 (2 * n)

end

end A117413.P16130127606610680759

namespace A117413

/-- `A007273(Δ[A284491(n+1)]²)*A052922(2*n)` -/
def P16130127606610680759.Spec : Prop :=
  ∀ n, P16130127606610680759.a n = A117413 n

end A117413

/-! ## A117413.P4819896183157937357

`A008683(A001511(n²+1))*A052922(2*n)`
-/

namespace A117413.P4819896183157937357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001511 (n ^ 2 + 1)).toNat * A052922 (2 * n)

end

end A117413.P4819896183157937357

namespace A117413

/-- `A008683(A001511(n²+1))*A052922(2*n)` -/
def P4819896183157937357.Spec : Prop :=
  ∀ n, P4819896183157937357.a n = A117413 n

end A117413

/-!
# A117414: An Euler triangle.

The programs for A117414, there is no canonical definition to state claims against.
-/

/-! ## A117414.P17367135153131047837

`abs(A065547(n)*A262616(n))`
-/

namespace A117414.P17367135153131047837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065547 n * A262616 n|

end

end A117414.P17367135153131047837

/-! ## A117414.P14843495798820695500

`abs(A065547(n))*A130321(n)²`
-/

namespace A117414.P14843495798820695500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065547 n| * A130321 n ^ 2

end

end A117414.P14843495798820695500

/-! ## A117414.P7477905515929610523

`abs(A057728(n+1)²*A065547(n))`
-/

namespace A117414.P7477905515929610523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057728 (n + 1) ^ 2 * A065547 n|

end

end A117414.P7477905515929610523

/-! ## A117414.P10058568572821839940

`A065547(n)*A167314(A057728(n+1))`
-/

namespace A117414.P10058568572821839940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 n * A167314 (A057728 (n + 1)).toNat

end

end A117414.P10058568572821839940

/-! ## A117414.P11013485441504786402

`A065547(n)*A167314(A130321(n))`
-/

namespace A117414.P11013485441504786402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 n * A167314 (A130321 n).toNat

end

end A117414.P11013485441504786402

/-!
# A117415: E.g.f. (x*tan(x)-x^2)/8 (even powers only).

The programs for A117415, there is no canonical definition to state claims against.
-/

/-! ## A117415.P3904704795994735545

`floor(A024255(n)/4)`
-/

namespace A117415.P3904704795994735545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024255 n : ℚ) / 4⌋

end

end A117415.P3904704795994735545

/-! ## A117415.P18276492040159111630

`A117414(A133263(n))`
-/

namespace A117415.P18276492040159111630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117414 (A133263 n).toNat

end

end A117415.P18276492040159111630

/-! ## A117415.P14657149997256050649

`A117414(A238531(n+1))`
-/

namespace A117415.P14657149997256050649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117414 (A238531 (n + 1)).toNat

end

end A117415.P14657149997256050649

/-! ## A117415.P5861617426346398249

`A024255(n)%A000364(n)/4`
-/

namespace A117415.P5861617426346398249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A024255 n) (A000364 n) : ℚ) / 4

end

end A117415.P5861617426346398249

/-! ## A117415.P5989873266870964700

`floor(A009752(n)/8)`
-/

namespace A117415.P5989873266870964700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009752 n : ℚ) / 8⌋

end

end A117415.P5989873266870964700

/-!
# A117416: Semiprime nearest to 3^n. In case of a tie, choose the smaller.

The programs for A117416, there is no canonical definition to state claims against.
-/

/-! ## A117416.P3060430321654493776

`A117417(n)+3^n`
-/

namespace A117416.P3060430321654493776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117417 n + (3 ^ n : ℤ)

end

end A117416.P3060430321654493776

/-! ## A117416.P3668269503382075657

`abs(A117417(n)+A000244(n))`
-/

namespace A117416.P3668269503382075657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117417 n + A000244 n|

end

end A117416.P3668269503382075657

/-! ## A117416.P15759485706122490155

`A225466(A000096(n))+A117417(n)`
-/

namespace A117416.P15759485706122490155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225466 (A000096 n).toNat + A117417 n

end

end A117416.P15759485706122490155

/-! ## A117416.P4501169122028418136

`(A117417(n)+A000244(n))*A007318(∑[n])`
-/

namespace A117416.P4501169122028418136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117417 n + A000244 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117416.P4501169122028418136

/-! ## A117416.P10392976421592113943

`(A117417(n)+A000244(n))/A007318(∑[n+1])`
-/

namespace A117416.P10392976421592113943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117417 n + A000244 n : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A117416.P10392976421592113943

/-!
# A117417: Integer k such that 3^n + k = A117416(n).

The programs for A117417, there is no canonical definition to state claims against.
-/

/-! ## A117417.P15446541419329811716

`A117416(n)-3^n`
-/

namespace A117417.P15446541419329811716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117416 n - (3 ^ n : ℤ)

end

end A117417.P15446541419329811716

/-! ## A117417.P13459201072257665689

`(A117416(n)-A000244(n))%45`
-/

namespace A117417.P13459201072257665689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117416 n - A000244 n) 45

end

end A117417.P13459201072257665689

/-! ## A117417.P6061171334984218843

`A000027(A117416(n))-A000244(n)`
-/

namespace A117417.P6061171334984218843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A117416 n).toNat - A000244 n

end

end A117417.P6061171334984218843

/-!
# A117418: Triangle T, read by rows, such that column 2k+1 of T equals column k of T^2 and column 2k of T equals column k of T*R: [T^2](n+k,k) = T(n+2k+1,2k+1) and [T*R](n+k,k) = T(n+2k,2k) for n>=0, k>=0, where R = SHIFT_RIGHT(T).

The programs for A117418, there is no canonical definition to state claims against.
-/

/-! ## A117418.P846950243217919470

`A111660(2*A125781(n))`
-/

namespace A117418.P846950243217919470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A125781 n).toNat

end

end A117418.P846950243217919470

/-! ## A117418.P10711530059115926608

`A342515(2*A091491(n))`
-/

namespace A117418.P10711530059115926608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (2 * A091491 n).toNat

end

end A117418.P10711530059115926608

/-! ## A117418.P3217911066019710241

`A111660(A125781(n)+A125781(n))`
-/

namespace A117418.P3217911066019710241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A125781 n + A125781 n).toNat

end

end A117418.P3217911066019710241

/-! ## A117418.P2507662347618618643

`A178798(A094507(n))+A125781(n)`
-/

namespace A117418.P2507662347618618643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A094507 n).toNat + A125781 n

end

end A117418.P2507662347618618643

/-! ## A117418.P17007000293737058989

`A091491(n)+A010054(A008828(n+2))`
-/

namespace A117418.P17007000293737058989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 n + A010054 (A008828 (n + 2)).toNat

end

end A117418.P17007000293737058989

/-!
# A117419: Column 1 of triangle A117418; also row sums of triangle A117418; also column 0 of the matrix square of triangle A117418.

The programs for A117419, there is no canonical definition to state claims against.
-/

/-! ## A117419.P4368688205267113561

`A117427(∑[n])`
-/

namespace A117419.P4368688205267113561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117427 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117419.P4368688205267113561

/-! ## A117419.P1100425961322640990

`record[A117427(n)/A117418(n)]`
-/

namespace A117419.P1100425961322640990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117427 n : ℚ) / (A117418 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117419.P1100425961322640990

/-! ## A117419.P17463401015186202753

`record[A117427(n)/A117425(n)]`
-/

namespace A117419.P17463401015186202753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117427 n : ℚ) / (A117425 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117419.P17463401015186202753

/-! ## A117419.P3818836572800144254

`A117425(A000124(n))+A057427(n)`
-/

namespace A117419.P3818836572800144254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (A000124 n).toNat + A057427 n

end

end A117419.P3818836572800144254

/-! ## A117419.P5593262491070023369

`A117425(A000124(n))-A057428(n)`
-/

namespace A117419.P5593262491070023369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (A000124 n).toNat - A057428 n

end

end A117419.P5593262491070023369

/-! ## A117419.P15130086136864271361

`A117427(A000217(n))%A199021(n)`
-/

namespace A117419.P15130086136864271361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117427 (A000217 n).toNat) (A199021 n)

end

end A117419.P15130086136864271361

/-! ## A117419.P9984567974035199920

`A117427(A000217(n))+A000007(n+1)`
-/

namespace A117419.P9984567974035199920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117427 (A000217 n).toNat + A000007 (n + 1)

end

end A117419.P9984567974035199920

/-! ## A117419.P8778164805765519395

`record[ratio[A117418(n)]]`
-/

namespace A117419.P8778164805765519395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117419.P8778164805765519395

/-! ## A117419.P16002747601298477541

`A117418(∑[n+1]+1)`
-/

namespace A117419.P16002747601298477541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117419.P16002747601298477541

/-! ## A117419.P9893743385299843087

`record[A117418(n+1)/A117418(n)]`
-/

namespace A117419.P9893743385299843087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117418 (n + 1) : ℚ) / (A117418 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117419.P9893743385299843087

/-!
# A117420: Column 2 of triangle A117418.

The programs for A117420, there is no canonical definition to state claims against.
-/

/-! ## A117420.P15643427727527802011

`∑[abs(Δ[A117419(n)])]`
-/

namespace A117420.P15643427727527802011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117419 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117420.P15643427727527802011

/-! ## A117420.P18423065170903487626

`A117419(n+1)-1`
-/

namespace A117420.P18423065170903487626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117419 (n + 1) - 1

end

end A117420.P18423065170903487626

/-! ## A117420.P5734610116859013389

`record[ratio[A117425(n)]]`
-/

namespace A117420.P5734610116859013389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117420.P5734610116859013389

/-! ## A117420.P10213644671311531918

`A117425(∑[n+1]+1)`
-/

namespace A117420.P10213644671311531918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117420.P10213644671311531918

/-! ## A117420.P16189491140133318903

`A117427(∑[n+1])-1`
-/

namespace A117420.P16189491140133318903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117427 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A117420.P16189491140133318903

/-! ## A117420.P8850169659050926969

`record[A117425(n+1)/A117425(n)]`
-/

namespace A117420.P8850169659050926969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117425 (n + 1) : ℚ) / (A117425 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117420.P8850169659050926969

/-! ## A117420.P17093753559705028168

`record[A117427(n+1)-A117418(n+1)²]`
-/

namespace A117420.P17093753559705028168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117427 (n + 1) - A117418 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117420.P17093753559705028168

/-! ## A117420.P7333018188902081247

`record[A117427(n+1)-A117425(n+1)²]`
-/

namespace A117420.P7333018188902081247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117427 (n + 1) - A117425 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117420.P7333018188902081247

/-!
# A117421: Column 3 of triangle A117418.

The programs for A117421, there is no canonical definition to state claims against.
-/

/-! ## A117421.P14043909897010628027

`∑[abs(Δ[A117426(n)])]`
-/

namespace A117421.P14043909897010628027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117421.P14043909897010628027

/-! ## A117421.P14665751836422468635

`A117426(n+1)-1`
-/

namespace A117421.P14665751836422468635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117426 (n + 1) - 1

end

end A117421.P14665751836422468635

/-! ## A117421.P16232709709385636444

`record[A117426(A117407(n))-1]`
-/

namespace A117421.P16232709709385636444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117426 (A117407 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117421.P16232709709385636444

/-! ## A117421.P14237464599270112410

`A117427(∑[n+1]+1)`
-/

namespace A117421.P14237464599270112410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117421.P14237464599270112410

/-! ## A117421.P12705242727105355569

`A117418(A167614(n+2))`
-/

namespace A117421.P12705242727105355569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (A167614 (n + 2)).toNat

end

end A117421.P12705242727105355569

/-!
# A117422: Column 4 of triangle A117418.

The programs for A117422, there is no canonical definition to state claims against.
-/

/-! ## A117422.P1057558405622854647

`A117425(∑[n+2]+3)`
-/

namespace A117422.P1057558405622854647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A117422.P1057558405622854647

/-! ## A117422.P15478441472010992035

`record[A117425(A133263(A008624(n)))]`
-/

namespace A117422.P15478441472010992035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (A133263 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117422.P15478441472010992035

/-! ## A117422.P1427782791593856768

`record[A117425(A133263(A020986(n)))]`
-/

namespace A117422.P1427782791593856768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (A133263 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117422.P1427782791593856768

/-! ## A117422.P4080888711555018631

`A117418(A155212(n)+12)`
-/

namespace A117422.P4080888711555018631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (A155212 n + 12).toNat

end

end A117422.P4080888711555018631

/-! ## A117422.P11838807614746464631

`A117418(eq[4, A002262(n)])`
-/

namespace A117422.P11838807614746464631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117422.P11838807614746464631

/-!
# A117423: Column 5 of triangle A117418.

The programs for A117423, there is no canonical definition to state claims against.
-/

/-! ## A117423.P12539231409539476976

`A117421(n+1)-A117420(n+1)`
-/

namespace A117423.P12539231409539476976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117421 (n + 1) - A117420 (n + 1)

end

end A117423.P12539231409539476976

/-! ## A117423.P13412680880958443724

`A117426(n+2)-A117419(n+2)`
-/

namespace A117423.P13412680880958443724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117426 (n + 2) - A117419 (n + 2)

end

end A117423.P13412680880958443724

/-! ## A117423.P17601520614385665908

`A117427(∑[n+2]+3)`
-/

namespace A117423.P17601520614385665908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117427 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A117423.P17601520614385665908

/-! ## A117423.P11120152824956887874

`A117418(eq[5, A002262(n)])`
-/

namespace A117423.P11120152824956887874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117423.P11120152824956887874

/-! ## A117423.P9103962764995205874

`A117418(eq[6, A002260(n+1)])`
-/

namespace A117423.P9103962764995205874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117423.P9103962764995205874

/-!
# A117424: Column 6 of triangle A117418.

The programs for A117424, there is no canonical definition to state claims against.
-/

/-! ## A117424.P1497853599207582727

`A117425(A167614(n+2))`
-/

namespace A117424.P1497853599207582727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (A167614 (n + 2)).toNat

end

end A117424.P1497853599207582727

/-! ## A117424.P6380783384190108074

`A117425(A052905(n)+8)`
-/

namespace A117424.P6380783384190108074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (A052905 n + 8).toNat

end

end A117424.P6380783384190108074

/-! ## A117424.P11982443049419089981

`record[A117425(A167614(A126759(n)))]`
-/

namespace A117424.P11982443049419089981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (A167614 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117424.P11982443049419089981

/-! ## A117424.P1579769862101778455

`record[A117425(A167614(A133310(n)))]`
-/

namespace A117424.P1579769862101778455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 (A167614 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117424.P1579769862101778455

/-! ## A117424.P8956966310290669275

`A117418(A057428(n)+A161680(n+7)+7)`
-/

namespace A117424.P8956966310290669275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (A057428 n + (A161680 (n + 7) + 7)).toNat

end

end A117424.P8956966310290669275

/-!
# A117425: Triangle T, read by rows, formed by a column bisection of triangle A117418: column k of T equals column 2*k of A117418.

The programs for A117425, there is no canonical definition to state claims against.
-/

/-! ## A117425.P12908579162183080651

`A117418(A245300(n)+A002262(n))`
-/

namespace A117425.P12908579162183080651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (A245300 n + A002262 n).toNat

end

end A117425.P12908579162183080651

/-! ## A117425.P18348235318863071111

`A287215(n+1)+A016389(A022166(n))`
-/

namespace A117425.P18348235318863071111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (n + 1) + A016389 (A022166 n).toNat

end

end A117425.P18348235318863071111

/-! ## A117425.P17747608478497815521

`A123719(A091351(n)+A105556(n)-1)`
-/

namespace A117425.P17747608478497815521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (A091351 n + (A105556 n - 1)).toNat

end

end A117425.P17747608478497815521

/-! ## A117425.P3447527651017926967

`A287215(n+1)-A285515(A157156(n))`
-/

namespace A117425.P3447527651017926967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (n + 1) - A285515 (A157156 n).toNat

end

end A117425.P3447527651017926967

/-! ## A117425.P2543828568088974259

`A123719(A091351(n)-(1-A105556(n)))`
-/

namespace A117425.P2543828568088974259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (A091351 n - (1 - A105556 n)).toNat

end

end A117425.P2543828568088974259

/-!
# A117426: Row sums of triangle A117425.

The programs for A117426, there is no canonical definition to state claims against.
-/

/-! ## A117426.P7052473541447590547

`A117418(A167614(n+1))+A057427(n)`
-/

namespace A117426.P7052473541447590547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (A167614 (n + 1)).toNat + A057427 n

end

end A117426.P7052473541447590547

/-! ## A117426.P11493888282976835604

`A178334(n)+A117418(A167614(n+1))`
-/

namespace A117426.P11493888282976835604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A117418 (A167614 (n + 1)).toNat

end

end A117426.P11493888282976835604

/-! ## A117426.P7286957318049059774

`A117418(A167614(n+1))-A057428(n)`
-/

namespace A117426.P7286957318049059774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (A167614 (n + 1)).toNat - A057428 n

end

end A117426.P7286957318049059774

/-! ## A117426.P1399380718351884046

`A117418(A167614(n+1))+char[A028920(n)]`
-/

namespace A117426.P1399380718351884046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A117426.P1399380718351884046

/-! ## A117426.P16958868673891884460

`A117418(A167614(n+1))+char[A091491(n)]`
-/

namespace A117426.P16958868673891884460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A117426.P16958868673891884460

/-!
# A117428: Row sums of triangle A117427.

The programs for A117428, there is no canonical definition to state claims against.
-/

/-! ## A117428.P12869212891962770011

`A080405((∑[n+1]+1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A117428.P12869212891962770011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080405 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * a (n - 1) + 1).toNat

end

end A117428.P12869212891962770011

/-! ## A117428.P1989327704220278752

`A124769(A183178(n+1))+A026726(n)`
-/

namespace A117428.P1989327704220278752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A183178 (n + 1)).toNat + A026726 n

end

end A117428.P1989327704220278752

/-!
# A117429: Semiprime nearest to 5^n. In case of a tie, choose the smaller.

The programs for A117429, there is no canonical definition to state claims against.
-/

/-! ## A117429.P17805612105277496576

`5^n+A117430(n)`
-/

namespace A117429.P17805612105277496576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) + A117430 n

end

end A117429.P17805612105277496576

/-! ## A117429.P10755697053794392757

`A117430(n)+A000351(n)`
-/

namespace A117429.P10755697053794392757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117430 n + A000351 n

end

end A117429.P10755697053794392757

/-! ## A117429.P14251442383997323068

`A117430(n)+Δ[A003463(n)]`
-/

namespace A117429.P14251442383997323068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117430 n + (f1 (n + 1) - f1 n)

end

end A117429.P14251442383997323068

/-! ## A117429.P18129762303873407505

`5^n-A008683(A118124(n))*A117430(n)`
-/

namespace A117429.P18129762303873407505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - A008683 (A118124 n).toNat * A117430 n

end

end A117429.P18129762303873407505

/-! ## A117429.P2462266366826483282

`A117430(n)+record[A354091(n+1)]`
-/

namespace A117429.P2462266366826483282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117430 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117429.P2462266366826483282

/-!
# A117430: Integer k such that 5^n + k = A117429(n).

The programs for A117430, there is no canonical definition to state claims against.
-/

/-! ## A117430.P7257420485150639066

`A117429(n)-5^n`
-/

namespace A117430.P7257420485150639066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117429 n - (5 ^ n : ℤ)

end

end A117430.P7257420485150639066

/-!
# A117433: Number of planar partitions of n with all part sizes distinct.

The programs for A117433, there is no canonical definition to state claims against.
-/

/-! ## A117433.P1851634373330499694

`∑{d}[round(acot(n)+n), A323587(#)]`
-/

namespace A117433.P1851634373330499694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323587 d

end

end A117433.P1851634373330499694

/-! ## A117433.P9408947083987905208

`∑{d}[A028310(n), A323587(#)]`
-/

namespace A117433.P9408947083987905208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323587 d

end

end A117433.P9408947083987905208

/-! ## A117433.P18395838647734814606

`∑{d}[A274922(n), A323587(#)]`
-/

namespace A117433.P18395838647734814606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323587 d

end

end A117433.P18395838647734814606

/-! ## A117433.P4539645800646191864

`∑{d}[A233583(n+1), A323587(#)]`
-/

namespace A117433.P4539645800646191864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323587 d

end

end A117433.P4539645800646191864

/-! ## A117433.P8049118816622262133

`∑{d}[A065033(2*n), A323587(#)]`
-/

namespace A117433.P8049118816622262133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323587 d

end

end A117433.P8049118816622262133

/-!
# A117434: Expansion of c(x*y(1+x)), c(x) the g.f. of A000108.

The programs for A117434, the canonical program `A117434.P2013061209499168349` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117434 has offset 0).

The definition of A117434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117434.P2013061209499168349

`C(col(n), row(n)-col(n))*A000108(col(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117434

/-- `C(col(n), row(n)-col(n))*A000108(col(n))` -/
def P2013061209499168349.Spec : Prop :=
  ∀ n, P2013061209499168349.a n = A117434 n

theorem P2013061209499168349.correct : P2013061209499168349.Spec := by
  intro n
  simp only [A117434]

end A117434

/-! ## A117434.P10171176462269036354

`abs(A115179(n))`
-/

namespace A117434.P10171176462269036354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115179 n|

end

end A117434.P10171176462269036354

namespace A117434

/-- `abs(A115179(n))` -/
def P10171176462269036354.Spec : Prop :=
  ∀ n, P10171176462269036354.a n = A117434 n

end A117434

/-! ## A117434.P5905847530532729316

`A097807(n)*A115179(n)`
-/

namespace A117434.P5905847530532729316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A115179 n

end

end A117434.P5905847530532729316

namespace A117434

/-- `A097807(n)*A115179(n)` -/
def P5905847530532729316.Spec : Prop :=
  ∀ n, P5905847530532729316.a n = A117434 n

end A117434

/-! ## A117434.P6173420798582590464

`A115179(n)*A128257(n)`
-/

namespace A117434.P6173420798582590464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115179 n * A128257 n

end

end A117434.P6173420798582590464

namespace A117434

/-- `A115179(n)*A128257(n)` -/
def P6173420798582590464.Spec : Prop :=
  ∀ n, P6173420798582590464.a n = A117434 n

end A117434

/-! ## A117434.P10655203127845341056

`A115179(n)*A187034(n)`
-/

namespace A117434.P10655203127845341056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115179 n * A187034 n

end

end A117434.P10655203127845341056

namespace A117434

/-- `A115179(n)*A187034(n)` -/
def P10655203127845341056.Spec : Prop :=
  ∀ n, P10655203127845341056.a n = A117434 n

end A117434

/-! ## A117434.P16436577316880903652

`gcd(A000038(n), A115179(n))`
-/

namespace A117434.P16436577316880903652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115179 n)

end

end A117434.P16436577316880903652

namespace A117434

/-- `gcd(A000038(n), A115179(n))` -/
def P16436577316880903652.Spec : Prop :=
  ∀ n, (P16436577316880903652.a n : ℤ) = A117434 n

end A117434

/-! ## A117434.P13638081214044884763

`A115951(n)/A002260(n+1)`
-/

namespace A117434.P13638081214044884763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A117434.P13638081214044884763

namespace A117434

/-- `A115951(n)/A002260(n+1)` -/
def P13638081214044884763.Spec : Prop :=
  ∀ n, P13638081214044884763.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P11867273423438591638

`A115951(n)/A051125(n+1)`
-/

namespace A117434.P11867273423438591638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A051125 (n + 1) : ℚ)

end

end A117434.P11867273423438591638

namespace A117434

/-- `A115951(n)/A051125(n+1)` -/
def P11867273423438591638.Spec : Prop :=
  ∀ n, P11867273423438591638.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P7260518594656196777

`A115951(n)/A123229(n+1)`
-/

namespace A117434.P7260518594656196777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A123229 (n + 1) : ℚ)

end

end A117434.P7260518594656196777

namespace A117434

/-- `A115951(n)/A123229(n+1)` -/
def P7260518594656196777.Spec : Prop :=
  ∀ n, P7260518594656196777.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P11496837338175345893

`A115951(n)/A131818(n+1)`
-/

namespace A117434.P11496837338175345893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A131818 (n + 1) : ℚ)

end

end A117434.P11496837338175345893

namespace A117434

/-- `A115951(n)/A131818(n+1)` -/
def P11496837338175345893.Spec : Prop :=
  ∀ n, P11496837338175345893.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P10204646380096785860

`A115951(n)/A134544(n+1)`
-/

namespace A117434.P10204646380096785860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A134544 (n + 1) : ℚ)

end

end A117434.P10204646380096785860

namespace A117434

/-- `A115951(n)/A134544(n+1)` -/
def P10204646380096785860.Spec : Prop :=
  ∀ n, P10204646380096785860.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P6796955679555890752

`A115951(n)/A134868(n+1)`
-/

namespace A117434.P6796955679555890752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A134868 (n + 1) : ℚ)

end

end A117434.P6796955679555890752

namespace A117434

/-- `A115951(n)/A134868(n+1)` -/
def P6796955679555890752.Spec : Prop :=
  ∀ n, P6796955679555890752.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P2046669267068660203

`A115951(n)/A135223(n+1)`
-/

namespace A117434.P2046669267068660203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A135223 (n + 1) : ℚ)

end

end A117434.P2046669267068660203

namespace A117434

/-- `A115951(n)/A135223(n+1)` -/
def P2046669267068660203.Spec : Prop :=
  ∀ n, P2046669267068660203.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P17844169108621508348

`A115951(n)/A143310(n+1)`
-/

namespace A117434.P17844169108621508348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A143310 (n + 1) : ℚ)

end

end A117434.P17844169108621508348

namespace A117434

/-- `A115951(n)/A143310(n+1)` -/
def P17844169108621508348.Spec : Prop :=
  ∀ n, P17844169108621508348.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P2277471685388536363

`A115951(n)/A384147(n+1)`
-/

namespace A117434.P2277471685388536363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A384147 (n + 1) : ℚ)

end

end A117434.P2277471685388536363

namespace A117434

/-- `A115951(n)/A384147(n+1)` -/
def P2277471685388536363.Spec : Prop :=
  ∀ n, P2277471685388536363.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P18061010646344710947

`A115951(n)/A384660(n+1)`
-/

namespace A117434.P18061010646344710947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A384660 (n + 1) : ℚ)

end

end A117434.P18061010646344710947

namespace A117434

/-- `A115951(n)/A384660(n+1)` -/
def P18061010646344710947.Spec : Prop :=
  ∀ n, P18061010646344710947.a n = (A117434 n : ℚ)

end A117434

/-! ## A117434.P10012880279065125691

`A114116(n)*A115179(n)`
-/

namespace A117434.P10012880279065125691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114116 n * A115179 n

end

end A117434.P10012880279065125691

namespace A117434

/-- `A114116(n)*A115179(n)` -/
def P10012880279065125691.Spec : Prop :=
  ∀ n, P10012880279065125691.a n = A117434 n

end A117434

/-!
# A117435: Triangle related to exp(x)*cos(2*x).

The programs for A117435, the canonical program `A117435.P11210057758145487531` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117435 has offset 0).

The definition of A117435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117435.P11210057758145487531

`A038207(n)*A369736(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117435

/-- `A038207(n)*A369736(n)` -/
def P11210057758145487531.Spec : Prop :=
  ∀ n, P11210057758145487531.a n = A117435 n

theorem P11210057758145487531.correct : P11210057758145487531.Spec := by
  intro n
  simp only [A117435]

end A117435

/-! ## A117435.P10052228218766461233

`A156663(n)²*A108086(n)`
-/

namespace A117435.P10052228218766461233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n ^ 2 * A108086 n

end

end A117435.P10052228218766461233

namespace A117435

/-- `A156663(n)²*A108086(n)` -/
def P10052228218766461233.Spec : Prop :=
  ∀ n, P10052228218766461233.a n = A117435 n

end A117435

/-! ## A117435.P9549923684308013517

`A156663(n)²*A117440(n)`
-/

namespace A117435.P9549923684308013517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n ^ 2 * A117440 n

end

end A117435.P9549923684308013517

namespace A117435

/-- `A156663(n)²*A117440(n)` -/
def P9549923684308013517.Spec : Prop :=
  ∀ n, P9549923684308013517.a n = A117435 n

end A117435

/-! ## A117435.P2165152454406597598

`A038207(n)*A056594(A025581(n))`
-/

namespace A117435.P2165152454406597598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A056594 (A025581 n).toNat

end

end A117435.P2165152454406597598

namespace A117435

/-- `A038207(n)*A056594(A025581(n))` -/
def P2165152454406597598.Spec : Prop :=
  ∀ n, P2165152454406597598.a n = A117435 n

end A117435

/-! ## A117435.P14608007094566170920

`A130321(n)*A141665(A061579(n))`
-/

namespace A117435.P14608007094566170920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A141665 (A061579 n).toNat

end

end A117435.P14608007094566170920

namespace A117435

/-- `A130321(n)*A141665(A061579(n))` -/
def P14608007094566170920.Spec : Prop :=
  ∀ n, P14608007094566170920.a n = A117435 n

end A117435

/-! ## A117435.P1268342805938605720

`A038207(n)*A056594(A292564(n))`
-/

namespace A117435.P1268342805938605720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A056594 (A292564 n).toNat

end

end A117435.P1268342805938605720

namespace A117435

/-- `A038207(n)*A056594(A292564(n))` -/
def P1268342805938605720.Spec : Prop :=
  ∀ n, P1268342805938605720.a n = A117435 n

end A117435

/-! ## A117435.P15676062063538356124

`A038207(n)*A056594(A083487(n+1))`
-/

namespace A117435.P15676062063538356124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A056594 (A083487 (n + 1)).toNat

end

end A117435.P15676062063538356124

namespace A117435

/-- `A038207(n)*A056594(A083487(n+1))` -/
def P15676062063538356124.Spec : Prop :=
  ∀ n, P15676062063538356124.a n = A117435 n

end A117435

/-! ## A117435.P12045912787336312585

`A038207(n)*A056594(A155724(n+1))`
-/

namespace A117435.P12045912787336312585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A056594 (A155724 (n + 1)).toNat

end

end A117435.P12045912787336312585

namespace A117435

/-- `A038207(n)*A056594(A155724(n+1))` -/
def P12045912787336312585.Spec : Prop :=
  ∀ n, P12045912787336312585.a n = A117435 n

end A117435

/-! ## A117435.P3490721579253954386

`A063694(A130321(n))*A117440(n)`
-/

namespace A117435.P3490721579253954386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A130321 n).toNat * A117440 n

end

end A117435.P3490721579253954386

namespace A117435

/-- `A063694(A130321(n))*A117440(n)` -/
def P3490721579253954386.Spec : Prop :=
  ∀ n, P3490721579253954386.a n = A117435 n

end A117435

/-!
# A117436: Triangle related to exp(x)*sec(2*x).

The programs for A117436, there is no canonical definition to state claims against.
-/

/-! ## A117436.P17098800103844005095

`lcm(A038207(n), A119879(n))`
-/

namespace A117436.P17098800103844005095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038207 n) (A119879 n)

end

end A117436.P17098800103844005095

/-! ## A117436.P13332047790832389980

`lcm(A109449(n), A117435(n))`
-/

namespace A117436.P13332047790832389980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109449 n) (A117435 n)

end

end A117436.P13332047790832389980

/-! ## A117436.P6641343180330528416

`abs(A119879(n)*A130321(n))`
-/

namespace A117436.P6641343180330528416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119879 n * A130321 n|

end

end A117436.P6641343180330528416

/-! ## A117436.P16039345840089148318

`lcm(abs(A119879(n)), A065109(n))`
-/

namespace A117436.P16039345840089148318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm |A119879 n| (A065109 n)

end

end A117436.P16039345840089148318

/-! ## A117436.P10431970939661420023

`A009545(A099375(n))*A119879(n)`
-/

namespace A117436.P10431970939661420023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A099375 n).toNat * A119879 n

end

end A117436.P10431970939661420023

/-! ## A117436.P16613589472904342045

`A117435(n)*A122045(A025581(n))`
-/

namespace A117436.P16613589472904342045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117435 n * A122045 (A025581 n).toNat

end

end A117436.P16613589472904342045

/-! ## A117436.P5420601077487827606

`A117435(n)*A119879(n)/A130595(n)`
-/

namespace A117436.P5420601077487827606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117435 n * A119879 n : ℚ) / (A130595 n : ℚ)

end

end A117436.P5420601077487827606

/-! ## A117436.P17497122625997113845

`A063694(A130321(n))*A109449(n)`
-/

namespace A117436.P17497122625997113845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A130321 n).toNat * A109449 n

end

end A117436.P17497122625997113845

/-!
# A117437: Expansion of e.g.f.: exp(x)*sec(2*x).

The programs for A117437, there is no canonical definition to state claims against.
-/

/-! ## A117437.P16492746344121160491

`A343843(n)+2*A084098(n)`
-/

namespace A117437.P16492746344121160491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343843 n + 2 * A084098 n

end

end A117437.P16492746344121160491

/-! ## A117437.P3749926810766462981

`A000834(n)-2*A084098(n)`
-/

namespace A117437.P3749926810766462981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000834 n - 2 * A084098 n

end

end A117437.P3749926810766462981

/-! ## A117437.P17130235233954413923

`(A343843(n)+A000834(n))/2`
-/

namespace A117437.P17130235233954413923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343843 n + A000834 n : ℚ) / 2

end

end A117437.P17130235233954413923

/-! ## A117437.P17814231458671226107

`A000834(n)+2*A084098(n)/A106400(A006519(n+1))`
-/

namespace A117437.P17814231458671226107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000834 n : ℚ) + (2 * A084098 n : ℚ) / (A106400 (A006519 (n + 1)).toNat : ℚ)

end

end A117437.P17814231458671226107

/-! ## A117437.P5933883201878752137

`A000834(n)-(A000834(n)-A343843(n))/4-A084098(n)`
-/

namespace A117437.P5933883201878752137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000834 n : ℚ) - (A000834 n - A343843 n : ℚ) / 4 - (A084098 n : ℚ)

end

end A117437.P5933883201878752137

/-!
# A117438: Triangle T(n, k) = binomial(2*n-k, k)*(-4)^(n-k), read by rows.

The programs for A117438, the canonical program `A117438.P7688385600784362764` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117438 has offset 0).

The definition of A117438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117438.P7688385600784362764

`C(2*row(n)-col(n), col(n))*(-4)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117438

/-- `C(2*row(n)-col(n), col(n))*(-4)^(row(n)-col(n))` -/
def P7688385600784362764.Spec : Prop :=
  ∀ n, P7688385600784362764.a n = (A117438 n : ℚ)

end A117438

/-! ## A117438.P12435686391997842810

`A076756(n)*A262616(n)`
-/

namespace A117438.P12435686391997842810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 n * A262616 n

end

end A117438.P12435686391997842810

namespace A117438

/-- `A076756(n)*A262616(n)` -/
def P12435686391997842810.Spec : Prop :=
  ∀ n, P12435686391997842810.a n = A117438 n

end A117438

/-! ## A117438.P12376332868861929317

`A076756(n)*A130321(n)²`
-/

namespace A117438.P12376332868861929317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 n * A130321 n ^ 2

end

end A117438.P12376332868861929317

namespace A117438

/-- `A076756(n)*A130321(n)²` -/
def P12376332868861929317.Spec : Prop :=
  ∀ n, P12376332868861929317.a n = A117438 n

end A117438

/-! ## A117438.P2411306178817957505

`A000302(A025581(n))*A076756(n)`
-/

namespace A117438.P2411306178817957505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A025581 n).toNat * A076756 n

end

end A117438.P2411306178817957505

namespace A117438

/-- `A000302(A025581(n))*A076756(n)` -/
def P2411306178817957505.Spec : Prop :=
  ∀ n, P2411306178817957505.a n = A117438 n

end A117438

/-! ## A117438.P5692836957124174731

`A011782(A099375(n))*A076756(n)`
-/

namespace A117438.P5692836957124174731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A099375 n).toNat * A076756 n

end

end A117438.P5692836957124174731

namespace A117438

/-- `A011782(A099375(n))*A076756(n)` -/
def P5692836957124174731.Spec : Prop :=
  ∀ n, P5692836957124174731.a n = A117438 n

end A117438

/-! ## A117438.P14841838323483403076

`A076756(n)*A130321(A185871(n+1))`
-/

namespace A117438.P14841838323483403076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 n * A130321 (A185871 (n + 1)).toNat

end

end A117438.P14841838323483403076

namespace A117438

/-- `A076756(n)*A130321(A185871(n+1))` -/
def P14841838323483403076.Spec : Prop :=
  ∀ n, P14841838323483403076.a n = A117438 n

end A117438

/-!
# A117439: Expansion of (1-x^2)/(1 -4*x -2*x^2 +x^4).

The programs for A117439, the canonical program `A117439.P2857168367151267051` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117439 has offset 0).

The definition of A117439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-4x-2x^2+x^4))` (program `A117439.P2857168367151267051`, by `A117439.P2857168367151267051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117439.P2857168367151267051

`ogf((1-x^2)/(1-4x-2x^2+x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117439

/-- `ogf((1-x^2)/(1-4x-2x^2+x^4))` -/
def P2857168367151267051.Spec : Prop :=
  ∀ n, P2857168367151267051.a n = A117439 n

theorem P2857168367151267051.correct : P2857168367151267051.Spec := by
  intro n
  simp only [A117439]

end A117439

/-! ## A117439.P10149297344915384

`4*a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=76`
-/

namespace A117439.P10149297344915384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 17, 76] fun n a =>
  4 * a (n - 1) + 2 * a (n - 2) - a (n - 4)

end

end A117439.P10149297344915384

namespace A117439

/-- `4*a(n-1)+2*a(n-2)-a(n-4)` -/
def P10149297344915384.Spec : Prop :=
  ∀ n, P10149297344915384.a n = A117439 n

end A117439

/-! ## A117439.P16218082417068995131

`∑{#}[floor(n/2), C(2*n-3*#, #)*4^(n-2*#)]`
-/

namespace A117439.P16218082417068995131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((2 * n : ℤ) - (3 * k : ℤ)).toNat k : ℚ) * (4 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A117439.P16218082417068995131

namespace A117439

/-- `∑{#}[floor(n/2), C(2*n-3*#, #)*4^(n-2*#)]` -/
def P16218082417068995131.Spec : Prop :=
  ∀ n, P16218082417068995131.a n = (A117439 n : ℚ)

end A117439

/-! ## A117439.P18108365941258320490

`A008999(2*n)`
-/

namespace A117439.P18108365941258320490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008999 (2 * n)

end

end A117439.P18108365941258320490

namespace A117439

/-- `A008999(2*n)` -/
def P18108365941258320490.Spec : Prop :=
  ∀ n, P18108365941258320490.a n = A117439 n

end A117439

/-! ## A117439.P10821383565924951171

`record[A008999(A014681(n))]`
-/

namespace A117439.P10821383565924951171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008999 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117439.P10821383565924951171

namespace A117439

/-- `record[A008999(A014681(n))]` -/
def P10821383565924951171.Spec : Prop :=
  ∀ n, P10821383565924951171.a n = A117439 n

end A117439

/-! ## A117439.P18297842365774208730

`record[A008999(A240828(n+1))]`
-/

namespace A117439.P18297842365774208730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008999 (A240828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117439.P18297842365774208730

namespace A117439

/-- `record[A008999(A240828(n+1))]` -/
def P18297842365774208730.Spec : Prop :=
  ∀ n, P18297842365774208730.a n = A117439 n

end A117439

/-! ## A117439.P435993846134714677

`record[gcd(A008999(n), A097331(n))]`
-/

namespace A117439.P435993846134714677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008999 n) (A097331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117439.P435993846134714677

namespace A117439

/-- `record[gcd(A008999(n), A097331(n))]` -/
def P435993846134714677.Spec : Prop :=
  ∀ n, (P435993846134714677.a n : ℤ) = A117439 n

end A117439

/-! ## A117439.P146349499610886452

`A008999(n+n)/A007318(∑[n])`
-/

namespace A117439.P146349499610886452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008999 (n + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A117439.P146349499610886452

namespace A117439

/-- `A008999(n+n)/A007318(∑[n])` -/
def P146349499610886452.Spec : Prop :=
  ∀ n, P146349499610886452.a n = (A117439 n : ℚ)

end A117439

/-! ## A117439.P4223163262519900179

`A008999(n+n)/A013609(∑[n])`
-/

namespace A117439.P4223163262519900179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008999 (n + n) : ℚ) / (A013609 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A117439.P4223163262519900179

namespace A117439

/-- `A008999(n+n)/A013609(∑[n])` -/
def P4223163262519900179.Spec : Prop :=
  ∀ n, P4223163262519900179.a n = (A117439 n : ℚ)

end A117439

/-! ## A117439.P1823643051531233157

`A008999(n+n)/A013610(∑[n])`
-/

namespace A117439.P1823643051531233157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008999 (n + n) : ℚ) / (A013610 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A117439.P1823643051531233157

namespace A117439

/-- `A008999(n+n)/A013610(∑[n])` -/
def P1823643051531233157.Spec : Prop :=
  ∀ n, P1823643051531233157.a n = (A117439 n : ℚ)

end A117439

/-!
# A117440: A cyclically signed version of Pascal's triangle.

The programs for A117440, the canonical program `A117440.P15996138924995760758` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117440 has offset 0).

The definition of A117440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117440.P15996138924995760758

`C(row(n), col(n))*(cos(π*(row(n)-col(n))/2)+sin(π*(row(n)-col(n))/2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117440

/-- `C(row(n), col(n))*(cos(π*(row(n)-col(n))/2)+sin(π*(row(n)-col(n))/2))` -/
def P15996138924995760758.Spec : Prop :=
  ∀ n, P15996138924995760758.a n = (A117440 n : ℝ)

end A117440

/-! ## A117440.P2887773500475089996

`(-1)^(row(n)+1+col(n))*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A117440.P2887773500475089996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n) * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A117440.P2887773500475089996

namespace A117440

/-- `(-1)^(row(n)+1+col(n))*T(n-1,k)+T(n-1,k-1)` -/
def P2887773500475089996.Spec : Prop :=
  ∀ n, P2887773500475089996.a n = A117440 n

end A117440

/-! ## A117440.P10162529905256296957

`A097807(n)*A108086(n)`
-/

namespace A117440.P10162529905256296957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A108086 n

end

end A117440.P10162529905256296957

namespace A117440

/-- `A097807(n)*A108086(n)` -/
def P10162529905256296957.Spec : Prop :=
  ∀ n, P10162529905256296957.a n = A117440 n

end A117440

/-! ## A117440.P5446136240178547629

`A007318(n)*A057077(A025581(n))`
-/

namespace A117440.P5446136240178547629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057077 (A025581 n).toNat

end

end A117440.P5446136240178547629

namespace A117440

/-- `A007318(n)*A057077(A025581(n))` -/
def P5446136240178547629.Spec : Prop :=
  ∀ n, P5446136240178547629.a n = A117440 n

end A117440

/-! ## A117440.P8491714715962033061

`A033999(A025581(n))*A108086(n)`
-/

namespace A117440.P8491714715962033061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A108086 n

end

end A117440.P8491714715962033061

namespace A117440

/-- `A033999(A025581(n))*A108086(n)` -/
def P8491714715962033061.Spec : Prop :=
  ∀ n, P8491714715962033061.a n = A117440 n

end A117440

/-! ## A117440.P2484633013892305382

`A007318(n)*A257170(A099375(n))`
-/

namespace A117440.P2484633013892305382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A257170 (A099375 n).toNat

end

end A117440.P2484633013892305382

namespace A117440

/-- `A007318(n)*A257170(A099375(n))` -/
def P2484633013892305382.Spec : Prop :=
  ∀ n, P2484633013892305382.a n = A117440 n

end A117440

/-! ## A117440.P16071969072851067393

`A038207(n)/A009545(A099375(n))`
-/

namespace A117440.P16071969072851067393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A009545 (A099375 n).toNat : ℚ)

end

end A117440.P16071969072851067393

namespace A117440

/-- `A038207(n)/A009545(A099375(n))` -/
def P16071969072851067393.Spec : Prop :=
  ∀ n, P16071969072851067393.a n = (A117440 n : ℚ)

end A117440

/-! ## A117440.P14494483973941594766

`A057077(A004736(n+1))*A130595(n)`
-/

namespace A117440.P14494483973941594766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A004736 (n + 1)).toNat * A130595 n

end

end A117440.P14494483973941594766

namespace A117440

/-- `A057077(A004736(n+1))*A130595(n)` -/
def P14494483973941594766.Spec : Prop :=
  ∀ n, P14494483973941594766.a n = A117440 n

end A117440

/-! ## A117440.P4402427793376554918

`A057077(A025581(n)+1)*A130595(n)`
-/

namespace A117440.P4402427793376554918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A025581 n + 1).toNat * A130595 n

end

end A117440.P4402427793376554918

namespace A117440

/-- `A057077(A025581(n)+1)*A130595(n)` -/
def P4402427793376554918.Spec : Prop :=
  ∀ n, P4402427793376554918.a n = A117440 n

end A117440

/-! ## A117440.P10096680933869292914

`A117568(n)^A117568(n)*A007318(n)`
-/

namespace A117440.P10096680933869292914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117568 n : ℚ) ^ (A117568 n : ℤ) * (A007318 n : ℚ)

end

end A117440.P10096680933869292914

namespace A117440

/-- `A117568(n)^A117568(n)*A007318(n)` -/
def P10096680933869292914.Spec : Prop :=
  ∀ n, P10096680933869292914.a n = (A117440 n : ℚ)

end A117440

/-! ## A117440.P6206389726735196420

`ceil(A134059(n)/3)*A057077(A025581(n))`
-/

namespace A117440.P6206389726735196420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A057077 (A025581 n).toNat

end

end A117440.P6206389726735196420

namespace A117440

/-- `ceil(A134059(n)/3)*A057077(A025581(n))` -/
def P6206389726735196420.Spec : Prop :=
  ∀ n, P6206389726735196420.a n = A117440 n

end A117440

/-! ## A117440.P14038104810343277475

`A007318(n)*A057077(A004736(n+1)-1)`
-/

namespace A117440.P14038104810343277475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057077 (A004736 (n + 1) - 1).toNat

end

end A117440.P14038104810343277475

namespace A117440

/-- `A007318(n)*A057077(A004736(n+1)-1)` -/
def P14038104810343277475.Spec : Prop :=
  ∀ n, P14038104810343277475.a n = A117440 n

end A117440

/-! ## A117440.P15226723427787343534

`A134059(A028310(n))/3*A057077(A025581(n))`
-/

namespace A117440.P15226723427787343534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A057077 (A025581 n).toNat : ℚ)

end

end A117440.P15226723427787343534

namespace A117440

/-- `A134059(A028310(n))/3*A057077(A025581(n))` -/
def P15226723427787343534.Spec : Prop :=
  ∀ n, P15226723427787343534.a n = (A117440 n : ℚ)

end A117440

/-! ## A117440.P1985422994461219489

`(A285118(n)+A285116(n))*A057077(A025581(n))`
-/

namespace A117440.P1985422994461219489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A057077 (A025581 n).toNat

end

end A117440.P1985422994461219489

namespace A117440

/-- `(A285118(n)+A285116(n))*A057077(A025581(n))` -/
def P1985422994461219489.Spec : Prop :=
  ∀ n, P1985422994461219489.a n = A117440 n

end A117440

/-! ## A117440.P911388542327454434

`(A028276(n)-A028263(n))*A057077(A025581(n))`
-/

namespace A117440.P911388542327454434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028276 n - A028263 n) * A057077 (A025581 n).toNat

end

end A117440.P911388542327454434

namespace A117440

/-- `(A028276(n)-A028263(n))*A057077(A025581(n))` -/
def P911388542327454434.Spec : Prop :=
  ∀ n, P911388542327454434.a n = A117440 n

end A117440

/-! ## A117440.P4900841394650323467

`A057077(A025581(n))/A176346(n)*A176348(n)`
-/

namespace A117440.P4900841394650323467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057077 (A025581 n).toNat : ℚ) / (A176346 n : ℚ) * (A176348 n : ℚ)

end

end A117440.P4900841394650323467

namespace A117440

/-- `A057077(A025581(n))/A176346(n)*A176348(n)` -/
def P4900841394650323467.Spec : Prop :=
  ∀ n, P4900841394650323467.a n = (A117440 n : ℚ)

end A117440

/-! ## A117440.P16528483489013118808

`ceil(A134060(n)/3)*A057077(A025581(n))`
-/

namespace A117440.P16528483489013118808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A057077 (A025581 n).toNat

end

end A117440.P16528483489013118808

namespace A117440

/-- `ceil(A134060(n)/3)*A057077(A025581(n))` -/
def P16528483489013118808.Spec : Prop :=
  ∀ n, P16528483489013118808.a n = A117440 n

end A117440

/-! ## A117440.P2180050956102210233

`A007318(n)*A046854(n)/A267482(n)`
-/

namespace A117440.P2180050956102210233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n * A046854 n : ℚ) / (A267482 n : ℚ)

end

end A117440.P2180050956102210233

namespace A117440

/-- `A007318(n)*A046854(n)/A267482(n)` -/
def P2180050956102210233.Spec : Prop :=
  ∀ n, P2180050956102210233.a n = (A117440 n : ℚ)

end A117440

/-!
# A117441: Periodic with repeating part {1,1,0,1,-1,0,-1,-1,0,-1,1,0}.

The programs for A117441, the canonical program `A117441.P8207262473741365621` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117441 has offset 0).

The definition of A117441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117441.P8207262473741365621

`ogf((1+x-x^2)/(1-x^2+x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117441

/-- `ogf((1+x-x^2)/(1-x^2+x^4))` -/
def P8207262473741365621.Spec : Prop :=
  ∀ n, P8207262473741365621.a n = A117441 n

theorem P8207262473741365621.correct : P8207262473741365621.Spec := by
  intro n
  simp only [A117441]

end A117441

/-!
# A117442: Number triangle read by rows, related to exp(x)/(cos(x) + sin(x)).

The programs for A117442, there is no canonical definition to state claims against.
-/

/-! ## A117442.P17376414037690394128

`A001586(A025581(n))*A130595(n)`
-/

namespace A117442.P17376414037690394128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 (A025581 n).toNat * A130595 n

end

end A117442.P17376414037690394128

/-! ## A117442.P1100182470294005308

`A108086(n)*A188458(A025581(n))`
-/

namespace A117442.P1100182470294005308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A188458 (A025581 n).toNat

end

end A117442.P1100182470294005308

/-! ## A117442.P1955742502023085011

`A117440(n)*A212435(A025581(n))`
-/

namespace A117442.P1955742502023085011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n * A212435 (A025581 n).toNat

end

end A117442.P1955742502023085011

/-! ## A117442.P16834531259499912858

`A097807(n)*A212435(A025581(n))*A108086(n)`
-/

namespace A117442.P16834531259499912858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A212435 (A025581 n).toNat * A108086 n

end

end A117442.P16834531259499912858

/-! ## A117442.P1724803735686862888

`A130595(n)*A335335(A055461(n+1))`
-/

namespace A117442.P1724803735686862888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A335335 (A055461 (n + 1)).toNat

end

end A117442.P1724803735686862888

/-!
# A117443: Expansion of e.g.f.: exp(x)/(cos(x) + sin(x)).

The programs for A117443, there is no canonical definition to state claims against.
-/

/-! ## A117443.P9047481620689076275

`A124754(A131262(n))*A132785(n+1)`
-/

namespace A117443.P9047481620689076275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A131262 n).toNat * A132785 (n + 1)

end

end A117443.P9047481620689076275

/-! ## A117443.P8566261333557977381

`A368109(A376728(3*n+4))-A117336(n)`
-/

namespace A117443.P8566261333557977381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368109 (A376728 (3 * n + 4)).toNat - A117336 n

end

end A117443.P8566261333557977381

/-!
# A117444: Period 5: Repeat [0, 1, 2, -2, -1].

The programs for A117444, the canonical program `A117444.P10582039333759165286` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117444 has offset 0).

The definition of A117444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117444.P10582039333759165286

`(n+2)%5-2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117444

/-- `(n+2)%5-2` -/
def P10582039333759165286.Spec : Prop :=
  ∀ n, P10582039333759165286.a n = A117444 n

theorem P10582039333759165286.correct : P10582039333759165286.Spec := by
  intro n
  simp only [A117444]

end A117444

/-!
# A117445: Periodic {0,-1,1,4,-1,4,-4,-4,1,1,-4,-4,4,-1,4,1,-1} (period 17).

The programs for A117445, the canonical program `A117445.P1776074973509383475` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117445 has offset 0).

The definition of A117445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117445.P1776074973509383475

`5-(n²²+5)%17`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117445

/-- `5-(n²²+5)%17` -/
def P1776074973509383475.Spec : Prop :=
  ∀ n, P1776074973509383475.a n = A117445 n

theorem P1776074973509383475.correct : P1776074973509383475.Spec := by
  intro n
  simp only [A117445]

end A117445

/-!
# A117446: Triangle T(n, k) = binomial(L(k/3), n-k) where L(j/p) is the Legendre symbol of j and p, read by rows.

The programs for A117446, there is no canonical definition to state claims against.
-/

/-! ## A117446.P18200143166491479963

`(A321964(n)+1)%3-1`
-/

namespace A117446.P18200143166491479963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321964 n + 1) 3 - 1

end

end A117446.P18200143166491479963

/-! ## A117446.P5339885658209837277

`A102283(∑{digits}[A321964(n), #])`
-/

namespace A117446.P5339885658209837277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A117446.P5339885658209837277

/-! ## A117446.P5065496228454601754

`A102283(A321964(n)%A070279(n+1))`
-/

namespace A117446.P5065496228454601754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (Int.tmod (A321964 n) (A070279 (n + 1))).toNat

end

end A117446.P5065496228454601754

/-! ## A117446.P16751977123875205681

`A049347((A321964(n)+2)%A214771(n+1))`
-/

namespace A117446.P16751977123875205681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (Int.tmod (A321964 n + 2) (A214771 (n + 1))).toNat

end

end A117446.P16751977123875205681

/-! ## A117446.P12705517135118115605

`A102283(A321964(n))`
-/

namespace A117446.P12705517135118115605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A321964 n).toNat

end

end A117446.P12705517135118115605

/-!
# A117447: Expansion of g.f. (1 + 2*x + 3*x^2 + x^3)/(1 + x - x^3 - x^4).

The programs for A117447, the canonical program `A117447.P12331368162387993213` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117447 has offset 0).

The definition of A117447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+x^3)/(1+x-x^3-x^4))` (program `A117447.P12331368162387993213`, by `A117447.P12331368162387993213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117447.P12331368162387993213

`ogf((1+2x+3x^2+x^3)/(1+x-x^3-x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117447

/-- `ogf((1+2x+3x^2+x^3)/(1+x-x^3-x^4))` -/
def P12331368162387993213.Spec : Prop :=
  ∀ n, P12331368162387993213.a n = A117447 n

theorem P12331368162387993213.correct : P12331368162387993213.Spec := by
  intro n
  simp only [A117447]

end A117447

/-!
# A117448: Diagonal sums of number triangle A117446.

The programs for A117448, the canonical program `A117448.P5594489001857009874` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117448 has offset 0).

The definition of A117448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117448.P5594489001857009874

`floor(sqrt((n+1)%6))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117448

/-- `floor(sqrt((n+1)%6))-a(n-1)` -/
def P5594489001857009874.Spec : Prop :=
  ∀ n, P5594489001857009874.a n = A117448 n

theorem P5594489001857009874.correct : P5594489001857009874.Spec := by
  intro n
  simp only [A117448]

end A117448

/-! ## A117448.P9086932689947827242

`Δ[A090168(n)-A154958(n)]`
-/

namespace A117448.P9086932689947827242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 n - A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117448.P9086932689947827242

namespace A117448

/-- `Δ[A090168(n)-A154958(n)]` -/
def P9086932689947827242.Spec : Prop :=
  ∀ n, P9086932689947827242.a n = A117448 n

end A117448

/-! ## A117448.P16568800202738343499

`A103221(n)-A008612(A266072(n))`
-/

namespace A117448.P16568800202738343499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A008612 (A266072 n).toNat

end

end A117448.P16568800202738343499

namespace A117448

/-- `A103221(n)-A008612(A266072(n))` -/
def P16568800202738343499.Spec : Prop :=
  ∀ n, P16568800202738343499.a n = A117448 n

end A117448

/-! ## A117448.P1924612084020649882

`A103221(n)-A008612(A266256(n))`
-/

namespace A117448.P1924612084020649882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A008612 (A266256 n).toNat

end

end A117448.P1924612084020649882

namespace A117448

/-- `A103221(n)-A008612(A266256(n))` -/
def P1924612084020649882.Spec : Prop :=
  ∀ n, P1924612084020649882.a n = A117448 n

end A117448

/-! ## A117448.P13132438777240072076

`A103221(n)-A008612(A266662(n))`
-/

namespace A117448.P13132438777240072076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A008612 (A266662 n).toNat

end

end A117448.P13132438777240072076

namespace A117448

/-- `A103221(n)-A008612(A266662(n))` -/
def P13132438777240072076.Spec : Prop :=
  ∀ n, P13132438777240072076.a n = A117448 n

end A117448

/-! ## A117448.P3966903419748744749

`A065033(A047387(n+1))-A265228(n)`
-/

namespace A117448.P3966903419748744749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A047387 (n + 1)).toNat - A265228 n

end

end A117448.P3966903419748744749

namespace A117448

/-- `A065033(A047387(n+1))-A265228(n)` -/
def P3966903419748744749.Spec : Prop :=
  ∀ n, P3966903419748744749.a n = A117448 n

end A117448

/-! ## A117448.P8501219696686414086

`A080513(A008611(n))-A008611(A133265(n))`
-/

namespace A117448.P8501219696686414086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A008611 n).toNat - A008611 (A133265 n).toNat

end

end A117448.P8501219696686414086

namespace A117448

/-- `A080513(A008611(n))-A008611(A133265(n))` -/
def P8501219696686414086.Spec : Prop :=
  ∀ n, P8501219696686414086.a n = A117448 n

end A117448

/-! ## A117448.P11510859880261971917

`A000035(A007980(n))+A008615(n)*A033999(n)`
-/

namespace A117448.P11510859880261971917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007980 n).toNat + A008615 n * A033999 n

end

end A117448.P11510859880261971917

namespace A117448

/-- `A000035(A007980(n))+A008615(n)*A033999(n)` -/
def P11510859880261971917.Spec : Prop :=
  ∀ n, P11510859880261971917.a n = A117448 n

end A117448

/-!
# A117449: Inverse of a number triangle related to L(n/3), where L(j/p) is the Legendre symbol of j and p.

The programs for A117449, there is no canonical definition to state claims against.
-/

/-! ## A117449.P17791026924438922136

`A011646(A110510(n)+2)`
-/

namespace A117449.P17791026924438922136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A110510 n + 2).toNat

end

end A117449.P17791026924438922136

/-! ## A117449.P12745434796174678261

`A128834(62*A110510(n))`
-/

namespace A117449.P12745434796174678261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (62 * A110510 n).toNat

end

end A117449.P12745434796174678261

/-! ## A117449.P1041667091678409921

`∑{d}[A268436(n), A287325(#)]`
-/

namespace A117449.P1041667091678409921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A287325 d

end

end A117449.P1041667091678409921

/-! ## A117449.P11593867311978051698

`A008683(A130389(A248978(n)))`
-/

namespace A117449.P11593867311978051698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A130389 (A248978 n).toNat).toNat

end

end A117449.P11593867311978051698

/-! ## A117449.P15806182751932768003

`A080891(lcm(A097710(n), A113092(n)))`
-/

namespace A117449.P15806182751932768003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (Int.lcm (A097710 n) (A113092 n))

end

end A117449.P15806182751932768003

/-!
# A117450: Expansion of (1-x+x^2+x^5)/((1-x)^2*(1-x^5)).

The programs for A117450, the canonical program `A117450.P9816735927536814409` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117450 has offset 0).

The definition of A117450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+x^5)/(1-2x+x^2-x^5+2x^6-x^7))` (program `A117450.P9816735927536814409`, by `A117450.P9816735927536814409.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117450.P9816735927536814409

`ogf((1-x+x^2+x^5)/(1-2x+x^2-x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117450

/-- `ogf((1-x+x^2+x^5)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P9816735927536814409.Spec : Prop :=
  ∀ n, P9816735927536814409.a n = A117450 n

theorem P9816735927536814409.correct : P9816735927536814409.Spec := by
  intro n
  simp only [A117450]

end A117450

/-! ## A117450.P10532918173105638022

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=7, a(6)=9`
-/

namespace A117450.P10532918173105638022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 7, 9] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A117450.P10532918173105638022

namespace A117450

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P10532918173105638022.Spec : Prop :=
  ∀ n, P10532918173105638022.a n = A117450 n

end A117450

/-! ## A117450.P4079523967834871185

`∑[floor((gcd(5, n)+2*n)/5)]`
-/

namespace A117450.P4079523967834871185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 5 n + 2 * n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117450.P4079523967834871185

namespace A117450

/-- `∑[floor((gcd(5, n)+2*n)/5)]` -/
def P4079523967834871185.Spec : Prop :=
  ∀ n, P4079523967834871185.a n = A117450 n

end A117450

/-! ## A117450.P12759697363038494022

`∑[a(n-5)+2]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A117450.P12759697363038494022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 1] fun n f1 =>
  f1 (n - 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117450.P12759697363038494022

namespace A117450

/-- `∑[a(n-5)+2]` -/
def P12759697363038494022.Spec : Prop :=
  ∀ n, (P12759697363038494022.a n : ℤ) = A117450 n

end A117450

/-! ## A117450.P11811284217253082957

`∑[char[5*n]+floor(Δ[n²]/5)]`
-/

namespace A117450.P11811284217253082957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ⌊((f3 (n + 1) : ℤ) - (f3 n : ℤ) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117450.P11811284217253082957

namespace A117450

/-- `∑[char[5*n]+floor(Δ[n²]/5)]` -/
def P11811284217253082957.Spec : Prop :=
  ∀ n, P11811284217253082957.a n = A117450 n

end A117450

/-! ## A117450.P4323708173027519746

`n-4+a(n-5)+n` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A117450.P4323708173027519746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n a =>
  (n : ℤ) - 4 + (a (n - 5) + (n : ℤ))

end

end A117450.P4323708173027519746

namespace A117450

/-- `n-4+a(n-5)+n` -/
def P4323708173027519746.Spec : Prop :=
  ∀ n, P4323708173027519746.a n = A117450 n

end A117450

/-! ## A117450.P8891888982913477403

`A249020(n)+A130520(n)`
-/

namespace A117450.P8891888982913477403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 n + A130520 n

end

end A117450.P8891888982913477403

namespace A117450

/-- `A249020(n)+A130520(n)` -/
def P8891888982913477403.Spec : Prop :=
  ∀ n, P8891888982913477403.a n = A117450 n

end A117450

/-! ## A117450.P12416130084957757031

`A002266(n)+A008738(n)+1`
-/

namespace A117450.P12416130084957757031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + (A008738 n + 1)

end

end A117450.P12416130084957757031

namespace A117450

/-- `A002266(n)+A008738(n)+1` -/
def P12416130084957757031.Spec : Prop :=
  ∀ n, P12416130084957757031.a n = A117450 n

end A117450

/-! ## A117450.P16146006377219029880

`A011858(n)+A288156(n)+1`
-/

namespace A117450.P16146006377219029880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n + (A288156 n + 1)

end

end A117450.P16146006377219029880

namespace A117450

/-- `A011858(n)+A288156(n)+1` -/
def P16146006377219029880.Spec : Prop :=
  ∀ n, P16146006377219029880.a n = A117450 n

end A117450

/-! ## A117450.P6532294378879137499

`A249013(n+1)+A130520(n)+1`
-/

namespace A117450.P6532294378879137499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249013 (n + 1) + (A130520 n + 1)

end

end A117450.P6532294378879137499

namespace A117450

/-- `A249013(n+1)+A130520(n)+1` -/
def P6532294378879137499.Spec : Prop :=
  ∀ n, P6532294378879137499.a n = A117450 n

end A117450

/-! ## A117450.P9054607981110440457

`A183873(n+1)-A047263(n+1)`
-/

namespace A117450.P9054607981110440457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183873 (n + 1) - A047263 (n + 1)

end

end A117450.P9054607981110440457

namespace A117450

/-- `A183873(n+1)-A047263(n+1)` -/
def P9054607981110440457.Spec : Prop :=
  ∀ n, P9054607981110440457.a n = A117450 n

end A117450

/-! ## A117450.P16007855372957745915

`A398199(n+1)-A398054(n+1)`
-/

namespace A117450.P16007855372957745915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398199 (n + 1) - A398054 (n + 1)

end

end A117450.P16007855372957745915

namespace A117450

/-- `A398199(n+1)-A398054(n+1)` -/
def P16007855372957745915.Spec : Prop :=
  ∀ n, P16007855372957745915.a n = A117450 n

end A117450

/-! ## A117450.P256496671575394736

`A008738(n+1)+A249020(n)-A249013(n+2)`
-/

namespace A117450.P256496671575394736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (n + 1) + (A249020 n - A249013 (n + 2))

end

end A117450.P256496671575394736

namespace A117450

/-- `A008738(n+1)+A249020(n)-A249013(n+2)` -/
def P256496671575394736.Spec : Prop :=
  ∀ n, P256496671575394736.a n = A117450 n

end A117450

/-! ## A117450.P15592713409194376638

`A057354(n+3)+∑[A057354(n)]`
-/

namespace A117450.P15592713409194376638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117450.P15592713409194376638

namespace A117450

/-- `A057354(n+3)+∑[A057354(n)]` -/
def P15592713409194376638.Spec : Prop :=
  ∀ n, P15592713409194376638.a n = A117450 n

end A117450

/-! ## A117450.P2704769573367036504

`∑[2*floor(n/5)+1]-A002266(n+4)`
-/

namespace A117450.P2704769573367036504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 5⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002266 (n + 4)

end

end A117450.P2704769573367036504

namespace A117450

/-- `∑[2*floor(n/5)+1]-A002266(n+4)` -/
def P2704769573367036504.Spec : Prop :=
  ∀ n, P2704769573367036504.a n = A117450 n

end A117450

/-! ## A117450.P10827508139163308987

`A002266(2*n+1)+A000115(2*n)-n`
-/

namespace A117450.P10827508139163308987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n + 1) + (A000115 (2 * n) - (n : ℤ))

end

end A117450.P10827508139163308987

namespace A117450

/-- `A002266(2*n+1)+A000115(2*n)-n` -/
def P10827508139163308987.Spec : Prop :=
  ∀ n, P10827508139163308987.a n = A117450 n

end A117450

/-! ## A117450.P8199855014061718577

`A000115(2*n+1)+A008616(2*n)-(n+1)`
-/

namespace A117450.P8199855014061718577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (2 * n + 1) + (A008616 (2 * n) - (n + 1 : ℤ))

end

end A117450.P8199855014061718577

namespace A117450

/-- `A000115(2*n+1)+A008616(2*n)-(n+1)` -/
def P8199855014061718577.Spec : Prop :=
  ∀ n, P8199855014061718577.a n = A117450 n

end A117450

/-!
# A117451: Expansion of (1-x+x^2+x^5)/((1-x)*(1-x^5)).

The programs for A117451, the canonical program `A117451.P332678875958734587` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117451 has offset 0).

The definition of A117451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+x^5)/(1-x-x^5+x^6))` (program `A117451.P332678875958734587`, by `A117451.P332678875958734587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117451.P332678875958734587

`ogf((1-x+x^2+x^5)/(1-x-x^5+x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117451

/-- `ogf((1-x+x^2+x^5)/(1-x-x^5+x^6))` -/
def P332678875958734587.Spec : Prop :=
  ∀ n, P332678875958734587.a n = A117451 n

theorem P332678875958734587.correct : P332678875958734587.Spec := by
  intro n
  simp only [A117451]

end A117451

/-! ## A117451.P7807277685968542169

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=3`
-/

namespace A117451.P7807277685968542169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 1, 3] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A117451.P7807277685968542169

namespace A117451

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P7807277685968542169.Spec : Prop :=
  ∀ n, P7807277685968542169.a n = A117451 n

end A117451

/-! ## A117451.P1696203956596498023

`floor((gcd(5, n)+2*n)/5)`
-/

namespace A117451.P1696203956596498023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 5 n + 2 * n : ℚ) / 5⌋

end

end A117451.P1696203956596498023

namespace A117451

/-- `floor((gcd(5, n)+2*n)/5)` -/
def P1696203956596498023.Spec : Prop :=
  ∀ n, P1696203956596498023.a n = A117451 n

end A117451

/-! ## A117451.P16695835664848181574

`a(n-5)+2` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A117451.P16695835664848181574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 1] fun n a =>
  a (n - 5) + 2

end

end A117451.P16695835664848181574

namespace A117451

/-- `a(n-5)+2` -/
def P16695835664848181574.Spec : Prop :=
  ∀ n, (P16695835664848181574.a n : ℤ) = A117451 n

end A117451

/-! ## A117451.P7668921000816661389

`char[5*n]+floor(Δ[n²]/5)`
-/

namespace A117451.P7668921000816661389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 5⌋

end

end A117451.P7668921000816661389

namespace A117451

/-- `char[5*n]+floor(Δ[n²]/5)` -/
def P7668921000816661389.Spec : Prop :=
  ∀ n, P7668921000816661389.a n = A117451 n

end A117451

/-! ## A117451.P17840696349629250097

`or(floor(Δ[n²]/5), char[5*n])`
-/

namespace A117451.P17840696349629250097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 5⌋ ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A117451.P17840696349629250097

namespace A117451

/-- `or(floor(Δ[n²]/5), char[5*n])` -/
def P17840696349629250097.Spec : Prop :=
  ∀ n, P17840696349629250097.a n = A117451 n

end A117451

/-! ## A117451.P5185371362612436805

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A117451.P5185371362612436805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 0, 0, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117451.P5185371362612436805

namespace A117451

/-- `∑[floor(a(n-5))]` -/
def P5185371362612436805.Spec : Prop :=
  ∀ n, P5185371362612436805.a n = A117451 n

end A117451

/-! ## A117451.P9034724878051946562

`∑[A117452(n)]`
-/

namespace A117451.P9034724878051946562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117451.P9034724878051946562

namespace A117451

/-- `∑[A117452(n)]` -/
def P9034724878051946562.Spec : Prop :=
  ∀ n, P9034724878051946562.a n = A117451 n

end A117451

/-! ## A117451.P1574315350468310020

`xor(A057354(n), A198517(n))`
-/

namespace A117451.P1574315350468310020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057354 n) (A198517 n)

end

end A117451.P1574315350468310020

namespace A117451

/-- `xor(A057354(n), A198517(n))` -/
def P1574315350468310020.Spec : Prop :=
  ∀ n, P1574315350468310020.a n = A117451 n

end A117451

/-! ## A117451.P11252335251822680144

`xor(A079998(n), A288156(n))`
-/

namespace A117451.P11252335251822680144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079998 n) (A288156 n)

end

end A117451.P11252335251822680144

namespace A117451

/-- `xor(A079998(n), A288156(n))` -/
def P11252335251822680144.Spec : Prop :=
  ∀ n, P11252335251822680144.a n = A117451 n

end A117451

/-! ## A117451.P16867888413724655322

`A288156(2*A198517(n)+n)`
-/

namespace A117451.P16867888413724655322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (2 * A198517 n + (n : ℤ)).toNat

end

end A117451.P16867888413724655322

namespace A117451

/-- `A288156(2*A198517(n)+n)` -/
def P16867888413724655322.Spec : Prop :=
  ∀ n, P16867888413724655322.a n = A117451 n

end A117451

/-! ## A117451.P13570463114563244529

`∑[A164116(n)+Δ[A057354(n)]]`
-/

namespace A117451.P13570463114563244529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164116 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117451.P13570463114563244529

namespace A117451

/-- `∑[A164116(n)+Δ[A057354(n)]]` -/
def P13570463114563244529.Spec : Prop :=
  ∀ n, P13570463114563244529.a n = A117451 n

end A117451

/-! ## A117451.P3619984245356394050

`A288156(n+1-A156174(n+1))`
-/

namespace A117451.P3619984245356394050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 ((n + 1 : ℤ) - A156174 (n + 1)).toNat

end

end A117451.P3619984245356394050

namespace A117451

/-- `A288156(n+1-A156174(n+1))` -/
def P3619984245356394050.Spec : Prop :=
  ∀ n, P3619984245356394050.a n = A117451 n

end A117451

/-! ## A117451.P5008731393118622424

`A051274(A047256(n+1))`
-/

namespace A117451.P5008731393118622424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A047256 (n + 1)).toNat

end

end A117451.P5008731393118622424

namespace A117451

/-- `A051274(A047256(n+1))` -/
def P5008731393118622424.Spec : Prop :=
  ∀ n, P5008731393118622424.a n = A117451 n

end A117451

/-! ## A117451.P4617046017123693764

`A008624(A047607(n+1))`
-/

namespace A117451.P4617046017123693764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A047607 (n + 1)).toNat

end

end A117451.P4617046017123693764

namespace A117451

/-- `A008624(A047607(n+1))` -/
def P4617046017123693764.Spec : Prop :=
  ∀ n, P4617046017123693764.a n = A117451 n

end A117451

/-! ## A117451.P2167672858735997179

`A026922(A047502(n+1))`
-/

namespace A117451.P2167672858735997179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A047502 (n + 1)).toNat

end

end A117451.P2167672858735997179

namespace A117451

/-- `A026922(A047502(n+1))` -/
def P2167672858735997179.Spec : Prop :=
  ∀ n, P2167672858735997179.a n = A117451 n

end A117451

/-! ## A117451.P5684534805956869167

`A059169(A047426(n+2))`
-/

namespace A117451.P5684534805956869167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A047426 (n + 2)).toNat

end

end A117451.P5684534805956869167

namespace A117451

/-- `A059169(A047426(n+2))` -/
def P5684534805956869167.Spec : Prop :=
  ∀ n, P5684534805956869167.a n = A117451 n

end A117451

/-! ## A117451.P10093503423969238343

`A194519(A118667(n+1))`
-/

namespace A117451.P10093503423969238343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194519 (A118667 (n + 1)).toNat

end

end A117451.P10093503423969238343

namespace A117451

/-- `A194519(A118667(n+1))` -/
def P10093503423969238343.Spec : Prop :=
  ∀ n, P10093503423969238343.a n = A117451 n

end A117451

/-!
# A117452: Periodic {2, -1, 1, 0, 0} - 0^n.

The programs for A117452, the canonical program `A117452.P8693817658150513441` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117452 has offset 0).

The definition of A117452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117452.P8693817658150513441

`ogf((1-x+x^2+x^5)/(1-x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117452

/-- `ogf((1-x+x^2+x^5)/(1-x^5))` -/
def P8693817658150513441.Spec : Prop :=
  ∀ n, P8693817658150513441.a n = A117452 n

theorem P8693817658150513441.correct : P8693817658150513441.Spec := by
  intro n
  simp only [A117452]

end A117452

/-!
# A117453: Perfect powers in more than one way.

The programs for A117453, there is no canonical definition to state claims against.
-/

/-! ## A117453.P10481898933422740402

`record[A025478(n+1)^A191558(A025479(n+1))]`
-/

namespace A117453.P10481898933422740402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) : ℚ) ^ (A191558 (A025479 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117453.P10481898933422740402

/-! ## A117453.P14235738962144324453

`record[gcd(A072103(n+2), A072103(n+3))]`
-/

namespace A117453.P14235738962144324453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072103 (n + 2)) (A072103 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117453.P14235738962144324453

/-! ## A117453.P10472201897350532516

`record[A203025(A322449(n+1))]`
-/

namespace A117453.P10472201897350532516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203025 (A322449 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117453.P10472201897350532516

/-! ## A117453.P3128119155325506241

`filter[A322449(n+1), A384667(#)]`
-/

namespace A117453.P3128119155325506241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A117453.P3128119155325506241

/-! ## A117453.P5045071884711651487

`A322449(∑[A030129(n+1)!])`
-/

namespace A117453.P5045071884711651487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A030129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117453.P5045071884711651487

/-!
# A117454: Triangle read by rows: T(n,k) is the number of partitions of n into distinct parts such that the difference between the largest and smallest parts is k (n>=1; 0<=k<=n-2 for n>=2).

The programs for A117454, there is no canonical definition to state claims against.
-/

/-! ## A117454.P7763080202870907900

`A196564(and(A156953(n), A243451(n+1)))`
-/

namespace A117454.P7763080202870907900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (Int.land (A156953 n) (A243451 (n + 1))).toNat

end

end A117454.P7763080202870907900

/-! ## A117454.P16569580205172174952

`A122855(15*A293961(n))`
-/

namespace A117454.P16569580205172174952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (15 * A293961 n).toNat

end

end A117454.P16569580205172174952

/-! ## A117454.P13343884018078030014

`A024361(A111528(n)²+2)`
-/

namespace A117454.P13343884018078030014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (A111528 n ^ 2 + 2).toNat

end

end A117454.P13343884018078030014

/-! ## A117454.P9184437700969877225

`A024361(or(2, A111528(n)²))`
-/

namespace A117454.P9184437700969877225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (Int.lor 2 (A111528 n ^ 2)).toNat

end

end A117454.P9184437700969877225

/-! ## A117454.P7189760185621930557

`A024361(xor(2, A111528(n)²))`
-/

namespace A117454.P7189760185621930557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (Int.xor 2 (A111528 n ^ 2)).toNat

end

end A117454.P7189760185621930557

/-!
# A117455: Sum of the differences between the largest part and smallest part over all partitions of n into distinct parts.

The programs for A117455, there is no canonical definition to state claims against.
-/

/-! ## A117455.P2291809981793416708

`A005895(n+1)-A092265(n+1)`
-/

namespace A117455.P2291809981793416708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005895 (n + 1) - A092265 (n + 1)

end

end A117455.P2291809981793416708

/-! ## A117455.P4692941244267901584

`A005895(n+1)-(2*A034296(n+1)-A000005(n+1))`
-/

namespace A117455.P4692941244267901584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005895 (n + 1) - (2 * A034296 (n + 1) - A000005 (n + 1))

end

end A117455.P4692941244267901584

/-! ## A117455.P777017204528024374

`(A006128(n)+A005895(n+1))%(A092265(n+1)+A006128(n))`
-/

namespace A117455.P777017204528024374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006128 n + A005895 (n + 1)) (A092265 (n + 1) + A006128 n)

end

end A117455.P777017204528024374

/-! ## A117455.P4291723712039218533

`(A336902(n)+A005895(n+1))%(A336902(n)+A092265(n+1))`
-/

namespace A117455.P4291723712039218533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336902 n + A005895 (n + 1)) (A336902 n + A092265 (n + 1))

end

end A117455.P4291723712039218533

/-! ## A117455.P907892491735777611

`A005895(n+1)-(A237665(n+1)+A034296(n+1))`
-/

namespace A117455.P907892491735777611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005895 (n + 1) - (A237665 (n + 1) + A034296 (n + 1))

end

end A117455.P907892491735777611

/-!
# A117456: Triangle read by rows: T(n,k) is the number of partitions of n in which every integer from the smallest part to the largest part occurs and the number of parts is k (1<=k<=n).

The programs for A117456, there is no canonical definition to state claims against.
-/

/-! ## A117456.P15916141773477269753

`A336137(A339788(n+1)%A271473(n+4))`
-/

namespace A117456.P15916141773477269753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 (Int.tmod (A339788 (n + 1)) (A271473 (n + 4))).toNat

end

end A117456.P15916141773477269753

/-! ## A117456.P9049417886424345246

`A336137(A339788(n+1))`
-/

namespace A117456.P9049417886424345246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 (A339788 (n + 1)).toNat

end

end A117456.P9049417886424345246

/-! ## A117456.P5520760049965517417

`A169695(C(A360763(n), A004736(2*n+1)))`
-/

namespace A117456.P5520760049965517417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (Nat.choose (A360763 n).toNat (A004736 (2 * n + 1)).toNat)

end

end A117456.P5520760049965517417

/-! ## A117456.P6511875308609301402

`gcd(2, A314924(A135302(n)))`
-/

namespace A117456.P6511875308609301402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A314924 (A135302 n).toNat)

end

end A117456.P6511875308609301402

/-! ## A117456.P12813682894596664104

`A095827(or(17, A108947(n)))`
-/

namespace A117456.P12813682894596664104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (Int.lor 17 (A108947 n)).toNat

end

end A117456.P12813682894596664104

/-!
# A117457: Number of parts in all partitions of n in which every integer from the smallest part to the largest part occurs as a part.

The programs for A117457, there is no canonical definition to state claims against.
-/

/-! ## A117457.P413418437715852858

`A265071(n)+A086014(A285362(3*(n+1)))`
-/

namespace A117457.P413418437715852858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265071 n + A086014 (A285362 (3 * (n + 1))).toNat

end

end A117457.P413418437715852858

/-!
# A117458: Primes and their indices such that when their respective SOD's are both prime, the SOD of the index is the nextprime of the prime SOD.

The programs for A117458, there is no canonical definition to state claims against.
-/

/-! ## A117458.P13476798084373728967

`A000040(A117459(n))`
-/

namespace A117458.P13476798084373728967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A117459 n).toNat

end

end A117458.P13476798084373728967

/-! ## A117458.P5270120356746226434

`A008578(A117459(n)+1)`
-/

namespace A117458.P5270120356746226434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A117459 n + 1).toNat

end

end A117458.P5270120356746226434

/-! ## A117458.P8543929674414239127

`A182986(A117459(n)+1)`
-/

namespace A117458.P8543929674414239127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A117459 n + 1).toNat

end

end A117458.P8543929674414239127

/-! ## A117458.P701106588694078481

`A045319(A117459(n)-1)`
-/

namespace A117458.P701106588694078481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A117459 n - 1).toNat

end

end A117458.P701106588694078481

/-! ## A117458.P7919593416403886682

`A045344(A117459(n)-1)`
-/

namespace A117458.P7919593416403886682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A117459 n - 1).toNat

end

end A117458.P7919593416403886682

/-!
# A117459: Indices associated with primes in A117458.

The programs for A117459, there is no canonical definition to state claims against.
-/

/-! ## A117459.P6283406442193862359

`A000720(A117458(n+1))`
-/

namespace A117459.P6283406442193862359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A117458 (n + 1)).toNat

end

end A117459.P6283406442193862359

/-! ## A117459.P9563572057312479855

`A061395(2*A117458(n+1))`
-/

namespace A117459.P9563572057312479855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A117458 (n + 1)).toNat

end

end A117459.P9563572057312479855

/-!
# A117460: Primes prime(i) such that their sum-of-index-digits A007953(i) and their sum-of-digits A007605(i) are consecutive primes.

The programs for A117460, there is no canonical definition to state claims against.
-/

/-! ## A117460.P5068290585253362711

`A000040(A117461(n))`
-/

namespace A117460.P5068290585253362711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A117461 n).toNat

end

end A117460.P5068290585253362711

/-! ## A117460.P7462819176177044058

`A008578(A117461(n)+1)`
-/

namespace A117460.P7462819176177044058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A117461 n + 1).toNat

end

end A117460.P7462819176177044058

/-! ## A117460.P5500478194917574284

`A182986(A117461(n)+1)`
-/

namespace A117460.P5500478194917574284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A117461 n + 1).toNat

end

end A117460.P5500478194917574284

/-! ## A117460.P4341954492499617486

`A158611(A117461(n)+2)`
-/

namespace A117460.P4341954492499617486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A117461 n + 2).toNat

end

end A117460.P4341954492499617486

/-! ## A117460.P12020246706053358935

`A073846(2*A117461(n))`
-/

namespace A117460.P12020246706053358935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A117461 n).toNat

end

end A117460.P12020246706053358935

/-!
# A117461: Indices associated with primes in A117460. Both primes and their indices, after calculation of their respective digit sums, bear the relationship that both are prime and that sod(i) < sod(p) and sod(p) is the next prime after to sod(i), where sod is the sum of digits function.

The programs for A117461, there is no canonical definition to state claims against.
-/

/-! ## A117461.P6471480675540403597

`A000720(A117460(n+1))`
-/

namespace A117461.P6471480675540403597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A117460 (n + 1)).toNat

end

end A117461.P6471480675540403597

/-! ## A117461.P13338302443200396582

`A061395(2*A117460(n+1))`
-/

namespace A117461.P13338302443200396582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A117460 (n + 1)).toNat

end

end A117461.P13338302443200396582

/-!
# A117462: The number of doubling steps of SOD(n) to exceed or equal n.

The programs for A117462, there is no canonical definition to state claims against.
-/

/-! ## A117462.P4947511044840721987

`A070939(floor(n/A007953(n+1)))`
-/

namespace A117462.P4947511044840721987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ⌊(n : ℚ) / (A007953 (n + 1) : ℚ)⌋.toNat

end

end A117462.P4947511044840721987

/-! ## A117462.P6380708198425944005

`A120882(ceil(A008619(n)/A007953(n+1)))`
-/

namespace A117462.P6380708198425944005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120882 ⌈(A008619 n : ℚ) / (A007953 (n + 1) : ℚ)⌉.toNat

end

end A117462.P6380708198425944005

/-!
# A117464: Triangular numbers for which the product of the digits is a square.

The programs for A117464, there is no canonical definition to state claims against.
-/

/-! ## A117464.P10954336306227683993

`eq[A010052(A007954(n)), A059268(n)]`
-/

namespace A117464.P10954336306227683993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117464.P10954336306227683993

/-! ## A117464.P12155042181275833989

`eq[A002260(n+1), A010052(A007954(n))]`
-/

namespace A117464.P12155042181275833989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117464.P12155042181275833989

/-! ## A117464.P5831034661372292082

`eq[A068527(A007954(n)), A141434(n+1)]`
-/

namespace A117464.P5831034661372292082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117464.P5831034661372292082

/-! ## A117464.P9830924612800857840

`eq[A010052(A007954(n)), A156042(n+1)]`
-/

namespace A117464.P9830924612800857840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156042 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117464.P9830924612800857840

/-! ## A117464.P9289101908434331209

`eq[A008279(n), A010052(A007954(n))]`
-/

namespace A117464.P9289101908434331209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117464.P9289101908434331209

/-!
# A117465: Denominator of -16/((n+2)*n*(n-2)*(n-4)).

The programs for A117465, there is no canonical definition to state claims against.
-/

/-! ## A117465.P2924813847842781753

`C(∑[n+1], A294226(a(n-1)))` with `a(0)=9`
-/

namespace A117465.P2924813847842781753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A294226 (a (n - 1))).toNat

end

end A117465.P2924813847842781753

/-!
# A117466: Triangle read by rows: T(n,k) is the number of partitions of n in which every integer from the smallest part k to the largest part occurs (1<=k<=n).

The programs for A117466, there is no canonical definition to state claims against.
-/

/-! ## A117466.P13471586769305310105

`floor(ratio[A081604(A034801(n))])`
-/

namespace A117466.P13471586769305310105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A034801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A117466.P13471586769305310105

/-! ## A117466.P2076714471439226756

`floor(ratio[A106787(A176561(n))])`
-/

namespace A117466.P2076714471439226756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106787 (A176561 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A117466.P2076714471439226756

/-! ## A117466.P5876205250522276147

`floor(ratio[A130247(A203564(n+1))])`
-/

namespace A117466.P5876205250522276147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (A203564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A117466.P5876205250522276147

/-! ## A117466.P5453162388658532784

`floor(ratio[A146960(A206692(n+1))])`
-/

namespace A117466.P5453162388658532784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146960 (A206692 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A117466.P5453162388658532784

/-! ## A117466.P18060399062451791848

`A343638(A182931(n+1))`
-/

namespace A117466.P18060399062451791848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343638 (A182931 (n + 1)).toNat

end

end A117466.P18060399062451791848

/-!
# A117467: The smallest part summed over all partitions of n in which every integer from the smallest part to the largest part occurs.

The programs for A117467, there is no canonical definition to state claims against.
-/

/-! ## A117467.P4608124452974133363

`A117469(n+1)-A117471(n+1)`
-/

namespace A117467.P4608124452974133363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117469 (n + 1) - A117471 (n + 1)

end

end A117467.P4608124452974133363

/-! ## A117467.P1661102462449025072

`A117469(n+1)-(∑[A000009(n+1)]-A239958(n+1))`
-/

namespace A117467.P1661102462449025072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117469 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - A239958 (n + 1))

end

end A117467.P1661102462449025072

/-! ## A117467.P3587154768107214922

`∑[∑{e}[A079320(n+2)+A079319(n), #]]`
-/

namespace A117467.P3587154768107214922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079320 (n + 2) + A079319 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117467.P3587154768107214922

/-! ## A117467.P14767951484579342380

`A035106(n+1)+A001221(A047849(n))`
-/

namespace A117467.P14767951484579342380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1) + A001221 (A047849 n).toNat

end

end A117467.P14767951484579342380

/-! ## A117467.P1029903896161248285

`A319510(A000108(n))+A006995(n+2)`
-/

namespace A117467.P1029903896161248285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319510 (A000108 n).toNat + A006995 (n + 2)

end

end A117467.P1029903896161248285

/-!
# A117468: Triangle read by rows: T(n,k) is the number of partitions of n in which every integer from the smallest part to the largest part k occurs (1<=k<=n).

The programs for A117468, there is no canonical definition to state claims against.
-/

/-! ## A117468.P15355312764327788357

`A115722(8*A331567(n))`
-/

namespace A117468.P15355312764327788357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (8 * A331567 n).toNat

end

end A117468.P15355312764327788357

/-! ## A117468.P13807836616518569768

`A257089(A331567(n)+1)`
-/

namespace A117468.P13807836616518569768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (A331567 n + 1).toNat

end

end A117468.P13807836616518569768

/-! ## A117468.P5852809347811963055

`C(A091602(n+1), A367497(A357882(n)))`
-/

namespace A117468.P5852809347811963055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091602 (n + 1)).toNat (A367497 (A357882 n).toNat).toNat

end

end A117468.P5852809347811963055

/-! ## A117468.P999925919966916898

`and(A046854(n), A084380(A318391(n+1)))`
-/

namespace A117468.P999925919966916898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046854 n) (A084380 (A318391 (n + 1)).toNat)

end

end A117468.P999925919966916898

/-!
# A117469: The largest part summed over all partitions of n in which every integer from the smallest part to the largest part occurs.

The programs for A117469, there is no canonical definition to state claims against.
-/

/-! ## A117469.P3419575397185425247

`A117471(n+1)+A117467(n+1)`
-/

namespace A117469.P3419575397185425247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117471 (n + 1) + A117467 (n + 1)

end

end A117469.P3419575397185425247

/-! ## A117469.P14693554782853534907

`A117467(n+1)+∑[A000009(n+1)]-A239958(n+1)`
-/

namespace A117469.P14693554782853534907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117467 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A239958 (n + 1))

end

end A117469.P14693554782853534907

/-! ## A117469.P6214872783163153581

`A211100(A023149(n+1))+A000217(n)`
-/

namespace A117469.P6214872783163153581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A023149 (n + 1)).toNat + A000217 n

end

end A117469.P6214872783163153581

/-! ## A117469.P12700636151109456636

`A035106(n+1)+A117471(n+1)+A001221(A047849(n))`
-/

namespace A117469.P12700636151109456636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1) + (A117471 (n + 1) + A001221 (A047849 n).toNat)

end

end A117469.P12700636151109456636

/-!
# A117470: Triangle read by rows: T(n,k) is the number of partitions of n in which every integer from the smallest part to the largest part occurs and the difference between the largest part and the smallest part is k (n >= 0, k >= 0).

The programs for A117470, there is no canonical definition to state claims against.
-/

/-! ## A117470.P6987271414386062500

`A165089(A248351(n+4)+A087897(2*(n+2)))`
-/

namespace A117470.P6987271414386062500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165089 (A248351 (n + 4) + A087897 (2 * (n + 2))).toNat

end

end A117470.P6987271414386062500

/-! ## A117470.P15499205367983731944

`A188467(A195420(n+1))+A027935(n)`
-/

namespace A117470.P15499205367983731944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (A195420 (n + 1)).toNat + A027935 n

end

end A117470.P15499205367983731944

/-! ## A117470.P5244400528336307206

`A341540(A268510(n+5))+A027751(n+1)`
-/

namespace A117470.P5244400528336307206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341540 (A268510 (n + 5)).toNat + A027751 (n + 1)

end

end A117470.P5244400528336307206

/-! ## A117470.P2669350970106407385

`A112798(A027960(3*n+4)*A221062(n+4))`
-/

namespace A117470.P2669350970106407385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A027960 (3 * n + 4) * A221062 (n + 4)).toNat

end

end A117470.P2669350970106407385

/-! ## A117470.P1663300402266203800

`A268507(lt[A114611(3*n+1), A289174(n+1)])`
-/

namespace A117470.P1663300402266203800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114611 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268507 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117470.P1663300402266203800

/-!
# A117471: The difference between the largest part and the smallest part summed over all those partitions of n in which every integer from the smallest part to the largest part occurs.

The programs for A117471, there is no canonical definition to state claims against.
-/

/-! ## A117471.P5414375807162129156

`∑[A000009(n+1)]-A239958(n+1)`
-/

namespace A117471.P5414375807162129156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A239958 (n + 1)

end

end A117471.P5414375807162129156

/-! ## A117471.P4110442618599455876

`A117469(n+1)-A117467(n+1)`
-/

namespace A117471.P4110442618599455876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117469 (n + 1) - A117467 (n + 1)

end

end A117471.P4110442618599455876

/-! ## A117471.P13938623489003789657

`A117469(A043320(n+1))%A117467(n+1)`
-/

namespace A117471.P13938623489003789657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117469 (A043320 (n + 1)).toNat) (A117467 (n + 1))

end

end A117471.P13938623489003789657

/-! ## A117471.P12722235949643945797

`A117469(A044917(n+1))%A117467(n+1)`
-/

namespace A117471.P12722235949643945797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117469 (A044917 (n + 1)).toNat) (A117467 (n + 1))

end

end A117471.P12722235949643945797

/-! ## A117471.P16769963736170649911

`A117469(n+1)%(A117467(n+1)%A117480(n+1))`
-/

namespace A117471.P16769963736170649911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117469 (n + 1)) (Int.tmod (A117467 (n + 1)) (A117480 (n + 1)))

end

end A117471.P16769963736170649911

/-!
# A117472: Values of c in a^2 + b^2 = c^2, where b - a = 17 and gcd(a,b,c)=1.

The programs for A117472, the canonical program `A117472.P8209652946633525889` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117472 has offset 1).

The definition of A117472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117472.P8209652946633525889

`ogf((25+53x-13x^2-13x^3)/(1-6x^2+x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117472

/-- `ogf((25+53x-13x^2-13x^3)/(1-6x^2+x^4))` -/
def P8209652946633525889.Spec : Prop :=
  ∀ n, P8209652946633525889.a n = A117472 (n + 1)

theorem P8209652946633525889.correct : P8209652946633525889.Spec := by
  intro n
  simp only [A117472, Nat.add_sub_cancel]

end A117472

/-! ## A117472.P6896553093448825116

`A155923(floor(3*n/2)+3)`
-/

namespace A117472.P6896553093448825116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (⌊3 * ((n : ℚ) / 2)⌋ + 3).toNat

end

end A117472.P6896553093448825116

namespace A117472

/-- `A155923(floor(3*n/2)+3)` -/
def P6896553093448825116.Spec : Prop :=
  ∀ n, P6896553093448825116.a n = A117472 (n + 1)

end A117472

/-! ## A117472.P2998323055281055840

`A048739(n+3)+A084068(n+3)-A154144(n+1)`
-/

namespace A117472.P2998323055281055840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (n + 3) + (A084068 (n + 3) - A154144 (n + 1))

end

end A117472.P2998323055281055840

namespace A117472

/-- `A048739(n+3)+A084068(n+3)-A154144(n+1)` -/
def P2998323055281055840.Spec : Prop :=
  ∀ n, P2998323055281055840.a n = A117472 (n + 1)

end A117472

/-! ## A117472.P3864437608962588666

`∪[A156158(n+1), A156156(n+2)]`
-/

namespace A117472.P3864437608962588666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156156 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117472.P3864437608962588666

namespace A117472

/-- `∪[A156158(n+1), A156156(n+2)]` -/
def P3864437608962588666.Spec : Prop :=
  ∀ n, (P3864437608962588666.a n : ℤ) = A117472 (n + 1)

end A117472

/-! ## A117472.P725527404907040204

`record[A155923(A324080(3*(n+1)))]`
-/

namespace A117472.P725527404907040204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (A324080 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117472.P725527404907040204

namespace A117472

/-- `record[A155923(A324080(3*(n+1)))]` -/
def P725527404907040204.Spec : Prop :=
  ∀ n, P725527404907040204.a n = A117472 (n + 1)

end A117472

/-!
# A117473: The values of 'a' in a^2 + b^2 = c^2, where b - a = 17 and gcd(a, b, c) = 1.

The programs for A117473, the canonical program `A117473.P1158169075622179175` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117473 has offset 1).

The definition of A117473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117473.P1158169075622179175

`6*a(n-2)-a(n-4)+34` with `a(0)=7, a(1)=28, a(2)=88, a(3)=207, a(4)=555`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117473

/-- `6*a(n-2)-a(n-4)+34` -/
def P1158169075622179175.Spec : Prop :=
  ∀ n, P1158169075622179175.a n = A117473 (n + 1)

theorem P1158169075622179175.correct : P1158169075622179175.Spec := by
  intro n
  simp only [A117473, Nat.add_sub_cancel]

end A117473

/-! ## A117473.P15722335444595091931

`ogf((7+21x+18x^2-7x^3-5x^4)/(1-x-6x^2+6x^3+x^4-x^5))`
-/

namespace A117473.P15722335444595091931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 21, 18, -7, -5] [1, -1, -6, 6, 1, -1] n

end

end A117473.P15722335444595091931

namespace A117473

/-- `ogf((7+21x+18x^2-7x^3-5x^4)/(1-x-6x^2+6x^3+x^4-x^5))` -/
def P15722335444595091931.Spec : Prop :=
  ∀ n, P15722335444595091931.a n = A117473 (n + 1)

end A117473

/-! ## A117473.P11443078044591516932

`A118120(comp[3*n])`
-/

namespace A117473.P11443078044591516932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117473.P11443078044591516932

namespace A117473

/-- `A118120(comp[3*n])` -/
def P11443078044591516932.Spec : Prop :=
  ∀ n, P11443078044591516932.a n = A117473 (n + 1)

end A117473

/-! ## A117473.P16926807334479687745

`or(A000007(n), A118120(A001651(n+1)))`
-/

namespace A117473.P16926807334479687745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A118120 (A001651 (n + 1)).toNat)

end

end A117473.P16926807334479687745

namespace A117473

/-- `or(A000007(n), A118120(A001651(n+1)))` -/
def P16926807334479687745.Spec : Prop :=
  ∀ n, P16926807334479687745.a n = A117473 (n + 1)

end A117473

/-! ## A117473.P17925299074151455221

`A118120(A001651(n+1))+A097249(A006005(n+1))`
-/

namespace A117473.P17925299074151455221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118120 (A001651 (n + 1)).toNat + A097249 (A006005 (n + 1)).toNat

end

end A117473.P17925299074151455221

namespace A117473

/-- `A118120(A001651(n+1))+A097249(A006005(n+1))` -/
def P17925299074151455221.Spec : Prop :=
  ∀ n, P17925299074151455221.a n = A117473 (n + 1)

end A117473

/-! ## A117473.P13133515467199022544

`A118120(A001651(n+1))+A097249(A065091(n+1))`
-/

namespace A117473.P13133515467199022544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118120 (A001651 (n + 1)).toNat + A097249 (A065091 (n + 1)).toNat

end

end A117473.P13133515467199022544

namespace A117473

/-- `A118120(A001651(n+1))+A097249(A065091(n+1))` -/
def P13133515467199022544.Spec : Prop :=
  ∀ n, P13133515467199022544.a n = A117473 (n + 1)

end A117473

/-! ## A117473.P3301427249585122138

`A118102(A079953(n+1))*A118120(A001651(n+1))`
-/

namespace A117473.P3301427249585122138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A079953 (n + 1)).toNat * A118120 (A001651 (n + 1)).toNat

end

end A117473.P3301427249585122138

namespace A117473

/-- `A118102(A079953(n+1))*A118120(A001651(n+1))` -/
def P3301427249585122138.Spec : Prop :=
  ∀ n, P3301427249585122138.a n = A117473 (n + 1)

end A117473

/-! ## A117473.P15127562619306315912

`A118120(A001651(n+1))%A061172(n)`
-/

namespace A117473.P15127562619306315912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118120 (A001651 (n + 1)).toNat) (A061172 n)

end

end A117473.P15127562619306315912

namespace A117473

/-- `A118120(A001651(n+1))%A061172(n)` -/
def P15127562619306315912.Spec : Prop :=
  ∀ n, P15127562619306315912.a n = A117473 (n + 1)

end A117473

/-! ## A117473.P7938895372667287676

`A118102(A045464(n+2))*A118120(A001651(n+1))`
-/

namespace A117473.P7938895372667287676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A045464 (n + 2)).toNat * A118120 (A001651 (n + 1)).toNat

end

end A117473.P7938895372667287676

namespace A117473

/-- `A118102(A045464(n+2))*A118120(A001651(n+1))` -/
def P7938895372667287676.Spec : Prop :=
  ∀ n, P7938895372667287676.a n = A117473 (n + 1)

end A117473

/-! ## A117473.P3260808335880860793

`A001222(A073609(n))*A118120(A001651(n+1))`
-/

namespace A117473.P3260808335880860793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073609 n).toNat * A118120 (A001651 (n + 1)).toNat

end

end A117473.P3260808335880860793

namespace A117473

/-- `A001222(A073609(n))*A118120(A001651(n+1))` -/
def P3260808335880860793.Spec : Prop :=
  ∀ n, P3260808335880860793.a n = A117473 (n + 1)

end A117473

/-! ## A117473.P13359358590240528306

`A118102(A118130(n+1))*A118120(A001651(n+1))`
-/

namespace A117473.P13359358590240528306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A118130 (n + 1)).toNat * A118120 (A001651 (n + 1)).toNat

end

end A117473.P13359358590240528306

namespace A117473

/-- `A118102(A118130(n+1))*A118120(A001651(n+1))` -/
def P13359358590240528306.Spec : Prop :=
  ∀ n, P13359358590240528306.a n = A117473 (n + 1)

end A117473

/-!
# A117474: The values of 'a' in a^2 + b^2 = c^2 where b - a = 7 and gcd(a,b,c)=1.

The programs for A117474, the canonical program `A117474.P11815504526605139111` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117474 has offset 1).

The definition of A117474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117474.P11532421108030854132

`ogf((5+3x+10x^2-x^3-3x^4)/(1-x-6x^2+6x^3+x^4-x^5))`
-/

namespace A117474.P11532421108030854132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 10, -1, -3] [1, -1, -6, 6, 1, -1] n

end

end A117474.P11532421108030854132

namespace A117474

/-- `ogf((5+3x+10x^2-x^3-3x^4)/(1-x-6x^2+6x^3+x^4-x^5))` -/
def P11532421108030854132.Spec : Prop :=
  ∀ n, P11532421108030854132.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P11815504526605139111

`6*a(n-2)-a(n-4)+14` with `a(0)=5, a(1)=8, a(2)=48, a(3)=65`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117474

/-- `6*a(n-2)-a(n-4)+14` -/
def P11815504526605139111.Spec : Prop :=
  ∀ n, P11815504526605139111.a n = A117474 (n + 1)

theorem P11815504526605139111.correct : P11815504526605139111.Spec := by
  intro n
  simp only [A117474, Nat.add_sub_cancel]

end A117474

/-! ## A117474.P12589524094067853040

`A076296(Δ[A001859(n)])`
-/

namespace A117474.P12589524094067853040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (f1 (n + 1) - f1 n).toNat

end

end A117474.P12589524094067853040

namespace A117474

/-- `A076296(Δ[A001859(n)])` -/
def P12589524094067853040.Spec : Prop :=
  ∀ n, P12589524094067853040.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P12021988925286770631

`A076296(A007494(n+1))`
-/

namespace A117474.P12021988925286770631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (A007494 (n + 1)).toNat

end

end A117474.P12021988925286770631

namespace A117474

/-- `A076296(A007494(n+1))` -/
def P12021988925286770631.Spec : Prop :=
  ∀ n, P12021988925286770631.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P18015121481644886028

`A076296(A032766(n)+2)`
-/

namespace A117474.P18015121481644886028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (A032766 n + 2).toNat

end

end A117474.P18015121481644886028

namespace A117474

/-- `A076296(A032766(n)+2)` -/
def P18015121481644886028.Spec : Prop :=
  ∀ n, P18015121481644886028.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P232187584830786920

`A076296(A294732(n+3))`
-/

namespace A117474.P232187584830786920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (A294732 (n + 3)).toNat

end

end A117474.P232187584830786920

namespace A117474

/-- `A076296(A294732(n+3))` -/
def P232187584830786920.Spec : Prop :=
  ∀ n, P232187584830786920.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P7186427952392328093

`A076296(∑[A000034(n+1)])`
-/

namespace A117474.P7186427952392328093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117474.P7186427952392328093

namespace A117474

/-- `A076296(∑[A000034(n+1)])` -/
def P7186427952392328093.Spec : Prop :=
  ∀ n, P7186427952392328093.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P15034292652527255111

`A076296(∑[2-A000035(n)])`
-/

namespace A117474.P15034292652527255111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117474.P15034292652527255111

namespace A117474

/-- `A076296(∑[2-A000035(n)])` -/
def P15034292652527255111.Spec : Prop :=
  ∀ n, P15034292652527255111.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P13622674020824392942

`A076296(∑[2/A000034(n)])`
-/

namespace A117474.P13622674020824392942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A117474.P13622674020824392942

namespace A117474

/-- `A076296(∑[2/A000034(n)])` -/
def P13622674020824392942.Spec : Prop :=
  ∀ n, P13622674020824392942.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P17801863535551453981

`A076296(A008619(3*n)+1)`
-/

namespace A117474.P17801863535551453981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (A008619 (3 * n) + 1).toNat

end

end A117474.P17801863535551453981

namespace A117474

/-- `A076296(A008619(3*n)+1)` -/
def P17801863535551453981.Spec : Prop :=
  ∀ n, P17801863535551453981.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P9950424407124315504

`A076296(A004526(3*n)+2)`
-/

namespace A117474.P9950424407124315504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (A004526 (3 * n) + 2).toNat

end

end A117474.P9950424407124315504

namespace A117474

/-- `A076296(A004526(3*n)+2)` -/
def P9950424407124315504.Spec : Prop :=
  ∀ n, P9950424407124315504.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P10344164682916311238

`A076296(A008619(n)+1+n)`
-/

namespace A117474.P10344164682916311238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (A008619 n + 1 + (n : ℤ)).toNat

end

end A117474.P10344164682916311238

namespace A117474

/-- `A076296(A008619(n)+1+n)` -/
def P10344164682916311238.Spec : Prop :=
  ∀ n, P10344164682916311238.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P7108349964749978739

`A076296(A004526(n)+2+n)`
-/

namespace A117474.P7108349964749978739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (A004526 n + 2 + (n : ℤ)).toNat

end

end A117474.P7108349964749978739

namespace A117474

/-- `A076296(A004526(n)+2+n)` -/
def P7108349964749978739.Spec : Prop :=
  ∀ n, P7108349964749978739.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P403813413398964892

`A076296(∑[A000035(n+1)+1])`
-/

namespace A117474.P403813413398964892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117474.P403813413398964892

namespace A117474

/-- `A076296(∑[A000035(n+1)+1])` -/
def P403813413398964892.Spec : Prop :=
  ∀ n, P403813413398964892.a n = A117474 (n + 1)

end A117474

/-! ## A117474.P14230444094875957287

`A076296(A001859(n+1)-A001859(n))`
-/

namespace A117474.P14230444094875957287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076296 (A001859 (n + 1) - A001859 n).toNat

end

end A117474.P14230444094875957287

namespace A117474

/-- `A076296(A001859(n+1)-A001859(n))` -/
def P14230444094875957287.Spec : Prop :=
  ∀ n, P14230444094875957287.a n = A117474 (n + 1)

end A117474

/-!
# A117475: The values of c in a^2 + b^2 = c^2 where b - a = 23 and gcd(a,b,c) = 1.

The programs for A117475, the canonical program `A117475.P3167060117234665097` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117475 has offset 1).

The definition of A117475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117475.P3167060117234665097

`ogf((37+65x-17x^2-17x^3)/(1-6x^2+x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117475

/-- `ogf((37+65x-17x^2-17x^3)/(1-6x^2+x^4))` -/
def P3167060117234665097.Spec : Prop :=
  ∀ n, P3167060117234665097.a n = A117475 (n + 1)

theorem P3167060117234665097.correct : P3167060117234665097.Spec := by
  intro n
  simp only [A117475, Nat.add_sub_cancel]

end A117475

/-! ## A117475.P640661815065372066

`A156567(A001651(n+1)+2)`
-/

namespace A117475.P640661815065372066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A001651 (n + 1) + 2).toNat

end

end A117475.P640661815065372066

namespace A117475

/-- `A156567(A001651(n+1)+2)` -/
def P640661815065372066.Spec : Prop :=
  ∀ n, P640661815065372066.a n = A117475 (n + 1)

end A117475

/-! ## A117475.P2851742909824621063

`A156567(A004526(3*(n+2)))`
-/

namespace A117475.P2851742909824621063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A004526 (3 * (n + 2))).toNat

end

end A117475.P2851742909824621063

namespace A117475

/-- `A156567(A004526(3*(n+2)))` -/
def P2851742909824621063.Spec : Prop :=
  ∀ n, P2851742909824621063.a n = A117475 (n + 1)

end A117475

/-! ## A117475.P16795188916163999120

`A156567(A008619(3*n)+2)`
-/

namespace A117475.P16795188916163999120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A008619 (3 * n) + 2).toNat

end

end A117475.P16795188916163999120

namespace A117475

/-- `A156567(A008619(3*n)+2)` -/
def P16795188916163999120.Spec : Prop :=
  ∀ n, P16795188916163999120.a n = A117475 (n + 1)

end A117475

/-! ## A117475.P1473760528361535784

`A156567(A008619(n)+2+n)`
-/

namespace A117475.P1473760528361535784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A008619 n + 2 + (n : ℤ)).toNat

end

end A117475.P1473760528361535784

namespace A117475

/-- `A156567(A008619(n)+2+n)` -/
def P1473760528361535784.Spec : Prop :=
  ∀ n, P1473760528361535784.a n = A117475 (n + 1)

end A117475

/-! ## A117475.P2888690890983924249

`A156567(A004526(n)+n+3)`
-/

namespace A117475.P2888690890983924249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A004526 n + (n + 3 : ℤ)).toNat

end

end A117475.P2888690890983924249

namespace A117475

/-- `A156567(A004526(n)+n+3)` -/
def P2888690890983924249.Spec : Prop :=
  ∀ n, P2888690890983924249.a n = A117475 (n + 1)

end A117475

/-! ## A117475.P18436424702875955907

`A156567(∑[A000931(a(n-1))]+n+2)` with `a(0)=1`
-/

namespace A117475.P18436424702875955907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000931 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)).toNat

end

end A117475.P18436424702875955907

namespace A117475

/-- `A156567(∑[A000931(a(n-1))]+n+2)` -/
def P18436424702875955907.Spec : Prop :=
  ∀ n, P18436424702875955907.a n = A117475 (n + 1)

end A117475

/-!
# A117476: The values of a in a^2 + b^2 = c^2 where b - a = 23 and gcd(a,b,c)=1.

The programs for A117476, the canonical program `A117476.P17464819064064821735` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117476 has offset 1).

The definition of A117476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117476.P13207202805586719131

`ogf((12+21x+28x^2-7x^3-8x^4)/(1-x-6x^2+6x^3+x^4-x^5))`
-/

namespace A117476.P13207202805586719131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 21, 28, -7, -8] [1, -1, -6, 6, 1, -1] n

end

end A117476.P13207202805586719131

namespace A117476

/-- `ogf((12+21x+28x^2-7x^3-8x^4)/(1-x-6x^2+6x^3+x^4-x^5))` -/
def P13207202805586719131.Spec : Prop :=
  ∀ n, P13207202805586719131.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P17464819064064821735

`6*a(n-2)-a(n-4)+46` with `a(0)=12, a(1)=33, a(2)=133, a(3)=252`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117476

/-- `6*a(n-2)-a(n-4)+46` -/
def P17464819064064821735.Spec : Prop :=
  ∀ n, P17464819064064821735.a n = A117476 (n + 1)

theorem P17464819064064821735.correct : P17464819064064821735.Spec := by
  intro n
  simp only [A117476, Nat.add_sub_cancel]

end A117476

/-! ## A117476.P15083812782365871819

`A118337(∑[gcd(2, n)])`
-/

namespace A117476.P15083812782365871819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117476.P15083812782365871819

namespace A117476

/-- `A118337(∑[gcd(2, n)])` -/
def P15083812782365871819.Spec : Prop :=
  ∀ n, P15083812782365871819.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P12736117688348987848

`A118337(Δ[A001859(n)])`
-/

namespace A117476.P12736117688348987848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (f1 (n + 1) - f1 n).toNat

end

end A117476.P12736117688348987848

namespace A117476

/-- `A118337(Δ[A001859(n)])` -/
def P12736117688348987848.Spec : Prop :=
  ∀ n, P12736117688348987848.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P6746013840834596418

`A118337(A007494(n+1))`
-/

namespace A117476.P6746013840834596418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (A007494 (n + 1)).toNat

end

end A117476.P6746013840834596418

namespace A117476

/-- `A118337(A007494(n+1))` -/
def P6746013840834596418.Spec : Prop :=
  ∀ n, P6746013840834596418.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P17354647436505644953

`A118337(A032766(n)+2)`
-/

namespace A117476.P17354647436505644953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (A032766 n + 2).toNat

end

end A117476.P17354647436505644953

namespace A117476

/-- `A118337(A032766(n)+2)` -/
def P17354647436505644953.Spec : Prop :=
  ∀ n, P17354647436505644953.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P12325533276936887360

`A118337(A294732(n+3))`
-/

namespace A117476.P12325533276936887360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (A294732 (n + 3)).toNat

end

end A117476.P12325533276936887360

namespace A117476

/-- `A118337(A294732(n+3))` -/
def P12325533276936887360.Spec : Prop :=
  ∀ n, P12325533276936887360.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P6609843519600660740

`A118337(A008619(3*n)+1)`
-/

namespace A117476.P6609843519600660740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (A008619 (3 * n) + 1).toNat

end

end A117476.P6609843519600660740

namespace A117476

/-- `A118337(A008619(3*n)+1)` -/
def P6609843519600660740.Spec : Prop :=
  ∀ n, P6609843519600660740.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P6446189938723967989

`A118337(A004526(3*n)+2)`
-/

namespace A117476.P6446189938723967989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (A004526 (3 * n) + 2).toNat

end

end A117476.P6446189938723967989

namespace A117476

/-- `A118337(A004526(3*n)+2)` -/
def P6446189938723967989.Spec : Prop :=
  ∀ n, P6446189938723967989.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P9760404065212749407

`A118337(A008619(n)+1+n)`
-/

namespace A117476.P9760404065212749407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (A008619 n + 1 + (n : ℤ)).toNat

end

end A117476.P9760404065212749407

namespace A117476

/-- `A118337(A008619(n)+1+n)` -/
def P9760404065212749407.Spec : Prop :=
  ∀ n, P9760404065212749407.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P11190676442884770289

`A118337(A004526(n)+2+n)`
-/

namespace A117476.P11190676442884770289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (A004526 n + 2 + (n : ℤ)).toNat

end

end A117476.P11190676442884770289

namespace A117476

/-- `A118337(A004526(n)+2+n)` -/
def P11190676442884770289.Spec : Prop :=
  ∀ n, P11190676442884770289.a n = A117476 (n + 1)

end A117476

/-! ## A117476.P9885243131745346956

`A118337(A001859(n+1)-A001859(n))`
-/

namespace A117476.P9885243131745346956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118337 (A001859 (n + 1) - A001859 n).toNat

end

end A117476.P9885243131745346956

namespace A117476

/-- `A118337(A001859(n+1)-A001859(n))` -/
def P9885243131745346956.Spec : Prop :=
  ∀ n, P9885243131745346956.a n = A117476 (n + 1)

end A117476

/-!
# A117477: Primes whose SOD and that of their indices are both prime and equal (indices may not be prime, but their SOD must be prime).

The programs for A117477, the canonical program `A117477.P6750143926802301910` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117477 has offset 1).

The definition of A117477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117477.P6750143926802301910

`∩[A033548(n+1), A046704(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A117477

/-- `∩[A033548(n+1), A046704(n+1)]` -/
def P6750143926802301910.Spec : Prop :=
  ∀ n, (P6750143926802301910.a n : ℤ) = A117477 (n + 1)

theorem P6750143926802301910.correct : P6750143926802301910.Spec := by
  intro n
  simp only [A117477, Nat.add_sub_cancel]

end A117477

/-! ## A117477.P8131489260416785393

`∩[A046704(n+1), A343139(n+1)]`
-/

namespace A117477.P8131489260416785393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117477.P8131489260416785393

namespace A117477

/-- `∩[A046704(n+1), A343139(n+1)]` -/
def P8131489260416785393.Spec : Prop :=
  ∀ n, (P8131489260416785393.a n : ℤ) = A117477 (n + 1)

end A117477

/-! ## A117477.P940888768404757112

`∩[A033548(n+1), A186773(n+1)]`
-/

namespace A117477.P940888768404757112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117477.P940888768404757112

namespace A117477

/-- `∩[A033548(n+1), A186773(n+1)]` -/
def P940888768404757112.Spec : Prop :=
  ∀ n, (P940888768404757112.a n : ℤ) = A117477 (n + 1)

end A117477

/-! ## A117477.P6009622794326468309

`A000040(A117478(n))`
-/

namespace A117477.P6009622794326468309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A117478 n).toNat

end

end A117477.P6009622794326468309

namespace A117477

/-- `A000040(A117478(n))` -/
def P6009622794326468309.Spec : Prop :=
  ∀ n, P6009622794326468309.a n = A117477 (n + 1)

end A117477

/-! ## A117477.P3226046047436725643

`A008578(A117478(n)+1)`
-/

namespace A117477.P3226046047436725643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A117478 n + 1).toNat

end

end A117477.P3226046047436725643

namespace A117477

/-- `A008578(A117478(n)+1)` -/
def P3226046047436725643.Spec : Prop :=
  ∀ n, P3226046047436725643.a n = A117477 (n + 1)

end A117477

/-!
# A117478: Indices of associated primes in A117477.

The programs for A117478, there is no canonical definition to state claims against.
-/

/-! ## A117478.P2023032627774293988

`A000720(A117477(n+1))`
-/

namespace A117478.P2023032627774293988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A117477 (n + 1)).toNat

end

end A117478.P2023032627774293988

/-! ## A117478.P17649349334367675072

`filter[A033549(n+1), A179081(#)]`
-/

namespace A117478.P17649349334367675072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A117478.P17649349334367675072

/-! ## A117478.P12539120109664486935

`filter[A033549(n+1), A200263(#)]`
-/

namespace A117478.P12539120109664486935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A200263 (f1 j).toNat = 1) n)

end

end A117478.P12539120109664486935

/-! ## A117478.P6924015340240454341

`∩[A028834(n+1), A033549(n+1)]`
-/

namespace A117478.P6924015340240454341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117478.P6924015340240454341

/-! ## A117478.P3210005553650785833

`∩[A033549(n+1), A054684(n+1)]`
-/

namespace A117478.P3210005553650785833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117478.P3210005553650785833

/-!
# A117479: Number of zeros in the maximal Fibonacci bit-representation of n (A104326).

The programs for A117479, there is no canonical definition to state claims against.
-/

/-! ## A117479.P10380836401041528965

`∑{digits}[A104326(n), 1-#]`
-/

namespace A117479.P10380836401041528965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A117479.P10380836401041528965

/-! ## A117479.P7546984085401075021

`A200650(abs(1-n)+3)`
-/

namespace A117479.P7546984085401075021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (|1 - (n : ℤ)| + 3).toNat

end

end A117479.P7546984085401075021

/-! ## A117479.P8636798456104577463

`floor(A200650(n+2)+acot(n))`
-/

namespace A117479.P8636798456104577463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A200650 (n + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A117479.P8636798456104577463

/-! ## A117479.P10627569055145444956

`A023416(lt[and(n, or(n, 2*n)+2), 2])`
-/

namespace A117479.P10627569055145444956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lor n (2 * n) + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117479.P10627569055145444956

/-! ## A117479.P9177016043927706361

`A023416(eq[and(n, 2*n+1), and(n, 3*n+2)])`
-/

namespace A117479.P9177016043927706361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117479.P9177016043927706361

/-! ## A117479.P12242655243017338863

`A023416(record[A180200(n)])`
-/

namespace A117479.P12242655243017338863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117479.P12242655243017338863

/-! ## A117479.P2001772998576843202

`A023416(A003754(n+1))`
-/

namespace A117479.P2001772998576843202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A003754 (n + 1)).toNat

end

end A117479.P2001772998576843202

/-! ## A117479.P8783233668929773131

`A131341(A195121(n)+1)`
-/

namespace A117479.P8783233668929773131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131341 (A195121 n + 1).toNat

end

end A117479.P8783233668929773131

/-! ## A117479.P8383082466108146855

`A023416(A052499(n)-1)`
-/

namespace A117479.P8383082466108146855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A052499 n - 1).toNat

end

end A117479.P8383082466108146855

/-! ## A117479.P13626314342173279265

`A087116(A052499(n)-1)`
-/

namespace A117479.P13626314342173279265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A052499 n - 1).toNat

end

end A117479.P13626314342173279265

/-!
# A117480: A093483(n) + 1.

The programs for A117480, there is no canonical definition to state claims against.
-/

/-! ## A117480.P12155911016199525995

`A093483(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117480.P12155911016199525995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093483 (n + 1) + 1

end

end A117480.P12155911016199525995

/-! ## A117480.P15587187158676159696

`A121404(n+1)+3`
-/

namespace A117480.P15587187158676159696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121404 (n + 1) + 3

end

end A117480.P15587187158676159696

/-! ## A117480.P3698194877414421940

`ceil(A180565(n+1)/2)`
-/

namespace A117480.P3698194877414421940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180565 (n + 1) : ℚ) / 2⌉

end

end A117480.P3698194877414421940

/-! ## A117480.P10621016443348703720

`or(1, A093483(-xor(n, -1)))`
-/

namespace A117480.P10621016443348703720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A093483 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A117480.P10621016443348703720

/-! ## A117480.P5056782841534275135

`or(1, A093483(A005496(n)))`
-/

namespace A117480.P5056782841534275135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A093483 (A005496 n).toNat)

end

end A117480.P5056782841534275135

/-!
# A117481: a(n) = n*(n-1)*(n-2)*(n-3)*...*(n-k) such that (n-k) is the largest prime smaller than n.

The programs for A117481, there is no canonical definition to state claims against.
-/

/-! ## A117481.P8876471970991641114

`A094587(A136548(n+1)+A000096(n))`
-/

namespace A117481.P8876471970991641114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A136548 (n + 1) + A000096 n).toNat

end

end A117481.P8876471970991641114

/-! ## A117481.P9812155374114584152

`A094587(A212342(n+1)+A136548(n+1))`
-/

namespace A117481.P9812155374114584152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A212342 (n + 1) + A136548 (n + 1)).toNat

end

end A117481.P9812155374114584152

/-! ## A117481.P4982201673245839721

`A000142(n+1)/A001783(A136548(n+1))`
-/

namespace A117481.P4982201673245839721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A001783 (A136548 (n + 1)).toNat : ℚ)

end

end A117481.P4982201673245839721

/-! ## A117481.P12827493713401541446

`record[A216919(n+1)]/A001783(A136548(n+1))`
-/

namespace A117481.P12827493713401541446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216919 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A001783 (A136548 (n + 1)).toNat : ℚ)

end

end A117481.P12827493713401541446

/-! ## A117481.P9484486752815932419

`lcm(A006530(2*a(n-1)²), ∑[2*n])` with `a(0)=1`
-/

namespace A117481.P9484486752815932419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A006530 (2 * a (n - 1) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117481.P9484486752815932419

/-!
# A117482: Numbers with no 1's in their base-3, base-4, and base-5 expansions. Intersection of A005823, A023709, and A023725.

The programs for A117482, there is no canonical definition to state claims against.
-/

/-! ## A117482.P1539541541423308946

`∩[A023725(n+1), A117496(n+1)]`
-/

namespace A117482.P1539541541423308946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117482.P1539541541423308946

/-!
# A117484: Number of triangular numbers mod n.

The programs for A117484, there is no canonical definition to state claims against.
-/

/-! ## A117484.P1847863319360147865

`1-A376931(n+1)+n`
-/

namespace A117484.P1847863319360147865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A376931 (n + 1) + (n : ℤ)

end

end A117484.P1847863319360147865

/-! ## A117484.P3193722084053004585

`A000034(n)*A290731(n+1)`
-/

namespace A117484.P3193722084053004585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A290731 (n + 1)

end

end A117484.P3193722084053004585

/-! ## A117484.P16261487721768825525

`(A000035(n)+1)*A290731(n+1)`
-/

namespace A117484.P16261487721768825525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A290731 (n + 1)

end

end A117484.P16261487721768825525

/-! ## A117484.P4942250587188345816

`A040001(n+1)*A290731(n+1)`
-/

namespace A117484.P4942250587188345816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A290731 (n + 1)

end

end A117484.P4942250587188345816

/-! ## A117484.P6622101004566964759

`∑{d}[n+1, A209229(#)*A290731((n+1)/#)]`
-/

namespace A117484.P6622101004566964759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209229 d * A290731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117484.P6622101004566964759

/-! ## A117484.P9618313666535986617

`∑{d}[n+1, A036987(#-1)*A290731((n+1)/#)]`
-/

namespace A117484.P9618313666535986617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A290731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117484.P9618313666535986617

/-! ## A117484.P5546197533886297103

`A290731(n+1)*A290732(n+1)/A317623(n+1)`
-/

namespace A117484.P5546197533886297103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290731 (n + 1) * A290732 (n + 1) : ℚ) / (A317623 (n + 1) : ℚ)

end

end A117484.P5546197533886297103

/-! ## A117484.P3891198908828163068

`A290731(A022998(n+1))`
-/

namespace A117484.P3891198908828163068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A022998 (n + 1)).toNat

end

end A117484.P3891198908828163068

/-! ## A117484.P15394505050744664845

`A290731(A059029(n)+1)`
-/

namespace A117484.P15394505050744664845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A059029 n + 1).toNat

end

end A117484.P15394505050744664845

/-! ## A117484.P15233714644112877402

`A290731(A257088(n+1))`
-/

namespace A117484.P15233714644112877402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A257088 (n + 1)).toNat

end

end A117484.P15233714644112877402

/-! ## A117484.P8118472373698061417

`A290731((n+1)*A040001(n+1))`
-/

namespace A117484.P8118472373698061417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 ((n + 1 : ℤ) * A040001 (n + 1)).toNat

end

end A117484.P8118472373698061417

/-! ## A117484.P16654672145521408592

`A290731(2*(n+1))`
-/

namespace A117484.P16654672145521408592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (2 * (n + 1))

end

end A117484.P16654672145521408592

/-! ## A117484.P6009930279824914955

`A000224(Δ[(2*n+1)²])-A000224(2*(n+1))`
-/

namespace A117484.P6009930279824914955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A000224 (2 * (n + 1))

end

end A117484.P6009930279824914955

/-!
# A117485: Expansion of x^9/((1-x)*(1-x^2)*(1-x^3))^2.

The programs for A117485, the canonical program `A117485.P4291670045258393028` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117485 has offset 9).

The definition of A117485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+2x^3+3x^4-6x^6+3x^8+2x^9-x^10-2x^11+x^12))` (program `A117485.P4291670045258393028`, by `A117485.P4291670045258393028.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117485.P4291670045258393028

`ogf(1/(1-2x-x^2+2x^3+3x^4-6x^6+3x^8+2x^9-x^10-2x^11+x^12))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117485

/-- `ogf(1/(1-2x-x^2+2x^3+3x^4-6x^6+3x^8+2x^9-x^10-2x^11+x^12))` -/
def P4291670045258393028.Spec : Prop :=
  ∀ n, P4291670045258393028.a n = A117485 (n + 9)

theorem P4291670045258393028.correct : P4291670045258393028.Spec := by
  intro n
  simp only [A117485, Nat.add_sub_cancel]

end A117485

/-! ## A117485.P969709904344924928

`∑[∑[A213042(n)]]`
-/

namespace A117485.P969709904344924928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117485.P969709904344924928

namespace A117485

/-- `∑[∑[A213042(n)]]` -/
def P969709904344924928.Spec : Prop :=
  ∀ n, P969709904344924928.a n = A117485 (n + 9)

end A117485

/-! ## A117485.P9752384446201333472

`A115266(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A117485.P9752384446201333472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A115266 n + a (n - 2)

end

end A117485.P9752384446201333472

namespace A117485

/-- `A115266(n)+a(n-2)` -/
def P9752384446201333472.Spec : Prop :=
  ∀ n, P9752384446201333472.a n = A117485 (n + 9)

end A117485

/-! ## A117485.P935493292439139686

`A097701(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A117485.P935493292439139686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A097701 n + a (n - 3)

end

end A117485.P935493292439139686

namespace A117485

/-- `A097701(n)+a(n-3)` -/
def P935493292439139686.Spec : Prop :=
  ∀ n, P935493292439139686.a n = A117485 (n + 9)

end A117485

/-! ## A117485.P11775277820046052751

`A130145(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A117485.P11775277820046052751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130145 (n + 1) - a (n - 1)

end

end A117485.P11775277820046052751

namespace A117485

/-- `A130145(n+1)-a(n-1)` -/
def P11775277820046052751.Spec : Prop :=
  ∀ n, P11775277820046052751.a n = A117485 (n + 9)

end A117485

/-! ## A117485.P17327279825257168001

`∑[A028289(n)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A117485.P17327279825257168001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A028289 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117485.P17327279825257168001

namespace A117485

/-- `∑[A028289(n)+a(n-2)]` -/
def P17327279825257168001.Spec : Prop :=
  ∀ n, P17327279825257168001.a n = A117485 (n + 9)

end A117485

/-! ## A117485.P5100991452352745302

`∑[∑[A307872(n+3)]]-a(n-1)` with `a(0)=1`
-/

namespace A117485.P5100991452352745302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A117485.P5100991452352745302

namespace A117485

/-- `∑[∑[A307872(n+3)]]-a(n-1)` -/
def P5100991452352745302.Spec : Prop :=
  ∀ n, P5100991452352745302.a n = A117485 (n + 9)

end A117485

/-! ## A117485.P6407357262257649837

`A029142(2*n)+∑[∑[A029142(2*n+1)]]`
-/

namespace A117485.P6407357262257649837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117485.P6407357262257649837

namespace A117485

/-- `A029142(2*n)+∑[∑[A029142(2*n+1)]]` -/
def P6407357262257649837.Spec : Prop :=
  ∀ n, P6407357262257649837.a n = A117485 (n + 9)

end A117485

/-! ## A117485.P11747662145173642080

`∑[∑[record[A029265(n+1)]-a(n-1)]]` with `a(0)=1`
-/

namespace A117485.P11747662145173642080
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117485.P11747662145173642080

namespace A117485

/-- `∑[∑[record[A029265(n+1)]-a(n-1)]]` -/
def P11747662145173642080.Spec : Prop :=
  ∀ n, P11747662145173642080.a n = A117485 (n + 9)

end A117485

/-!
# A117486: Expansion of 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^4))^2.

The programs for A117486, the canonical program `A117486.P12632520066704035855` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117486 has offset 0).

The definition of A117486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+2x^3+x^4+4x^5-4x^6-4x^7-2x^8+10x^10-2x^12-4x^13-4x^14+4x^15+x^16+2x^17-x^18-2x^19+x^20))` (program `A117486.P12632520066704035855`, by `A117486.P12632520066704035855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117486.P12632520066704035855

`ogf(1/(1-2x-x^2+2x^3+x^4+4x^5-4x^6-4x^7-2x^8+10x^10-2x^12-4x^13-4x^14+4x^15+x^16+2x^17-x^18-2x^19+x^20))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117486

/-- `ogf(1/(1-2x-x^2+2x^3+x^4+4x^5-4x^6-4x^7-2x^8+10x^10-2x^12-4x^13-4x^14+4x^15+x^16+2x^17-x^18-2x^19+x^20))` -/
def P12632520066704035855.Spec : Prop :=
  ∀ n, P12632520066704035855.a n = A117486 n

theorem P12632520066704035855.correct : P12632520066704035855.Spec := by
  intro n
  simp only [A117486]

end A117486

/-! ## A117486.P6653836064392567904

`A210068(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A117486.P6653836064392567904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A210068 n - a (n - 2)

end

end A117486.P6653836064392567904

namespace A117486

/-- `A210068(n)-a(n-2)` -/
def P6653836064392567904.Spec : Prop :=
  ∀ n, P6653836064392567904.a n = A117486 n

end A117486

/-! ## A117486.P4583104590405772153

`A364842(A141214(n+1))`
-/

namespace A117486.P4583104590405772153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364842 (A141214 (n + 1)).toNat

end

end A117486.P4583104590405772153

namespace A117486

/-- `A364842(A141214(n+1))` -/
def P4583104590405772153.Spec : Prop :=
  ∀ n, P4583104590405772153.a n = A117486 n

end A117486

/-! ## A117486.P15914857222236789198

`A117488(A034067(n+1)-10)`
-/

namespace A117486.P15914857222236789198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (A034067 (n + 1) - 10).toNat

end

end A117486.P15914857222236789198

namespace A117486

/-- `A117488(A034067(n+1)-10)` -/
def P15914857222236789198.Spec : Prop :=
  ∀ n, P15914857222236789198.a n = A117486 n

end A117486

/-! ## A117486.P270962368445393619

`A364842(eq[2, A354234(n+1)])`
-/

namespace A117486.P270962368445393619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117486.P270962368445393619

namespace A117486

/-- `A364842(eq[2, A354234(n+1)])` -/
def P270962368445393619.Spec : Prop :=
  ∀ n, P270962368445393619.a n = A117486 n

end A117486

/-!
# A117487: G.f.: 1/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)*(1-x^5))^2.

The programs for A117487, there is no canonical definition to state claims against.
-/

/-! ## A117487.P5084737205830937864

`A117488(A034067(n))`
-/

namespace A117487.P5084737205830937864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (A034067 n).toNat

end

end A117487.P5084737205830937864

/-! ## A117487.P4416300630282358624

`A034296(3*n+1)-record[A122288(3*n)]`
-/

namespace A117487.P4416300630282358624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (3 * n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117487.P4416300630282358624

/-! ## A117487.P12902285612368068233

`A056183(n)+A001222(n!)`
-/

namespace A117487.P12902285612368068233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056183 n + A001222 (Nat.factorial n)

end

end A117487.P12902285612368068233

/-! ## A117487.P4762835269971593268

`A056183(n)+A001222(A000142(n))`
-/

namespace A117487.P4762835269971593268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056183 n + A001222 (A000142 n).toNat

end

end A117487.P4762835269971593268

/-! ## A117487.P17392471671601977655

`A000267(A277244(n)-A054225(n))`
-/

namespace A117487.P17392471671601977655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A277244 n - A054225 n).toNat

end

end A117487.P17392471671601977655

/-!
# A117488: The number 1 followed by 2*k+1 terms from column k of table A115994.

The programs for A117488, there is no canonical definition to state claims against.
-/

/-! ## A117488.P11979548102063038022

`A115720(∑[floor(sqrt(n))]+n)`
-/

namespace A117488.P11979548102063038022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A117488.P11979548102063038022

/-! ## A117488.P5198308087867307053

`A115994(A022554(n)+floor(1/(n+1)))`
-/

namespace A117488.P5198308087867307053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115994 (A022554 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A117488.P5198308087867307053

/-! ## A117488.P15428184256514578015

`A115994(A022554(A000007(n)+n))`
-/

namespace A117488.P15428184256514578015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115994 (A022554 (A000007 n + (n : ℤ)).toNat).toNat

end

end A117488.P15428184256514578015

/-! ## A117488.P13259544096434553004

`A115994(or(A000007(n), A022554(n)))`
-/

namespace A117488.P13259544096434553004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115994 (Int.lor (A000007 n) (A022554 n)).toNat

end

end A117488.P13259544096434553004

/-! ## A117488.P6717895181178235356

`A115994(xor(A000007(n), A022554(n)))`
-/

namespace A117488.P6717895181178235356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115994 (Int.xor (A000007 n) (A022554 n)).toNat

end

end A117488.P6717895181178235356

/-!
# A117489: Row sums of A117488 which has 1, 3, 5, 7, ... entries per row.

The programs for A117489, there is no canonical definition to state claims against.
-/

/-! ## A117489.P16795968192876189151

`A275492(2*n+3)-(A286625(3*(n+1))+1)`
-/

namespace A117489.P16795968192876189151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275492 (2 * n + 3) - (A286625 (3 * (n + 1)) + 1)

end

end A117489.P16795968192876189151

/-!
# A117490: Number of primes between n and n^2 (with n and n^2 excluded).

The programs for A117490, the canonical program `A117490.P16181747939220959005` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117490 has offset 1).

The definition of A117490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117490.P11827828003710787761

`A073882(n+1)-A010051(n+1)`
-/

namespace A117490.P11827828003710787761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (n + 1) - A010051 (n + 1)

end

end A117490.P11827828003710787761

namespace A117490

/-- `A073882(n+1)-A010051(n+1)` -/
def P11827828003710787761.Spec : Prop :=
  ∀ n, P11827828003710787761.a n = A117490 (n + 1)

theorem P11827828003710787761.correct : P11827828003710787761.Spec := by
  intro n
  simp only [A117490, Nat.add_sub_cancel, A117490.P11827828003710787761.a, A117490.P16181747939220959005.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A073882, A073882.P10708538489612221498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117490

/-! ## A117490.P12076614770181034655

`A038107(n+1)-A000720(n+1)`
-/

namespace A117490.P12076614770181034655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A000720 (n + 1)

end

end A117490.P12076614770181034655

namespace A117490

/-- `A038107(n+1)-A000720(n+1)` -/
def P12076614770181034655.Spec : Prop :=
  ∀ n, P12076614770181034655.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P16181747939220959005

`A000720((n+1)²)-A000720(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117490

/-- `A000720((n+1)²)-A000720(n+1)` -/
def P16181747939220959005.Spec : Prop :=
  ∀ n, P16181747939220959005.a n = A117490 (n + 1)

theorem P16181747939220959005.correct : P16181747939220959005.Spec := by
  intro n
  simp only [A117490, Nat.add_sub_cancel]

end A117490

/-! ## A117490.P14505959134146989525

`∑[A014085(n)]-A000720(n+1)`
-/

namespace A117490.P14505959134146989525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A117490.P14505959134146989525

namespace A117490

/-- `∑[A014085(n)]-A000720(n+1)` -/
def P14505959134146989525.Spec : Prop :=
  ∀ n, P14505959134146989525.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P8163611716068148876

`∑[A014085(n)-A010051(n+1)]`
-/

namespace A117490.P8163611716068148876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117490.P8163611716068148876

namespace A117490

/-- `∑[A014085(n)-A010051(n+1)]` -/
def P8163611716068148876.Spec : Prop :=
  ∀ n, P8163611716068148876.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P16404534433204560885

`∑[A014085(n)-A064911(2*(n+1))]`
-/

namespace A117490.P16404534433204560885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - A064911 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117490.P16404534433204560885

namespace A117490

/-- `∑[A014085(n)-A064911(2*(n+1))]` -/
def P16404534433204560885.Spec : Prop :=
  ∀ n, P16404534433204560885.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P6333642465104163251

`∑[A014085(n)-char[A000040(n+1)-1]]`
-/

namespace A117490.P6333642465104163251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117490.P6333642465104163251

namespace A117490

/-- `∑[A014085(n)-char[A000040(n+1)-1]]` -/
def P6333642465104163251.Spec : Prop :=
  ∀ n, P6333642465104163251.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P14729254858565925181

`∑[A014085(n)-char[A006530(n+2)-1]]`
-/

namespace A117490.P14729254858565925181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117490.P14729254858565925181

namespace A117490

/-- `∑[A014085(n)-char[A006530(n+2)-1]]` -/
def P14729254858565925181.Spec : Prop :=
  ∀ n, P14729254858565925181.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P6172411268359943274

`∑[A014085(n)-char[A020639(n+2)-1]]`
-/

namespace A117490.P6172411268359943274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117490.P6172411268359943274

namespace A117490

/-- `∑[A014085(n)-char[A020639(n+2)-1]]` -/
def P6172411268359943274.Spec : Prop :=
  ∀ n, P6172411268359943274.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P13224117194123744082

`A073882(n+1)-char[A000040(n+1)-1]`
-/

namespace A117490.P13224117194123744082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A117490.P13224117194123744082

namespace A117490

/-- `A073882(n+1)-char[A000040(n+1)-1]` -/
def P13224117194123744082.Spec : Prop :=
  ∀ n, P13224117194123744082.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P11732269887831906024

`A161187(n+1)-∑[C(2, A001222(n+1))!]`
-/

namespace A117490.P11732269887831906024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (A001222 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117490.P11732269887831906024

namespace A117490

/-- `A161187(n+1)-∑[C(2, A001222(n+1))!]` -/
def P11732269887831906024.Spec : Prop :=
  ∀ n, P11732269887831906024.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P17978214908016050462

`A111208(n+1)+A194189(n+1)-A000720(n+1)`
-/

namespace A117490.P17978214908016050462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111208 (n + 1) + (A194189 (n + 1) - A000720 (n + 1))

end

end A117490.P17978214908016050462

namespace A117490

/-- `A111208(n+1)+A194189(n+1)-A000720(n+1)` -/
def P17978214908016050462.Spec : Prop :=
  ∀ n, P17978214908016050462.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P16355035851131692179

`A078435(n+1)-(A399056(n+1)+A000720(n+1))`
-/

namespace A117490.P16355035851131692179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078435 (n + 1) - (A399056 (n + 1) + A000720 (n + 1))

end

end A117490.P16355035851131692179

namespace A117490

/-- `A078435(n+1)-(A399056(n+1)+A000720(n+1))` -/
def P16355035851131692179.Spec : Prop :=
  ∀ n, P16355035851131692179.a n = A117490 (n + 1)

theorem P16355035851131692179.correct : P16355035851131692179.Spec := by
  intro n
  simp only [A117490, Nat.add_sub_cancel, A117490.P16355035851131692179.a, A117490.P16181747939220959005.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A078435, A078435.P14345205808415751107.a, A399056, A399056.P5606043138281039820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117490

/-! ## A117490.P15852929314703292394

`A342695(n+1)+A344316(n+1)-A000720(n+1)`
-/

namespace A117490.P15852929314703292394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342695 (n + 1) + (A344316 (n + 1) - A000720 (n + 1))

end

end A117490.P15852929314703292394

namespace A117490

/-- `A342695(n+1)+A344316(n+1)-A000720(n+1)` -/
def P15852929314703292394.Spec : Prop :=
  ∀ n, P15852929314703292394.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P2835594176829251939

`A291440(n+1)+A000720(n+1)*A033270(n+1)`
-/

namespace A117490.P2835594176829251939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291440 (n + 1) + A000720 (n + 1) * A033270 (n + 1)

end

end A117490.P2835594176829251939

namespace A117490

/-- `A291440(n+1)+A000720(n+1)*A033270(n+1)` -/
def P2835594176829251939.Spec : Prop :=
  ∀ n, P2835594176829251939.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P13343971362305793680

`A263325(n+1)/A000203(n+1)-A000720(n+1)`
-/

namespace A117490.P13343971362305793680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263325 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) - (A000720 (n + 1) : ℚ)

end

end A117490.P13343971362305793680

namespace A117490

/-- `A263325(n+1)/A000203(n+1)-A000720(n+1)` -/
def P13343971362305793680.Spec : Prop :=
  ∀ n, P13343971362305793680.a n = (A117490 (n + 1) : ℚ)

end A117490

/-! ## A117490.P12432550680862445743

`A038107(n+1)-A230980(n+1)`
-/

namespace A117490.P12432550680862445743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A230980 (n + 1)

end

end A117490.P12432550680862445743

namespace A117490

/-- `A038107(n+1)-A230980(n+1)` -/
def P12432550680862445743.Spec : Prop :=
  ∀ n, P12432550680862445743.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P5338095165458026884

`A073882(n+2)-A014085(n+1)`
-/

namespace A117490.P5338095165458026884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (n + 2) - A014085 (n + 1)

end

end A117490.P5338095165458026884

namespace A117490

/-- `A073882(n+2)-A014085(n+1)` -/
def P5338095165458026884.Spec : Prop :=
  ∀ n, P5338095165458026884.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P3453279704016663727

`A038107(n+1)-∑[char[A000040(n+1)-1]]`
-/

namespace A117490.P3453279704016663727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117490.P3453279704016663727

namespace A117490

/-- `A038107(n+1)-∑[char[A000040(n+1)-1]]` -/
def P3453279704016663727.Spec : Prop :=
  ∀ n, P3453279704016663727.a n = A117490 (n + 1)

end A117490

/-! ## A117490.P16333522190617143813

`A038107(n+1)-∑[char[A006530(n+2)-1]]`
-/

namespace A117490.P16333522190617143813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117490.P16333522190617143813

namespace A117490

/-- `A038107(n+1)-∑[char[A006530(n+2)-1]]` -/
def P16333522190617143813.Spec : Prop :=
  ∀ n, P16333522190617143813.a n = A117490 (n + 1)

end A117490

/-!
# A117491: The number of primes between n and n^3 (with n and n^3 excluded).

The programs for A117491, the canonical program `A117491.P5569810721015399091` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117491 has offset 1).

The definition of A117491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117491.P5569810721015399091

`A000720((n+1)^3)-A000720(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117491

/-- `A000720((n+1)^3)-A000720(n+1)` -/
def P5569810721015399091.Spec : Prop :=
  ∀ n, P5569810721015399091.a n = A117491 (n + 1)

theorem P5569810721015399091.correct : P5569810721015399091.Spec := by
  intro n
  simp only [A117491, Nat.add_sub_cancel]

end A117491

/-! ## A117491.P4115833013595851500

`∑[A060199(n)]-A000720(n+1)`
-/

namespace A117491.P4115833013595851500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A117491.P4115833013595851500

namespace A117491

/-- `∑[A060199(n)]-A000720(n+1)` -/
def P4115833013595851500.Spec : Prop :=
  ∀ n, P4115833013595851500.a n = A117491 (n + 1)

end A117491

/-! ## A117491.P7272762450018384005

`∑[A060199(n)-A010051(n+1)]`
-/

namespace A117491.P7272762450018384005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117491.P7272762450018384005

namespace A117491

/-- `∑[A060199(n)-A010051(n+1)]` -/
def P7272762450018384005.Spec : Prop :=
  ∀ n, P7272762450018384005.a n = A117491 (n + 1)

end A117491

/-! ## A117491.P4990673485234529862

`A038098(n+1)-∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A117491.P4990673485234529862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117491.P4990673485234529862

namespace A117491

/-- `A038098(n+1)-∑[∑{p}[n+1, val(#, n+1)]]` -/
def P4990673485234529862.Spec : Prop :=
  ∀ n, P4990673485234529862.a n = A117491 (n + 1)

end A117491

/-! ## A117491.P13219461929174606414

`A038098(n+1)-A000720(n+1)`
-/

namespace A117491.P13219461929174606414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - A000720 (n + 1)

end

end A117491.P13219461929174606414

namespace A117491

/-- `A038098(n+1)-A000720(n+1)` -/
def P13219461929174606414.Spec : Prop :=
  ∀ n, P13219461929174606414.a n = A117491 (n + 1)

end A117491

/-! ## A117491.P13898711123489760815

`A038098(n+1)-∑[A010051(n+1)]`
-/

namespace A117491.P13898711123489760815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117491.P13898711123489760815

namespace A117491

/-- `A038098(n+1)-∑[A010051(n+1)]` -/
def P13898711123489760815.Spec : Prop :=
  ∀ n, P13898711123489760815.a n = A117491 (n + 1)

end A117491

/-! ## A117491.P17549256778236070463

`A038107(n+1)+A079648(n+1)-A000720(n+1)`
-/

namespace A117491.P17549256778236070463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) + (A079648 (n + 1) - A000720 (n + 1))

end

end A117491.P17549256778236070463

namespace A117491

/-- `A038107(n+1)+A079648(n+1)-A000720(n+1)` -/
def P17549256778236070463.Spec : Prop :=
  ∀ n, P17549256778236070463.a n = A117491 (n + 1)

end A117491

/-!
# A117494: a(n) is the number of m's, 1 <= m <= n, where gcd(m,n) is prime.

The programs for A117494, the canonical program `A117494.P1126005537575162480` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117494 has offset 1).

The definition of A117494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117494.P2092213626576291528

`A349338(n+1)-A000010(n+1)`
-/

namespace A117494.P2092213626576291528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349338 (n + 1) - A000010 (n + 1)

end

end A117494.P2092213626576291528

namespace A117494

/-- `A349338(n+1)-A000010(n+1)` -/
def P2092213626576291528.Spec : Prop :=
  ∀ n, P2092213626576291528.a n = A117494 (n + 1)

theorem P2092213626576291528.correct : P2092213626576291528.Spec := by
  intro n
  simp only [A117494, Nat.add_sub_cancel, A117494.P2092213626576291528.a, A117494.P1126005537575162480.f1, A117494.P1126005537575162480.a, A000010, A000010.P4673923239450215316.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A349338, A349338.P1568544451792940700.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117494

/-! ## A117494.P1126005537575162480

`∑{d}[n+1, A000010((n+1)/#)*A010051(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A117494

/-- `∑{d}[n+1, A000010((n+1)/#)*A010051(#)]` -/
def P1126005537575162480.Spec : Prop :=
  ∀ n, P1126005537575162480.a n = A117494 (n + 1)

theorem P1126005537575162480.correct : P1126005537575162480.Spec := by
  intro n
  simp only [A117494, Nat.add_sub_cancel]

end A117494

/-! ## A117494.P4528482466773550598

`∑{d}[n+1, A008683((n+1)/#)*A069359(#)]`
-/

namespace A117494.P4528482466773550598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A069359 d

end

end A117494.P4528482466773550598

namespace A117494

/-- `∑{d}[n+1, A008683((n+1)/#)*A069359(#)]` -/
def P4528482466773550598.Spec : Prop :=
  ∀ n, P4528482466773550598.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P1577964311964691965

`∑{p}[n+1, A000010((n+1)/#)]`
-/

namespace A117494.P1577964311964691965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A117494.P1577964311964691965

namespace A117494

/-- `∑{p}[n+1, A000010((n+1)/#)]` -/
def P1577964311964691965.Spec : Prop :=
  ∀ n, P1577964311964691965.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P9311759642922684203

`∑{d}[n+1, #*A143519((n+1)/#)]`
-/

namespace A117494.P9311759642922684203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P9311759642922684203

namespace A117494

/-- `∑{d}[n+1, #*A143519((n+1)/#)]` -/
def P9311759642922684203.Spec : Prop :=
  ∀ n, P9311759642922684203.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P16918470088231140684

`A087625(n+1)+A010051(n+1)`
-/

namespace A117494.P16918470088231140684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087625 (n + 1) + A010051 (n + 1)

end

end A117494.P16918470088231140684

namespace A117494

/-- `A087625(n+1)+A010051(n+1)` -/
def P16918470088231140684.Spec : Prop :=
  ∀ n, P16918470088231140684.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P17597673094828041162

`gcd(A061007(n+1), A087625(n+1))`
-/

namespace A117494.P17597673094828041162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061007 (n + 1)) (A087625 (n + 1))

end

end A117494.P17597673094828041162

namespace A117494

/-- `gcd(A061007(n+1), A087625(n+1))` -/
def P17597673094828041162.Spec : Prop :=
  ∀ n, (P17597673094828041162.a n : ℤ) = A117494 (n + 1)

end A117494

/-! ## A117494.P9684937480923801489

`∑{d}[n+1, A007432(#)*A062799((n+1)/#)]`
-/

namespace A117494.P9684937480923801489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A062799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P9684937480923801489

namespace A117494

/-- `∑{d}[n+1, A007432(#)*A062799((n+1)/#)]` -/
def P9684937480923801489.Spec : Prop :=
  ∀ n, P9684937480923801489.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P17774198880275404752

`∑{d}[n+1, A007427(#)*A323599((n+1)/#)]`
-/

namespace A117494.P17774198880275404752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A323599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P17774198880275404752

namespace A117494

/-- `∑{d}[n+1, A007427(#)*A323599((n+1)/#)]` -/
def P17774198880275404752.Spec : Prop :=
  ∀ n, P17774198880275404752.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P1439103140134924896

`∑{d}[n+1, A007428(#)*A323600((n+1)/#)]`
-/

namespace A117494.P1439103140134924896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A323600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P1439103140134924896

namespace A117494

/-- `∑{d}[n+1, A007428(#)*A323600((n+1)/#)]` -/
def P1439103140134924896.Spec : Prop :=
  ∀ n, P1439103140134924896.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P4317059875730902392

`∑{d}[n+1, A055615(#)*A347134((n+1)/#)]`
-/

namespace A117494.P4317059875730902392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A347134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P4317059875730902392

namespace A117494

/-- `∑{d}[n+1, A055615(#)*A347134((n+1)/#)]` -/
def P4317059875730902392.Spec : Prop :=
  ∀ n, P4317059875730902392.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P10236943001186431071

`∑{d}[n+1, A046692(#)*A369894((n+1)/#)]`
-/

namespace A117494.P10236943001186431071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A369894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P10236943001186431071

namespace A117494

/-- `∑{d}[n+1, A046692(#)*A369894((n+1)/#)]` -/
def P10236943001186431071.Spec : Prop :=
  ∀ n, P10236943001186431071.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P5984975243347877485

`∑{d}[n+1, A053822(#)*A369904((n+1)/#)]`
-/

namespace A117494.P5984975243347877485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A369904 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P5984975243347877485

namespace A117494

/-- `∑{d}[n+1, A053822(#)*A369904((n+1)/#)]` -/
def P5984975243347877485.Spec : Prop :=
  ∀ n, P5984975243347877485.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P9300455245378460454

`∑{d}[n+1, A126246(#)*A304438((n+1)/#)]`
-/

namespace A117494.P9300455245378460454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126246 d * A304438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P9300455245378460454

namespace A117494

/-- `∑{d}[n+1, A126246(#)*A304438((n+1)/#)]` -/
def P9300455245378460454.Spec : Prop :=
  ∀ n, P9300455245378460454.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P83490550608694012

`∑{d}[n+1, A063659(#)*A392285((n+1)/#)]`
-/

namespace A117494.P83490550608694012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P83490550608694012

namespace A117494

/-- `∑{d}[n+1, A063659(#)*A392285((n+1)/#)]` -/
def P83490550608694012.Spec : Prop :=
  ∀ n, P83490550608694012.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P14350290087862136241

`∑{d}[n+1, A130107(#)*A358769((n+1)/#)]`
-/

namespace A117494.P14350290087862136241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A358769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P14350290087862136241

namespace A117494

/-- `∑{d}[n+1, A130107(#)*A358769((n+1)/#)]` -/
def P14350290087862136241.Spec : Prop :=
  ∀ n, P14350290087862136241.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P17309169865377596216

`∑{d}[n+1, A322078(#)*A328502((n+1)/#)]`
-/

namespace A117494.P17309169865377596216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322078 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P17309169865377596216

namespace A117494

/-- `∑{d}[n+1, A322078(#)*A328502((n+1)/#)]` -/
def P17309169865377596216.Spec : Prop :=
  ∀ n, P17309169865377596216.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P15798245463614813680

`∑{d}[n+1, A358272(#)*A369865((n+1)/#)]`
-/

namespace A117494.P15798245463614813680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358272 d * A369865 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117494.P15798245463614813680

namespace A117494

/-- `∑{d}[n+1, A358272(#)*A369865((n+1)/#)]` -/
def P15798245463614813680.Spec : Prop :=
  ∀ n, P15798245463614813680.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P11458521497502193765

`A349338(n+1)+A002088(n)-A002088(n+1)`
-/

namespace A117494.P11458521497502193765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349338 (n + 1) + (A002088 n - A002088 (n + 1))

end

end A117494.P11458521497502193765

namespace A117494

/-- `A349338(n+1)+A002088(n)-A002088(n+1)` -/
def P11458521497502193765.Spec : Prop :=
  ∀ n, P11458521497502193765.a n = A117494 (n + 1)

end A117494

/-! ## A117494.P6396963603821333955

`A349338(n+1)+A005728(n)-A005728(n+1)`
-/

namespace A117494.P6396963603821333955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349338 (n + 1) + (A005728 n - A005728 (n + 1))

end

end A117494.P6396963603821333955

namespace A117494

/-- `A349338(n+1)+A005728(n)-A005728(n+1)` -/
def P6396963603821333955.Spec : Prop :=
  ∀ n, P6396963603821333955.a n = A117494 (n + 1)

end A117494

/-!
# A117495: Product of a prime number p and the number of primes smaller than p.

The programs for A117495, the canonical program `A117495.P9366338507972242085` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117495 has offset 1).

The definition of A117495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117495.P9366338507972242085

`A000040(n+1)*n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117495

/-- `A000040(n+1)*n` -/
def P9366338507972242085.Spec : Prop :=
  ∀ n, P9366338507972242085.a n = A117495 (n + 1)

theorem P9366338507972242085.correct : P9366338507972242085.Spec := by
  intro n
  simp only [A117495, Nat.add_sub_cancel]

end A117495

/-! ## A117495.P12515692970167698980

`n*p?[round(8*n/7)]`
-/

namespace A117495.P12515692970167698980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117495.P12515692970167698980

namespace A117495

/-- `n*p?[round(8*n/7)]` -/
def P12515692970167698980.Spec : Prop :=
  ∀ n, P12515692970167698980.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P1501136763460429787

`n*Δ[A007504(n)]`
-/

namespace A117495.P1501136763460429787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A117495.P1501136763460429787

namespace A117495

/-- `n*Δ[A007504(n)]` -/
def P1501136763460429787.Spec : Prop :=
  ∀ n, P1501136763460429787.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P14725094523830199661

`lcm(n, Δ[A008348(n)])`
-/

namespace A117495.P14725094523830199661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (f1 (n + 1) - f1 n)

end

end A117495.P14725094523830199661

namespace A117495

/-- `lcm(n, Δ[A008348(n)])` -/
def P14725094523830199661.Spec : Prop :=
  ∀ n, (P14725094523830199661.a n : ℤ) = A117495 (n + 1)

end A117495

/-! ## A117495.P8811966531708192382

`n*A006005(n+1)`
-/

namespace A117495.P8811966531708192382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006005 (n + 1)

end

end A117495.P8811966531708192382

namespace A117495

/-- `n*A006005(n+1)` -/
def P8811966531708192382.Spec : Prop :=
  ∀ n, P8811966531708192382.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P7513084520827551699

`n*sqrt(A001248(n+1))`
-/

namespace A117495.P7513084520827551699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A001248 (n + 1) : ℝ)

end

end A117495.P7513084520827551699

namespace A117495

/-- `n*sqrt(A001248(n+1))` -/
def P7513084520827551699.Spec : Prop :=
  ∀ n, P7513084520827551699.a n = (A117495 (n + 1) : ℝ)

end A117495

/-! ## A117495.P10955034612311039608

`n*∑[A054541(n+1)]`
-/

namespace A117495.P10955034612311039608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117495.P10955034612311039608

namespace A117495

/-- `n*∑[A054541(n+1)]` -/
def P10955034612311039608.Spec : Prop :=
  ∀ n, P10955034612311039608.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P7768270501538067178

`n*(A006093(n+1)+1)`
-/

namespace A117495.P7768270501538067178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006093 (n + 1) + 1)

end

end A117495.P7768270501538067178

namespace A117495

/-- `n*(A006093(n+1)+1)` -/
def P7768270501538067178.Spec : Prop :=
  ∀ n, P7768270501538067178.a n = A117495 (n + 1)

theorem P7768270501538067178.correct : P7768270501538067178.Spec := by
  intro n
  simp only [A117495, Nat.add_sub_cancel, A117495.P7768270501538067178.a, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117495

/-! ## A117495.P5821906625200858461

`n*(A008864(n+1)-1)`
-/

namespace A117495.P5821906625200858461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008864 (n + 1) - 1)

end

end A117495.P5821906625200858461

namespace A117495

/-- `n*(A008864(n+1)-1)` -/
def P5821906625200858461.Spec : Prop :=
  ∀ n, P5821906625200858461.a n = A117495 (n + 1)

theorem P5821906625200858461.correct : P5821906625200858461.Spec := by
  intro n
  simp only [A117495, Nat.add_sub_cancel, A117495.P5821906625200858461.a, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117495

/-! ## A117495.P10309537346886596091

`n*(A040976(n+1)+2)`
-/

namespace A117495.P10309537346886596091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A040976 (n + 1) + 2)

end

end A117495.P10309537346886596091

namespace A117495

/-- `n*(A040976(n+1)+2)` -/
def P10309537346886596091.Spec : Prop :=
  ∀ n, P10309537346886596091.a n = A117495 (n + 1)

theorem P10309537346886596091.correct : P10309537346886596091.Spec := by
  intro n
  simp only [A117495, Nat.add_sub_cancel, A117495.P10309537346886596091.a, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117495

/-! ## A117495.P8480976670348653397

`n*(A055670(n+1)-1)`
-/

namespace A117495.P8480976670348653397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A055670 (n + 1) - 1)

end

end A117495.P8480976670348653397

namespace A117495

/-- `n*(A055670(n+1)-1)` -/
def P8480976670348653397.Spec : Prop :=
  ∀ n, P8480976670348653397.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P10141968078334070206

`n*(A175216(n+1)-1)`
-/

namespace A117495.P10141968078334070206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A175216 (n + 1) - 1)

end

end A117495.P10141968078334070206

namespace A117495

/-- `n*(A175216(n+1)-1)` -/
def P10141968078334070206.Spec : Prop :=
  ∀ n, P10141968078334070206.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P10313424320456956224

`n*(A052147(n+1)-2)`
-/

namespace A117495.P10313424320456956224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052147 (n + 1) - 2)

end

end A117495.P10313424320456956224

namespace A117495

/-- `n*(A052147(n+1)-2)` -/
def P10313424320456956224.Spec : Prop :=
  ∀ n, P10313424320456956224.a n = A117495 (n + 1)

theorem P10313424320456956224.correct : P10313424320456956224.Spec := by
  intro n
  simp only [A117495, Nat.add_sub_cancel, A117495.P10313424320456956224.a, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117495

/-! ## A117495.P10963006906892296410

`n*(A086801(n+1)+3)`
-/

namespace A117495.P10963006906892296410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A086801 (n + 1) + 3)

end

end A117495.P10963006906892296410

namespace A117495

/-- `n*(A086801(n+1)+3)` -/
def P10963006906892296410.Spec : Prop :=
  ∀ n, P10963006906892296410.a n = A117495 (n + 1)

theorem P10963006906892296410.correct : P10963006906892296410.Spec := by
  intro n
  simp only [A117495, Nat.add_sub_cancel, A117495.P10963006906892296410.a, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117495

/-! ## A117495.P9150102098835376391

`n/3*A001748(n+1)`
-/

namespace A117495.P9150102098835376391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A001748 (n + 1) : ℚ)

end

end A117495.P9150102098835376391

namespace A117495

/-- `n/3*A001748(n+1)` -/
def P9150102098835376391.Spec : Prop :=
  ∀ n, P9150102098835376391.a n = (A117495 (n + 1) : ℚ)

theorem P9150102098835376391.correct : P9150102098835376391.Spec := by
  intro n
  simp only [A117495, Nat.add_sub_cancel, A117495.P9150102098835376391.a, A117495.P9366338507972242085.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117495

/-! ## A117495.P15155661384438957005

`n*A000040(-xor(n, -1))`
-/

namespace A117495.P15155661384438957005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (-Int.xor (n : ℤ) (-1)).toNat

end

end A117495.P15155661384438957005

namespace A117495

/-- `n*A000040(-xor(n, -1))` -/
def P15155661384438957005.Spec : Prop :=
  ∀ n, P15155661384438957005.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P9329168483852112277

`n*A000040(1-(n-2*n))`
-/

namespace A117495.P9329168483852112277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A117495.P9329168483852112277

namespace A117495

/-- `n*A000040(1-(n-2*n))` -/
def P9329168483852112277.Spec : Prop :=
  ∀ n, P9329168483852112277.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P9672929767517488641

`A152535(n+1)+A007504(n)`
-/

namespace A117495.P9672929767517488641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1) + A007504 n

end

end A117495.P9672929767517488641

namespace A117495

/-- `A152535(n+1)+A007504(n)` -/
def P9672929767517488641.Spec : Prop :=
  ∀ n, P9672929767517488641.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P18041683065130540785

`A240568(n+1)+A061802(n)`
-/

namespace A117495.P18041683065130540785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240568 (n + 1) + A061802 n

end

end A117495.P18041683065130540785

namespace A117495

/-- `A240568(n+1)+A061802(n)` -/
def P18041683065130540785.Spec : Prop :=
  ∀ n, P18041683065130540785.a n = A117495 (n + 1)

end A117495

/-! ## A117495.P9868571173656732564

`lcm(A000040(n+1), A038608(n))`
-/

namespace A117495.P9868571173656732564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (n + 1)) (A038608 n)

end

end A117495.P9868571173656732564

namespace A117495

/-- `lcm(A000040(n+1), A038608(n))` -/
def P9868571173656732564.Spec : Prop :=
  ∀ n, (P9868571173656732564.a n : ℤ) = A117495 (n + 1)

end A117495

/-!
# A117496: Numbers with no 1's in base 3 & 4 expansions.

The programs for A117496, the canonical program `A117496.P6846209427400603046` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117496 has offset 1).

The definition of A117496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117496.P6846209427400603046

`∩[A005823(n+1), A023709(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A117496

/-- `∩[A005823(n+1), A023709(n+1)]` -/
def P6846209427400603046.Spec : Prop :=
  ∀ n, (P6846209427400603046.a n : ℤ) = A117496 (n + 1)

theorem P6846209427400603046.correct : P6846209427400603046.Spec := by
  intro n
  simp only [A117496, Nat.add_sub_cancel]

end A117496

/-! ## A117496.P5244411885805625912

`filter[A023709(n+1), A088917(#)]`
-/

namespace A117496.P5244411885805625912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088917 (f1 j).toNat = 1) n)

end

end A117496.P5244411885805625912

namespace A117496

/-- `filter[A023709(n+1), A088917(#)]` -/
def P5244411885805625912.Spec : Prop :=
  ∀ n, P5244411885805625912.a n = A117496 (n + 1)

end A117496

/-! ## A117496.P17609054340027617240

`eq[A292371(n)+1, A088917(n)]`
-/

namespace A117496.P17609054340027617240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117496.P17609054340027617240

namespace A117496

/-- `eq[A292371(n)+1, A088917(n)]` -/
def P17609054340027617240.Spec : Prop :=
  ∀ n, (P17609054340027617240.a n : ℤ) = A117496 (n + 1)

end A117496

/-! ## A117496.P2768423725613783261

`eq[A000041(A292371(n)), A088917(n)]`
-/

namespace A117496.P2768423725613783261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A292371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117496.P2768423725613783261

namespace A117496

/-- `eq[A000041(A292371(n)), A088917(n)]` -/
def P2768423725613783261.Spec : Prop :=
  ∀ n, (P2768423725613783261.a n : ℤ) = A117496 (n + 1)

end A117496

/-! ## A117496.P11766582262221700606

`eq[cos(A292371(n)), A290091(n)]`
-/

namespace A117496.P11766582262221700606
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A292371 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A117496.P11766582262221700606

namespace A117496

/-- `eq[cos(A292371(n)), A290091(n)]` -/
def P11766582262221700606.Spec : Prop :=
  ∀ n, (P11766582262221700606.a n : ℤ) = A117496 (n + 1)

end A117496

/-! ## A117496.P3311694840639005542

`eq[2*A292371(n), A316829(n)]`
-/

namespace A117496.P3311694840639005542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117496.P3311694840639005542

namespace A117496

/-- `eq[2*A292371(n), A316829(n)]` -/
def P3311694840639005542.Spec : Prop :=
  ∀ n, (P3311694840639005542.a n : ℤ) = A117496 (n + 1)

end A117496

/-! ## A117496.P9044831248168533260

`eq[A008585(A292371(n)), A316829(n)]`
-/

namespace A117496.P9044831248168533260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A292371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117496.P9044831248168533260

namespace A117496

/-- `eq[A008585(A292371(n)), A316829(n)]` -/
def P9044831248168533260.Spec : Prop :=
  ∀ n, (P9044831248168533260.a n : ℤ) = A117496 (n + 1)

end A117496

/-!
# A117497: Length of shortest sequence b with b(0) = 1, b(i+1) = b(i)+d where d|b(i) and b(k) = n.

The programs for A117497, there is no canonical definition to state claims against.
-/

/-! ## A117497.P6405054679946307446

`A117498(n-∑{d}[n, val(#, 38)]+1)`
-/

namespace A117497.P6405054679946307446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 ((n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation d 38 : ℕ) : ℤ) + 1).toNat

end

end A117497.P6405054679946307446

/-! ## A117497.P14402828723619100270

`A117498(n-val(∏{p}[n, #], 38)+1)`
-/

namespace A117497.P14402828723619100270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 ((n : ℤ) - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 38 : ℤ) + 1).toNat

end

end A117497.P14402828723619100270

/-! ## A117497.P16269118337143366295

`A117498(n+1)-char[A205926(n+1)]`
-/

namespace A117497.P16269118337143366295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A117497.P16269118337143366295

/-! ## A117497.P6991637346087955952

`A117498(n+1)-A102683(A055778(n))`
-/

namespace A117497.P6991637346087955952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (n + 1) - A102683 (A055778 n).toNat

end

end A117497.P6991637346087955952

/-! ## A117497.P5349001505477862174

`A117498(n+1)-char[A014448(A307268(n))]`
-/

namespace A117497.P5349001505477862174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 (A307268 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A117497.P5349001505477862174

/-! ## A117497.P12398769120189283488

`A117498(n+1)-A017850(A193073(n+1))`
-/

namespace A117497.P12398769120189283488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (n + 1) - A017850 (A193073 (n + 1)).toNat

end

end A117497.P12398769120189283488

/-! ## A117497.P15150075185110885142

`A117498(n+1)-A156659(A274428(n+1))`
-/

namespace A117497.P15150075185110885142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (n + 1) - A156659 (A274428 (n + 1)).toNat

end

end A117497.P15150075185110885142

/-! ## A117497.P195005257923538355

`A117498(n+1)-A165052(A023520(n+2))`
-/

namespace A117497.P195005257923538355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (n + 1) - A165052 (A023520 (n + 2)).toNat

end

end A117497.P195005257923538355

/-! ## A117497.P2190133095737018743

`A003313(n+1)+A117498(n+1)-A383329(n+1)`
-/

namespace A117497.P2190133095737018743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (n + 1) + (A117498 (n + 1) - A383329 (n + 1))

end

end A117497.P2190133095737018743

/-! ## A117497.P7441940994570720319

`A117498(A280683(A321478(n+1))+A000027(n+1))`
-/

namespace A117497.P7441940994570720319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117498 (A280683 (A321478 (n + 1)).toNat + A000027 (n + 1)).toNat

end

end A117497.P7441940994570720319

/-!
# A117498: Optimal combination of binary and factor methods for finding an addition chain.

The programs for A117498, there is no canonical definition to state claims against.
-/

/-! ## A117498.P1995173386415097253

`or(char[A026150(n)], A117497(n+1))`
-/

namespace A117498.P1995173386415097253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A117497 (n + 1))

end

end A117498.P1995173386415097253

/-! ## A117498.P16764040128396757130

`or(char[A117439(n)], A117497(n+1))`
-/

namespace A117498.P16764040128396757130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117439 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A117497 (n + 1))

end

end A117498.P16764040128396757130

/-! ## A117498.P11633212664303210156

`A117497(n+1)+char[A205926(n+1)]`
-/

namespace A117498.P11633212664303210156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117497 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A117498.P11633212664303210156

/-! ## A117498.P15852466763174543025

`A117497(n+1)+char[A026046(n+6)]`
-/

namespace A117498.P15852466763174543025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117497 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A117498.P15852466763174543025

/-! ## A117498.P11952348595790781940

`or(char[A282723(n+1)], A117497(n+1))`
-/

namespace A117498.P11952348595790781940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282723 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A117497 (n + 1))

end

end A117498.P11952348595790781940

/-! ## A117498.P13602226860437298264

`or(char[A338086(2*n+3)], A117497(n+1))`
-/

namespace A117498.P13602226860437298264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A117497 (n + 1))

end

end A117498.P13602226860437298264

/-! ## A117498.P4432087168399327692

`A117497(n+1)+A102683(A055778(n))`
-/

namespace A117498.P4432087168399327692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117497 (n + 1) + A102683 (A055778 n).toNat

end

end A117498.P4432087168399327692

/-! ## A117498.P8259147200614620666

`A117497(n+1)+A017850(A193073(n+1))`
-/

namespace A117498.P8259147200614620666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117497 (n + 1) + A017850 (A193073 (n + 1)).toNat

end

end A117498.P8259147200614620666

/-! ## A117498.P10435502802468690109

`A156659(A274428(n+1))+A117497(n+1)`
-/

namespace A117498.P10435502802468690109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (A274428 (n + 1)).toNat + A117497 (n + 1)

end

end A117498.P10435502802468690109

/-! ## A117498.P8613698107272321917

`A165052(A023520(n+2))+A117497(n+1)`
-/

namespace A117498.P8613698107272321917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 (A023520 (n + 2)).toNat + A117497 (n + 1)

end

end A117498.P8613698107272321917

/-! ## A117498.P12704921260506315955

`or(A010052(A052905(n+4)), A117497(n+1))`
-/

namespace A117498.P12704921260506315955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A052905 (n + 4)).toNat) (A117497 (n + 1))

end

end A117498.P12704921260506315955

/-!
# A117499: Number of subsets of {n-1, n, n+1} that sum up to a prime.

The programs for A117499, the canonical program `A117499.P1282103353634337278` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117499 has offset 1).

The definition of A117499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117499.P1282103353634337278

`A168141(2*(n+1))+A168141(A233583(n+2))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A117499

/-- `A168141(2*(n+1))+A168141(A233583(n+2))` -/
def P1282103353634337278.Spec : Prop :=
  ∀ n, P1282103353634337278.a n = A117499 (n + 1)

theorem P1282103353634337278.correct : P1282103353634337278.Spec := by
  intro n
  simp only [A117499, Nat.add_sub_cancel]

end A117499

