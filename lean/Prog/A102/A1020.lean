import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A102000: a(0),...,a(3) = 1, 2, 4, 8; thereafter a(n) = a(n-1) + 2*a(n-2) + 4*a(n-3) + 8*a(n-4), n>3.

The programs for A102000, the canonical program `A102000.P8170031677714043764` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102000 has offset 0).

The definition of A102000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+4*a(n-3)+8*a(n-4)` (program `A102000.P8170031677714043764`, by `A102000.P8170031677714043764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102000.P8170031677714043764

`a(n-1)+2*a(n-2)+4*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102000

/-- `a(n-1)+2*a(n-2)+4*a(n-3)+8*a(n-4)` -/
def P8170031677714043764.Spec : Prop :=
  ∀ n, (P8170031677714043764.a n : ℤ) = A102000 n

theorem P8170031677714043764.correct : P8170031677714043764.Spec := by
  intro n
  simp only [A102000]

end A102000

/-! ## A102000.P10687558944533155706

`2^ceil(log2(n+1))*A000196(n!)`
-/

namespace A102000.P10687558944533155706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (A000196 (Nat.factorial n) : ℚ)

end

end A102000.P10687558944533155706

namespace A102000

/-- `2^ceil(log2(n+1))*A000196(n!)` -/
def P10687558944533155706.Spec : Prop :=
  ∀ n, P10687558944533155706.a n = (A102000 n : ℚ)

end A102000

/-! ## A102000.P7396860845957776090

`A000196(n!)*A062383(n)`
-/

namespace A102000.P7396860845957776090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.factorial n) * A062383 n

end

end A102000.P7396860845957776090

namespace A102000

/-- `A000196(n!)*A062383(n)` -/
def P7396860845957776090.Spec : Prop :=
  ∀ n, P7396860845957776090.a n = A102000 n

end A102000

/-! ## A102000.P5194744389279971071

`2^ceil(log2(n+1))*A000196(A000142(n))`
-/

namespace A102000.P5194744389279971071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (A000196 (A000142 n).toNat : ℚ)

end

end A102000.P5194744389279971071

namespace A102000

/-- `2^ceil(log2(n+1))*A000196(A000142(n))` -/
def P5194744389279971071.Spec : Prop :=
  ∀ n, P5194744389279971071.a n = (A102000 n : ℚ)

end A102000

/-!
# A102001: A weighted tribonacci, (1,2,4).

The programs for A102001, the canonical program `A102001.P1993598087149798979` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102001 has offset 1).

The definition of A102001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102001.P1993598087149798979

`a(n-1)+2*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102001

/-- `a(n-1)+2*a(n-2)+4*a(n-3)` -/
def P1993598087149798979.Spec : Prop :=
  ∀ n, (P1993598087149798979.a n : ℤ) = A102001 (n + 1)

theorem P1993598087149798979.correct : P1993598087149798979.Spec := by
  intro n
  simp only [A102001, Nat.add_sub_cancel]

end A102001

/-! ## A102001.P8773383346935504821

`ogf((1+2x+4x^2)/(1-x-2x^2-4x^3))`
-/

namespace A102001.P8773383346935504821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4] [1, -1, -2, -4] n

end

end A102001.P8773383346935504821

namespace A102001

/-- `ogf((1+2x+4x^2)/(1-x-2x^2-4x^3))` -/
def P8773383346935504821.Spec : Prop :=
  ∀ n, P8773383346935504821.a n = A102001 (n + 1)

end A102001

/-! ## A102001.P354857077992752598

`Δ[A102002(n+2)/6]`
-/

namespace A102001.P354857077992752598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102002 (n + 2) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102001.P354857077992752598

namespace A102001

/-- `Δ[A102002(n+2)/6]` -/
def P354857077992752598.Spec : Prop :=
  ∀ n, P354857077992752598.a n = (A102001 (n + 1) : ℚ)

end A102001

/-! ## A102001.P13298624675933701260

`A295781(A133263(n))-A000007(n)`
-/

namespace A102001.P13298624675933701260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295781 (A133263 n).toNat - A000007 n

end

end A102001.P13298624675933701260

namespace A102001

/-- `A295781(A133263(n))-A000007(n)` -/
def P13298624675933701260.Spec : Prop :=
  ∀ n, P13298624675933701260.a n = A102001 (n + 1)

end A102001

/-! ## A102001.P16851249637559508750

`A295781(A133263(n))^A178489(n)`
-/

namespace A102001.P16851249637559508750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295781 (A133263 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A102001.P16851249637559508750

namespace A102001

/-- `A295781(A133263(n))^A178489(n)` -/
def P16851249637559508750.Spec : Prop :=
  ∀ n, P16851249637559508750.a n = (A102001 (n + 1) : ℚ)

end A102001

/-!
# A102002: Weighted tribonacci (1,2,4), companion to A102001.

The programs for A102002, the canonical program `A102002.P10492099620932825561` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102002 has offset 1).

The definition of A102002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102002.P10492099620932825561

`a(n-1)+2*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=7, a(2)=13`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102002

/-- `a(n-1)+2*a(n-2)+4*a(n-3)` -/
def P10492099620932825561.Spec : Prop :=
  ∀ n, (P10492099620932825561.a n : ℤ) = A102002 (n + 1)

theorem P10492099620932825561.correct : P10492099620932825561.Spec := by
  intro n
  simp only [A102002, Nat.add_sub_cancel]

end A102002

/-! ## A102002.P8977838503936315390

`ogf((1+6x+4x^2)/(1-x-2x^2-4x^3))`
-/

namespace A102002.P8977838503936315390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 4] [1, -1, -2, -4] n

end

end A102002.P8977838503936315390

namespace A102002

/-- `ogf((1+6x+4x^2)/(1-x-2x^2-4x^3))` -/
def P8977838503936315390.Spec : Prop :=
  ∀ n, P8977838503936315390.a n = A102002 (n + 1)

end A102002

/-!
# A102003: Triangle read by rows: T(n,k) is the number of ordered trees with n edges and having k branches of odd length (n>=0, 0<=k<=n).

The programs for A102003, there is no canonical definition to state claims against.
-/

/-! ## A102003.P13438897024756665997

`A155100(n)+A073424(A084376(2*n+3))`
-/

namespace A102003.P13438897024756665997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 n + A073424 (A084376 (2 * n + 3)).toNat

end

end A102003.P13438897024756665997

/-! ## A102003.P5085389055572378485

`A155100(n)+A102683(A072198(n+1))`
-/

namespace A102003.P5085389055572378485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 n + A102683 (A072198 (n + 1)).toNat

end

end A102003.P5085389055572378485

/-! ## A102003.P5523914997004138629

`A155100(n)+A010059(A189583(n+1))`
-/

namespace A102003.P5523914997004138629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 n + A010059 (A189583 (n + 1)).toNat

end

end A102003.P5523914997004138629

/-! ## A102003.P16808887788677365248

`A155100(n)+A007949(A361221(n+1))`
-/

namespace A102003.P16808887788677365248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 n + A007949 (A361221 (n + 1)).toNat

end

end A102003.P16808887788677365248

/-! ## A102003.P17134096320067461088

`A155100(n)+A112765(A273873(n+1))`
-/

namespace A102003.P17134096320067461088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 n + A112765 (A273873 (n + 1)).toNat

end

end A102003.P17134096320067461088

/-!
# A102005: Fixed point of the morphism 1 -> 12, 2 -> 111.

The programs for A102005, there is no canonical definition to state claims against.
-/

/-! ## A102005.P17991285753720342080

`A284745(n+1)+1`
-/

namespace A102005.P17991285753720342080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284745 (n + 1) + 1

end

end A102005.P17991285753720342080

/-! ## A102005.P6744940792980616652

`C(2, A191261(n+1))`
-/

namespace A102005.P6744940792980616652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A191261 (n + 1)).toNat

end

end A102005.P6744940792980616652

/-! ## A102005.P3703668011234852619

`char[A191263(n+1)-1]+1`
-/

namespace A102005.P3703668011234852619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A102005.P3703668011234852619

/-! ## A102005.P5977114613661055840

`2-char[A284746(n+1)-1]`
-/

namespace A102005.P5977114613661055840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102005.P5977114613661055840

/-! ## A102005.P14517407870512998887

`char[A284682(n+1)+n]+1`
-/

namespace A102005.P14517407870512998887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A102005.P14517407870512998887

/-! ## A102005.P14495999307846919958

