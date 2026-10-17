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
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C023

/-!
# A041101: Denominators of continued fraction convergents to sqrt(58).

The programs for A041101, there is no canonical definition to state claims against.
-/

/-! ## A041101.P17559787066545005745

`C(A225394(n), A043281(Δ[3^n]))`
-/

namespace A041101.P17559787066545005745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225394 n).toNat (A043281 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A041101.P17559787066545005745

/-! ## A041101.P5361422882467060229

`C(A196155(ceil(2^(n-1))), A069010(n+2))`
-/

namespace A041101.P5361422882467060229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A196155 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat (A069010 (n + 2)).toNat

end

end A041101.P5361422882467060229

/-! ## A041101.P16634882049548096575

`C(A225394(n), A051064(A003480(n)))`
-/

namespace A041101.P16634882049548096575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225394 n).toNat (A051064 (A003480 n).toNat).toNat

end

end A041101.P16634882049548096575

/-!
# A041104: Numerators of continued fraction convergents to sqrt(60).

The programs for A041104, there is no canonical definition to state claims against.
-/

/-! ## A041104.P16277478246387491935

`A266193(3*A041172(n))`
-/

namespace A041104.P16277478246387491935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (3 * A041172 n).toNat

end

end A041104.P16277478246387491935

/-!
# A041105: Denominators of continued fraction convergents to sqrt(60).

The programs for A041105, the canonical program `A041105.P5042149144408666189` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041105 has offset 0).

The definition of A041105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041105.P5042149144408666189

`62*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=59, a(5)=63, a(6)=185, a(7)=248`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041105

/-- `62*a(n-4)-a(n-8)` -/
def P5042149144408666189.Spec : Prop :=
  ∀ n, P5042149144408666189.a n = A041105 n

theorem P5042149144408666189.correct : P5042149144408666189.Spec := by
  intro n
  simp only [A041105]

end A041105

/-! ## A041105.P13512035671422977995

`A004277(A041351(n))-A041741(n)`
-/

namespace A041105.P13512035671422977995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041351 n).toNat - A041741 n

end

end A041105.P13512035671422977995

namespace A041105

/-- `A004277(A041351(n))-A041741(n)` -/
def P13512035671422977995.Spec : Prop :=
  ∀ n, P13512035671422977995.a n = A041105 n

end A041105

/-! ## A041105.P74269822479697558

`A004277(A041465(n))-A042081(n)`
-/

namespace A041105.P74269822479697558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041465 n).toNat - A042081 n

end

end A041105.P74269822479697558

namespace A041105

/-- `A004277(A041465(n))-A042081(n)` -/
def P74269822479697558.Spec : Prop :=
  ∀ n, P74269822479697558.a n = A041105 n

end A041105

/-!
# A041109: Denominators of continued fraction convergents to sqrt(62).

The programs for A041109, there is no canonical definition to state claims against.
-/

/-! ## A041109.P14181625411823117895

`A001281(A041259(n)+A041023(n))`
-/

namespace A041109.P14181625411823117895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041259 n + A041023 n).toNat

end

end A041109.P14181625411823117895

/-! ## A041109.P7234153375231317915

`A004525(A041259(n)+A041023(n))`
-/

namespace A041109.P7234153375231317915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041259 n + A041023 n).toNat

end

end A041109.P7234153375231317915

/-! ## A041109.P9773795690030823820

`A004526(A041259(n)+A041023(n))`
-/

namespace A041109.P9773795690030823820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A041259 n + A041023 n).toNat

end

end A041109.P9773795690030823820

/-!
# A041110: Numerators of continued fraction convergents to sqrt(63).

The programs for A041110, the canonical program `A041110.P5647184166633301588` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041110 has offset 0).

The definition of A041110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041110.P5647184166633301588

`16*a(n-2)-a(n-4)` with `a(0)=7, a(1)=8, a(2)=119, a(3)=127`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041110

/-- `16*a(n-2)-a(n-4)` -/
def P5647184166633301588.Spec : Prop :=
  ∀ n, P5647184166633301588.a n = A041110 n

theorem P5647184166633301588.correct : P5647184166633301588.Spec := by
  intro n
  simp only [A041110]

end A041110

/-! ## A041110.P5102280278766887589

`∪[A001081(n+1), Δ[A001081(n)]]`
-/

namespace A041110.P5102280278766887589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A041110.P5102280278766887589

namespace A041110

/-- `∪[A001081(n+1), Δ[A001081(n)]]` -/
def P5102280278766887589.Spec : Prop :=
  ∀ n, (P5102280278766887589.a n : ℤ) = A041110 n

end A041110

/-!
# A041111: Denominators of continued fraction convergents to sqrt(63).

The programs for A041111, the canonical program `A041111.P6815192844580179073` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041111 has offset 0).

The definition of A041111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041111.P6815192844580179073

`16*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=15, a(3)=16`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041111

/-- `16*a(n-2)-a(n-4)` -/
def P6815192844580179073.Spec : Prop :=
  ∀ n, P6815192844580179073.a n = A041111 n

theorem P6815192844580179073.correct : P6815192844580179073.Spec := by
  intro n
  simp only [A041111]

end A041111

/-! ## A041111.P12942837332187662252

`A243469(n+1)/gcd(2, n+1)`
-/

namespace A041111.P12942837332187662252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243469 (n + 1) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A041111.P12942837332187662252

namespace A041111

/-- `A243469(n+1)/gcd(2, n+1)` -/
def P12942837332187662252.Spec : Prop :=
  ∀ n, P12942837332187662252.a n = (A041111 n : ℚ)

end A041111

/-! ## A041111.P3823139366725302259

`A243470(n+1)/7^(n%2)`
-/

namespace A041111.P3823139366725302259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243470 (n + 1) : ℚ) / (7 ^ (n % 2) : ℚ)

end

end A041111.P3823139366725302259

namespace A041111

/-- `A243470(n+1)/7^(n%2)` -/
def P3823139366725302259.Spec : Prop :=
  ∀ n, P3823139366725302259.a n = (A041111 n : ℚ)

end A041111

/-! ## A041111.P10006657151531364365

`A243469(n+1)/A000034(n)`
-/

namespace A041111.P10006657151531364365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243469 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041111.P10006657151531364365

namespace A041111

/-- `A243469(n+1)/A000034(n)` -/
def P10006657151531364365.Spec : Prop :=
  ∀ n, P10006657151531364365.a n = (A041111 n : ℚ)

end A041111

/-! ## A041111.P14134104405809459820

`A243470(n+1)/A010688(n)`
-/

namespace A041111.P14134104405809459820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243470 (n + 1) : ℚ) / (A010688 n : ℚ)

end

end A041111.P14134104405809459820

namespace A041111

/-- `A243470(n+1)/A010688(n)` -/
def P14134104405809459820.Spec : Prop :=
  ∀ n, P14134104405809459820.a n = (A041111 n : ℚ)

end A041111

/-! ## A041111.P7898494166831001299

`A243469(n+1)/Δ[A032766(n)]`
-/

namespace A041111.P7898494166831001299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243469 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041111.P7898494166831001299

namespace A041111

/-- `A243469(n+1)/Δ[A032766(n)]` -/
def P7898494166831001299.Spec : Prop :=
  ∀ n, P7898494166831001299.a n = (A041111 n : ℚ)

end A041111

/-! ## A041111.P8043746609132429503

`A243469(n+1)/A134451(n+1)`
-/

namespace A041111.P8043746609132429503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243469 (n + 1) : ℚ) / (A134451 (n + 1) : ℚ)

end

end A041111.P8043746609132429503

namespace A041111

/-- `A243469(n+1)/A134451(n+1)` -/
def P8043746609132429503.Spec : Prop :=
  ∀ n, P8043746609132429503.a n = (A041111 n : ℚ)

end A041111

/-! ## A041111.P10545080229409781077

`gcd(A243469(n+1), A243470(n+1))`
-/

namespace A041111.P10545080229409781077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243469 (n + 1)) (A243470 (n + 1))

end

end A041111.P10545080229409781077

namespace A041111

/-- `gcd(A243469(n+1), A243470(n+1))` -/
def P10545080229409781077.Spec : Prop :=
  ∀ n, (P10545080229409781077.a n : ℤ) = A041111 n

end A041111

/-! ## A041111.P9186651836587082297

`A243469(n+1)/A014963(A006519(n+1))`
-/

namespace A041111.P9186651836587082297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243469 (n + 1) : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A041111.P9186651836587082297

namespace A041111

/-- `A243469(n+1)/A014963(A006519(n+1))` -/
def P9186651836587082297.Spec : Prop :=
  ∀ n, P9186651836587082297.a n = (A041111 n : ℚ)

end A041111

/-! ## A041111.P16799042296224475393

`A002530(n+1)/A048788(n+1)*A243469(n+1)`
-/

namespace A041111.P16799042296224475393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002530 (n + 1) : ℚ) / (A048788 (n + 1) : ℚ) * (A243469 (n + 1) : ℚ)

end

end A041111.P16799042296224475393

namespace A041111

/-- `A002530(n+1)/A048788(n+1)*A243469(n+1)` -/
def P16799042296224475393.Spec : Prop :=
  ∀ n, P16799042296224475393.a n = (A041111 n : ℚ)

end A041111

/-! ## A041111.P1657022224114349762

`round(A041110(n)/sqrt(63))`
-/

namespace A041111.P1657022224114349762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041110 n : ℝ) / Real.sqrt (63 : ℝ))

end

end A041111.P1657022224114349762

namespace A041111

/-- `round(A041110(n)/sqrt(63))` -/
def P1657022224114349762.Spec : Prop :=
  ∀ n, P1657022224114349762.a n = A041111 n

end A041111

/-! ## A041111.P11279196922988406922

`A243469(n+1)/A006519(n²+1)`
-/

namespace A041111.P11279196922988406922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243469 (n + 1) : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041111.P11279196922988406922

namespace A041111

/-- `A243469(n+1)/A006519(n²+1)` -/
def P11279196922988406922.Spec : Prop :=
  ∀ n, P11279196922988406922.a n = (A041111 n : ℚ)

end A041111

/-!
# A041112: Numerators of continued fraction convergents to sqrt(65).

The programs for A041112, the canonical program `A041112.P7179192648694745073` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041112 has offset 0).

The definition of A041112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041112.P7179192648694745073

`16*a(n-1)+a(n-2)` with `a(0)=8, a(1)=129`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041112

/-- `16*a(n-1)+a(n-2)` -/
def P7179192648694745073.Spec : Prop :=
  ∀ n, (P7179192648694745073.a n : ℤ) = A041112 n

theorem P7179192648694745073.correct : P7179192648694745073.Spec := by
  intro n
  simp only [A041112]

end A041112

/-! ## A041112.P16164219660641707149

`A090305(n+1)/2`
-/

namespace A041112.P16164219660641707149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090305 (n + 1) : ℚ) / 2

end

end A041112.P16164219660641707149

namespace A041112

/-- `A090305(n+1)/2` -/
def P16164219660641707149.Spec : Prop :=
  ∀ n, P16164219660641707149.a n = (A041112 n : ℚ)

end A041112

/-! ## A041112.P8215515521319168487

`A041486(n)/gcd(2, n)`
-/

namespace A041112.P8215515521319168487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041486 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041112.P8215515521319168487

namespace A041112

/-- `A041486(n)/gcd(2, n)` -/
def P8215515521319168487.Spec : Prop :=
  ∀ n, P8215515521319168487.a n = (A041112 n : ℚ)

end A041112

/-! ## A041112.P15580540860251834024

`Δ[∑[A090305(n)]/2]`
-/

namespace A041112.P15580540860251834024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090305 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A041112.P15580540860251834024

namespace A041112

/-- `Δ[∑[A090305(n)]/2]` -/
def P15580540860251834024.Spec : Prop :=
  ∀ n, P15580540860251834024.a n = (A041112 n : ℚ)

end A041112

/-! ## A041112.P11565780014818002500

`A041486(n)/ratio[A060546(n)]`
-/

namespace A041112.P11565780014818002500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041486 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A041112.P11565780014818002500

namespace A041112

/-- `A041486(n)/ratio[A060546(n)]` -/
def P11565780014818002500.Spec : Prop :=
  ∀ n, P11565780014818002500.a n = (A041112 n : ℚ)

end A041112

/-! ## A041112.P1509179602842995095

`A041486(n)/A000034(n+1)`
-/

namespace A041112.P1509179602842995095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041486 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041112.P1509179602842995095

namespace A041112

/-- `A041486(n)/A000034(n+1)` -/
def P1509179602842995095.Spec : Prop :=
  ∀ n, P1509179602842995095.a n = (A041112 n : ℚ)

end A041112

/-! ## A041112.P8953188700289422251

`A000034(n)/2*A041486(n)`
-/

namespace A041112.P8953188700289422251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041486 n : ℚ)

end

end A041112.P8953188700289422251

namespace A041112

/-- `A000034(n)/2*A041486(n)` -/
def P8953188700289422251.Spec : Prop :=
  ∀ n, P8953188700289422251.a n = (A041112 n : ℚ)

end A041112

/-!
# A041113: Denominators of continued fraction convergents to sqrt(65).

The programs for A041113, the canonical program `A041113.P11877642920065015939` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041113 has offset 0).

The definition of A041113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041113.P11877642920065015939

