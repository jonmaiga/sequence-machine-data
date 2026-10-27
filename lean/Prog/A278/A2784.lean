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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A278400: G.f.: Im((i; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A278400, there is no canonical definition to state claims against.
-/

/-! ## A278400.P3709365182910483976

`A292043(n)-A292042(n)`
-/

namespace A278400.P3709365182910483976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 n - A292042 n

end

end A278400.P3709365182910483976

/-! ## A278400.P12430599713887553390

`-(A292052(n)+A292042(n))`
-/

namespace A278400.P12430599713887553390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A292052 n + A292042 n)

end

end A278400.P12430599713887553390

/-! ## A278400.P1453139251671248247

`2*A292043(n)-A278399(n)`
-/

namespace A278400.P1453139251671248247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292043 n - A278399 n

end

end A278400.P1453139251671248247

/-! ## A278400.P3476396362890336824

`A278399(n)-2*A292042(n)`
-/

namespace A278400.P3476396362890336824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278399 n - 2 * A292042 n

end

end A278400.P3476396362890336824

/-! ## A278400.P6368707061568101514

`A292043(n)-(A292052(n)+A278399(n))`
-/

namespace A278400.P6368707061568101514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 n - (A292052 n + A278399 n)

end

end A278400.P6368707061568101514

/-!
# A278401: G.f.: Re(2/(i; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A278401, there is no canonical definition to state claims against.
-/

/-! ## A278401.P6631749663656431969

`A292136(n)-A292137(n)`
-/

namespace A278401.P6631749663656431969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n - A292137 n

end

end A278401.P6631749663656431969

/-! ## A278401.P9795083956235779470

`2*A292136(n)-A278402(n)`
-/

namespace A278401.P9795083956235779470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292136 n - A278402 n

end

end A278401.P9795083956235779470

/-! ## A278401.P18328787147118259150

`A278402(n)-2*A292137(n)`
-/

namespace A278401.P18328787147118259150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278402 n - 2 * A292137 n

end

end A278401.P18328787147118259150

/-! ## A278401.P9298392492353776185

`A292136(n)+A057428(n)*A292137(n)`
-/

namespace A278401.P9298392492353776185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n + A057428 n * A292137 n

end

end A278401.P9298392492353776185

/-! ## A278401.P5876598241059858850

`A292136(n)+A153881(n+1)*A292137(n)`
-/

namespace A278401.P5876598241059858850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n + A153881 (n + 1) * A292137 n

end

end A278401.P5876598241059858850

/-! ## A278401.P15414241838862120162

`A292136(n)+A008683(A002148(n))*A292137(n)`
-/

namespace A278401.P15414241838862120162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n + A008683 (A002148 n).toNat * A292137 n

end

end A278401.P15414241838862120162

/-! ## A278401.P8805573887860326001

`A292138(n)+A292136(n)`
-/

namespace A278401.P8805573887860326001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292138 n + A292136 n

end

end A278401.P8805573887860326001

/-! ## A278401.P6524415157924779733

`A278402(n)+2*A292138(n)`
-/

namespace A278401.P6524415157924779733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278402 n + 2 * A292138 n

end

end A278401.P6524415157924779733

/-! ## A278401.P7300950597299180844

`A278402(n)+A292138(n)-A292137(n)`
-/

namespace A278401.P7300950597299180844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278402 n + (A292138 n - A292137 n)

end

end A278401.P7300950597299180844

/-!
# A278402: G.f.: Im(2/(i; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A278402, there is no canonical definition to state claims against.
-/

/-! ## A278402.P4002614701161709931

`A292137(n)+A292136(n)`
-/

namespace A278402.P4002614701161709931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292137 n + A292136 n

end

end A278402.P4002614701161709931

/-! ## A278402.P8594569385576549223

`A278401(n)+2*A292137(n)`
-/

namespace A278402.P8594569385576549223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278401 n + 2 * A292137 n

end

end A278402.P8594569385576549223

/-! ## A278402.P6897061162019636333

`2*A292136(n)-A278401(n)`
-/

namespace A278402.P6897061162019636333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292136 n - A278401 n

end

end A278402.P6897061162019636333

/-! ## A278402.P13095286385081228404

`A292136(n)-A057428(n)*A292137(n)`
-/

namespace A278402.P13095286385081228404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n - A057428 n * A292137 n

end

end A278402.P13095286385081228404

/-! ## A278402.P5094354337207551571

`A292136(n)-(char[A016961(n)]-A292137(n))`
-/

namespace A278402.P5094354337207551571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016961 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A292137 n)

end

end A278402.P5094354337207551571

/-! ## A278402.P16033502682861392053

`A292136(n)-A008683(A002148(n))*A292137(n)`
-/

namespace A278402.P16033502682861392053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n - A008683 (A002148 n).toNat * A292137 n

end

end A278402.P16033502682861392053

/-! ## A278402.P9833057013540572394

`A292136(n)-A292138(n)`
-/

namespace A278402.P9833057013540572394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n - A292138 n

end

end A278402.P9833057013540572394

/-! ## A278402.P6830046552961152278

`A278401(n)-2*A292138(n)`
-/

namespace A278402.P6830046552961152278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278401 n - 2 * A292138 n

end

end A278402.P6830046552961152278

/-! ## A278402.P11473209071739904727

`A278401(n)+A292137(n)-A292138(n)`
-/

namespace A278402.P11473209071739904727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278401 n + (A292137 n - A292138 n)

end

end A278402.P11473209071739904727

/-!
# A278403: a(n) = Sum_{d|n} d^2 * (d+1)/2.

The programs for A278403, the canonical program `A278403.P2901026274186559840` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278403 has offset 1).

The definition of A278403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278403.P2901026274186559840

`(A001158(n+1)+A001157(n+1))/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A278403

/-- `(A001158(n+1)+A001157(n+1))/2` -/
def P2901026274186559840.Spec : Prop :=
  ∀ n, P2901026274186559840.a n = (A278403 (n + 1) : ℚ)

end A278403

/-! ## A278403.P5653815978590694002

`A092344(n+1)/2`
-/

namespace A278403.P5653815978590694002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092344 (n + 1) : ℚ) / 2

end

end A278403.P5653815978590694002

namespace A278403

/-- `A092344(n+1)/2` -/
def P5653815978590694002.Spec : Prop :=
  ∀ n, P5653815978590694002.a n = (A278403 (n + 1) : ℚ)

end A278403

/-! ## A278403.P13252681327099517620

`∑{d}[n+1, #*A000217(#)]`
-/

namespace A278403.P13252681327099517620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000217 d

end

end A278403.P13252681327099517620

namespace A278403

/-- `∑{d}[n+1, #*A000217(#)]` -/
def P13252681327099517620.Spec : Prop :=
  ∀ n, P13252681327099517620.a n = A278403 (n + 1)

end A278403

/-! ## A278403.P9152786602170478764

`A363604(n+1)+A320941(n+1)`
-/

namespace A278403.P9152786602170478764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) + A320941 (n + 1)

end

end A278403.P9152786602170478764

namespace A278403

/-- `A363604(n+1)+A320941(n+1)` -/
def P9152786602170478764.Spec : Prop :=
  ∀ n, P9152786602170478764.a n = A278403 (n + 1)

end A278403

/-! ## A278403.P15598523862329465981

`A001157(n+1)+A092349(n+1)/2`
-/

namespace A278403.P15598523862329465981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) + (A092349 (n + 1) : ℚ) / 2

end

end A278403.P15598523862329465981

namespace A278403

/-- `A001157(n+1)+A092349(n+1)/2` -/
def P15598523862329465981.Spec : Prop :=
  ∀ n, P15598523862329465981.a n = (A278403 (n + 1) : ℚ)

end A278403

/-! ## A278403.P17920249534745038594

`A007437(n+1)+A092348(n+1)/2`
-/

namespace A278403.P17920249534745038594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007437 (n + 1) : ℚ) + (A092348 (n + 1) : ℚ) / 2

end

end A278403.P17920249534745038594

namespace A278403

/-- `A007437(n+1)+A092348(n+1)/2` -/
def P17920249534745038594.Spec : Prop :=
  ∀ n, P17920249534745038594.a n = (A278403 (n + 1) : ℚ)

end A278403

/-! ## A278403.P14215384049993481302

`A001158(n+1)-A092349(n+1)/2`
-/

namespace A278403.P14215384049993481302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) - (A092349 (n + 1) : ℚ) / 2

end

end A278403.P14215384049993481302

namespace A278403

/-- `A001158(n+1)-A092349(n+1)/2` -/
def P14215384049993481302.Spec : Prop :=
  ∀ n, P14215384049993481302.a n = (A278403 (n + 1) : ℚ)

end A278403

/-! ## A278403.P17893485492378392126

`∑{d}[n+1, A000290(#)*A056789((n+1)/#)]`
-/

namespace A278403.P17893485492378392126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A056789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A278403.P17893485492378392126

namespace A278403

/-- `∑{d}[n+1, A000290(#)*A056789((n+1)/#)]` -/
def P17893485492378392126.Spec : Prop :=
  ∀ n, P17893485492378392126.a n = A278403 (n + 1)

end A278403

/-! ## A278403.P16394047702210570673

`∑{d}[n+1, A051193(#)*A057660((n+1)/#)]`
-/

namespace A278403.P16394047702210570673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051193 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A278403.P16394047702210570673

namespace A278403

/-- `∑{d}[n+1, A051193(#)*A057660((n+1)/#)]` -/
def P16394047702210570673.Spec : Prop :=
  ∀ n, P16394047702210570673.a n = A278403 (n + 1)

end A278403

/-! ## A278403.P15389174632730130645

`∑{d}[n+1, A007433(#)*A332658((n+1)/#)]`
-/

namespace A278403.P15389174632730130645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A332658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A278403.P15389174632730130645

namespace A278403

/-- `∑{d}[n+1, A007433(#)*A332658((n+1)/#)]` -/
def P15389174632730130645.Spec : Prop :=
  ∀ n, P15389174632730130645.a n = A278403 (n + 1)

end A278403

/-! ## A278403.P7410212406950795231

`∑{d}[n+1, A002411(#)]`
-/

namespace A278403.P7410212406950795231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002411 d

end

end A278403.P7410212406950795231

namespace A278403

/-- `∑{d}[n+1, A002411(#)]` -/
def P7410212406950795231.Spec : Prop :=
  ∀ n, P7410212406950795231.a n = A278403 (n + 1)

end A278403

/-! ## A278403.P1815198760415971422

`∑{d}[n+1, #*(A000124(#)-1)]`
-/

namespace A278403.P1815198760415971422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A000124 d - 1)

end

end A278403.P1815198760415971422

namespace A278403

/-- `∑{d}[n+1, #*(A000124(#)-1)]` -/
def P1815198760415971422.Spec : Prop :=
  ∀ n, P1815198760415971422.a n = A278403 (n + 1)

end A278403

/-! ## A278403.P14443529742338573732

`A363604(n+1)+A363604(n+1)+A059358(n+1)`
-/

namespace A278403.P14443529742338573732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) + (A363604 (n + 1) + A059358 (n + 1))

end

end A278403.P14443529742338573732

namespace A278403

/-- `A363604(n+1)+A363604(n+1)+A059358(n+1)` -/
def P14443529742338573732.Spec : Prop :=
  ∀ n, P14443529742338573732.a n = A278403 (n + 1)

end A278403

/-! ## A278403.P9076672880424255462

`A059358(n+1)+A320941(n+1)-A007437(n+1)`
-/

namespace A278403.P9076672880424255462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) + (A320941 (n + 1) - A007437 (n + 1))

end

end A278403.P9076672880424255462

namespace A278403

/-- `A059358(n+1)+A320941(n+1)-A007437(n+1)` -/
def P9076672880424255462.Spec : Prop :=
  ∀ n, P9076672880424255462.a n = A278403 (n + 1)

end A278403

/-!
# A278404: Greater number in the least prime-semiprime gap of size n.

The programs for A278404, there is no canonical definition to state claims against.
-/

/-! ## A278404.P4898316333716585871

`A278351(n+1)+1+n`
-/

namespace A278404.P4898316333716585871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278351 (n + 1) + 1 + (n : ℤ)

end

end A278404.P4898316333716585871

/-! ## A278404.P15729056812453061026

`A179464(A278351(n+1))`
-/

namespace A278404.P15729056812453061026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179464 (A278351 (n + 1)).toNat

end

end A278404.P15729056812453061026

/-! ## A278404.P486481990173715523

`A020725(A278351(n+1)+n)`
-/

namespace A278404.P486481990173715523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A278351 (n + 1) + (n : ℤ)).toNat

end

end A278404.P486481990173715523

/-! ## A278404.P4009002715755071467

`A065475(A278351(n+1)+n)`
-/

namespace A278404.P4009002715755071467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A278351 (n + 1) + (n : ℤ)).toNat

end

end A278404.P4009002715755071467

/-! ## A278404.P14653301709586609552

`A114637(A278351(n+1)+n)`
-/

namespace A278404.P14653301709586609552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (A278351 (n + 1) + (n : ℤ)).toNat

end

end A278404.P14653301709586609552

/-!
# A278405: a(n) = Sum_{k=0..n} binomial(n,2k)^2*binomial(n-k,k).

The programs for A278405, there is no canonical definition to state claims against.
-/

/-! ## A278405.P15623214945047146101

`A026021(n!)%A155176(n+1)`
-/

namespace A278405.P15623214945047146101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026021 (Nat.factorial n)) (A155176 (n + 1))

end

end A278405.P15623214945047146101

/-!
# A278406: G.f.: x^2 * f''(x), where f(x) = Product_{k>=1} 1 / (1 - x^k).

The programs for A278406, there is no canonical definition to state claims against.
-/

/-! ## A278406.P10744944027462177180

`n*(n-1)*A000041(n)`
-/

namespace A278406.P10744944027462177180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) * A000041 n

end

end A278406.P10744944027462177180

/-! ## A278406.P14217886879114727013

`(n-1)*A066186(n)`
-/

namespace A278406.P14217886879114727013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A066186 n

end

end A278406.P14217886879114727013

/-! ## A278406.P5642552459183182416

`C(n, 2)*A139582(n)`
-/

namespace A278406.P5642552459183182416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A139582 n

end

end A278406.P5642552459183182416

/-! ## A278406.P13551230267222716921

`(n-1)/2*A220909(n)`
-/

namespace A278406.P13551230267222716921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (A220909 n : ℚ)

end

end A278406.P13551230267222716921

/-! ## A278406.P16571001156325335053

`(n-1)*n*∑[A002865(n)]`
-/

namespace A278406.P16571001156325335053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A278406.P16571001156325335053

/-! ## A278406.P15338945913551820119

`A139582(n)*A161680(n)`
-/

namespace A278406.P15338945913551820119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n * A161680 n

end

end A278406.P15338945913551820119

/-! ## A278406.P11320661926195165327

`2*A000041(n)*A161680(n)`
-/

namespace A278406.P11320661926195165327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000041 n * A161680 n)

end

end A278406.P11320661926195165327

/-! ## A278406.P500839741816193335

`A000041(n)*A279019(n+4)`
-/

namespace A278406.P500839741816193335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A279019 (n + 4)

end

end A278406.P500839741816193335

/-! ## A278406.P10024019374794770673

`(A000217(n)-n)*A139582(n)`
-/

namespace A278406.P10024019374794770673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - (n : ℤ)) * A139582 n

end

end A278406.P10024019374794770673

/-! ## A278406.P16187949744755293382

`n*A000041(n)*A023443(n)`
-/

namespace A278406.P16187949744755293382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000041 n * A023443 n)

end

end A278406.P16187949744755293382

/-! ## A278406.P16126462228306656027

`abs(n*A000041(n)*A024000(n))`
-/

namespace A278406.P16126462228306656027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A000041 n * A024000 n)|

end

end A278406.P16126462228306656027

/-! ## A278406.P4228702045816561713

`(A047967(n)+A000009(n))*(n²-n)`
-/

namespace A278406.P4228702045816561713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047967 n + A000009 n) * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A278406.P4228702045816561713

/-! ## A278406.P5109658204185887469

`A000041(n)/A000009(n)*A278407(n)`
-/

namespace A278406.P5109658204185887469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) / (A000009 n : ℚ) * (A278407 n : ℚ)

end

end A278406.P5109658204185887469

/-! ## A278406.P14702807331757488494

`A130519(2*n)*A139582(n)`
-/

namespace A278406.P14702807331757488494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (2 * n) * A139582 n

end

end A278406.P14702807331757488494

/-! ## A278406.P7027664819045667901

`(n-1)*n*record[A035363(n+1)]`
-/

namespace A278406.P7027664819045667901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A278406.P7027664819045667901

/-! ## A278406.P10256873915110198775

`A000041(n)*A182568(2*n+1)`
-/

namespace A278406.P10256873915110198775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A182568 (2 * n + 1)

end

end A278406.P10256873915110198775

/-! ## A278406.P12606374681877522282

`(n²-n)*record[A035377(n+1)]`
-/

namespace A278406.P12606374681877522282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278406.P12606374681877522282

/-! ## A278406.P18155758822470421313

`A066186(n)²/A000041(n)-A066186(n)`
-/

namespace A278406.P18155758822470421313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066186 n ^ 2 : ℚ) / (A000041 n : ℚ) - (A066186 n : ℚ)

end

end A278406.P18155758822470421313

/-! ## A278406.P5619521679771015065

`(A332284(n)+A332283(n))*(n²-n)`
-/

namespace A278406.P5619521679771015065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332284 n + A332283 n) * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A278406.P5619521679771015065