`A000005(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P14495999307846919958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000005 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P14495999307846919958

/-! ## A102005.P15256840887013914289

`A000041(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P15256840887013914289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000041 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P15256840887013914289

/-! ## A102005.P11548956717144960750

`A000108(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P11548956717144960750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000108 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P11548956717144960750

/-! ## A102005.P15212119466920747097

`A005117(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P15212119466920747097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005117 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P15212119466920747097

/-! ## A102005.P10529267075927625659

`A014963(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P10529267075927625659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014963 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P10529267075927625659

/-! ## A102005.P16541814836331313433

`A020639(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P16541814836331313433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P16541814836331313433

/-! ## A102005.P5358288457045144107

`A020910(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P5358288457045144107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020910 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P5358288457045144107

/-! ## A102005.P1386669996053079424

`A026284(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P1386669996053079424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026284 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P1386669996053079424

/-! ## A102005.P12611926388212807389

`A032798(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P12611926388212807389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A032798 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P12611926388212807389

/-! ## A102005.P9758239464244006771

`A043059(a(A191261(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A102005.P9758239464244006771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A043059 (a (A191261 (n + 1)).toNat).toNat

end

end A102005.P9758239464244006771

/-! ## A102005.P2170677095007200049

`A105778(and(Δ[n²], A191261(n+1)))`
-/

namespace A102005.P2170677095007200049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105778 (Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A191261 (n + 1))).toNat

end

end A102005.P2170677095007200049

/-! ## A102005.P17472810070327167454

`and(A005408(n)², A191261(n+1))+1`
-/

namespace A102005.P17472810070327167454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 n ^ 2) (A191261 (n + 1)) + 1

end

end A102005.P17472810070327167454

/-! ## A102005.P5828550369126727029

`Δ[A191262(3*n+1)]-4`
-/

namespace A102005.P5828550369126727029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191262 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A102005.P5828550369126727029

/-! ## A102005.P116719943869470778

`and(A000337(n), A191261(n+1))+1`
-/

namespace A102005.P116719943869470778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A191261 (n + 1)) + 1

end

end A102005.P116719943869470778

/-!
# A102006: Indices of primes in sequence defined by A(0) = 13, A(n) = 10*A(n-1) - 27 for n > 0.

The programs for A102006, there is no canonical definition to state claims against.
-/

/-! ## A102006.P3928270221006311641

`A049054(n+1)-1`
-/

namespace A102006.P3928270221006311641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049054 (n + 1) - 1

end

end A102006.P3928270221006311641

/-! ## A102006.P7467289783477776239

`record[Δ[A049054(A152271(n))]]`
-/

namespace A102006.P7467289783477776239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049054 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102006.P7467289783477776239

/-! ## A102006.P10203413589238846713

`record[A049054(A328764(n))-1]`
-/

namespace A102006.P10203413589238846713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049054 (A328764 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102006.P10203413589238846713

/-! ## A102006.P3777794036078217732

`abs(1-A049054(A008619(2*n)))`
-/

namespace A102006.P3777794036078217732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A049054 (A008619 (2 * n)).toNat|

end

end A102006.P3777794036078217732

/-! ## A102006.P6798121869791084066

`A057428(n+1)+A049054(n+1)`
-/

namespace A102006.P6798121869791084066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A049054 (n + 1)

end

end A102006.P6798121869791084066

/-!
# A102007: Indices of primes in sequence defined by A(0) = 17, A(n) = 10*A(n-1) - 63 for n > 0.

The programs for A102007, there is no canonical definition to state claims against.
-/

/-! ## A102007.P16306879041910581475

`A088274(n+1)-1`
-/

namespace A102007.P16306879041910581475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088274 (n + 1) - 1

end

end A102007.P16306879041910581475

/-! ## A102007.P9966138091771753006

`record[A088274(A274640(n))-1]`
-/

namespace A102007.P9966138091771753006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088274 (A274640 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102007.P9966138091771753006

/-! ## A102007.P15419802832478794591

`A134824(n+2)+A088274(n+1)`
-/

namespace A102007.P15419802832478794591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A088274 (n + 1)

end

end A102007.P15419802832478794591

/-! ## A102007.P1771588879237842208

`A153881(n+2)+A088274(n+1)`
-/

namespace A102007.P1771588879237842208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A088274 (n + 1)

end

end A102007.P1771588879237842208

/-! ## A102007.P10178874505499017806

`abs(A088274(n+1)+A057428(n+1))`
-/

namespace A102007.P10178874505499017806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A088274 (n + 1) + A057428 (n + 1)|

end

end A102007.P10178874505499017806

/-!
# A102008: Indices of primes in sequence defined by A(0) = 19, A(n) = 10*A(n-1) - 81 for n > 0.

The programs for A102008, there is no canonical definition to state claims against.
-/

/-! ## A102008.P13619827437502630376

`A088275(n+1)-1`
-/

namespace A102008.P13619827437502630376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088275 (n + 1) - 1

end

end A102008.P13619827437502630376

/-! ## A102008.P15897758300292991067

`record[Δ[A088275(A158416(n))]]`
-/

namespace A102008.P15897758300292991067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088275 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102008.P15897758300292991067

/-! ## A102008.P18198260776502552034

`A134824(n+2)+A088275(n+1)`
-/

namespace A102008.P18198260776502552034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A088275 (n + 1)

end

end A102008.P18198260776502552034

/-! ## A102008.P13495115586243346038

`A153881(n+2)+A088275(n+1)`
-/

namespace A102008.P13495115586243346038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A088275 (n + 1)

end

end A102008.P13495115586243346038

/-! ## A102008.P6305555950159739145

`A260196(n+2)+A088275(n+1)`
-/

namespace A102008.P6305555950159739145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A088275 (n + 1)

end

end A102008.P6305555950159739145

/-!
# A102009: Indices of primes in sequence defined by A(0) = 13, A(n) = 10*A(n-1) - 7 for n > 0.

The programs for A102009, there is no canonical definition to state claims against.
-/

/-! ## A102009.P9440550236840859123

`A102929(n+2)-1`
-/

namespace A102009.P9440550236840859123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102929 (n + 2) - 1

end

end A102009.P9440550236840859123

/-! ## A102009.P16485288158261258424

`∑[Δ[A102929(n+1)]%(5^n)]`
-/

namespace A102009.P16485288158261258424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102929 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (5 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102009.P16485288158261258424

/-! ## A102009.P8006571221131989579

`∑[Δ[A102929(n+1)]*A324113(2*n+3)]`
-/

namespace A102009.P8006571221131989579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102929 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A324113 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102009.P8006571221131989579

/-! ## A102009.P787072098353434320

`A260196(A000079(n+1))+A102929(n+2)`
-/

namespace A102009.P787072098353434320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A000079 (n + 1)).toNat + A102929 (n + 2)

end

end A102009.P787072098353434320

/-! ## A102009.P13822358577838972067

`A260196(A000096(n+1))+A102929(n+2)`
-/

namespace A102009.P13822358577838972067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A000096 (n + 1)).toNat + A102929 (n + 2)

end

end A102009.P13822358577838972067

/-!
# A102010: Indices of primes in sequence defined by A(0) = 17, A(n) = 10*A(n-1) - 43 for n > 0.

The programs for A102010, there is no canonical definition to state claims against.
-/

/-! ## A102010.P9822986043028806467

`A102930(n+1)-1`
-/

namespace A102010.P9822986043028806467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102930 (n + 1) - 1

end

end A102010.P9822986043028806467

/-! ## A102010.P8695068969066503901

`abs(1-A102930(Δ[n²]-n))`
-/

namespace A102010.P8695068969066503901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A102930 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A102010.P8695068969066503901

/-! ## A102010.P17852573828547971957

`record[Δ[A102930(A152271(n))]]`
-/

namespace A102010.P17852573828547971957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102930 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102010.P17852573828547971957

/-! ## A102010.P3193597713153419922

`record[Δ[A102930(A158416(n))]]`
-/

namespace A102010.P3193597713153419922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102930 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102010.P3193597713153419922

/-! ## A102010.P5515809369974695004

`A153881(n+2)+A102930(n+1)`
-/

namespace A102010.P5515809369974695004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A102930 (n + 1)

end

end A102010.P5515809369974695004

/-!
# A102011: Indices of primes in sequence defined by A(0) = 19, A(n) = 10*A(n-1) - 61 for n > 0.

The programs for A102011, there is no canonical definition to state claims against.
-/

/-! ## A102011.P10338488810630704016

`A102931(n+1)-1`
-/

namespace A102011.P10338488810630704016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102931 (n + 1) - 1

end

end A102011.P10338488810630704016

/-! ## A102011.P14024474217066891572

`record[Δ[A102931(A152271(n))]]`
-/

namespace A102011.P14024474217066891572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102931 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102011.P14024474217066891572

/-! ## A102011.P1600810318683839066

`record[Δ[A102931(A158416(n))]]`
-/

namespace A102011.P1600810318683839066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102931 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102011.P1600810318683839066

/-! ## A102011.P556184492243908430

`record[Δ[A102931(A193592(n))]]`
-/

namespace A102011.P556184492243908430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102931 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102011.P556184492243908430

/-! ## A102011.P4207369270308475120

`record[Δ[A102931(A210959(n+1))]]`
-/

namespace A102011.P4207369270308475120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102931 (A210959 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102011.P4207369270308475120

/-!
# A102012: Triangle formed by right half of A101842, read by rows.

The programs for A102012, there is no canonical definition to state claims against.
-/

/-! ## A102012.P6285787167864126705

`A101842(C(comp[∑[n]]-n, 2)+n+1)`
-/

namespace A102012.P6285787167864126705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n + 1)

end

end A102012.P6285787167864126705

/-! ## A102012.P9300334631185027094

`A101842(A004202(n+1))`
-/

namespace A102012.P9300334631185027094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (A004202 (n + 1)).toNat

end

end A102012.P9300334631185027094

/-! ## A102012.P17273934289295301254

`A101842(A064801(n+1)+1)`
-/

namespace A102012.P17273934289295301254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (A064801 (n + 1) + 1).toNat

end

end A102012.P17273934289295301254

/-! ## A102012.P16276895875928714928

`A101842(A057944(n)+comp[∑[n]])`
-/

namespace A102012.P16276895875928714928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (A057944 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A102012.P16276895875928714928

/-! ## A102012.P11384915638478116961

`A101842(∑[char[∑[n]]]²-A002262(n))`
-/

namespace A102012.P11384915638478116961
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A002262 n).toNat

end

end A102012.P11384915638478116961

/-!
# A102013: Indices of primes in sequence defined by A(0) = 17, A(n) = 10*A(n-1) - 33 for n > 0.

The programs for A102013, there is no canonical definition to state claims against.
-/

/-! ## A102013.P3265260889666282513

`A102932(n+2)-1`
-/

namespace A102013.P3265260889666282513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102932 (n + 2) - 1

end

end A102013.P3265260889666282513

/-! ## A102013.P9120221722672408091

`∑[Δ[A102932(n+1)]*A178334(n)]`
-/

namespace A102013.P9120221722672408091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102013.P9120221722672408091

/-! ## A102013.P14401583242940273865

`∑[Δ[A102932(n+1)]%A001317(n)]`
-/

namespace A102013.P14401583242940273865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A001317 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102013.P14401583242940273865

/-! ## A102013.P1593459166610748577

`A112467(∑[n+1])+A102932(n+2)`
-/

namespace A102013.P1593459166610748577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (∑ j ∈ Finset.range (n + 1), f1 j) + A102932 (n + 2)

end

end A102013.P1593459166610748577

/-! ## A102013.P6369634735204745932

`A118830(2*n+1)+A102932(n+2)`
-/

namespace A102013.P6369634735204745932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A102932 (n + 2)

end

end A102013.P6369634735204745932

/-!
# A102014: Indices of primes in sequence defined by A(0) = 19, A(n) = 10*A(n-1) - 51 for n > 0.

The programs for A102014, there is no canonical definition to state claims against.
-/

/-! ## A102014.P16039321399153660707

`A102933(n+1)-1`
-/

namespace A102014.P16039321399153660707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102933 (n + 1) - 1

end

end A102014.P16039321399153660707

/-! ## A102014.P11698989311510297888

`record[Δ[A102933(A158416(n))]]`
-/

namespace A102014.P11698989311510297888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102933 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102014.P11698989311510297888

/-! ## A102014.P18022874832426928201

`xor(-A102933(n+1), A033999(2*n+1))`
-/

namespace A102014.P18022874832426928201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A102933 (n + 1)) (A033999 (2 * n + 1))

end

end A102014.P18022874832426928201

/-! ## A102014.P8839296346861166884

`A163810(A005897(n))+A102933(n+1)`
-/

namespace A102014.P8839296346861166884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A005897 n).toNat + A102933 (n + 1)

end

end A102014.P8839296346861166884

/-! ## A102014.P1085129026582777387

`A165900(A178334(n))+A102933(n+1)`
-/

namespace A102014.P1085129026582777387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A178334 n).toNat + A102933 (n + 1)

end

end A102014.P1085129026582777387

/-!
# A102016: Indices of primes in sequence defined by A(0) = 17, A(n) = 10*A(n-1) - 23 for n > 0.

The programs for A102016, there is no canonical definition to state claims against.
-/

/-! ## A102016.P6963910974328904179

`A102934(n+1)-1`
-/

namespace A102016.P6963910974328904179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102934 (n + 1) - 1

end

end A102016.P6963910974328904179

/-! ## A102016.P15225616512841766934

`record[Δ[A102934(A152271(n))]]`
-/

namespace A102016.P15225616512841766934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102934 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102016.P15225616512841766934

/-! ## A102016.P2629803085463950271

`record[Δ[A102934(A158416(n))]]`
-/

namespace A102016.P2629803085463950271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102934 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102016.P2629803085463950271

/-! ## A102016.P11103355658677648593

`record[Δ[A102934(A193739(n))]]`
-/

namespace A102016.P11103355658677648593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102934 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102016.P11103355658677648593

/-! ## A102016.P13569018078474292917

`A122434(3*(n+1))+A102934(n+1)`
-/

namespace A102016.P13569018078474292917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 (3 * (n + 1)) + A102934 (n + 1)

end

end A102016.P13569018078474292917

/-!
# A102017: Indices of primes in sequence defined by A(0) = 19, A(n) = 10*A(n-1) - 41 for n > 0.

The programs for A102017, there is no canonical definition to state claims against.
-/

/-! ## A102017.P4985801746429587613

`A102935(n+1)-1`
-/

namespace A102017.P4985801746429587613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102935 (n + 1) - 1

end

end A102017.P4985801746429587613

/-! ## A102017.P4058829346243838444

`record[Δ[A102935(A152271(n))]]`
-/

namespace A102017.P4058829346243838444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102935 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102017.P4058829346243838444

/-! ## A102017.P18062643947022977902

`record[Δ[A102935(A158416(n))]]`
-/

namespace A102017.P18062643947022977902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102935 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102017.P18062643947022977902

/-! ## A102017.P2691025134247295838

`A164660(2*(n+1))+A102935(n+1)`
-/

namespace A102017.P2691025134247295838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 (2 * (n + 1)) + A102935 (n + 1)

end

end A102017.P2691025134247295838

/-! ## A102017.P5342022500495972398

`A001489(n+1)+A102935(n+1)+n`
-/

namespace A102017.P5342022500495972398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A102935 (n + 1) + (n : ℤ))

end

end A102017.P5342022500495972398

/-!
# A102019: Indices of primes in the sequence defined by A(0) = 13, A(n) = 10*A(n-1) + 23 for n > 0.

The programs for A102019, there is no canonical definition to state claims against.
-/

/-! ## A102019.P8646531687399902973

`A102936(n+1)-1`
-/

namespace A102019.P8646531687399902973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102936 (n + 1) - 1

end

end A102019.P8646531687399902973

/-! ## A102019.P4030006566556503482

`record[Δ[A102936(A051340(n))]]`
-/

namespace A102019.P4030006566556503482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102936 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102019.P4030006566556503482

/-! ## A102019.P9038932028117399148

`record[Δ[A102936(A116188(n))]]`
-/

namespace A102019.P9038932028117399148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102936 (A116188 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102019.P9038932028117399148

/-! ## A102019.P15375346978765159930

`record[Δ[A102936(A152271(n))]]`
-/

namespace A102019.P15375346978765159930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102936 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102019.P15375346978765159930

/-!
# A102020: Indices of primes in sequence defined by A(0) = 17, A(n) = 10*A(n-1) - 13 for n > 0.

The programs for A102020, there is no canonical definition to state claims against.
-/

/-! ## A102020.P17945193225876844366

`A102937(n+2)-1`
-/

namespace A102020.P17945193225876844366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102937 (n + 2) - 1

end

end A102020.P17945193225876844366

/-! ## A102020.P7538383354776096715

`∑[Δ[A102937(n+1)]*A057427(n)]`
-/

namespace A102020.P7538383354776096715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102020.P7538383354776096715

/-! ## A102020.P8948481036556941061

`∑[Δ[A102937(n+1)]%A000533(n)]`
-/

namespace A102020.P8948481036556941061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102020.P8948481036556941061

/-! ## A102020.P6145763643774405538

`A103137(A103159(n+1))+A102937(n+2)`
-/

namespace A102020.P6145763643774405538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 (A103159 (n + 1)).toNat + A102937 (n + 2)

end

end A102020.P6145763643774405538

/-! ## A102020.P14857016315178806972

`A269953(A062513(n+1))+A102937(n+2)`
-/

namespace A102020.P14857016315178806972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269953 (A062513 (n + 1)).toNat + A102937 (n + 2)

end

end A102020.P14857016315178806972

/-!
# A102021: Indices of primes in sequence defined by A(0) = 19, A(n) = 10*A(n-1) - 31 for n > 0.

The programs for A102021, there is no canonical definition to state claims against.
-/

/-! ## A102021.P16117055756136331906

`A102938(n+1)-1`
-/

namespace A102021.P16117055756136331906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102938 (n + 1) - 1

end

end A102021.P16117055756136331906

/-! ## A102021.P10761061524030029834

`record[A102938(A133310(n))-1]`
-/

namespace A102021.P10761061524030029834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102938 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102021.P10761061524030029834

/-! ## A102021.P17645131017674142388

`A122434(3*(n+1))+A102938(n+1)`
-/

namespace A102021.P17645131017674142388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 (3 * (n + 1)) + A102938 (n + 1)

end

end A102021.P17645131017674142388

/-! ## A102021.P13434635231688754363

`A154990(3*n+2)+A102938(n+1)`
-/

namespace A102021.P13434635231688754363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (3 * n + 2) + A102938 (n + 1)

end

end A102021.P13434635231688754363

/-! ## A102021.P29147091311661719

`A244895(5*n+3)+A102938(n+1)`
-/

namespace A102021.P29147091311661719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (5 * n + 3) + A102938 (n + 1)

end

end A102021.P29147091311661719

/-!
# A102022: First differences of A109652.

The programs for A102022, the canonical program `A102022.P4203008564041804460` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102022 has offset 1).

The definition of A102022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102022.P4203008564041804460

`Δ[A109652(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102022

/-- `Δ[A109652(n+1)]` -/
def P4203008564041804460.Spec : Prop :=
  ∀ n, P4203008564041804460.a n = A102022 (n + 1)

theorem P4203008564041804460.correct : P4203008564041804460.Spec := by
  intro n
  simp only [A102022, Nat.add_sub_cancel]

end A102022

/-! ## A102022.P6672838193366732097

`A109652(n+2)-A109652(n+1)`
-/

namespace A102022.P6672838193366732097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109652 (n + 2) - A109652 (n + 1)

end

end A102022.P6672838193366732097

namespace A102022

/-- `A109652(n+2)-A109652(n+1)` -/
def P6672838193366732097.Spec : Prop :=
  ∀ n, P6672838193366732097.a n = A102022 (n + 1)

theorem P6672838193366732097.correct : P6672838193366732097.Spec := by
  intro n
  simp only [A102022, Nat.add_sub_cancel, A102022.P6672838193366732097.a, A102022.P4203008564041804460.f1, A102022.P4203008564041804460.a, SequenceMachineLib.memo_apply]

end A102022

/-! ## A102022.P17058923685264524177

`Δ[A000040(floor(ϕ*(n+1)))]`
-/

namespace A102022.P17058923685264524177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102022.P17058923685264524177

namespace A102022

/-- `Δ[A000040(floor(ϕ*(n+1)))]` -/
def P17058923685264524177.Spec : Prop :=
  ∀ n, P17058923685264524177.a n = A102022 (n + 1)

end A102022

/-! ## A102022.P696392749300119654

`Δ[A006093(floor(ϕ*(n+1)))]`
-/

namespace A102022.P696392749300119654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102022.P696392749300119654

namespace A102022

/-- `Δ[A006093(floor(ϕ*(n+1)))]` -/
def P696392749300119654.Spec : Prop :=
  ∀ n, P696392749300119654.a n = A102022 (n + 1)

end A102022

/-! ## A102022.P6297183818542156589

`Δ[A008864(floor(ϕ*(n+1)))]`
-/

namespace A102022.P6297183818542156589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102022.P6297183818542156589

namespace A102022

/-- `Δ[A008864(floor(ϕ*(n+1)))]` -/
def P6297183818542156589.Spec : Prop :=
  ∀ n, P6297183818542156589.a n = A102022 (n + 1)

end A102022

/-! ## A102022.P9756586238981517910

`Δ[A028815(floor(ϕ*(n+1)))]`
-/

namespace A102022.P9756586238981517910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102022.P9756586238981517910

namespace A102022

/-- `Δ[A028815(floor(ϕ*(n+1)))]` -/
def P9756586238981517910.Spec : Prop :=
  ∀ n, P9756586238981517910.a n = A102022 (n + 1)

end A102022

/-! ## A102022.P10806476231044912284

`Δ[A040976(floor(ϕ*(n+1)))]`
-/

namespace A102022.P10806476231044912284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102022.P10806476231044912284

namespace A102022

/-- `Δ[A040976(floor(ϕ*(n+1)))]` -/
def P10806476231044912284.Spec : Prop :=
  ∀ n, P10806476231044912284.a n = A102022 (n + 1)

end A102022

/-! ## A102022.P6724025303756192620

`abs(Δ[A000040(ceil(ϕ*(n+1))-1)])`
-/

namespace A102022.P6724025303756192620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌈Real.goldenRatio * (n + 1 : ℝ)⌉ - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A102022.P6724025303756192620

namespace A102022

/-- `abs(Δ[A000040(ceil(ϕ*(n+1))-1)])` -/
def P6724025303756192620.Spec : Prop :=
  ∀ n, P6724025303756192620.a n = A102022 (n + 1)

end A102022

/-! ## A102022.P35093843173461402

`-Δ[-A000040(ceil((n+1)/ϕ+n))]`
-/

namespace A102022.P35093843173461402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000040 ⌈(n + 1 : ℝ) / Real.goldenRatio + (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A102022.P35093843173461402

namespace A102022

/-- `-Δ[-A000040(ceil((n+1)/ϕ+n))]` -/
def P35093843173461402.Spec : Prop :=
  ∀ n, P35093843173461402.a n = A102022 (n + 1)

end A102022

/-!
# A102023: Indices of primes in sequence defined by A(0) = 13, A(n) = 10*A(n-1) + 33 for n > 0.

The programs for A102023, there is no canonical definition to state claims against.
-/

/-! ## A102023.P14511813575350507386

`A102939(n+1)-1`
-/

namespace A102023.P14511813575350507386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102939 (n + 1) - 1

end

end A102023.P14511813575350507386

/-! ## A102023.P7635122894847408637

`record[Δ[A102939(A152271(n))]]`
-/

namespace A102023.P7635122894847408637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102939 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102023.P7635122894847408637

/-! ## A102023.P2326059659653332284

`abs(1-A102939(A008619(2*n)))`
-/

namespace A102023.P2326059659653332284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A102939 (A008619 (2 * n)).toNat|

end

end A102023.P2326059659653332284

/-! ## A102023.P11067835881726499567

`abs(A102939(n+1)+A057428(n+1))`
-/

namespace A102023.P11067835881726499567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102939 (n + 1) + A057428 (n + 1)|

end

end A102023.P11067835881726499567

/-! ## A102023.P16925796959482088065

`A217549(A007318(∑[n]))+A102939(n+1)`
-/

namespace A102023.P16925796959482088065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217549 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A102939 (n + 1)

end

end A102023.P16925796959482088065

/-!
# A102024: Indices of primes in sequence defined by A(0) = 17, A(n) = 10*A(n-1) - 3 for n > 0.

The programs for A102024, there is no canonical definition to state claims against.
-/

/-! ## A102024.P8116532475865519090

`A102940(n+2)-1`
-/

namespace A102024.P8116532475865519090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102940 (n + 2) - 1

end

end A102024.P8116532475865519090

/-! ## A102024.P6344643925527636624

`∑[Δ[A102940(n+1)]%∑[n+1]²]`
-/

namespace A102024.P6344643925527636624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102940 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102024.P6344643925527636624

/-! ## A102024.P15934687372575711855

`∑[Δ[A102940(n+1)]*A057427(n)]`
-/

namespace A102024.P15934687372575711855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102024.P15934687372575711855

/-! ## A102024.P17666176367600095976

`A076850(n+2)-2`
-/

namespace A102024.P17666176367600095976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076850 (n + 2) - 2

end

end A102024.P17666176367600095976

/-! ## A102024.P13235550099690861226

`A023444(A076850(n+2))`
-/

namespace A102024.P13235550099690861226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A076850 (n + 2)).toNat

end

end A102024.P13235550099690861226

/-!
# A102025: Indices of primes in sequence defined by A(0) = 19, A(n) = 10*A(n-1) - 21 for n > 0.

The programs for A102025, there is no canonical definition to state claims against.
-/

/-! ## A102025.P3694142909211454598

`A102941(n+1)-1`
-/

namespace A102025.P3694142909211454598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102941 (n + 1) - 1

end

end A102025.P3694142909211454598

/-! ## A102025.P4232658698342870805

`record[Δ[A102941(A152271(n))]]`
-/

namespace A102025.P4232658698342870805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102941 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102025.P4232658698342870805

/-! ## A102025.P4493186750547184394

`record[Δ[A102941(A158416(n))]]`
-/

namespace A102025.P4493186750547184394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102941 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102025.P4493186750547184394

/-! ## A102025.P15324270866394668793

`A153881(n+2)+A102941(n+1)`
-/

namespace A102025.P15324270866394668793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A102941 (n + 1)

end

end A102025.P15324270866394668793

/-! ## A102025.P14727932545105176095

`abs(A102941(n+1)+A057428(2*(n+1)))`
-/

namespace A102025.P14727932545105176095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102941 (n + 1) + A057428 (2 * (n + 1))|

end

end A102025.P14727932545105176095

/-!
# A102026: Number of n-bit strings that contain no more than 4 zeros and no more than 2 leading and 2 trailing zeros.

The programs for A102026, the canonical program `A102026.P8993672898975337737` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102026 has offset 1).

The definition of A102026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102026.P8993672898975337737

`A218199(n+1)+C(n, n²)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102026

/-- `A218199(n+1)+C(n, n²)` -/
def P8993672898975337737.Spec : Prop :=
  ∀ n, P8993672898975337737.a n = A102026 (n + 1)

theorem P8993672898975337737.correct : P8993672898975337737.Spec := by
  intro n
  simp only [A102026, Nat.add_sub_cancel]

end A102026

/-! ## A102026.P15929119335792458403

`A218199(n+1)+char[A152163(n)]`
-/

namespace A102026.P15929119335792458403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102026.P15929119335792458403

namespace A102026

/-- `A218199(n+1)+char[A152163(n)]` -/
def P15929119335792458403.Spec : Prop :=
  ∀ n, P15929119335792458403.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P8201960541733090127

`A218199(n+1)+A019590(n+1)`
-/

namespace A102026.P8201960541733090127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + A019590 (n + 1)

end

end A102026.P8201960541733090127

namespace A102026

/-- `A218199(n+1)+A019590(n+1)` -/
def P8201960541733090127.Spec : Prop :=
  ∀ n, P8201960541733090127.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P14403928741221617499

`A329670(3*n)+A218199(n+1)`
-/

namespace A102026.P14403928741221617499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329670 (3 * n) + A218199 (n + 1)

end

end A102026.P14403928741221617499

namespace A102026

/-- `A329670(3*n)+A218199(n+1)` -/
def P14403928741221617499.Spec : Prop :=
  ∀ n, P14403928741221617499.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P3519520313008049424

`A218199(n+1)+char[2-A001399(n)]`
-/

namespace A102026.P3519520313008049424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001399 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102026.P3519520313008049424

namespace A102026

/-- `A218199(n+1)+char[2-A001399(n)]` -/
def P3519520313008049424.Spec : Prop :=
  ∀ n, P3519520313008049424.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P4241184274000060628

`A218199(n+1)+A004396(C(2, n+1))`
-/

namespace A102026.P4241184274000060628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + A004396 (Nat.choose 2 (n + 1))

end

end A102026.P4241184274000060628

namespace A102026

/-- `A218199(n+1)+A004396(C(2, n+1))` -/
def P4241184274000060628.Spec : Prop :=
  ∀ n, P4241184274000060628.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P13575732486449585632

`A218199(n+1)+A048766(C(2, n+1))`
-/

namespace A102026.P13575732486449585632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + A048766 (Nat.choose 2 (n + 1))

end

end A102026.P13575732486449585632

namespace A102026

/-- `A218199(n+1)+A048766(C(2, n+1))` -/
def P13575732486449585632.Spec : Prop :=
  ∀ n, P13575732486449585632.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P2908557139454607182

`A218199(n+1)+char[1-A284827(n+1)]`
-/

namespace A102026.P2908557139454607182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284827 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102026.P2908557139454607182

namespace A102026

/-- `A218199(n+1)+char[1-A284827(n+1)]` -/
def P2908557139454607182.Spec : Prop :=
  ∀ n, P2908557139454607182.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P16946198500953693530

`A218199(n+1)+val(A243441(n+1), n+2)`
-/

namespace A102026.P16946198500953693530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + (SequenceMachineLib.valuation (A243441 (n + 1)).toNat (n + 2) : ℤ)

end

end A102026.P16946198500953693530

namespace A102026

/-- `A218199(n+1)+val(A243441(n+1), n+2)` -/
def P16946198500953693530.Spec : Prop :=
  ∀ n, P16946198500953693530.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P16454426092995060860

`A218199(n+1)+A000007(A162777(n))`
-/

namespace A102026.P16454426092995060860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + A000007 (A162777 n).toNat

end

end A102026.P16454426092995060860

namespace A102026

/-- `A218199(n+1)+A000007(A162777(n))` -/
def P16454426092995060860.Spec : Prop :=
  ∀ n, P16454426092995060860.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P16558094275259092106

`A218199(n+1)+A000007(A175126(n))`
-/

namespace A102026.P16558094275259092106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + A000007 (A175126 n).toNat

end

end A102026.P16558094275259092106

namespace A102026

/-- `A218199(n+1)+A000007(A175126(n))` -/
def P16558094275259092106.Spec : Prop :=
  ∀ n, P16558094275259092106.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P4196281568277829911

`A218199(n+1)+A000035(A000010(n+1))`
-/

namespace A102026.P4196281568277829911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + A000035 (A000010 (n + 1)).toNat

end

end A102026.P4196281568277829911

namespace A102026

/-- `A218199(n+1)+A000035(A000010(n+1))` -/
def P4196281568277829911.Spec : Prop :=
  ∀ n, P4196281568277829911.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P1444595344964644765

`A019590(n+1)+A000322(n+1)+∑[2*A135056(n)]`
-/

namespace A102026.P1444595344964644765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (A000322 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102026.P1444595344964644765

namespace A102026

/-- `A019590(n+1)+A000322(n+1)+∑[2*A135056(n)]` -/
def P1444595344964644765.Spec : Prop :=
  ∀ n, P1444595344964644765.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P11780843470063558498

`A019590(n+1)+A001591(n+2)+A001591(n+6)-A001591(n+4)`
-/

namespace A102026.P11780843470063558498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (A001591 (n + 2) + (A001591 (n + 6) - A001591 (n + 4)))

end

end A102026.P11780843470063558498

namespace A102026

/-- `A019590(n+1)+A001591(n+2)+A001591(n+6)-A001591(n+4)` -/
def P11780843470063558498.Spec : Prop :=
  ∀ n, P11780843470063558498.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P7750711152656397705

`A019590(n+1)+A000322(n+8)%A001591(n+9)`
-/

namespace A102026.P7750711152656397705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + Int.tmod (A000322 (n + 8)) (A001591 (n + 9))

end

end A102026.P7750711152656397705

namespace A102026

/-- `A019590(n+1)+A000322(n+8)%A001591(n+9)` -/
def P7750711152656397705.Spec : Prop :=
  ∀ n, P7750711152656397705.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P1629208465667717326

`A218199(n+1)+A000007(A266530(n+1))`
-/

namespace A102026.P1629208465667717326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + A000007 (A266530 (n + 1)).toNat

end

end A102026.P1629208465667717326

namespace A102026

/-- `A218199(n+1)+A000007(A266530(n+1))` -/
def P1629208465667717326.Spec : Prop :=
  ∀ n, P1629208465667717326.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P11496746164082935976

`A218199(n+1)+A010816(A011861(2*n+1))`
-/

namespace A102026.P11496746164082935976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + A010816 (A011861 (2 * n + 1)).toNat

end

end A102026.P11496746164082935976

namespace A102026

/-- `A218199(n+1)+A010816(A011861(2*n+1))` -/
def P11496746164082935976.Spec : Prop :=
  ∀ n, P11496746164082935976.a n = A102026 (n + 1)

end A102026

/-! ## A102026.P11415747953643831744

`A218199(n+1)+A000007(n²-n)`
-/

namespace A102026.P11415747953643831744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + A000007 (n ^ 2 - n)

end

end A102026.P11415747953643831744

namespace A102026

/-- `A218199(n+1)+A000007(n²-n)` -/
def P11415747953643831744.Spec : Prop :=
  ∀ n, P11415747953643831744.a n = A102026 (n + 1)

end A102026

/-!
# A102027: Indices of primes in sequence defined by A(0) = 13, A(n) = 10*A(n-1) + 43 for n > 0.

The programs for A102027, there is no canonical definition to state claims against.
-/

/-! ## A102027.P8850759856213554456

`A102942(n+1)-1`
-/

namespace A102027.P8850759856213554456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102942 (n + 1) - 1

end

end A102027.P8850759856213554456

/-! ## A102027.P2241579412266912354

`record[Δ[A102942(A152271(n))]]`
-/

namespace A102027.P2241579412266912354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102942 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102027.P2241579412266912354

/-! ## A102027.P17515048142351263481

`record[A102942(A344180(n))-1]`
-/

namespace A102027.P17515048142351263481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102942 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102027.P17515048142351263481

/-! ## A102027.P11674448038816105019

`record[Δ[A102942(A322182(n+1))]]`
-/

namespace A102027.P11674448038816105019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102942 (A322182 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102027.P11674448038816105019

/-! ## A102027.P408538747666025880

`abs(1-A102942(A008619(2*n)))`
-/

namespace A102027.P408538747666025880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A102942 (A008619 (2 * n)).toNat|

end

end A102027.P408538747666025880

/-!
# A102028: Indices of primes in sequence defined by A(0) = 19, A(n) = 10*A(n-1) - 11 for n > 0.

The programs for A102028, there is no canonical definition to state claims against.
-/

/-! ## A102028.P3855554782207693312

`A102943(n+1)-1`
-/

namespace A102028.P3855554782207693312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102943 (n + 1) - 1

end

end A102028.P3855554782207693312

/-! ## A102028.P734427200056988404

`record[Δ[A102943(A152271(n))]]`
-/

namespace A102028.P734427200056988404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102943 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102028.P734427200056988404

/-! ## A102028.P3625626385458092073

`A286707(n+1)+A102943(n+1)`
-/

namespace A102028.P3625626385458092073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (n + 1) + A102943 (n + 1)

end

end A102028.P3625626385458092073

/-! ## A102028.P3511880375560283519

`record[A102943(A152271(n))]-A133687(n)`
-/

namespace A102028.P3511880375560283519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102943 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A133687 n

end

end A102028.P3511880375560283519

/-! ## A102028.P5306972689657458553

`A165900(A025459(n))+A102943(n+1)`
-/

namespace A102028.P5306972689657458553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A025459 n).toNat + A102943 (n + 1)

end

end A102028.P5306972689657458553

/-!
# A102029: Smallest semiprime with Hamming weight n (i.e., smallest semiprime with exactly n ones when written in binary), or -1 if no such number exists.

The programs for A102029, there is no canonical definition to state claims against.
-/

/-! ## A102029.P329647780106267669

`A089262(A064987(n+1))+A089226(n+1)`
-/

namespace A102029.P329647780106267669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089262 (A064987 (n + 1)).toNat + A089226 (n + 1)

end

end A102029.P329647780106267669

/-!
# A102030: Indices of primes in sequence defined by A(0) = 13, A(n) = 10*A(n-1) + 53 for n > 0.

The programs for A102030, there is no canonical definition to state claims against.
-/

/-! ## A102030.P3719464374885371220

`A102944(n+1)-1`
-/

namespace A102030.P3719464374885371220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102944 (n + 1) - 1

end

end A102030.P3719464374885371220

/-! ## A102030.P16161009063248847001

`record[Δ[A102944(A152271(n))]]`
-/

namespace A102030.P16161009063248847001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102944 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102030.P16161009063248847001

/-! ## A102030.P11111898009915072699

`record[Δ[A102944(A158416(n))]]`
-/

namespace A102030.P11111898009915072699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102944 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102030.P11111898009915072699

/-! ## A102030.P114852574040245403

`record[Δ[A102944(A260438(n+1))]]`
-/

namespace A102030.P114852574040245403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102944 (A260438 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102030.P114852574040245403

/-! ## A102030.P18264418729665921439

`abs(1-A102944(A008619(2*n)))`
-/

namespace A102030.P18264418729665921439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A102944 (A008619 (2 * n)).toNat|

end

end A102030.P18264418729665921439

/-!
# A102031: Indices of primes in sequence defined by A(0) = 19, A(n) = 10*A(n-1) - 1 for n > 0.

The programs for A102031, there is no canonical definition to state claims against.
-/

/-! ## A102031.P8710179644127581786

`A102945(n+1)-1`
-/

namespace A102031.P8710179644127581786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102945 (n + 1) - 1

end

end A102031.P8710179644127581786

/-! ## A102031.P15390518296428768523

`record[Δ[A102945(A051340(n))]]`
-/

namespace A102031.P15390518296428768523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102945 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102031.P15390518296428768523

/-! ## A102031.P1827909905734415623

`record[Δ[A102945(A152271(n))]]`
-/

namespace A102031.P1827909905734415623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102945 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102031.P1827909905734415623

/-! ## A102031.P17296843018614351411

`record[Δ[A102945(A200370(n+1))]]`
-/

namespace A102031.P17296843018614351411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102945 (A200370 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102031.P17296843018614351411

/-! ## A102031.P10092509627688294928

`A123183(A047072(n))+A102945(n+1)`
-/

namespace A102031.P10092509627688294928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123183 (A047072 n).toNat + A102945 (n + 1)

end

end A102031.P10092509627688294928

/-!
# A102032: a(n) is the smallest positive integer k such that, if kn is written in base 2, it requires exactly n ones.

The programs for A102032, there is no canonical definition to state claims against.
-/

/-! ## A102032.P6655522060916602688

`A143115(n+1)/(n+1)`
-/

namespace A102032.P6655522060916602688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143115 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A102032.P6655522060916602688

/-! ## A102032.P12330882530009065459

`A007913(A007913(n+1)*A143115(n+1))`
-/

namespace A102032.P12330882530009065459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) * A143115 (n + 1)).toNat

end

end A102032.P12330882530009065459

/-! ## A102032.P2635061046530866645

`A135941(A143115(n+1))`
-/

namespace A102032.P2635061046530866645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135941 (A143115 (n + 1)).toNat

end

end A102032.P2635061046530866645

/-! ## A102032.P10133258614383893360

`A007913((n+1)*A143115(n+1))`
-/

namespace A102032.P10133258614383893360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A143115 (n + 1)).toNat

end

end A102032.P10133258614383893360

/-!
# A102033: Indices of primes in sequence defined by A(0) = 13, A(n) = 10*A(n-1) + 63 for n > 0.

The programs for A102033, there is no canonical definition to state claims against.
-/

/-! ## A102033.P6569804196676054528

`A102946(n+1)-1`
-/

namespace A102033.P6569804196676054528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102946 (n + 1) - 1

end

end A102033.P6569804196676054528

/-!
# A102034: Indices of primes in sequence defined by A(0) = 17, A(n) = 10*A(n-1) + 27 for n > 0.

The programs for A102034, there is no canonical definition to state claims against.
-/

/-! ## A102034.P6245478685883870039

`A102947(n+1)-1`
-/

namespace A102034.P6245478685883870039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102947 (n + 1) - 1

end

end A102034.P6245478685883870039

/-! ## A102034.P12022683206144760297

`record[Δ[A102947(A152271(n))]]`
-/

namespace A102034.P12022683206144760297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102947 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102034.P12022683206144760297

/-! ## A102034.P9286849246790378917

`abs(1-A102947(A008619(2*n)))`
-/

namespace A102034.P9286849246790378917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A102947 (A008619 (2 * n)).toNat|

end

end A102034.P9286849246790378917

/-! ## A102034.P8253170901530597159

`abs(A102947(n+1)+A057428(n+1))`
-/

namespace A102034.P8253170901530597159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102947 (n + 1) + A057428 (n + 1)|

end

end A102034.P8253170901530597159

/-! ## A102034.P2173155474916382992

`A153881(3*(n+1))+A102947(n+1)`
-/

namespace A102034.P2173155474916382992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (3 * (n + 1)) + A102947 (n + 1)

end

end A102034.P2173155474916382992

/-!
# A102035: Carrie's triangle, read by rows, where the terms are generated by the rule: T(n,k) = T(n-1,k) + T(n-1,k-1) + T(n-2,k-1) + T(n-3,k-1) + T(n-3,k), with T(0,0)=1.

The programs for A102035, there is no canonical definition to state claims against.
-/

/-! ## A102035.P12431684174678689064

`A038207(n)-A257673(A077168(n))`
-/

namespace A102035.P12431684174678689064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A257673 (A077168 n).toNat

end

end A102035.P12431684174678689064

/-! ## A102035.P11879785701682083894

`A071797(A157284(n+1))`
-/

namespace A102035.P11879785701682083894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A157284 (n + 1)).toNat