`16*a(n-1)+a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041113

/-- `16*a(n-1)+a(n-2)` -/
def P11877642920065015939.Spec : Prop :=
  ∀ n, (P11877642920065015939.a n : ℤ) = A041113 n

theorem P11877642920065015939.correct : P11877642920065015939.Spec := by
  intro n
  simp only [A041113]

end A041113

/-! ## A041113.P12830615722152951713

`((8+sqrt(65))^(n+1)-(8-sqrt(65))^(n+1))/(2*sqrt(65))`
-/

namespace A041113.P12830615722152951713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 + Real.sqrt (65 : ℝ)) ^ (n + 1) - (8 - Real.sqrt (65 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (65 : ℝ))

end

end A041113.P12830615722152951713

namespace A041113

/-- `((8+sqrt(65))^(n+1)-(8-sqrt(65))^(n+1))/(2*sqrt(65))` -/
def P12830615722152951713.Spec : Prop :=
  ∀ n, P12830615722152951713.a n = (A041113 n : ℝ)

end A041113

/-! ## A041113.P8172668586864500966

`A000034(n)*A041487(n)`
-/

namespace A041113.P8172668586864500966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041487 n

end

end A041113.P8172668586864500966

namespace A041113

/-- `A000034(n)*A041487(n)` -/
def P8172668586864500966.Spec : Prop :=
  ∀ n, P8172668586864500966.a n = A041113 n

end A041113

/-! ## A041113.P11660848716893242505

`gcd(2, A041085(n))*A041487(n)`
-/

namespace A041113.P11660848716893242505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A041085 n) : ℤ) * A041487 n

end

end A041113.P11660848716893242505

namespace A041113

/-- `gcd(2, A041085(n))*A041487(n)` -/
def P11660848716893242505.Spec : Prop :=
  ∀ n, P11660848716893242505.a n = A041113 n

end A041113

/-! ## A041113.P13986029293168351518

`A108300(n)%3*A041487(n)`
-/

namespace A041113.P13986029293168351518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108300 n) 3 * A041487 n

end

end A041113.P13986029293168351518

namespace A041113

/-- `A108300(n)%3*A041487(n)` -/
def P13986029293168351518.Spec : Prop :=
  ∀ n, P13986029293168351518.a n = A041113 n

end A041113

/-! ## A041113.P7088253381560876756

`A041085(n)/A041371(n)*A041487(n)`
-/

namespace A041113.P7088253381560876756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041085 n : ℚ) / (A041371 n : ℚ) * (A041487 n : ℚ)

end

end A041113.P7088253381560876756

namespace A041113

/-- `A041085(n)/A041371(n)*A041487(n)` -/
def P7088253381560876756.Spec : Prop :=
  ∀ n, P7088253381560876756.a n = (A041113 n : ℚ)

end A041113

/-!
# A041114: Numerators of continued fraction convergents to sqrt(66).

The programs for A041114, there is no canonical definition to state claims against.
-/

/-! ## A041114.P5677754760410684871

`lcm(2, A041494(n))/2`
-/

namespace A041114.P5677754760410684871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041494 n) : ℚ) / 2

end

end A041114.P5677754760410684871

/-! ## A041114.P14289833071610276112

`A041494(n)/A040001(n+2)`
-/

namespace A041114.P14289833071610276112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041494 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041114.P14289833071610276112

/-! ## A041114.P17364351377344159190

`A041494(n)/A014709(2*(n+1))`
-/

namespace A041114.P17364351377344159190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041494 n : ℚ) / (A014709 (2 * (n + 1)) : ℚ)

end

end A041114.P17364351377344159190

/-! ## A041114.P14041105712538511677

`A041494(n)/A001222(A116570(n))`
-/

namespace A041114.P14041105712538511677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041494 n : ℚ) / (A001222 (A116570 n).toNat : ℚ)

end

end A041114.P14041105712538511677

/-! ## A041114.P1124266369903247176

`A041495(n+1)/A041115(n+1)*A041494(n)`
-/

namespace A041114.P1124266369903247176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041495 (n + 1) : ℚ) / (A041115 (n + 1) : ℚ) * (A041494 n : ℚ)

end

end A041114.P1124266369903247176

/-!
# A041115: Denominators of continued fraction convergents to sqrt(66).

The programs for A041115, there is no canonical definition to state claims against.
-/

/-! ## A041115.P7578001052792310756

`A014709(2*n)*A041495(n)`
-/

namespace A041115.P7578001052792310756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (2 * n) * A041495 n

end

end A041115.P7578001052792310756

/-! ## A041115.P5024896198219671517

`A041495(n)*A345220(A000040(n+1))`
-/

namespace A041115.P5024896198219671517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041495 n * A345220 (A000040 (n + 1)).toNat

end

end A041115.P5024896198219671517

/-! ## A041115.P9098450241130228057

`A041495(n)*A323071(A163300(n+2))`
-/

namespace A041115.P9098450241130228057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041495 n * A323071 (A163300 (n + 2)).toNat

end

end A041115.P9098450241130228057

/-! ## A041115.P12321719607030890634

`A041494(n+1)/A041114(n+1)*A041495(n)`
-/

namespace A041115.P12321719607030890634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041494 (n + 1) : ℚ) / (A041114 (n + 1) : ℚ) * (A041495 n : ℚ)

end

end A041115.P12321719607030890634

/-!
# A041117: Denominators of continued fraction convergents to sqrt(67).

The programs for A041117, there is no canonical definition to state claims against.
-/

/-! ## A041117.P16528821771514904425

`A314127(eq[A314081(n), A314091(n)])`
-/

namespace A041117.P16528821771514904425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314127 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A041117.P16528821771514904425

/-!
# A041118: Numerators of continued fraction convergents to sqrt(68).

The programs for A041118, the canonical program `A041118.P17350065025436226560` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041118 has offset 0).

The definition of A041118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041118.P17350065025436226560

`gcd(2, n)*A041024(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041118

/-- `gcd(2, n)*A041024(n)` -/
def P17350065025436226560.Spec : Prop :=
  ∀ n, P17350065025436226560.a n = A041118 n

theorem P17350065025436226560.correct : P17350065025436226560.Spec := by
  intro n
  simp only [A041118]

end A041118

/-! ## A041118.P417652133667638508

`Δ[A007494(n)]*A041024(n)`
-/

namespace A041118.P417652133667638508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041024 n

end

end A041118.P417652133667638508

namespace A041118

/-- `Δ[A007494(n)]*A041024(n)` -/
def P417652133667638508.Spec : Prop :=
  ∀ n, P417652133667638508.a n = A041118 n

end A041118

/-! ## A041118.P15778024279225407891

`A000034(n+1)*A041024(n)`
-/

namespace A041118.P15778024279225407891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041024 n

end

end A041118.P15778024279225407891

namespace A041118

/-- `A000034(n+1)*A041024(n)` -/
def P15778024279225407891.Spec : Prop :=
  ∀ n, P15778024279225407891.a n = A041118 n

end A041118

/-! ## A041118.P11965332865786400925

`A041510(n)/A000034(n+1)`
-/

namespace A041118.P11965332865786400925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041510 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041118.P11965332865786400925

namespace A041118

/-- `A041510(n)/A000034(n+1)` -/
def P11965332865786400925.Spec : Prop :=
  ∀ n, P11965332865786400925.a n = (A041118 n : ℚ)

end A041118

/-! ## A041118.P1305980271292478310

`A040001(n+2)*A041024(n)`
-/

namespace A041118.P1305980271292478310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041024 n

end

end A041118.P1305980271292478310

namespace A041118

/-- `A040001(n+2)*A041024(n)` -/
def P1305980271292478310.Spec : Prop :=
  ∀ n, P1305980271292478310.a n = A041118 n

end A041118

/-! ## A041118.P3781735132295424479

`2/A000034(n)*A041024(n)`
-/

namespace A041118.P3781735132295424479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041024 n : ℚ)

end

end A041118.P3781735132295424479

namespace A041118

/-- `2/A000034(n)*A041024(n)` -/
def P3781735132295424479.Spec : Prop :=
  ∀ n, P3781735132295424479.a n = (A041118 n : ℚ)

end A041118

/-! ## A041118.P2052269531252110868

`A000034(n)/2*A041510(n)`
-/

namespace A041118.P2052269531252110868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041510 n : ℚ)

end

end A041118.P2052269531252110868

namespace A041118

/-- `A000034(n)/2*A041510(n)` -/
def P2052269531252110868.Spec : Prop :=
  ∀ n, P2052269531252110868.a n = (A041118 n : ℚ)

end A041118

/-! ## A041118.P6948174749611898850

`A086594(n+1)/A000034(n)`
-/

namespace A041118.P6948174749611898850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086594 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041118.P6948174749611898850

namespace A041118

/-- `A086594(n+1)/A000034(n)` -/
def P6948174749611898850.Spec : Prop :=
  ∀ n, P6948174749611898850.a n = (A041118 n : ℚ)

end A041118

/-! ## A041118.P10235320129823285527

`A086594(n+1)/(A000035(n)+1)`
-/

namespace A041118.P10235320129823285527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086594 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A041118.P10235320129823285527

namespace A041118

/-- `A086594(n+1)/(A000035(n)+1)` -/
def P10235320129823285527.Spec : Prop :=
  ∀ n, P10235320129823285527.a n = (A041118 n : ℚ)

end A041118

/-!
# A041119: Denominators of continued fraction convergents to sqrt(68).

The programs for A041119, the canonical program `A041119.P13741683469650599664` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041119 has offset 0).

The definition of A041119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041119.P13741683469650599664

`66*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=65, a(3)=264`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041119

/-- `66*a(n-2)-a(n-4)` -/
def P13741683469650599664.Spec : Prop :=
  ∀ n, P13741683469650599664.a n = A041119 n

theorem P13741683469650599664.correct : P13741683469650599664.Spec := by
  intro n
  simp only [A041119]

end A041119

/-! ## A041119.P782043634190640536

`lcm(2, A041025(n))/2`
-/

namespace A041119.P782043634190640536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041025 n) : ℚ) / 2

end

end A041119.P782043634190640536

namespace A041119

/-- `lcm(2, A041025(n))/2` -/
def P782043634190640536.Spec : Prop :=
  ∀ n, P782043634190640536.a n = (A041119 n : ℚ)

end A041119

/-! ## A041119.P5196260304470069954

`(n%2+1)*A041511(n)`
-/

namespace A041119.P5196260304470069954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A041511 n

end

end A041119.P5196260304470069954

namespace A041119

/-- `(n%2+1)*A041511(n)` -/
def P5196260304470069954.Spec : Prop :=
  ∀ n, P5196260304470069954.a n = A041119 n

end A041119

/-! ## A041119.P11136097783612907767

`A000034(n)*A041511(n)`
-/

namespace A041119.P11136097783612907767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041511 n

end

end A041119.P11136097783612907767

namespace A041119

/-- `A000034(n)*A041511(n)` -/
def P11136097783612907767.Spec : Prop :=
  ∀ n, P11136097783612907767.a n = A041119 n

end A041119

/-! ## A041119.P8773966363418064884

`A041025(n)/A000034(n)`
-/

namespace A041119.P8773966363418064884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A000034 n : ℚ)

end

end A041119.P8773966363418064884

namespace A041119

/-- `A041025(n)/A000034(n)` -/
def P8773966363418064884.Spec : Prop :=
  ∀ n, P8773966363418064884.a n = (A041119 n : ℚ)

end A041119

/-! ## A041119.P928272164864867868

`A041025(n)/(A000035(n)+1)`
-/

namespace A041119.P928272164864867868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041119.P928272164864867868

namespace A041119

/-- `A041025(n)/(A000035(n)+1)` -/
def P928272164864867868.Spec : Prop :=
  ∀ n, P928272164864867868.a n = (A041119 n : ℚ)

end A041119

/-! ## A041119.P1445901427743428296

`A041025(n)/A040001(n+1)`
-/

namespace A041119.P1445901427743428296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041119.P1445901427743428296

namespace A041119

/-- `A041025(n)/A040001(n+1)` -/
def P1445901427743428296.Spec : Prop :=
  ∀ n, P1445901427743428296.a n = (A041119 n : ℚ)

end A041119

/-! ## A041119.P10978041856385577976

`A041025(n)/A282702(n)%3`
-/

namespace A041119.P10978041856385577976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (Int.tmod (A282702 n) 3 : ℚ)

end

end A041119.P10978041856385577976

namespace A041119

/-- `A041025(n)/A282702(n)%3` -/
def P10978041856385577976.Spec : Prop :=
  ∀ n, P10978041856385577976.a n = (A041119 n : ℚ)

end A041119

/-! ## A041119.P16562559205468541635

`A041025(n)/(Δ[A004526(n)]+1)`
-/

namespace A041119.P16562559205468541635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A041119.P16562559205468541635

namespace A041119

/-- `A041025(n)/(Δ[A004526(n)]+1)` -/
def P16562559205468541635.Spec : Prop :=
  ∀ n, P16562559205468541635.a n = (A041119 n : ℚ)

end A041119

/-! ## A041119.P3639269336718235041

`A041025(n)/A000010(Δ[A042948(n)])`
-/

namespace A041119.P3639269336718235041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A000010 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041119.P3639269336718235041

namespace A041119

/-- `A041025(n)/A000010(Δ[A042948(n)])` -/
def P3639269336718235041.Spec : Prop :=
  ∀ n, P3639269336718235041.a n = (A041119 n : ℚ)

end A041119

/-! ## A041119.P9551212185064106848

`A041025(n)/(A124625(A124625(n))+1)`
-/

namespace A041119.P9551212185064106848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) / (A124625 (A124625 n).toNat + 1 : ℚ)

end

end A041119.P9551212185064106848

namespace A041119

/-- `A041025(n)/(A124625(A124625(n))+1)` -/
def P9551212185064106848.Spec : Prop :=
  ∀ n, P9551212185064106848.a n = (A041119 n : ℚ)

end A041119

/-!
# A041122: Numerators of continued fraction convergents to sqrt(70).

The programs for A041122, there is no canonical definition to state claims against.
-/

/-! ## A041122.P10717659214048204941

`lcm(2, A041526(n))/2`
-/

namespace A041122.P10717659214048204941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041526 n) : ℚ) / 2

end

end A041122.P10717659214048204941

/-! ## A041122.P1807419211822242294

`A041526(n)/Δ[A007494(n)]`
-/

namespace A041122.P1807419211822242294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041526 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041122.P1807419211822242294

/-! ## A041122.P9086082179817793827

`A041526(n)/A000034(n+1)`
-/

namespace A041122.P9086082179817793827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041526 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041122.P9086082179817793827

/-! ## A041122.P17325842740635368095

`A000034(n)/2*A041526(n)`
-/

namespace A041122.P17325842740635368095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041526 n : ℚ)

end

end A041122.P17325842740635368095

/-! ## A041122.P17882125956437168734

`A041526(n)/A006519(A006519(n+1)+1)`
-/

namespace A041122.P17882125956437168734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041526 n : ℚ) / (A006519 (A006519 (n + 1) + 1).toNat : ℚ)

end

end A041122.P17882125956437168734

/-! ## A041122.P2119872936254150215

`A041526(n)/A006519(n²+2)`
-/

namespace A041122.P2119872936254150215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041526 n : ℚ) / (A006519 (n ^ 2 + 2) : ℚ)

end

end A041122.P2119872936254150215

/-!
# A041123: Denominators of continued fraction convergents to sqrt(70).

The programs for A041123, there is no canonical definition to state claims against.
-/

/-! ## A041123.P1050055392523814492

`A000034(n)*A041527(n)`
-/

namespace A041123.P1050055392523814492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041527 n

end

end A041123.P1050055392523814492

/-! ## A041123.P394163916584945696

`Δ[A032766(n)]*A041527(n)`
-/

namespace A041123.P394163916584945696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041527 n

end

end A041123.P394163916584945696

/-! ## A041123.P2172455812522180106

`A040263(A020639(n+1))*A041527(n)`
-/

namespace A041123.P2172455812522180106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040263 (A020639 (n + 1)).toNat * A041527 n

end

end A041123.P2172455812522180106

/-! ## A041123.P9447612807748941574

`A002487(Δ[A063226(n+1)])*A041527(n)`
-/

namespace A041123.P9447612807748941574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f1 (n + 1) - f1 n).toNat * A041527 n

end

end A041123.P9447612807748941574

/-! ## A041123.P8818083927309564572

`A040263(n²+1)*A041527(n)`
-/

namespace A041123.P8818083927309564572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040263 (n ^ 2 + 1) * A041527 n

end

end A041123.P8818083927309564572

/-!
# A041125: Denominators of continued fraction convergents to sqrt(71).

The programs for A041125, there is no canonical definition to state claims against.
-/

/-! ## A041125.P8204080259714904593

`A308075(A005095(n))%A249341(2*(n+2))`
-/

namespace A041125.P8204080259714904593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308075 (A005095 n).toNat) (A249341 (2 * (n + 2)))

end

end A041125.P8204080259714904593

/-!
# A041126: Numerators of continued fraction convergents to sqrt(72).

The programs for A041126, the canonical program `A041126.P9338441565477157576` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041126 has offset 0).

The definition of A041126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041126.P9338441565477157576