/-!
# A278407: G.f.: x^2 * f''(x), where f(x) = Product_{k>=1} (1 + x^k).

The programs for A278407, there is no canonical definition to state claims against.
-/

/-! ## A278407.P15239051538792692560

`n*(n-1)*A000009(n)`
-/

namespace A278407.P15239051538792692560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) * A000009 n

end

end A278407.P15239051538792692560

/-! ## A278407.P10208565022545352262

`(n-1)*A066189(n)`
-/

namespace A278407.P10208565022545352262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A066189 n

end

end A278407.P10208565022545352262

/-! ## A278407.P14596399776987530431

`C(n, 2)*A087135(n)`
-/

namespace A278407.P14596399776987530431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A087135 n

end

end A278407.P14596399776987530431

/-! ## A278407.P522929081218964462

`abs((n²-n)*A081360(n))`
-/

namespace A278407.P522929081218964462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (n : ℤ)) * A081360 n|

end

end A278407.P522929081218964462

/-! ## A278407.P1565743636136808535

`(A111133(n)+1)*(n²-n)`
-/

namespace A278407.P1565743636136808535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111133 n + 1) * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A278407.P1565743636136808535

/-! ## A278407.P1498108851254019190

`A087135(n)*A161680(n)`
-/

namespace A278407.P1498108851254019190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n * A161680 n

end

end A278407.P1498108851254019190

/-! ## A278407.P14153473602296659828

`2*A000009(n)*A161680(n)`
-/

namespace A278407.P14153473602296659828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000009 n * A161680 n)

end

end A278407.P14153473602296659828

/-! ## A278407.P6466546653098923234

`A000009(n)*A279019(n+4)`
-/

namespace A278407.P6466546653098923234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A279019 (n + 4)

end

end A278407.P6466546653098923234

/-! ## A278407.P3871824117511063016

`(A000217(n)-n)*A087135(n)`
-/

namespace A278407.P3871824117511063016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - (n : ℤ)) * A087135 n

end

end A278407.P3871824117511063016

/-! ## A278407.P11617329725779542044

`n*A000009(n)*A023443(n)`
-/

namespace A278407.P11617329725779542044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000009 n * A023443 n)

end

end A278407.P11617329725779542044

/-! ## A278407.P8670006105399467757

`(A000041(n)-A047967(n))*(n²-n)`
-/

namespace A278407.P8670006105399467757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - A047967 n) * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A278407.P8670006105399467757

/-! ## A278407.P5092837400319381039

`A000009(n)/A000041(n)*A278406(n)`
-/

namespace A278407.P5092837400319381039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A000041 n : ℚ) * (A278406 n : ℚ)

end

end A278407.P5092837400319381039

/-! ## A278407.P16282173562661290103

`A087135(n)*A130519(2*n)`
-/

namespace A278407.P16282173562661290103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n * A130519 (2 * n)

end

end A278407.P16282173562661290103

/-! ## A278407.P10834645930394572211

`n*A035457(2*n)*A289207(n+1)`
-/

namespace A278407.P10834645930394572211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A035457 (2 * n) * A289207 (n + 1))

end

end A278407.P10834645930394572211

/-!
# A278408: Number of nX2 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278408, there is no canonical definition to state claims against.
-/

/-! ## A278408.P9800811590438580086

`A278414(∑[n+1]+2)`
-/

namespace A278408.P9800811590438580086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278408.P9800811590438580086

/-! ## A278408.P6997935607258612216

`record[A278414(A133263(A230414(n)))]`
-/

namespace A278408.P6997935607258612216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A133263 (A230414 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278408.P6997935607258612216

/-! ## A278408.P2890694456095833591

`record[A278414(∑[A152271(n)])]`
-/

namespace A278408.P2890694456095833591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278408.P2890694456095833591

/-! ## A278408.P12695279918469656845

`record[A278414(A117142(n+1))]`
-/

namespace A278408.P12695279918469656845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278408.P12695279918469656845

/-! ## A278408.P8016792307775781899

`record[A278414(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A278408.P8016792307775781899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278408.P8016792307775781899

/-!
# A278409: Number of n X 3 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278409, there is no canonical definition to state claims against.
-/

/-! ## A278409.P4094091972344251662

`A278414(∑[n+2]+4)`
-/

namespace A278409.P4094091972344251662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278409.P4094091972344251662

/-! ## A278409.P8280776437946609732

`A278414(A167614(n+1))+A025439(n)`
-/

namespace A278409.P8280776437946609732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A167614 (n + 1)).toNat + A025439 n

end

end A278409.P8280776437946609732

/-! ## A278409.P744887791171918413

`A278414(A167614(n+1))+A185284(n)`
-/

namespace A278409.P744887791171918413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A167614 (n + 1)).toNat + A185284 n

end

end A278409.P744887791171918413

/-! ## A278409.P16994192495988877106

`A278414(A167614(n+1))+A235044(n)`
-/

namespace A278409.P16994192495988877106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A167614 (n + 1)).toNat + A235044 n

end

end A278409.P16994192495988877106

/-! ## A278409.P13803739405370400294

`or(A001878(n), A278414(A167614(n+1)))`
-/

namespace A278409.P13803739405370400294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001878 n) (A278414 (A167614 (n + 1)).toNat)

end

end A278409.P13803739405370400294

/-!
# A278410: Number of nX4 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278410, there is no canonical definition to state claims against.
-/

/-! ## A278410.P13395153965443555444

`A278414(A141214(n)+7)`
-/

namespace A278410.P13395153965443555444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A141214 n + 7).toNat

end

end A278410.P13395153965443555444

/-! ## A278410.P15844819701046881228

`A278414(A052905(n)+9)`
-/

namespace A278410.P15844819701046881228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A052905 n + 9).toNat

end

end A278410.P15844819701046881228

/-! ## A278410.P9020815464174217786

`A278414(A055999(n)+10)`
-/

namespace A278410.P9020815464174217786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A055999 n + 10).toNat

end

end A278410.P9020815464174217786

/-! ## A278410.P14369951000653955992

`A278414(A167614(n+2)+1)`
-/

namespace A278410.P14369951000653955992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A167614 (n + 2) + 1).toNat

end

end A278410.P14369951000653955992

/-! ## A278410.P14128067828535025008

`A278414(A000217(n+3)+4)`
-/

namespace A278410.P14128067828535025008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A000217 (n + 3) + 4).toNat

end

end A278410.P14128067828535025008

/-!
# A278411: Number of nX5 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278411, there is no canonical definition to state claims against.
-/

/-! ## A278411.P8727075839662462094

`A278414(A000217(n+4)+5)`
-/

namespace A278411.P8727075839662462094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A000217 (n + 4) + 5).toNat

end

end A278411.P8727075839662462094

/-! ## A278411.P2984991354904891898

`A278414(Δ[A264443(n)])`
-/

namespace A278411.P2984991354904891898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (f1 (n + 1) - f1 n).toNat

end

end A278411.P2984991354904891898

/-! ## A278411.P8842717083361572237

`A278414(A374005(n+1))`
-/

namespace A278411.P8842717083361572237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A374005 (n + 1)).toNat

end

end A278411.P8842717083361572237

/-! ## A278411.P73451556406168754

`A278414(A046691(n+3))`
-/

namespace A278411.P73451556406168754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A046691 (n + 3)).toNat

end

end A278411.P73451556406168754

/-! ## A278411.P13670391507102385722

`A278414(eq[4, A193592(n)])`
-/

namespace A278411.P13670391507102385722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278411.P13670391507102385722

/-!
# A278412: Number of nX6 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278412, there is no canonical definition to state claims against.
-/

/-! ## A278412.P4310367543375166937

`A278414(A374007(n+1))`
-/

namespace A278412.P4310367543375166937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A374007 (n + 1)).toNat

end

end A278412.P4310367543375166937

/-! ## A278412.P11987151046769603033

`A278414(A052905(n+3))`
-/

namespace A278412.P11987151046769603033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A052905 (n + 3)).toNat

end

end A278412.P11987151046769603033

/-! ## A278412.P6259765503033929786

`A278414(eq[3, A219347(n)])`
-/

namespace A278412.P6259765503033929786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278412.P6259765503033929786

/-! ## A278412.P4886891814848134714

`A278414(eq[5, A193592(n)])`
-/

namespace A278412.P4886891814848134714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278412.P4886891814848134714

/-! ## A278412.P16415085181687265998

`A278414(eq[8, A258709(n)])`
-/

namespace A278412.P16415085181687265998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278412.P16415085181687265998

/-!
# A278413: Number of nX7 0..2 arrays with rows and columns in lexicographic nondecreasing order but with exactly two mistakes.

The programs for A278413, there is no canonical definition to state claims against.
-/

/-! ## A278413.P7075740969319749386

`A278414(A374008(n+1))`
-/

namespace A278413.P7075740969319749386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (A374008 (n + 1)).toNat

end

end A278413.P7075740969319749386

/-! ## A278413.P9197914077637321762

`A278414(eq[6, A193592(n)])`
-/

namespace A278413.P9197914077637321762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278413.P9197914077637321762

/-!
# A278416: Number of meanders (walks starting at the origin and ending at any altitude >= 0 that may touch but never go below the x-axis) with n steps from {-4,-3,-2,-1,1,2,3,4}.

The programs for A278416, there is no canonical definition to state claims against.
-/

/-! ## A278416.P438998582810201733

`A246694(2*n*(3*n+1)*n!)`
-/

namespace A278416.P438998582810201733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246694 (2 * n * ((3 * n + 1) * Nat.factorial n))

end

end A278416.P438998582810201733

/-!
# A278417: a(n) = n*((2+sqrt(3))^n + (2-sqrt(3))^n)/2.

The programs for A278417, the canonical program `A278417.P6218064781923512342` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278417 has offset 0).

The definition of A278417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278417.P6218064781923512342

`7*a(n-1)-10*a(n-2)-10*a(n-3)+7*a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=14, a(3)=78, a(4)=388`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A278417

/-- `7*a(n-1)-10*a(n-2)-10*a(n-3)+7*a(n-4)-a(n-5)` -/
def P6218064781923512342.Spec : Prop :=
  ∀ n, P6218064781923512342.a n = A278417 n

theorem P6218064781923512342.correct : P6218064781923512342.Spec := by
  intro n
  simp only [A278417]

end A278417

/-! ## A278417.P226301360844246807

`(floor((sqrt(3)+2)^n)+1)*n/2`
-/

namespace A278417.P226301360844246807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1 : ℚ) * ((n : ℚ) / 2)

end

end A278417.P226301360844246807

namespace A278417

/-- `(floor((sqrt(3)+2)^n)+1)*n/2` -/
def P226301360844246807.Spec : Prop :=
  ∀ n, P226301360844246807.a n = (A278417 n : ℚ)

end A278417

/-! ## A278417.P11885834245542730398

`abs(n*(∑[4*a(n-1)-a(n-2)]+2))` with `a(0)=-1, a(1)=1`
-/

namespace A278417.P11885834245542730398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 2)|

end

end A278417.P11885834245542730398

namespace A278417

/-- `abs(n*(∑[4*a(n-1)-a(n-2)]+2))` -/
def P11885834245542730398.Spec : Prop :=
  ∀ n, P11885834245542730398.a n = A278417 n

end A278417

/-! ## A278417.P15616437763658046147

`floor(n*(∑[4*a(n-1)-a(n-2)]+2))` with `a(0)=-1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A278417.P15616437763658046147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278417.P15616437763658046147

namespace A278417

/-- `floor(n*(∑[4*a(n-1)-a(n-2)]+2))` -/
def P15616437763658046147.Spec : Prop :=
  ∀ n, P15616437763658046147.a n = A278417 n

end A278417

/-! ## A278417.P7723510567995699851

`ceil(n*(∑[4*a(n-1)-a(n-2)]+2))` with `a(0)=-1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A278417.P7723510567995699851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278417.P7723510567995699851

namespace A278417

/-- `ceil(n*(∑[4*a(n-1)-a(n-2)]+2))` -/
def P7723510567995699851.Spec : Prop :=
  ∀ n, P7723510567995699851.a n = A278417 n

end A278417

/-! ## A278417.P6485464180130601848

`round(n*(∑[4*a(n-1)-a(n-2)]+2))` with `a(0)=-1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A278417.P6485464180130601848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278417.P6485464180130601848

namespace A278417

/-- `round(n*(∑[4*a(n-1)-a(n-2)]+2))` -/
def P6485464180130601848.Spec : Prop :=
  ∀ n, P6485464180130601848.a n = A278417 n

end A278417

/-! ## A278417.P10673194775150289321

`A020871(n)-n`
-/

namespace A278417.P10673194775150289321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020871 n - (n : ℤ)

end

end A278417.P10673194775150289321

namespace A278417

/-- `A020871(n)-n` -/
def P10673194775150289321.Spec : Prop :=
  ∀ n, P10673194775150289321.a n = A278417 n

end A278417

/-! ## A278417.P14651847107367425420

`lcm(2, n*A001075(n))`
-/

namespace A278417.P14651847107367425420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A001075 n)

end

end A278417.P14651847107367425420

namespace A278417

/-- `lcm(2, n*A001075(n))` -/
def P14651847107367425420.Spec : Prop :=
  ∀ n, (P14651847107367425420.a n : ℤ) = A278417 n

end A278417

/-! ## A278417.P1460158680922438014

`n*A092184(n)+n`
-/

namespace A278417.P1460158680922438014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A092184 n + (n : ℤ)

end

end A278417.P1460158680922438014

namespace A278417

/-- `n*A092184(n)+n` -/
def P1460158680922438014.Spec : Prop :=
  ∀ n, P1460158680922438014.a n = A278417 n

end A278417

/-! ## A278417.P7769416337710044586

`n*A121401(n)-n`
-/

namespace A278417.P7769416337710044586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A121401 n - (n : ℤ)

end

end A278417.P7769416337710044586

namespace A278417

/-- `n*A121401(n)-n` -/
def P7769416337710044586.Spec : Prop :=
  ∀ n, P7769416337710044586.a n = A278417 n

end A278417

/-! ## A278417.P13397944974725220696

`abs(n*A108413(2*n+1))`
-/

namespace A278417.P13397944974725220696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A108413 (2 * n + 1)|

end

end A278417.P13397944974725220696

namespace A278417

/-- `abs(n*A108413(2*n+1))` -/
def P13397944974725220696.Spec : Prop :=
  ∀ n, P13397944974725220696.a n = A278417 n

end A278417

/-! ## A278417.P8045683827773636234

`A000035(2*n)+n*A005246(2*n+1)`
-/

namespace A278417.P8045683827773636234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (n : ℤ) * A005246 (2 * n + 1)

end

end A278417.P8045683827773636234

namespace A278417

/-- `A000035(2*n)+n*A005246(2*n+1)` -/
def P8045683827773636234.Spec : Prop :=
  ∀ n, P8045683827773636234.a n = A278417 n

end A278417

/-! ## A278417.P17254246130021742684

`A077957(2*n+1)+n*A005246(2*n+1)`
-/

namespace A278417.P17254246130021742684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n + 1) + (n : ℤ) * A005246 (2 * n + 1)

end

end A278417.P17254246130021742684

namespace A278417

/-- `A077957(2*n+1)+n*A005246(2*n+1)` -/
def P17254246130021742684.Spec : Prop :=
  ∀ n, P17254246130021742684.a n = A278417 n

end A278417

/-! ## A278417.P4566583928566094575

`n*A003500(n)/2`
-/

namespace A278417.P4566583928566094575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A003500 n : ℚ) / 2

end

end A278417.P4566583928566094575

namespace A278417

/-- `n*A003500(n)/2` -/
def P4566583928566094575.Spec : Prop :=
  ∀ n, P4566583928566094575.a n = (A278417 n : ℚ)

end A278417

/-! ## A278417.P10057128444471644584

`n*A151961(n+1)/3`
-/

namespace A278417.P10057128444471644584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A151961 (n + 1) : ℚ) / 3

end

end A278417.P10057128444471644584

namespace A278417

/-- `n*A151961(n+1)/3` -/
def P10057128444471644584.Spec : Prop :=
  ∀ n, P10057128444471644584.a n = (A278417 n : ℚ)

end A278417

/-! ## A278417.P9071303769177015608

`n*A321119(2*n)/4`
-/

namespace A278417.P9071303769177015608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A321119 (2 * n) : ℚ) / 4

end

end A278417.P9071303769177015608

namespace A278417

/-- `n*A321119(2*n)/4` -/
def P9071303769177015608.Spec : Prop :=
  ∀ n, P9071303769177015608.a n = (A278417 n : ℚ)

end A278417

/-! ## A278417.P17933968341774123454

`A005246(2*n+1)*A052928(2*n)/2`
-/

namespace A278417.P17933968341774123454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005246 (2 * n + 1) * A052928 (2 * n) : ℚ) / 2

end

end A278417.P17933968341774123454

namespace A278417

/-- `A005246(2*n+1)*A052928(2*n)/2` -/
def P17933968341774123454.Spec : Prop :=
  ∀ n, P17933968341774123454.a n = (A278417 n : ℚ)

end A278417

/-! ## A278417.P4408099303843707427

`2*n*A001075(n)/A020639(A000040(n+1)+1)`
-/

namespace A278417.P4408099303843707427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) * A001075 n) : ℚ) / (A020639 (A000040 (n + 1) + 1).toNat : ℚ)

end

end A278417.P4408099303843707427

namespace A278417

/-- `2*n*A001075(n)/A020639(A000040(n+1)+1)` -/
def P4408099303843707427.Spec : Prop :=
  ∀ n, P4408099303843707427.a n = (A278417 n : ℚ)