end

end A102035.P11879785701682083894

/-!
# A102036: Triangle, read by rows, where the terms are generated by the rule: T(n,k) = T(n-1,k) + T(n-1,k-1) + T(n-2,k-1) + T(n-3,k-1), with T(0,0)=1.

The programs for A102036, there is no canonical definition to state claims against.
-/

/-! ## A102036.P15740336706635491955

`A290726(A029653(n)*A102413(n))`
-/

namespace A102036.P15740336706635491955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (A029653 n * A102413 n).toNat

end

end A102036.P15740336706635491955

/-! ## A102036.P9734742063509531052

`A206916(A004247(n)*A342133(n))`
-/

namespace A102036.P9734742063509531052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206916 (A004247 n * A342133 n).toNat

end

end A102036.P9734742063509531052

/-! ## A102036.P2271735122168232232

`A114172(A331436(n)+A001263(n+1))`
-/

namespace A102036.P2271735122168232232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114172 (A331436 n + A001263 (n + 1)).toNat

end

end A102036.P2271735122168232232

/-! ## A102036.P2405469678733786592

`A103141(n)-A025466(A116444(n+1))`
-/

namespace A102036.P2405469678733786592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103141 n - A025466 (A116444 (n + 1)).toNat

end

end A102036.P2405469678733786592

/-!
# A102037: Triangle of BitAnd(BitNot(n), k).

The programs for A102037, there is no canonical definition to state claims against.
-/

/-! ## A102037.P6641826099387782996

`and(n-C(∑[char[∑[n]]], 2), ∑[-char[∑[n]]])`
-/

namespace A102037.P6641826099387782996
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f5 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A102037.P6641826099387782996

/-! ## A102037.P3405955275836574231

`or(n-C(∑[char[∑[n]]], 2), ∑[char[∑[n+1]]])-∑[char[∑[n+1]]]`
-/

namespace A102037.P3405955275836574231
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f7 j : ℕ) : ℤ)

end

end A102037.P3405955275836574231

/-! ## A102037.P6552379798563754154

`n-C(∑[char[∑[n]]], 2)-and(n-C(∑[char[∑[n]]], 2), ∑[char[∑[n+1]]])`
-/

namespace A102037.P6552379798563754154
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - Int.land ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f7 j : ℕ) : ℤ)

end

end A102037.P6552379798563754154

/-! ## A102037.P17970981286359013920

`and(∑[-char[∑[n]]], A002262(n))`
-/

namespace A102037.P17970981286359013920
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A002262 n)

end

end A102037.P17970981286359013920

/-! ## A102037.P7053191612284115071

`and(∑[-char[∑[n]]], A080098(n))`
-/

namespace A102037.P7053191612284115071
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A080098 n)

end

end A102037.P7053191612284115071

/-! ## A102037.P11172341370250768495

`and(∑[-char[∑[n]]], A025668(n+1))`
-/

namespace A102037.P11172341370250768495
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A025668 (n + 1))

end

end A102037.P11172341370250768495

/-! ## A102037.P15101066213868595754

`and(∑[-char[∑[n]]], A025675(n+1))`
-/

namespace A102037.P15101066213868595754
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A025675 (n + 1))

end

end A102037.P15101066213868595754

/-! ## A102037.P11418558898900743079

`and(-round(sqrt(2*n+1)), A051933(n))`
-/

namespace A102037.P11418558898900743079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) (A051933 n)

end

end A102037.P11418558898900743079

/-!
# A102038: a(n+1) = n*a(n) + a(n-1), a(0)=1, a(1)=1.

The programs for A102038, the canonical program `A102038.P7212300181802275368` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102038 has offset 0).

The definition of A102038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102038.P7212300181802275368

`(n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102038

/-- `(n-1)*a(n-1)+a(n-2)` -/
def P7212300181802275368.Spec : Prop :=
  ∀ n, P7212300181802275368.a n = A102038 n

theorem P7212300181802275368.correct : P7212300181802275368.Spec := by
  intro n
  simp only [A102038]

end A102038

/-! ## A102038.P7225462110196946290

`A001040(n)+A001053(n)`
-/

namespace A102038.P7225462110196946290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001040 n + A001053 n

end

end A102038.P7225462110196946290

namespace A102038

/-- `A001040(n)+A001053(n)` -/
def P7225462110196946290.Spec : Prop :=
  ∀ n, P7225462110196946290.a n = A102038 n

end A102038

/-! ## A102038.P13113312613756552103

`∏[1/a(n-1)+n-1]` with `a(0)=1`
-/

namespace A102038.P13113312613756552103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  1 / f1 (n - 1) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102038.P13113312613756552103

namespace A102038

/-- `∏[1/a(n-1)+n-1]` -/
def P13113312613756552103.Spec : Prop :=
  ∀ n, P13113312613756552103.a n = (A102038 n : ℚ)

end A102038

/-! ## A102038.P16041669445043521978

`∏[a(n-1)^-1+n-1]` with `a(0)=1`
-/

namespace A102038.P16041669445043521978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) ^ (-1 : ℤ) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102038.P16041669445043521978

namespace A102038

/-- `∏[a(n-1)^-1+n-1]` -/
def P16041669445043521978.Spec : Prop :=
  ∀ n, P16041669445043521978.a n = (A102038 n : ℚ)

end A102038

/-! ## A102038.P10056298241289047173

`a(n-2)-(1-n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A102038.P10056298241289047173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (1 - (n : ℤ)) * a (n - 1)

end

end A102038.P10056298241289047173

namespace A102038

/-- `a(n-2)-(1-n)*a(n-1)` -/
def P10056298241289047173.Spec : Prop :=
  ∀ n, P10056298241289047173.a n = A102038 n

end A102038

/-!
# A102039: a(n) = a(n-1) + last digit of a(n-1), starting at 1.

The programs for A102039, the canonical program `A102039.P10552694161723811829` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102039 has offset 1).

The definition of A102039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102039.P10552694161723811829

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102039

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P10552694161723811829.Spec : Prop :=
  ∀ n, P10552694161723811829.a n = A102039 (n + 1)

theorem P10552694161723811829.correct : P10552694161723811829.Spec := by
  intro n
  simp only [A102039, Nat.add_sub_cancel]

end A102039

/-! ## A102039.P4124549162984410599

`a(n-4)+20` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`
-/

namespace A102039.P4124549162984410599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 16] fun n a =>
  a (n - 4) + 20

end

end A102039.P4124549162984410599

namespace A102039

/-- `a(n-4)+20` -/
def P4124549162984410599.Spec : Prop :=
  ∀ n, (P4124549162984410599.a n : ℤ) = A102039 (n + 1)

end A102039

/-! ## A102039.P4015965795860874299

`∑[10-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A102039.P4015965795860874299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  10 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102039.P4015965795860874299

namespace A102039

/-- `∑[10-a(n-2)]` -/
def P4015965795860874299.Spec : Prop :=
  ∀ n, P4015965795860874299.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P15864179399572067996

`ogf((1+2x^2+2x^3+5x^4)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A102039.P15864179399572067996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 2, 5] [1, -2, 2, -2, 1] n

end

end A102039.P15864179399572067996

namespace A102039

/-- `ogf((1+2x^2+2x^3+5x^4)/(1-2x+2x^2-2x^3+x^4))` -/
def P15864179399572067996.Spec : Prop :=
  ∀ n, P15864179399572067996.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P6305390308000217926

`A235699(n)+1`
-/

namespace A102039.P6305390308000217926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235699 n + 1

end

end A102039.P6305390308000217926

namespace A102039

/-- `A235699(n)+1` -/
def P6305390308000217926.Spec : Prop :=
  ∀ n, P6305390308000217926.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P14169984999961639829

`∑[A000689(abs(1-n))]-1`
-/

namespace A102039.P14169984999961639829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A102039.P14169984999961639829

namespace A102039

/-- `∑[A000689(abs(1-n))]-1` -/
def P14169984999961639829.Spec : Prop :=
  ∀ n, P14169984999961639829.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P10293294615189173804

`(∑[A095915(n+1)]+1)/2`
-/

namespace A102039.P10293294615189173804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095915 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A102039.P10293294615189173804

namespace A102039

/-- `(∑[A095915(n+1)]+1)/2` -/
def P10293294615189173804.Spec : Prop :=
  ∀ n, P10293294615189173804.a n = (A102039 (n + 1) : ℚ)

end A102039

/-! ## A102039.P12396821893326134418

`A000689(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A102039.P12396821893326134418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000689 (n - 1) + a (n - 1)

end

end A102039.P12396821893326134418

namespace A102039

/-- `A000689(n-1)+a(n-1)` -/
def P12396821893326134418.Spec : Prop :=
  ∀ n, P12396821893326134418.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P10166017982477121401

`A002081(n)-A000689(n)`
-/

namespace A102039.P10166017982477121401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n - A000689 n

end

end A102039.P10166017982477121401

namespace A102039

/-- `A002081(n)-A000689(n)` -/
def P10166017982477121401.Spec : Prop :=
  ∀ n, P10166017982477121401.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P10366653452292446799

`∪[A002081(n), A008416(n)]`
-/

namespace A102039.P10366653452292446799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102039.P10366653452292446799

namespace A102039

/-- `∪[A002081(n), A008416(n)]` -/
def P10366653452292446799.Spec : Prop :=
  ∀ n, (P10366653452292446799.a n : ℤ) = A102039 (n + 1)

end A102039

/-! ## A102039.P15445600603443157445

`∪[A002081(n), A010010(n)]`
-/

namespace A102039.P15445600603443157445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102039.P15445600603443157445

namespace A102039

/-- `∪[A002081(n), A010010(n)]` -/
def P15445600603443157445.Spec : Prop :=
  ∀ n, (P15445600603443157445.a n : ℤ) = A102039 (n + 1)

end A102039

/-! ## A102039.P15619656529993250793

`∪[A002081(n), A010022(n)]`
-/

namespace A102039.P15619656529993250793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102039.P15619656529993250793

namespace A102039

/-- `∪[A002081(n), A010022(n)]` -/
def P15619656529993250793.Spec : Prop :=
  ∀ n, (P15619656529993250793.a n : ℤ) = A102039 (n + 1)

end A102039

/-! ## A102039.P10720990595922122111

`∪[A002081(n), A010968(n)]`
-/

namespace A102039.P10720990595922122111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010968 (n + 15)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102039.P10720990595922122111

namespace A102039

/-- `∪[A002081(n), A010968(n)]` -/
def P10720990595922122111.Spec : Prop :=
  ∀ n, (P10720990595922122111.a n : ℤ) = A102039 (n + 1)

end A102039

/-! ## A102039.P10925554356760534644

`∪[A002081(n), A016996(n)]`
-/

namespace A102039.P10925554356760534644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016996 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102039.P10925554356760534644

namespace A102039

/-- `∪[A002081(n), A016996(n)]` -/
def P10925554356760534644.Spec : Prop :=
  ∀ n, (P10925554356760534644.a n : ℤ) = A102039 (n + 1)

end A102039

/-! ## A102039.P1199776342182211674

`∪[A002081(n), A017177(n)]`
-/

namespace A102039.P1199776342182211674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102039.P1199776342182211674

namespace A102039

/-- `∪[A002081(n), A017177(n)]` -/
def P1199776342182211674.Spec : Prop :=
  ∀ n, (P1199776342182211674.a n : ℤ) = A102039 (n + 1)

end A102039

/-! ## A102039.P15262352941135521316

`∑[A267317(n)+1]-A267317(n)`
-/

namespace A102039.P15262352941135521316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267317 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A267317 n

end

end A102039.P15262352941135521316

namespace A102039

/-- `∑[A267317(n)+1]-A267317(n)` -/
def P15262352941135521316.Spec : Prop :=
  ∀ n, P15262352941135521316.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P15891800006004059724

`∑[2*A091085(n)]-A091085(n)`
-/

namespace A102039.P15891800006004059724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091085 n

end

end A102039.P15891800006004059724

namespace A102039

/-- `∑[2*A091085(n)]-A091085(n)` -/
def P15891800006004059724.Spec : Prop :=
  ∀ n, P15891800006004059724.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P18330367982384286379

`A017377(n)+1-A102042(n+1)`
-/

namespace A102039.P18330367982384286379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + (1 - A102042 (n + 1))

end

end A102039.P18330367982384286379

namespace A102039

/-- `A017377(n)+1-A102042(n+1)` -/
def P18330367982384286379.Spec : Prop :=
  ∀ n, P18330367982384286379.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P9525387824071278417

`A235700(n+1)+A235700(n+1)-A000689(n)`
-/

namespace A102039.P9525387824071278417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235700 (n + 1) + (A235700 (n + 1) - A000689 n)

end

end A102039.P9525387824071278417

namespace A102039

/-- `A235700(n+1)+A235700(n+1)-A000689(n)` -/
def P9525387824071278417.Spec : Prop :=
  ∀ n, P9525387824071278417.a n = A102039 (n + 1)

end A102039

/-! ## A102039.P8877030558220116693

`A002081(n)-Δ[A235699(n)]`
-/

namespace A102039.P8877030558220116693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n - (f1 (n + 1) - f1 n)

end

end A102039.P8877030558220116693

namespace A102039

/-- `A002081(n)-Δ[A235699(n)]` -/
def P8877030558220116693.Spec : Prop :=
  ∀ n, P8877030558220116693.a n = A102039 (n + 1)

end A102039

/-!
# A102040: a(n) = a(n-1) + last digit of a(n-1), starting at 3.

The programs for A102040, the canonical program `A102040.P15347826985675376388` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102040 has offset 1).

The definition of A102040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102040.P15347826985675376388

`a(n-4)+20` with `a(0)=3, a(1)=6, a(2)=12, a(3)=14, a(4)=18`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102040

/-- `a(n-4)+20` -/
def P15347826985675376388.Spec : Prop :=
  ∀ n, (P15347826985675376388.a n : ℤ) = A102040 (n + 1)

theorem P15347826985675376388.correct : P15347826985675376388.Spec := by
  intro n
  simp only [A102040, Nat.add_sub_cancel]

end A102040

/-! ## A102040.P12958688733359884171

`∑[10-a(n-2)]` with `a(0)=3, a(1)=3, a(2)=6, a(3)=2`
-/

namespace A102040.P12958688733359884171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 6, 2] fun n f1 =>
  10 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102040.P12958688733359884171