`gcd(2, n)*A041026(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A041126

/-- `gcd(2, n)*A041026(n)` -/
def P9338441565477157576.Spec : Prop :=
  ∀ n, P9338441565477157576.a n = A041126 n

theorem P9338441565477157576.correct : P9338441565477157576.Spec := by
  intro n
  simp only [A041126]

end A041126

/-! ## A041126.P15028321167910623282

`Δ[A007494(n)]*A041026(n)`
-/

namespace A041126.P15028321167910623282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041026 n

end

end A041126.P15028321167910623282

namespace A041126

/-- `Δ[A007494(n)]*A041026(n)` -/
def P15028321167910623282.Spec : Prop :=
  ∀ n, P15028321167910623282.a n = A041126 n

end A041126

/-! ## A041126.P12436901573637048113

`A041542(n)/A000034(n+1)`
-/

namespace A041126.P12436901573637048113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041542 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041126.P12436901573637048113

namespace A041126

/-- `A041542(n)/A000034(n+1)` -/
def P12436901573637048113.Spec : Prop :=
  ∀ n, P12436901573637048113.a n = (A041126 n : ℚ)

end A041126

/-! ## A041126.P17045652090625568256

`A041542(n)/A040001(n+2)`
-/

namespace A041126.P17045652090625568256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041542 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041126.P17045652090625568256

namespace A041126

/-- `A041542(n)/A040001(n+2)` -/
def P17045652090625568256.Spec : Prop :=
  ∀ n, P17045652090625568256.a n = (A041126 n : ℚ)

end A041126

/-! ## A041126.P11290493529537578499

`A041542(n)/A134451(n+2)`
-/

namespace A041126.P11290493529537578499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041542 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041126.P11290493529537578499

namespace A041126

/-- `A041542(n)/A134451(n+2)` -/
def P11290493529537578499.Spec : Prop :=
  ∀ n, P11290493529537578499.a n = (A041126 n : ℚ)

end A041126

/-! ## A041126.P6337157876914178286

`A000034(n)/2*A041542(n)`
-/

namespace A041126.P6337157876914178286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041542 n : ℚ)

end

end A041126.P6337157876914178286

namespace A041126

/-- `A000034(n)/2*A041542(n)` -/
def P6337157876914178286.Spec : Prop :=
  ∀ n, P6337157876914178286.a n = (A041126 n : ℚ)

end A041126

/-! ## A041126.P12165004828732700917

`A000034(n+1)²*A126354(A338062(n+2))`
-/

namespace A041126.P12165004828732700917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2 * A126354 (A338062 (n + 2)).toNat

end

end A041126.P12165004828732700917

namespace A041126

/-- `A000034(n+1)²*A126354(A338062(n+2))` -/
def P12165004828732700917.Spec : Prop :=
  ∀ n, P12165004828732700917.a n = A041126 n

end A041126

/-!
# A041127: Denominators of continued fraction convergents to sqrt(72).

The programs for A041127, the canonical program `A041127.P17322848482928432042` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041127 has offset 0).

The definition of A041127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041127.P17322848482928432042

`34*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=33, a(3)=68`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041127

/-- `34*a(n-2)-a(n-4)` -/
def P17322848482928432042.Spec : Prop :=
  ∀ n, P17322848482928432042.a n = A041127 n

theorem P17322848482928432042.correct : P17322848482928432042.Spec := by
  intro n
  simp only [A041127]

end A041127

/-! ## A041127.P6306201473632992370

`A144534(n)+A144533(n)`
-/

namespace A041127.P6306201473632992370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144534 n + A144533 n

end

end A041127.P6306201473632992370

namespace A041127

/-- `A144534(n)+A144533(n)` -/
def P6306201473632992370.Spec : Prop :=
  ∀ n, P6306201473632992370.a n = A041127 n

end A041127

/-! ## A041127.P2684640616491973131

`A000034(n)*A041543(n)`
-/

namespace A041127.P2684640616491973131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041543 n

end

end A041127.P2684640616491973131

namespace A041127

/-- `A000034(n)*A041543(n)` -/
def P2684640616491973131.Spec : Prop :=
  ∀ n, P2684640616491973131.a n = A041127 n

end A041127

/-! ## A041127.P2749058209011981085

`(A000035(n)+1)*A041543(n)`
-/

namespace A041127.P2749058209011981085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041543 n

end

end A041127.P2749058209011981085

namespace A041127

/-- `(A000035(n)+1)*A041543(n)` -/
def P2749058209011981085.Spec : Prop :=
  ∀ n, P2749058209011981085.a n = A041127 n

end A041127

/-! ## A041127.P7433561045678261478

`A040001(n+1)*A041543(n)`
-/

namespace A041127.P7433561045678261478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041543 n

end

end A041127.P7433561045678261478

namespace A041127

/-- `A040001(n+1)*A041543(n)` -/
def P7433561045678261478.Spec : Prop :=
  ∀ n, P7433561045678261478.a n = A041127 n

end A041127

/-! ## A041127.P4576983528574998219

`A041543(n)*A134451(n+1)`
-/

namespace A041127.P4576983528574998219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041543 n * A134451 (n + 1)

end

end A041127.P4576983528574998219

namespace A041127

/-- `A041543(n)*A134451(n+1)` -/
def P4576983528574998219.Spec : Prop :=
  ∀ n, P4576983528574998219.a n = A041127 n

end A041127

/-! ## A041127.P17567224904110988573

`(Δ[A004526(n)]+1)*A041543(n)`
-/

namespace A041127.P17567224904110988573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041543 n

end

end A041127.P17567224904110988573

namespace A041127

/-- `(Δ[A004526(n)]+1)*A041543(n)` -/
def P17567224904110988573.Spec : Prop :=
  ∀ n, P17567224904110988573.a n = A041127 n

end A041127

/-! ## A041127.P5941168263240483451

`A000079(Δ[A004526(n)])*A041543(n)`
-/

namespace A041127.P5941168263240483451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat * A041543 n

end

end A041127.P5941168263240483451

namespace A041127

/-- `A000079(Δ[A004526(n)])*A041543(n)` -/
def P5941168263240483451.Spec : Prop :=
  ∀ n, P5941168263240483451.a n = A041127 n

end A041127

/-! ## A041127.P987495068043308482

`A014963(A006519(n+1))*A041543(n)`
-/

namespace A041127.P987495068043308482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1)).toNat * A041543 n

end

end A041127.P987495068043308482

namespace A041127

/-- `A014963(A006519(n+1))*A041543(n)` -/
def P987495068043308482.Spec : Prop :=
  ∀ n, P987495068043308482.a n = A041127 n

end A041127

/-! ## A041127.P11477015212879110117

`A041027(n)/gcd(2, A041027(n))`
-/

namespace A041127.P11477015212879110117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041027 n : ℚ) / (Int.gcd 2 (A041027 n) : ℚ)

end

end A041127.P11477015212879110117

namespace A041127

/-- `A041027(n)/gcd(2, A041027(n))` -/
def P11477015212879110117.Spec : Prop :=
  ∀ n, P11477015212879110117.a n = (A041127 n : ℚ)

end A041127

/-! ## A041127.P6690759988862865087

`(A144533(n+1)+A144533(n+1))/A040063(n+1)`
-/

namespace A041127.P6690759988862865087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144533 (n + 1) + A144533 (n + 1) : ℚ) / (A040063 (n + 1) : ℚ)

end

end A041127.P6690759988862865087

namespace A041127

/-- `(A144533(n+1)+A144533(n+1))/A040063(n+1)` -/
def P6690759988862865087.Spec : Prop :=
  ∀ n, P6690759988862865087.a n = (A041127 n : ℚ)

end A041127

/-! ## A041127.P2428894573722276121

`A144532(2*n+1)/A144532(n+1)*A144533(n+1)`
-/

namespace A041127.P2428894573722276121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144532 (2 * n + 1) : ℚ) / (A144532 (n + 1) : ℚ) * (A144533 (n + 1) : ℚ)

end

end A041127.P2428894573722276121

namespace A041127

/-- `A144532(2*n+1)/A144532(n+1)*A144533(n+1)` -/
def P2428894573722276121.Spec : Prop :=
  ∀ n, P2428894573722276121.a n = (A041127 n : ℚ)

end A041127

/-! ## A041127.P17839812841414005144

`A006519(n²+1)*A041543(n)`
-/

namespace A041127.P17839812841414005144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041543 n

end

end A041127.P17839812841414005144

namespace A041127

/-- `A006519(n²+1)*A041543(n)` -/
def P17839812841414005144.Spec : Prop :=
  ∀ n, P17839812841414005144.a n = A041127 n

end A041127

/-!
# A041129: Denominators of continued fraction convergents to sqrt(73).

The programs for A041129, there is no canonical definition to state claims against.
-/

/-! ## A041129.P4965257945183090550

`A332524(n)%A307912(A073522(3*n+5))`
-/

namespace A041129.P4965257945183090550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332524 n) (A307912 (A073522 (3 * n + 5)).toNat)

end

end A041129.P4965257945183090550

/-!
# A041131: Denominators of continued fraction convergents to sqrt(74).

The programs for A041131, the canonical program `A041131.P5251432017907947157` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041131 has offset 0).

The definition of A041131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041131.P5251432017907947157

`86*a(n-5)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=83, a(6)=88, a(7)=171, a(8)=259, a(9)=430`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041131

/-- `86*a(n-5)+a(n-10)` -/
def P5251432017907947157.Spec : Prop :=
  ∀ n, (P5251432017907947157.a n : ℤ) = A041131 n

theorem P5251432017907947157.correct : P5251432017907947157.Spec := by
  intro n
  simp only [A041131]

end A041131

/-! ## A041131.P9449899351768702470

`A004526(A041343(n)+A041019(n))`
-/

namespace A041131.P9449899351768702470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A041343 n + A041019 n).toNat

end

end A041131.P9449899351768702470

namespace A041131

/-- `A004526(A041343(n)+A041019(n))` -/
def P9449899351768702470.Spec : Prop :=
  ∀ n, P9449899351768702470.a n = A041131 n

end A041131

/-! ## A041131.P5002541541192835256

`A026741(A041343(n)+A041019(n))`
-/

namespace A041131.P5002541541192835256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A041343 n + A041019 n).toNat

end

end A041131.P5002541541192835256

namespace A041131

/-- `A026741(A041343(n)+A041019(n))` -/
def P5002541541192835256.Spec : Prop :=
  ∀ n, P5002541541192835256.a n = A041131 n

end A041131

/-! ## A041131.P8285895964058117899

`A078898(A041343(n)+A041019(n))`
-/

namespace A041131.P8285895964058117899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A041343 n + A041019 n).toNat

end

end A041131.P8285895964058117899

namespace A041131

/-- `A078898(A041343(n)+A041019(n))` -/
def P8285895964058117899.Spec : Prop :=
  ∀ n, P8285895964058117899.a n = A041131 n

end A041131

/-!
# A041132: Numerators of continued fraction convergents to sqrt(75).

The programs for A041132, there is no canonical definition to state claims against.
-/

/-! ## A041132.P16848893304458532305

`a(n-2)+a(n-1)*A010153(n)` with `a(0)=8, a(1)=9`
-/

namespace A041132.P16848893304458532305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 9] fun n a =>
  a (n - 2) + a (n - 1) * A010153 n

end

end A041132.P16848893304458532305

/-!
# A041133: Denominators of continued fraction convergents to sqrt(75).

The programs for A041133, the canonical program `A041133.P5086742199320334834` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041133 has offset 0).

The definition of A041133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041133.P5086742199320334834

`52*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=50, a(5)=53, a(6)=103, a(7)=156`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041133

/-- `52*a(n-4)-a(n-8)` -/
def P5086742199320334834.Spec : Prop :=
  ∀ n, P5086742199320334834.a n = A041133 n

theorem P5086742199320334834.correct : P5086742199320334834.Spec := by
  intro n
  simp only [A041133]

end A041133

/-! ## A041133.P1275048380510662200

`a(n-2)+a(n-1)*A010153(n)` with `a(0)=1, a(1)=1`
-/

namespace A041133.P1275048380510662200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A010153 n

end

end A041133.P1275048380510662200

namespace A041133

/-- `a(n-2)+a(n-1)*A010153(n)` -/
def P1275048380510662200.Spec : Prop :=
  ∀ n, P1275048380510662200.a n = A041133 n

end A041133

/-! ## A041133.P1331578400833489725

`A004525(A042367(n)+A041401(n))`
-/

namespace A041133.P1331578400833489725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042367 n + A041401 n).toNat

end

end A041133.P1331578400833489725

namespace A041133

/-- `A004525(A042367(n)+A041401(n))` -/
def P1331578400833489725.Spec : Prop :=
  ∀ n, P1331578400833489725.a n = A041133 n

end A041133

/-! ## A041133.P17349570431917580761

`A004526(A042367(n)+A041401(n))`
-/

namespace A041133.P17349570431917580761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042367 n + A041401 n).toNat

end

end A041133.P17349570431917580761

namespace A041133

/-- `A004526(A042367(n)+A041401(n))` -/
def P17349570431917580761.Spec : Prop :=
  ∀ n, P17349570431917580761.a n = A041133 n

end A041133

/-!
# A041135: Denominators of continued fraction convergents to sqrt(76).

The programs for A041135, there is no canonical definition to state claims against.
-/

/-! ## A041135.P13870685301933284701

`round(A041134(n)/sqrt(76))`
-/

namespace A041135.P13870685301933284701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041134 n : ℝ) / Real.sqrt (76 : ℝ))

end

end A041135.P13870685301933284701

/-! ## A041135.P13644796373519550019

`or(A010872(n), A146771(A011782(n)))`
-/

namespace A041135.P13644796373519550019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010872 n) (A146771 (A011782 n).toNat)

end

end A041135.P13644796373519550019

/-! ## A041135.P2109090244914798182

`A308158(n+1)+A275331(A011782(n))`
-/

namespace A041135.P2109090244914798182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308158 (n + 1) + A275331 (A011782 n).toNat

end

end A041135.P2109090244914798182

/-!
# A041137: Denominators of continued fraction convergents to sqrt(77).

The programs for A041137, there is no canonical definition to state claims against.
-/

/-! ## A041137.P9457338213196590496

`round(A041136(n)/sqrt(77))`
-/

namespace A041137.P9457338213196590496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041136 n : ℝ) / Real.sqrt (77 : ℝ))

end

end A041137.P9457338213196590496

/-!
# A041138: Numerators of continued fraction convergents to sqrt(78).

The programs for A041138, the canonical program `A041138.P16460031689754476247` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041138 has offset 0).

The definition of A041138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041138.P16460031689754476247

`a(n-2)+gcd(4, n)²*a(n-1)` with `a(0)=8, a(1)=9`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041138

/-- `a(n-2)+gcd(4, n)²*a(n-1)` -/
def P16460031689754476247.Spec : Prop :=
  ∀ n, (P16460031689754476247.a n : ℤ) = A041138 n

theorem P16460031689754476247.correct : P16460031689754476247.Spec := by
  intro n
  simp only [A041138]

end A041138

/-! ## A041138.P16935480476687565614

`A026741(A041140(n)+A041132(n))`
-/

namespace A041138.P16935480476687565614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A041140 n + A041132 n).toNat

end

end A041138.P16935480476687565614

namespace A041138

/-- `A026741(A041140(n)+A041132(n))` -/
def P16935480476687565614.Spec : Prop :=
  ∀ n, P16935480476687565614.a n = A041138 n

end A041138

/-!
# A041139: Denominators of continued fraction convergents to sqrt(78).

The programs for A041139, the canonical program `A041139.P1183526581158809571` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041139 has offset 0).

The definition of A041139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041139.P1183526581158809571

`106*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6, a(4)=101, a(5)=107, a(6)=529, a(7)=636`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041139

/-- `106*a(n-4)-a(n-8)` -/
def P1183526581158809571.Spec : Prop :=
  ∀ n, P1183526581158809571.a n = A041139 n

theorem P1183526581158809571.correct : P1183526581158809571.Spec := by
  intro n
  simp only [A041139]

end A041139

/-! ## A041139.P4357584841525033857

`a(n-2)+gcd(4, n)²*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A041139.P4357584841525033857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.gcd 4 n ^ 2 * a (n - 1)

end

end A041139.P4357584841525033857

namespace A041139

/-- `a(n-2)+gcd(4, n)²*a(n-1)` -/
def P4357584841525033857.Spec : Prop :=
  ∀ n, (P4357584841525033857.a n : ℤ) = A041139 n

end A041139

/-!
# A041140: Numerators of continued fraction convergents to sqrt(79).

The programs for A041140, there is no canonical definition to state claims against.
-/

/-! ## A041140.P8048393443545128453

`a(n-2)+a(n-1)*A010157(n)` with `a(0)=8, a(1)=9`
-/

namespace A041140.P8048393443545128453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 9] fun n a =>
  a (n - 2) + a (n - 1) * A010157 n

end

end A041140.P8048393443545128453

/-!
# A041141: Denominators of continued fraction convergents to sqrt(79).

The programs for A041141, there is no canonical definition to state claims against.
-/

/-! ## A041141.P10509720435568377551

`a(n-2)+a(n-1)*A010157(n)` with `a(0)=1, a(1)=1`
-/

namespace A041141.P10509720435568377551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A010157 n

end

end A041141.P10509720435568377551

/-!
# A041142: Numerators of continued fraction convergents to sqrt(80).

The programs for A041142, the canonical program `A041142.P7352067332013008151` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041142 has offset 0).

The definition of A041142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041142.P7352067332013008151

`18*a(n-2)-a(n-4)` with `a(0)=8, a(1)=9, a(2)=152, a(3)=161`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041142

/-- `18*a(n-2)-a(n-4)` -/
def P7352067332013008151.Spec : Prop :=
  ∀ n, P7352067332013008151.a n = A041142 n

theorem P7352067332013008151.correct : P7352067332013008151.Spec := by
  intro n
  simp only [A041142]

end A041142

/-! ## A041142.P539186687167059698

`abs(A041030(n)*A228826(n))`
-/

namespace A041142.P539186687167059698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A041030 n * A228826 n|

end

end A041142.P539186687167059698

namespace A041142

/-- `abs(A041030(n)*A228826(n))` -/
def P539186687167059698.Spec : Prop :=
  ∀ n, P539186687167059698.a n = A041142 n

end A041142

/-! ## A041142.P2126928036273767378

`A000034(n+1)*A041030(n)`
-/

namespace A041142.P2126928036273767378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041030 n

end

end A041142.P2126928036273767378

namespace A041142

/-- `A000034(n+1)*A041030(n)` -/
def P2126928036273767378.Spec : Prop :=
  ∀ n, P2126928036273767378.a n = A041142 n

end A041142

/-! ## A041142.P17926950809386991438

`A040001(n+2)*A041030(n)`
-/

namespace A041142.P17926950809386991438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041030 n

end

end A041142.P17926950809386991438

namespace A041142

/-- `A040001(n+2)*A041030(n)` -/
def P17926950809386991438.Spec : Prop :=
  ∀ n, P17926950809386991438.a n = A041142 n

end A041142

/-! ## A041142.P6479068050633118350

`2/A000034(n)*A041030(n)`
-/

namespace A041142.P6479068050633118350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041030 n : ℚ)

end

end A041142.P6479068050633118350

namespace A041142

/-- `2/A000034(n)*A041030(n)` -/
def P6479068050633118350.Spec : Prop :=
  ∀ n, P6479068050633118350.a n = (A041142 n : ℚ)

end A041142

/-! ## A041142.P16869086823536164492

`A228826(n)²*A001077(n+1)`
-/

namespace A041142.P16869086823536164492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 n ^ 2 * A001077 (n + 1)

end

end A041142.P16869086823536164492

namespace A041142

/-- `A228826(n)²*A001077(n+1)` -/
def P16869086823536164492.Spec : Prop :=
  ∀ n, P16869086823536164492.a n = A041142 n