end A278417

/-! ## A278417.P8743726573606113892

`n*A026150(2*n)/A011782(n+1)`
-/

namespace A278417.P8743726573606113892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A026150 (2 * n) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A278417.P8743726573606113892

namespace A278417

/-- `n*A026150(2*n)/A011782(n+1)` -/
def P8743726573606113892.Spec : Prop :=
  ∀ n, P8743726573606113892.a n = (A278417 n : ℚ)

end A278417

/-! ## A278417.P7467556948471388144

`n*A026150(2*n)/A016116(2*n)`
-/

namespace A278417.P7467556948471388144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A026150 (2 * n) : ℚ) / (A016116 (2 * n) : ℚ)

end

end A278417.P7467556948471388144

namespace A278417

/-- `n*A026150(2*n)/A016116(2*n)` -/
def P7467556948471388144.Spec : Prop :=
  ∀ n, P7467556948471388144.a n = (A278417 n : ℚ)

end A278417

/-!
# A278420: a(n) = (A278399(n)^2 + A278400(n)^2)/2.

The programs for A278420, there is no canonical definition to state claims against.
-/

/-! ## A278420.P5532965729409027101

`(A278399(n)²+A278400(n)²)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278420.P5532965729409027101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278399 n ^ 2 + A278400 n ^ 2 : ℚ) / 2

end

end A278420.P5532965729409027101

/-! ## A278420.P3610484323359866566

`A292042(n)²+A292043(n)²`
-/

namespace A278420.P3610484323359866566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 n ^ 2 + A292043 n ^ 2

end

end A278420.P3610484323359866566

/-! ## A278420.P3149607176858776284

`A292042(n)²+A292052(n)²`
-/

namespace A278420.P3149607176858776284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 n ^ 2 + A292052 n ^ 2

end

end A278420.P3149607176858776284

/-! ## A278420.P15469925669068499606

`A292042(n)²-A292043(n)*A292052(n)`
-/

namespace A278420.P15469925669068499606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 n ^ 2 - A292043 n * A292052 n

end

end A278420.P15469925669068499606

/-! ## A278420.P4817952158081538778

`(A278399(n)-A292042(n))²+A292042(n)²`
-/

namespace A278420.P4817952158081538778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A278399 n - A292042 n) ^ 2 + A292042 n ^ 2

end

end A278420.P4817952158081538778

/-! ## A278420.P1897437362977390614

`(A278399(n)-A292043(n))²+A292043(n)²`
-/

namespace A278420.P1897437362977390614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A278399 n - A292043 n) ^ 2 + A292043 n ^ 2

end

end A278420.P1897437362977390614

/-!
# A278421: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A278421, there is no canonical definition to state claims against.
-/

/-! ## A278421.P6646047324191293916

`A007088(A278423(n))`
-/

namespace A278421.P6646047324191293916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278423 n).toNat

end

end A278421.P6646047324191293916

/-! ## A278421.P3987288839317035041

`A185544(2*A278423(n))`
-/

namespace A278421.P3987288839317035041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278423 n).toNat

end

end A278421.P3987288839317035041

/-! ## A278421.P16832388818225797497

`A278659(A004891(n+1))`
-/

namespace A278421.P16832388818225797497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278659 (A004891 (n + 1)).toNat

end

end A278421.P16832388818225797497

/-! ## A278421.P1171413646160290164

`A278659(A004902(n+1))`
-/

namespace A278421.P1171413646160290164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278659 (A004902 (n + 1)).toNat

end

end A278421.P1171413646160290164

/-!
# A278422: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A278422, there is no canonical definition to state claims against.
-/

/-! ## A278422.P17598797440895429318

`A007088(A278424(n))`
-/

namespace A278422.P17598797440895429318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278424 n).toNat

end

end A278422.P17598797440895429318

/-! ## A278422.P6776906429159045199

`A185544(2*A278424(n))`
-/

namespace A278422.P6776906429159045199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278424 n).toNat

end

end A278422.P6776906429159045199

/-! ## A278422.P4614386189512198827

`A278660(n)^(a(floor(n/4))+floor(n/4))` with `a(0)=1`
-/

namespace A278422.P4614386189512198827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A278660 n : ℝ) ^ (a ⌊(n : ℚ) / 4⌋.toNat + (⌊(n : ℚ) / 4⌋ : ℝ))

end

end A278422.P4614386189512198827

/-! ## A278422.P12695136051492250006

`A278660(A004891(n+1))`
-/

namespace A278422.P12695136051492250006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278660 (A004891 (n + 1)).toNat

end

end A278422.P12695136051492250006

/-!
# A278423: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A278423, there is no canonical definition to state claims against.
-/

/-! ## A278423.P15060307999853756784

`A278661(A004891(n+1))`
-/

namespace A278423.P15060307999853756784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278661 (A004891 (n + 1)).toNat

end

end A278423.P15060307999853756784

/-! ## A278423.P1189809757528037059

`A278661(A004902(n+1))`
-/

namespace A278423.P1189809757528037059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278661 (A004902 (n + 1)).toNat

end

end A278423.P1189809757528037059

/-! ## A278423.P6034229990364143604

`A278661(A004913(n+1))`
-/

namespace A278423.P6034229990364143604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278661 (A004913 (n + 1)).toNat

end

end A278423.P6034229990364143604

/-! ## A278423.P9338658534711756576

`A278661(A032551(n+1))`
-/

namespace A278423.P9338658534711756576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278661 (A032551 (n + 1)).toNat

end

end A278423.P9338658534711756576

/-!
# A278424: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 41", based on the 5-celled von Neumann neighborhood.

The programs for A278424, there is no canonical definition to state claims against.
-/

/-! ## A278424.P13622755733912545264

`A278662(A004890(n+1))`
-/

namespace A278424.P13622755733912545264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278662 (A004890 (n + 1)).toNat

end

end A278424.P13622755733912545264

/-! ## A278424.P2702470938152158423

`A278662(A004901(n+1))`
-/

namespace A278424.P2702470938152158423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278662 (A004901 (n + 1)).toNat

end

end A278424.P2702470938152158423

/-! ## A278424.P14586086945311954446

`A278662(A004912(n+1))`
-/

namespace A278424.P14586086945311954446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278662 (A004912 (n + 1)).toNat

end

end A278424.P14586086945311954446

/-!
# A278427: Triangle read by rows: CU(n,k) is the number of unlabeled subgraphs with k edges of the n-cycle C_n.

The programs for A278427, there is no canonical definition to state claims against.
-/

/-! ## A278427.P4702307757300437430

`A001511(A143038(n)^A286653(n))`
-/

namespace A278427.P4702307757300437430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A143038 n : ℚ) ^ (A286653 n : ℤ))).toNat

end

end A278427.P4702307757300437430

/-! ## A278427.P12460929810254288638

`A007814(A143038(n)^A286653(n))+1`
-/

namespace A278427.P12460929810254288638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A143038 n : ℚ) ^ (A286653 n : ℤ))).toNat + 1

end

end A278427.P12460929810254288638

/-! ## A278427.P17264839416181082496

`A007814(2*A143038(n)^A286653(n))`
-/

namespace A278427.P17264839416181082496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway (2 * (A143038 n : ℚ) ^ (A286653 n : ℤ))).toNat

end

end A278427.P17264839416181082496

/-! ## A278427.P4556195235495975608

`or(A343606(A343649(n+2)), A343656(n+2))`
-/

namespace A278427.P4556195235495975608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A343606 (A343649 (n + 2)).toNat) (A343656 (n + 2))

end

end A278427.P4556195235495975608

/-! ## A278427.P18179420481724458899

`A167439(A112857(n+1))`
-/

namespace A278427.P18179420481724458899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A112857 (n + 1)).toNat

end

end A278427.P18179420481724458899

/-!
# A278428: Series reversion of g.f. (1/2)*x*(-1; -x)_inf, where (a; q)_inf is the q-Pochhammer symbol.

The programs for A278428, there is no canonical definition to state claims against.
-/

/-! ## A278428.P4903143900646308533

`A157271(2*A102403(n))`
-/

namespace A278428.P4903143900646308533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (2 * A102403 n).toNat

end

end A278428.P4903143900646308533

/-! ## A278428.P5775500273731261407

`A102403(n)+A014189(A000110(n))`
-/

namespace A278428.P5775500273731261407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102403 n + A014189 (A000110 n).toNat

end

end A278428.P5775500273731261407

/-! ## A278428.P15015702857134751848

`A102403(n)+A025466(A007581(n))`
-/

namespace A278428.P15015702857134751848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102403 n + A025466 (A007581 n).toNat

end

end A278428.P15015702857134751848

/-! ## A278428.P11818171146281144243

`A185237(A092878(n))+A102403(n)`
-/

namespace A278428.P11818171146281144243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 (A092878 n).toNat + A102403 n

end

end A278428.P11818171146281144243

/-! ## A278428.P11852619218298933399

`A353481(A003319(n))+A102403(n)`
-/

namespace A278428.P11852619218298933399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (A003319 n).toNat + A102403 n

end

end A278428.P11852619218298933399

/-!
# A278429: a(n) = Sum_{k=0..n} binomial(k+n-2,k)*binomial(2*n+1,k+n+1).

The programs for A278429, there is no canonical definition to state claims against.
-/

/-! ## A278429.P8260007381205314421

`A070098(8*A243034(n))`
-/

namespace A278429.P8260007381205314421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (8 * A243034 n).toNat

end

end A278429.P8260007381205314421

/-!
# A278430: Number of nX2 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278430, there is no canonical definition to state claims against.
-/

/-! ## A278430.P10747908595378174148

`A278435(∑[n+1]+2)`
-/

namespace A278430.P10747908595378174148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278430.P10747908595378174148

/-! ## A278430.P10769579574167060141

`A278435(A000096(n)+3)%A278729(n+1)`
-/

namespace A278430.P10769579574167060141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278435 (A000096 n + 3).toNat) (A278729 (n + 1))

end

end A278430.P10769579574167060141

/-! ## A278430.P9851356814870595945

`A007318(C(2, n))*A278435(A000096(n)+3)`
-/

namespace A278430.P9851356814870595945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A278435 (A000096 n + 3).toNat

end

end A278430.P9851356814870595945

/-! ## A278430.P6531701305997803026

`A278435(A000096(n)+3)+A186746(2*n+1)`
-/

namespace A278430.P6531701305997803026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A000096 n + 3).toNat + A186746 (2 * n + 1)

end

end A278430.P6531701305997803026

/-! ## A278430.P12873801614503744696

`A278435(A000096(n)+3)+A106150(C(2, n+2))`
-/

namespace A278430.P12873801614503744696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A000096 n + 3).toNat + A106150 (Nat.choose 2 (n + 2))

end

end A278430.P12873801614503744696

/-!
# A278431: Number of nX3 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278431, there is no canonical definition to state claims against.
-/

/-! ## A278431.P3187527105599029515

`A278435(∑[n+2]+4)`
-/

namespace A278431.P3187527105599029515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278431.P3187527105599029515

/-! ## A278431.P18136741414563245691

`A278435(A167614(n+1))+A011736(n)`
-/

namespace A278431.P18136741414563245691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A167614 (n + 1)).toNat + A011736 n

end

end A278431.P18136741414563245691

/-! ## A278431.P1225930449042070656

`A008835(n+1)*A278435(A167614(n+1))`
-/

namespace A278431.P1225930449042070656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A278435 (A167614 (n + 1)).toNat

end

end A278431.P1225930449042070656

/-! ## A278431.P5439442340962126428

`A278435(A167614(n+1))%A237934(n+1)`
-/

namespace A278431.P5439442340962126428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278435 (A167614 (n + 1)).toNat) (A237934 (n + 1))

end

end A278431.P5439442340962126428

/-! ## A278431.P3104701809413375852

`record[A278435(eq[0, A319753(n)])]`
-/

namespace A278431.P3104701809413375852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278431.P3104701809413375852

/-!
# A278432: Number of nX4 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278432, there is no canonical definition to state claims against.
-/

/-! ## A278432.P7446342522655096311

`A278435(A052905(n)+9)`
-/

namespace A278432.P7446342522655096311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A052905 n + 9).toNat

end

end A278432.P7446342522655096311

/-! ## A278432.P17173890247925747786

`A278435(A055999(n)+10)`
-/

namespace A278432.P17173890247925747786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A055999 n + 10).toNat

end

end A278432.P17173890247925747786

/-! ## A278432.P9385981021817937963

`A278435(A167614(n+2)+1)`
-/

namespace A278432.P9385981021817937963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A167614 (n + 2) + 1).toNat

end

end A278432.P9385981021817937963

/-! ## A278432.P1940647082754056546

`A278435(eq[5, A131818(n+1)])`
-/

namespace A278432.P1940647082754056546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278432.P1940647082754056546

/-! ## A278432.P9112426191150393453

`A278435(A141214(n+1))`
-/

namespace A278432.P9112426191150393453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A141214 (n + 1)).toNat

end

end A278432.P9112426191150393453

/-!
# A278433: Number of nX5 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278433, there is no canonical definition to state claims against.
-/

/-! ## A278433.P18446418513532410168

`A278435(eq[6, A131818(n+1)])`
-/

namespace A278433.P18446418513532410168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278433.P18446418513532410168

/-! ## A278433.P11800921470972474599

`A278435(A374005(n+1))`
-/

namespace A278433.P11800921470972474599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A374005 (n + 1)).toNat

end

end A278433.P11800921470972474599

/-! ## A278433.P5643545594078098060

`A278435(Δ[A023545(n+1)])`
-/

namespace A278433.P5643545594078098060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (f1 (n + 1) - f1 n).toNat

end

end A278433.P5643545594078098060

/-!
# A278434: Number of nX6 0..3 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

The programs for A278434, there is no canonical definition to state claims against.
-/

/-! ## A278434.P3508293693483730004

`A278435(A000124(n+5)+5)`
-/

namespace A278434.P3508293693483730004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A000124 (n + 5) + 5).toNat

end

end A278434.P3508293693483730004

/-! ## A278434.P4972415276899473698

`A278435(A374007(n+1))`
-/

namespace A278434.P4972415276899473698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278435 (A374007 (n + 1)).toNat

end

end A278434.P4972415276899473698

/-!
# A278436: Numbers such that A279966(n) = 0.

The programs for A278436, there is no canonical definition to state claims against.
-/

/-! ## A278436.P11596547255330416701

`lt[A279966(n+1), 1]+1`
-/

namespace A278436.P11596547255330416701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279966 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A278436.P11596547255330416701

/-! ## A278436.P6666220647903115978

`eq[0, A279966(A028310(n))]`
-/

namespace A278436.P6666220647903115978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279966 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278436.P6666220647903115978

/-! ## A278436.P3288341644687410990

`eq[0, A279966(A103889(n+1))]`
-/

namespace A278436.P3288341644687410990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279966 (A103889 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278436.P3288341644687410990

/-! ## A278436.P18405516754915393258

`A326178(eq[0, A279966(n+1)])`
-/

namespace A278436.P18405516754915393258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278436.P18405516754915393258

/-! ## A278436.P6137553603900886174

`eq[0, A279966(A060000(n+1))]`
-/

namespace A278436.P6137553603900886174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279966 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278436.P6137553603900886174

/-!
# A278438: Numbers m such that T(m) + 2*T(m+1) is a square, where T = A000217.

The programs for A278438, the canonical program `A278438.P15133883881126427020` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278438 has offset 1).

The definition of A278438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278438.P15133883881126427020

`98*a(n-1)-a(n-2)+112` with `a(0)=7, a(1)=799`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A278438

/-- `98*a(n-1)-a(n-2)+112` -/
def P15133883881126427020.Spec : Prop :=
  ∀ n, P15133883881126427020.a n = A278438 (n + 1)

theorem P15133883881126427020.correct : P15133883881126427020.Spec := by
  intro n
  simp only [A278438, Nat.add_sub_cancel]

end A278438

/-! ## A278438.P12988789190747708203

`((5+2*sqrt(6))^(2*(n+1))+(5-2*sqrt(6))^(2*(n+1)))/12-7/6`
-/

namespace A278438.P12988789190747708203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 2 * Real.sqrt (6 : ℝ)) ^ (2 * (n + 1)) + (5 - 2 * Real.sqrt (6 : ℝ)) ^ (2 * (n + 1))) / 12 - ((7 : ℚ) / 6 : ℝ)

end

end A278438.P12988789190747708203

namespace A278438

/-- `((5+2*sqrt(6))^(2*(n+1))+(5-2*sqrt(6))^(2*(n+1)))/12-7/6` -/
def P12988789190747708203.Spec : Prop :=
  ∀ n, P12988789190747708203.a n = (A278438 (n + 1) : ℝ)

theorem P12988789190747708203.correct : P12988789190747708203.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A278438, Nat.add_sub_cancel, A278438.P12988789190747708203.a, A278438.P15133883881126427020.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A278438, Nat.add_sub_cancel, A278438.P12988789190747708203.a, A278438.P15133883881126427020.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A278438

/-!
# A278439: Numbers k such that k | A047842(k).

The programs for A278439, there is no canonical definition to state claims against.
-/

/-! ## A278439.P18170079662614125314

`eq[n, gcd(n, A047842(n))]`
-/

namespace A278439.P18170079662614125314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A047842 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278439.P18170079662614125314

/-! ## A278439.P11762513989052859182

`eq[A047842(n)%A028310(n), A000038(n)]`
-/

namespace A278439.P11762513989052859182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278439.P11762513989052859182

/-!
# A278441: Numbers n such that n | A244112(n).

The programs for A278441, there is no canonical definition to state claims against.
-/

/-! ## A278441.P3126203240646368842

`eq[n, gcd(n, A244112(n))]`
-/

namespace A278441.P3126203240646368842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A244112 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278441.P3126203240646368842

/-!
# A278443: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

The programs for A278443, there is no canonical definition to state claims against.
-/

/-! ## A278443.P11649254998753222582

`A007088(A278445(n))`
-/

namespace A278443.P11649254998753222582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278445 n).toNat

end

end A278443.P11649254998753222582

/-! ## A278443.P7330106529883441580

`A305989(A278446(n))`
-/

namespace A278443.P7330106529883441580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A278446 n).toNat

end

end A278443.P7330106529883441580

/-! ## A278443.P1956089735341864219

`A185544(2*A278445(n))`
-/

namespace A278443.P1956089735341864219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278445 n).toNat

end

end A278443.P1956089735341864219

/-! ## A278443.P12044973740590728470

`A185544(lcm(2, A278445(n)))`
-/

namespace A278443.P12044973740590728470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A278445 n))

end

end A278443.P12044973740590728470

/-!
# A278444: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

The programs for A278444, there is no canonical definition to state claims against.
-/

/-! ## A278444.P10800185365485709125

`A007088(A278446(n))`
-/

namespace A278444.P10800185365485709125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278446 n).toNat

end

end A278444.P10800185365485709125

/-! ## A278444.P12259552911304813811

`A185544(2*A278446(n))`
-/

namespace A278444.P12259552911304813811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278446 n).toNat

end

end A278444.P12259552911304813811

/-!
# A278445: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

The programs for A278445, there is no canonical definition to state claims against.
-/

/-! ## A278445.P15351870431008462614

`A278446(n)-A055945(A278446(n))`
-/

namespace A278445.P15351870431008462614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278446 n - A055945 (A278446 n).toNat

end

end A278445.P15351870431008462614

/-! ## A278445.P3521081197852583360

`A030101(A278446(n))`
-/

namespace A278445.P3521081197852583360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A278446 n).toNat

end

end A278445.P3521081197852583360

/-!
# A278446: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

The programs for A278446, the canonical program `A278446.P1895680114426817818` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278446 has offset 0).

The definition of A278446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278446.P1895680114426817818

`or(a(n-1), A285543(n))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A278446