namespace A102040

/-- `∑[10-a(n-2)]` -/
def P12958688733359884171.Spec : Prop :=
  ∀ n, P12958688733359884171.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P15025494991447887663

`A002081(n+1)-A000689(n)`
-/

namespace A102040.P15025494991447887663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 (n + 1) - A000689 n

end

end A102040.P15025494991447887663

namespace A102040

/-- `A002081(n+1)-A000689(n)` -/
def P15025494991447887663.Spec : Prop :=
  ∀ n, P15025494991447887663.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P299012577020412462

`A063226(n+1)-A091084(n)`
-/

namespace A102040.P299012577020412462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) - A091084 n

end

end A102040.P299012577020412462

namespace A102040

/-- `A063226(n+1)-A091084(n)` -/
def P299012577020412462.Spec : Prop :=
  ∀ n, P299012577020412462.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P5165062321938592636

`A090773(n+1)-A091085(n)`
-/

namespace A102040.P5165062321938592636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1) - A091085 n

end

end A102040.P5165062321938592636

namespace A102040

/-- `A090773(n+1)-A091085(n)` -/
def P5165062321938592636.Spec : Prop :=
  ∀ n, P5165062321938592636.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P4141594692544999342

`A102039(n+1)+Δ[A002081(n)]`
-/

namespace A102040.P4141594692544999342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 1) + (f1 (n + 1) - f1 n)

end

end A102040.P4141594692544999342

namespace A102040

/-- `A102039(n+1)+Δ[A002081(n)]` -/
def P4141594692544999342.Spec : Prop :=
  ∀ n, P4141594692544999342.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P8300775449357578587

`Δ[A002081(n)]+A235699(n)+1`
-/

namespace A102040.P8300775449357578587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A235699 n + 1)

end

end A102040.P8300775449357578587

namespace A102040

/-- `Δ[A002081(n)]+A235699(n)+1` -/
def P8300775449357578587.Spec : Prop :=
  ∀ n, P8300775449357578587.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P4683478811195394017

`A102039(n+1)+2*A070402(n)`
-/

namespace A102040.P4683478811195394017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 1) + 2 * A070402 n

end

end A102040.P4683478811195394017

namespace A102040

/-- `A102039(n+1)+2*A070402(n)` -/
def P4683478811195394017.Spec : Prop :=
  ∀ n, P4683478811195394017.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P9198127511299317774

`A002081(n+1)+A102039(n+1)-A002081(n)`
-/

namespace A102040.P9198127511299317774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 (n + 1) + (A102039 (n + 1) - A002081 n)

end

end A102040.P9198127511299317774

namespace A102040

/-- `A002081(n+1)+A102039(n+1)-A002081(n)` -/
def P9198127511299317774.Spec : Prop :=
  ∀ n, P9198127511299317774.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P1712377918889014697

`A002081(n+2)-A040020(n)`
-/

namespace A102040.P1712377918889014697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 (n + 2) - A040020 n

end

end A102040.P1712377918889014697

namespace A102040

/-- `A002081(n+2)-A040020(n)` -/
def P1712377918889014697.Spec : Prop :=
  ∀ n, P1712377918889014697.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P1996805788583374407

`A102039(n+1)+A000689(n+1)`
-/

namespace A102040.P1996805788583374407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 1) + A000689 (n + 1)

end

end A102040.P1996805788583374407

namespace A102040

/-- `A102039(n+1)+A000689(n+1)` -/
def P1996805788583374407.Spec : Prop :=
  ∀ n, P1996805788583374407.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P8131419607327365204

`∑[A000689(n+1)]-A000689(n)+2`
-/

namespace A102040.P8131419607327365204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000689 n + 2

end

end A102040.P8131419607327365204

namespace A102040

/-- `∑[A000689(n+1)]-A000689(n)+2` -/
def P8131419607327365204.Spec : Prop :=
  ∀ n, P8131419607327365204.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P13508331460220981498

`A235700(n+2)+A235700(n+2)-A000689(n)`
-/

namespace A102040.P13508331460220981498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235700 (n + 2) + (A235700 (n + 2) - A000689 n)

end

end A102040.P13508331460220981498

namespace A102040

/-- `A235700(n+2)+A235700(n+2)-A000689(n)` -/
def P13508331460220981498.Spec : Prop :=
  ∀ n, P13508331460220981498.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P6652572241109312416

`A102039(n+1)+Δ[A102039(n+2)]`
-/

namespace A102040.P6652572241109312416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 1) + (f1 (n + 1) - f1 n)

end

end A102040.P6652572241109312416

namespace A102040

/-- `A102039(n+1)+Δ[A102039(n+2)]` -/
def P6652572241109312416.Spec : Prop :=
  ∀ n, P6652572241109312416.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P5649551139891638327

`2*A081596(a(n-1))` with `a(0)=3`
-/

namespace A102040.P5649551139891638327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * A081596 (a (n - 1)).toNat

end

end A102040.P5649551139891638327

namespace A102040

/-- `2*A081596(a(n-1))` -/
def P5649551139891638327.Spec : Prop :=
  ∀ n, P5649551139891638327.a n = A102040 (n + 1)

end A102040

/-! ## A102040.P2453885670209481744

`A169933(a(n-1)+5)` with `a(0)=3`
-/

namespace A102040.P2453885670209481744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A169933 (a (n - 1) + 5).toNat

end

end A102040.P2453885670209481744

namespace A102040

/-- `A169933(a(n-1)+5)` -/
def P2453885670209481744.Spec : Prop :=
  ∀ n, P2453885670209481744.a n = A102040 (n + 1)

end A102040

/-!
# A102041: a(n) = a(n-1) + last digit of a(n-1), starting at 7.

The programs for A102041, the canonical program `A102041.P14476143930387648050` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102041 has offset 1).

The definition of A102041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102041.P14476143930387648050

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=7, a(1)=14, a(2)=18, a(3)=26, a(4)=32`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102041

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P14476143930387648050.Spec : Prop :=
  ∀ n, P14476143930387648050.a n = A102041 (n + 1)

theorem P14476143930387648050.correct : P14476143930387648050.Spec := by
  intro n
  simp only [A102041, Nat.add_sub_cancel]

end A102041

/-! ## A102041.P12325504503669956349

`∑[10-a(n-2)]` with `a(0)=7, a(1)=7, a(2)=4, a(3)=8`
-/

namespace A102041.P12325504503669956349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 7, 4, 8] fun n f1 =>
  10 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102041.P12325504503669956349

namespace A102041

/-- `∑[10-a(n-2)]` -/
def P12325504503669956349.Spec : Prop :=
  ∀ n, P12325504503669956349.a n = A102041 (n + 1)

end A102041

/-! ## A102041.P15790826707480920454

`a(n-1)+a(n-1)%10` with `a(0)=7`
-/

namespace A102041.P15790826707480920454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + a (n - 1) % 10

end

end A102041.P15790826707480920454

namespace A102041

/-- `a(n-1)+a(n-1)%10` -/
def P15790826707480920454.Spec : Prop :=
  ∀ n, (P15790826707480920454.a n : ℤ) = A102041 (n + 1)

end A102041

/-! ## A102041.P1465264434653891499

`a(n-1)--a(n-1)%10` with `a(0)=7`
-/

namespace A102041.P1465264434653891499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - Int.tmod (-a (n - 1)) 10

end

end A102041.P1465264434653891499

namespace A102041

/-- `a(n-1)--a(n-1)%10` -/
def P1465264434653891499.Spec : Prop :=
  ∀ n, P1465264434653891499.a n = A102041 (n + 1)

end A102041

/-! ## A102041.P1514180195919725189

`10*(n+1)-A102040(n+1)`
-/

namespace A102041.P1514180195919725189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) - A102040 (n + 1)

end

end A102041.P1514180195919725189

namespace A102041

/-- `10*(n+1)-A102040(n+1)` -/
def P1514180195919725189.Spec : Prop :=
  ∀ n, P1514180195919725189.a n = A102041 (n + 1)

end A102041

/-! ## A102041.P16009569977733579656

`a(n-1)+and(15, A262222(a(n-1)+1))` with `a(0)=7`
-/

namespace A102041.P16009569977733579656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + Int.land 15 (A262222 (a (n - 1) + 1).toNat)

end

end A102041.P16009569977733579656

namespace A102041

/-- `a(n-1)+and(15, A262222(a(n-1)+1))` -/
def P16009569977733579656.Spec : Prop :=
  ∀ n, P16009569977733579656.a n = A102041 (n + 1)

end A102041

/-! ## A102041.P14078563465185318337

`A040020(n)+A002081(n)`
-/

namespace A102041.P14078563465185318337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n + A002081 n

end

end A102041.P14078563465185318337

namespace A102041

/-- `A040020(n)+A002081(n)` -/
def P14078563465185318337.Spec : Prop :=
  ∀ n, P14078563465185318337.a n = A102041 (n + 1)

end A102041

/-! ## A102041.P5393242688688151660

`A091084(n)+A063226(n+2)`
-/

namespace A102041.P5393242688688151660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091084 n + A063226 (n + 2)

end

end A102041.P5393242688688151660

namespace A102041

/-- `A091084(n)+A063226(n+2)` -/
def P5393242688688151660.Spec : Prop :=
  ∀ n, P5393242688688151660.a n = A102041 (n + 1)

end A102041

/-! ## A102041.P4358902600615538503

`A091085(n)+A090773(n+2)`
-/

namespace A102041.P4358902600615538503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091085 n + A090773 (n + 2)

end

end A102041.P4358902600615538503

namespace A102041

/-- `A091085(n)+A090773(n+2)` -/
def P4358902600615538503.Spec : Prop :=
  ∀ n, P4358902600615538503.a n = A102041 (n + 1)

end A102041

/-! ## A102041.P6859700429589005532

`A251984(9*a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A102041.P6859700429589005532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A251984 (9 * a (n - 1)).toNat + a (n - 1)

end

end A102041.P6859700429589005532

namespace A102041

/-- `A251984(9*a(n-1))+a(n-1)` -/
def P6859700429589005532.Spec : Prop :=
  ∀ n, P6859700429589005532.a n = A102041 (n + 1)

end A102041

/-!
# A102042: a(n) = a(n-1) + last digit of a(n-1), starting at 9.

The programs for A102042, the canonical program `A102042.P4018199868247505670` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102042 has offset 1).

The definition of A102042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102042.P4018199868247505670

`∑[10-a(n-2)]` with `a(0)=9, a(1)=9, a(2)=8, a(3)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102042

/-- `∑[10-a(n-2)]` -/
def P4018199868247505670.Spec : Prop :=
  ∀ n, P4018199868247505670.a n = A102042 (n + 1)

theorem P4018199868247505670.correct : P4018199868247505670.Spec := by
  intro n
  simp only [A102042, Nat.add_sub_cancel]

end A102042

/-! ## A102042.P2766382377291001552

`a(n-1)+a(n-1)%10` with `a(0)=9`
-/

namespace A102042.P2766382377291001552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + a (n - 1) % 10

end

end A102042.P2766382377291001552

namespace A102042

/-- `a(n-1)+a(n-1)%10` -/
def P2766382377291001552.Spec : Prop :=
  ∀ n, (P2766382377291001552.a n : ℤ) = A102042 (n + 1)

end A102042

/-! ## A102042.P4310394269870051410

`a(n-1)--a(n-1)%10` with `a(0)=9`
-/

namespace A102042.P4310394269870051410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) - Int.tmod (-a (n - 1)) 10

end

end A102042.P4310394269870051410

namespace A102042

/-- `a(n-1)--a(n-1)%10` -/
def P4310394269870051410.Spec : Prop :=
  ∀ n, P4310394269870051410.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P6534781514029798560

`10*(n+1)-A102039(n+1)`
-/

namespace A102042.P6534781514029798560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) - A102039 (n + 1)

end

end A102042.P6534781514029798560

namespace A102042

/-- `10*(n+1)-A102039(n+1)` -/
def P6534781514029798560.Spec : Prop :=
  ∀ n, P6534781514029798560.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P577829911800423294

`A017377(n)-A235699(n)`
-/

namespace A102042.P577829911800423294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A235699 n

end

end A102042.P577829911800423294

namespace A102042

/-- `A017377(n)-A235699(n)` -/
def P577829911800423294.Spec : Prop :=
  ∀ n, P577829911800423294.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P11101206261645243309

`A040020(n)+A002081(n+1)`
-/

namespace A102042.P11101206261645243309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n + A002081 (n + 1)

end

end A102042.P11101206261645243309

namespace A102042

/-- `A040020(n)+A002081(n+1)` -/
def P11101206261645243309.Spec : Prop :=
  ∀ n, P11101206261645243309.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P16642844394429948914

`A002081(n+2)+A000689(n)`
-/

namespace A102042.P16642844394429948914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 (n + 2) + A000689 n

end

end A102042.P16642844394429948914

namespace A102042

/-- `A002081(n+2)+A000689(n)` -/
def P16642844394429948914.Spec : Prop :=
  ∀ n, P16642844394429948914.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P10797944644291430867

`A040020(n)+A102041(n+2)-10`
-/

namespace A102042.P10797944644291430867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n + (A102041 (n + 2) - 10)

end

end A102042.P10797944644291430867

namespace A102042

/-- `A040020(n)+A102041(n+2)-10` -/
def P10797944644291430867.Spec : Prop :=
  ∀ n, P10797944644291430867.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P13184304227365837367

`A008587(n+1)+A008587(n+1)-A102039(n+1)`
-/

namespace A102042.P13184304227365837367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 1) + (A008587 (n + 1) - A102039 (n + 1))

end

end A102042.P13184304227365837367

namespace A102042

/-- `A008587(n+1)+A008587(n+1)-A102039(n+1)` -/
def P13184304227365837367.Spec : Prop :=
  ∀ n, P13184304227365837367.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P3232694634141247811

`A102039(n+4)+A000689(n)`
-/

namespace A102042.P3232694634141247811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 4) + A000689 n

end

end A102042.P3232694634141247811

namespace A102042

/-- `A102039(n+4)+A000689(n)` -/
def P3232694634141247811.Spec : Prop :=
  ∀ n, P3232694634141247811.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P11033448205378479919

`A102039(n+4)+Δ[A235699(n)]`
-/

namespace A102042.P11033448205378479919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 4) + (f1 (n + 1) - f1 n)

end

end A102042.P11033448205378479919

namespace A102042

/-- `A102039(n+4)+Δ[A235699(n)]` -/
def P11033448205378479919.Spec : Prop :=
  ∀ n, P11033448205378479919.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P16785093254783667996

`A102039(n+4)+Δ[A102039(n+1)]`
-/

namespace A102042.P16785093254783667996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 4) + (f1 (n + 1) - f1 n)

end

end A102042.P16785093254783667996

namespace A102042

/-- `A102039(n+4)+Δ[A102039(n+1)]` -/
def P16785093254783667996.Spec : Prop :=
  ∀ n, P16785093254783667996.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P9418813407496536691

`A099135(A102041(n+2))`
-/

namespace A102042.P9418813407496536691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099135 (A102041 (n + 2)).toNat

end

end A102042.P9418813407496536691

namespace A102042

/-- `A099135(A102041(n+2))` -/
def P9418813407496536691.Spec : Prop :=
  ∀ n, P9418813407496536691.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P15628965151170743837

`∑[10-ceil(2^(n-1))%10]`
-/

namespace A102042.P15628965151170743837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - Int.tmod ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102042.P15628965151170743837

namespace A102042

/-- `∑[10-ceil(2^(n-1))%10]` -/
def P15628965151170743837.Spec : Prop :=
  ∀ n, P15628965151170743837.a n = A102042 (n + 1)

end A102042

/-! ## A102042.P9446155344037176912

`A251984(9*a(n-1))+a(n-1)` with `a(0)=9`
-/

namespace A102042.P9446155344037176912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A251984 (9 * a (n - 1)).toNat + a (n - 1)

end

end A102042.P9446155344037176912

namespace A102042

/-- `A251984(9*a(n-1))+a(n-1)` -/
def P9446155344037176912.Spec : Prop :=
  ∀ n, P9446155344037176912.a n = A102042 (n + 1)

end A102042

/-!
# A102044: Consider the number m formed from the first n digits of the repeating string 102010201020... Then a(n) = number of prime factors (with repetition) of m.

The programs for A102044, there is no canonical definition to state claims against.
-/

/-! ## A102044.P4586987487024328034

`A103833(floor(n/2)+1)+Δ[or(1, n)]`
-/

namespace A102044.P4586987487024328034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103833 (⌊(n : ℚ) / 2⌋ + 1).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A102044.P4586987487024328034

/-! ## A102044.P12154582778636510133

`A103833(A008619(n))+2*and(1, n)`
-/

namespace A102044.P12154582778636510133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103833 (A008619 n).toNat + (2 * Nat.land 1 n : ℤ)

end

end A102044.P12154582778636510133

/-! ## A102044.P4687106784337758257

`A103833(∑[char[2*n]])+A010673(n)`
-/

namespace A102044.P4687106784337758257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103833 (∑ j ∈ Finset.range (n + 1), f1 j) + A010673 n

end

end A102044.P4687106784337758257

/-! ## A102044.P4796656012769933477

`A103833(A008619(n))+1-A033999(n)`
-/

namespace A102044.P4796656012769933477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103833 (A008619 n).toNat + (1 - A033999 n)

end

end A102044.P4796656012769933477

/-! ## A102044.P17419317069414453659

`A103833(A008619(n))+2*A000035(n)`
-/

namespace A102044.P17419317069414453659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103833 (A008619 n).toNat + 2 * A000035 n

end

end A102044.P17419317069414453659

/-! ## A102044.P12378157806499306649

`A103833(A008619(n))+∑[2*A062157(n)]`
-/

namespace A102044.P12378157806499306649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103833 (A008619 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102044.P12378157806499306649

/-! ## A102044.P819503501412731395

`A103833(A008619(n))+Δ[A004524(2*n)]`
-/

namespace A102044.P819503501412731395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103833 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A102044.P819503501412731395

/-!
# A102045: Aronsonian sequence generated by the sentence, "H is the first, fifth, sixteenth, twenty-fifth, thirty-sixth, thirty-eighth, forty-seventh, ... letter in this sentence.".

The programs for A102045, there is no canonical definition to state claims against.
-/

/-! ## A102045.P10075089742963270085

`A055508(n+1)-A107846(A038754(n))`
-/

namespace A102045.P10075089742963270085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055508 (n + 1) - A107846 (A038754 n).toNat

end

end A102045.P10075089742963270085

/-! ## A102045.P627319644649150443

`A055508(n+1)-A295883(A026010(n))`
-/

namespace A102045.P627319644649150443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055508 (n + 1) - A295883 (A026010 n).toNat

end

end A102045.P627319644649150443

/-! ## A102045.P15588891580632251861

`A055508(n+1)-∑[A055641(A005246(n))]`
-/

namespace A102045.P15588891580632251861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A005246 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055508 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102045.P15588891580632251861

/-! ## A102045.P10313436016873995516

`A055508(n+1)-∑[A107846(A187941(n))]`
-/

namespace A102045.P10313436016873995516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A187941 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055508 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102045.P10313436016873995516

/-! ## A102045.P10438801457277130975

`A055508(n+1)-∑[A335520(A016885(n))]`
-/

namespace A102045.P10438801457277130975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A016885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055508 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102045.P10438801457277130975

/-!
# A102046: Smallest positive integer greater than a(n - 1) consistent with the condition that n is a member of the sequence if and only if a(n) is congruent to (n!)!.

The programs for A102046, there is no canonical definition to state claims against.
-/

/-! ## A102046.P8182996810164814175

`A000027(A002262(n)+A057944(n)!)`
-/

namespace A102046.P8182996810164814175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002262 n + (Nat.factorial (A057944 n).toNat : ℤ)).toNat

end

end A102046.P8182996810164814175

/-! ## A102046.P9106965646255611280

`A002262(n)+A057944(A002998(n))!`
-/

namespace A102046.P9106965646255611280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (Nat.factorial (A057944 (A002998 n).toNat).toNat : ℤ)

end

end A102046.P9106965646255611280

/-! ## A102046.P8914024267264747019

`A028310(A002262(n)+A057944(n)!)`
-/

namespace A102046.P8914024267264747019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002262 n + (Nat.factorial (A057944 n).toNat : ℤ)).toNat

end

end A102046.P8914024267264747019

/-! ## A102046.P8363016653601017102

`A048671(A057944(n)!)+A002262(n)`
-/

namespace A102046.P8363016653601017102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (Nat.factorial (A057944 n).toNat) + A002262 n

end

end A102046.P8363016653601017102

/-!
# A102047: Decimal expansion of -1/4 + log(2)/2.

The programs for A102047, there is no canonical definition to state claims against.
-/

/-! ## A102047.P655174431606198017

`A187832(n)+A239354(n)-A382854(n)`
-/

namespace A102047.P655174431606198017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187832 n + (A239354 n - A382854 n)

end

end A102047.P655174431606198017

/-!
# A102048: Exponent of A046021(n) (least inverse of Kempner function A002034) when written as a power of A006530(n) (largest prime dividing n), with a(1) = 1.

The programs for A102048, there is no canonical definition to state claims against.
-/

/-! ## A102048.P15360256947547065318

`∏{p}[A053585(n+1), val(A046021(n+1), #)]`
-/

namespace A102048.P15360256947547065318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A046021 (n + 1)).toNat p

end

end A102048.P15360256947547065318

/-! ## A102048.P2135286297833476215

`A078897(n+1)-A046660(A053585(n+1))`
-/

namespace A102048.P2135286297833476215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078897 (n + 1) - A046660 (A053585 (n + 1)).toNat

end

end A102048.P2135286297833476215

/-! ## A102048.P11861370234179594945

`A028310(val(A046021(n+1), A111089(n+1)))`
-/

namespace A102048.P11861370234179594945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.valuation (A046021 (n + 1)).toNat (A111089 (n + 1)).toNat)