end A041142

/-! ## A041142.P1669198880338138101

`A001077(n+1)*A040005(n+2)`
-/

namespace A041142.P1669198880338138101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (n + 1) * A040005 (n + 2)

end

end A041142.P1669198880338138101

namespace A041142

/-- `A001077(n+1)*A040005(n+2)` -/
def P1669198880338138101.Spec : Prop :=
  ∀ n, P1669198880338138101.a n = A041142 n

end A041142

/-! ## A041142.P1941459996110252970

`A000034(n+1)²*A001077(n+1)`
-/

namespace A041142.P1941459996110252970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2 * A001077 (n + 1)

end

end A041142.P1941459996110252970

namespace A041142

/-- `A000034(n+1)²*A001077(n+1)` -/
def P1941459996110252970.Spec : Prop :=
  ∀ n, P1941459996110252970.a n = A041142 n

end A041142

/-! ## A041142.P18100159707747357341

`A041030(n)*A178562(A006519(n+1))`
-/

namespace A041142.P18100159707747357341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041030 n * A178562 (A006519 (n + 1)).toNat

end

end A041142.P18100159707747357341

namespace A041142

/-- `A041030(n)*A178562(A006519(n+1))` -/
def P18100159707747357341.Spec : Prop :=
  ∀ n, P18100159707747357341.a n = A041142 n

end A041142

/-! ## A041142.P6139078877542893214

`A041030(n)*A178562(A297402(n+1))`
-/

namespace A041142.P6139078877542893214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041030 n * A178562 (A297402 (n + 1)).toNat

end

end A041142.P6139078877542893214

namespace A041142

/-- `A041030(n)*A178562(A297402(n+1))` -/
def P6139078877542893214.Spec : Prop :=
  ∀ n, P6139078877542893214.a n = A041142 n

end A041142

/-! ## A041142.P15800252867581905754

`A006519(A006519(n+1)+1)*A041030(n)`
-/

namespace A041142.P15800252867581905754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006519 (n + 1) + 1).toNat * A041030 n

end

end A041142.P15800252867581905754

namespace A041142

/-- `A006519(A006519(n+1)+1)*A041030(n)` -/
def P15800252867581905754.Spec : Prop :=
  ∀ n, P15800252867581905754.a n = A041142 n

end A041142

/-! ## A041142.P3076255731295724933

`(5-3*(-1)^(n+1))*A000032(3*(n+1))/4`
-/

namespace A041142.P3076255731295724933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 - 3 * (-1) ^ (n + 1)) * A000032 (3 * (n + 1)) : ℚ) / 4

end

end A041142.P3076255731295724933

namespace A041142

/-- `(5-3*(-1)^(n+1))*A000032(3*(n+1))/4` -/
def P3076255731295724933.Spec : Prop :=
  ∀ n, P3076255731295724933.a n = (A041142 n : ℚ)

end A041142

/-! ## A041142.P10013584532157063730

`A041030(n)*A006519(n²+2)`
-/

namespace A041142.P10013584532157063730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041030 n * A006519 (n ^ 2 + 2)

end

end A041142.P10013584532157063730

namespace A041142

/-- `A041030(n)*A006519(n²+2)` -/
def P10013584532157063730.Spec : Prop :=
  ∀ n, P10013584532157063730.a n = A041142 n

end A041142

/-!
# A041143: Denominators of continued fraction convergents to sqrt(80).

The programs for A041143, the canonical program `A041143.P9037026930062718726` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041143 has offset 0).

The definition of A041143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041143.P9037026930062718726

`18*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=17, a(3)=18`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041143

/-- `18*a(n-2)-a(n-4)` -/
def P9037026930062718726.Spec : Prop :=
  ∀ n, P9037026930062718726.a n = A041143 n

theorem P9037026930062718726.correct : P9037026930062718726.Spec := by
  intro n
  simp only [A041143]

end A041143

/-! ## A041143.P13717683996870603907

`A001076(n+1)/4^(n%2)`
-/

namespace A041143.P13717683996870603907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (4 ^ (n % 2) : ℚ)

end

end A041143.P13717683996870603907

namespace A041143

/-- `A001076(n+1)/4^(n%2)` -/
def P13717683996870603907.Spec : Prop :=
  ∀ n, P13717683996870603907.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P3210153572646082255

`A041031(n)/A000034(n)`
-/

namespace A041143.P3210153572646082255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041031 n : ℚ) / (A000034 n : ℚ)

end

end A041143.P3210153572646082255

namespace A041143

/-- `A041031(n)/A000034(n)` -/
def P3210153572646082255.Spec : Prop :=
  ∀ n, P3210153572646082255.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P8398275925498679168

`A153315(n)/A010689(n)`
-/

namespace A041143.P8398275925498679168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153315 n : ℚ) / (A010689 n : ℚ)

end

end A041143.P8398275925498679168

namespace A041143

/-- `A153315(n)/A010689(n)` -/
def P8398275925498679168.Spec : Prop :=
  ∀ n, P8398275925498679168.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P11563169922472170554

`A041031(n)/Δ[A032766(n)]`
-/

namespace A041143.P11563169922472170554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041031 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041143.P11563169922472170554

namespace A041143

/-- `A041031(n)/Δ[A032766(n)]` -/
def P11563169922472170554.Spec : Prop :=
  ∀ n, P11563169922472170554.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P10731921995903375343

`A041031(n)/ratio[A016116(n)]`
-/

namespace A041143.P10731921995903375343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041031 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A041143.P10731921995903375343

namespace A041143

/-- `A041031(n)/ratio[A016116(n)]` -/
def P10731921995903375343.Spec : Prop :=
  ∀ n, P10731921995903375343.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P14928628560049321801

`∑[A033887(n)]/A000034(n)²`
-/

namespace A041143.P14928628560049321801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A041143.P14928628560049321801

namespace A041143

/-- `∑[A033887(n)]/A000034(n)²` -/
def P14928628560049321801.Spec : Prop :=
  ∀ n, P14928628560049321801.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P3679268809947441532

`Δ[A049652(n)]/A000034(n)²`
-/

namespace A041143.P3679268809947441532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A041143.P3679268809947441532

namespace A041143

/-- `Δ[A049652(n)]/A000034(n)²` -/
def P3679268809947441532.Spec : Prop :=
  ∀ n, P3679268809947441532.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P500044165270858500

`A001076(n+1)/A000034(n)²`
-/

namespace A041143.P500044165270858500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A041143.P500044165270858500

namespace A041143

/-- `A001076(n+1)/A000034(n)²` -/
def P500044165270858500.Spec : Prop :=
  ∀ n, P500044165270858500.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P8953771957051079971

`A001076(n+1)/A134451(n+1)²`
-/

namespace A041143.P8953771957051079971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (A134451 (n + 1) ^ 2 : ℚ)

end

end A041143.P8953771957051079971

namespace A041143

/-- `A001076(n+1)/A134451(n+1)²` -/
def P8953771957051079971.Spec : Prop :=
  ∀ n, P8953771957051079971.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P18254379768777310538

`A001076(n+1)/A228826(n+1)²`
-/

namespace A041143.P18254379768777310538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) : ℚ) / (A228826 (n + 1) ^ 2 : ℚ)

end

end A041143.P18254379768777310538

namespace A041143

/-- `A001076(n+1)/A228826(n+1)²` -/
def P18254379768777310538.Spec : Prop :=
  ∀ n, P18254379768777310538.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P16312069028653122194

`A024490(A016789(n))/A000034(n)²`
-/

namespace A041143.P16312069028653122194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024490 (A016789 n).toNat : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A041143.P16312069028653122194

namespace A041143

/-- `A024490(A016789(n))/A000034(n)²` -/
def P16312069028653122194.Spec : Prop :=
  ∀ n, P16312069028653122194.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P17688700411547977970

`A059973(A103517(n))/A000034(n)²`
-/

namespace A041143.P17688700411547977970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059973 (A103517 n).toNat : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A041143.P17688700411547977970

namespace A041143

/-- `A059973(A103517(n))/A000034(n)²` -/
def P17688700411547977970.Spec : Prop :=
  ∀ n, P17688700411547977970.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P3183468502183029117

`A014445(n+1)/A074723(A006519(n+2)+1)`
-/

namespace A041143.P3183468502183029117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (n + 1) : ℚ) / (A074723 (A006519 (n + 2) + 1).toNat : ℚ)

end

end A041143.P3183468502183029117

namespace A041143

/-- `A014445(n+1)/A074723(A006519(n+2)+1)` -/
def P3183468502183029117.Spec : Prop :=
  ∀ n, P3183468502183029117.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P598555218227050975

`A014445(n+1)/A074723(A297402(n+2)+1)`
-/

namespace A041143.P598555218227050975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (n + 1) : ℚ) / (A074723 (A297402 (n + 2) + 1).toNat : ℚ)

end

end A041143.P598555218227050975

namespace A041143

/-- `A014445(n+1)/A074723(A297402(n+2)+1)` -/
def P598555218227050975.Spec : Prop :=
  ∀ n, P598555218227050975.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P16728223176705004193

`A153315(n)/A261197(Δ[A008851(n+1)]²+1)`
-/

namespace A041143.P16728223176705004193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153315 n : ℚ) / (A261197 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat : ℚ)

end

end A041143.P16728223176705004193

namespace A041143

/-- `A153315(n)/A261197(Δ[A008851(n+1)]²+1)` -/
def P16728223176705004193.Spec : Prop :=
  ∀ n, P16728223176705004193.a n = (A041143 n : ℚ)

end A041143

/-! ## A041143.P12323859109685443019

`A014445(n+1)/A074723(n²+1)`
-/

namespace A041143.P12323859109685443019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (n + 1) : ℚ) / (A074723 (n ^ 2 + 1) : ℚ)

end

end A041143.P12323859109685443019

namespace A041143

/-- `A014445(n+1)/A074723(n²+1)` -/
def P12323859109685443019.Spec : Prop :=
  ∀ n, P12323859109685443019.a n = (A041143 n : ℚ)

end A041143

/-!
# A041144: Numerators of continued fraction convergents to sqrt(82).

The programs for A041144, the canonical program `A041144.P15159387347847258268` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041144 has offset 0).

The definition of A041144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041144.P15159387347847258268

`18*a(n-1)+a(n-2)` with `a(0)=9, a(1)=163`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041144

/-- `18*a(n-1)+a(n-2)` -/
def P15159387347847258268.Spec : Prop :=
  ∀ n, (P15159387347847258268.a n : ℤ) = A041144 n

theorem P15159387347847258268.correct : P15159387347847258268.Spec := by
  intro n
  simp only [A041144]

end A041144

/-! ## A041144.P5466992776439701600

`A090307(n+1)/2`
-/

namespace A041144.P5466992776439701600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090307 (n + 1) : ℚ) / 2

end

end A041144.P5466992776439701600

namespace A041144

/-- `A090307(n+1)/2` -/
def P5466992776439701600.Spec : Prop :=
  ∀ n, P5466992776439701600.a n = (A041144 n : ℚ)

end A041144

/-! ## A041144.P6319354009698568219

`lcm(2, A041618(n))/2`
-/

namespace A041144.P6319354009698568219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041618 n) : ℚ) / 2

end

end A041144.P6319354009698568219

namespace A041144

/-- `lcm(2, A041618(n))/2` -/
def P6319354009698568219.Spec : Prop :=
  ∀ n, P6319354009698568219.a n = (A041144 n : ℚ)

end A041144

/-! ## A041144.P6406705120498939436

`lcm(3, A042420(n))/3`
-/

namespace A041144.P6406705120498939436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A042420 n) : ℚ) / 3

end

end A041144.P6406705120498939436

namespace A041144

/-- `lcm(3, A042420(n))/3` -/
def P6406705120498939436.Spec : Prop :=
  ∀ n, P6406705120498939436.a n = (A041144 n : ℚ)

end A041144

/-! ## A041144.P3867296204535385185

`Δ[∑[A090307(n)]/2]`
-/

namespace A041144.P3867296204535385185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090307 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A041144.P3867296204535385185

namespace A041144

/-- `Δ[∑[A090307(n)]/2]` -/
def P3867296204535385185.Spec : Prop :=
  ∀ n, P3867296204535385185.a n = (A041144 n : ℚ)

end A041144

/-!
# A041145: Denominators of continued fraction convergents to sqrt(82).

The programs for A041145, the canonical program `A041145.P849536448268898359` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041145 has offset 0).

The definition of A041145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041145.P849536448268898359