/-- `or(a(n-1), A285543(n))-a(n-1)` -/
def P1895680114426817818.Spec : Prop :=
  ∀ n, P1895680114426817818.a n = A278446 n

theorem P1895680114426817818.correct : P1895680114426817818.Spec := by
  intro n
  simp only [A278446]

end A278446

/-! ## A278446.P5340886002376884730

`A371962(A277954(n))`
-/

namespace A278446.P5340886002376884730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371962 (A277954 n).toNat

end

end A278446.P5340886002376884730

namespace A278446

/-- `A371962(A277954(n))` -/
def P5340886002376884730.Spec : Prop :=
  ∀ n, P5340886002376884730.a n = A278446 n

end A278446

/-!
# A278447: Irregular triangle read by rows in which row n lists the semiperimeters of the parts of the symmetric representation of sigma(n).

The programs for A278447, there is no canonical definition to state claims against.
-/

/-! ## A278447.P97618718907258184

`A279160(n+1)/2`
-/

namespace A278447.P97618718907258184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279160 (n + 1) : ℚ) / 2

end

end A278447.P97618718907258184

/-! ## A278447.P14244169174764270318

`A001281(A279160(n+1))`
-/

namespace A278447.P14244169174764270318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A279160 (n + 1)).toNat

end

end A278447.P14244169174764270318

/-! ## A278447.P9825681420880025758

`A274923(A279160(n+1)²)`
-/

namespace A278447.P9825681420880025758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A279160 (n + 1) ^ 2).toNat

end

end A278447.P9825681420880025758

/-! ## A278447.P8586588237777044285

`A337101(A279160(n+1)²)`
-/

namespace A278447.P8586588237777044285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A279160 (n + 1) ^ 2).toNat

end

end A278447.P8586588237777044285

/-! ## A278447.P7714215548019621223

`A004524(A279160(n+1)+1)`
-/

namespace A278447.P7714215548019621223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A279160 (n + 1) + 1).toNat

end

end A278447.P7714215548019621223

/-!
# A278448: a(n) = nearest integer to b(n) = c^(b(n-1)/(n-1)), where c=2 and b(1) is chosen such that the sequence neither explodes nor goes to 1.

The programs for A278448, there is no canonical definition to state claims against.
-/

/-! ## A278448.P371313726961147455

`A130148(Δ[A005915(n)])-2`
-/

namespace A278448.P371313726961147455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (f1 (n + 1) - f1 n).toNat - 2

end

end A278448.P371313726961147455

/-! ## A278448.P9392136712667059838

`∑[A076620(A188158(n+1)²)]`
-/

namespace A278448.P9392136712667059838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A188158 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278448.P9392136712667059838

/-! ## A278448.P5420682866784454287

`∑[A000523(p?[A101233(n+1)])]`
-/

namespace A278448.P5420682866784454287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278448.P5420682866784454287

/-! ## A278448.P14485442286760882818

`∑[A305233(n+2)+A020639(A022916(n))]`
-/

namespace A278448.P14485442286760882818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305233 (n + 2) + A020639 (A022916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278448.P14485442286760882818

/-! ## A278448.P15962847008718534294

`∑[A226029(A115801(n+3)*A311494(n)+n+1)]`
-/

namespace A278448.P15962847008718534294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A115801 (n + 3) * A311494 n + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278448.P15962847008718534294

/-!
# A278449: a(n) = nearest integer to b(n) = c^(b(n-1)/(n-1)), where c=3 and b(1) is chosen such that the sequence neither explodes nor goes to 1.

The programs for A278449, there is no canonical definition to state claims against.
-/

/-! ## A278449.P4466697096802542744

`floor(∑[log(A344158(3*n+2))])`
-/

namespace A278449.P4466697096802542744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A344158 (3 * n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A278449.P4466697096802542744

/-! ## A278449.P11192261121553742127

`round(∑[log(A129121(3*(n+1)))])`
-/

namespace A278449.P11192261121553742127
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A129121 (3 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278449.P11192261121553742127

/-! ## A278449.P3749145970481155919

`floor(log2(A245307(n+2)))`
-/

namespace A278449.P3749145970481155919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A245307 (n + 2)).toNat

end

end A278449.P3749145970481155919

/-! ## A278449.P13257533298364805651

`A010051(3*n+5)+A350567(n+2)-1`
-/

namespace A278449.P13257533298364805651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * n + 5) + (A350567 (n + 2) - 1)

end

end A278449.P13257533298364805651

/-! ## A278449.P3192146093467666045

`A350567(n+2)-A001222(A304465(3*n+5))`
-/

namespace A278449.P3192146093467666045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350567 (n + 2) - A001222 (A304465 (3 * n + 5)).toNat

end

end A278449.P3192146093467666045

/-!
# A278450: a(n) = nearest integer to b(n) = c^(b(n-1)/(n-1)), where c=4 and b(1) is chosen such that the sequence neither explodes nor goes to 1.

The programs for A278450, there is no canonical definition to state claims against.
-/

/-! ## A278450.P7555390378873942916

`floor(log2(∑[A162428(2*n)]))`
-/

namespace A278450.P7555390378873942916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162428 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278450.P7555390378873942916

/-! ## A278450.P3711244098555580797

`round(log2(Δ[A200403(n+1)]))`
-/

namespace A278450.P3711244098555580797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))

end

end A278450.P3711244098555580797

/-! ## A278450.P5368386894039219115

`A394247(A347751(n))`
-/

namespace A278450.P5368386894039219115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A347751 n).toNat

end

end A278450.P5368386894039219115

/-!
# A278451: a(n) = nearest integer to b(n) = c^(b(n-1)/(n-1)), where c=5 and b(1) is chosen such that the sequence neither explodes nor goes to 1.

The programs for A278451, there is no canonical definition to state claims against.
-/

/-! ## A278451.P14978693568787285906

`floor(log2(A337721(n))+n)`
-/

namespace A278451.P14978693568787285906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A337721 n : ℝ) + (n : ℝ)⌋

end

end A278451.P14978693568787285906

/-! ## A278451.P14998315288903368854

`round(log2(A352854(n+1)))`
-/

namespace A278451.P14998315288903368854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A352854 (n + 1) : ℝ))

end

end A278451.P14998315288903368854

/-! ## A278451.P11290418184275472209

`floor(log2(A124534(n)+n²))`
-/

namespace A278451.P11290418184275472209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A124534 n + (n ^ 2 : ℤ)).toNat

end

end A278451.P11290418184275472209

/-! ## A278451.P3329354072567827179

`∑[floor(log(A353847(3*(n+1))))]`
-/

namespace A278451.P3329354072567827179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A353847 (3 * (n + 1)) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278451.P3329354072567827179

/-! ## A278451.P14057353447757157534

`floor(log2(A382169(n+1)+A124534(n)))`
-/

namespace A278451.P14057353447757157534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A382169 (n + 1) + A124534 n).toNat

end

end A278451.P14057353447757157534

/-!
# A278452: a(n) = nearest integer to b(n) = c^(b(n-1)/(n-1)), where c = e = 2.71828... and b(1) is chosen such that the sequence neither explodes nor goes to 1.

The programs for A278452, there is no canonical definition to state claims against.
-/

/-! ## A278452.P17388969638295629354

`floor(log2(A158833(n+2)))`
-/

namespace A278452.P17388969638295629354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A158833 (n + 2)).toNat

end

end A278452.P17388969638295629354

/-! ## A278452.P3295497361118163422

`A232753(ceil((n+1)^e))`
-/

namespace A278452.P3295497361118163422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 ⌈(n + 1 : ℝ) ^ (Real.exp 1)⌉.toNat

end

end A278452.P3295497361118163422

/-! ## A278452.P1470660306091605960

`ceil(∑[log2(A168389(5*n+2))])`
-/

namespace A278452.P1470660306091605960
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A168389 (5 * n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A278452.P1470660306091605960

/-! ## A278452.P8839590211073325130

`round(∑[log(A091734(3*n+1))])`
-/

namespace A278452.P8839590211073325130
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A091734 (3 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278452.P8839590211073325130

/-! ## A278452.P4983303513442127001

`A048766(A000583(n))+2*n+1`
-/

namespace A278452.P4983303513442127001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000583 n).toNat + (2 * n + 1 : ℤ)

end

end A278452.P4983303513442127001

/-!
# A278453: a(n) = nearest integer to b(n) = c^(b(n-1)/(n-1)), where b(1)=0 and c is chosen such that the sequence neither explodes nor goes to 1.

The programs for A278453, there is no canonical definition to state claims against.
-/

/-! ## A278453.P12671809716588908725

`ceil(∑[log(A290740(3*n+1))])`
-/

namespace A278453.P12671809716588908725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A290740 (3 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A278453.P12671809716588908725

/-! ## A278453.P10816947569892429480

`A213259(A001845(n)-A245288(n))`
-/

namespace A278453.P10816947569892429480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A001845 n - A245288 n).toNat

end

end A278453.P10816947569892429480

/-! ## A278453.P10467766614550008481

`A004396(ceil(log2(A112912(n))))`
-/

namespace A278453.P10467766614550008481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ⌈Real.logb 2 (A112912 n : ℝ)⌉.toNat

end

end A278453.P10467766614550008481

/-! ## A278453.P3273398126401383277

`∑[A297038(∑[A227776(n+1)])]`
-/

namespace A278453.P3273398126401383277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278453.P3273398126401383277

/-! ## A278453.P17070702436055288149

`A347009(n+1)%A068599(A347044(n+1))`
-/

namespace A278453.P17070702436055288149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347009 (n + 1)) (A068599 (A347044 (n + 1)).toNat)

end

end A278453.P17070702436055288149

/-!
# A278454: Primes p such that every suffix of the binary representation of p is either a prime or 1.

The programs for A278454, there is no canonical definition to state claims against.
-/

/-! ## A278454.P18360834891008757447

`p?[A107909(A175427(n+1))+3]`
-/

namespace A278454.P18360834891008757447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 (A175427 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278454.P18360834891008757447

/-! ## A278454.P6994033435438791960

`∩[A120637(n+1), A396476(n+1)]`
-/

namespace A278454.P6994033435438791960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278454.P6994033435438791960

/-! ## A278454.P13806995013517290485

`A380784(lt[A212084(n), A380820(2*n)])`
-/

namespace A278454.P13806995013517290485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212084 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380820 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380784 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278454.P13806995013517290485

/-! ## A278454.P633618767437917448

`A123318(A359337(n+1))`
-/

namespace A278454.P633618767437917448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A359337 (n + 1)).toNat

end

end A278454.P633618767437917448

/-! ## A278454.P11007901686953365389

`filter[A380784(n+2), A161996(#)]`
-/

namespace A278454.P11007901686953365389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A278454.P11007901686953365389

/-!
# A278455: Smallest prime that takes n steps to get to 1, each step reducing the prime by the largest power of 2 possible, with the resultant number a prime.

The programs for A278455, there is no canonical definition to state claims against.
-/

/-! ## A278455.P17954510892514663673

`p?[or(A020994(n+1), A047924(n))]`
-/

namespace A278455.P17954510892514663673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020994 (n + 1)) (A047924 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278455.P17954510892514663673

/-!
# A278456: Number of tilings of a 5 X n rectangle using pentominoes of any shape and monominoes.

The programs for A278456, there is no canonical definition to state claims against.
-/

/-! ## A278456.P10474349039237854715

`A278657(A055999(n+3))`
-/

namespace A278456.P10474349039237854715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A055999 (n + 3)).toNat

end

end A278456.P10474349039237854715

/-! ## A278456.P9526039897073629223

`A278657(A167499(n+4))`
-/

namespace A278456.P9526039897073629223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A167499 (n + 4)).toNat

end

end A278456.P9526039897073629223

/-! ## A278456.P16137690224368867754

`A278657(A056119(n)+15)`
-/

namespace A278456.P16137690224368867754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A056119 n + 15).toNat

end

end A278456.P16137690224368867754

/-! ## A278456.P2238576610834112530

`A278657(A056115(n)+20)`
-/

namespace A278456.P2238576610834112530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (A056115 n + 20).toNat

end

end A278456.P2238576610834112530

/-! ## A278456.P10775507971843079324

`A278657(eq[5, A002262(n)])`
-/

namespace A278456.P10775507971843079324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278456.P10775507971843079324

/-!
# A278458: Triangle T(n,k) read by rows: coefficients of polynomials P_n(t) defined in Formula section.

The programs for A278458, there is no canonical definition to state claims against.
-/

/-! ## A278458.P15085735885812588687

`A249507(A001048(n+1))+A185755(n+1)`
-/

namespace A278458.P15085735885812588687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249507 (A001048 (n + 1)).toNat + A185755 (n + 1)

end

end A278458.P15085735885812588687

/-!
# A278459: a(n) is the number of size n Eulerian orientations in L1(1).

The programs for A278459, there is no canonical definition to state claims against.
-/

/-! ## A278459.P17543050592146167131

`A102487(A165817(n))+1`
-/

namespace A278459.P17543050592146167131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A165817 n).toNat + 1

end

end A278459.P17543050592146167131

/-! ## A278459.P3209109437064634206

`A378566(n)+A007814(A153373(n+1))`
-/

namespace A278459.P3209109437064634206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378566 n + A007814 (A153373 (n + 1)).toNat

end

end A278459.P3209109437064634206

/-!
# A278460: a(n) is the number of size n Eulerian orientations in L1(2).

The programs for A278460, there is no canonical definition to state claims against.
-/

/-! ## A278460.P16683585901309578063

`A338922(A338922(2*a(n-1)))` with `a(0)=1`
-/

namespace A278460.P16683585901309578063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338922 (A338922 (2 * a (n - 1)).toNat).toNat

end

end A278460.P16683585901309578063

/-!
# A278461: a(n) is the number of size n Eulerian orientations in L2(1).

The programs for A278461, there is no canonical definition to state claims against.
-/

/-! ## A278461.P13632723908475362152

`∑[A063882(A051708(n+1))]`
-/

namespace A278461.P13632723908475362152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (A051708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278461.P13632723908475362152

/-!
# A278462: a(n) is the number of size n Eulerian orientations in L2(2).

The programs for A278462, there is no canonical definition to state claims against.
-/

/-! ## A278462.P9780312475307890752

`A360949(n)+A338623(A360949(n))`
-/

namespace A278462.P9780312475307890752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360949 n + A338623 (A360949 n).toNat

end

end A278462.P9780312475307890752

/-!
# A278464: Total number of parts of the second sort in all partitions of n into two sorts of parts.

The programs for A278464, there is no canonical definition to state claims against.
-/

/-! ## A278464.P14848840240937802462

`A236112(A001006(n))+A000337(n)`
-/

namespace A278464.P14848840240937802462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236112 (A001006 n).toNat + A000337 n

end

end A278464.P14848840240937802462

/-! ## A278464.P17813638133579820615

`A261561(n)-A216505(A261561(n))`
-/

namespace A278464.P17813638133579820615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261561 n - A216505 (A261561 n).toNat

end

end A278464.P17813638133579820615

/-! ## A278464.P1641998325956587557

`A072850(n+1)-A225630(A001006(n))`
-/

namespace A278464.P1641998325956587557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072850 (n + 1) - A225630 (A001006 n).toNat

end

end A278464.P1641998325956587557

/-!
# A278465: Numbers that are the sum of one or two terms of A035928.

The programs for A278465, there is no canonical definition to state claims against.
-/

/-! ## A278465.P11397126894875746539

`∑[A100892(∑[A352818(n+1)])]`
-/

namespace A278465.P11397126894875746539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100892 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278465.P11397126894875746539

/-! ## A278465.P5508110740250567914

`∑[A100892(Δ[A064416(n)])]`
-/

namespace A278465.P5508110740250567914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100892 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278465.P5508110740250567914

/-! ## A278465.P3991815413210586692

`∑[A115255(p?[A335545(n)])]`
-/

namespace A278465.P3991815413210586692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115255 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278465.P3991815413210586692

/-! ## A278465.P16502508451322335340

`∑[A001222(A082522(n+1)²)-2]`
-/

namespace A278465.P16502508451322335340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A082522 (n + 1) ^ 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278465.P16502508451322335340

/-!
# A278466: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A278466, there is no canonical definition to state claims against.
-/

/-! ## A278466.P13984322911207187151

`A007088(A278468(n))`
-/

namespace A278466.P13984322911207187151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278468 n).toNat