end

end A102048.P11861370234179594945

/-! ## A102048.P5630398133030627848

`val(A046021(n+1)+A000007(n), A111089(n+1))`
-/

namespace A102048.P5630398133030627848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046021 (n + 1) + A000007 n).toNat (A111089 (n + 1)).toNat

end

end A102048.P5630398133030627848

/-! ## A102048.P11333927228849781523

`val(A000142(n), A007947(2*(n+1)))+1`
-/

namespace A102048.P11333927228849781523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000142 n).toNat (A007947 (2 * (n + 1))).toNat + 1

end

end A102048.P11333927228849781523

/-!
# A102050: a(n) = 1 if 10^(2^n)+1 is prime, otherwise smallest prime factor of 10^(2^n)+1.

The programs for A102050, there is no canonical definition to state claims against.
-/

/-! ## A102050.P6713779016900977483

`gcd(A169585(n), A185121(n))`
-/

namespace A102050.P6713779016900977483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A185121 n)

end

end A102050.P6713779016900977483

/-! ## A102050.P290154420899139680

`A185121(n)^A001221(A011782(n))`
-/

namespace A102050.P290154420899139680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185121 n : ℚ) ^ (A001221 (A011782 n).toNat : ℤ)

end

end A102050.P290154420899139680

/-! ## A102050.P2830603526388412533

`A185121(n)^A001221(A016116(n))`
-/

namespace A102050.P2830603526388412533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185121 n : ℚ) ^ (A001221 (A016116 n).toNat : ℤ)

end

end A102050.P2830603526388412533

/-! ## A102050.P18268262488033093025

`A185121(n)^A049639(A000217(n))`
-/

namespace A102050.P18268262488033093025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185121 n : ℚ) ^ (A049639 (A000217 n).toNat : ℤ)

end

end A102050.P18268262488033093025

/-! ## A102050.P1243979407915210957

`A185121(n)^A104725(A032741(n))`
-/

namespace A102050.P1243979407915210957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185121 n : ℚ) ^ (A104725 (A032741 n).toNat : ℤ)

end

end A102050.P1243979407915210957

/-!
# A102052: Column 1 of triangle A102051, which is the matrix inverse of triangle A101275 (number of Schroeder paths).

The programs for A102052, there is no canonical definition to state claims against.
-/

/-! ## A102052.P3868189378509202864

`A102051(∑[n+1]+1)`
-/

namespace A102052.P3868189378509202864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102051 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A102052.P3868189378509202864

/-!
# A102053: Column 2 of triangle A102051, which is the matrix inverse of triangle A101275 (number of Schroeder paths).

The programs for A102053, there is no canonical definition to state claims against.
-/

/-! ## A102053.P4564106934839790208

`A102051(∑[n+2]+3)`
-/

namespace A102053.P4564106934839790208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102051 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A102053.P4564106934839790208

/-! ## A102053.P16464019376347035440

`A102051(A152948(n+4))%A001850(n+1)`
-/

namespace A102053.P16464019376347035440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102051 (A152948 (n + 4)).toNat) (A001850 (n + 1))

end

end A102053.P16464019376347035440

/-!
# A102054: Triangular matrix, read by rows, where T(n,k) = T(n-1,k) - [T^-1](n-1,k-1); also equals the matrix inverse of A060083 (Euler polynomials).

The programs for A102054, there is no canonical definition to state claims against.
-/

/-! ## A102054.P407907140218553876

`A140216(lt[0, A204293(n)])`
-/

namespace A102054.P407907140218553876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102054.P407907140218553876

/-! ## A102054.P15372026508925560725

`A140216(A185868(n+1)-1)`
-/

namespace A102054.P15372026508925560725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140216 (A185868 (n + 1) - 1).toNat

end

end A102054.P15372026508925560725

/-! ## A102054.P7133419649720082351

`A140216(eq[0, A167279(n+1)])`
-/

namespace A102054.P7133419649720082351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102054.P7133419649720082351

/-! ## A102054.P15622876621846110063

`A140216(eq[0, A189245(n+1)])`
-/

namespace A102054.P15622876621846110063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102054.P15622876621846110063

/-! ## A102054.P7882570400270971046

`A140216(eq[0, A221408(n+1)])`
-/

namespace A102054.P7882570400270971046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102054.P7882570400270971046

/-!
# A102055: Column 1 of A102054, the matrix inverse of A060083 (Euler polynomials).

The programs for A102055, there is no canonical definition to state claims against.
-/

/-! ## A102055.P14819117472674286137

`2-∑[A060083(∑[n])]`
-/

namespace A102055.P14819117472674286137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060083 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102055.P14819117472674286137

/-! ## A102055.P6318411691820099338

`A102054(∑[n+1]+1)`
-/

namespace A102055.P6318411691820099338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A102055.P6318411691820099338

/-! ## A102055.P15543984105312735821

`1-∑[A226158(2*n)]`
-/

namespace A102055.P15543984105312735821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102055.P15543984105312735821

/-! ## A102055.P5867166062097321908

`a(n-1)-A001469(n)` with `a(0)=1`
-/

namespace A102055.P5867166062097321908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A001469 n

end

end A102055.P5867166062097321908

/-! ## A102055.P7558410515785373053

`1-∑[A004172(n²+1)]`
-/

namespace A102055.P7558410515785373053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004172 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102055.P7558410515785373053

/-!
# A102056: Column 2 of A102054, the matrix inverse of A060083 (Euler polynomials).

The programs for A102056, there is no canonical definition to state claims against.
-/

/-! ## A102056.P5413054696602223739

`A102054(∑[n+2]+3)`
-/

namespace A102056.P5413054696602223739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102054 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A102056.P5413054696602223739

/-! ## A102056.P18010733325943258663

`a(n-1)-A060082(A034856(n+1))` with `a(0)=1`
-/

namespace A102056.P18010733325943258663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A060082 (A034856 (n + 1)).toNat

end

end A102056.P18010733325943258663

/-!
# A102057: Triangle of modular inverses of b (mod m) for b = 1, ..., m-1, where 0 indicates no modular inverse exists.

The programs for A102057, there is no canonical definition to state claims against.
-/

/-! ## A102057.P10066769219988785087

`A002487(A054425(n+1))`
-/

namespace A102057.P10066769219988785087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054425 (n + 1)).toNat

end

end A102057.P10066769219988785087

/-! ## A102057.P15959025794131991542

`A002487((A338579(n+2)-1)*A054431(n+1))`
-/

namespace A102057.P15959025794131991542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((A338579 (n + 2) - 1) * A054431 (n + 1)).toNat

end

end A102057.P15959025794131991542

/-! ## A102057.P12216885513565910543

`A283977(2*A054425(n+1))`
-/

namespace A102057.P12216885513565910543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * A054425 (n + 1)).toNat

end

end A102057.P12216885513565910543

/-! ## A102057.P8751664097647474451

`A050873(n+1)-A260190(A174673(n))`
-/

namespace A102057.P8751664097647474451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) - A260190 (A174673 n).toNat

end

end A102057.P8751664097647474451

/-! ## A102057.P9687161532388023712

`A000120(A054425(n+1)^A204553(2*(n+2)))`
-/

namespace A102057.P9687161532388023712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A054425 (n + 1) : ℚ) ^ (A204553 (2 * (n + 2)) : ℤ))).toNat

end

end A102057.P9687161532388023712

/-!
# A102058: Expansion of e.g.f. sin(arctanh(x)), odd powers only.

The programs for A102058, there is no canonical definition to state claims against.
-/

/-! ## A102058.P16567997894340537932

`(-1)^n*A002019(2*n+1)`
-/

namespace A102058.P16567997894340537932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002019 (2 * n + 1)

end

end A102058.P16567997894340537932

/-! ## A102058.P15666873839521246129

`A002019(2*n+1)*A033999(n)`
-/

namespace A102058.P15666873839521246129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002019 (2 * n + 1) * A033999 n

end

end A102058.P15666873839521246129

/-! ## A102058.P17626020064004943848

`A002019(2*n+1)*A009001(2*n)`
-/

namespace A102058.P17626020064004943848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002019 (2 * n + 1) * A009001 (2 * n)

end

end A102058.P17626020064004943848

/-! ## A102058.P6917626060931696140

`A002019(2*n+1)*A057077(2*n)`
-/

namespace A102058.P6917626060931696140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002019 (2 * n + 1) * A057077 (2 * n)

end

end A102058.P6917626060931696140

/-!
# A102059: Expansion of e.g.f. cos(arctanh(x)), even powers only.

The programs for A102059, there is no canonical definition to state claims against.
-/

/-! ## A102059.P5352091214741792122

`A002019(2*n)*A033999(n)`
-/

namespace A102059.P5352091214741792122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002019 (2 * n) * A033999 n

end

end A102059.P5352091214741792122

/-! ## A102059.P3920891241103769156

`A002019(2*n)*A009001(2*n)`
-/

namespace A102059.P3920891241103769156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002019 (2 * n) * A009001 (2 * n)

end

end A102059.P3920891241103769156

/-! ## A102059.P4724537283758499219

`A002019(2*n)*A057077(2*n)`
-/

namespace A102059.P4724537283758499219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002019 (2 * n) * A057077 (2 * n)

end

end A102059.P4724537283758499219

/-! ## A102059.P1586106828307321995

`A002019(2*n)*A117569(2*n+1)`
-/

namespace A102059.P1586106828307321995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002019 (2 * n) * A117569 (2 * n + 1)

end

end A102059.P1586106828307321995

/-!
# A102060: Expansion of e.g.f. tan(arcsinh(x)) = cot(arccosh(x)).

The programs for A102060, there is no canonical definition to state claims against.
-/

/-! ## A102060.P15240394324007068459

`5*A013201(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=5`
-/

namespace A102060.P15240394324007068459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 5] fun n a =>
  5 * A013201 (a (n - 1)).toNat

end

end A102060.P15240394324007068459

/-!
# A102062: Denominators of e.g.f.: tan(arccosh(x)) = cot(arcsinh(x)).

The programs for A102062, there is no canonical definition to state claims against.
-/

/-! ## A102062.P11425862090003595781

`(xor(n, n+1)+1)*A102074(n+1)`
-/

namespace A102062.P11425862090003595781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1 : ℤ) * A102074 (n + 1)

end

end A102062.P11425862090003595781

/-! ## A102062.P530603508389548319

`A102074(n+1)*A171977(n+1)`
-/

namespace A102062.P530603508389548319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102074 (n + 1) * A171977 (n + 1)

end

end A102062.P530603508389548319

/-! ## A102062.P8492797514803677597

`lcm(A102074(n+1), A102077(n+1))`
-/

namespace A102062.P8492797514803677597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102074 (n + 1)) (A102077 (n + 1))

end

end A102062.P8492797514803677597

/-! ## A102062.P15762362208505843871

`A006519(2*(n+1))*A102074(n+1)`
-/

namespace A102062.P15762362208505843871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * (n + 1)) * A102074 (n + 1)

end

end A102062.P15762362208505843871

/-! ## A102062.P9124752762069436581

`A102074(n+1)*A118830(2*(n+1))`
-/

namespace A102062.P9124752762069436581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102074 (n + 1) * A118830 (2 * (n + 1))

end

end A102062.P9124752762069436581

/-!
# A102065: Denominators of e.g.f.: -cot(arctanh(x)), odd powers only.

The programs for A102065, there is no canonical definition to state claims against.
-/

/-! ## A102065.P16438354477186670622

`A102077(n+1)/(xor(n, n+1)+1)`
-/

namespace A102065.P16438354477186670622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102077 (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

end

end A102065.P16438354477186670622

/-! ## A102065.P17813533191836978492

`A102074(A387051(n))`
-/

namespace A102065.P17813533191836978492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102074 (A387051 n).toNat

end

end A102065.P17813533191836978492

/-! ## A102065.P6341731671226756489

`A102074(A004438(n+1))`
-/

namespace A102065.P6341731671226756489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102074 (A004438 (n + 1)).toNat

end

end A102065.P6341731671226756489

/-! ## A102065.P6492554563468475423

`A102074(A004441(n+1))`
-/

namespace A102065.P6492554563468475423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102074 (A004441 (n + 1)).toNat

end

end A102065.P6492554563468475423

/-! ## A102065.P12861314715381215817

`A102074(A008684(n+1))`
-/

namespace A102065.P12861314715381215817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102074 (A008684 (n + 1)).toNat

end

end A102065.P12861314715381215817

/-!
# A102066: Sum of the first n primes, mod 6.

The programs for A102066, the canonical program `A102066.P12806262207819177951` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102066 has offset 1).

The definition of A102066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102066.P1766889878006518301

`A007504(n+1)%6`
-/

namespace A102066.P1766889878006518301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n + 1)) 6

end

end A102066.P1766889878006518301

namespace A102066

/-- `A007504(n+1)%6` -/
def P1766889878006518301.Spec : Prop :=
  ∀ n, P1766889878006518301.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P12806262207819177951

`A098999(n+1)%6`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102066

/-- `A098999(n+1)%6` -/
def P12806262207819177951.Spec : Prop :=
  ∀ n, P12806262207819177951.a n = A102066 (n + 1)

theorem P12806262207819177951.correct : P12806262207819177951.Spec := by
  intro n
  simp only [A102066, Nat.add_sub_cancel]

end A102066

/-! ## A102066.P7105696709880587818

`A122103(n+1)%6`
-/

namespace A102066.P7105696709880587818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122103 (n + 1)) 6

end

end A102066.P7105696709880587818

namespace A102066

/-- `A122103(n+1)%6` -/
def P7105696709880587818.Spec : Prop :=
  ∀ n, P7105696709880587818.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P6665424271890108055

`A236209(n+1)%6`
-/

namespace A102066.P6665424271890108055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236209 (n + 1)) 6

end

end A102066.P6665424271890108055

namespace A102066

/-- `A236209(n+1)%6` -/
def P6665424271890108055.Spec : Prop :=
  ∀ n, P6665424271890108055.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P11732295086957134875

`A236215(n+1)%6`
-/

namespace A102066.P11732295086957134875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236215 (n + 1)) 6

end

end A102066.P11732295086957134875

namespace A102066

/-- `A236215(n+1)%6` -/
def P11732295086957134875.Spec : Prop :=
  ∀ n, P11732295086957134875.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P15335614935677528342

`∑[A000040(n+1)]%6`
-/

namespace A102066.P15335614935677528342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 6

end

end A102066.P15335614935677528342

namespace A102066

/-- `∑[A000040(n+1)]%6` -/
def P15335614935677528342.Spec : Prop :=
  ∀ n, P15335614935677528342.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P809502368391094398

`∑[A242119(n+1)]%6`
-/

namespace A102066.P809502368391094398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 6

end

end A102066.P809502368391094398

namespace A102066

/-- `∑[A242119(n+1)]%6` -/
def P809502368391094398.Spec : Prop :=
  ∀ n, P809502368391094398.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P9164030233667353759

`∑[record[A006530(n+2)]]%6`
-/

namespace A102066.P9164030233667353759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 6

end

end A102066.P9164030233667353759

namespace A102066

/-- `∑[record[A006530(n+2)]]%6` -/
def P9164030233667353759.Spec : Prop :=
  ∀ n, P9164030233667353759.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P6537815274053928907

`∑[record[A020639(n+2)]]%6`
-/

namespace A102066.P6537815274053928907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 6

end

end A102066.P6537815274053928907

namespace A102066

/-- `∑[record[A020639(n+2)]]%6` -/
def P6537815274053928907.Spec : Prop :=
  ∀ n, P6537815274053928907.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P13007810408686264744

`∑[eq[n+2, A000203(n+1)]+1]%6`
-/

namespace A102066.P13007810408686264744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 6

end

end A102066.P13007810408686264744

namespace A102066

/-- `∑[eq[n+2, A000203(n+1)]+1]%6` -/
def P13007810408686264744.Spec : Prop :=
  ∀ n, (P13007810408686264744.a n : ℤ) = A102066 (n + 1)

end A102066

/-! ## A102066.P15686048672277168612

`∑[(A008864(n+1)-1)%p?[28*(n-1)+1+n]²]%6`
-/

namespace A102066.P15686048672277168612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * ((n : ℤ) - 1) + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1) - 1) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 6

end

end A102066.P15686048672277168612

namespace A102066

/-- `∑[(A008864(n+1)-1)%p?[28*(n-1)+1+n]²]%6` -/
def P15686048672277168612.Spec : Prop :=
  ∀ n, P15686048672277168612.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P9239076246528534249