`18*a(n-1)+a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041145

/-- `18*a(n-1)+a(n-2)` -/
def P849536448268898359.Spec : Prop :=
  ∀ n, (P849536448268898359.a n : ℤ) = A041145 n

theorem P849536448268898359.correct : P849536448268898359.Spec := by
  intro n
  simp only [A041145]

end A041145

/-! ## A041145.P3032915179622581039

`(2*n+1)%4*A000034(2*n)*A042421(n)`
-/

namespace A041145.P3032915179622581039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) % 4 : ℕ) : ℤ) * A000034 (2 * n) * A042421 n

end

end A041145.P3032915179622581039

namespace A041145

/-- `(2*n+1)%4*A000034(2*n)*A042421(n)` -/
def P3032915179622581039.Spec : Prop :=
  ∀ n, P3032915179622581039.a n = A041145 n

end A041145

/-! ## A041145.P14366690637878463877

`A041619(n)*A109004(A027379(n))`
-/

namespace A041145.P14366690637878463877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041619 n * A109004 (A027379 n).toNat

end

end A041145.P14366690637878463877

namespace A041145

/-- `A041619(n)*A109004(A027379(n))` -/
def P14366690637878463877.Spec : Prop :=
  ∀ n, P14366690637878463877.a n = A041145 n

end A041145

/-!
# A041146: Numerators of continued fraction convergents to sqrt(83).

The programs for A041146, there is no canonical definition to state claims against.
-/

/-! ## A041146.P9661006140809757818

`lcm(3, A042438(n))/3`
-/

namespace A041146.P9661006140809757818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A042438 n) : ℚ) / 3

end

end A041146.P9661006140809757818

/-! ## A041146.P16928686379439104452

`A042438(n)/Δ[A014601(n)]`
-/

namespace A041146.P16928686379439104452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042438 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041146.P16928686379439104452

/-! ## A041146.P16736162875468339554

`A042438(n)/A010684(n+1)`
-/

namespace A041146.P16736162875468339554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042438 n : ℚ) / (A010684 (n + 1) : ℚ)

end

end A041146.P16736162875468339554

/-! ## A041146.P860735097416175708

`A042438(n)/A000203(-or(n, -2))`
-/

namespace A041146.P860735097416175708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042438 n : ℚ) / (A000203 (-Int.lor (n : ℤ) (-2)).toNat : ℚ)

end

end A041146.P860735097416175708

/-! ## A041146.P11261207211113485615

`1/A010684(A016777(n))*A042438(n)`
-/

namespace A041146.P11261207211113485615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A010684 (A016777 n).toNat : ℚ) * (A042438 n : ℚ)

end

end A041146.P11261207211113485615

/-!
# A041147: Denominators of continued fraction convergents to sqrt(83).

The programs for A041147, there is no canonical definition to state claims against.
-/

/-! ## A041147.P4395254419743411989

`A010684(n)*A042439(n)`
-/

namespace A041147.P4395254419743411989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A042439 n

end

end A041147.P4395254419743411989

/-! ## A041147.P6299903804699192059

`ratio[A108411(n)]*A042439(n)`
-/

namespace A041147.P6299903804699192059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A042439 n : ℚ)

end

end A041147.P6299903804699192059

/-! ## A041147.P12642372439707545478

`A042431(val(n²+1, 2))*A042439(n)`
-/

namespace A041147.P12642372439707545478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042431 (SequenceMachineLib.valuation (n ^ 2 + 1) 2) * A042439 n

end

end A041147.P12642372439707545478

/-! ## A041147.P886706577863365559

`A042433(val(n²+1, 2))*A042439(n)`
-/

namespace A041147.P886706577863365559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042433 (SequenceMachineLib.valuation (n ^ 2 + 1) 2) * A042439 n

end

end A041147.P886706577863365559

/-! ## A041147.P6673819098075485050

`A005408(Δ[A008619(n)])*A042439(n)`
-/

namespace A041147.P6673819098075485050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (n + 1) - f1 n).toNat * A042439 n

end

end A041147.P6673819098075485050

/-! ## A041147.P8628411516746115380

`A042439(Δ[A008619(n)])*A042439(n)`
-/

namespace A041147.P8628411516746115380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042439 (f1 (n + 1) - f1 n).toNat * A042439 n

end

end A041147.P8628411516746115380

/-!
# A041148: Numerators of continued fraction convergents to sqrt(84).

The programs for A041148, there is no canonical definition to state claims against.
-/

/-! ## A041148.P13721076481235633909

`A041032(3*n+2)`
-/

namespace A041148.P13721076481235633909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041032 (3 * n + 2)

end

end A041148.P13721076481235633909

/-! ## A041148.P745214759545649858

`A041634(n)/gcd(2, n)`
-/

namespace A041148.P745214759545649858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041634 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041148.P745214759545649858

/-! ## A041148.P12953950414775373241

`or(1, A041032(A016789(n)))`
-/

namespace A041148.P12953950414775373241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041032 (A016789 n).toNat)

end

end A041148.P12953950414775373241

/-! ## A041148.P6527102258293227908

`gcd(A041634(n), A042456(n))`
-/

namespace A041148.P6527102258293227908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041634 n) (A042456 n)

end

end A041148.P6527102258293227908

/-! ## A041148.P10185814193916546005

`A041634(n)/A000034(n+1)`
-/

namespace A041148.P10185814193916546005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041634 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041148.P10185814193916546005

/-! ## A041148.P4331958566894528430

`A000034(n)/2*A041634(n)`
-/

namespace A041148.P4331958566894528430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041634 n : ℚ)

end

end A041148.P4331958566894528430

/-! ## A041148.P2233548322073368603

`A041634(n)/Δ[A001651(n+2)]`
-/

namespace A041148.P2233548322073368603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041634 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041148.P2233548322073368603

/-! ## A041148.P6827015312159652934

`A000034(2*n)*A041032(A016789(n))`
-/

namespace A041148.P6827015312159652934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A041032 (A016789 n).toNat

end

end A041148.P6827015312159652934

/-! ## A041148.P17509102327818868350

`lcm(A008836(n+1), A041032(A016789(n)))`
-/

namespace A041148.P17509102327818868350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A041032 (A016789 n).toNat)

end

end A041148.P17509102327818868350

/-!
# A041149: Denominators of continued fraction convergents to sqrt(84).

The programs for A041149, the canonical program `A041149.P10538210814641834334` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041149 has offset 0).

The definition of A041149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041149.P10538210814641834334

`110*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=109, a(3)=660`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041149

/-- `110*a(n-2)-a(n-4)` -/
def P10538210814641834334.Spec : Prop :=
  ∀ n, P10538210814641834334.a n = A041149 n

theorem P10538210814641834334.correct : P10538210814641834334.Spec := by
  intro n
  simp only [A041149]

end A041149

/-! ## A041149.P15978387561363222681

`∑[A041033(3*n)]`
-/

namespace A041149.P15978387561363222681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041033 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041149.P15978387561363222681

namespace A041149

/-- `∑[A041033(3*n)]` -/
def P15978387561363222681.Spec : Prop :=
  ∀ n, P15978387561363222681.a n = A041149 n

end A041149

/-! ## A041149.P14654043291511964438

`A041033(A016789(n))/2`
-/

namespace A041149.P14654043291511964438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041033 (A016789 n).toNat : ℚ) / 2

end

end A041149.P14654043291511964438

namespace A041149

/-- `A041033(A016789(n))/2` -/
def P14654043291511964438.Spec : Prop :=
  ∀ n, P14654043291511964438.a n = (A041149 n : ℚ)

end A041149

/-! ## A041149.P1066075102838034386

`A000034(n)*A041635(n)`
-/

namespace A041149.P1066075102838034386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041635 n

end

end A041149.P1066075102838034386

namespace A041149

/-- `A000034(n)*A041635(n)` -/
def P1066075102838034386.Spec : Prop :=
  ∀ n, P1066075102838034386.a n = A041149 n

end A041149

/-! ## A041149.P11775432186582427087

`Δ[A032766(n)]*A041635(n)`
-/

namespace A041149.P11775432186582427087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041635 n

end

end A041149.P11775432186582427087

namespace A041149

/-- `Δ[A032766(n)]*A041635(n)` -/
def P11775432186582427087.Spec : Prop :=
  ∀ n, P11775432186582427087.a n = A041149 n

end A041149

/-! ## A041149.P17767765425280778474

`(2-A033999(n))*A042457(n)`
-/

namespace A041149.P17767765425280778474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A042457 n

end

end A041149.P17767765425280778474

namespace A041149

/-- `(2-A033999(n))*A042457(n)` -/
def P17767765425280778474.Spec : Prop :=
  ∀ n, P17767765425280778474.a n = A041149 n

end A041149

/-! ## A041149.P8071737605106871455

`lcm(A006519(n+1), A041635(n))`
-/

namespace A041149.P8071737605106871455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A041635 n)

end

end A041149.P8071737605106871455

namespace A041149

/-- `lcm(A006519(n+1), A041635(n))` -/
def P8071737605106871455.Spec : Prop :=
  ∀ n, (P8071737605106871455.a n : ℤ) = A041149 n

end A041149

/-! ## A041149.P4256442838886180394

`A006519(n²+1)*A041635(n)`
-/

namespace A041149.P4256442838886180394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041635 n

end

end A041149.P4256442838886180394

namespace A041149

/-- `A006519(n²+1)*A041635(n)` -/
def P4256442838886180394.Spec : Prop :=
  ∀ n, P4256442838886180394.a n = A041149 n

end A041149

/-! ## A041149.P292658944634269507

`Δ[A001651(n+1)]*A041635(n)`
-/

namespace A041149.P292658944634269507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041635 n

end

end A041149.P292658944634269507

namespace A041149

/-- `Δ[A001651(n+1)]*A041635(n)` -/
def P292658944634269507.Spec : Prop :=
  ∀ n, P292658944634269507.a n = A041149 n

end A041149

/-!
# A041150: Numerators of continued fraction convergents to sqrt(85).

The programs for A041150, there is no canonical definition to state claims against.
-/

/-! ## A041150.P15322101715364865866

`round(sqrt(85)*A041151(n))`
-/

namespace A041150.P15322101715364865866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (85 : ℝ) * (A041151 n : ℝ))

end

end A041150.P15322101715364865866

/-!
# A041151: Denominators of continued fraction convergents to sqrt(85).

The programs for A041151, there is no canonical definition to state claims against.
-/

/-! ## A041151.P7505044639927903340

`round(A041150(n)/sqrt(85))`
-/

namespace A041151.P7505044639927903340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041150 n : ℝ) / Real.sqrt (85 : ℝ))

end

end A041151.P7505044639927903340

/-! ## A041151.P11734621731065960517

`∪[A250120(n), A312639(A051232(n))]`
-/

namespace A041151.P11734621731065960517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312639 (A051232 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A041151.P11734621731065960517

/-!
# A041154: Numerators of continued fraction convergents to sqrt(87).

The programs for A041154, there is no canonical definition to state claims against.
-/

/-! ## A041154.P2718863878006202304

`A042510(n)/Δ[A014601(n)]`
-/

namespace A041154.P2718863878006202304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042510 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041154.P2718863878006202304

/-! ## A041154.P13848068460373804328

`A042510(n)/A010684(n+1)`
-/

namespace A041154.P13848068460373804328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042510 n : ℚ) / (A010684 (n + 1) : ℚ)

end

end A041154.P13848068460373804328

/-! ## A041154.P12485686339160639489

`A042510(n)/gcd(3, A042498(n))`
-/

namespace A041154.P12485686339160639489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042510 n : ℚ) / (Int.gcd 3 (A042498 n) : ℚ)

end

end A041154.P12485686339160639489

/-! ## A041154.P14071177132334999470

`A042510(n)/Δ[A042964(n+2)]`
-/

namespace A041154.P14071177132334999470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042510 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041154.P14071177132334999470

/-! ## A041154.P3646902397138674188

`A042510(n)/A010883(2*(n+1))`
-/

namespace A041154.P3646902397138674188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042510 n : ℚ) / (A010883 (2 * (n + 1)) : ℚ)

end

end A041154.P3646902397138674188

/-!
# A041155: Denominators of continued fraction convergents to sqrt(87).

The programs for A041155, the canonical program `A041155.P4241069790150363583` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041155 has offset 0).

The definition of A041155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041155.P4241069790150363583

`56*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=55, a(3)=168`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041155

/-- `56*a(n-2)-a(n-4)` -/
def P4241069790150363583.Spec : Prop :=
  ∀ n, P4241069790150363583.a n = A041155 n

theorem P4241069790150363583.correct : P4241069790150363583.Spec := by
  intro n
  simp only [A041155]

end A041155

/-! ## A041155.P2319343099043661196

`(2*n+1)%4*A042511(n)`
-/

namespace A041155.P2319343099043661196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) % 4 : ℕ) : ℤ) * A042511 n

end

end A041155.P2319343099043661196

namespace A041155

/-- `(2*n+1)%4*A042511(n)` -/
def P2319343099043661196.Spec : Prop :=
  ∀ n, P2319343099043661196.a n = A041155 n

end A041155

/-! ## A041155.P7689390428923508349

`A010684(n)*A042511(n)`
-/

namespace A041155.P7689390428923508349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A042511 n

end

end A041155.P7689390428923508349

namespace A041155

/-- `A010684(n)*A042511(n)` -/
def P7689390428923508349.Spec : Prop :=
  ∀ n, P7689390428923508349.a n = A041155 n

end A041155

/-! ## A041155.P7977423776011419745

`Δ[A042948(n)]*A042511(n)`
-/

namespace A041155.P7977423776011419745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042511 n

end

end A041155.P7977423776011419745

namespace A041155

/-- `Δ[A042948(n)]*A042511(n)` -/
def P7977423776011419745.Spec : Prop :=
  ∀ n, P7977423776011419745.a n = A041155 n

end A041155

/-! ## A041155.P10051916312870232536

`Δ[A014601(n+1)]*A042511(n)`
-/

namespace A041155.P10051916312870232536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042511 n

end

end A041155.P10051916312870232536

namespace A041155

/-- `Δ[A014601(n+1)]*A042511(n)` -/
def P10051916312870232536.Spec : Prop :=
  ∀ n, P10051916312870232536.a n = A041155 n

end A041155

/-! ## A041155.P9332616450482939421

`A004442(Δ[or(1, n)])*A042511(n)`
-/

namespace A041155.P9332616450482939421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A042511 n

end

end A041155.P9332616450482939421

namespace A041155

/-- `A004442(Δ[or(1, n)])*A042511(n)` -/
def P9332616450482939421.Spec : Prop :=
  ∀ n, P9332616450482939421.a n = A041155 n

end A041155

/-! ## A041155.P17642506040730186261

`A010873(2*n+1)*A042511(n)`
-/

namespace A041155.P17642506040730186261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * n + 1) * A042511 n

end

end A041155.P17642506040730186261

namespace A041155

/-- `A010873(2*n+1)*A042511(n)` -/
def P17642506040730186261.Spec : Prop :=
  ∀ n, P17642506040730186261.a n = A041155 n

end A041155

/-!
# A041156: Numerators of continued fraction convergents to sqrt(88).

The programs for A041156, there is no canonical definition to state claims against.
-/

/-! ## A041156.P1273126303227169632

`round(sqrt(88)*A041157(n))`
-/

namespace A041156.P1273126303227169632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (88 : ℝ) * (A041157 n : ℝ))

end

end A041156.P1273126303227169632

/-! ## A041156.P18235273553246477445

`A081502(A042784(n))`
-/

namespace A041156.P18235273553246477445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081502 (A042784 n).toNat

end

end A041156.P18235273553246477445

/-!
# A041157: Denominators of continued fraction convergents to sqrt(88).

The programs for A041157, there is no canonical definition to state claims against.
-/

/-! ## A041157.P5884018644293901932

`round(A041156(n)/sqrt(88))`
-/

namespace A041157.P5884018644293901932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041156 n : ℝ) / Real.sqrt (88 : ℝ))

end

end A041157.P5884018644293901932

/-! ## A041157.P18158995802301816221

`ceil(A041156(n)/sqrt(88)-n/A284776(n+1))`
-/

namespace A041157.P18158995802301816221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041156 n : ℝ) / Real.sqrt (88 : ℝ) - ((n : ℚ) / (A284776 (n + 1) : ℚ) : ℝ)⌉

end

end A041157.P18158995802301816221

/-! ## A041157.P10315699384400081399

`A281408(∑[A084860(C(n, 5))])`
-/

namespace A041157.P10315699384400081399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084860 (Nat.choose n 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041157.P10315699384400081399

/-!
# A041160: Numerators of continued fraction convergents to sqrt(90).

The programs for A041160, the canonical program `A041160.P4958274173460617149` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041160 has offset 0).

The definition of A041160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041160.P4958274173460617149

`((-1)^n+2)*((3-sqrt(10))^(n+1)+(3+sqrt(10))^(n+1))/2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041160

/-- `((-1)^n+2)*((3-sqrt(10))^(n+1)+(3+sqrt(10))^(n+1))/2` -/
def P4958274173460617149.Spec : Prop :=
  ∀ n, P4958274173460617149.a n = (A041160 n : ℝ)

end A041160

/-! ## A041160.P1266995207581138646

`lcm(2, A041682(n))/2`
-/

namespace A041160.P1266995207581138646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041682 n) : ℚ) / 2

end

end A041160.P1266995207581138646

namespace A041160

/-- `lcm(2, A041682(n))/2` -/
def P1266995207581138646.Spec : Prop :=
  ∀ n, P1266995207581138646.a n = (A041160 n : ℚ)

end A041160

/-! ## A041160.P7711000552701186239

`A041682(n)/A040001(n+2)`
-/

namespace A041160.P7711000552701186239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041682 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041160.P7711000552701186239

namespace A041160

/-- `A041682(n)/A040001(n+2)` -/
def P7711000552701186239.Spec : Prop :=
  ∀ n, P7711000552701186239.a n = (A041160 n : ℚ)

end A041160

/-! ## A041160.P5521234321885436309

`A041682(n)/gcd(2, A041066(n))`
-/

namespace A041160.P5521234321885436309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041682 n : ℚ) / (Int.gcd 2 (A041066 n) : ℚ)

end

end A041160.P5521234321885436309

namespace A041160

/-- `A041682(n)/gcd(2, A041066(n))` -/
def P5521234321885436309.Spec : Prop :=
  ∀ n, P5521234321885436309.a n = (A041160 n : ℚ)

end A041160

/-! ## A041160.P183043368469698247

`A041682(n)/gcd(4, A002522(n+1))`
-/

namespace A041160.P183043368469698247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041682 n : ℚ) / (Int.gcd 4 (A002522 (n + 1)) : ℚ)

end

end A041160.P183043368469698247

namespace A041160

/-- `A041682(n)/gcd(4, A002522(n+1))` -/
def P183043368469698247.Spec : Prop :=
  ∀ n, P183043368469698247.a n = (A041160 n : ℚ)

end A041160

/-!
# A041161: Denominators of continued fraction convergents to sqrt(90).

The programs for A041161, the canonical program `A041161.P9967215436243591298` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041161 has offset 0).

The definition of A041161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041161.P9967215436243591298

`38*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=37, a(3)=76`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041161

/-- `38*a(n-2)-a(n-4)` -/
def P9967215436243591298.Spec : Prop :=
  ∀ n, P9967215436243591298.a n = A041161 n

theorem P9967215436243591298.correct : P9967215436243591298.Spec := by
  intro n
  simp only [A041161]

end A041161

/-! ## A041161.P6393806758550156598

`gcd(2, n+1)*A041683(n)`
-/

namespace A041161.P6393806758550156598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A041683 n

end

end A041161.P6393806758550156598

namespace A041161

/-- `gcd(2, n+1)*A041683(n)` -/
def P6393806758550156598.Spec : Prop :=
  ∀ n, P6393806758550156598.a n = A041161 n

end A041161

/-! ## A041161.P2529631447746095129

`A000034(n)*A041683(n)`
-/

namespace A041161.P2529631447746095129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041683 n

end

end A041161.P2529631447746095129

namespace A041161

/-- `A000034(n)*A041683(n)` -/
def P2529631447746095129.Spec : Prop :=
  ∀ n, P2529631447746095129.a n = A041161 n

end A041161

/-! ## A041161.P3361678848429208403

`A040001(n+1)*A041683(n)`
-/

namespace A041161.P3361678848429208403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041683 n

end

end A041161.P3361678848429208403

namespace A041161

/-- `A040001(n+1)*A041683(n)` -/
def P3361678848429208403.Spec : Prop :=
  ∀ n, P3361678848429208403.a n = A041161 n

end A041161

/-! ## A041161.P993850969267648053

`A041683(n)*A182746(Δ[or(1, n)])`
-/

namespace A041161.P993850969267648053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041683 n * A182746 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A041161.P993850969267648053

namespace A041161

/-- `A041683(n)*A182746(Δ[or(1, n)])` -/
def P993850969267648053.Spec : Prop :=
  ∀ n, P993850969267648053.a n = A041161 n

end A041161

/-! ## A041161.P2942137964749744787