end

end A278466.P13984322911207187151

/-! ## A278466.P210245208421888828

`A185544(2*A278468(n))`
-/

namespace A278466.P210245208421888828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278468 n).toNat

end

end A278466.P210245208421888828

/-! ## A278466.P4652737104519024498

`A185544(A278468(n)+A326680(n)+A278468(n))`
-/

namespace A278466.P4652737104519024498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278468 n + (A326680 n + A278468 n)).toNat

end

end A278466.P4652737104519024498

/-! ## A278466.P11118890353463970203

`A280973(A004881(n+1))`
-/

namespace A278466.P11118890353463970203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280973 (A004881 (n + 1)).toNat

end

end A278466.P11118890353463970203

/-! ## A278466.P14978855563931245456

`A280973(A004892(n+1))`
-/

namespace A278466.P14978855563931245456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280973 (A004892 (n + 1)).toNat

end

end A278466.P14978855563931245456

/-!
# A278467: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A278467, there is no canonical definition to state claims against.
-/

/-! ## A278467.P8737576846163933502

`A007088(A278469(n))`
-/

namespace A278467.P8737576846163933502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278469 n).toNat

end

end A278467.P8737576846163933502

/-! ## A278467.P14144970943081526359

`A185544(2*A278469(n))`
-/

namespace A278467.P14144970943081526359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278469 n).toNat

end

end A278467.P14144970943081526359

/-! ## A278467.P11210726671547117542

`A185544(A278469(n)+A278469(n))`
-/

namespace A278467.P11210726671547117542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278469 n + A278469 n).toNat

end

end A278467.P11210726671547117542

/-! ## A278467.P11282716462870536296

`A280974(A004881(n+1))`
-/

namespace A278467.P11282716462870536296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280974 (A004881 (n + 1)).toNat

end

end A278467.P11282716462870536296

/-! ## A278467.P12381506996720468805

`A280974(A004892(n+1))`
-/

namespace A278467.P12381506996720468805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280974 (A004892 (n + 1)).toNat

end

end A278467.P12381506996720468805

/-!
# A278469: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A278469, there is no canonical definition to state claims against.
-/

/-! ## A278469.P6547091990162275992

`A280976(gcd((2*n)^3, ∑{digits}[n, #]%∑{digits}[n+1, #]))`
-/

namespace A278469.P6547091990162275992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280976 (Nat.gcd ((2 * n) ^ 3) (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum))

end

end A278469.P6547091990162275992

/-! ## A278469.P16053692963940755463

`A280976(A004892(n+1))`
-/

namespace A278469.P16053692963940755463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280976 (A004892 (n + 1)).toNat

end

end A278469.P16053692963940755463

/-! ## A278469.P5939776903414964252

`A280976(A004903(n+1))`
-/

namespace A278469.P5939776903414964252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280976 (A004903 (n + 1)).toNat

end

end A278469.P5939776903414964252

/-! ## A278469.P12626255997205368247

`A280976(A004914(n+1))`
-/

namespace A278469.P12626255997205368247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280976 (A004914 (n + 1)).toNat

end

end A278469.P12626255997205368247

/-! ## A278469.P7629596391414460081

`A280976(A228912(n)+n)`
-/

namespace A278469.P7629596391414460081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280976 (A228912 n + (n : ℤ)).toNat

end

end A278469.P7629596391414460081

/-!
# A278472: a(n) = Sum_{i=0..n} Fibonacci(i+1)*binomial(2*n-i+2, n+2).

The programs for A278472, the canonical program `A278472.P17517785868394324728` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278472 has offset 0).

The definition of A278472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278472.P17423369867005239665

`A010756(3*(n+2))`
-/

namespace A278472.P17423369867005239665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (3 * (n + 2))

end

end A278472.P17423369867005239665

namespace A278472

/-- `A010756(3*(n+2))` -/
def P17423369867005239665.Spec : Prop :=
  ∀ n, P17423369867005239665.a n = A278472 n

end A278472

/-! ## A278472.P17517785868394324728

`A176085(n+2)-A109262(n+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A278472

/-- `A176085(n+2)-A109262(n+2)` -/
def P17517785868394324728.Spec : Prop :=
  ∀ n, P17517785868394324728.a n = A278472 n

theorem P17517785868394324728.correct : P17517785868394324728.Spec := by
  intro n
  simp only [A278472]

end A278472

/-! ## A278472.P6034064621187568677

`A108081(n+2)-A000984(n+2)`
-/

namespace A278472.P6034064621187568677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108081 (n + 2) - A000984 (n + 2)

end

end A278472.P6034064621187568677

namespace A278472

/-- `A108081(n+2)-A000984(n+2)` -/
def P6034064621187568677.Spec : Prop :=
  ∀ n, P6034064621187568677.a n = A278472 n

theorem P6034064621187568677.correct : P6034064621187568677.Spec := by
  intro n
  simp only [A278472, Nat.add_sub_cancel, A278472.P6034064621187568677.a, A278472.P17517785868394324728.a, A000984, A000984.P7946844122574426130.a, A108081, A108081.P10199581490510874834.a, A109262, A109262.P3635105755243385556.a, A176085, A176085.P18095810620596158957.a, A028329, A028329.P2723209719397665586.a, A081696, A081696.P144682512311677634.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A278472

/-! ## A278472.P15793608475361536276

`A257838(n+2)-A176085(n+2)`
-/

namespace A278472.P15793608475361536276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 (n + 2) - A176085 (n + 2)

end

end A278472.P15793608475361536276

namespace A278472

/-- `A257838(n+2)-A176085(n+2)` -/
def P15793608475361536276.Spec : Prop :=
  ∀ n, P15793608475361536276.a n = A278472 n

theorem P15793608475361536276.correct : P15793608475361536276.Spec := by
  intro n
  simp only [A278472, Nat.add_sub_cancel, A278472.P15793608475361536276.a, A278472.P17517785868394324728.a, A109262, A109262.P3635105755243385556.a, A176085, A176085.P18095810620596158957.a, A257838, A257838.P9432177341719237820.a, A081696, A081696.P144682512311677634.a, A108081, A108081.P10199581490510874834.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A000984, A000984.P7946844122574426130.a, A028329, A028329.P2723209719397665586.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A278472

/-! ## A278472.P1449225783511437972

`A176085(n+3)-A277287(n+2)`
-/

namespace A278472.P1449225783511437972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 3) - A277287 (n + 2)

end

end A278472.P1449225783511437972

namespace A278472

/-- `A176085(n+3)-A277287(n+2)` -/
def P1449225783511437972.Spec : Prop :=
  ∀ n, P1449225783511437972.a n = A278472 n

end A278472

/-! ## A278472.P10291425306372024368

`A105809(A005408((n+2)²))`
-/

namespace A278472.P10291425306372024368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A005408 ((n + 2) ^ 2)).toNat

end

end A278472.P10291425306372024368

namespace A278472

/-- `A105809(A005408((n+2)²))` -/
def P10291425306372024368.Spec : Prop :=
  ∀ n, P10291425306372024368.a n = A278472 n

end A278472

/-!
# A278475: a(n) = floor(phi^7*a(n-1)) for n>0, a(0) = 1, where phi is the golden ratio (A001622).

The programs for A278475, the canonical program `A278475.P6857619883385377011` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278475 has offset 0).

The definition of A278475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278475.P6857619883385377011

`30*a(n-1)-28*a(n-2)-a(n-3)` with `a(0)=1, a(1)=29, a(2)=841`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A278475

/-- `30*a(n-1)-28*a(n-2)-a(n-3)` -/
def P6857619883385377011.Spec : Prop :=
  ∀ n, P6857619883385377011.a n = A278475 n

theorem P6857619883385377011.correct : P6857619883385377011.Spec := by
  intro n
  simp only [A278475]

end A278475

/-! ## A278475.P6392231059137683397

`floor(ϕ^7*a(n-1))` with `a(0)=1`
-/

namespace A278475.P6392231059137683397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio ^ 7 * (a (n - 1) : ℝ)⌋

end

end A278475.P6392231059137683397

namespace A278475

/-- `floor(ϕ^7*a(n-1))` -/
def P6392231059137683397.Spec : Prop :=
  ∀ n, P6392231059137683397.a n = A278475 n

end A278475

/-! ## A278475.P13809326668327748754

`29*a(n-1)+a(n-2)-1` with `a(0)=1, a(1)=29`
-/

namespace A278475.P13809326668327748754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  29 * a (n - 1) + (a (n - 2) - 1)

end

end A278475.P13809326668327748754

namespace A278475

/-- `29*a(n-1)+a(n-2)-1` -/
def P13809326668327748754.Spec : Prop :=
  ∀ n, P13809326668327748754.a n = A278475 n

end A278475

/-! ## A278475.P13604669607596409166

`29*a(n-1)-(1-a(n-2))` with `a(0)=1, a(1)=29`
-/

namespace A278475.P13604669607596409166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  29 * a (n - 1) - (1 - a (n - 2))

end

end A278475.P13604669607596409166

namespace A278475

/-- `29*a(n-1)-(1-a(n-2))` -/
def P13604669607596409166.Spec : Prop :=
  ∀ n, P13604669607596409166.a n = A278475 n

end A278475

/-! ## A278475.P4426112937027660059

`∑[A134501(n)]-Δ[A049667(n)]`
-/

namespace A278475.P4426112937027660059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A278475.P4426112937027660059

namespace A278475

/-- `∑[A134501(n)]-Δ[A049667(n)]` -/
def P4426112937027660059.Spec : Prop :=
  ∀ n, P4426112937027660059.a n = A278475 n

end A278475

/-!
# A278476: a(n) = floor((1 + sqrt(2))^3*a(n-1)) for n>0, a(0) = 1.

The programs for A278476, the canonical program `A278476.P13380784909951040631` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278476 has offset 0).

The definition of A278476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278476.P10118502653417290306

`floor((1+sqrt(2))^3*a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278476.P10118502653417290306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(1 + Real.sqrt (2 : ℝ)) ^ 3 * (a (n - 1) : ℝ)⌋

end

end A278476.P10118502653417290306

namespace A278476

/-- `floor((1+sqrt(2))^3*a(n-1))` -/
def P10118502653417290306.Spec : Prop :=
  ∀ n, P10118502653417290306.a n = A278476 n

end A278476

/-! ## A278476.P13380784909951040631

`15*a(n-1)-13*a(n-2)-a(n-3)` with `a(0)=1, a(1)=14, a(2)=196`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A278476

/-- `15*a(n-1)-13*a(n-2)-a(n-3)` -/
def P13380784909951040631.Spec : Prop :=
  ∀ n, P13380784909951040631.a n = A278476 n

theorem P13380784909951040631.correct : P13380784909951040631.Spec := by
  intro n
  simp only [A278476]

end A278476

/-! ## A278476.P14726247662224662764

`a(n-2)+14*a(n-1)-1` with `a(0)=1, a(1)=14`
-/

namespace A278476.P14726247662224662764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  a (n - 2) + 14 * a (n - 1) - 1

end

end A278476.P14726247662224662764

namespace A278476

/-- `a(n-2)+14*a(n-1)-1` -/
def P14726247662224662764.Spec : Prop :=
  ∀ n, P14726247662224662764.a n = A278476 n

end A278476

/-! ## A278476.P11263964299682812546

`14*a(n-1)-(1-a(n-2))` with `a(0)=1, a(1)=14`
-/

namespace A278476.P11263964299682812546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  14 * a (n - 1) - (1 - a (n - 2))

end

end A278476.P11263964299682812546

namespace A278476

/-- `14*a(n-1)-(1-a(n-2))` -/
def P11263964299682812546.Spec : Prop :=
  ∀ n, P11263964299682812546.a n = A278476 n

end A278476

/-! ## A278476.P4247129457166720162

`A187362(n)-∑[A041085(n)]`
-/

namespace A278476.P4247129457166720162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187362 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278476.P4247129457166720162

namespace A278476

/-- `A187362(n)-∑[A041085(n)]` -/
def P4247129457166720162.Spec : Prop :=
  ∀ n, P4247129457166720162.a n = A278476 n

end A278476

/-! ## A278476.P15668980534054404547

`A000129(3*n+2)-∑[A041085(n)]`
-/

namespace A278476.P15668980534054404547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (3 * n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278476.P15668980534054404547

namespace A278476

/-- `A000129(3*n+2)-∑[A041085(n)]` -/
def P15668980534054404547.Spec : Prop :=
  ∀ n, P15668980534054404547.a n = A278476 n

end A278476

/-!
# A278477: Primes that set a new record for the Hamming weight.

The programs for A278477, there is no canonical definition to state claims against.
-/

/-! ## A278477.P5919051832362396318

`A061712(lt[n, Δ[A061712(n+1)]]+1)`
-/

namespace A278477.P5919051832362396318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A278477.P5919051832362396318

/-! ## A278477.P15715710468148042139

`A061712(lt[A061712(n+1), A061712(n+2)]+1)`
-/

namespace A278477.P15715710468148042139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A278477.P15715710468148042139

/-! ## A278477.P9377006465295019137

`record[A211997(n+1)-char[6]]`
-/

namespace A278477.P9377006465295019137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211997 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278477.P9377006465295019137

/-! ## A278477.P14037980603360046245

`record[A211997(n-5*floor(n/10)+1)]`
-/

namespace A278477.P14037980603360046245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211997 ((n : ℤ) - 5 * ⌊(n : ℚ) / 10⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278477.P14037980603360046245

/-! ## A278477.P4777416534222647792

`A211997(A037474(n+1))`
-/

namespace A278477.P4777416534222647792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211997 (A037474 (n + 1)).toNat

end

end A278477.P4777416534222647792

/-!
# A278478: a(n) is the 2-adic valuation of A000041(n).

The programs for A278478, there is no canonical definition to state claims against.
-/

/-! ## A278478.P18130194311684881880

`log2(A069935(n))`
-/

namespace A278478.P18130194311684881880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A069935 n : ℝ)

end

end A278478.P18130194311684881880

/-! ## A278478.P18032389445638820550

`A007814(A000041(n))`
-/

namespace A278478.P18032389445638820550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000041 n).toNat

end

end A278478.P18032389445638820550

/-! ## A278478.P6262941197485605019

`val(∑[A002865(n)], 2)`
-/

namespace A278478.P6262941197485605019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A278478.P6262941197485605019

/-! ## A278478.P16646971819165076129

`val(A000065(n)+1, 2)`
-/

namespace A278478.P16646971819165076129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000065 n + 1).toNat 2

end

end A278478.P16646971819165076129

/-! ## A278478.P16164608573164143430

`val(∑[A085811(n+3)], 2)`
-/

namespace A278478.P16164608573164143430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A278478.P16164608573164143430

/-! ## A278478.P4346290354852186581

`val(A018783(n)+A000837(n), 2)`
-/

namespace A278478.P4346290354852186581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018783 n + A000837 n).toNat 2

end

end A278478.P4346290354852186581

/-! ## A278478.P4588178810908143061

`val(A039900(n)+A003106(n), 2)`
-/

namespace A278478.P4588178810908143061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039900 n + A003106 n).toNat 2

end

end A278478.P4588178810908143061

/-! ## A278478.P6379220388509530353

`val(A046682(n)+A000701(n), 2)`
-/

namespace A278478.P6379220388509530353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046682 n + A000701 n).toNat 2

end

end A278478.P6379220388509530353

/-! ## A278478.P7390249879372824299

`val(A295341(n)+A000726(n), 2)`
-/

namespace A278478.P7390249879372824299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A295341 n + A000726 n).toNat 2

end

end A278478.P7390249879372824299

/-! ## A278478.P502341371288481434

`A001222(A000010(-xor(-A000041(n), A000041(n))))`
-/

namespace A278478.P502341371288481434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (-Int.xor (-A000041 n) (A000041 n)).toNat).toNat

end

end A278478.P502341371288481434

/-! ## A278478.P16350950054530696375

`val(A139582(n), 2)-1`
-/

namespace A278478.P16350950054530696375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A139582 n).toNat 2 : ℤ) - 1

end

end A278478.P16350950054530696375

/-! ## A278478.P1063519412106470583

`val(A299473(n), 2)`
-/

namespace A278478.P1063519412106470583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299473 n).toNat 2

end

end A278478.P1063519412106470583

/-! ## A278478.P5342691337985846825

`val(A299474(n), 2)-2`
-/

namespace A278478.P5342691337985846825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A299474 n).toNat 2 : ℤ) - 2

end

end A278478.P5342691337985846825

/-! ## A278478.P13385426760548924036

`val(A035363(2*n), 2)`
-/

namespace A278478.P13385426760548924036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A035363 (2 * n)).toNat 2

end