`∑[record[A014963(n+2)]]%6`
-/

namespace A102066.P9239076246528534249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 6

end

end A102066.P9239076246528534249

namespace A102066

/-- `∑[record[A014963(n+2)]]%6` -/
def P9239076246528534249.Spec : Prop :=
  ∀ n, P9239076246528534249.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P6898654395555147586

`A010875(A007504(n+1))`
-/

namespace A102066.P6898654395555147586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A007504 (n + 1)).toNat

end

end A102066.P6898654395555147586

namespace A102066

/-- `A010875(A007504(n+1))` -/
def P6898654395555147586.Spec : Prop :=
  ∀ n, P6898654395555147586.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P10800244522431261282

`A010875(∑[A000040(n+1)])`
-/

namespace A102066.P10800244522431261282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102066.P10800244522431261282

namespace A102066

/-- `A010875(∑[A000040(n+1)])` -/
def P10800244522431261282.Spec : Prop :=
  ∀ n, P10800244522431261282.a n = A102066 (n + 1)

end A102066

/-! ## A102066.P4991387410682085022

`A010875(∑[A008578(n+2)])`
-/

namespace A102066.P4991387410682085022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102066.P4991387410682085022

namespace A102066

/-- `A010875(∑[A008578(n+2)])` -/
def P4991387410682085022.Spec : Prop :=
  ∀ n, P4991387410682085022.a n = A102066 (n + 1)

end A102066

/-!
# A102067: Numbers k such that k does not divide P(k)! even though P(k)^2 is not a factor of k, where P(k) is the largest prime factor of k.

The programs for A102067, the canonical program `A102067.P11366906398389111977` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102067 has offset 1).

The definition of A102067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102067.P11366906398389111977

`filter[A068567(n+1), A345951(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A102067

/-- `filter[A068567(n+1), A345951(#)]` -/
def P11366906398389111977.Spec : Prop :=
  ∀ n, P11366906398389111977.a n = A102067 (n + 1)

theorem P11366906398389111977.correct : P11366906398389111977.Spec := by
  intro n
  simp only [A102067, Nat.add_sub_cancel]

end A102067

/-! ## A102067.P11871484605904222407

`∩[A057109(n+1), A068567(n+1)]`
-/

namespace A102067.P11871484605904222407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102067.P11871484605904222407

namespace A102067

/-- `∩[A057109(n+1), A068567(n+1)]` -/
def P11871484605904222407.Spec : Prop :=
  ∀ n, (P11871484605904222407.a n : ℤ) = A102067 (n + 1)

end A102067

/-! ## A102067.P15082424582559630091

`∩[A057109(n+1), A102750(n+1)]`
-/

namespace A102067.P15082424582559630091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102067.P15082424582559630091

namespace A102067

/-- `∩[A057109(n+1), A102750(n+1)]` -/
def P15082424582559630091.Spec : Prop :=
  ∀ n, (P15082424582559630091.a n : ℤ) = A102067 (n + 1)

end A102067

/-! ## A102067.P9460799936892672502

`∩[A057109(n+1), A080363(n+1)]`
-/

namespace A102067.P9460799936892672502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102067.P9460799936892672502

namespace A102067

/-- `∩[A057109(n+1), A080363(n+1)]` -/
def P9460799936892672502.Spec : Prop :=
  ∀ n, (P9460799936892672502.a n : ℤ) = A102067 (n + 1)

end A102067

/-!
# A102068: a(n) = P(n)!, where P(n) is the largest prime factor of n (with a(1) = 1).

The programs for A102068, the canonical program `A102068.P17693975610551222381` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102068 has offset 1).

The definition of A102068 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102068.P17693975610551222381

`A000142(A006530(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A102068

/-- `A000142(A006530(n+1))` -/
def P17693975610551222381.Spec : Prop :=
  ∀ n, P17693975610551222381.a n = A102068 (n + 1)

theorem P17693975610551222381.correct : P17693975610551222381.Spec := by
  intro n
  simp only [A102068, Nat.add_sub_cancel]

end A102068

/-! ## A102068.P4876484277789286695

`A082061((n+1)²)!`
-/

namespace A102068.P4876484277789286695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A082061 ((n + 1) ^ 2)).toNat

end

end A102068.P4876484277789286695

namespace A102068

/-- `A082061((n+1)²)!` -/
def P4876484277789286695.Spec : Prop :=
  ∀ n, (P4876484277789286695.a n : ℤ) = A102068 (n + 1)

end A102068

/-! ## A102068.P8614195227768325251

`A085392((n+1)²)!`
-/

namespace A102068.P8614195227768325251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A085392 ((n + 1) ^ 2)).toNat

end

end A102068.P8614195227768325251

namespace A102068

/-- `A085392((n+1)²)!` -/
def P8614195227768325251.Spec : Prop :=
  ∀ n, (P8614195227768325251.a n : ℤ) = A102068 (n + 1)

end A102068

/-! ## A102068.P13886831630873108416

`A087039((n+1)²)!`
-/

namespace A102068.P13886831630873108416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A087039 ((n + 1) ^ 2)).toNat

end

end A102068.P13886831630873108416

namespace A102068

/-- `A087039((n+1)²)!` -/
def P13886831630873108416.Spec : Prop :=
  ∀ n, (P13886831630873108416.a n : ℤ) = A102068 (n + 1)

end A102068

/-! ## A102068.P8197414307443559433

`A189172((n+1)²)!`
-/

namespace A102068.P8197414307443559433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A189172 ((n + 1) ^ 2)).toNat

end

end A102068.P8197414307443559433

namespace A102068

/-- `A189172((n+1)²)!` -/
def P8197414307443559433.Spec : Prop :=
  ∀ n, (P8197414307443559433.a n : ℤ) = A102068 (n + 1)

end A102068

/-! ## A102068.P14917664939662993779

`A217581((n+1)²)!`
-/

namespace A102068.P14917664939662993779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A217581 ((n + 1) ^ 2)).toNat

end

end A102068.P14917664939662993779

namespace A102068

/-- `A217581((n+1)²)!` -/
def P14917664939662993779.Spec : Prop :=
  ∀ n, (P14917664939662993779.a n : ℤ) = A102068 (n + 1)

end A102068

/-! ## A102068.P3048930161834241491

`A249740((n+1)²)!`
-/

namespace A102068.P3048930161834241491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A249740 ((n + 1) ^ 2)).toNat

end

end A102068.P3048930161834241491

namespace A102068

/-- `A249740((n+1)²)!` -/
def P3048930161834241491.Spec : Prop :=
  ∀ n, (P3048930161834241491.a n : ℤ) = A102068 (n + 1)

end A102068

/-! ## A102068.P6416834616449445917

`A392109((n+1)²)!`
-/

namespace A102068.P6416834616449445917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A392109 ((n + 1) ^ 2)).toNat

end

end A102068.P6416834616449445917

namespace A102068

/-- `A392109((n+1)²)!` -/
def P6416834616449445917.Spec : Prop :=
  ∀ n, (P6416834616449445917.a n : ℤ) = A102068 (n + 1)

end A102068

/-! ## A102068.P3820088992085514151

`A092495(∏{p}[n+1, #])`
-/

namespace A102068.P3820088992085514151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092495 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A102068.P3820088992085514151

namespace A102068

/-- `A092495(∏{p}[n+1, #])` -/
def P3820088992085514151.Spec : Prop :=
  ∀ n, P3820088992085514151.a n = A102068 (n + 1)

end A102068

/-! ## A102068.P2847213295856339535

`A285730(∑[n+1])!`
-/

namespace A102068.P2847213295856339535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A285730 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A102068.P2847213295856339535

namespace A102068

/-- `A285730(∑[n+1])!` -/
def P2847213295856339535.Spec : Prop :=
  ∀ n, (P2847213295856339535.a n : ℤ) = A102068 (n + 1)

end A102068

/-!
# A102069: Analogous to the oblong (promic or heteromecic) sequence formed but with reversal digits of factors multiplied.

The programs for A102069, there is no canonical definition to state claims against.
-/

/-! ## A102069.P11510929385484572442

`A062919(n+2)/A062919(n)`
-/

namespace A102069.P11510929385484572442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062919 (n + 2) : ℚ) / (A062919 n : ℚ)

end

end A102069.P11510929385484572442

/-! ## A102069.P14841351220299671323

`ratio[A062919(n)]*A004086(n+2)`
-/

namespace A102069.P14841351220299671323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062919 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A004086 (n + 2) : ℚ)

end

end A102069.P14841351220299671323

/-! ## A102069.P6340021743971827705

`A004086(n+1)*A004086(n+2)`
-/

namespace A102069.P6340021743971827705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1) * A004086 (n + 2)

end

end A102069.P6340021743971827705

/-! ## A102069.P249771125901668299

`A345110(n+1)*A345110(n+2)`
-/

namespace A102069.P249771125901668299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (n + 1) * A345110 (n + 2)

end

end A102069.P249771125901668299

/-! ## A102069.P4506677142914525442

`A135020(2*(n+1))*A135020(2*(n+2))`
-/

namespace A102069.P4506677142914525442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n + 1)) * A135020 (2 * (n + 2))

end

end A102069.P4506677142914525442

/-! ## A102069.P9626648497523853225

`∏{d}[A062584(n), A004086(A000005(#)+n)]`
-/

namespace A102069.P9626648497523853225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A004086 (A000005 d + (n : ℤ)).toNat

end

end A102069.P9626648497523853225

/-! ## A102069.P14745786327878421321

`Δ[A062918(n+1)]*A135020(A103517(n))`
-/

namespace A102069.P14745786327878421321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A135020 (A103517 n).toNat

end

end A102069.P14745786327878421321

/-! ## A102069.P3244423031162989932

`∏{d}[A000040(n+1), A004086(A000005(#)+n)]`
-/

namespace A102069.P3244423031162989932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A004086 (A000005 d + (n : ℤ)).toNat

end

end A102069.P3244423031162989932

/-! ## A102069.P16742542085924073686

`∏{d}[A006530(n+2), A004086(A000005(#)+n)]`
-/

namespace A102069.P16742542085924073686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A004086 (A000005 d + (n : ℤ)).toNat

end

end A102069.P16742542085924073686

/-! ## A102069.P13788258563807618183

`∏{d}[A020639(n+3), A004086(A000005(#)+n)]`
-/

namespace A102069.P13788258563807618183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A004086 (A000005 d + (n : ℤ)).toNat

end

end A102069.P13788258563807618183

/-!
# A102070: Numbers that can be expressed as p+p^n (p prime, n >= 0) in more than one way.

The programs for A102070, there is no canonical definition to state claims against.
-/

/-! ## A102070.P16571894612635852339

`lt[A137700(n)%3, (-1)^n]`
-/

namespace A102070.P16571894612635852339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137700 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102070.P16571894612635852339

/-! ## A102070.P11572360737998794585

`A156726(A095365(n+4))`
-/

namespace A102070.P11572360737998794585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (A095365 (n + 4)).toNat

end

end A102070.P11572360737998794585

/-! ## A102070.P12675771336302668360

`record[A001223(A128440(n+4))]`
-/

namespace A102070.P12675771336302668360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A128440 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102070.P12675771336302668360

/-! ## A102070.P6762252776916832718

`∑[A099774(Δ[A001934(n+4)])]`
-/

namespace A102070.P6762252776916832718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001934 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102070.P6762252776916832718

/-!
# A102071: Pairwise sums of general ballot numbers (A002026).

The programs for A102071, the canonical program `A102071.P3789091345876567070` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102071 has offset 1).

The definition of A102071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102071.P3789091345876567070

`A001006(n+2)-A001006(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102071

/-- `A001006(n+2)-A001006(n)` -/
def P3789091345876567070.Spec : Prop :=
  ∀ n, P3789091345876567070.a n = A102071 (n + 1)

theorem P3789091345876567070.correct : P3789091345876567070.Spec := by
  intro n
  simp only [A102071, Nat.add_sub_cancel]

end A102071

/-! ## A102071.P8912323549463963744

`∑[A026269(n+2)]`
-/

namespace A102071.P8912323549463963744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102071.P8912323549463963744

namespace A102071

/-- `∑[A026269(n+2)]` -/
def P8912323549463963744.Spec : Prop :=
  ∀ n, P8912323549463963744.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P25052219243223777

`Δ[A005554(n+2)]`
-/

namespace A102071.P25052219243223777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005554 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102071.P25052219243223777

namespace A102071

/-- `Δ[A005554(n+2)]` -/
def P25052219243223777.Spec : Prop :=
  ∀ n, P25052219243223777.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P13258828009805375999

`Δ[abs(Δ[A166587(n+1)])]`
-/

namespace A102071.P13258828009805375999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102071.P13258828009805375999

namespace A102071

/-- `Δ[abs(Δ[A166587(n+1)])]` -/
def P13258828009805375999.Spec : Prop :=
  ∀ n, P13258828009805375999.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P10778893255611269699

`∑[A026270(n+1)+a(n-1)]` with `a(0)=1`
-/

namespace A102071.P10778893255611269699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026270 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102071.P10778893255611269699

namespace A102071

/-- `∑[A026270(n+1)+a(n-1)]` -/
def P10778893255611269699.Spec : Prop :=
  ∀ n, P10778893255611269699.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P385451880030390592

`A002026(n)+record[A105695(n)]`
-/

namespace A102071.P385451880030390592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102071.P385451880030390592

namespace A102071

/-- `A002026(n)+record[A105695(n)]` -/
def P385451880030390592.Spec : Prop :=
  ∀ n, P385451880030390592.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P3350299455315537918

`record[A001006(n)-A086246(n)]`
-/

namespace A102071.P3350299455315537918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A086246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102071.P3350299455315537918

namespace A102071

/-- `record[A001006(n)-A086246(n)]` -/
def P3350299455315537918.Spec : Prop :=
  ∀ n, P3350299455315537918.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P7678750906343688346

`A002026(n+1)+A002026(n)`
-/

namespace A102071.P7678750906343688346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1) + A002026 n

end

end A102071.P7678750906343688346

namespace A102071

/-- `A002026(n+1)+A002026(n)` -/
def P7678750906343688346.Spec : Prop :=
  ∀ n, P7678750906343688346.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P9138737373410830681

`Δ[A001006(n)+Δ[A086615(n)]]`
-/

namespace A102071.P9138737373410830681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102071.P9138737373410830681

namespace A102071

/-- `Δ[A001006(n)+Δ[A086615(n)]]` -/
def P9138737373410830681.Spec : Prop :=
  ∀ n, P9138737373410830681.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P15652365812982578915

`Δ[A001006(n+1)+A001006(n)]`
-/

namespace A102071.P15652365812982578915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) + A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102071.P15652365812982578915

namespace A102071

/-- `Δ[A001006(n+1)+A001006(n)]` -/
def P15652365812982578915.Spec : Prop :=
  ∀ n, P15652365812982578915.a n = A102071 (n + 1)

theorem P15652365812982578915.correct : P15652365812982578915.Spec := by
  intro n
  simp only [A102071, Nat.add_sub_cancel, A102071.P15652365812982578915.f1, A102071.P15652365812982578915.a, A102071.P3789091345876567070.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A102071

/-! ## A102071.P7835945200235144943

`record[A105695(n+1)+A105695(n)]`
-/

namespace A102071.P7835945200235144943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1) + A105695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102071.P7835945200235144943

namespace A102071

/-- `record[A105695(n+1)+A105695(n)]` -/
def P7835945200235144943.Spec : Prop :=
  ∀ n, P7835945200235144943.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P953374213981813025

`record[A001006(n)-A007971(n)/2]`
-/

namespace A102071.P953374213981813025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 n : ℚ) - (A007971 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102071.P953374213981813025

namespace A102071

/-- `record[A001006(n)-A007971(n)/2]` -/
def P953374213981813025.Spec : Prop :=
  ∀ n, P953374213981813025.a n = (A102071 (n + 1) : ℚ)

end A102071

/-! ## A102071.P5347069186439045512

`A168051(n+2)+A001006(n+2)`
-/

namespace A102071.P5347069186439045512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 2) + A001006 (n + 2)

end

end A102071.P5347069186439045512

namespace A102071

/-- `A168051(n+2)+A001006(n+2)` -/
def P5347069186439045512.Spec : Prop :=
  ∀ n, P5347069186439045512.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P14449047749186258833

`A292440(n+2)+A001006(n+2)`
-/

namespace A102071.P14449047749186258833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 2) + A001006 (n + 2)

end

end A102071.P14449047749186258833

namespace A102071

/-- `A292440(n+2)+A001006(n+2)` -/
def P14449047749186258833.Spec : Prop :=
  ∀ n, P14449047749186258833.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P7468218237853921484

`A244884(n+2)+A105695(n+2)`
-/

namespace A102071.P7468218237853921484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 2) + A105695 (n + 2)

end

end A102071.P7468218237853921484

namespace A102071

/-- `A244884(n+2)+A105695(n+2)` -/
def P7468218237853921484.Spec : Prop :=
  ∀ n, P7468218237853921484.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P4515647955556442718

`A105695(n+2)+A105695(n+3)`
-/

namespace A102071.P4515647955556442718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 2) + A105695 (n + 3)

end

end A102071.P4515647955556442718

namespace A102071

/-- `A105695(n+2)+A105695(n+3)` -/
def P4515647955556442718.Spec : Prop :=
  ∀ n, P4515647955556442718.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P7216373395224038530

`A005554(n+3)-A005554(n+2)`
-/

namespace A102071.P7216373395224038530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005554 (n + 3) - A005554 (n + 2)

end

end A102071.P7216373395224038530

namespace A102071

/-- `A005554(n+3)-A005554(n+2)` -/
def P7216373395224038530.Spec : Prop :=
  ∀ n, P7216373395224038530.a n = A102071 (n + 1)

end A102071

/-! ## A102071.P14256613100932905721

`A348840(∑[n+2]+5)`
-/

namespace A102071.P14256613100932905721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348840 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A102071.P14256613100932905721

namespace A102071

/-- `A348840(∑[n+2]+5)` -/
def P14256613100932905721.Spec : Prop :=
  ∀ n, P14256613100932905721.a n = A102071 (n + 1)

end A102071

/-!
# A102072: E.g.f. sec(arcsinh(x)) = cosec(arccosh(x)) (even powers only).

The programs for A102072, there is no canonical definition to state claims against.
-/

/-! ## A102072.P9071371122060652517

`A355680(A323531(∑[n]))`
-/

namespace A102072.P9071371122060652517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355680 (A323531 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A102072.P9071371122060652517

/-!
# A102074: Denominators of e.g.f. sec(arccosh(x)) = cosec(arcsinh(x)).

The programs for A102074, there is no canonical definition to state claims against.
-/

/-! ## A102074.P12740936549670662614

`A102062(n+1)/(xor(n, n+1)+1)`
-/

namespace A102074.P12740936549670662614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102062 (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

end

end A102074.P12740936549670662614

/-! ## A102074.P2137045543550519914

`A102062(n+1)/A171977(n+1)`
-/

namespace A102074.P2137045543550519914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102062 (n + 1) : ℚ) / (A171977 (n + 1) : ℚ)

end

end A102074.P2137045543550519914

/-! ## A102074.P14721193990168833086

`A102062(n+1)/(2*A006519(n+1))`
-/

namespace A102074.P14721193990168833086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102062 (n + 1) : ℚ) / (2 * A006519 (n + 1) : ℚ)

end

end A102074.P14721193990168833086

/-!
# A102077: Denominators of e.g.f. cosec(arctanh(x)).

The programs for A102077, there is no canonical definition to state claims against.
-/

/-! ## A102077.P9618328313341701384

`(xor(n, n+1)+1)*A102074(n+1)/A208342(A006519(n+1))`
-/

namespace A102077.P9618328313341701384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (n + 1) + 1 : ℤ) * A102074 (n + 1) : ℚ) / (A208342 (A006519 (n + 1)).toNat : ℚ)

end

end A102077.P9618328313341701384

/-! ## A102077.P9973149978471593989

`A102074(n+1)*A171977(n+1)/A208342(A006519(n+1))`
-/

namespace A102077.P9973149978471593989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102074 (n + 1) * A171977 (n + 1) : ℚ) / (A208342 (A006519 (n + 1)).toNat : ℚ)

end

end A102077.P9973149978471593989

/-! ## A102077.P6699349888115052779

`A006519(2*(n+1))*A102074(n+1)/A208342(A006519(n+1))`
-/

namespace A102077.P6699349888115052779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (2 * (n + 1)) * A102074 (n + 1) : ℚ) / (A208342 (A006519 (n + 1)).toNat : ℚ)

end

end A102077.P6699349888115052779

/-! ## A102077.P11102844677180647893

`A102062(n+1)/A208342(A006519(n+1))`
-/

namespace A102077.P11102844677180647893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102062 (n + 1) : ℚ) / (A208342 (A006519 (n + 1)).toNat : ℚ)

end

end A102077.P11102844677180647893

/-!
# A102078: Second column of triangle A014784.

The programs for A102078, there is no canonical definition to state claims against.
-/

/-! ## A102078.P2638676911300510008

`Δ[A005439(n)]/A011782(n)`
-/

namespace A102078.P2638676911300510008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005439 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A011782 n : ℚ)

end

end A102078.P2638676911300510008

/-! ## A102078.P14584578712958890881

`A014784(A000124(n))-C(2, n+2)`
-/

namespace A102078.P14584578712958890881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014784 (A000124 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A102078.P14584578712958890881

/-! ## A102078.P10841494919469087192

`char[A181819(n+1)]*A014784(A000124(n))`
-/

namespace A102078.P10841494919469087192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A014784 (A000124 n).toNat

end

end A102078.P10841494919469087192

/-! ## A102078.P6435461379246045879

`record[(A131127(n)-A134058(n))*A014784(n)]`
-/

namespace A102078.P6435461379246045879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131127 n - A134058 n) * A014784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102078.P6435461379246045879

/-! ## A102078.P10051291852732160209

`A001221(A348241(n))*A014784(A000124(n))`
-/

namespace A102078.P10051291852732160209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A348241 n).toNat * A014784 (A000124 n).toNat

end

end A102078.P10051291852732160209

/-!
# A102080: Number of matchings in the C_n X P_2 (n-prism) graph.

The programs for A102080, the canonical program `A102080.P10972363247980953361` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102080 has offset 1).

The definition of A102080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102080.P10972363247980953361

`2*a(n-1)+4*a(n-2)-a(n-4)` with `a(0)=2, a(1)=12, a(2)=32, a(3)=108`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102080

/-- `2*a(n-1)+4*a(n-2)-a(n-4)` -/
def P10972363247980953361.Spec : Prop :=
  ∀ n, P10972363247980953361.a n = A102080 (n + 1)

theorem P10972363247980953361.correct : P10972363247980953361.Spec := by
  intro n
  simp only [A102080, Nat.add_sub_cancel]

end A102080

/-! ## A102080.P11675244635751878172

`A061703(n+1)-A010673(n+1)`
-/

namespace A102080.P11675244635751878172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061703 (n + 1) - A010673 (n + 1)

end

end A102080.P11675244635751878172

namespace A102080

/-- `A061703(n+1)-A010673(n+1)` -/
def P11675244635751878172.Spec : Prop :=
  ∀ n, P11675244635751878172.a n = A102080 (n + 1)

end A102080

/-! ## A102080.P7578954695059135447

`sqrt(A287168(n+1))-A010673(n+1)`
-/

namespace A102080.P7578954695059135447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A287168 (n + 1) : ℝ) - (A010673 (n + 1) : ℝ)

end

end A102080.P7578954695059135447

namespace A102080

/-- `sqrt(A287168(n+1))-A010673(n+1)` -/
def P7578954695059135447.Spec : Prop :=
  ∀ n, P7578954695059135447.a n = (A102080 (n + 1) : ℝ)

end A102080

/-! ## A102080.P3316942235600596109

`round(A316726(2*n+1)/A316726(n))`
-/

namespace A102080.P3316942235600596109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A316726 (2 * n + 1) : ℚ) / (A316726 n : ℚ))

end

end A102080.P3316942235600596109

namespace A102080

/-- `round(A316726(2*n+1)/A316726(n))` -/
def P3316942235600596109.Spec : Prop :=
  ∀ n, P3316942235600596109.a n = A102080 (n + 1)

end A102080

/-! ## A102080.P8825464210850148495

`A287428(∑[n+2])`
-/

namespace A102080.P8825464210850148495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287428 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102080.P8825464210850148495

namespace A102080

/-- `A287428(∑[n+2])` -/
def P8825464210850148495.Spec : Prop :=
  ∀ n, P8825464210850148495.a n = A102080 (n + 1)

end A102080

/-!
# A102083: a(n) = 8*n^2 + 4*n + 1.

The programs for A102083, the canonical program `A102083.P4890678275567249568` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102083 has offset 0).

The definition of A102083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²+4*n+1` (program `A102083.P4890678275567249568`, by `A102083.P4890678275567249568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102083.P4890678275567249568

`8*n²+4*n+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102083

/-- `8*n²+4*n+1` -/
def P4890678275567249568.Spec : Prop :=
  ∀ n, (P4890678275567249568.a n : ℤ) = A102083 n

theorem P4890678275567249568.correct : P4890678275567249568.Spec := by
  intro n
  simp only [A102083]

end A102083

/-! ## A102083.P1632726383746929708

`Δ[C(4*n, 3)/4]`
-/

namespace A102083.P1632726383746929708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 3 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102083.P1632726383746929708

namespace A102083

/-- `Δ[C(4*n, 3)/4]` -/
def P1632726383746929708.Spec : Prop :=
  ∀ n, P1632726383746929708.a n = (A102083 n : ℚ)

end A102083

/-! ## A102083.P6347170369746934288

`∑[a(n-1)+16]` with `a(0)=1, a(1)=12`
-/

namespace A102083.P6347170369746934288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102083.P6347170369746934288

namespace A102083

/-- `∑[a(n-1)+16]` -/
def P6347170369746934288.Spec : Prop :=
  ∀ n, (P6347170369746934288.a n : ℤ) = A102083 n

end A102083

/-! ## A102083.P13842773553791593963

`or(1, n*Δ[(2*n)²])`
-/

namespace A102083.P13842773553791593963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A102083.P13842773553791593963

namespace A102083

/-- `or(1, n*Δ[(2*n)²])` -/
def P13842773553791593963.Spec : Prop :=
  ∀ n, P13842773553791593963.a n = A102083 n

end A102083

/-! ## A102083.P3610206922948803968

`xor(1, n*Δ[(2*n)²])`
-/

namespace A102083.P3610206922948803968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A102083.P3610206922948803968

namespace A102083

/-- `xor(1, n*Δ[(2*n)²])` -/
def P3610206922948803968.Spec : Prop :=
  ∀ n, P3610206922948803968.a n = A102083 n

end A102083

/-! ## A102083.P5322535010905607222

`∑[ogf((1+10x+5x^2)/(1-2x+x^2))]`
-/

namespace A102083.P5322535010905607222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102083.P5322535010905607222

namespace A102083

/-- `∑[ogf((1+10x+5x^2)/(1-2x+x^2))]` -/
def P5322535010905607222.Spec : Prop :=
  ∀ n, P5322535010905607222.a n = A102083 n

end A102083

/-! ## A102083.P3524722373569356249

`ogf((1+10x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A102083.P3524722373569356249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 5] [1, -3, 3, -1] n

end

end A102083.P3524722373569356249

namespace A102083

/-- `ogf((1+10x+5x^2)/(1-3x+3x^2-x^3))` -/
def P3524722373569356249.Spec : Prop :=
  ∀ n, P3524722373569356249.a n = A102083 n

end A102083

/-! ## A102083.P5448215071335086811

`record[(1-n)²-lcm(n-2, 2*n)]`
-/

namespace A102083.P5448215071335086811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (Int.lcm ((n : ℤ) - 2) (2 * n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102083.P5448215071335086811

namespace A102083

/-- `record[(1-n)²-lcm(n-2, 2*n)]` -/
def P5448215071335086811.Spec : Prop :=
  ∀ n, P5448215071335086811.a n = A102083 n

end A102083

/-! ## A102083.P16473101463151438835

`floor(a(n-1)-4*(1-4*n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A102083.P16473101463151438835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 4 * (1 - (4 * n : ℤ))

end

end A102083.P16473101463151438835

namespace A102083

/-- `floor(a(n-1)-4*(1-4*n))` -/
def P16473101463151438835.Spec : Prop :=
  ∀ n, P16473101463151438835.a n = A102083 n

theorem P16473101463151438835.correct : P16473101463151438835.Spec := by
  intro n
  induction n with
  | zero => simp [A102083, A102083.P16473101463151438835.a, A102083.P4890678275567249568.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A102083, Nat.add_sub_cancel, A102083.P16473101463151438835.a, A102083.P4890678275567249568.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A102083

/-! ## A102083.P4069873628075660890

`(A016814(n)+1)/2`
-/

namespace A102083.P4069873628075660890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016814 n + 1 : ℚ) / 2

end

end A102083.P4069873628075660890

namespace A102083

/-- `(A016814(n)+1)/2` -/
def P4069873628075660890.Spec : Prop :=
  ∀ n, P4069873628075660890.a n = (A102083 n : ℚ)

end A102083

/-! ## A102083.P1531740709503199349

`round(A016813(n)²/2)`
-/

namespace A102083.P1531740709503199349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016813 n ^ 2 : ℚ) / 2)

end

end A102083.P1531740709503199349

namespace A102083

/-- `round(A016813(n)²/2)` -/
def P1531740709503199349.Spec : Prop :=
  ∀ n, P1531740709503199349.a n = A102083 n

end A102083

/-! ## A102083.P8278789706407298519

`(sqrt(A016816(n))+1)/2`
-/

namespace A102083.P8278789706407298519
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A016816 n : ℝ) + 1) / 2