`A041683(n)/A041007(n)*A142239(n)`
-/

namespace A041161.P2942137964749744787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041683 n : ℚ) / (A041007 n : ℚ) * (A142239 n : ℚ)

end

end A041161.P2942137964749744787

namespace A041161

/-- `A041683(n)/A041007(n)*A142239(n)` -/
def P2942137964749744787.Spec : Prop :=
  ∀ n, P2942137964749744787.a n = (A041161 n : ℚ)

end A041161

/-! ## A041161.P4051639408321804180

`A005668(n+1)/A010684(n)`
-/

namespace A041161.P4051639408321804180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005668 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A041161.P4051639408321804180

namespace A041161

/-- `A005668(n+1)/A010684(n)` -/
def P4051639408321804180.Spec : Prop :=
  ∀ n, P4051639408321804180.a n = (A041161 n : ℚ)

end A041161

/-! ## A041161.P4641385360255354672

`(A041683(n)+A041067(n))/2`
-/

namespace A041161.P4641385360255354672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041683 n + A041067 n : ℚ) / 2

end

end A041161.P4641385360255354672

namespace A041161

/-- `(A041683(n)+A041067(n))/2` -/
def P4641385360255354672.Spec : Prop :=
  ∀ n, P4641385360255354672.a n = (A041161 n : ℚ)

end A041161

/-! ## A041161.P138288059905510748

`A228470(2*n)/dr(A228470(2*n))`
-/

namespace A041161.P138288059905510748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228470 (2 * n) : ℚ) / (SequenceMachineLib.digitalRoot (A228470 (2 * n)) : ℚ)

end

end A041161.P138288059905510748

namespace A041161

/-- `A228470(2*n)/dr(A228470(2*n))` -/
def P138288059905510748.Spec : Prop :=
  ∀ n, P138288059905510748.a n = (A041161 n : ℚ)

end A041161

/-! ## A041161.P6113528995393702336

`gcd(∑[A097315(n)], A078469(n+1))`
-/

namespace A041161.P6113528995393702336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A078469 (n + 1))

end

end A041161.P6113528995393702336

namespace A041161

/-- `gcd(∑[A097315(n)], A078469(n+1))` -/
def P6113528995393702336.Spec : Prop :=
  ∀ n, (P6113528995393702336.a n : ℤ) = A041161 n

end A041161

/-!
# A041162: Numerators of continued fraction convergents to sqrt(91).

The programs for A041162, there is no canonical definition to state claims against.
-/

/-! ## A041162.P16582175368655742113

`A196108(A112912(n)%A006450(2*n+1))`
-/

namespace A041162.P16582175368655742113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196108 (Int.tmod (A112912 n) (A006450 (2 * n + 1))).toNat

end

end A041162.P16582175368655742113

/-!
# A041164: Numerators of continued fraction convergents to sqrt(92).

The programs for A041164, there is no canonical definition to state claims against.
-/

/-! ## A041164.P9452412135071442349

`A358725(A351813(n))+A052852(n)`
-/

namespace A041164.P9452412135071442349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358725 (A351813 n).toNat + A052852 n

end

end A041164.P9452412135071442349

/-!
# A041166: Numerators of continued fraction convergents to sqrt(93).

The programs for A041166, there is no canonical definition to state claims against.
-/

/-! ## A041166.P8466677954152167369

`A328320(n+1)+A005877(A062207(n))`
-/

namespace A041166.P8466677954152167369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328320 (n + 1) + A005877 (A062207 n).toNat

end

end A041166.P8466677954152167369

/-!
# A041167: Denominators of continued fraction convergents to sqrt(93).

The programs for A041167, there is no canonical definition to state claims against.
-/

/-! ## A041167.P9967784352762186853

`A167865(A195848(2*(n+1))+A123310(n))`
-/

namespace A041167.P9967784352762186853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A195848 (2 * (n + 1)) + A123310 n).toNat

end

end A041167.P9967784352762186853

/-!
# A041171: Denominators of continued fraction convergents to sqrt(95).

The programs for A041171, the canonical program `A041171.P6429405310128368168` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041171 has offset 0).

The definition of A041171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041171.P6429405310128368168

`78*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=75, a(5)=79, a(6)=233, a(7)=312`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041171

/-- `78*a(n-4)-a(n-8)` -/
def P6429405310128368168.Spec : Prop :=
  ∀ n, P6429405310128368168.a n = A041171 n

theorem P6429405310128368168.correct : P6429405310128368168.Spec := by
  intro n
  simp only [A041171]

end A041171

/-! ## A041171.P6896082754581456541

`A001281(A041253(n)+A041105(n))`
-/

namespace A041171.P6896082754581456541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041253 n + A041105 n).toNat

end

end A041171.P6896082754581456541

namespace A041171

/-- `A001281(A041253(n)+A041105(n))` -/
def P6896082754581456541.Spec : Prop :=
  ∀ n, P6896082754581456541.a n = A041171 n

end A041171

/-! ## A041171.P10243233181598055955

`A001281(A041465(n)+A041021(n))`
-/

namespace A041171.P10243233181598055955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041465 n + A041021 n).toNat

end

end A041171.P10243233181598055955

namespace A041171

/-- `A001281(A041465(n)+A041021(n))` -/
def P10243233181598055955.Spec : Prop :=
  ∀ n, P10243233181598055955.a n = A041171 n

end A041171

/-! ## A041171.P10579479974761958301

`A004525(A041253(n)+A041105(n))`
-/

namespace A041171.P10579479974761958301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041253 n + A041105 n).toNat

end

end A041171.P10579479974761958301

namespace A041171

/-- `A004525(A041253(n)+A041105(n))` -/
def P10579479974761958301.Spec : Prop :=
  ∀ n, P10579479974761958301.a n = A041171 n

end A041171

/-!
# A041172: Numerators of continued fraction convergents to sqrt(96).

The programs for A041172, there is no canonical definition to state claims against.
-/

/-! ## A041172.P3329216471356326341

`A004525(A041728(n)*A095062(n+1))`
-/

namespace A041172.P3329216471356326341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041728 n * A095062 (n + 1)).toNat

end

end A041172.P3329216471356326341

/-!
# A041173: Denominators of continued fraction convergents to sqrt(96).

The programs for A041173, the canonical program `A041173.P260030892562612781` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041173 has offset 0).

The definition of A041173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041173.P260030892562612781

`98*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=94, a(5)=99, a(6)=391, a(7)=490`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041173

/-- `98*a(n-4)-a(n-8)` -/
def P260030892562612781.Spec : Prop :=
  ∀ n, P260030892562612781.a n = A041173 n

theorem P260030892562612781.correct : P260030892562612781.Spec := by
  intro n
  simp only [A041173]

end A041173

/-! ## A041173.P12999593162151832949

`round(A041172(n)/sqrt(96))`
-/

namespace A041173.P12999593162151832949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041172 n : ℝ) / Real.sqrt (96 : ℝ))

end

end A041173.P12999593162151832949

namespace A041173

/-- `round(A041172(n)/sqrt(96))` -/
def P12999593162151832949.Spec : Prop :=
  ∀ n, P12999593162151832949.a n = A041173 n

end A041173

/-! ## A041173.P4908445538671797031

`A004525(A041409(n)+A041037(n))`
-/

namespace A041173.P4908445538671797031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041409 n + A041037 n).toNat

end

end A041173.P4908445538671797031

namespace A041173

/-- `A004525(A041409(n)+A041037(n))` -/
def P4908445538671797031.Spec : Prop :=
  ∀ n, P4908445538671797031.a n = A041173 n

end A041173

/-! ## A041173.P5341928914392525901

`A004526(A041409(n)+A041037(n))`
-/

namespace A041173.P5341928914392525901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A041409 n + A041037 n).toNat

end

end A041173.P5341928914392525901

namespace A041173

/-- `A004526(A041409(n)+A041037(n))` -/
def P5341928914392525901.Spec : Prop :=
  ∀ n, P5341928914392525901.a n = A041173 n

end A041173

/-!
# A041174: Numerators of continued fraction convergents to sqrt(97).

The programs for A041174, there is no canonical definition to state claims against.
-/

/-! ## A041174.P8410760536413478114

`A182846(A226818(n+1)+A003961(3*(n+1)))`
-/

namespace A041174.P8410760536413478114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182846 (A226818 (n + 1) + A003961 (3 * (n + 1))).toNat

end

end A041174.P8410760536413478114

/-!
# A041175: Denominators of continued fraction convergents to sqrt(97).

The programs for A041175, there is no canonical definition to state claims against.
-/

/-! ## A041175.P1372543379684872932

`round(A041174(n)/sqrt(97))`
-/

namespace A041175.P1372543379684872932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041174 n : ℝ) / Real.sqrt (97 : ℝ))

end

end A041175.P1372543379684872932

/-! ## A041175.P3530483363864394499

`A033676((a(n-1)+a(n-2))²)` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A041175.P3530483363864394499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A033676 ((a (n - 1) + a (n - 2)) ^ 2).toNat

end

end A041175.P3530483363864394499

/-! ## A041175.P4424436869195492315

`(a(n-1)+a(n-2))%A030044(n)` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A041175.P4424436869195492315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  Int.tmod (a (n - 1) + a (n - 2)) (A030044 n)

end

end A041175.P4424436869195492315

/-! ## A041175.P12662160732839422720

`A000194((a(n-1)-floor(-a(n-2)))²)` with `a(0)=1, a(1)=1, a(2)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A041175.P12662160732839422720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A000194 ((a (n - 1) - (-a (n - 2))) ^ 2).toNat

end

end A041175.P12662160732839422720

/-! ## A041175.P9432970267592567210

`A000194((a(n-1)-round(-a(n-2)))²)` with `a(0)=1, a(1)=1, a(2)=6`

`round` is left out, it is the identity on integers.
-/

namespace A041175.P9432970267592567210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A000194 ((a (n - 1) - (-a (n - 2))) ^ 2).toNat

end

end A041175.P9432970267592567210

/-!
# A041177: Denominators of continued fraction convergents to sqrt(98).

The programs for A041177, there is no canonical definition to state claims against.
-/

/-! ## A041177.P3214729091006670182

`A052413(A041141(n)+1)`
-/

namespace A041177.P3214729091006670182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (A041141 n + 1).toNat

end

end A041177.P3214729091006670182

/-! ## A041177.P647715338400075548

`A005843(A041753(n))-A042729(n)`
-/

namespace A041177.P647715338400075548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A041753 n).toNat - A042729 n

end

end A041177.P647715338400075548

/-!
# A041178: Numerators of continued fraction convergents to sqrt(99).

The programs for A041178, the canonical program `A041178.P9895779201738330733` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041178 has offset 0).

The definition of A041178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041178.P9895779201738330733

`Δ[A014601(n)]*A041014(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041178

/-- `Δ[A014601(n)]*A041014(n)` -/
def P9895779201738330733.Spec : Prop :=
  ∀ n, P9895779201738330733.a n = A041178 n

theorem P9895779201738330733.correct : P9895779201738330733.Spec := by
  intro n
  simp only [A041178]

end A041178

/-! ## A041178.P4513710118343350258

`A010684(n+1)*A041014(n)`
-/

namespace A041178.P4513710118343350258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1) * A041014 n

end

end A041178.P4513710118343350258

namespace A041178

/-- `A010684(n+1)*A041014(n)` -/
def P4513710118343350258.Spec : Prop :=
  ∀ n, P4513710118343350258.a n = A041178 n

end A041178

/-! ## A041178.P2075599605804938700

`gcd(3, A041022(n))*A041014(n)`
-/

namespace A041178.P2075599605804938700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A041022 n) : ℤ) * A041014 n

end

end A041178.P2075599605804938700

namespace A041178

/-- `gcd(3, A041022(n))*A041014(n)` -/
def P2075599605804938700.Spec : Prop :=
  ∀ n, P2075599605804938700.a n = A041178 n

end A041178

/-! ## A041178.P8836093020738785236

`Δ[A042948(n+1)]*A041014(n)`
-/

namespace A041178.P8836093020738785236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041014 n

end

end A041178.P8836093020738785236

namespace A041178

/-- `Δ[A042948(n+1)]*A041014(n)` -/
def P8836093020738785236.Spec : Prop :=
  ∀ n, P8836093020738785236.a n = A041178 n

end A041178

/-! ## A041178.P11707079962843321851

`Δ[A338062(n+1)]*A041014(n)`
-/

namespace A041178.P11707079962843321851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041014 n

end

end A041178.P11707079962843321851

namespace A041178

/-- `Δ[A338062(n+1)]*A041014(n)` -/
def P11707079962843321851.Spec : Prop :=
  ∀ n, P11707079962843321851.a n = A041178 n

end A041178

/-! ## A041178.P9959246779302062039

`A041014(n)*A073575(A016789(n))`
-/

namespace A041178.P9959246779302062039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041014 n * A073575 (A016789 n).toNat

end

end A041178.P9959246779302062039

namespace A041178

/-- `A041014(n)*A073575(A016789(n))` -/
def P9959246779302062039.Spec : Prop :=
  ∀ n, P9959246779302062039.a n = A041178 n

end A041178

/-! ## A041178.P15712678701536552811

`gcd(A199020(n), A199025(n))*A041014(n)`
-/

namespace A041178.P15712678701536552811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A199020 n) (A199025 n) : ℤ) * A041014 n

end

end A041178.P15712678701536552811

namespace A041178

/-- `gcd(A199020(n), A199025(n))*A041014(n)` -/
def P15712678701536552811.Spec : Prop :=
  ∀ n, P15712678701536552811.a n = A041178 n

end A041178

/-!
# A041179: Denominators of continued fraction convergents to sqrt(99).

The programs for A041179, the canonical program `A041179.P17684239972321436015` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041179 has offset 0).

The definition of A041179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041179.P17684239972321436015

`20*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=19, a(3)=20`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041179

/-- `20*a(n-2)-a(n-4)` -/
def P17684239972321436015.Spec : Prop :=
  ∀ n, P17684239972321436015.a n = A041179 n

theorem P17684239972321436015.correct : P17684239972321436015.Spec := by
  intro n
  simp only [A041179]

end A041179

/-! ## A041179.P17024859048301788308

`lcm(3, A041015(n))/3`
-/

namespace A041179.P17024859048301788308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A041015 n) : ℚ) / 3

end

end A041179.P17024859048301788308

namespace A041179

/-- `lcm(3, A041015(n))/3` -/
def P17024859048301788308.Spec : Prop :=
  ∀ n, P17024859048301788308.a n = (A041179 n : ℚ)

end A041179

/-! ## A041179.P8223617702219282606

`A041015(n)/A010684(n)`
-/

namespace A041179.P8223617702219282606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041015 n : ℚ) / (A010684 n : ℚ)

end

end A041179.P8223617702219282606

namespace A041179

/-- `A041015(n)/A010684(n)` -/
def P8223617702219282606.Spec : Prop :=
  ∀ n, P8223617702219282606.a n = (A041179 n : ℚ)

end A041179

/-! ## A041179.P15686773884046755986

`A041015(n)/Δ[A042948(n)]`
-/

namespace A041179.P15686773884046755986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041015 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041179.P15686773884046755986

namespace A041179

/-- `A041015(n)/Δ[A042948(n)]` -/
def P15686773884046755986.Spec : Prop :=
  ∀ n, P15686773884046755986.a n = (A041179 n : ℚ)

end A041179

/-! ## A041179.P4139272370075683643

`A041015(n)/Δ[A042963(n+1)]`
-/

namespace A041179.P4139272370075683643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041015 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041179.P4139272370075683643

namespace A041179

/-- `A041015(n)/Δ[A042963(n+1)]` -/
def P4139272370075683643.Spec : Prop :=
  ∀ n, P4139272370075683643.a n = (A041179 n : ℚ)

end A041179

/-! ## A041179.P10632117853088297373

`A041015(n)/A041015(Δ[A008619(n)])`
-/

namespace A041179.P10632117853088297373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041015 n : ℚ) / (A041015 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041179.P10632117853088297373

namespace A041179

/-- `A041015(n)/A041015(Δ[A008619(n)])` -/
def P10632117853088297373.Spec : Prop :=
  ∀ n, P10632117853088297373.a n = (A041179 n : ℚ)

end A041179

/-! ## A041179.P14949931859185278392

`A041015(n)/A115716(A052410(n+1)²)`
-/

namespace A041179.P14949931859185278392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041015 n : ℚ) / (A115716 (A052410 (n + 1) ^ 2).toNat : ℚ)

end

end A041179.P14949931859185278392

namespace A041179

/-- `A041015(n)/A115716(A052410(n+1)²)` -/
def P14949931859185278392.Spec : Prop :=
  ∀ n, P14949931859185278392.a n = (A041179 n : ℚ)

end A041179

/-! ## A041179.P14354948421631536740