end A278478.P13385426760548924036

/-! ## A278478.P4897667685850392793

`val(A119620(2*n), 2)`
-/

namespace A278478.P4897667685850392793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A119620 (2 * n)).toNat 2

end

end A278478.P4897667685850392793

/-! ## A278478.P7610961464422166320

`val(A001255(n), 4)`
-/

namespace A278478.P7610961464422166320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001255 n).toNat 4

end

end A278478.P7610961464422166320

/-! ## A278478.P11053843952356530509

`val(A143229(n)/A000070(n), 2)`
-/

namespace A278478.P11053843952356530509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A143229 n : ℚ) / (A000070 n : ℚ))).toNat 2

end

end A278478.P11053843952356530509

/-! ## A278478.P3486206301299411635

`val(A133042(n), 8)`
-/

namespace A278478.P3486206301299411635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133042 n).toNat 8

end

end A278478.P3486206301299411635

/-! ## A278478.P1780962606848493505

`val(A332281(n)+A332280(n), 2)`
-/

namespace A278478.P1780962606848493505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A332281 n + A332280 n).toNat 2

end

end A278478.P1780962606848493505

/-! ## A278478.P10308603812257519748

`val(A100824(2*n), 2)`
-/

namespace A278478.P10308603812257519748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A100824 (2 * n)).toNat 2

end

end A278478.P10308603812257519748

/-!
# A278480: Number of neighbors of the n-th term in a full right triangle read by rows.

The programs for A278480, the canonical program `A278480.P13399696177341259936` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278480 has offset 1).

The definition of A278480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278480.P13399696177341259936

`a(n-A141419(n))+3` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A278480

/-- `a(n-A141419(n))+3` -/
def P13399696177341259936.Spec : Prop :=
  ∀ n, (P13399696177341259936.a n : ℤ) = A278480 (n + 1)

theorem P13399696177341259936.correct : P13399696177341259936.Spec := by
  intro n
  simp only [A278480, Nat.add_sub_cancel]

end A278480

/-! ## A278480.P5557167007925809526

`A278545(n+1)-char[abs(∑[1-n])-1]`
-/

namespace A278480.P5557167007925809526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j| - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278545 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A278480.P5557167007925809526

namespace A278480

/-- `A278545(n+1)-char[abs(∑[1-n])-1]` -/
def P5557167007925809526.Spec : Prop :=
  ∀ n, P5557167007925809526.a n = A278480 (n + 1)

end A278480

/-! ## A278480.P2165455525915048711

`abs(A278545(n+1)-A129186(n))`
-/

namespace A278480.P2165455525915048711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A278545 (n + 1) - A129186 n|

end

end A278480.P2165455525915048711

namespace A278480

/-- `abs(A278545(n+1)-A129186(n))` -/
def P2165455525915048711.Spec : Prop :=
  ∀ n, P2165455525915048711.a n = A278480 (n + 1)

end A278480

/-! ## A278480.P3494741707039730178

`5%A134059(n)+3-A129186(n)`
-/

namespace A278480.P3494741707039730178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A134059 n) + 3 - A129186 n

end

end A278480.P3494741707039730178

namespace A278480

/-- `5%A134059(n)+3-A129186(n)` -/
def P3494741707039730178.Spec : Prop :=
  ∀ n, P3494741707039730178.a n = A278480 (n + 1)

end A278480

/-! ## A278480.P12564747495794564742

`A278317(n+1)+A278597(n+1)+1`
-/

namespace A278480.P12564747495794564742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278317 (n + 1) + (A278597 (n + 1) + 1)

end

end A278480.P12564747495794564742

namespace A278480

/-- `A278317(n+1)+A278597(n+1)+1` -/
def P12564747495794564742.Spec : Prop :=
  ∀ n, P12564747495794564742.a n = A278480 (n + 1)

end A278480

/-! ## A278480.P1047355382537044669

`A136188(A049702(n))-A129186(n)`
-/

namespace A278480.P1047355382537044669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136188 (A049702 n).toNat - A129186 n

end

end A278480.P1047355382537044669

namespace A278480

/-- `A136188(A049702(n))-A129186(n)` -/
def P1047355382537044669.Spec : Prop :=
  ∀ n, P1047355382537044669.a n = A278480 (n + 1)

end A278480

/-! ## A278480.P14844939507509349012

`A014132(A278290(n+1)+Δ[A154325(n)]+1)`
-/

namespace A278480.P14844939507509349012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A278290 (n + 1) + (f1 (n + 1) - f1 n) + 1).toNat

end

end A278480.P14844939507509349012

namespace A278480

/-- `A014132(A278290(n+1)+Δ[A154325(n)]+1)` -/
def P14844939507509349012.Spec : Prop :=
  ∀ n, P14844939507509349012.a n = A278480 (n + 1)

end A278480

/-! ## A278480.P7437761126655320541

`A182873(Δ[A089812(n)]²+1)-1-A129186(n)`
-/

namespace A278480.P7437761126655320541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182873 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat - 1 - A129186 n

end

end A278480.P7437761126655320541

namespace A278480

/-- `A182873(Δ[A089812(n)]²+1)-1-A129186(n)` -/
def P7437761126655320541.Spec : Prop :=
  ∀ n, P7437761126655320541.a n = A278480 (n + 1)

end A278480

/-! ## A278480.P4591982922960685842

`∑{d}[A087112(n+1), A100073(#)+1]-A129186(n)`
-/

namespace A278480.P4591982922960685842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A100073 d + 1) - A129186 n

end

end A278480.P4591982922960685842

namespace A278480

/-- `∑{d}[A087112(n+1), A100073(#)+1]-A129186(n)` -/
def P4591982922960685842.Spec : Prop :=
  ∀ n, P4591982922960685842.a n = A278480 (n + 1)

end A278480

/-! ## A278480.P12504390413565622670

`A278317(n+1)+A000005(∑{e}[(2*A073060(n))², #])`
-/

namespace A278480.P12504390413565622670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A073060 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278317 (n + 1) + A000005 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A278480.P12504390413565622670

namespace A278480

/-- `A278317(n+1)+A000005(∑{e}[(2*A073060(n))², #])` -/
def P12504390413565622670.Spec : Prop :=
  ∀ n, P12504390413565622670.a n = A278480 (n + 1)

end A278480

/-! ## A278480.P6365136578304175343

`A001651(A281006(A142689(n+1))+A278317(n+1))`
-/

namespace A278480.P6365136578304175343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A281006 (A142689 (n + 1)).toNat + A278317 (n + 1)).toNat

end

end A278480.P6365136578304175343

namespace A278480

/-- `A001651(A281006(A142689(n+1))+A278317(n+1))` -/
def P6365136578304175343.Spec : Prop :=
  ∀ n, P6365136578304175343.a n = A278480 (n + 1)

end A278480

/-!
# A278481: Number of neighbors of the n-th term in a full isosceles triangle read by rows.

The programs for A278481, there is no canonical definition to state claims against.
-/

/-! ## A278481.P1152968701044490330

`2*(Δ[∪[2*n, n²+1+n]]-(floor(acot(n))-1))`
-/

namespace A278481.P1152968701044490330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1))

end

end A278481.P1152968701044490330

/-! ## A278481.P6828846935692240953

`2*A278597(n+1)`
-/

namespace A278481.P6828846935692240953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278597 (n + 1)

end

end A278481.P6828846935692240953

/-! ## A278481.P1894847704739940332

`14%A278545(n+1)`
-/

namespace A278481.P1894847704739940332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 14 (A278545 (n + 1))

end

end A278481.P1894847704739940332

/-! ## A278481.P3544793671525714007

`a(A050601(n))+2` with `a(0)=2`
-/

namespace A278481.P3544793671525714007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A050601 n).toNat + 2

end

end A278481.P3544793671525714007

/-! ## A278481.P3699646656787904300

`a(log2(A154325(n)))+2` with `a(0)=2`
-/

namespace A278481.P3699646656787904300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A154325 n : ℝ))).toNat + 2

end

end A278481.P3699646656787904300

/-! ## A278481.P8054967876372065050

`A069930(A087112(n+1))`
-/

namespace A278481.P8054967876372065050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (A087112 (n + 1)).toNat

end

end A278481.P8054967876372065050

/-! ## A278481.P17440730588858851830

`A007400(A224195(n+1))`
-/

namespace A278481.P17440730588858851830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (A224195 (n + 1)).toNat

end

end A278481.P17440730588858851830

/-! ## A278481.P537886707741545511

`A211262(A373844(n+1))`
-/

namespace A278481.P537886707741545511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211262 (A373844 (n + 1)).toNat

end

end A278481.P537886707741545511

/-! ## A278481.P7045534394571148196

`2*A158799(A049687(n))`
-/

namespace A278481.P7045534394571148196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158799 (A049687 n).toNat

end

end A278481.P7045534394571148196

/-! ## A278481.P11952043852247393235

`2*A158799(A049695(n))`
-/

namespace A278481.P11952043852247393235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158799 (A049695 n).toNat

end

end A278481.P11952043852247393235

/-!
# A278482: Square array A(n,k): A(0, n) = n; A(k, n) = A(k-1, floor(n*(k+1)/k)), for k >= 1, read by descending antidiagonals as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A278482, there is no canonical definition to state claims against.
-/

/-! ## A278482.P16267066237821176784

`A278492(n)-1`
-/

namespace A278482.P16267066237821176784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 n - 1

end

end A278482.P16267066237821176784

/-! ## A278482.P9119256355142534583

`A278483(A061579(n))`
-/

namespace A278482.P9119256355142534583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278483 (A061579 n).toNat

end

end A278482.P9119256355142534583

/-! ## A278482.P9442136022815620575

`A278483(A038722(n+1)-1)`
-/

namespace A278482.P9442136022815620575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278483 (A038722 (n + 1) - 1).toNat

end

end A278482.P9442136022815620575

/-! ## A278482.P695514950263242823

`A278483(A025581(n)+n-A002262(n))`
-/

namespace A278482.P695514950263242823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278483 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A278482.P695514950263242823

/-! ## A278482.P5370919115269156198

`A278483(n-(A002262(n)-A025581(n)))`
-/

namespace A278482.P5370919115269156198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278483 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A278482.P5370919115269156198

/-! ## A278482.P16336300468786037880

`A278483(A038722(n+2))`
-/

namespace A278482.P16336300468786037880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278483 (A038722 (n + 2)).toNat

end

end A278482.P16336300468786037880

/-! ## A278482.P9919159351305366722

`A025581(C(A278492(n), 2))`
-/

namespace A278482.P9919159351305366722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A278492 n).toNat 2)

end

end A278482.P9919159351305366722

/-! ## A278482.P11736502000943451932

`A070198(n)%A278492(n)`
-/

namespace A278482.P11736502000943451932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A278492 n)

end

end A278482.P11736502000943451932

/-! ## A278482.P3170876903694765858

`A079782(n+1)%A278492(n)`
-/

namespace A278482.P3170876903694765858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A278492 n)

end

end A278482.P3170876903694765858

/-! ## A278482.P9142808139057678304

`A083685(n+1)%A278492(n)`
-/

namespace A278482.P9142808139057678304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A278492 n)

end

end A278482.P9142808139057678304

/-! ## A278482.P1168355189849969808

`A121934(n+1)%A278492(n)`
-/

namespace A278482.P1168355189849969808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A278492 n)

end

end A278482.P1168355189849969808

/-! ## A278482.P16002179922177445170

`A025581(2*A278492(n)²)`
-/

namespace A278482.P16002179922177445170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A278492 n ^ 2).toNat

end

end A278482.P16002179922177445170

/-! ## A278482.P12407039017244392299

`A025581(2*A278492(n)*A278492(n))`
-/

namespace A278482.P12407039017244392299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A278492 n * A278492 n).toNat

end

end A278482.P12407039017244392299

/-! ## A278482.P11080873713311816532

`A002262(A278492(n)+A000096(n))`
-/

namespace A278482.P11080873713311816532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A278492 n + A000096 n).toNat

end

end A278482.P11080873713311816532

/-! ## A278482.P929379970484303836

`A030494(n+1)%A278492(n)`
-/

namespace A278482.P929379970484303836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A278492 n)

end

end A278482.P929379970484303836

/-! ## A278482.P18426000609085625416

`A072828(n+1)%A278492(n)`
-/

namespace A278482.P18426000609085625416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A278492 n)

end

end A278482.P18426000609085625416

/-!
# A278483: Transpose of square array A278482.

The programs for A278483, there is no canonical definition to state claims against.
-/

/-! ## A278483.P9172295060507234631

`A278493(n)-1`
-/

namespace A278483.P9172295060507234631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 n - 1

end

end A278483.P9172295060507234631

/-! ## A278483.P10598615175777401459

`A023443(A278493(n))`
-/

namespace A278483.P10598615175777401459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278493 n).toNat

end

end A278483.P10598615175777401459

/-! ## A278483.P18254537701576118373

`A278482(A061579(n))`
-/

namespace A278483.P18254537701576118373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278482 (A061579 n).toNat

end

end A278483.P18254537701576118373

/-! ## A278483.P6350828447190085480

`A023444(A278493(n)+1)`
-/

namespace A278483.P6350828447190085480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A278493 n + 1).toNat

end

end A278483.P6350828447190085480

/-! ## A278483.P15472628529193469939

`A278482(A038722(n+1)-1)`
-/

namespace A278483.P15472628529193469939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278482 (A038722 (n + 1) - 1).toNat

end

end A278483.P15472628529193469939

/-! ## A278483.P4495091120201348188

`A023444(2*A278493(n))/2`
-/

namespace A278483.P4495091120201348188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A278493 n).toNat : ℚ) / 2

end

end A278483.P4495091120201348188

/-! ## A278483.P17960571747944992609

`A278492(A038722(n+1)-1)-1`
-/

namespace A278483.P17960571747944992609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (A038722 (n + 1) - 1).toNat - 1

end

end A278483.P17960571747944992609

/-! ## A278483.P7915199629860487702

`(A278493(n)+n)%A000027(n+1)`
-/

namespace A278483.P7915199629860487702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278493 n + (n : ℤ)) (A000027 (n + 1))

end

end A278483.P7915199629860487702

/-! ## A278483.P4481516271541433828

`(A278493(n)+A005563(n))%(n+1)`
-/

namespace A278483.P4481516271541433828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278493 n + A005563 n) (n + 1 : ℤ)

end

end A278483.P4481516271541433828

/-! ## A278483.P12944764115045737556

`A278482((n²+n)%A014132(n+1))`
-/

namespace A278483.P12944764115045737556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278482 (Int.tmod (n ^ 2 + n : ℤ) (A014132 (n + 1))).toNat

end

end A278483.P12944764115045737556

/-! ## A278483.P15405662794674678343

`A025581(C(A278493(n), 2))`
-/

namespace A278483.P15405662794674678343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A278493 n).toNat 2)

end

end A278483.P15405662794674678343

/-! ## A278483.P613485075768158007

`A278482(C(A278493(n), 2))`
-/

namespace A278483.P613485075768158007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278482 (Nat.choose (A278493 n).toNat 2)

end

end A278483.P613485075768158007

/-! ## A278483.P15254474864428873060

`A034856(A278493(n)²)%A278493(n)`
-/

namespace A278483.P15254474864428873060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034856 (A278493 n ^ 2).toNat) (A278493 n)

end

end A278483.P15254474864428873060

/-! ## A278483.P14783396393607116244

`A083800(n+1)%A278493(n)`
-/

namespace A278483.P14783396393607116244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A278493 n)

end

end A278483.P14783396393607116244

/-! ## A278483.P9068251573263725802

`A070198(n)%A278493(n)`
-/

namespace A278483.P9068251573263725802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A278493 n)

end

end A278483.P9068251573263725802

/-! ## A278483.P4967595350394881543

`A079782(n+1)%A278493(n)`
-/

namespace A278483.P4967595350394881543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A278493 n)

end

end A278483.P4967595350394881543

/-! ## A278483.P17834085812312240831

`A083685(n+1)%A278493(n)`
-/

namespace A278483.P17834085812312240831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A278493 n)

end

end A278483.P17834085812312240831

/-! ## A278483.P17693396946100627279

`A121934(n+1)%A278493(n)`
-/

namespace A278483.P17693396946100627279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A278493 n)

end

end A278483.P17693396946100627279

/-! ## A278483.P11433599031015171125

`A025581(2*A278493(n)²)`
-/

namespace A278483.P11433599031015171125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A278493 n ^ 2).toNat

end

end A278483.P11433599031015171125

/-! ## A278483.P5555136227105982761

`A025581(2*A278493(n)*A278493(n))`
-/

namespace A278483.P5555136227105982761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A278493 n * A278493 n).toNat

end

end A278483.P5555136227105982761

/-!
# A278484: Main diagonal of A278482.

The programs for A278484, there is no canonical definition to state claims against.
-/

/-! ## A278484.P8800076085031572939

`A000960(n+1)-1`
-/

namespace A278484.P8800076085031572939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1) - 1

end

end A278484.P8800076085031572939

/-! ## A278484.P5794707464912510735

`A056526(n)+a(n-1)` with `a(0)=0`
-/

namespace A278484.P5794707464912510735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056526 n + a (n - 1)

end

end A278484.P5794707464912510735

/-! ## A278484.P10772878703374511433

`record[A000960(A286378(n))-1]`
-/

namespace A278484.P10772878703374511433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A286378 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278484.P10772878703374511433

/-! ## A278484.P2196578573332833922

`record[A000960(A328395(n))-1]`
-/

namespace A278484.P2196578573332833922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A328395 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278484.P2196578573332833922

/-! ## A278484.P6976176542405591735