end

end A102083.P8278789706407298519

namespace A102083

/-- `(sqrt(A016816(n))+1)/2` -/
def P8278789706407298519.Spec : Prop :=
  ∀ n, P8278789706407298519.a n = (A102083 n : ℝ)

end A102083

/-! ## A102083.P13288979920736157823

`∑[A158547(n)]/(n+1)`
-/

namespace A102083.P13288979920736157823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158547 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A102083.P13288979920736157823

namespace A102083

/-- `∑[A158547(n)]/(n+1)` -/
def P13288979920736157823.Spec : Prop :=
  ∀ n, P13288979920736157823.a n = (A102083 n : ℚ)

end A102083

/-! ## A102083.P6280066730994436253

`(A016755(n)-n)/(n+1)`
-/

namespace A102083.P6280066730994436253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016755 n - (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A102083.P6280066730994436253

namespace A102083

/-- `(A016755(n)-n)/(n+1)` -/
def P6280066730994436253.Spec : Prop :=
  ∀ n, P6280066730994436253.a n = (A102083 n : ℚ)

end A102083

/-! ## A102083.P16120494991183388201

`A164016(n)%A087348(n+1)`
-/

namespace A102083.P16120494991183388201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164016 n) (A087348 (n + 1))

end

end A102083.P16120494991183388201

namespace A102083

/-- `A164016(n)%A087348(n+1)` -/
def P16120494991183388201.Spec : Prop :=
  ∀ n, P16120494991183388201.a n = A102083 n

end A102083

/-! ## A102083.P12637542916033545928

`A256833(n)%A108928(n+1)`
-/

namespace A102083.P12637542916033545928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256833 n) (A108928 (n + 1))

end

end A102083.P12637542916033545928

namespace A102083

/-- `A256833(n)%A108928(n+1)` -/
def P12637542916033545928.Spec : Prop :=
  ∀ n, P12637542916033545928.a n = A102083 n

end A102083

/-! ## A102083.P14289936653102400071

`A359844(n)%A106231(n+1)`
-/

namespace A102083.P14289936653102400071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359844 n) (A106231 (n + 1))

end

end A102083.P14289936653102400071

namespace A102083

/-- `A359844(n)%A106231(n+1)` -/
def P14289936653102400071.Spec : Prop :=
  ∀ n, P14289936653102400071.a n = A102083 n

end A102083

/-! ## A102083.P5596102740647692074

`Δ[Δ[C(2*n, 4)]]`
-/

namespace A102083.P5596102740647692074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102083.P5596102740647692074

namespace A102083

/-- `Δ[Δ[C(2*n, 4)]]` -/
def P5596102740647692074.Spec : Prop :=
  ∀ n, P5596102740647692074.a n = A102083 n

end A102083

/-! ## A102083.P2833750031342781687

`A001844(2*n)`
-/

namespace A102083.P2833750031342781687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (2 * n)

end

end A102083.P2833750031342781687

namespace A102083

/-- `A001844(2*n)` -/
def P2833750031342781687.Spec : Prop :=
  ∀ n, P2833750031342781687.a n = A102083 n

end A102083

/-! ## A102083.P1654690322175659273

`A360418(4*n+1)`
-/

namespace A102083.P1654690322175659273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360418 (4 * n + 1)

end

end A102083.P1654690322175659273

namespace A102083

/-- `A360418(4*n+1)` -/
def P1654690322175659273.Spec : Prop :=
  ∀ n, P1654690322175659273.a n = A102083 n

end A102083

/-!
# A102084: a(1) = 0; for n>0, write 2n=p+q (p, q prime), p*q maximal; then a(n)=p*q (see A073046).

The programs for A102084, there is no canonical definition to state claims against.
-/

/-! ## A102084.P8308591594805934641

`(n+1)²-A325142(n+1)²`
-/

namespace A102084.P8308591594805934641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A325142 (n + 1) ^ 2

end

end A102084.P8308591594805934641

/-! ## A102084.P13467848003886113053

`(A005843(n+1)-A331634(2*(n+1)))*A331634(2*(n+1))`
-/

namespace A102084.P13467848003886113053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) - A331634 (2 * (n + 1))) * A331634 (2 * (n + 1))

end

end A102084.P13467848003886113053

/-! ## A102084.P1261531135160182770

`A099303(2*(n+1))`
-/

namespace A102084.P1261531135160182770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (2 * (n + 1))

end

end A102084.P1261531135160182770

/-! ## A102084.P513426508391321370

`A099303(n+n+2)+A098699(A098700(n+1))`
-/

namespace A102084.P513426508391321370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (n + n + 2) + A098699 (A098700 (n + 1)).toNat

end

end A102084.P513426508391321370

/-! ## A102084.P4748402536763949225

`∑{d}[A099303(n+n+2), A000010(#)]`
-/

namespace A102084.P4748402536763949225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (n + n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A102084.P4748402536763949225

/-! ## A102084.P10802143649113864774

`A193315(n+1)-char[(8*n)²]`
-/

namespace A102084.P10802143649113864774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193315 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A102084.P10802143649113864774

/-! ## A102084.P15596563057765687692

`A023891(A193315(n+1))`
-/

namespace A102084.P15596563057765687692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (A193315 (n + 1)).toNat

end

end A102084.P15596563057765687692

/-! ## A102084.P17614237478010065914

`A057427(n)*A193315(n+1)`
-/

namespace A102084.P17614237478010065914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A193315 (n + 1)

end

end A102084.P17614237478010065914

/-! ## A102084.P2333233767445209084

`A178334(n)*A193315(n+1)`
-/

namespace A102084.P2333233767445209084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A193315 (n + 1)

end

end A102084.P2333233767445209084

/-! ## A102084.P939113760038563427

`A178489(n)*A193315(n+1)`
-/

namespace A102084.P939113760038563427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A193315 (n + 1)

end

end A102084.P939113760038563427

/-!
# A102086: Triangular matrix, read by rows, that satisfies: T(n,k) = [T^2](n-1,k) when n>k>=0, with T(n,n) = (n+1).

The programs for A102086, there is no canonical definition to state claims against.
-/

/-! ## A102086.P3836298161459195017

`A002260(n+1)*A106208(n)`
-/

namespace A102086.P3836298161459195017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A106208 n

end

end A102086.P3836298161459195017

/-! ## A102086.P8564710385115963503

`(A002262(n)+1)*A106208(n)`
-/

namespace A102086.P8564710385115963503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A106208 n

end

end A102086.P8564710385115963503

/-! ## A102086.P12378818518890252163

`A002262(comp[∑[n]])*A106208(n)`
-/

namespace A102086.P12378818518890252163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A106208 n

end

end A102086.P12378818518890252163

/-! ## A102086.P65765037254441764

`abs(A140756(n+1))*A106208(n)`
-/

namespace A102086.P65765037254441764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * A106208 n

end

end A102086.P65765037254441764

/-! ## A102086.P16611227412453969663

`A000005(A059268(n))*A106208(n)`
-/

namespace A102086.P16611227412453969663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A106208 n

end

end A102086.P16611227412453969663

/-!
# A102087: Column 1 of triangular matrix A102086, which shifts upward to exclude the main diagonal under matrix square.

The programs for A102087, there is no canonical definition to state claims against.
-/

/-! ## A102087.P2302296988995923960

`and(-2, A102086(A000124(n)))`
-/

namespace A102087.P2302296988995923960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A102086 (A000124 n).toNat)

end

end A102087.P2302296988995923960

/-! ## A102087.P17806251089257053157

`record[A102086(n)*A141169(n)]`
-/

namespace A102087.P17806251089257053157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102086 n * A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102087.P17806251089257053157

/-! ## A102087.P9229080253979178055

`record[A102086(n)*A316101(n)]`
-/

namespace A102087.P9229080253979178055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102086 n * A316101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102087.P9229080253979178055

/-! ## A102087.P11349824024395750707

`record[A102086(n)*A318753(n)]`
-/

namespace A102087.P11349824024395750707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102086 n * A318753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102087.P11349824024395750707

/-! ## A102087.P7062843674730679722

`record[lcm(A102086(n), A112367(n))]`
-/

namespace A102087.P7062843674730679722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102086 n) (A112367 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102087.P7062843674730679722

/-!
# A102088: Row sums of triangular matrix A102086, which shifts upward to exclude the main diagonal under matrix square.

The programs for A102088, there is no canonical definition to state claims against.
-/

/-! ## A102088.P9885452432107523130

`xor(n, ∑[A263089((n+3)^n)-n])`
-/

namespace A102088.P9885452432107523130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263089 ((n + 3) ^ n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102088.P9885452432107523130

/-!
# A102090: Number of matchings in the C_n X P_3 graph (C_n is the cycle graph on n vertices and P_3 is the path graph on 3 vertices).

The programs for A102090, there is no canonical definition to state claims against.
-/

/-! ## A102090.P139347198941311980

`A287428((n+3)²-∑[n+1])`
-/

namespace A102090.P139347198941311980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287428 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102090.P139347198941311980

/-! ## A102090.P3940875935027817921

`A287428(A034856(n+3))%A155654(n+3)`
-/

namespace A102090.P3940875935027817921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287428 (A034856 (n + 3)).toNat) (A155654 (n + 3))

end

end A102090.P3940875935027817921

/-!
# A102091: Number of perfect matchings in the C_{2n} X P_3 graph (C_{2n} is the cycle graph on 2n vertices and P_3 is the path graph on 3 vertices).

The programs for A102091, the canonical program `A102091.P12971783791869639371` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102091 has offset 1).