`A041015(n)/A115716((n+1)²)`
-/

namespace A041179.P14354948421631536740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041015 n : ℚ) / (A115716 ((n + 1) ^ 2) : ℚ)

end

end A041179.P14354948421631536740

namespace A041179

/-- `A041015(n)/A115716((n+1)²)` -/
def P14354948421631536740.Spec : Prop :=
  ∀ n, P14354948421631536740.a n = (A041179 n : ℚ)

end A041179

/-!
# A041180: Numerators of continued fraction convergents to sqrt(101).

The programs for A041180, the canonical program `A041180.P2630406197751419655` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041180 has offset 0).

The definition of A041180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041180.P2630406197751419655

`20*a(n-1)+a(n-2)` with `a(0)=10, a(1)=201`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041180

/-- `20*a(n-1)+a(n-2)` -/
def P2630406197751419655.Spec : Prop :=
  ∀ n, (P2630406197751419655.a n : ℤ) = A041180 n

theorem P2630406197751419655.correct : P2630406197751419655.Spec := by
  intro n
  simp only [A041180]

end A041180

/-! ## A041180.P10864006863642015054

`A090309(n+1)/2`
-/

namespace A041180.P10864006863642015054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090309 (n + 1) : ℚ) / 2

end

end A041180.P10864006863642015054

namespace A041180

/-- `A090309(n+1)/2` -/
def P10864006863642015054.Spec : Prop :=
  ∀ n, P10864006863642015054.a n = (A041180 n : ℚ)

end A041180

/-! ## A041180.P7962843673109420164

`A041766(n)/gcd(2, n)`
-/

namespace A041180.P7962843673109420164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041766 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041180.P7962843673109420164

namespace A041180

/-- `A041766(n)/gcd(2, n)` -/
def P7962843673109420164.Spec : Prop :=
  ∀ n, P7962843673109420164.a n = (A041180 n : ℚ)

end A041180

/-! ## A041180.P5041987034590394804

`Δ[∑[A090309(n)]/2]`
-/

namespace A041180.P5041987034590394804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090309 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A041180.P5041987034590394804

namespace A041180

/-- `Δ[∑[A090309(n)]/2]` -/
def P5041987034590394804.Spec : Prop :=
  ∀ n, P5041987034590394804.a n = (A041180 n : ℚ)

end A041180

/-! ## A041180.P9706387878134098143

`record[ratio[A090309(A025581(n))]]`
-/

namespace A041180.P9706387878134098143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090309 (A025581 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041180.P9706387878134098143

namespace A041180

/-- `record[ratio[A090309(A025581(n))]]` -/
def P9706387878134098143.Spec : Prop :=
  ∀ n, P9706387878134098143.a n = (A041180 n : ℚ)

end A041180

/-! ## A041180.P14617848711499278425

`A041766(n)/A000034(n+1)`
-/

namespace A041180.P14617848711499278425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041766 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041180.P14617848711499278425

namespace A041180

/-- `A041766(n)/A000034(n+1)` -/
def P14617848711499278425.Spec : Prop :=
  ∀ n, P14617848711499278425.a n = (A041180 n : ℚ)

end A041180

/-! ## A041180.P4981715831582432082

`A000034(n)/2*A041766(n)`
-/

namespace A041180.P4981715831582432082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041766 n : ℚ)

end

end A041180.P4981715831582432082

namespace A041180

/-- `A000034(n)/2*A041766(n)` -/
def P4981715831582432082.Spec : Prop :=
  ∀ n, P4981715831582432082.a n = (A041180 n : ℚ)

end A041180

/-! ## A041180.P16518585129126531282

`A041181(n+1)-10*A041181(n)`
-/

namespace A041180.P16518585129126531282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041181 (n + 1) - 10 * A041181 n

end

end A041180.P16518585129126531282

namespace A041180

/-- `A041181(n+1)-10*A041181(n)` -/
def P16518585129126531282.Spec : Prop :=
  ∀ n, P16518585129126531282.a n = A041180 n

end A041180

/-! ## A041180.P4999127374311379879

`A041766(n)/(2-A007814(A081346(n)))`
-/

namespace A041180.P4999127374311379879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041766 n : ℚ) / (2 - A007814 (A081346 n).toNat : ℚ)

end

end A041180.P4999127374311379879

namespace A041180

/-- `A041766(n)/(2-A007814(A081346(n)))` -/
def P4999127374311379879.Spec : Prop :=
  ∀ n, P4999127374311379879.a n = (A041180 n : ℚ)

end A041180

/-!
# A041181: Denominators of continued fraction convergents to sqrt(101).

The programs for A041181, the canonical program `A041181.P7418229576895434928` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041181 has offset 0).

The definition of A041181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041181.P7418229576895434928