`record[A000960(A331300(n))-1]`
-/

namespace A278484.P6976176542405591735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A331300 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278484.P6976176542405591735

/-! ## A278484.P12962317620613750240

`xor(1, A000960(A000027(n+1)))`
-/

namespace A278484.P12962317620613750240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000960 (A000027 (n + 1)).toNat)

end

end A278484.P12962317620613750240

/-! ## A278484.P6906527711007835855

`∪[A099061(n), A099062(n)]-1`
-/

namespace A278484.P6906527711007835855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099062 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278484.P6906527711007835855

/-! ## A278484.P10220770809519825852

`∑[A056526(n+1)]-A056526(n+1)`
-/

namespace A278484.P10220770809519825852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056526 (n + 1)

end

end A278484.P10220770809519825852

/-! ## A278484.P14447185126611153891

`xor(abs((-1)^A000005(n+1)), A000960(n+1))`
-/

namespace A278484.P14447185126611153891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway |(-1 : ℚ) ^ (A000005 (n + 1) : ℤ)|) (A000960 (n + 1))

end

end A278484.P14447185126611153891

/-! ## A278484.P12223269453127967288

`abs(A000960(n+1)+A008683(A007918(n)))`
-/

namespace A278484.P12223269453127967288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000960 (n + 1) + A008683 (A007918 n).toNat|

end

end A278484.P12223269453127967288

/-! ## A278484.P4752549560980837379

`xor(A000960(n+1), A178637(A020639(n+2)))`
-/

namespace A278484.P4752549560980837379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000960 (n + 1)) (A178637 (A020639 (n + 2)).toNat)

end

end A278484.P4752549560980837379

/-! ## A278484.P16973266214303766946

`A073359(n+1)+A073359(n+1)-A056526(n+1)`
-/

namespace A278484.P16973266214303766946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073359 (n + 1) + (A073359 (n + 1) - A056526 (n + 1))

end

end A278484.P16973266214303766946

/-! ## A278484.P13253826324967714325

`xor(A000960(n+1), A278538(2*(n+1)))`
-/

namespace A278484.P13253826324967714325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000960 (n + 1)) (A278538 (2 * (n + 1)))

end

end A278484.P13253826324967714325

/-! ## A278484.P7519037396847484467

`record[A000960(A152271(n))-1]`
-/

namespace A278484.P7519037396847484467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278484.P7519037396847484467

/-! ## A278484.P12035205606526280275

`xor(A000034(2*n), A000960(n+1))`
-/

namespace A278484.P12035205606526280275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (2 * n)) (A000960 (n + 1))

end

end A278484.P12035205606526280275

/-! ## A278484.P156121520524116569

`A033999(2*n+1)+A000960(n+1)`
-/

namespace A278484.P156121520524116569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A000960 (n + 1)

end

end A278484.P156121520524116569

/-! ## A278484.P2980879446165072067

`xor(A000960(n+1), A006519(2*n+1))`
-/

namespace A278484.P2980879446165072067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000960 (n + 1)) (A006519 (2 * n + 1))

end

end A278484.P2980879446165072067

/-! ## A278484.P17851385735445477197

`record[A000960(A154958(n))-1]`
-/

namespace A278484.P17851385735445477197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A154958 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278484.P17851385735445477197

/-! ## A278484.P428343985084845701

`record[A000960(A117910(n))-1]`
-/

namespace A278484.P428343985084845701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A117910 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278484.P428343985084845701

/-!
# A278485: Positions of numbers that are one more than a prime in A276573, the infinite trunk of least squares beanstalk.

The programs for A278485, there is no canonical definition to state claims against.
-/

/-! ## A278485.P5539280256732232258

`record[(n+1)%A020639(A276573(n+1)-1)]`
-/

namespace A278485.P5539280256732232258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (A276573 (n + 1) - 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278485.P5539280256732232258

/-! ## A278485.P9427198460296751552

`A260731(A278486(n+1))`
-/

namespace A278485.P9427198460296751552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A278486 (n + 1)).toNat

end

end A278485.P9427198460296751552

/-! ## A278485.P1221230088791554897

`eq[1, A330241(A276573(n))]`
-/

namespace A278485.P1221230088791554897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (A276573 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278485.P1221230088791554897

/-! ## A278485.P15749734758456286946

`eq[1, A330241(∑[A276575(n)])]`
-/

namespace A278485.P15749734758456286946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278485.P15749734758456286946

/-! ## A278485.P7087139553561509787

`A260731(A278487(n+1)+1)`
-/

namespace A278485.P7087139553561509787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A278487 (n + 1) + 1).toNat

end

end A278485.P7087139553561509787

/-!
# A278486: Numbers that are one more than prime in A276573, the infinite trunk of least squares beanstalk.

The programs for A278486, there is no canonical definition to state claims against.
-/

/-! ## A278486.P712817580002850600

`A276573(A278485(n+1))`
-/

namespace A278486.P712817580002850600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A278485 (n + 1)).toNat

end

end A278486.P712817580002850600

/-! ## A278486.P7573560131599801019

`A278487(n+1)+1`
-/

namespace A278486.P7573560131599801019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278487 (n + 1) + 1

end

end A278486.P7573560131599801019

/-! ## A278486.P125175128095593611

`A000203(A278487(n+1))`
-/

namespace A278486.P125175128095593611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A278487 (n + 1)).toNat

end

end A278486.P125175128095593611

/-! ## A278486.P12984585865046049147

`p?[A276573(n)-1]+1`
-/

namespace A278486.P12984585865046049147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A278486.P12984585865046049147

/-! ## A278486.P6593623914089109689

`∩[A028815(n), A276573(n)]`
-/

namespace A278486.P6593623914089109689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P6593623914089109689

/-! ## A278486.P6525785665392508449

`∩[A008864(n+1), A276573(n)]`
-/

namespace A278486.P6525785665392508449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P6525785665392508449

/-! ## A278486.P2929911909687537160

`∩[A135731(n+1), A276573(n)]`
-/

namespace A278486.P2929911909687537160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P2929911909687537160

/-! ## A278486.P9071520908490965173

`∩[A299763(n+1), A276573(n)]`
-/

namespace A278486.P9071520908490965173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P9071520908490965173

/-! ## A278486.P9107561694018959238

`p?[A276574(A276572(n))-1]+1`
-/

namespace A278486.P9107561694018959238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A276572 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A278486.P9107561694018959238

/-! ## A278486.P17743755172600761999

`∩[A000040(n+1)+1, A276573(n)]`
-/

namespace A278486.P17743755172600761999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P17743755172600761999

/-! ## A278486.P17241178117749001140

`∩[A008578(n+1)+1, A276573(n)]`
-/

namespace A278486.P17241178117749001140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P17241178117749001140

/-! ## A278486.P14116333921134215101

`∩[A033946(n+1)+1, A276573(n)]`
-/

namespace A278486.P14116333921134215101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P14116333921134215101

/-! ## A278486.P12871165117532821655

`∩[A046022(n+1)+1, A276573(n)]`
-/

namespace A278486.P12871165117532821655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P12871165117532821655

/-! ## A278486.P475037167223487327

`∩[A067126(n+1)+1, A276573(n)]`
-/

namespace A278486.P475037167223487327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P475037167223487327

/-! ## A278486.P8248478392071965473

`∩[A175787(n+1)+1, A276573(n)]`
-/

namespace A278486.P8248478392071965473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278486.P8248478392071965473

/-! ## A278486.P12905566299980336389

`record[A020639(A276573(n+1)-1)+1]`
-/

namespace A278486.P12905566299980336389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276573 (n + 1) - 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278486.P12905566299980336389

/-! ## A278486.P888472552915707128

`p?[A278517(n)+A278521(n)-1]+1`
-/

namespace A278486.P888472552915707128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 n + (A278521 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A278486.P888472552915707128

/-! ## A278486.P3805504511714086086

`p?[A278519(n)-A278522(n)-1]+1`
-/

namespace A278486.P3805504511714086086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - A278522 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A278486.P3805504511714086086

/-!
# A278487: Primes p such that p+1 is in A276573, the infinite trunk of least squares beanstalk.

The programs for A278487, there is no canonical definition to state claims against.
-/

/-! ## A278487.P13861375064900134891

`A278486(n+1)-1`
-/

namespace A278487.P13861375064900134891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278486 (n + 1) - 1

end

end A278487.P13861375064900134891

/-! ## A278487.P591970908876769653

`A276573(A278485(n+1))-1`
-/

namespace A278487.P591970908876769653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A278485 (n + 1)).toNat - 1

end

end A278487.P591970908876769653

/-! ## A278487.P7881000557901275989

`p?[A276573(n)-1]`
-/

namespace A278487.P7881000557901275989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278487.P7881000557901275989

/-! ## A278487.P8188483856457777045

`p?[A276574(A276572(n))-1]`
-/

namespace A278487.P8188483856457777045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A276572 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278487.P8188483856457777045

/-! ## A278487.P2762813306769376886

`∩[A028815(n), A276573(n)]-1`
-/

namespace A278487.P2762813306769376886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278487.P2762813306769376886

/-! ## A278487.P2517335586687499668

`record[A020639(A276573(n+1)-1)]`
-/

namespace A278487.P2517335586687499668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276573 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278487.P2517335586687499668

/-! ## A278487.P439276641188747145

`p?[A278517(n)+A278521(n)-1]`
-/

namespace A278487.P439276641188747145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 n + (A278521 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278487.P439276641188747145

/-! ## A278487.P17688605046970934909

`p?[A278519(n)-(A278522(n)+1)]`
-/

namespace A278487.P17688605046970934909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278519 n - (A278522 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278487.P17688605046970934909

/-! ## A278487.P17950775001226718909

`∩[A000040(n+1), A276573(n)-1]`
-/

namespace A278487.P17950775001226718909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278487.P17950775001226718909

/-! ## A278487.P4860784299905771061

`∩[A008578(n+1), A276573(n)-1]`
-/

namespace A278487.P4860784299905771061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278487.P4860784299905771061

/-! ## A278487.P2747751332151645174

`∩[A008864(n+1), A276573(n)]-1`
-/

namespace A278487.P2747751332151645174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278487.P2747751332151645174

/-! ## A278487.P15055972196651894777

`∩[A033946(n+1), A276573(n)-1]`
-/

namespace A278487.P15055972196651894777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278487.P15055972196651894777

/-! ## A278487.P12184153086303479548

`∩[A046022(n+1), A276573(n)-1]`
-/

namespace A278487.P12184153086303479548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278487.P12184153086303479548

/-! ## A278487.P2513530205138422298

`∩[A067126(n+1), A276573(n)-1]`
-/

namespace A278487.P2513530205138422298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278487.P2513530205138422298

/-! ## A278487.P11039719024193295752

`∩[A135731(n+1), A276573(n)]-1`
-/

namespace A278487.P11039719024193295752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278487.P11039719024193295752

/-! ## A278487.P9440080961891105131

`∩[A175787(n+1), A276573(n)-1]`
-/

namespace A278487.P9440080961891105131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278487.P9440080961891105131

/-! ## A278487.P14864670927286132304

`∩[A299763(n+1), A276573(n)]-1`
-/

namespace A278487.P14864670927286132304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278487.P14864670927286132304

/-! ## A278487.P14977679913365931844

`p?[∑[A276575(n+1)]-1]`
-/

namespace A278487.P14977679913365931844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278487.P14977679913365931844

/-! ## A278487.P3293307851771707064

`A278513(A277887(n+1))+A278486(n+1)`
-/

namespace A278487.P3293307851771707064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278513 (A277887 (n + 1)).toNat + A278486 (n + 1)

end

end A278487.P3293307851771707064

/-! ## A278487.P10937027807393434652

`A023443(A278486(n+1))`
-/

namespace A278487.P10937027807393434652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278486 (n + 1)).toNat

end

end A278487.P10937027807393434652

/-!
# A278488: a(n) = A276573(n) modulo 8.

The programs for A278488, there is no canonical definition to state claims against.
-/

/-! ## A278488.P11919817951594468

`A010877(A276573(n))`
-/

namespace A278488.P11919817951594468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A276573 n).toNat

end

end A278488.P11919817951594468

/-! ## A278488.P7025943642689442681

`∑[A276575(n)]%8`
-/

namespace A278488.P7025943642689442681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 8

end

end A278488.P7025943642689442681

/-! ## A278488.P2826199808099801472

`A010877(∑[A276575(n)])`
-/

namespace A278488.P2826199808099801472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278488.P2826199808099801472

/-! ## A278488.P16028382400550696311

`A276574(A276572(n))%8`
-/

namespace A278488.P16028382400550696311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276574 (A276572 n).toNat) 8

end

end A278488.P16028382400550696311

/-! ## A278488.P4801815498091530723

`A276573(n)%A040012(n)`
-/

namespace A278488.P4801815498091530723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276573 n) (A040012 n)

end

end A278488.P4801815498091530723

/-! ## A278488.P1545828154384514395

`(A278521(n)+A278517(n))%8`
-/

namespace A278488.P1545828154384514395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278521 n + A278517 n) 8

end

end A278488.P1545828154384514395

/-! ## A278488.P10489540509428951782

`and(7, A278519(n)-A278522(n))`
-/

namespace A278488.P10489540509428951782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A278519 n - A278522 n)

end

end A278488.P10489540509428951782

/-! ## A278488.P1795088867185086200

`and(A122553(n)²-2, A276573(n))`
-/

namespace A278488.P1795088867185086200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n ^ 2 - 2) (A276573 n)

end

end A278488.P1795088867185086200

/-! ## A278488.P14669966396614736389

`and(A196655(n), A276573(n))`
-/

namespace A278488.P14669966396614736389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A276573 n)

end

end A278488.P14669966396614736389

/-! ## A278488.P8276653250924524024

`and(A193579(n), A276573(n))`
-/

namespace A278488.P8276653250924524024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193579 n) (A276573 n)

end

end A278488.P8276653250924524024

/-! ## A278488.P17095293264892711884

`and(A195463(n), A276573(n))`
-/

namespace A278488.P17095293264892711884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195463 n) (A276573 n)

end

end A278488.P17095293264892711884

/-! ## A278488.P3983649561364007178

`and(A147597(n+1), A276573(n))`
-/

namespace A278488.P3983649561364007178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147597 (n + 1)) (A276573 n)

end

end A278488.P3983649561364007178

/-! ## A278488.P11256275859109967069

`and(A169727(n), A276573(n))`
-/

namespace A278488.P11256275859109967069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169727 n) (A276573 n)

end

end A278488.P11256275859109967069

/-!
# A278489: Nonleaves in the tree defined by edge relation A255131(child) = parent, the least squares beanstalk.

The programs for A278489, there is no canonical definition to state claims against.
-/

/-! ## A278489.P9695917664393187953

`comp[A278490(n+1)]`
-/

namespace A278489.P9695917664393187953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278489.P9695917664393187953

/-! ## A278489.P9186174358209405447

`lt[0, A278216(n)]`
-/

namespace A278489.P9186174358209405447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278489.P9186174358209405447

/-! ## A278489.P12493079788785243966

`record[(n+1)%(A278216(n+1)+n+1)]`
-/

namespace A278489.P12493079788785243966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A278216 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278489.P12493079788785243966

/-! ## A278489.P5275193584534191025

`lt[0, char[A255131(n)]]`
-/

namespace A278489.P5275193584534191025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278489.P5275193584534191025

/-! ## A278489.P3846409371064003957

`record[A255131(A328395(n))]`
-/