The definition of A102091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102091.P12971783791869639371

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=12, a(1)=32, a(2)=108`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102091

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P12971783791869639371.Spec : Prop :=
  ∀ n, P12971783791869639371.a n = A102091 (n + 1)

theorem P12971783791869639371.correct : P12971783791869639371.Spec := by
  intro n
  simp only [A102091, Nat.add_sub_cancel]

end A102091

/-! ## A102091.P15720219132217414654

`4*A102206(n)`
-/

namespace A102091.P15720219132217414654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A102206 n

end

end A102091.P15720219132217414654

namespace A102091

/-- `4*A102206(n)` -/
def P15720219132217414654.Spec : Prop :=
  ∀ n, P15720219132217414654.a n = A102091 (n + 1)

end A102091

/-! ## A102091.P422387889285970946

`4*(∑[∑[ceil((sqrt(3)+2)^n)]]+2)`
-/

namespace A102091.P422387889285970946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A102091.P422387889285970946

namespace A102091

/-- `4*(∑[∑[ceil((sqrt(3)+2)^n)]]+2)` -/
def P422387889285970946.Spec : Prop :=
  ∀ n, P422387889285970946.a n = A102091 (n + 1)

end A102091

/-! ## A102091.P8976757981068053614

`Δ[ceil((sqrt(3)+2)*a(n-1))]+4` with `a(0)=2, a(1)=10`
-/

namespace A102091.P8976757981068053614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A102091.P8976757981068053614

namespace A102091

/-- `Δ[ceil((sqrt(3)+2)*a(n-1))]+4` -/
def P8976757981068053614.Spec : Prop :=
  ∀ n, P8976757981068053614.a n = A102091 (n + 1)

end A102091

/-! ## A102091.P9743198786423771197

`record[4*a(n-1)-a(n-2)]+4` with `a(0)=8, a(1)=28, a(2)=8`
-/

namespace A102091.P9743198786423771197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 28, 8] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4

end

end A102091.P9743198786423771197

namespace A102091

/-- `record[4*a(n-1)-a(n-2)]+4` -/
def P9743198786423771197.Spec : Prop :=
  ∀ n, P9743198786423771197.a n = A102091 (n + 1)

end A102091

/-! ## A102091.P7102602720720382793

`Δ[4*∑[A121401(n)]]`
-/

namespace A102091.P7102602720720382793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102091.P7102602720720382793

namespace A102091

/-- `Δ[4*∑[A121401(n)]]` -/
def P7102602720720382793.Spec : Prop :=
  ∀ n, P7102602720720382793.a n = A102091 (n + 1)

end A102091

/-! ## A102091.P1196768858820870738

`2*A335025(n+1)+2`
-/

namespace A102091.P1196768858820870738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A335025 (n + 1) + 2

end

end A102091.P1196768858820870738

namespace A102091

/-- `2*A335025(n+1)+2` -/
def P1196768858820870738.Spec : Prop :=
  ∀ n, P1196768858820870738.a n = A102091 (n + 1)

end A102091

/-! ## A102091.P6212170913024022841

`A321119(2*(n+1))+4`
-/

namespace A102091.P6212170913024022841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (2 * (n + 1)) + 4

end

end A102091.P6212170913024022841

namespace A102091

/-- `A321119(2*(n+1))+4` -/
def P6212170913024022841.Spec : Prop :=
  ∀ n, P6212170913024022841.a n = A102091 (n + 1)

end A102091

/-! ## A102091.P3879292460290569872

`4*(A092184(n+1)+1)+4`
-/

namespace A102091.P3879292460290569872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A092184 (n + 1) + 1) + 4

end

end A102091.P3879292460290569872

namespace A102091

/-- `4*(A092184(n+1)+1)+4` -/
def P3879292460290569872.Spec : Prop :=
  ∀ n, P3879292460290569872.a n = A102091 (n + 1)

end A102091

/-! ## A102091.P14544919540443111246

`A102206(n)/(A033999(n)/2)²`
-/

namespace A102091.P14544919540443111246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102206 n : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A102091.P14544919540443111246

namespace A102091

/-- `A102206(n)/(A033999(n)/2)²` -/
def P14544919540443111246.Spec : Prop :=
  ∀ n, P14544919540443111246.a n = (A102091 (n + 1) : ℚ)

end A102091

/-! ## A102091.P18239930497428928635

`A334277(n+1)-A349948(n+1)`
-/

namespace A102091.P18239930497428928635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334277 (n + 1) - A349948 (n + 1)

end

end A102091.P18239930497428928635

namespace A102091

/-- `A334277(n+1)-A349948(n+1)` -/
def P18239930497428928635.Spec : Prop :=
  ∀ n, P18239930497428928635.a n = A102091 (n + 1)

end A102091

/-!
# A102092: a(n)< a(n+1) and: each digit is the absolute difference of the previous two; each digit is the absolute difference of the next two; each digit is the absolute difference of its two neighbors.

The programs for A102092, there is no canonical definition to state claims against.
-/

/-! ## A102092.P3105495767455693264

`A267209(A000217(n))%A135655(n+1)`
-/

namespace A102092.P3105495767455693264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267209 (A000217 n).toNat) (A135655 (n + 1))

end

end A102092.P3105495767455693264

/-! ## A102092.P5772040736009636689

`A105026(A075189(n+1))`
-/

namespace A102092.P5772040736009636689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105026 (A075189 (n + 1)).toNat

end

end A102092.P5772040736009636689

/-!
# A102093: Slowest increasing sequence where the digits, taken one by one, show the pattern odd/odd/even/even/odd/odd/even/even... Only the terms < 300 differ from A098161.

The programs for A102093, there is no canonical definition to state claims against.
-/

/-! ## A102093.P8632403828765965030

`∩[A180412(n+1), A206912(n+1)]`
-/

namespace A102093.P8632403828765965030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102093.P8632403828765965030

/-! ## A102093.P3246681684900474446

`∩[A180412(n+1), A330143(n+1)]`
-/

namespace A102093.P3246681684900474446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102093.P3246681684900474446

/-! ## A102093.P14907045759716530647

`A071240(n)-A131576(A005191(n))`
-/

namespace A102093.P14907045759716530647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071240 n - A131576 (A005191 n).toNat

end

end A102093.P14907045759716530647

/-! ## A102093.P12709081476850258667

`A071240(n)-A001221(A320185(n))`
-/

namespace A102093.P12709081476850258667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071240 n - A001221 (A320185 n).toNat

end

end A102093.P12709081476850258667

/-!
# A102094: a(n) = (2*n-1)*(2*n+1)^2.

The programs for A102094, the canonical program `A102094.P1850624615912936497` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102094 has offset 1).

The definition of A102094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(2*(n+1)+1)²` (program `A102094.P1850624615912936497`, by `A102094.P1850624615912936497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102094.P1850624615912936497

`(2*(n+1)-1)*(2*(n+1)+1)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102094

/-- `(2*(n+1)-1)*(2*(n+1)+1)²` -/
def P1850624615912936497.Spec : Prop :=
  ∀ n, P1850624615912936497.a n = A102094 (n + 1)

theorem P1850624615912936497.correct : P1850624615912936497.Spec := by
  intro n
  simp only [A102094, Nat.add_sub_cancel]

end A102094

/-! ## A102094.P4210693311576809696

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=9, a(1)=75, a(2)=245, a(3)=567`
-/

namespace A102094.P4210693311576809696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 75, 245, 567] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A102094.P4210693311576809696

namespace A102094

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4210693311576809696.Spec : Prop :=
  ∀ n, P4210693311576809696.a n = A102094 (n + 1)

theorem P4210693311576809696.correct : P4210693311576809696.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A102094, Nat.add_sub_cancel, A102094.P4210693311576809696.a, A102094.P1850624615912936497.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A102094, Nat.add_sub_cancel, A102094.P4210693311576809696.a, A102094.P1850624615912936497.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A102094

/-! ## A102094.P5732272395826567566

`lcm((n+3+n)², Δ[n²])`
-/

namespace A102094.P5732272395826567566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 3 + n) ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A102094.P5732272395826567566

namespace A102094

/-- `lcm((n+3+n)², Δ[n²])` -/
def P5732272395826567566.Spec : Prop :=
  ∀ n, (P5732272395826567566.a n : ℤ) = A102094 (n + 1)

end A102094

/-! ## A102094.P7655375264733140162

`record[(n+1)*xor(1, n+2)²]`
-/

namespace A102094.P7655375264733140162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 1 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102094.P7655375264733140162

namespace A102094

/-- `record[(n+1)*xor(1, n+2)²]` -/
def P7655375264733140162.Spec : Prop :=
  ∀ n, (P7655375264733140162.a n : ℤ) = A102094 (n + 1)

end A102094

/-! ## A102094.P3385256916129312477

`record[(n+1)*(n+3)^gcd(2, n)]`
-/

namespace A102094.P3385256916129312477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3) ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102094.P3385256916129312477

namespace A102094

/-- `record[(n+1)*(n+3)^gcd(2, n)]` -/
def P3385256916129312477.Spec : Prop :=
  ∀ n, (P3385256916129312477.a n : ℤ) = A102094 (n + 1)

end A102094

/-! ## A102094.P2366185683915348781

`record[lcm(n+1, n+3)²/(n+1)]`
-/

namespace A102094.P2366185683915348781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 3) ^ 2 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102094.P2366185683915348781

namespace A102094

/-- `record[lcm(n+1, n+3)²/(n+1)]` -/
def P2366185683915348781.Spec : Prop :=
  ∀ n, P2366185683915348781.a n = (A102094 (n + 1) : ℚ)

end A102094

/-! ## A102094.P13331581777522579221

`or(1, (2*n+1)*(2*n+3)²)`
-/

namespace A102094.P13331581777522579221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * n + 1) * (2 * n + 3) ^ 2)

end

end A102094.P13331581777522579221

namespace A102094

/-- `or(1, (2*n+1)*(2*n+3)²)` -/
def P13331581777522579221.Spec : Prop :=
  ∀ n, (P13331581777522579221.a n : ℤ) = A102094 (n + 1)

end A102094

/-! ## A102094.P3930422357625684292

`lcm(2*n+1, 2*n+3)²/(2*n+1)`
-/

namespace A102094.P3930422357625684292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (2 * n + 3) ^ 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A102094.P3930422357625684292

namespace A102094

/-- `lcm(2*n+1, 2*n+3)²/(2*n+1)` -/
def P3930422357625684292.Spec : Prop :=
  ∀ n, P3930422357625684292.a n = (A102094 (n + 1) : ℚ)

end A102094

/-! ## A102094.P12536810582497553904

`(n+2)*A254527(n+1)-3`
-/

namespace A102094.P12536810582497553904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A254527 (n + 1) - 3

end

end A102094.P12536810582497553904

namespace A102094

/-- `(n+2)*A254527(n+1)-3` -/
def P12536810582497553904.Spec : Prop :=
  ∀ n, P12536810582497553904.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P16189700237671555400

`(n+1)*A273220(n+2)+n`
-/

namespace A102094.P16189700237671555400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A273220 (n + 2) + (n : ℤ)

end

end A102094.P16189700237671555400

namespace A102094

/-- `(n+1)*A273220(n+2)+n` -/
def P16189700237671555400.Spec : Prop :=
  ∀ n, P16189700237671555400.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P11607162299433754001

`(n+2)*A060820(n+1)+n-1`
-/

namespace A102094.P11607162299433754001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060820 (n + 1) + ((n : ℤ) - 1)

end

end A102094.P11607162299433754001

namespace A102094

/-- `(n+2)*A060820(n+1)+n-1` -/
def P11607162299433754001.Spec : Prop :=
  ∀ n, P11607162299433754001.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P14783736593511426264

`∑[(2*n+1)*2*(A016945(n)+2)]-1`
-/

namespace A102094.P14783736593511426264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (2 * (A016945 n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A102094.P14783736593511426264

namespace A102094

/-- `∑[(2*n+1)*2*(A016945(n)+2)]-1` -/
def P14783736593511426264.Spec : Prop :=
  ∀ n, P14783736593511426264.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P9217338479100965926

`A192544(n+1)+A083079(n)`
-/

namespace A102094.P9217338479100965926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1) + A083079 n

end

end A102094.P9217338479100965926

namespace A102094

/-- `A192544(n+1)+A083079(n)` -/
def P9217338479100965926.Spec : Prop :=
  ∀ n, P9217338479100965926.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P14680422183001511729

`A199833(n+1)+A162540(n)`
-/

namespace A102094.P14680422183001511729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199833 (n + 1) + A162540 n

end

end A102094.P14680422183001511729

namespace A102094

/-- `A199833(n+1)+A162540(n)` -/
def P14680422183001511729.Spec : Prop :=
  ∀ n, P14680422183001511729.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P1603470786193678881

`A192418(n+1)+A181890(n)`
-/

namespace A102094.P1603470786193678881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192418 (n + 1) + A181890 n

end

end A102094.P1603470786193678881

namespace A102094

/-- `A192418(n+1)+A181890(n)` -/
def P1603470786193678881.Spec : Prop :=
  ∀ n, P1603470786193678881.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P7542498440584076532

`A358035(n+1)+A152110(n)`
-/

namespace A102094.P7542498440584076532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358035 (n + 1) + A152110 n

end

end A102094.P7542498440584076532

namespace A102094

/-- `A358035(n+1)+A152110(n)` -/
def P7542498440584076532.Spec : Prop :=
  ∀ n, P7542498440584076532.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P17690950593442880547

`A004767(n)²+A016755(n)-1`
-/

namespace A102094.P17690950593442880547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n ^ 2 + (A016755 n - 1)

end

end A102094.P17690950593442880547

namespace A102094

/-- `A004767(n)²+A016755(n)-1` -/
def P17690950593442880547.Spec : Prop :=
  ∀ n, P17690950593442880547.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P13938443660127850245

`A069075(n+1)/Δ[n²]`
-/

namespace A102094.P13938443660127850245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069075 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A102094.P13938443660127850245

namespace A102094

/-- `A069075(n+1)/Δ[n²]` -/
def P13938443660127850245.Spec : Prop :=
  ∀ n, P13938443660127850245.a n = (A102094 (n + 1) : ℚ)

end A102094

/-! ## A102094.P12647540689177119729

`∑[A153808(n+1)]+2*n+1`
-/

namespace A102094.P12647540689177119729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A102094.P12647540689177119729

namespace A102094

/-- `∑[A153808(n+1)]+2*n+1` -/
def P12647540689177119729.Spec : Prop :=
  ∀ n, P12647540689177119729.a n = A102094 (n + 1)

end A102094

/-! ## A102094.P9036441546775391875

`(n+2)*A080856(n+1)+n-1`
-/

namespace A102094.P9036441546775391875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A080856 (n + 1) + ((n : ℤ) - 1)

end

end A102094.P9036441546775391875

namespace A102094

/-- `(n+2)*A080856(n+1)+n-1` -/
def P9036441546775391875.Spec : Prop :=
  ∀ n, P9036441546775391875.a n = A102094 (n + 1)

end A102094

/-!
# A102095: Greatest edge length of a cuboid having integer edge lengths, volume n and minimal surface area under those restrictions.

The programs for A102095, there is no canonical definition to state claims against.
-/

/-! ## A102095.P9790839060884392882

`A147763(n+1)+A102097(n+1)`
-/

namespace A102095.P9790839060884392882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147763 (n + 1) + A102097 (n + 1)

end

end A102095.P9790839060884392882

/-! ## A102095.P7353371297494363269

`A033677((n+1)/A102096(n+1))`
-/

namespace A102095.P7353371297494363269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102096 (n + 1) : ℚ))).toNat

end

end A102095.P7353371297494363269

/-! ## A102095.P713915814637080402

`A033677((n+1)/A102097(n+1))`
-/

namespace A102095.P713915814637080402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102097 (n + 1) : ℚ))).toNat

end

end A102095.P713915814637080402

/-! ## A102095.P17450106981987090766

`(n+1)/(A102096(n+1)*A102097(n+1))`
-/

namespace A102095.P17450106981987090766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A102096 (n + 1) * A102097 (n + 1) : ℚ)

end

end A102095.P17450106981987090766

/-! ## A102095.P6613979366124543089

`A033677((n+1)/a(floor(n/A006530(n+1))))` with `a(0)=1`
-/

namespace A102095.P6613979366124543089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033677 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (a ⌊(n : ℚ) / (A006530 (n + 1) : ℚ)⌋.toNat : ℚ))).toNat

end

end A102095.P6613979366124543089

/-! ## A102095.P7769197741238466444

`A147763(n+1)+A102096(A079880(n+1))`
-/

namespace A102095.P7769197741238466444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147763 (n + 1) + A102096 (A079880 (n + 1)).toNat

end

end A102095.P7769197741238466444

/-! ## A102095.P14861977051304766831

`A033677(A033676((n+1)*A002034(n+1)))`
-/

namespace A102095.P14861977051304766831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A033676 ((n + 1 : ℤ) * A002034 (n + 1)).toNat).toNat

end

end A102095.P14861977051304766831

/-!
# A102096: Second greatest (or second least) edge length of a cuboid having integer edge lengths, volume n and minimal surface area under those restrictions.

The programs for A102096, there is no canonical definition to state claims against.
-/

/-! ## A102096.P11864731135264400017

`A102097((n+1)*A014673(n+1))`
-/

namespace A102096.P11864731135264400017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 ((n + 1 : ℤ) * A014673 (n + 1)).toNat

end

end A102096.P11864731135264400017

/-! ## A102096.P18375529828514531531

`A102097((n+1)*A079879(n+1))`
-/

namespace A102096.P18375529828514531531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 ((n + 1 : ℤ) * A079879 (n + 1)).toNat

end

end A102096.P18375529828514531531

/-! ## A102096.P9455161218978436934

`A033677((n+1)/A102095(n+1))`
-/

namespace A102096.P9455161218978436934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102095 (n + 1) : ℚ))).toNat

end

end A102096.P9455161218978436934

/-! ## A102096.P12475936690055655546

`A033676((n+1)/A102097(n+1))`
-/

namespace A102096.P12475936690055655546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102097 (n + 1) : ℚ))).toNat

end

end A102096.P12475936690055655546

/-! ## A102096.P3058314459274696947

`A095163((n+1)/A102095(n+1))`
-/

namespace A102096.P3058314459274696947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102095 (n + 1) : ℚ))).toNat

end

end A102096.P3058314459274696947

/-! ## A102096.P10325652213534083564

`A102097(17*(n+1)/A102097(n+1))`
-/

namespace A102096.P10325652213534083564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (SequenceMachineLib.roundAway ((17 * (n + 1) : ℚ) / (A102097 (n + 1) : ℚ))).toNat

end

end A102096.P10325652213534083564

/-!
# A102097: Least edge length of a cuboid having integer edge lengths, volume n and minimal surface area under those restrictions.

The programs for A102097, there is no canonical definition to state claims against.
-/

/-! ## A102097.P14697511068408212649

`A102096(A079880(n+1)*A211666(n+3))`
-/

namespace A102097.P14697511068408212649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102096 (A079880 (n + 1) * A211666 (n + 3)).toNat

end

end A102097.P14697511068408212649

/-! ## A102097.P3407681546758919552

`A106459(A256348(n+5))+A102096(A079880(n+1))`
-/

namespace A102097.P3407681546758919552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (A256348 (n + 5)).toNat + A102096 (A079880 (n + 1)).toNat

end

end A102097.P3407681546758919552

/-! ## A102097.P11659954186068566146

`A106459(A001126(n+1))+A102096(A079880(n+1))`
-/

namespace A102097.P11659954186068566146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (A001126 (n + 1)).toNat + A102096 (A079880 (n + 1)).toNat

end

end A102097.P11659954186068566146

/-! ## A102097.P5627893272420201732

`A102096(A079880(n+1))+A085982(A182732(n+1))`
-/

namespace A102097.P5627893272420201732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102096 (A079880 (n + 1)).toNat + A085982 (A182732 (n + 1)).toNat

end

end A102097.P5627893272420201732

/-! ## A102097.P15237191749792990247

`A102096(A079880(n+1))+A000007(A115267(3*n+5))`
-/

namespace A102097.P15237191749792990247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102096 (A079880 (n + 1)).toNat + A000007 (A115267 (3 * n + 5)).toNat

end

end A102097.P15237191749792990247

/-! ## A102097.P3750048687005436244

`A102095(n+1)-A147763(n+1)`
-/

namespace A102097.P3750048687005436244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102095 (n + 1) - A147763 (n + 1)

end

end A102097.P3750048687005436244

/-! ## A102097.P704683878396341578

`A033676((n+1)/A102095(n+1))`
-/

namespace A102097.P704683878396341578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102095 (n + 1) : ℚ))).toNat

end

end A102097.P704683878396341578

/-! ## A102097.P15672027338352357081

`A033676((n+1)/A102096(n+1))`
-/

namespace A102097.P15672027338352357081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102096 (n + 1) : ℚ))).toNat

end

end A102097.P15672027338352357081

/-! ## A102097.P12588885297600834845

`(n+1)/(A102095(n+1)*A102096(n+1))`
-/

namespace A102097.P12588885297600834845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A102095 (n + 1) * A102096 (n + 1) : ℚ)

end

end A102097.P12588885297600834845

/-!
# A102098: Triangular matrix, read by rows, that satisfies: T(n,k) = [T^3](n-1,k) when n>k>=0, with T(n,n) = (n+1).

The programs for A102098, there is no canonical definition to state claims against.
-/

/-! ## A102098.P16770188520630206864

`A066657(∑[p?[A304025(n+1)]])`
-/

namespace A102098.P16770188520630206864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304025 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102098.P16770188520630206864

/-! ## A102098.P15793350221608039802

`A242528(A072241(n+1))+A094216(n+1)`
-/

namespace A102098.P15793350221608039802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242528 (A072241 (n + 1)).toNat + A094216 (n + 1)

end

end A102098.P15793350221608039802

/-!
# A102099: Column 1 of triangular matrix A102098, which shifts upward to exclude the main diagonal under matrix cube.

The programs for A102099, there is no canonical definition to state claims against.
-/

/-! ## A102099.P3022296512603305085

`record[and(1, n)*A102918(n)]`
-/

namespace A102099.P3022296512603305085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A102918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102099.P3022296512603305085

/-! ## A102099.P13537910630668716846

`A102918(record[A093411(n)])`
-/

namespace A102099.P13537910630668716846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102918 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102099.P13537910630668716846

/-! ## A102099.P2828305484507769584

`A102918(record[A102899(n)])`
-/

namespace A102099.P2828305484507769584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102918 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102099.P2828305484507769584

/-! ## A102099.P14264415263411331895

`A102918(record[A181983(n)])`
-/

namespace A102099.P14264415263411331895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102918 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102099.P14264415263411331895

/-! ## A102099.P3003921634164174206

`A102918(A014681(2*n))`
-/

namespace A102099.P3003921634164174206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102918 (A014681 (2 * n)).toNat

end

end A102099.P3003921634164174206