`20*a(n-1)+a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041181

/-- `20*a(n-1)+a(n-2)` -/
def P7418229576895434928.Spec : Prop :=
  ∀ n, (P7418229576895434928.a n : ℤ) = A041181 n

theorem P7418229576895434928.correct : P7418229576895434928.Spec := by
  intro n
  simp only [A041181]

end A041181

/-! ## A041181.P11817772724780984028

`(n%2+1)*A041767(n)`
-/

namespace A041181.P11817772724780984028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A041767 n

end

end A041181.P11817772724780984028

namespace A041181

/-- `(n%2+1)*A041767(n)` -/
def P11817772724780984028.Spec : Prop :=
  ∀ n, P11817772724780984028.a n = A041181 n

end A041181

/-! ## A041181.P16154087307636426942

`A000034(n)*A041767(n)`
-/

namespace A041181.P16154087307636426942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041767 n

end

end A041181.P16154087307636426942

namespace A041181

/-- `A000034(n)*A041767(n)` -/
def P16154087307636426942.Spec : Prop :=
  ∀ n, P16154087307636426942.a n = A041181 n

end A041181

/-! ## A041181.P3695853136665463370

`A010673(n)!*A041767(n)`
-/

namespace A041181.P3695853136665463370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010673 n).toNat : ℤ) * A041767 n

end

end A041181.P3695853136665463370

namespace A041181

/-- `A010673(n)!*A041767(n)` -/
def P3695853136665463370.Spec : Prop :=
  ∀ n, P3695853136665463370.a n = A041181 n

end A041181

/-! ## A041181.P11518751933358051807

`A040001(n+1)*A041767(n)`
-/

namespace A041181.P11518751933358051807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041767 n

end

end A041181.P11518751933358051807

namespace A041181

/-- `A040001(n+1)*A041767(n)` -/
def P11518751933358051807.Spec : Prop :=
  ∀ n, P11518751933358051807.a n = A041181 n

end A041181

/-! ## A041181.P679513602005906841

`A000108(gcd(n-1, 2*n))*A041767(n)`
-/

namespace A041181.P679513602005906841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)) * A041767 n

end

end A041181.P679513602005906841

namespace A041181

/-- `A000108(gcd(n-1, 2*n))*A041767(n)` -/
def P679513602005906841.Spec : Prop :=
  ∀ n, P679513602005906841.a n = A041181 n

end A041181

/-! ## A041181.P16724677719934736103

`A001511(A081346(n))*A041767(n)`
-/

namespace A041181.P16724677719934736103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A081346 n).toNat * A041767 n

end

end A041181.P16724677719934736103

namespace A041181

/-- `A001511(A081346(n))*A041767(n)` -/
def P16724677719934736103.Spec : Prop :=
  ∀ n, P16724677719934736103.a n = A041181 n

end A041181

/-! ## A041181.P7647633456492096547

`A081346(n)%A040002(n)*A041767(n)`
-/

namespace A041181.P7647633456492096547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081346 n) (A040002 n) * A041767 n

end

end A041181.P7647633456492096547

namespace A041181

/-- `A081346(n)%A040002(n)*A041767(n)` -/
def P7647633456492096547.Spec : Prop :=
  ∀ n, P7647633456492096547.a n = A041181 n

end A041181

/-!
# A041182: Numerators of continued fraction convergents to sqrt(102).

The programs for A041182, there is no canonical definition to state claims against.
-/

/-! ## A041182.P11921363477783415557

`A041774(n)/gcd(2, n)`
-/

namespace A041182.P11921363477783415557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041774 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041182.P11921363477783415557

/-! ## A041182.P18427012679957582192

`A041774(n)/Δ[A007494(n)]`
-/

namespace A041182.P18427012679957582192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041774 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041182.P18427012679957582192

/-! ## A041182.P7290192031225663620

`A041774(n)/A000034(n+1)`
-/

namespace A041182.P7290192031225663620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041774 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041182.P7290192031225663620

/-! ## A041182.P11495370577502686775

`A000034(n)/2*A041774(n)`
-/

namespace A041182.P11495370577502686775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041774 n : ℚ)

end

end A041182.P11495370577502686775

/-! ## A041182.P11089732967605462789

`abs(A041774(n)/A168361(n+1))`
-/

namespace A041182.P11089732967605462789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A041774 n : ℚ) / (A168361 (n + 1) : ℚ)|

end

end A041182.P11089732967605462789

/-!
# A041183: Denominators of continued fraction convergents to sqrt(102).

The programs for A041183, there is no canonical definition to state claims against.
-/

/-! ## A041183.P12061123964397389061

`A000034(n)*A041775(n)`
-/

namespace A041183.P12061123964397389061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041775 n

end

end A041183.P12061123964397389061

/-! ## A041183.P1884962039862374435

`Δ[A032766(n)]*A041775(n)`
-/

namespace A041183.P1884962039862374435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041775 n

end

end A041183.P1884962039862374435

/-! ## A041183.P1123054431690167451

`lcm(Δ[A003188(n)], A041775(n))`
-/

namespace A041183.P1123054431690167451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041775 n)

end

end A041183.P1123054431690167451

/-! ## A041183.P257574724603003126

`A040001(n+1)*A041775(n)`
-/

namespace A041183.P257574724603003126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041775 n

end

end A041183.P257574724603003126

/-! ## A041183.P7866357167720245281

`A004646(n)%3*A041775(n)`
-/

namespace A041183.P7866357167720245281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004646 n) 3 * A041775 n

end

end A041183.P7866357167720245281

/-! ## A041183.P12154513062229958162

`A006519(n²+1)*A041775(n)`
-/

namespace A041183.P12154513062229958162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041775 n

end

end A041183.P12154513062229958162

/-! ## A041183.P12521339847102772878

`A014963(A006519(n+1))*A041775(n)`
-/

namespace A041183.P12521339847102772878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1)).toNat * A041775 n

end

end A041183.P12521339847102772878

/-!
# A041186: Numerators of continued fraction convergents to sqrt(104).

The programs for A041186, there is no canonical definition to state claims against.
-/

/-! ## A041186.P8122102614827242148

`gcd(2, n)*A041040(n)`
-/

namespace A041186.P8122102614827242148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041040 n

end

end A041186.P8122102614827242148

/-! ## A041186.P807246860279339865

`Δ[A007494(n)]*A041040(n)`
-/

namespace A041186.P807246860279339865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041040 n

end

end A041186.P807246860279339865

/-! ## A041186.P11593657795016911479

`A000034(n+1)*A041040(n)`
-/

namespace A041186.P11593657795016911479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041040 n

end

end A041186.P11593657795016911479

/-! ## A041186.P13354074256552680460

`A086927(n+1)/A000034(n)`
-/

namespace A041186.P13354074256552680460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086927 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041186.P13354074256552680460

/-! ## A041186.P18353329440915001507

`A014710(2*n)*A041040(n)`
-/

namespace A041186.P18353329440915001507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 (2 * n) * A041040 n

end

end A041186.P18353329440915001507

/-! ## A041186.P12397727858432662071

`2/A000034(n)*A041040(n)`
-/

namespace A041186.P12397727858432662071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041040 n : ℚ)

end

end A041186.P12397727858432662071

/-! ## A041186.P6067154021313657770

`A041041(2*n+1)/gcd(A041041(2*n+1), A099374(n+1))`
-/

namespace A041186.P6067154021313657770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 (2 * n + 1) : ℚ) / (Int.gcd (A041041 (2 * n + 1)) (A099374 (n + 1)) : ℚ)

end

end A041186.P6067154021313657770

/-!
# A041187: Denominators of continued fraction convergents to sqrt(104).

The programs for A041187, the canonical program `A041187.P9437160457134202649` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041187 has offset 0).

The definition of A041187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041187.P9437160457134202649

`102*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=101, a(3)=510`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041187

/-- `102*a(n-2)-a(n-4)` -/
def P9437160457134202649.Spec : Prop :=
  ∀ n, P9437160457134202649.a n = A041187 n

theorem P9437160457134202649.correct : P9437160457134202649.Spec := by
  intro n
  simp only [A041187]

end A041187

/-! ## A041187.P13743497044780283114

`lcm(2, A041041(n))/2`
-/

namespace A041187.P13743497044780283114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041041 n) : ℚ) / 2

end

end A041187.P13743497044780283114

namespace A041187

/-- `lcm(2, A041041(n))/2` -/
def P13743497044780283114.Spec : Prop :=
  ∀ n, P13743497044780283114.a n = (A041187 n : ℚ)

end A041187

/-! ## A041187.P9750581191847837742

`A041041(n)/A000034(n)`
-/

namespace A041187.P9750581191847837742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (A000034 n : ℚ)

end

end A041187.P9750581191847837742

namespace A041187

/-- `A041041(n)/A000034(n)` -/
def P9750581191847837742.Spec : Prop :=
  ∀ n, P9750581191847837742.a n = (A041187 n : ℚ)

end A041187

/-! ## A041187.P6329476387246212359

`A041041(n)/A010673(n)!`
-/

namespace A041187.P6329476387246212359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A041187.P6329476387246212359

namespace A041187

/-- `A041041(n)/A010673(n)!` -/
def P6329476387246212359.Spec : Prop :=
  ∀ n, P6329476387246212359.a n = (A041187 n : ℚ)

end A041187

/-! ## A041187.P13352309523671364523

`A041041(n)/(A000035(n)+1)`
-/

namespace A041187.P13352309523671364523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041187.P13352309523671364523

namespace A041187

/-- `A041041(n)/(A000035(n)+1)` -/
def P13352309523671364523.Spec : Prop :=
  ∀ n, P13352309523671364523.a n = (A041187 n : ℚ)

end A041187

/-! ## A041187.P11015154127140464246

`A041041(n)/gcd(2, A041049(n))`
-/

namespace A041187.P11015154127140464246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (Int.gcd 2 (A041049 n) : ℚ)

end

end A041187.P11015154127140464246

namespace A041187

/-- `A041041(n)/gcd(2, A041049(n))` -/
def P11015154127140464246.Spec : Prop :=
  ∀ n, P11015154127140464246.a n = (A041187 n : ℚ)

end A041187

/-! ## A041187.P1047299763628095384

`A041041(n)/A006519(n²+1)`
-/

namespace A041187.P1047299763628095384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041187.P1047299763628095384

namespace A041187

/-- `A041041(n)/A006519(n²+1)` -/
def P1047299763628095384.Spec : Prop :=
  ∀ n, P1047299763628095384.a n = (A041187 n : ℚ)

end A041187

/-! ## A041187.P2817741736603278702

`A041041(n)/Δ[A001651(n+1)]`
-/

namespace A041187.P2817741736603278702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041187.P2817741736603278702

namespace A041187

/-- `A041041(n)/Δ[A001651(n+1)]` -/
def P2817741736603278702.Spec : Prop :=
  ∀ n, P2817741736603278702.a n = (A041187 n : ℚ)

end A041187

/-! ## A041187.P8926994339751894024

`A041041(n)/A014963(A006519(n+1))`
-/

namespace A041187.P8926994339751894024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A041187.P8926994339751894024

namespace A041187

/-- `A041041(n)/A014963(A006519(n+1))` -/
def P8926994339751894024.Spec : Prop :=
  ∀ n, P8926994339751894024.a n = (A041187 n : ℚ)

end A041187

/-! ## A041187.P16349865505755341347

`A099374(n+1)/gcd(A041041(2*n+1), A099374(n+1))`
-/

namespace A041187.P16349865505755341347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099374 (n + 1) : ℚ) / (Int.gcd (A041041 (2 * n + 1)) (A099374 (n + 1)) : ℚ)

end

end A041187.P16349865505755341347

namespace A041187

/-- `A099374(n+1)/gcd(A041041(2*n+1), A099374(n+1))` -/
def P16349865505755341347.Spec : Prop :=
  ∀ n, P16349865505755341347.a n = (A041187 n : ℚ)

end A041187

/-!
# A041188: Numerators of continued fraction convergents to sqrt(105).

The programs for A041188, there is no canonical definition to state claims against.
-/

/-! ## A041188.P10455314066023270340

`A041798(n)/gcd(2, n)`
-/

namespace A041188.P10455314066023270340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041798 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041188.P10455314066023270340

/-! ## A041188.P6640805581733514158

`A041798(n)/Δ[A007494(n)]`
-/

namespace A041188.P6640805581733514158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041798 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041188.P6640805581733514158

/-! ## A041188.P14760166003114100379

`A041798(n)/A000034(n+1)`
-/

namespace A041188.P14760166003114100379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041798 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041188.P14760166003114100379

/-! ## A041188.P6107947010705123050

`A041798(n)/A040001(n+2)`
-/

namespace A041188.P6107947010705123050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041798 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041188.P6107947010705123050

/-! ## A041188.P12971677956072389774

`A000034(n)/2*A041798(n)`
-/

namespace A041188.P12971677956072389774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041798 n : ℚ)

end

end A041188.P12971677956072389774

/-! ## A041188.P16044133307261922650

`A041798(n)/A006519(record[xor(2, n)])`
-/

namespace A041188.P16044133307261922650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041798 n : ℚ) / (A006519 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ)

end

end A041188.P16044133307261922650

/-! ## A041188.P16786972003766930005

`A041798(n)/A006519(A006519(n+1)+1)`
-/

namespace A041188.P16786972003766930005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041798 n : ℚ) / (A006519 (A006519 (n + 1) + 1).toNat : ℚ)

end

end A041188.P16786972003766930005

/-! ## A041188.P17791967735163830158

`A041798(n)/A001511(n²+2)`
-/

namespace A041188.P17791967735163830158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041798 n : ℚ) / (A001511 (n ^ 2 + 2) : ℚ)

end

end A041188.P17791967735163830158

/-! ## A041188.P16450532042315891349

`A041798(n)/A006519(n²+2)`
-/

namespace A041188.P16450532042315891349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041798 n : ℚ) / (A006519 (n ^ 2 + 2) : ℚ)

end

end A041188.P16450532042315891349

/-!
# A041189: Denominators of continued fraction convergents to sqrt(105).

The programs for A041189, the canonical program `A041189.P6225501342174578916` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041189 has offset 0).

The definition of A041189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041189.P6225501342174578916

`82*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=81, a(3)=328`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041189

/-- `82*a(n-2)-a(n-4)` -/
def P6225501342174578916.Spec : Prop :=
  ∀ n, P6225501342174578916.a n = A041189 n

theorem P6225501342174578916.correct : P6225501342174578916.Spec := by
  intro n
  simp only [A041189]

end A041189

/-! ## A041189.P11050433922833781736

`A000034(n)*A041799(n)`
-/

namespace A041189.P11050433922833781736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041799 n

end

end A041189.P11050433922833781736

namespace A041189

/-- `A000034(n)*A041799(n)` -/
def P11050433922833781736.Spec : Prop :=
  ∀ n, P11050433922833781736.a n = A041189 n

end A041189

/-! ## A041189.P17929544117285809237

`Δ[A001651(n+1)]*A041799(n)`
-/

namespace A041189.P17929544117285809237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041799 n

end

end A041189.P17929544117285809237

namespace A041189

/-- `Δ[A001651(n+1)]*A041799(n)` -/
def P17929544117285809237.Spec : Prop :=
  ∀ n, P17929544117285809237.a n = A041189 n

end A041189

/-! ## A041189.P15987353763504824911

`(n+2-A004525(2*n+1))*A041799(n)`
-/

namespace A041189.P15987353763504824911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A004525 (2 * n + 1)) * A041799 n

end

end A041189.P15987353763504824911

namespace A041189

/-- `(n+2-A004525(2*n+1))*A041799(n)` -/
def P15987353763504824911.Spec : Prop :=
  ∀ n, P15987353763504824911.a n = A041189 n

end A041189

/-! ## A041189.P102170715015082587

`A020639(A006519(n+1))*A041799(n)`
-/

namespace A041189.P102170715015082587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006519 (n + 1)).toNat * A041799 n

end

end A041189.P102170715015082587

namespace A041189

/-- `A020639(A006519(n+1))*A041799(n)` -/
def P102170715015082587.Spec : Prop :=
  ∀ n, P102170715015082587.a n = A041189 n

end A041189

/-! ## A041189.P2796695761063666675

`A041799(n)*A336158(A020639(n+2))`
-/

namespace A041189.P2796695761063666675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041799 n * A336158 (A020639 (n + 2)).toNat

end

end A041189.P2796695761063666675

namespace A041189

/-- `A041799(n)*A336158(A020639(n+2))` -/
def P2796695761063666675.Spec : Prop :=
  ∀ n, P2796695761063666675.a n = A041189 n

end A041189

/-! ## A041189.P11883582663604804540

`A006519(n²+1)*A041799(n)`
-/

namespace A041189.P11883582663604804540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041799 n

end

end A041189.P11883582663604804540

namespace A041189

/-- `A006519(n²+1)*A041799(n)` -/
def P11883582663604804540.Spec : Prop :=
  ∀ n, P11883582663604804540.a n = A041189 n

end A041189

/-!
# A041190: Numerators of continued fraction convergents to sqrt(106).

The programs for A041190, there is no canonical definition to state claims against.
-/

/-! ## A041190.P509263956818083578

`A054404(A042434(n))+n`
-/

namespace A041190.P509263956818083578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A042434 n).toNat + (n : ℤ)

end

end A041190.P509263956818083578

/-!
# A041191: Denominators of continued fraction convergents to sqrt(106).

The programs for A041191, there is no canonical definition to state claims against.
-/

/-! ## A041191.P11236479272856832952

`A002024(A042343(n)²)`
-/

namespace A041191.P11236479272856832952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A042343 n ^ 2).toNat

end

end A041191.P11236479272856832952

/-! ## A041191.P12712299865938951556

`A123578(A042343(n)²)`
-/

namespace A041191.P12712299865938951556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A042343 n ^ 2).toNat

end

end A041191.P12712299865938951556

/-! ## A041191.P18349779191879597782

`abs(A274093(A042343(n)²))`
-/

namespace A041191.P18349779191879597782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274093 (A042343 n ^ 2).toNat|

end

end A041191.P18349779191879597782

/-! ## A041191.P8437430677616876648

`A002024(A042343(n)*A042343(n))`
-/

namespace A041191.P8437430677616876648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A042343 n * A042343 n).toNat

end

end A041191.P8437430677616876648

/-!
# A041192: Numerators of continued fraction convergents to sqrt(107).

The programs for A041192, there is no canonical definition to state claims against.
-/

/-! ## A041192.P14434470283567423609

`A057946(A041500(n))`
-/

namespace A041192.P14434470283567423609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057946 (A041500 n).toNat

end

end A041192.P14434470283567423609

/-!
# A041194: Numerators of continued fraction convergents to sqrt(108).

The programs for A041194, there is no canonical definition to state claims against.
-/

/-! ## A041194.P3333125479436173179

`or(A000110(n+2), A360555(A038872(2*(n+1))))`
-/

namespace A041194.P3333125479436173179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000110 (n + 2)) (A360555 (A038872 (2 * (n + 1))).toNat)

end

end A041194.P3333125479436173179

/-!
# A041197: Denominators of continued fraction convergents to sqrt(109).

The programs for A041197, there is no canonical definition to state claims against.
-/

/-! ## A041197.P8318278917553301820

`A297442(a(n-1))+5` with `a(0)=1, a(1)=2`
-/

namespace A041197.P8318278917553301820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A297442 (a (n - 1)).toNat + 5

end

end A041197.P8318278917553301820

/-! ## A041197.P3831147939159972278

`A082962(A028986(n+1))`
-/

namespace A041197.P3831147939159972278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082962 (A028986 (n + 1)).toNat

end

end A041197.P3831147939159972278

/-!
# A041198: Numerators of continued fraction convergents to sqrt(110).

The programs for A041198, the canonical program `A041198.P17033337696546334705` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041198 has offset 0).

The definition of A041198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041198.P17033337696546334705

`42*a(n-2)-a(n-4)` with `a(0)=10, a(1)=21, a(2)=430, a(3)=881`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A041198

/-- `42*a(n-2)-a(n-4)` -/
def P17033337696546334705.Spec : Prop :=
  ∀ n, P17033337696546334705.a n = A041198 n

theorem P17033337696546334705.correct : P17033337696546334705.Spec := by
  intro n
  simp only [A041198]

end A041198

/-! ## A041198.P14363802837406607517

`A041838(n)/gcd(2, n)`
-/

namespace A041198.P14363802837406607517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041838 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041198.P14363802837406607517

namespace A041198

/-- `A041838(n)/gcd(2, n)` -/
def P14363802837406607517.Spec : Prop :=
  ∀ n, P14363802837406607517.a n = (A041198 n : ℚ)

end A041198

/-! ## A041198.P1531669243163170502

`A041838(n)/Δ[A007494(n)]`
-/

namespace A041198.P1531669243163170502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041838 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041198.P1531669243163170502

namespace A041198

/-- `A041838(n)/Δ[A007494(n)]` -/
def P1531669243163170502.Spec : Prop :=
  ∀ n, P1531669243163170502.a n = (A041198 n : ℚ)

end A041198

/-! ## A041198.P12511772094469345788

`A041838(n)/A000034(n+1)`
-/

namespace A041198.P12511772094469345788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041838 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041198.P12511772094469345788

namespace A041198

/-- `A041838(n)/A000034(n+1)` -/
def P12511772094469345788.Spec : Prop :=
  ∀ n, P12511772094469345788.a n = (A041198 n : ℚ)

end A041198

/-! ## A041198.P17076895807946995815

`A041838(n)/A040001(n+2)`
-/

namespace A041198.P17076895807946995815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041838 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041198.P17076895807946995815

namespace A041198

/-- `A041838(n)/A040001(n+2)` -/
def P17076895807946995815.Spec : Prop :=
  ∀ n, P17076895807946995815.a n = (A041198 n : ℚ)

end A041198

/-! ## A041198.P11787625401796533807

`A041838(n)/A134451(n+2)`
-/

namespace A041198.P11787625401796533807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041838 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041198.P11787625401796533807

namespace A041198

/-- `A041838(n)/A134451(n+2)` -/
def P11787625401796533807.Spec : Prop :=
  ∀ n, P11787625401796533807.a n = (A041198 n : ℚ)

end A041198

/-! ## A041198.P4542159965033287189

`A000034(n)/2*A041838(n)`
-/

namespace A041198.P4542159965033287189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041838 n : ℚ)

end

end A041198.P4542159965033287189

namespace A041198

/-- `A000034(n)/2*A041838(n)` -/
def P4542159965033287189.Spec : Prop :=
  ∀ n, P4542159965033287189.a n = (A041198 n : ℚ)

end A041198

/-! ## A041198.P8545816612180163742

`A041838(n)/A079882(xor(n, n+1))`
-/

namespace A041198.P8545816612180163742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041838 n : ℚ) / (A079882 (Nat.xor n (n + 1)) : ℚ)

end

end A041198.P8545816612180163742

namespace A041198

/-- `A041838(n)/A079882(xor(n, n+1))` -/
def P8545816612180163742.Spec : Prop :=
  ∀ n, P8545816612180163742.a n = (A041198 n : ℚ)

end A041198

/-! ## A041198.P9228976466987247981

`A041838(n)/A001285(A003159(n+1))`
-/

namespace A041198.P9228976466987247981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041838 n : ℚ) / (A001285 (A003159 (n + 1)).toNat : ℚ)

end

end A041198.P9228976466987247981

namespace A041198

/-- `A041838(n)/A001285(A003159(n+1))` -/
def P9228976466987247981.Spec : Prop :=
  ∀ n, P9228976466987247981.a n = (A041198 n : ℚ)

end A041198

/-!
# A041199: Denominators of continued fraction convergents to sqrt(110).

The programs for A041199, the canonical program `A041199.P323986147853554014` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041199 has offset 0).

The definition of A041199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041199.P323986147853554014

`gcd(2, n+1)*A041839(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041199

/-- `gcd(2, n+1)*A041839(n)` -/
def P323986147853554014.Spec : Prop :=
  ∀ n, P323986147853554014.a n = A041199 n

theorem P323986147853554014.correct : P323986147853554014.Spec := by
  intro n
  simp only [A041199]

end A041199

/-! ## A041199.P6291445014277531279

`A000034(n)*A041839(n)`
-/

namespace A041199.P6291445014277531279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041839 n

end

end A041199.P6291445014277531279

namespace A041199

/-- `A000034(n)*A041839(n)` -/
def P6291445014277531279.Spec : Prop :=
  ∀ n, P6291445014277531279.a n = A041199 n

end A041199

/-! ## A041199.P16473324937963964828

`A040001(n+1)*A041839(n)`
-/

namespace A041199.P16473324937963964828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041839 n

end

end A041199.P16473324937963964828

namespace A041199

/-- `A040001(n+1)*A041839(n)` -/
def P16473324937963964828.Spec : Prop :=
  ∀ n, P16473324937963964828.a n = A041199 n

end A041199

/-! ## A041199.P16526014638185977923

`A041839(n)*A134451(n+1)`
-/

namespace A041199.P16526014638185977923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041839 n * A134451 (n + 1)

end

end A041199.P16526014638185977923

namespace A041199

/-- `A041839(n)*A134451(n+1)` -/
def P16526014638185977923.Spec : Prop :=
  ∀ n, P16526014638185977923.a n = A041199 n

end A041199

/-! ## A041199.P3213062289874998431

`lcm(A006519(n+1), A041839(n))`
-/

namespace A041199.P3213062289874998431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A041839 n)

end

end A041199.P3213062289874998431

namespace A041199

/-- `lcm(A006519(n+1), A041839(n))` -/
def P3213062289874998431.Spec : Prop :=
  ∀ n, (P3213062289874998431.a n : ℤ) = A041199 n

end A041199

/-! ## A041199.P10966417039515644754

`(Δ[A008619(n)]+1)*A041839(n)`
-/

namespace A041199.P10966417039515644754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041839 n

end

end A041199.P10966417039515644754

namespace A041199

/-- `(Δ[A008619(n)]+1)*A041839(n)` -/
def P10966417039515644754.Spec : Prop :=
  ∀ n, P10966417039515644754.a n = A041199 n

end A041199

/-! ## A041199.P11003141731730892338

`A000079(Δ[A008619(n)])*A041839(n)`
-/

namespace A041199.P11003141731730892338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat * A041839 n

end

end A041199.P11003141731730892338

namespace A041199

/-- `A000079(Δ[A008619(n)])*A041839(n)` -/
def P11003141731730892338.Spec : Prop :=
  ∀ n, P11003141731730892338.a n = A041199 n

end A041199

/-! ## A041199.P5536113853504860351

`A036561(Δ[A008619(n)])*A041839(n)`
-/

namespace A041199.P5536113853504860351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (f1 (n + 1) - f1 n).toNat * A041839 n

end

end A041199.P5536113853504860351

namespace A041199

/-- `A036561(Δ[A008619(n)])*A041839(n)` -/
def P5536113853504860351.Spec : Prop :=
  ∀ n, P5536113853504860351.a n = A041199 n

end A041199

/-! ## A041199.P10088534715815391300

`A041839(n)*A165355(Δ[A008619(n)])`
-/

namespace A041199.P10088534715815391300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041839 n * A165355 (f1 (n + 1) - f1 n).toNat

end

end A041199.P10088534715815391300

namespace A041199

/-- `A041839(n)*A165355(Δ[A008619(n)])` -/
def P10088534715815391300.Spec : Prop :=
  ∀ n, P10088534715815391300.a n = A041199 n

end A041199

/-! ## A041199.P17652599884330403419

`A006519(A007947(n+1))*A041839(n)`
-/

namespace A041199.P17652599884330403419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A007947 (n + 1)).toNat * A041839 n

end

end A041199.P17652599884330403419

namespace A041199

/-- `A006519(A007947(n+1))*A041839(n)` -/
def P17652599884330403419.Spec : Prop :=
  ∀ n, P17652599884330403419.a n = A041199 n

end A041199

/-! ## A041199.P13191152316774476571

`A048788(n+1)/A002530(n+1)*A041839(n)`
-/

namespace A041199.P13191152316774476571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 (n + 1) : ℚ) / (A002530 (n + 1) : ℚ) * (A041839 n : ℚ)

end

end A041199.P13191152316774476571

namespace A041199

/-- `A048788(n+1)/A002530(n+1)*A041839(n)` -/
def P13191152316774476571.Spec : Prop :=
  ∀ n, P13191152316774476571.a n = (A041199 n : ℚ)

end A041199

/-! ## A041199.P7580645786393751982

`A006519(n²+1)*A041839(n)`
-/

namespace A041199.P7580645786393751982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041839 n

end

end A041199.P7580645786393751982

namespace A041199

/-- `A006519(n²+1)*A041839(n)` -/
def P7580645786393751982.Spec : Prop :=
  ∀ n, P7580645786393751982.a n = A041199 n

end A041199