namespace A278489.P3846409371064003957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 (A328395 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278489.P3846409371064003957

/-! ## A278489.P13332230345695830838

`record[A255131(n)-A237420(A014963(n+1))]`
-/

namespace A278489.P13332230345695830838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 n - A237420 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278489.P13332230345695830838

/-! ## A278489.P11679215872443106821

`record[A078898(n)-A002828(2*n)]`
-/

namespace A278489.P11679215872443106821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n - A002828 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278489.P11679215872443106821

/-! ## A278489.P17428537961677232699

`record[A255131(A237420(n)/2)]`
-/

namespace A278489.P17428537961677232699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 (SequenceMachineLib.roundAway ((A237420 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278489.P17428537961677232699

/-! ## A278489.P11370563539400143838

`record[A255131(n)/A014963(2*(n+1))]`
-/

namespace A278489.P11370563539400143838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255131 n : ℚ) / (A014963 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278489.P11370563539400143838

/-! ## A278489.P12673179615018028339

`record[A255131(n+1)/A124779(n)]`
-/

namespace A278489.P12673179615018028339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255131 (n + 1) : ℚ) / (A124779 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278489.P12673179615018028339

/-!
# A278490: Leaves in the tree defined by edge relation A255131(child) = parent, the least squares beanstalk.

The programs for A278490, there is no canonical definition to state claims against.
-/

/-! ## A278490.P12214638161898107940

`comp[A278489(n)]`
-/

namespace A278490.P12214638161898107940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278489 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278490.P12214638161898107940

/-! ## A278490.P12865877340183390428

`comp[A255131(n)]`
-/

namespace A278490.P12865877340183390428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278490.P12865877340183390428

/-! ## A278490.P11244263027922180192

`eq[0, A278216(n)]`
-/

namespace A278490.P11244263027922180192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278490.P11244263027922180192

/-! ## A278490.P8931111065852085365

`record[(n+1)*(1-A278216(n+1))]`
-/

namespace A278490.P8931111065852085365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A278216 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278490.P8931111065852085365

/-! ## A278490.P1577911613436457774

`record[(n+1)/A016825(n)^A278216(n+1)]`
-/

namespace A278490.P1577911613436457774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A016825 n : ℚ) ^ (A278216 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278490.P1577911613436457774

/-! ## A278490.P2233466457467729093

`record[(n+1)/A008578(n+1)^A278216(n+1)]`
-/

namespace A278490.P2233466457467729093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008578 (n + 1) : ℚ) ^ (A278216 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278490.P2233466457467729093

/-! ## A278490.P10198396775297966758

`record[(n+1)/A000041(n*A278216(n+1))]`
-/

namespace A278490.P10198396775297966758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000041 ((n : ℤ) * A278216 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278490.P10198396775297966758

/-!
# A278491: After a(0)=0, numbers n such that (A002828(1+n) = 1) and (A002828(4+n) = 4).

The programs for A278491, the canonical program `A278491.P3466130709018157541` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278491 has offset 0).

The definition of A278491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278491.P3466130709018157541

`record[(A322016(n)+1)*A322015(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A278491

/-- `record[(A322016(n)+1)*A322015(n+1)]` -/
def P3466130709018157541.Spec : Prop :=
  ∀ n, P3466130709018157541.a n = A278491 n

theorem P3466130709018157541.correct : P3466130709018157541.Spec := by
  intro n
  simp only [A278491]

end A278491

/-! ## A278491.P931742543225245010

`A322016(∑[4-a(n-3)%4]²)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1, a(4)=4`
-/

namespace A278491.P931742543225245010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 1, 4] fun n f1 =>
  4 - Int.tmod (f1 (n - 3)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A278491.P931742543225245010

namespace A278491

/-- `A322016(∑[4-a(n-3)%4]²)` -/
def P931742543225245010.Spec : Prop :=
  ∀ n, P931742543225245010.a n = A278491 n

end A278491

/-! ## A278491.P8884089522468608702

`record[A322015(n²+A322017(n)+n)]`
-/

namespace A278491.P8884089522468608702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 ((n ^ 2 : ℤ) + (A322017 n + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278491.P8884089522468608702

namespace A278491

/-- `record[A322015(n²+A322017(n)+n)]` -/
def P8884089522468608702.Spec : Prop :=
  ∀ n, P8884089522468608702.a n = A278491 n

end A278491

/-! ## A278491.P13916824307104651809

`record[A322015(A322017(n)+n*(n+1))]`
-/

namespace A278491.P13916824307104651809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (A322017 n + (n * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278491.P13916824307104651809

namespace A278491

/-- `record[A322015(A322017(n)+n*(n+1))]` -/
def P13916824307104651809.Spec : Prop :=
  ∀ n, P13916824307104651809.a n = A278491 n

end A278491

/-! ## A278491.P5629483665625778064

`A322016(∑[A174828(a(n-3)+3)]²)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A278491.P5629483665625778064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f1 =>
  A174828 (f1 (n - 3) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A278491.P5629483665625778064

namespace A278491

/-- `A322016(∑[A174828(a(n-3)+3)]²)` -/
def P5629483665625778064.Spec : Prop :=
  ∀ n, P5629483665625778064.a n = A278491 n

end A278491

/-!
# A278492: Square array where row n (n >= 0) gives the numbers remaining after the n-th round of the Flavius sieve, read by descending antidiagonals.

The programs for A278492, there is no canonical definition to state claims against.
-/

/-! ## A278492.P5265318266846756148

`1+A278482(n)`
-/

namespace A278492.P5265318266846756148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A278482 n

end

end A278492.P5265318266846756148

/-! ## A278492.P18307510628000124368

`1-Δ[A025581(n)]*A278482(n)`
-/

namespace A278492.P18307510628000124368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) * A278482 n

end

end A278492.P18307510628000124368

/-! ## A278492.P1180017689535567038

`A278493(A061579(n))`
-/

namespace A278492.P1180017689535567038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (A061579 n).toNat

end

end A278492.P1180017689535567038

/-! ## A278492.P2878970392274112277

`A278493(A038722(n+1)-1)`
-/

namespace A278492.P2878970392274112277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (A038722 (n + 1) - 1).toNat

end

end A278492.P2878970392274112277

/-! ## A278492.P4624704473994987480

`A278493(A004736(n+1)-A002260(n+1)+n)`
-/

namespace A278492.P4624704473994987480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (A004736 (n + 1) - A002260 (n + 1) + (n : ℤ)).toNat

end

end A278492.P4624704473994987480

/-! ## A278492.P1828002849102956029

`A278493(A038722(n+2))`
-/

namespace A278492.P1828002849102956029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278493 (A038722 (n + 2)).toNat

end

end A278492.P1828002849102956029

/-! ## A278492.P4828550321566997289

`1-(A278482(A000096(n))-A278482(n))`
-/

namespace A278492.P4828550321566997289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A278482 (A000096 n).toNat - A278482 n)

end

end A278492.P4828550321566997289

/-! ## A278492.P16619660400560412401

`2-(A110302(A088157(n))-A278482(n))`
-/

namespace A278492.P16619660400560412401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A110302 (A088157 n).toNat - A278482 n)

end

end A278492.P16619660400560412401

/-!
# A278493: Transpose of square array A278492.

The programs for A278493, there is no canonical definition to state claims against.
-/

/-! ## A278493.P16566075141524840219

`A278483(n)+1`
-/

namespace A278493.P16566075141524840219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278483 n + 1

end

end A278493.P16566075141524840219

/-! ## A278493.P14636650007497304454

`A278492(A061579(n))`
-/

namespace A278493.P14636650007497304454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (A061579 n).toNat

end

end A278493.P14636650007497304454

/-! ## A278493.P7255389217007871201

`A278492(A038722(n+1)-1)`
-/

namespace A278493.P7255389217007871201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (A038722 (n + 1) - 1).toNat

end

end A278493.P7255389217007871201

/-! ## A278493.P16907091413454618501

`A278482(A038722(n+1)-1)+1`
-/

namespace A278493.P16907091413454618501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278482 (A038722 (n + 1) - 1).toNat + 1

end

end A278493.P16907091413454618501

/-! ## A278493.P87511564030890184

`A278492(A025581(n)+n-A002262(n))`
-/

namespace A278493.P87511564030890184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A278493.P87511564030890184

/-! ## A278493.P17956086867791297554

`A278492(n-(A002262(n)-A025581(n)))`
-/

namespace A278493.P17956086867791297554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A278493.P17956086867791297554

/-! ## A278493.P1346398023336594016

`A278492(n-A055087(2*n+1))`
-/

namespace A278493.P1346398023336594016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 ((n : ℤ) - A055087 (2 * n + 1)).toNat

end

end A278493.P1346398023336594016

/-!
# A278494: Primes p for which there does not exist any such integer k that k - A002828(k) = p.

The programs for A278494, there is no canonical definition to state claims against.
-/

/-! ## A278494.P2812744631515935964

`p?[A278490(n+1)]`
-/

namespace A278494.P2812744631515935964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278494.P2812744631515935964

/-! ## A278494.P10322211562305587140

`record[A006530(A278490(n+2))]`
-/

namespace A278494.P10322211562305587140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A278490 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278494.P10322211562305587140

/-! ## A278494.P4739509682262905437

`record[A020639(A278490(n+3))]`
-/

namespace A278494.P4739509682262905437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278490 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278494.P4739509682262905437

/-! ## A278494.P14619590865358134384

`filter[A278490(n+1), A010051(#)]`
-/

namespace A278494.P14619590865358134384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A278494.P14619590865358134384

/-! ## A278494.P5180954715703637824

`∩[A000040(n+1), A278490(n+1)]`
-/

namespace A278494.P5180954715703637824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278494.P5180954715703637824

/-! ## A278494.P2191696366229287453

`∩[A045344(n+1), A278490(n+1)]`
-/

namespace A278494.P2191696366229287453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278494.P2191696366229287453

/-! ## A278494.P3068022883407693102

`∩[A045352(n+1), A278490(n+1)]`
-/

namespace A278494.P3068022883407693102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278494.P3068022883407693102

/-! ## A278494.P2273772389828590718

`∩[A116974(n+1), A278490(n+1)]`
-/

namespace A278494.P2273772389828590718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278494.P2273772389828590718

/-! ## A278494.P14805489982513893550

`∩[A182986(n+1), A278490(n+1)]`
-/

namespace A278494.P14805489982513893550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278494.P14805489982513893550

/-! ## A278494.P6667453585675622353

`∩[A270617(n+1), A278490(n+1)]`
-/

namespace A278494.P6667453585675622353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278494.P6667453585675622353

/-! ## A278494.P1435454822487049300

`p?[eq[0, A278216(n)]]`
-/

namespace A278494.P1435454822487049300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278216 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A278494.P1435454822487049300

/-! ## A278494.P15317322143626844693

`filter[A278490(n+2), A080339(#)]`
-/

namespace A278494.P15317322143626844693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A278494.P15317322143626844693

/-! ## A278494.P15953384442255298294

`p?[n-A000290(n)*A278216(n)]`
-/

namespace A278494.P15953384442255298294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000290 n * A278216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278494.P15953384442255298294

/-! ## A278494.P17520399365916283483

`∩[A240960(n+1), A278490(n+1)]`
-/

namespace A278494.P17520399365916283483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278494.P17520399365916283483

/-!
# A278495: a(n) = number of primes in range [n^2, (n+1)^2] that are leaves in "the least squares beanstalk" tree.

The programs for A278495, there is no canonical definition to state claims against.
-/

/-! ## A278495.P2294239087687524498

`A228351(A256268(3*(n+1)))+A030308(n)`
-/

namespace A278495.P2294239087687524498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A256268 (3 * (n + 1))).toNat + A030308 n

end

end A278495.P2294239087687524498

/-!
# A278496: a(n) = A000196(A278494(n)).

The programs for A278496, there is no canonical definition to state claims against.
-/

/-! ## A278496.P15775240284963153016

`A000196(A278494(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278496.P15775240284963153016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A278494 (n + 1)).toNat

end

end A278496.P15775240284963153016

/-! ## A278496.P12410617072409285751

`∑[char[∑[A278495(n+1)]]]+1`
-/

namespace A278496.P12410617072409285751
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A278496.P12410617072409285751

/-! ## A278496.P9744897836680576097

`floor(sqrt(A278494(2*n+1-n)))`
-/

namespace A278496.P9744897836680576097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A278494 (2 * n + 1 - n))

end

end A278496.P9744897836680576097

/-! ## A278496.P643769300300236519

`A000267(floor(A278494(n+1)/4))`
-/

namespace A278496.P643769300300236519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ⌊(A278494 (n + 1) : ℚ) / 4⌋.toNat

end

end A278496.P643769300300236519

/-! ## A278496.P2663515386122149609

`floor(sqrt(p?[A278490(n+1)]))`
-/

namespace A278496.P2663515386122149609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A278496.P2663515386122149609

/-! ## A278496.P17613616265362069341

`A000196(p?[A278490(n+1)])`
-/

namespace A278496.P17613616265362069341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A278496.P17613616265362069341

/-! ## A278496.P10212622434908209650

`A094683(∩[A000040(n+1), A278490(n+1)]-1)`
-/

namespace A278496.P10212622434908209650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n - 1)

end

end A278496.P10212622434908209650

/-! ## A278496.P851108737198558306

`A094683(∩[A045344(n+1), A278490(n+1)]-1)`
-/

namespace A278496.P851108737198558306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n - 1)

end

end A278496.P851108737198558306

/-! ## A278496.P17214970285354737639

`A094683(∩[A116974(n+1), A278490(n+1)]-1)`
-/

namespace A278496.P17214970285354737639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n - 1)

end

end A278496.P17214970285354737639

/-!
# A278497: a(n) = Least number with the prime signature of A276573(n).

The programs for A278497, there is no canonical definition to state claims against.
-/

/-! ## A278497.P4822480693097001019

`A046523(A276573(n+1))`
-/

namespace A278497.P4822480693097001019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A276573 (n + 1)).toNat

end

end A278497.P4822480693097001019

/-! ## A278497.P9954143422619699520

`A046523(∑[A276575(n+1)])`
-/

namespace A278497.P9954143422619699520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278497.P9954143422619699520

/-! ## A278497.P6778618561364674827

`A046523(lt[0, n*A278515(n)])`
-/

namespace A278497.P6778618561364674827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A278515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A278497.P6778618561364674827

/-! ## A278497.P8691481102706095466

`A046523(record[A276573(ceil(abs((1-n)/2)))])`
-/

namespace A278497.P8691481102706095466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278497.P8691481102706095466

/-! ## A278497.P2339356088936566474

`A046523(lt[A000007(n), A278515(n)])`
-/

namespace A278497.P2339356088936566474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278497.P2339356088936566474

/-! ## A278497.P1034500771221768492

`A046523(lt[1/A046523(n+1), A278515(n)])`
-/

namespace A278497.P1034500771221768492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A046523 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A278497.P1034500771221768492

/-!
# A278498: a(n) = A065338(A276573(n)).

The programs for A278498, there is no canonical definition to state claims against.
-/

/-! ## A278498.P13882045022479965453

`A065338(A276573(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278498.P13882045022479965453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A276573 (n + 1)).toNat

end

end A278498.P13882045022479965453

/-! ## A278498.P2980562958355393761

`A065338(∑[A276575(n+1)])`
-/

namespace A278498.P2980562958355393761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278498.P2980562958355393761

/-! ## A278498.P8863541011348848576

`A065338(lt[0, n*A278515(n)])`
-/

namespace A278498.P8863541011348848576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A278515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A278498.P8863541011348848576

/-! ## A278498.P4221664541737855056

`A065338(lt[A000007(n), A278515(n)])`
-/

namespace A278498.P4221664541737855056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278498.P4221664541737855056

/-!
# A278499: a(n) = A276573(n) modulo 4.

The programs for A278499, there is no canonical definition to state claims against.
-/

/-! ## A278499.P2326817734709349519

`A010873(A276573(n))`
-/

namespace A278499.P2326817734709349519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A276573 n).toNat

end

end A278499.P2326817734709349519

/-! ## A278499.P10818380103542931751

`A278488(n)%4`
-/

namespace A278499.P10818380103542931751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278488 n) 4

end

end A278499.P10818380103542931751

/-! ## A278499.P15471895532662106655

`∑[A276575(n)]%4`
-/

namespace A278499.P15471895532662106655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A278499.P15471895532662106655

/-! ## A278499.P9165293940815242286

`A010873(∑[A276575(n)])`
-/

namespace A278499.P9165293940815242286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278499.P9165293940815242286

/-! ## A278499.P1414491405037770731

`A276574(A276572(n))%4`
-/

namespace A278499.P1414491405037770731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276574 (A276572 n).toNat) 4

end

end A278499.P1414491405037770731

/-! ## A278499.P18422274777514657958

`A276573(n)%A040002(n)`
-/

namespace A278499.P18422274777514657958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276573 n) (A040002 n)

end

end A278499.P18422274777514657958

/-! ## A278499.P13121337686055234129

`and(A001538(n), A278488(n))`
-/

namespace A278499.P13121337686055234129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001538 n) (A278488 n)

end

end A278499.P13121337686055234129

/-! ## A278499.P7174430710845215831

`and(A001539(n), A278488(n))`
-/

namespace A278499.P7174430710845215831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A278488 n)

end

end A278499.P7174430710845215831

/-! ## A278499.P4025609488530201345

`and(A002148(n), A278488(n))`
-/

namespace A278499.P4025609488530201345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002148 n) (A278488 n)

end

end A278499.P4025609488530201345

/-! ## A278499.P299439545151037909

`and(A004769(n), A278488(n))`
-/

namespace A278499.P299439545151037909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004769 n) (A278488 n)

end

end A278499.P299439545151037909

/-! ## A278499.P18315777376453340029

`and(A017101(n), A278488(n))`
-/

namespace A278499.P18315777376453340029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017101 n) (A278488 n)

end

end A278499.P18315777376453340029

/-! ## A278499.P10073614936549749802

`and(A017103(n), A278488(n))`
-/

namespace A278499.P10073614936549749802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017103 n) (A278488 n)

end

end A278499.P10073614936549749802

/-! ## A278499.P10044928336552567644

`and(A017105(n), A278488(n))`
-/

namespace A278499.P10044928336552567644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017105 n) (A278488 n)

end

end A278499.P10044928336552567644

/-! ## A278499.P9739463121199513121

`and(A066322(n), A278488(n))`
-/

namespace A278499.P9739463121199513121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066322 n) (A278488 n)

end

end A278499.P9739463121199513121

/-! ## A278499.P6018106020489259946

`and(A086760(n), A278488(n))`
-/

namespace A278499.P6018106020489259946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086760 n) (A278488 n)

end

end A278499.P6018106020489259946

/-! ## A278499.P16663680162509177528

`and(A094200(n), A278488(n))`
-/

namespace A278499.P16663680162509177528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094200 n) (A278488 n)

end

end A278499.P16663680162509177528

/-! ## A278499.P16070967508648733280

`and(A106839(n), A278488(n))`
-/

namespace A278499.P16070967508648733280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106839 n) (A278488 n)

end

end A278499.P16070967508648733280

/-! ## A278499.P15607884957025476846

`and(A122553(n), A276573(n))`
-/

namespace A278499.P15607884957025476846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A276573 n)

end

end A278499.P15607884957025476846

/-! ## A278499.P10127284419193179399

`and(A122553(n), A278488(n))`
-/

namespace A278499.P10127284419193179399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A278488 n)

end

end A278499.P10127284419193179399

/-! ## A278499.P2250211532175666974

`and(A134429(n), A278488(n))`
-/

namespace A278499.P2250211532175666974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134429 n) (A278488 n)

end

end A278499.P2250211532175666974

