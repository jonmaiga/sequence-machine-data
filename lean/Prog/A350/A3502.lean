import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A350208: Given the sequence of the digits of the Champernowne constant A033307 we start with number 1 and advance as many digits as the number that it indicates. If the digit is 0 then advance 10 positions.

The programs for A350208, there is no canonical definition to state claims against.
-/

/-! ## A350208.P2688664488951842992

`Δ[A098729(a(n-1))]` with `a(0)=2`
-/

namespace A350208.P2688664488951842992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A098729 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350208.P2688664488951842992

/-!
# A350211: Numbers k such that the arithmetic mean of the digits of k! is an integer.

The programs for A350211, there is no canonical definition to state claims against.
-/

/-! ## A350211.P4586146129774788863

`eq[0, A004152(n)%A034886(n)]`
-/

namespace A350211.P4586146129774788863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004152 n) (A034886 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350211.P4586146129774788863

/-! ## A350211.P9002784996041217173

`eq[A060277(n+1), A134119(A065033(n))]`
-/

namespace A350211.P9002784996041217173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350211.P9002784996041217173

/-! ## A350211.P9585644622648548520

`eq[A060277(n+1), A134119(A106249(n))]`
-/

namespace A350211.P9585644622648548520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A106249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350211.P9585644622648548520

/-! ## A350211.P1116707722298199851

`eq[A187185(n+1), A187185(A334507(n+1))]`
-/

namespace A350211.P1116707722298199851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A334507 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350211.P1116707722298199851

/-! ## A350211.P17397422191665802177

`lt[A343122(n+2), A105561(A299281(n+3))]`
-/

namespace A350211.P17397422191665802177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343122 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105561 (A299281 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350211.P17397422191665802177

/-!
# A350215: A048715, written in binary.

The programs for A350215, there is no canonical definition to state claims against.
-/

/-! ## A350215.P9332251258478332495

`∩[A014417(n), A115814(n)]`
-/

namespace A350215.P9332251258478332495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115814 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350215.P9332251258478332495

/-! ## A350215.P1155488150227387718

`A007088(eq[0, and(n, 6*n)])`
-/

namespace A350215.P1155488150227387718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A350215.P1155488150227387718

/-! ## A350215.P13415927673258882960

`A007088(lt[and(n, 6*n), 1])`
-/

namespace A350215.P13415927673258882960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (6 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350215.P13415927673258882960

/-! ## A350215.P10734467094165861462

`record[gcd(and(n, 6*n), A007088(n))]`
-/

namespace A350215.P10734467094165861462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land n (6 * n) : ℤ) (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350215.P10734467094165861462

/-! ## A350215.P6885340245594281866

`A007088(record[n-and(4*n, 3*n)])`
-/

namespace A350215.P6885340245594281866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land (4 * n) (3 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350215.P6885340245594281866

/-! ## A350215.P15608619619387517582

`A007088(record[xor(n, 2*or(n, 2*n))]/7)`
-/

namespace A350215.P15608619619387517582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 7)).toNat

end

end A350215.P15608619619387517582

/-! ## A350215.P15889101596668779066

`A007088(A048715(n))`
-/

namespace A350215.P15889101596668779066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048715 n).toNat

end

end A350215.P15889101596668779066

/-! ## A350215.P873658093466958291

`A007088(eq[A048730(n)², A048730(n)])`
-/

namespace A350215.P873658093466958291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A350215.P873658093466958291

/-! ## A350215.P3067216837596277275

`A007088(eq[A048733(n)², A048733(n)])`
-/

namespace A350215.P3067216837596277275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A350215.P3067216837596277275

/-!
# A350221: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/k)^2).

The programs for A350221, the canonical program `A350221.P14526667014861839235` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350221 has offset 1).

The definition of A350221 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^(#+2)*floor(((n+1)/(#+1))²)]` (program `A350221.P14526667014861839235`, by `A350221.P14526667014861839235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350221.P14526667014861839235

`∑{#}[n, (-1)^(#+2)*floor(((n+1)/(#+1))²)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350221

/-- `∑{#}[n, (-1)^(#+2)*floor(((n+1)/(#+1))²)]` -/
def P14526667014861839235.Spec : Prop :=
  ∀ n, P14526667014861839235.a n = A350221 (n + 1)

theorem P14526667014861839235.correct : P14526667014861839235.Spec := by
  intro n
  simp only [A350221, Nat.add_sub_cancel]

end A350221

/-! ## A350221.P7711641196611513956

`A309081((n+1)²)`
-/

namespace A350221.P7711641196611513956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309081 ((n + 1) ^ 2)

end

end A350221.P7711641196611513956

namespace A350221

/-- `A309081((n+1)²)` -/
def P7711641196611513956.Spec : Prop :=
  ∀ n, P7711641196611513956.a n = A350221 (n + 1)

end A350221

/-! ## A350221.P11164104973461046720

`or(char[1], A309081(∑[2*n+1]))`
-/

namespace A350221.P11164104973461046720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A309081 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A350221.P11164104973461046720

namespace A350221

/-- `or(char[1], A309081(∑[2*n+1]))` -/
def P11164104973461046720.Spec : Prop :=
  ∀ n, P11164104973461046720.a n = A350221 (n + 1)

end A350221

/-! ## A350221.P3594245147795610065

`abs(1-A309081(∑[n+1+n]))+1`
-/

namespace A350221.P3594245147795610065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A309081 (∑ j ∈ Finset.range (n + 1), f1 j)| + 1

end

end A350221.P3594245147795610065

namespace A350221

/-- `abs(1-A309081(∑[n+1+n]))+1` -/
def P3594245147795610065.Spec : Prop :=
  ∀ n, P3594245147795610065.a n = A350221 (n + 1)

end A350221

/-! ## A350221.P14196089825486322294

`record[A309081(A065648(n)²)]`
-/

namespace A350221.P14196089825486322294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309081 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350221.P14196089825486322294

namespace A350221

/-- `record[A309081(A065648(n)²)]` -/
def P14196089825486322294.Spec : Prop :=
  ∀ n, P14196089825486322294.a n = A350221 (n + 1)

end A350221

/-! ## A350221.P3606117128561408334

`record[A309081(A236104(n+1))]`
-/

namespace A350221.P3606117128561408334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309081 (A236104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350221.P3606117128561408334

namespace A350221

/-- `record[A309081(A236104(n+1))]` -/
def P3606117128561408334.Spec : Prop :=
  ∀ n, P3606117128561408334.a n = A350221 (n + 1)

end A350221

/-! ## A350221.P3278428320237969261

`A000027(A309081((n+1)^2))`
-/

namespace A350221.P3278428320237969261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A309081 ((n + 1) ^ 2)).toNat

end

end A350221.P3278428320237969261

namespace A350221

/-- `A000027(A309081((n+1)^2))` -/
def P3278428320237969261.Spec : Prop :=
  ∀ n, P3278428320237969261.a n = A350221 (n + 1)

end A350221

/-! ## A350221.P4390013444944840880

`A309081(∑[2*n+1])%A347902(n)`
-/

namespace A350221.P4390013444944840880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309081 (∑ j ∈ Finset.range (n + 1), f1 j)) (A347902 n)

end

end A350221.P4390013444944840880

namespace A350221

/-- `A309081(∑[2*n+1])%A347902(n)` -/
def P4390013444944840880.Spec : Prop :=
  ∀ n, P4390013444944840880.a n = A350221 (n + 1)

end A350221

/-! ## A350221.P5187008538725657323

`A007318(∑[n])*A309081(∑[2*n+1])`
-/

namespace A350221.P5187008538725657323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A309081 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A350221.P5187008538725657323

namespace A350221

/-- `A007318(∑[n])*A309081(∑[2*n+1])` -/
def P5187008538725657323.Spec : Prop :=
  ∀ n, P5187008538725657323.a n = A350221 (n + 1)

end A350221

/-! ## A350221.P6234383253211619663

`A309081(∑[2*n+1])+A000007(n+1)`
-/

namespace A350221.P6234383253211619663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309081 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A350221.P6234383253211619663

namespace A350221

/-- `A309081(∑[2*n+1])+A000007(n+1)` -/
def P6234383253211619663.Spec : Prop :=
  ∀ n, P6234383253211619663.a n = A350221 (n + 1)

end A350221

/-!
# A350222: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/k)^3).

The programs for A350222, the canonical program `A350222.P17887163732254677265` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350222 has offset 1).

The definition of A350222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^(#+2)*floor(((n+1)/(#+1))^3)]` (program `A350222.P17887163732254677265`, by `A350222.P17887163732254677265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350222.P17887163732254677265

`∑{#}[n, (-1)^(#+2)*floor(((n+1)/(#+1))^3)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350222

/-- `∑{#}[n, (-1)^(#+2)*floor(((n+1)/(#+1))^3)]` -/
def P17887163732254677265.Spec : Prop :=
  ∀ n, P17887163732254677265.a n = A350222 (n + 1)

theorem P17887163732254677265.correct : P17887163732254677265.Spec := by
  intro n
  simp only [A350222, Nat.add_sub_cancel]

end A350222

/-! ## A350222.P11549591143098908976

`A309082((n+1)^3)`
-/

namespace A350222.P11549591143098908976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309082 ((n + 1) ^ 3)

end

end A350222.P11549591143098908976

namespace A350222

/-- `A309082((n+1)^3)` -/
def P11549591143098908976.Spec : Prop :=
  ∀ n, P11549591143098908976.a n = A350222 (n + 1)

end A350222

/-! ## A350222.P5985116345418597968

`record[A309082(A008834(n+1))]`
-/

namespace A350222.P5985116345418597968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309082 (A008834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350222.P5985116345418597968

namespace A350222

/-- `record[A309082(A008834(n+1))]` -/
def P5985116345418597968.Spec : Prop :=
  ∀ n, P5985116345418597968.a n = A350222 (n + 1)

end A350222

/-! ## A350222.P1888060134620543048

`record[A309082(A004736(n+1)*A093995(n+1))]`
-/

namespace A350222.P1888060134620543048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309082 (A004736 (n + 1) * A093995 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350222.P1888060134620543048

namespace A350222

/-- `record[A309082(A004736(n+1)*A093995(n+1))]` -/
def P1888060134620543048.Spec : Prop :=
  ∀ n, P1888060134620543048.a n = A350222 (n + 1)

end A350222

/-!
# A350223: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/k)^k).

The programs for A350223, there is no canonical definition to state claims against.
-/

/-! ## A350223.P2003854078539939900

`A350239(2*(n+1))`
-/

namespace A350223.P2003854078539939900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350239 (2 * (n + 1))

end

end A350223.P2003854078539939900

/-! ## A350223.P7363694676620994177

`A350239(A103517(n))+C(2, n+2)`
-/

namespace A350223.P7363694676620994177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350239 (A103517 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A350223.P7363694676620994177

/-! ## A350223.P12220012336976822417

`A350239(A103517(n))+A000007(n)`
-/

namespace A350223.P12220012336976822417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350239 (A103517 n).toNat + A000007 n

end

end A350223.P12220012336976822417

/-! ## A350223.P2349242188932357001

`A350239(A103517(n))+and(1, A008458(n))`
-/

namespace A350223.P2349242188932357001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350239 (A103517 n).toNat + Int.land 1 (A008458 n)

end

end A350223.P2349242188932357001

/-! ## A350223.P13996091104120628149

`A350239(A103517(n))^(2*n-A004273(n))`
-/

namespace A350223.P13996091104120628149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350239 (A103517 n).toNat : ℚ) ^ ((2 * n : ℤ) - A004273 n : ℤ)

end

end A350223.P13996091104120628149

/-!
# A350224: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/k)^n).

The programs for A350224, the canonical program `A350224.P7935027771297680393` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350224 has offset 1).

The definition of A350224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^(#+2)*floor(((n+1)/(#+1))^(n+1))]` (program `A350224.P7935027771297680393`, by `A350224.P7935027771297680393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350224.P7935027771297680393

`∑{#}[n, (-1)^(#+2)*floor(((n+1)/(#+1))^(n+1))]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350224

/-- `∑{#}[n, (-1)^(#+2)*floor(((n+1)/(#+1))^(n+1))]` -/
def P7935027771297680393.Spec : Prop :=
  ∀ n, P7935027771297680393.a n = A350224 (n + 1)

theorem P7935027771297680393.correct : P7935027771297680393.Spec := by
  intro n
  simp only [A350224, Nat.add_sub_cancel]

end A350224

/-!
# A350225: Number of ordered pairs (a,g) with a in IS_n the symmetric inverse semigroup on [n] and g in symmetric group on [n] such that ag=ga.

The programs for A350225, there is no canonical definition to state claims against.
-/

/-! ## A350225.P6526287133073435670

`A000712(n)*n!`
-/

namespace A350225.P6526287133073435670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n * (Nat.factorial n : ℤ)

end

end A350225.P6526287133073435670

/-! ## A350225.P1179107583180789338

`n!*A000712(n)`
-/

namespace A350225.P1179107583180789338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000712 n

end

end A350225.P1179107583180789338

/-! ## A350225.P12342445316911196805

`n!*∑[A000990(n)]`
-/

namespace A350225.P12342445316911196805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350225.P12342445316911196805

/-! ## A350225.P5988454344802306101

`n!*∑[∑[A147766(n)]]`
-/

namespace A350225.P5988454344802306101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350225.P5988454344802306101

/-! ## A350225.P2738117204968882935

`A000142(n)*A000712(n)`
-/

namespace A350225.P2738117204968882935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000712 n

end

end A350225.P2738117204968882935

/-! ## A350225.P14550173358678958452

`A000712(n)*A284994(2*(n+1))`
-/

namespace A350225.P14550173358678958452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n * A284994 (2 * (n + 1))

end

end A350225.P14550173358678958452

/-! ## A350225.P15600910845837291825

`A000712(n)*A284995(2*(n+1))`
-/

namespace A350225.P15600910845837291825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n * A284995 (2 * (n + 1))

end

end A350225.P15600910845837291825

/-!
# A350226: a(n) is the length of the longest sequence of distinct numbers in arithmetic progression in the interval 0..n, ending with n and where the Thue-Morse sequence (A010060) is constant.

The programs for A350226, there is no canonical definition to state claims against.
-/

/-! ## A350226.P14474874674335621581

`A001221(A003623(n+1)*A169986(n))`
-/

namespace A350226.P14474874674335621581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003623 (n + 1) * A169986 n).toNat

end

end A350226.P14474874674335621581

/-! ## A350226.P17015826412798634640

`A001221(lcm(A003623(n+1), A169986(n)))`
-/

namespace A350226.P17015826412798634640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A003623 (n + 1)) (A169986 n))

end

end A350226.P17015826412798634640

/-!
# A350229: a(n) is the sum of n and the balanced ternary digits in n.

The programs for A350229, the canonical program `A350229.P11009245759150690287` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350229 has offset 0).

The definition of A350229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350229.P11009245759150690287

`n+A065363(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A350229

/-- `n+A065363(n)` -/
def P11009245759150690287.Spec : Prop :=
  ∀ n, P11009245759150690287.a n = A350229 n

theorem P11009245759150690287.correct : P11009245759150690287.Spec := by
  intro n
  simp only [A350229]

end A350229

/-! ## A350229.P10889480102529644578

`2*(n-∑[A253786(n)])`
-/

namespace A350229.P10889480102529644578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350229.P10889480102529644578

namespace A350229

/-- `2*(n-∑[A253786(n)])` -/
def P10889480102529644578.Spec : Prop :=
  ∀ n, P10889480102529644578.a n = A350229 n

end A350229

/-! ## A350229.P11012474488129797425

`2*(2*n-A127427(n))`
-/

namespace A350229.P11012474488129797425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n : ℤ) - A127427 n)

end

end A350229.P11012474488129797425

namespace A350229

/-- `2*(2*n-A127427(n))` -/
def P11012474488129797425.Spec : Prop :=
  ∀ n, P11012474488129797425.a n = A350229 n

end A350229

/-! ## A350229.P16383518404787868332

`A065363(n)-A001489(n)`
-/

namespace A350229.P16383518404787868332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n - A001489 n

end

end A350229.P16383518404787868332

namespace A350229

/-- `A065363(n)-A001489(n)` -/
def P16383518404787868332.Spec : Prop :=
  ∀ n, P16383518404787868332.a n = A350229 n

theorem P16383518404787868332.correct : P16383518404787868332.Spec := by
  intro n
  simp only [A350229, Nat.add_sub_cancel, A350229.P16383518404787868332.a, A350229.P11009245759150690287.a, A001489, A001489.P15233530513763566776.a, A065363, A065363.P10338292447349607337.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350229

/-! ## A350229.P14016204035431202628

`2*(A089643(n)+A054861(n))`
-/

namespace A350229.P14016204035431202628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089643 n + A054861 n)

end

end A350229.P14016204035431202628

namespace A350229

/-- `2*(A089643(n)+A054861(n))` -/
def P14016204035431202628.Spec : Prop :=
  ∀ n, P14016204035431202628.a n = A350229 n

end A350229

/-! ## A350229.P8784858252472046494

`A344853(n)+2*A089643(n)`
-/

namespace A350229.P8784858252472046494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n + 2 * A089643 n

end

end A350229.P8784858252472046494

namespace A350229

/-- `A344853(n)+2*A089643(n)` -/
def P8784858252472046494.Spec : Prop :=
  ∀ n, P8784858252472046494.a n = A350229 n

end A350229

/-! ## A350229.P1882055055275664935

`A089643(n)+n-A000989(n)`
-/

namespace A350229.P1882055055275664935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n + ((n : ℤ) - A000989 n)

end

end A350229.P1882055055275664935

namespace A350229

/-- `A089643(n)+n-A000989(n)` -/
def P1882055055275664935.Spec : Prop :=
  ∀ n, P1882055055275664935.a n = A350229 n

end A350229

/-! ## A350229.P8279288015136781284

`A134024(n)+n-A134022(n)`
-/

namespace A350229.P8279288015136781284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n + ((n : ℤ) - A134022 n)

end

end A350229.P8279288015136781284

namespace A350229

/-- `A134024(n)+n-A134022(n)` -/
def P8279288015136781284.Spec : Prop :=
  ∀ n, P8279288015136781284.a n = A350229 n

theorem P8279288015136781284.correct : P8279288015136781284.Spec := by
  intro n
  simp only [A350229, Nat.add_sub_cancel, A350229.P8279288015136781284.a, A350229.P11009245759150690287.a, A065363, A065363.P10338292447349607337.a, A134022, A134022.P16948364718600787196.a, A134024, A134024.P16444693290474803119.a, A005812, A005812.P15868546208220252248.a, A053735, A053735.P3640341592284089632.a, A117966, A117966.P11599160912576478646.a, A005836, A005836.P12367569128854000442.a, A054861, A054861.P6137810495506521191.a, A081134, A081134.P5939115943637325282.a, A289814, A289814.P11371932108795153936.a, A006166, A006166.P11148542579983985411.f1, A006166.P11148542579983985411.f2, A006166.P11148542579983985411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350229

/-! ## A350229.P2062551771033090533

`A005843(A005843(n)-A127427(n))`
-/

namespace A350229.P2062551771033090533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 n - A127427 n).toNat

end

end A350229.P2062551771033090533

namespace A350229

/-- `A005843(A005843(n)-A127427(n))` -/
def P2062551771033090533.Spec : Prop :=
  ∀ n, P2062551771033090533.a n = A350229 n

end A350229

/-! ## A350229.P232125855226865324

`A065359(A006288(n))+n`
-/

namespace A350229.P232125855226865324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A006288 n).toNat + (n : ℤ)

end

end A350229.P232125855226865324

namespace A350229

/-- `A065359(A006288(n))+n` -/
def P232125855226865324.Spec : Prop :=
  ∀ n, P232125855226865324.a n = A350229 n

end A350229

/-! ## A350229.P15375400258773058828

`A344853(n)+A053735(2*n)`
-/

namespace A350229.P15375400258773058828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n + A053735 (2 * n)

end

end A350229.P15375400258773058828

namespace A350229

/-- `A344853(n)+A053735(2*n)` -/
def P15375400258773058828.Spec : Prop :=
  ∀ n, P15375400258773058828.a n = A350229 n

theorem P15375400258773058828.correct : P15375400258773058828.Spec := by
  intro n
  simp only [A350229, Nat.add_sub_cancel, A350229.P15375400258773058828.a, A350229.P11009245759150690287.a, A053735, A053735.P3640341592284089632.a, A065363, A065363.P10338292447349607337.a, A344853, A344853.P1953230496886263085.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350229

/-! ## A350229.P17933605322907312406

`A230641(2*n)-A230641(n)`
-/

namespace A350229.P17933605322907312406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 (2 * n) - A230641 n

end

end A350229.P17933605322907312406

namespace A350229

/-- `A230641(2*n)-A230641(n)` -/
def P17933605322907312406.Spec : Prop :=
  ∀ n, P17933605322907312406.a n = A350229 n

theorem P17933605322907312406.correct : P17933605322907312406.Spec := by
  intro n
  simp only [A350229, Nat.add_sub_cancel, A350229.P17933605322907312406.a, A350229.P11009245759150690287.a, A065363, A065363.P10338292447349607337.a, A230641, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350229

/-! ## A350229.P7943415708558190560

`A346502(n)-A344853(2*n)`
-/

namespace A350229.P7943415708558190560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346502 n - A344853 (2 * n)

end

end A350229.P7943415708558190560

namespace A350229

/-- `A346502(n)-A344853(2*n)` -/
def P7943415708558190560.Spec : Prop :=
  ∀ n, P7943415708558190560.a n = A350229 n

end A350229

/-! ## A350229.P17869328244920600740

`A334913(A379657(n))+n`
-/

namespace A350229.P17869328244920600740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 (A379657 n).toNat + (n : ℤ)

end

end A350229.P17869328244920600740

namespace A350229

/-- `A334913(A379657(n))+n` -/
def P17869328244920600740.Spec : Prop :=
  ∀ n, P17869328244920600740.a n = A350229 n

end A350229

/-!
# A350230: Numbers m such that for all factorizations m=a*b with positive integers (a, b), a*b+a+b is a prime.

The programs for A350230, there is no canonical definition to state claims against.
-/

/-! ## A350230.P5776808417332105691

`record[∏{p}[n+1, #]/A173636(2*n+3)]`
-/

namespace A350230.P5776808417332105691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / (A173636 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350230.P5776808417332105691

/-! ## A350230.P4827095566929239165

`record[∏{p}[n+1, #]/A301598(2*n+3)]`
-/

namespace A350230.P4827095566929239165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / (A301598 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350230.P4827095566929239165

/-! ## A350230.P13374981408728342987

`record[∏{p}[n+1, #]/A325352(2*n+3)]`
-/

namespace A350230.P13374981408728342987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / (A325352 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350230.P13374981408728342987

/-! ## A350230.P12067262950395155320

`record[∏{p}[n+1, #]/A358195(2*n+3)]`
-/

namespace A350230.P12067262950395155320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / (A358195 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350230.P12067262950395155320

/-! ## A350230.P14381677142340469838

`A097366(A066651(n+1))`
-/

namespace A350230.P14381677142340469838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097366 (A066651 (n + 1)).toNat

end

end A350230.P14381677142340469838

/-!
# A350231: Distinct values in A350228, in order of appearance.

The programs for A350231, there is no canonical definition to state claims against.
-/

/-! ## A350231.P715118862147320932

`A350228(A350234(n+1)+A057428(n))`
-/

namespace A350231.P715118862147320932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350228 (A350234 (n + 1) + A057428 n).toNat

end

end A350231.P715118862147320932

/-! ## A350231.P6134317079520713169

`A350228(A350234(n+1)-A057427(n))`
-/

namespace A350231.P6134317079520713169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350228 (A350234 (n + 1) - A057427 n).toNat

end

end A350231.P6134317079520713169

/-! ## A350231.P1669090677015673351

`A350228(A350234(n+1)-A019426(2*n))`
-/

namespace A350231.P1669090677015673351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350228 (A350234 (n + 1) - A019426 (2 * n)).toNat

end

end A350231.P1669090677015673351

/-! ## A350231.P9953710643534917984

`A350228(A350234(n+1)+A081729(2*n+1))`
-/

namespace A350231.P9953710643534917984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350228 (A350234 (n + 1) + A081729 (2 * n + 1)).toNat

end

end A350231.P9953710643534917984

/-! ## A350231.P15884639244852698480

`A350228(eq[A157928(n), A350228(n+1)])`
-/

namespace A350231.P15884639244852698480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350228 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A350231.P15884639244852698480

/-!
# A350234: Positions of 1's in A350228.

The programs for A350234, there is no canonical definition to state claims against.
-/

/-! ## A350234.P12857781931111751011

`eq[1, A350228(n+1)]+1`
-/

namespace A350234.P12857781931111751011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350234.P12857781931111751011

/-! ## A350234.P7610314681192667120

`record[A020725(n+1)-A350228(n+1)]`
-/

namespace A350234.P7610314681192667120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A350228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350234.P7610314681192667120

/-! ## A350234.P18134803829553737023

`record[2-(A350228(n+1)+A001489(n))]`
-/

namespace A350234.P18134803829553737023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A350228 (n + 1) + A001489 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350234.P18134803829553737023

/-! ## A350234.P14965255959503134854

`record[A023443(n+3)-A350228(n+1)]`
-/

namespace A350234.P14965255959503134854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (n + 3) - A350228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350234.P14965255959503134854

/-! ## A350234.P12741454386226274012

`record[A080513(2*n+1)-A350228(n+1)]`
-/

namespace A350234.P12741454386226274012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * n + 1) - A350228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350234.P12741454386226274012

/-! ## A350234.P8674469188762245836

`record[2-A001057(2*n)-A350228(n+1)]`
-/

namespace A350234.P8674469188762245836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001057 (2 * n) - A350228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350234.P8674469188762245836

/-!
# A350235: a(n) is the least k such that A350226(k) = n.

The programs for A350235, there is no canonical definition to state claims against.
-/

/-! ## A350235.P4899596959304755102

`A370756(n+1)-1`
-/

namespace A350235.P4899596959304755102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370756 (n + 1) - 1

end

end A350235.P4899596959304755102

/-! ## A350235.P12255779385473674070

`A023443(A370756(n+1))`
-/

namespace A350235.P12255779385473674070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A370756 (n + 1)).toNat

end

end A350235.P12255779385473674070

/-! ## A350235.P7067430992149831992

`A023444(A370756(n+1)+1)`
-/

namespace A350235.P7067430992149831992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A370756 (n + 1) + 1).toNat

end

end A350235.P7067430992149831992

/-! ## A350235.P10489910947018639087

`lt[n, A370756(A350226(n))]`
-/

namespace A350235.P10489910947018639087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370756 (A350226 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350235.P10489910947018639087

/-! ## A350235.P6071016644044878975

`eq[A000027(n+1), A370756(A350226(n))]`
-/

namespace A350235.P6071016644044878975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370756 (A350226 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350235.P6071016644044878975

/-!
# A350236: a(n) is the sum of the entries in an n X n X n 3D matrix whose elements start at 1 in the corner cells and increase by 1 with each step towards the center.

The programs for A350236, the canonical program `A350236.P9095737791985189516` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350236 has offset 1).

The definition of A350236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350236.P3764965019536831731

`ogf((1+6x+36x^2+42x^3+45x^4+12x^5+2x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A350236.P3764965019536831731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 36, 42, 45, 12, 2] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A350236.P3764965019536831731

namespace A350236

/-- `ogf((1+6x+36x^2+42x^3+45x^4+12x^5+2x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P3764965019536831731.Spec : Prop :=
  ∀ n, P3764965019536831731.a n = A350236 (n + 1)

end A350236

/-! ## A350236.P9095737791985189516

`3/4*(n+1)²*((n+1)²-2/3*(n+1)+(n+1)%2)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350236

/-- `3/4*(n+1)²*((n+1)²-2/3*(n+1)+(n+1)%2)` -/
def P9095737791985189516.Spec : Prop :=
  ∀ n, P9095737791985189516.a n = (A350236 (n + 1) : ℚ)

end A350236

/-! ## A350236.P10924773623808182556

`(n+1)²*∑[a(n-2)+3]` with `a(0)=1, a(1)=1`
-/

namespace A350236.P10924773623808182556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350236.P10924773623808182556

namespace A350236

/-- `(n+1)²*∑[a(n-2)+3]` -/
def P10924773623808182556.Spec : Prop :=
  ∀ n, (P10924773623808182556.a n : ℤ) = A350236 (n + 1)

end A350236

/-! ## A350236.P15769428949367179116

`(n+1)*(n+1)*∑[a(n-2)+3]` with `a(0)=1, a(1)=1`
-/

namespace A350236.P15769428949367179116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A350236.P15769428949367179116

namespace A350236

/-- `(n+1)*(n+1)*∑[a(n-2)+3]` -/
def P15769428949367179116.Spec : Prop :=
  ∀ n, (P15769428949367179116.a n : ℤ) = A350236 (n + 1)

end A350236

/-! ## A350236.P4927774782038869093

`(n+1)²*A238377(n)`
-/

namespace A350236.P4927774782038869093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A238377 n

end

end A350236.P4927774782038869093

namespace A350236

/-- `(n+1)²*A238377(n)` -/
def P4927774782038869093.Spec : Prop :=
  ∀ n, P4927774782038869093.a n = A350236 (n + 1)

end A350236

/-! ## A350236.P5683376830306179824

`(n+1)²*ceil(A212959(n)/2)`
-/

namespace A350236.P5683376830306179824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ⌈(A212959 n : ℚ) / 2⌉

end

end A350236.P5683376830306179824

namespace A350236

/-- `(n+1)²*ceil(A212959(n)/2)` -/
def P5683376830306179824.Spec : Prop :=
  ∀ n, P5683376830306179824.a n = A350236 (n + 1)

end A350236

/-! ## A350236.P163731850778729654

`((n+1)²-A198442(n+2))*(n+1)²`
-/

namespace A350236.P163731850778729654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A198442 (n + 2)) * ((n + 1) ^ 2 : ℤ)

end

end A350236.P163731850778729654

namespace A350236

/-- `((n+1)²-A198442(n+2))*(n+1)²` -/
def P163731850778729654.Spec : Prop :=
  ∀ n, P163731850778729654.a n = A350236 (n + 1)

end A350236

/-!
# A350237: Minimum number of 1's in an n X n binary matrix with no zero 3 X 3 submatrix.

The programs for A350237, there is no canonical definition to state claims against.
-/

/-! ## A350237.P1861451315224594244

`(n+1)²-A350304(n+1)`
-/

namespace A350237.P1861451315224594244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A350304 (n + 1)

end

end A350237.P1861451315224594244

/-! ## A350237.P15263656803754282691

`abs(A000290(n+1)-A350304(n+1))`
-/

namespace A350237.P15263656803754282691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (n + 1) - A350304 (n + 1)|

end

end A350237.P15263656803754282691

/-! ## A350237.P3920755487662842093

`record[A339635(n+1)]%A350304(n+1)`
-/

namespace A350237.P3920755487662842093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A350304 (n + 1))

end

end A350237.P3920755487662842093

/-! ## A350237.P946267833248811270

`A339635(A152950(n+1))%A002866(n)`
-/

namespace A350237.P946267833248811270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339635 (A152950 (n + 1)).toNat) (A002866 n)

end

end A350237.P946267833248811270

/-! ## A350237.P13169217344304171582

`A003002(floor((n+5)*n/10)*round(n²/5))`
-/

namespace A350237.P13169217344304171582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (⌊(n + 5 : ℚ) * ((n : ℚ) / 10)⌋ * SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 5)).toNat

end

end A350237.P13169217344304171582

/-!
# A350238: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/(2*k-1))^k).

The programs for A350238, there is no canonical definition to state claims against.
-/

/-! ## A350238.P10340585736557333093

`A322483(A222444(n+1)-A000035(n))`
-/

namespace A350238.P10340585736557333093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A222444 (n + 1) - A000035 n).toNat

end

end A350238.P10340585736557333093

/-! ## A350238.P15629517487785754782

`A322483(xor(A000035(n), A222444(n+1)))`
-/

namespace A350238.P15629517487785754782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (Int.xor (A000035 n) (A222444 (n + 1))).toNat

end

end A350238.P15629517487785754782

/-! ## A350238.P11988601034229737693

`A170823(∑[n])+A002265(n)`
-/

namespace A350238.P11988601034229737693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170823 (∑ j ∈ Finset.range (n + 1), f1 j) + A002265 n

end

end A350238.P11988601034229737693

/-! ## A350238.P2574847588010439509

`A256757(A157149(n)+A000079(n))`
-/

namespace A350238.P2574847588010439509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256757 (A157149 n + A000079 n).toNat

end

end A350238.P2574847588010439509

/-! ## A350238.P2013072883519901147

`A007895(A358905(n)+A000332(n+4))`
-/

namespace A350238.P2013072883519901147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A358905 n + A000332 (n + 4)).toNat

end

end A350238.P2013072883519901147

/-!
# A350239: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor((n/(2*k))^k).

The programs for A350239, there is no canonical definition to state claims against.
-/

/-! ## A350239.P4736500337679192333

`A099375(A261727(n+1))%3`
-/

namespace A350239.P4736500337679192333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099375 (A261727 (n + 1)).toNat) 3

end

end A350239.P4736500337679192333

/-! ## A350239.P4871078012572192591

`A105700(or(A298338(n), A346992(n+1)))`
-/

namespace A350239.P4871078012572192591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (Int.lor (A298338 n) (A346992 (n + 1))).toNat

end

end A350239.P4871078012572192591

/-! ## A350239.P6930551062784863496

`A016399(A300549(n))+A008284(A286580(n))`
-/

namespace A350239.P6930551062784863496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016399 (A300549 n).toNat + A008284 (A286580 n).toNat

end

end A350239.P6930551062784863496

/-! ## A350239.P11275150325775413789

`A016399(A300549(n))+A008284(A286598(n))`
-/

namespace A350239.P11275150325775413789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016399 (A300549 n).toNat + A008284 (A286598 n).toNat

end

end A350239.P11275150325775413789

/-!
# A350240: Number of representations of n as a sum of distinct Fibonacci numbers where 1 can be included twice.

The programs for A350240, there is no canonical definition to state claims against.
-/

/-! ## A350240.P14247641801848230249

`A067595(ceil(n*(3-ϕ)))`
-/

namespace A350240.P14247641801848230249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 ⌈(n : ℝ) * (3 - Real.goldenRatio)⌉.toNat

end

end A350240.P14247641801848230249

/-! ## A350240.P17258942569614768237

`A000121(A193564(n+1))`
-/

namespace A350240.P17258942569614768237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 (A193564 (n + 1)).toNat

end

end A350240.P17258942569614768237

/-! ## A350240.P10978480531864005284

`A000119(n)+A239002(n)-A303903(n)`
-/

namespace A350240.P10978480531864005284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n + (A239002 n - A303903 n)

end

end A350240.P10978480531864005284

/-! ## A350240.P12485991543529117396

`A000121(n)+A239002(n)-A000119(n)`
-/

namespace A350240.P12485991543529117396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 n + (A239002 n - A000119 n)

end

end A350240.P12485991543529117396

/-! ## A350240.P12673558729894804174

`A116403(lt[0, A116402(n+1)])`
-/

namespace A350240.P12673558729894804174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A350240.P12673558729894804174

/-! ## A350240.P10171805656371450596

`A000119(floor(ϕ*(n+2))-3)`
-/

namespace A350240.P10171805656371450596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 3).toNat

end

end A350240.P10171805656371450596

/-! ## A350240.P1501288714395110934

`A239003(2*A058065(n)+n)`
-/

namespace A350240.P1501288714395110934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (2 * A058065 n + (n : ℤ)).toNat

end

end A350240.P1501288714395110934

/-! ## A350240.P17741131284752488232

`A275992(record[xor(n, floor(n/2))])`
-/

namespace A350240.P17741131284752488232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275992 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350240.P17741131284752488232

/-! ## A350240.P6011656245731834199

`A275992(A165404(n))`
-/

namespace A350240.P6011656245731834199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275992 (A165404 n).toNat

end

end A350240.P6011656245731834199

/-! ## A350240.P13462181658609657326

`A275992(A295897(n+1))`
-/

namespace A350240.P13462181658609657326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275992 (A295897 (n + 1)).toNat

end

end A350240.P13462181658609657326

/-!
# A350242: Integers that are monomially irreducible.

The programs for A350242, there is no canonical definition to state claims against.
-/

/-! ## A350242.P9088954843940652878

`ceil(A064424(n+4)/3)`
-/

namespace A350242.P9088954843940652878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064424 (n + 4) : ℚ) / 3⌉

end

end A350242.P9088954843940652878

/-! ## A350242.P18006315815018200091

`lt[abs(A291937(n)), 2*n]`
-/

namespace A350242.P18006315815018200091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291937 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350242.P18006315815018200091

/-! ## A350242.P10001513037579817832

`record[ceil(A169839(n+1)/3)]`
-/

namespace A350242.P10001513037579817832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A169839 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350242.P10001513037579817832

/-! ## A350242.P1355217961147470486

`record[ceil(A064413(n+4)/3)]`
-/

namespace A350242.P1355217961147470486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064413 (n + 4) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350242.P1355217961147470486

/-! ## A350242.P2074557013867639473

`record[ceil(sqrt(A104125(n+3))/3)]`
-/

namespace A350242.P2074557013867639473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A104125 (n + 3) : ℝ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350242.P2074557013867639473

/-! ## A350242.P4755932237773810940

`record[A123919(A169839(n+1))]`
-/

namespace A350242.P4755932237773810940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A169839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350242.P4755932237773810940

/-! ## A350242.P13700864642439900158

`record[A123920(A064413(n+2))]`
-/

namespace A350242.P13700864642439900158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123920 (A064413 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350242.P13700864642439900158

/-! ## A350242.P5153587870902502786

`record[gcd(n+2, A008606(A151800(n)))]`
-/

namespace A350242.P5153587870902502786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A008606 (A151800 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350242.P5153587870902502786

/-! ## A350242.P1098848676475622135

`∩[A053577(n+1), A138389(n+1)]`
-/

namespace A350242.P1098848676475622135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350242.P1098848676475622135

/-! ## A350242.P17042924629340992522

`∩[A053577(n+1), A387426(n+1)]`
-/

namespace A350242.P17042924629340992522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350242.P17042924629340992522

/-!
# A350243: Number of achiral hexagonal polyominoes with 3n cells and threefold rotational symmetry centered at a vertex.

The programs for A350243, there is no canonical definition to state claims against.
-/

/-! ## A350243.P4477205561658419666

`A179254(A118027(n)%A179274(2*n+1))`
-/

namespace A350243.P4477205561658419666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179254 (Int.tmod (A118027 n) (A179274 (2 * n + 1))).toNat

end

end A350243.P4477205561658419666

/-!
# A350244: Indices of record values in A350228.

The programs for A350244, there is no canonical definition to state claims against.
-/

/-! ## A350244.P16408254470451731311

`∑[A335516(∏{p}[n+1, #*val(n+1, #)]²)]`
-/

namespace A350244.P16408254470451731311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 ((∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350244.P16408254470451731311

/-! ## A350244.P1372016114811185619

`∑[A114003(record[A170980(n)])]`
-/

namespace A350244.P1372016114811185619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350244.P1372016114811185619

/-! ## A350244.P17509444445940355353

`A356935(A084092(n+1))+n`
-/

namespace A350244.P17509444445940355353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356935 (A084092 (n + 1)).toNat + (n : ℤ)

end

end A350244.P17509444445940355353

/-! ## A350244.P9245511982220991778

`∑[A336280(Δ[A339886(n+1)])]`
-/

namespace A350244.P9245511982220991778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339886 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336280 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350244.P9245511982220991778

/-!
# A350245: Numbers p^2*q, p > q odd primes such that q divides p+1.

The programs for A350245, there is no canonical definition to state claims against.
-/

/-! ## A350245.P1794067957174499498

`∩[A055561(n+1), A102835(n+1)]`
-/

namespace A350245.P1794067957174499498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P1794067957174499498

/-! ## A350245.P16887538372257305171

`∩[A055561(n+1), A102836(n+1)]`
-/

namespace A350245.P16887538372257305171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P16887538372257305171

/-! ## A350245.P15637127899036472175

`∩[A055561(n+1), A166402(n+1)]`
-/

namespace A350245.P15637127899036472175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P15637127899036472175

/-! ## A350245.P4219854430448072083

`∩[A055561(n+1), A166403(n+1)]`
-/

namespace A350245.P4219854430448072083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P4219854430448072083

/-! ## A350245.P4834320233419885229

`∩[A055561(n+1), A187101(n+1)]`
-/

namespace A350245.P4834320233419885229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P4834320233419885229

/-! ## A350245.P1147786148633439015

`∩[A055561(n+1), A095990(n+1)]`
-/

namespace A350245.P1147786148633439015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P1147786148633439015

/-! ## A350245.P14822384248242197427

`∩[A055561(n+1), A379033(n+1)]`
-/

namespace A350245.P14822384248242197427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P14822384248242197427

/-! ## A350245.P4917376891239291033

`∩[A055561(n+1), A097319(n+1)]`
-/

namespace A350245.P4917376891239291033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P4917376891239291033

/-! ## A350245.P16195175912809073413

`∩[A055561(n+1), A398421(n+1)]`
-/

namespace A350245.P16195175912809073413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P16195175912809073413

/-! ## A350245.P7966066997363092311

`∩[A055561(n+1), A228057(n+1)]`
-/

namespace A350245.P7966066997363092311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350245.P7966066997363092311

/-!
# A350247: Positive integers k such that the concatenation of k and 11 is the lesser of a pair of twin primes (i.e., a term of A001359).

The programs for A350247, the canonical program `A350247.P17028103558821894420` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350247 has offset 1).

The definition of A350247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350247.P17028103558821894420

`∩[A157772(n+1), A101471(n+2)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A350247

/-- `∩[A157772(n+1), A101471(n+2)]` -/
def P17028103558821894420.Spec : Prop :=
  ∀ n, (P17028103558821894420.a n : ℤ) = A350247 (n + 1)

theorem P17028103558821894420.correct : P17028103558821894420.Spec := by
  intro n
  simp only [A350247, Nat.add_sub_cancel]

end A350247

/-! ## A350247.P5851735550551068256

`∑[A000005(A078248(n+1)*A079339(n+1))]`
-/

namespace A350247.P5851735550551068256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A078248 (n + 1) * A079339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350247.P5851735550551068256

namespace A350247

/-- `∑[A000005(A078248(n+1)*A079339(n+1))]` -/
def P5851735550551068256.Spec : Prop :=
  ∀ n, P5851735550551068256.a n = A350247 (n + 1)

end A350247

/-!
# A350248: Triangle read by rows: T(n,k) is the number of noncrossing partitions of an n-set into k blocks of size 3 or more, n >= 0, 0 <= k <= floor(n/3).

The programs for A350248, there is no canonical definition to state claims against.
-/

/-! ## A350248.P6841334454948551602

`∑{d}[(A023134(n+1)-1)^n+1, A288636(#)]`
-/

namespace A350248.P6841334454948551602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023134 (n + 1) - 1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A288636 d

end

end A350248.P6841334454948551602

/-! ## A350248.P10411192377996860828

`A027187(A058398(3*n+1)%A089675(n+1))`
-/

namespace A350248.P10411192377996860828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (Int.tmod (A058398 (3 * n + 1)) (A089675 (n + 1))).toNat

end

end A350248.P10411192377996860828

/-! ## A350248.P3717399897590315499

`A374206(A115740(n+1))`
-/

namespace A350248.P3717399897590315499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374206 (A115740 (n + 1)).toNat

end

end A350248.P3717399897590315499

/-! ## A350248.P10305804272296708293

`A127326(A384133(n+2))`
-/

namespace A350248.P10305804272296708293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127326 (A384133 (n + 2)).toNat

end

end A350248.P10305804272296708293

/-! ## A350248.P1427772050077501190

`A029358(lt[A029344(n), 2])`
-/

namespace A350248.P1427772050077501190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029344 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A350248.P1427772050077501190

/-!
# A350249: a(n) is the constant term in expansion of Product_{k=1..n} (x^(k^2) + 1 + 1/x^(k^2)).

The programs for A350249, there is no canonical definition to state claims against.
-/

/-! ## A350249.P1573329750651997782

`or(A146640(n+1), A271714(A146645(n+1)))`
-/

namespace A350249.P1573329750651997782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146640 (n + 1)) (A271714 (A146645 (n + 1)).toNat)

end

end A350249.P1573329750651997782

/-! ## A350249.P9875218749196852632

`A051534(A351754(n+1))`
-/

namespace A350249.P9875218749196852632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (A351754 (n + 1)).toNat

end

end A350249.P9875218749196852632

/-! ## A350249.P722323427665090981

`A307001(A344492(n))-2`
-/

namespace A350249.P722323427665090981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307001 (A344492 n).toNat - 2

end

end A350249.P722323427665090981

/-! ## A350249.P2499047473239008754

`A046074(A345192(n)+A262736(n))`
-/

namespace A350249.P2499047473239008754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A345192 n + A262736 n).toNat

end

end A350249.P2499047473239008754

/-! ## A350249.P7674752881177048153

`A052128(A000568(n))`
-/

namespace A350249.P7674752881177048153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (A000568 n).toNat

end

end A350249.P7674752881177048153

/-!
# A350250: Numbers k such that the k-th composition in standard order is a non-alternating permutation of an initial interval of positive integers.

The programs for A350250, there is no canonical definition to state claims against.
-/

/-! ## A350250.P17676183436475761267

`∩[A333218(n+1), A345169(n+1)]`
-/

namespace A350250.P17676183436475761267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350250.P17676183436475761267

/-!
# A350251: Number of non-alternating permutations of the multiset of prime factors of n.

The programs for A350251, there is no canonical definition to state claims against.
-/

/-! ## A350251.P10010095315596353402

`A008480(n+1)-A345164(n+1)`
-/

namespace A350251.P10010095315596353402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A345164 (n + 1)

end

end A350251.P10010095315596353402

/-! ## A350251.P15606817032110204024

`A349798(n+1)+A349797(n+1)`
-/

namespace A350251.P15606817032110204024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (n + 1) + A349797 (n + 1)

end

end A350251.P15606817032110204024

/-! ## A350251.P10041376163730866147

`abs(A355939(n+1))-A345164(n+1)`
-/

namespace A350251.P10041376163730866147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (n + 1)| - A345164 (n + 1)

end

end A350251.P10041376163730866147

/-! ## A350251.P12289727397144153081

`A335447(n+1)+1-A345164(n+1)`
-/

namespace A350251.P12289727397144153081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) + (1 - A345164 (n + 1))

end

end A350251.P12289727397144153081

/-! ## A350251.P15315137798705630684

`A349798(n+1)+2*A326291(n+1)`
-/

namespace A350251.P15315137798705630684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (n + 1) + 2 * A326291 (n + 1)

end

end A350251.P15315137798705630684

/-! ## A350251.P6569762242513929273

`A008480(n+1)-ceil(γ*A335452(n+1))`
-/

namespace A350251.P6569762242513929273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - ⌈Real.eulerMascheroniConstant * (A335452 (n + 1) : ℝ)⌉

end

end A350251.P6569762242513929273

/-! ## A350251.P17879864526234732279

`A336107(n+1)+A213370(∑{p}[n+1, gcd(n, #)])`
-/

namespace A350251.P17879864526234732279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (n + 1) + A213370 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A350251.P17879864526234732279

/-! ## A350251.P9291735543876009157

`A336107(n+1)+A087624(∑{e}[∏{p}[n+1, #], #]!)`
-/

namespace A350251.P9291735543876009157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (n + 1) + A087624 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A350251.P9291735543876009157

/-! ## A350251.P13974741260010429611

`A336107(n+1)+A004524(A050326(n+1))`
-/

namespace A350251.P13974741260010429611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (n + 1) + A004524 (A050326 (n + 1)).toNat

end

end A350251.P13974741260010429611

/-!
# A350252: Number of non-alternating patterns of length n.

The programs for A350252, there is no canonical definition to state claims against.
-/

/-! ## A350252.P8313252330529648385

`A000670(n)-A345194(n)`
-/

namespace A350252.P8313252330529648385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A345194 n

end

end A350252.P8313252330529648385

/-! ## A350252.P6350982249599083335

`A122101(∑[n])-A345194(n)`
-/

namespace A350252.P6350982249599083335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A345194 n

end

end A350252.P6350982249599083335

/-! ## A350252.P2731137973344073832

`A154921(∑[n])-A345194(n)`
-/

namespace A350252.P2731137973344073832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - A345194 n

end

end A350252.P2731137973344073832

/-! ## A350252.P5485573682100796668

`A052875(n)+1-A345194(n)`
-/

namespace A350252.P5485573682100796668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + (1 - A345194 n)

end

end A350252.P5485573682100796668

/-! ## A350252.P16868499053391861894

`ceil(∑[A162509(n)/2])-A345194(n)`
-/

namespace A350252.P16868499053391861894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162509 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - A345194 n

end

end A350252.P16868499053391861894

/-! ## A350252.P11372108199144040331

`A226513(A000096(n))-A345194(n)`
-/

namespace A350252.P11372108199144040331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A000096 n).toNat - A345194 n

end

end A350252.P11372108199144040331

/-! ## A350252.P6584547534361480512

`A000629(n)/A284694((n+1)²)-A345194(n)`
-/

namespace A350252.P6584547534361480512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 n : ℚ) / (A284694 ((n + 1) ^ 2) : ℚ) - (A345194 n : ℚ)

end

end A350252.P6584547534361480512

/-! ## A350252.P16941994424503879180

`A069321(n)-(A345194(n)+A052876(n))`
-/

namespace A350252.P16941994424503879180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069321 n - (A345194 n + A052876 n)

end

end A350252.P16941994424503879180

/-!
# A350253: a(n) = A000045(n)^A000045(n+1) mod A000045(n+2).

The programs for A350253, the canonical program `A350253.P8487770623195509252` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350253 has offset 0).

The definition of A350253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350253.P8487770623195509252

`A129982(A214684(n+1)+2*n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A350253

/-- `A129982(A214684(n+1)+2*n)` -/
def P8487770623195509252.Spec : Prop :=
  ∀ n, P8487770623195509252.a n = A350253 n

theorem P8487770623195509252.correct : P8487770623195509252.Spec := by
  intro n
  simp only [A350253]

end A350253

/-! ## A350253.P6165562272946334088

`A129982(A214684(n+1)+n+n)`
-/

namespace A350253.P6165562272946334088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (A214684 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A350253.P6165562272946334088

namespace A350253

/-- `A129982(A214684(n+1)+n+n)` -/
def P6165562272946334088.Spec : Prop :=
  ∀ n, P6165562272946334088.a n = A350253 n

theorem P6165562272946334088.correct : P6165562272946334088.Spec := by
  intro n
  simp only [A350253, Nat.add_sub_cancel, A350253.P6165562272946334088.a, A350253.P8487770623195509252.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A350253

/-! ## A350253.P1105641521229401006

`A129982(∑[A197189(n)%4])`
-/

namespace A350253.P1105641521229401006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197189 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350253.P1105641521229401006

namespace A350253

/-- `A129982(∑[A197189(n)%4])` -/
def P1105641521229401006.Spec : Prop :=
  ∀ n, P1105641521229401006.a n = A350253 n

end A350253

/-! ## A350253.P6457375607415275351

`A129982(∑[and(3, A197189(n))])`
-/

namespace A350253.P6457375607415275351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A197189 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350253.P6457375607415275351

namespace A350253

/-- `A129982(∑[and(3, A197189(n))])` -/
def P6457375607415275351.Spec : Prop :=
  ∀ n, P6457375607415275351.a n = A350253 n

end A350253

/-!
# A350254: a(n) is the numerator of the largest ratio among the A341052(n) ratios for which there exist A341051(n) n-digit integers (the maximum possible) that are in geometric progression.

The programs for A350254, there is no canonical definition to state claims against.
-/

/-! ## A350254.P1115763651760559369

`A350255(n+1)+1-A341052(n+1)`
-/

namespace A350254.P1115763651760559369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350255 (n + 1) + (1 - A341052 (n + 1))

end

end A350254.P1115763651760559369

/-! ## A350254.P17200383022277990688

`A341053(∑[A341052(abs(1-n)+1)])`
-/

namespace A350254.P17200383022277990688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341052 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350254.P17200383022277990688

/-! ## A350254.P14750804294429431608

`A341053(∑[A341052(n+1)])+1-A341052(n+1)`
-/

namespace A350254.P14750804294429431608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1 - A341052 (n + 1)

end

end A350254.P14750804294429431608

/-! ## A350254.P8850626762255161468

`A236857(A260795(n+4))`
-/

namespace A350254.P8850626762255161468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236857 (A260795 (n + 4)).toNat

end

end A350254.P8850626762255161468

/-! ## A350254.P8383700028641376878

`A236857(A265063(n+1))`
-/

namespace A350254.P8383700028641376878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236857 (A265063 (n + 1)).toNat

end

end A350254.P8383700028641376878

/-!
# A350255: a(n) is the numerator of the smallest ratio among the A341052(n) ratios for which there exist A341051(n) n-digit integers (the maximum possible) that are in geometric progression.

The programs for A350255, there is no canonical definition to state claims against.
-/

/-! ## A350255.P2778247675525516510

`A341052(n+1)+A350254(n+1)-1`
-/

namespace A350255.P2778247675525516510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341052 (n + 1) + (A350254 (n + 1) - 1)

end

end A350255.P2778247675525516510

/-! ## A350255.P7280579621655649202

`A341052(n+1)+A002837(A350254(n+1))`
-/

namespace A350255.P7280579621655649202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341052 (n + 1) + A002837 (A350254 (n + 1)).toNat

end

end A350255.P7280579621655649202

/-! ## A350255.P4391160215937944408

`A233583(A350254(n+1)+A341052(n+1))`
-/

namespace A350255.P4391160215937944408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A350254 (n + 1) + A341052 (n + 1)).toNat

end

end A350255.P4391160215937944408

/-! ## A350255.P10072979700769953074

`abs(A024000(A350254(n+1)+A341052(n+1)))`
-/

namespace A350255.P10072979700769953074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (A350254 (n + 1) + A341052 (n + 1)).toNat|

end

end A350255.P10072979700769953074

/-!
# A350256: Triangle read by rows. T(n, k) = BellPolynomial(n, k).

The programs for A350256, there is no canonical definition to state claims against.
-/

/-! ## A350256.P8140353957557051338

`A189233(A245300(n))`
-/

namespace A350256.P8140353957557051338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A245300 n).toNat

end

end A350256.P8140353957557051338

/-! ## A350256.P16042238746334494247

`A292860(A245300(n)+A025581(n))`
-/

namespace A350256.P16042238746334494247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A245300 n + A025581 n).toNat

end

end A350256.P16042238746334494247

/-! ## A350256.P14124506018850188940

`A350259(n)/∑[char[∑[n+1]]]!`
-/

namespace A350256.P14124506018850188940
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350259 n : ℚ) / (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A350256.P14124506018850188940

/-! ## A350256.P5960938404794183725

`A350258(n)/A233543(n)`
-/

namespace A350256.P5960938404794183725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350258 n : ℚ) / (A233543 n : ℚ)

end

end A350256.P5960938404794183725

/-! ## A350256.P17315181231482160457

`A350258(n)/A002262(n)!`
-/

namespace A350256.P17315181231482160457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350258 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A350256.P17315181231482160457

/-!
# A350257: Triangle read by rows. T(n, k) = k^n * BellPolynomial(n, k).

The programs for A350257, there is no canonical definition to state claims against.
-/

/-! ## A350257.P17055226133241661324

`A002262(n)^A003056(n)*A350256(n)`
-/

namespace A350257.P17055226133241661324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A003056 n : ℤ) * (A350256 n : ℚ)

end

end A350257.P17055226133241661324

/-! ## A350257.P13206584038074673330

`A166352(n)^A003056(n)*A350256(n)`
-/

namespace A350257.P13206584038074673330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166352 n : ℚ) ^ (A003056 n : ℤ) * (A350256 n : ℚ)

end

end A350257.P13206584038074673330

/-! ## A350257.P5791977423129757957

`A000688(A000110(n))*A350258(n)`
-/

namespace A350257.P5791977423129757957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000110 n).toNat * A350258 n

end

end A350257.P5791977423129757957

/-! ## A350257.P10370126726445525742

`A000688(abs(A292935(n)))*A350258(n)`
-/

namespace A350257.P10370126726445525742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 |A292935 n|.toNat * A350258 n

end

end A350257.P10370126726445525742

/-!
# A350258: Triangle read by rows. T(n, k) = k! * BellPolynomial(n, k).

The programs for A350258, there is no canonical definition to state claims against.
-/

/-! ## A350258.P14909183821700477210

`A233543(n)*A350256(n)`
-/

namespace A350258.P14909183821700477210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A350256 n

end

end A350258.P14909183821700477210

/-! ## A350258.P5380273025209487228

`A350259(n)/A094587(n)`
-/

namespace A350258.P5380273025209487228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350259 n : ℚ) / (A094587 n : ℚ)

end

end A350258.P5380273025209487228

/-! ## A350258.P11999546189396054819

`A002262(n)!*A350256(n)`
-/

namespace A350258.P11999546189396054819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A350256 n

end

end A350258.P11999546189396054819

/-! ## A350258.P16761246672171848735

`A166352(n)!*A350256(n)`
-/

namespace A350258.P16761246672171848735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A166352 n).toNat : ℤ) * A350256 n

end

end A350258.P16761246672171848735

/-! ## A350258.P10238676690039536489

`A144328(n+1)!*A350256(n)`
-/

namespace A350258.P10238676690039536489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A350256 n

end

end A350258.P10238676690039536489

/-!
# A350259: Triangle read by rows. T(n, k) = n! * BellPolynomial(n, k).

The programs for A350259, there is no canonical definition to state claims against.
-/

/-! ## A350259.P2988558125564788610

`∑[char[∑[n+1]]]!*A350256(n)`
-/

namespace A350259.P2988558125564788610
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A350256 n

end

end A350259.P2988558125564788610

/-! ## A350259.P8931523679753704110

`A094587(n)*A350258(n)`
-/

namespace A350259.P8931523679753704110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A350258 n

end

end A350259.P8931523679753704110

/-! ## A350259.P8469451439564495058

`A000142(A003056(n))*A350256(n)`
-/

namespace A350259.P8469451439564495058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A003056 n).toNat * A350256 n

end

end A350259.P8469451439564495058

/-! ## A350259.P16977801237160026200

`A008279(A061579(n))*A350258(n)`
-/

namespace A350259.P16977801237160026200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat * A350258 n

end

end A350259.P16977801237160026200

/-! ## A350259.P12882436923589017932

`A003056(n)!*A189233(A245300(n))`
-/

namespace A350259.P12882436923589017932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A189233 (A245300 n).toNat

end

end A350259.P12882436923589017932

/-!
# A350263: Triangle read by rows. T(n, k) = BellPolynomial(n, -k).

The programs for A350263, there is no canonical definition to state claims against.
-/

/-! ## A350263.P10095941216938522426

`A292861(A245300(n)+A025581(n))`
-/

namespace A350263.P10095941216938522426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (A245300 n + A025581 n).toNat

end

end A350263.P10095941216938522426

/-!
# A350264: a(n) = Sum_{k=0..n} BellPolynomial(n, k), row sums of A350263.

The programs for A350264, there is no canonical definition to state claims against.
-/

/-! ## A350264.P15350431046825898857

`A210435(n!*C(2*n, n)-1)`
-/

namespace A350264.P15350431046825898857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (Nat.factorial n * Nat.choose (2 * n) n - 1)

end

end A350264.P15350431046825898857

/-!
# A350265: a(n) = hypergeometric([-n - 1, 1 - n, -n], [1, 3], -1).

The programs for A350265, there is no canonical definition to state claims against.
-/

/-! ## A350265.P11771222352018853093

`(n+1)*A001181(n)/A020639(A005893(n))`
-/

namespace A350265.P11771222352018853093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A001181 n : ℚ) / (A020639 (A005893 n).toNat : ℚ))

end

end A350265.P11771222352018853093

/-! ## A350265.P13504010811088486712

`A001181(n)/A020639(A005893(n))*A008619(2*n)`
-/

namespace A350265.P13504010811088486712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001181 n : ℚ) / (A020639 (A005893 n).toNat : ℚ) * (A008619 (2 * n) : ℚ)

end

end A350265.P13504010811088486712

/-!
# A350266: Triangle read by rows. T(n, k) = binomial(n, k) * n! / (n - k + 1)! if k >= 1, if k = 0 then T(n, k) = k^n. T(n, k) for 0 <= k <= n.

The programs for A350266, there is no canonical definition to state claims against.
-/

/-! ## A350266.P7396392756515428693

`floor(A089231(n+1)/∑[char[∑[n]]])`
-/

namespace A350266.P7396392756515428693
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089231 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A350266.P7396392756515428693

/-! ## A350266.P714165521346702541

`floor(A144084(n)/(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A350266.P714165521346702541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144084 n : ℚ) / ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ)⌋

end

end A350266.P714165521346702541

/-! ## A350266.P16175779722688071419

`floor(A144084(n)/A004736(n+1))`
-/

namespace A350266.P16175779722688071419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144084 n : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A350266.P16175779722688071419

/-! ## A350266.P8426800793109329718

`floor(A144084(n)/(A025581(n)+1))`
-/

namespace A350266.P8426800793109329718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144084 n : ℚ) / (A025581 n + 1 : ℚ)⌋

end

end A350266.P8426800793109329718

/-! ## A350266.P5893632972781892665

`floor(A144084(n)/A130297(n+1))`
-/

namespace A350266.P5893632972781892665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144084 n : ℚ) / (A130297 (n + 1) : ℚ)⌋

end

end A350266.P5893632972781892665

/-! ## A350266.P10052207618830746691

`floor(abs(A021010(n)/A004736(n+1)))`
-/

namespace A350266.P10052207618830746691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A021010 n : ℚ) / (A004736 (n + 1) : ℚ)|⌋

end

end A350266.P10052207618830746691

/-! ## A350266.P17102087473597484462

`floor(A196347(n)/A004736(n+1)!)`
-/

namespace A350266.P17102087473597484462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196347 n : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)⌋

end

end A350266.P17102087473597484462

/-! ## A350266.P15258560113013424607

`floor(A144084(n)/A080883(A061885(n)))`
-/

namespace A350266.P15258560113013424607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144084 n : ℚ) / (A080883 (A061885 n).toNat : ℚ)⌋

end

end A350266.P15258560113013424607

/-! ## A350266.P15469398396428179408

`floor(A144084(n)/A002260(A278818(n)))`
-/

namespace A350266.P15469398396428179408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144084 n : ℚ) / (A002260 (A278818 n).toNat : ℚ)⌋

end

end A350266.P15469398396428179408

/-! ## A350266.P16665288822908735241

`A094587(A038722(n+1))*A206735(n)`
-/

namespace A350266.P16665288822908735241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A038722 (n + 1)).toNat * A206735 n

end

end A350266.P16665288822908735241

/-!
# A350267: a(n) = n*hypergeom([1, 1 - n, -n], [2], 1).

The programs for A350267, the canonical program `A350267.P7731839194122321140` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350267 has offset 0).

The definition of A350267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350267.P7731839194122321140

`∑{#}[n-1, C(n, #+1)²*(#+1)!/(n-#)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350267

/-- `∑{#}[n-1, C(n, #+1)²*(#+1)!/(n-#)]` -/
def P7731839194122321140.Spec : Prop :=
  ∀ n, P7731839194122321140.a n = (A350267 n : ℚ)

end A350267

/-! ## A350267.P233373707900990528

`A394237(n+1)-1`
-/

namespace A350267.P233373707900990528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394237 (n + 1) - 1

end

end A350267.P233373707900990528

namespace A350267

/-- `A394237(n+1)-1` -/
def P233373707900990528.Spec : Prop :=
  ∀ n, P233373707900990528.a n = A350267 n

end A350267

/-! ## A350267.P6864324734071626923

`(A000262(n+1)-1)/(n+1)`
-/

namespace A350267.P6864324734071626923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A350267.P6864324734071626923

namespace A350267

/-- `(A000262(n+1)-1)/(n+1)` -/
def P6864324734071626923.Spec : Prop :=
  ∀ n, P6864324734071626923.a n = (A350267 n : ℚ)

end A350267

/-! ## A350267.P11059351839579062933

`A129833(n)-A002720(n)`
-/

namespace A350267.P11059351839579062933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129833 n - A002720 n

end

end A350267.P11059351839579062933

namespace A350267

/-- `A129833(n)-A002720(n)` -/
def P11059351839579062933.Spec : Prop :=
  ∀ n, P11059351839579062933.a n = A350267 n

end A350267

/-!
# A350268: a(n) = Sum_{k=0..n} (n - k)! * (n - 1)^k. Row sums of A350269.

The programs for A350268, the canonical program `A350268.P13264863727251734777` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350268 has offset 0).

The definition of A350268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (n-#)!*(n-1)^#]` (program `A350268.P13264863727251734777`, by `A350268.P13264863727251734777.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350268.P13264863727251734777

`∑{#}[n, (n-#)!*(n-1)^#]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350268

/-- `∑{#}[n, (n-#)!*(n-1)^#]` -/
def P13264863727251734777.Spec : Prop :=
  ∀ n, P13264863727251734777.a n = A350268 n

theorem P13264863727251734777.correct : P13264863727251734777.Spec := by
  intro n
  simp only [A350268]

end A350268

/-! ## A350268.P6719513421969318338

`A002264(2*(n+2)^(n-1))+n!`
-/

namespace A350268.P6719513421969318338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway (2 * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + (Nat.factorial n : ℤ)

end

end A350268.P6719513421969318338

namespace A350268

/-- `A002264(2*(n+2)^(n-1))+n!` -/
def P6719513421969318338.Spec : Prop :=
  ∀ n, P6719513421969318338.a n = A350268 n

end A350268

/-!
# A350269: Triangle read by rows, T(n, k) = (n - k)!*(n - 1)^k, for 0 <= k <= n.

The programs for A350269, the canonical program `A350269.P12522223152326621135` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350269 has offset 0).

The definition of A350269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n))!*(row(n)-1)^col(n)` (program `A350269.P12522223152326621135`, by `A350269.P12522223152326621135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350269.P12522223152326621135

`(row(n)-col(n))!*(row(n)-1)^col(n)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350269

/-- `(row(n)-col(n))!*(row(n)-1)^col(n)` -/
def P12522223152326621135.Spec : Prop :=
  ∀ n, P12522223152326621135.a n = A350269 n

theorem P12522223152326621135.correct : P12522223152326621135.Spec := by
  intro n
  simp only [A350269]

end A350269

/-! ## A350269.P13467534635392831982

`A350297(n)/A007318(n)`
-/

namespace A350269.P13467534635392831982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350297 n : ℚ) / (A007318 n : ℚ)

end

end A350269.P13467534635392831982

namespace A350269

/-- `A350297(n)/A007318(n)` -/
def P13467534635392831982.Spec : Prop :=
  ∀ n, P13467534635392831982.a n = (A350269 n : ℚ)

end A350269

/-! ## A350269.P1287319982288734741

`abs(A350297(n)/A108086(n))`
-/

namespace A350269.P1287319982288734741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A350297 n : ℚ) / (A108086 n : ℚ)|

end

end A350269.P1287319982288734741

namespace A350269

/-- `abs(A350297(n)/A108086(n))` -/
def P1287319982288734741.Spec : Prop :=
  ∀ n, P1287319982288734741.a n = (A350269 n : ℚ)

end A350269

/-! ## A350269.P3199455626026438542

`abs(A350297(n)/A117440(n))`
-/

namespace A350269.P3199455626026438542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A350297 n : ℚ) / (A117440 n : ℚ)|

end

end A350269.P3199455626026438542

namespace A350269

/-- `abs(A350297(n)/A117440(n))` -/
def P3199455626026438542.Spec : Prop :=
  ∀ n, P3199455626026438542.a n = (A350269 n : ℚ)

end A350269

/-! ## A350269.P2526661437256302642

`abs(A350297(n)/A130595(n))`
-/

namespace A350269.P2526661437256302642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A350297 n : ℚ) / (A130595 n : ℚ)|

end

end A350269.P2526661437256302642

namespace A350269

/-- `abs(A350297(n)/A130595(n))` -/
def P2526661437256302642.Spec : Prop :=
  ∀ n, P2526661437256302642.a n = (A350269 n : ℚ)

end A350269

/-!
# A350271: The covering radius of the first order Reed-Muller code RM(1,n).

The programs for A350271, there is no canonical definition to state claims against.
-/

/-! ## A350271.P4417226858964649606

`ogf(x/(1-2x-2x^2+4x^3))`
-/

namespace A350271.P4417226858964649606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -2, 4] n

end

end A350271.P4417226858964649606

/-! ## A350271.P463278153371625482

`2^n-2^floor(n/2)`
-/

namespace A350271.P463278153371625482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A350271.P463278153371625482

/-! ## A350271.P240574267071925728

`record[Δ[2^floor(lcm(2, n)/4)]]`
-/

namespace A350271.P240574267071925728
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(Nat.lcm 2 n : ℚ) / 4⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350271.P240574267071925728

/-! ## A350271.P10841733380806529561

`record[lcm(1-n, gcd(64, ∑[n])%64)]`
-/

namespace A350271.P10841733380806529561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) ((Nat.gcd 64 (∑ j ∈ Finset.range (n + 1), f2 j) % 64 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350271.P10841733380806529561

/-!
# A350272: Triangle T(n,k), n >= 1, 0 <= k <= n-1, read by rows, where T(n,k) is the number of solutions to 1 +- 2 +- 3 +- ... +- n == k (mod n).

The programs for A350272, there is no canonical definition to state claims against.
-/

/-! ## A350272.P9330379080700368269

`A067644(A065896(n+1))%6`
-/

namespace A350272.P9330379080700368269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067644 (A065896 (n + 1)).toNat) 6

end

end A350272.P9330379080700368269

/-! ## A350272.P11214809725844669194

`and(A000005(A089844(n)), A130542(n+1))`
-/

namespace A350272.P11214809725844669194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A089844 n).toNat) (A130542 (n + 1))

end

end A350272.P11214809725844669194

/-! ## A350272.P3431589551190407416

`and(A001157(A284119(n+1)), A008619(n))`
-/

namespace A350272.P3431589551190407416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001157 (A284119 (n + 1)).toNat) (A008619 n)

end

end A350272.P3431589551190407416

/-! ## A350272.P392076686280423232

`and(A000120(A107659(n)), A113748(n+1))`
-/

namespace A350272.P392076686280423232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A107659 n).toNat) (A113748 (n + 1))

end

end A350272.P392076686280423232

/-!
# A350273: Irregular triangle read by rows: T(n,k) is the number of n-permutations whose fourth-longest cycle has length exactly k; n >= 0, 0 <= k <= floor(n/4).

The programs for A350273, there is no canonical definition to state claims against.
-/

/-! ## A350273.P2060113151321420843

`A350274(A228050(n+1))`
-/

namespace A350273.P2060113151321420843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350274 (A228050 (n + 1)).toNat

end

end A350273.P2060113151321420843

/-! ## A350273.P1593693776219726970

`A350274(A308070(n+1))`
-/

namespace A350273.P1593693776219726970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350274 (A308070 (n + 1)).toNat

end

end A350273.P1593693776219726970

/-! ## A350273.P13773431570947885573

`A350274(n)*A351014(2^n)`
-/

namespace A350273.P13773431570947885573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350274 n * A351014 (2 ^ n)

end

end A350273.P13773431570947885573

/-!
# A350275: Irregular triangle read by rows: T(n,k) is the number of endofunctions on [n] whose fourth-largest component has size exactly k; n >= 0, 0 <= k <= floor(n/4).

The programs for A350275, there is no canonical definition to state claims against.
-/

/-! ## A350275.P14720247998504340520

`A350276(A004912(n+1))`
-/

namespace A350275.P14720247998504340520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350276 (A004912 (n + 1)).toNat

end

end A350275.P14720247998504340520

/-! ## A350275.P17129882156752601709

`A350276(A228050(n+1))`
-/

namespace A350275.P17129882156752601709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350276 (A228050 (n + 1)).toNat

end

end A350275.P17129882156752601709

/-! ## A350275.P9424404271685535634

`A350276(A308070(n+1))`
-/

namespace A350275.P9424404271685535634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350276 (A308070 (n + 1)).toNat

end

end A350275.P9424404271685535634

/-!
# A350278: Index of first occurrence of n in A349325.

The programs for A350278, there is no canonical definition to state claims against.
-/

/-! ## A350278.P9165037091433538492

`or(A005811(n), A262609(A094958(n+1)))`
-/

namespace A350278.P9165037091433538492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005811 n) (A262609 (A094958 (n + 1)).toNat)

end

end A350278.P9165037091433538492

/-! ## A350278.P6437863225967133383

`or(A063772(n), A262609(A094958(n+1)))`
-/

namespace A350278.P6437863225967133383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063772 n) (A262609 (A094958 (n + 1)).toNat)

end

end A350278.P6437863225967133383

/-! ## A350278.P13765916141439315304

`or(A064289(n), A262609(A094958(n+1)))`
-/

namespace A350278.P13765916141439315304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064289 n) (A262609 (A094958 (n + 1)).toNat)

end

end A350278.P13765916141439315304

/-! ## A350278.P11657684806102780358

`or(A083219(n), A262609(A094958(n+1)))`
-/

namespace A350278.P11657684806102780358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083219 n) (A262609 (A094958 (n + 1)).toNat)

end

end A350278.P11657684806102780358

/-!
# A350279: Irregular triangle T(n,k) read by rows in which row n lists the iterates of the Farkas map (A349407) from 2*n - 1 to 1.

The programs for A350279, there is no canonical definition to state claims against.
-/

/-! ## A350279.P10475349542890856756

`2*A350548(n)+1`
-/

namespace A350279.P10475349542890856756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350548 n + 1

end

end A350279.P10475349542890856756

/-! ## A350279.P9757160152032030047

`A005408(A350548(n))`
-/

namespace A350279.P9757160152032030047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A350548 n).toNat

end

end A350279.P9757160152032030047

/-! ## A350279.P9021940222131558456

`A004273(A350548(n)+1)`
-/

namespace A350279.P9021940222131558456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A350548 n + 1).toNat

end

end A350279.P9021940222131558456

/-! ## A350279.P1470783683654499431

`A060747(A350548(n)+1)`
-/

namespace A350279.P1470783683654499431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A350548 n + 1).toNat

end

end A350279.P1470783683654499431

/-! ## A350279.P3595161385974210723

`A004442(2*A350548(n))`
-/

namespace A350279.P3595161385974210723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A350548 n).toNat

end

end A350279.P3595161385974210723

/-! ## A350279.P14895042456238865958

`A165998(2*A350548(n))`
-/

namespace A350279.P14895042456238865958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (2 * A350548 n).toNat

end

end A350279.P14895042456238865958

/-! ## A350279.P14367105766067837513

`A008619(4*A350548(n))`
-/

namespace A350279.P14367105766067837513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A350548 n).toNat

end

end A350279.P14367105766067837513

/-!
# A350280: Number of bracelets describing topological configurations of points and lines formed by the perpendicular bisectors of the sides of a convex cyclic n-gon.

The programs for A350280, there is no canonical definition to state claims against.
-/

/-! ## A350280.P11155775726769889699

`record[A034356(2*(n+1))]-A322111(n+3)`
-/

namespace A350280.P11155775726769889699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034356 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A322111 (n + 3)

end

end A350280.P11155775726769889699

/-!
# A350282: a(n) is the constant term in the expansion of Product_{k=1..n} (x^k + 1/x^k)^n.

The programs for A350282, there is no canonical definition to state claims against.
-/

/-! ## A350282.P8377370477538280812

`A010060(A227682(2*n))*A369725(n)`
-/

namespace A350282.P8377370477538280812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A227682 (2 * n)).toNat * A369725 n

end

end A350282.P8377370477538280812

/-!
# A350284: Numbers k which are the product of a cube greater than 1 and a prime, and where k-1 and k-2 are semiprimes.

The programs for A350284, there is no canonical definition to state claims against.
-/

/-! ## A350284.P9801363991680296808

`A345193(A283259(n+1)-A276687(n+1))`
-/

namespace A350284.P9801363991680296808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (A283259 (n + 1) - A276687 (n + 1)).toNat

end

end A350284.P9801363991680296808

/-!
# A350285: a(n) is the least d > 0 such that A010060(n) = A010060(n - i*d) for i = 0..A350226(n)-1 (A010060 corresponds to the Thue-Morse sequence).

The programs for A350285, there is no canonical definition to state claims against.
-/

/-! ## A350285.P18278146160054758416

`or(A124759(n), A124765(A348614(3*n+2)))`
-/

namespace A350285.P18278146160054758416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124759 n) (A124765 (A348614 (3 * n + 2)).toNat)

end

end A350285.P18278146160054758416

/-!
# A350286: Number of different ways to partition the set of vertices of a convex (n+11)-gon into 4 nonintersecting polygons.

The programs for A350286, the canonical program `A350286.P17076501608952760758` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350286 has offset 0).

The definition of A350286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350286.P17803796667195306156

`ogf((55x-99x^2+63x^3-14x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A350286.P17803796667195306156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 55, -99, 63, -14] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A350286.P17803796667195306156

namespace A350286

/-- `ogf((55x-99x^2+63x^3-14x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P17803796667195306156.Spec : Prop :=
  ∀ n, P17803796667195306156.a n = A350286 n

end A350286

/-! ## A350286.P17076501608952760758

`n*(n+1)*(n+2)*(n+9)*(n+10)*(n+11)/144`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350286

/-- `n*(n+1)*(n+2)*(n+9)*(n+10)*(n+11)/144` -/
def P17076501608952760758.Spec : Prop :=
  ∀ n, P17076501608952760758.a n = (A350286 n : ℚ)

end A350286

/-! ## A350286.P4421948185205124815

`A000292(n+9)/4*∑[∑[n]]`
-/

namespace A350286.P4421948185205124815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 9) : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A350286.P4421948185205124815

namespace A350286

/-- `A000292(n+9)/4*∑[∑[n]]` -/
def P4421948185205124815.Spec : Prop :=
  ∀ n, P4421948185205124815.a n = (A350286 n : ℚ)

end A350286

/-!
# A350287: Number of solutions to +-1 +- 3 +- 6 +- 10 +- ... +- n*(n + 1)/2 = 0 or 1.

The programs for A350287, there is no canonical definition to state claims against.
-/

/-! ## A350287.P6799801361487773645

`A040001(∑[∑[n]])*A308682(n)`
-/

namespace A350287.P6799801361487773645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (∑ j ∈ Finset.range (n + 1), f1 j) * A308682 n

end

end A350287.P6799801361487773645

/-! ## A350287.P3591881057283797762

`A308682(n)+A058498(A028310(n))`
-/

namespace A350287.P3591881057283797762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308682 n + A058498 (A028310 n).toNat

end

end A350287.P3591881057283797762

/-! ## A350287.P16487014362284686698

`A308682(n)+A058498(A233583(n+1))`
-/

namespace A350287.P16487014362284686698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308682 n + A058498 (A233583 (n + 1)).toNat

end

end A350287.P16487014362284686698

/-! ## A350287.P347510917730414178

`A014695(A024363(n+1))*A308682(n)`
-/

namespace A350287.P347510917730414178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A024363 (n + 1)).toNat * A308682 n

end

end A350287.P347510917730414178

/-! ## A350287.P8723545950602122327

`A308682(n)+A058498(A000007(n)+n)`
-/

namespace A350287.P8723545950602122327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308682 n + A058498 (A000007 n + (n : ℤ)).toNat

end

end A350287.P8723545950602122327

/-!
# A350288: a(n) is the smallest number which can be represented as the sum of n distinct nonzero triangular numbers in exactly n ways, or 0 if no such number exists.

The programs for A350288, there is no canonical definition to state claims against.
-/

/-! ## A350288.P10977939811534583500

`A317589(A115403(2*n+3)/A078200(n+1))`
-/

namespace A350288.P10977939811534583500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (SequenceMachineLib.roundAway ((A115403 (2 * n + 3) : ℚ) / (A078200 (n + 1 + 100) : ℚ))).toNat

end

end A350288.P10977939811534583500

/-!
# A350289: Infinite binary Walsh matrix read by antidiagonals.

The programs for A350289, the canonical program `A350289.P15999425623583731686` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350289 has offset 0).

The definition of A350289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350289.P10046540192638599973

`A341288(n)%2`
-/

namespace A350289.P10046540192638599973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341288 n) 2

end

end A350289.P10046540192638599973

namespace A350289

/-- `A341288(n)%2` -/
def P10046540192638599973.Spec : Prop :=
  ∀ n, P10046540192638599973.a n = A350289 n

end A350289

/-! ## A350289.P15999425623583731686

`A010060(A004198(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A350289

/-- `A010060(A004198(n))` -/
def P15999425623583731686.Spec : Prop :=
  ∀ n, P15999425623583731686.a n = A350289 n

theorem P15999425623583731686.correct : P15999425623583731686.Spec := by
  intro n
  simp only [A350289]

end A350289

/-! ## A350289.P17157536521337082201

`A000035(A341288(n))`
-/

namespace A350289.P17157536521337082201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A341288 n).toNat

end

end A350289.P17157536521337082201

namespace A350289

/-- `A000035(A341288(n))` -/
def P17157536521337082201.Spec : Prop :=
  ∀ n, P17157536521337082201.a n = A350289 n

end A350289

/-! ## A350289.P16079040108089492388

`A104894(A286099(n))`
-/

namespace A350289.P16079040108089492388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104894 (A286099 n).toNat

end

end A350289.P16079040108089492388

namespace A350289

/-- `A104894(A286099(n))` -/
def P16079040108089492388.Spec : Prop :=
  ∀ n, P16079040108089492388.a n = A350289 n

end A350289

/-! ## A350289.P11842217597340570865

`A036581(2*A004198(n))`
-/

namespace A350289.P11842217597340570865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (2 * A004198 n).toNat

end

end A350289.P11842217597340570865

namespace A350289

/-- `A036581(2*A004198(n))` -/
def P11842217597340570865.Spec : Prop :=
  ∀ n, P11842217597340570865.a n = A350289 n

end A350289

/-! ## A350289.P1812048231969686064

`A254379(2*A004198(n))`
-/

namespace A350289.P1812048231969686064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * A004198 n).toNat

end

end A350289.P1812048231969686064

namespace A350289

/-- `A254379(2*A004198(n))` -/
def P1812048231969686064.Spec : Prop :=
  ∀ n, P1812048231969686064.a n = A350289 n

end A350289

/-! ## A350289.P2571681914479417511

`and(A007664(n), A341288(n))`
-/

namespace A350289.P2571681914479417511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A341288 n)

end

end A350289.P2571681914479417511

namespace A350289

/-- `and(A007664(n), A341288(n))` -/
def P2571681914479417511.Spec : Prop :=
  ∀ n, P2571681914479417511.a n = A350289 n

end A350289

/-! ## A350289.P2404748837442409176

`A064990(A374560(n))`
-/

namespace A350289.P2404748837442409176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (A374560 n).toNat

end

end A350289.P2404748837442409176

namespace A350289

/-- `A064990(A374560(n))` -/
def P2404748837442409176.Spec : Prop :=
  ∀ n, P2404748837442409176.a n = A350289 n

end A350289

/-! ## A350289.P18423325092254619851

`A160383(A054238(n))%2`
-/

namespace A350289.P18423325092254619851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160383 (A054238 n).toNat) 2

end

end A350289.P18423325092254619851

namespace A350289

/-- `A160383(A054238(n))%2` -/
def P18423325092254619851.Spec : Prop :=
  ∀ n, P18423325092254619851.a n = A350289 n

end A350289

/-! ## A350289.P3966713747705804130

`and(A174692(n), A341288(n))`
-/

namespace A350289.P3966713747705804130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174692 n) (A341288 n)

end

end A350289.P3966713747705804130

namespace A350289

/-- `and(A174692(n), A341288(n))` -/
def P3966713747705804130.Spec : Prop :=
  ∀ n, P3966713747705804130.a n = A350289 n

end A350289

/-! ## A350289.P7402779118203803510

`A135481(A341288(n)²)`
-/

namespace A350289.P7402779118203803510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A341288 n ^ 2).toNat

end

end A350289.P7402779118203803510

namespace A350289

/-- `A135481(A341288(n)²)` -/
def P7402779118203803510.Spec : Prop :=
  ∀ n, P7402779118203803510.a n = A350289 n

end A350289

/-! ## A350289.P3070984408971722150

`and(A000051(n), A341288(n))`
-/

namespace A350289.P3070984408971722150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A341288 n)

end

end A350289.P3070984408971722150

namespace A350289

/-- `and(A000051(n), A341288(n))` -/
def P3070984408971722150.Spec : Prop :=
  ∀ n, P3070984408971722150.a n = A350289 n

end A350289

/-! ## A350289.P8492029889597637806

`and(A004119(n), A341288(n))`
-/

namespace A350289.P8492029889597637806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004119 n) (A341288 n)

end

end A350289.P8492029889597637806

namespace A350289

/-- `and(A004119(n), A341288(n))` -/
def P8492029889597637806.Spec : Prop :=
  ∀ n, P8492029889597637806.a n = A350289 n

end A350289

/-! ## A350289.P14721621575351392304

`and(A195744(n), A341288(n))`
-/

namespace A350289.P14721621575351392304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A341288 n)

end

end A350289.P14721621575351392304

namespace A350289

/-- `and(A195744(n), A341288(n))` -/
def P14721621575351392304.Spec : Prop :=
  ∀ n, P14721621575351392304.a n = A350289 n

end A350289

/-! ## A350289.P14460277241407729524

`and(A206371(n), A341288(n))`
-/

namespace A350289.P14460277241407729524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206371 n) (A341288 n)

end

end A350289.P14460277241407729524

namespace A350289

/-- `and(A206371(n), A341288(n))` -/
def P14460277241407729524.Spec : Prop :=
  ∀ n, P14460277241407729524.a n = A350289 n

end A350289

/-! ## A350289.P9224068332102965264

`and(A122041(n+1), A341288(n))`
-/

namespace A350289.P9224068332102965264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A341288 n)

end

end A350289.P9224068332102965264

namespace A350289

/-- `and(A122041(n+1), A341288(n))` -/
def P9224068332102965264.Spec : Prop :=
  ∀ n, P9224068332102965264.a n = A350289 n

end A350289

/-! ## A350289.P8594405634710545503

`and(A159225(n+2), A341288(n))`
-/

namespace A350289.P8594405634710545503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159225 (n + 2)) (A341288 n)

end

end A350289.P8594405634710545503

namespace A350289

/-- `and(A159225(n+2), A341288(n))` -/
def P8594405634710545503.Spec : Prop :=
  ∀ n, P8594405634710545503.a n = A350289 n

end A350289

/-! ## A350289.P8246474202120867240

`and(A170881(n), A341288(n))`
-/

namespace A350289.P8246474202120867240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170881 n) (A341288 n)

end

end A350289.P8246474202120867240

namespace A350289

/-- `and(A170881(n), A341288(n))` -/
def P8246474202120867240.Spec : Prop :=
  ∀ n, P8246474202120867240.a n = A350289 n

end A350289

/-! ## A350289.P18302224826560227003

`and(A196657(n), A341288(n))`
-/

namespace A350289.P18302224826560227003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A341288 n)

end

end A350289.P18302224826560227003

namespace A350289

/-- `and(A196657(n), A341288(n))` -/
def P18302224826560227003.Spec : Prop :=
  ∀ n, P18302224826560227003.a n = A350289 n

end A350289

/-! ## A350289.P11627416304790826024

`and(A341288(n), A345109(n+1))`
-/

namespace A350289.P11627416304790826024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A341288 n) (A345109 (n + 1))

end

end A350289.P11627416304790826024

namespace A350289

/-- `and(A341288(n), A345109(n+1))` -/
def P11627416304790826024.Spec : Prop :=
  ∀ n, P11627416304790826024.a n = A350289 n

end A350289

/-!
# A350291: a(n) = 4^n*lim_{x->0} F(2*n) where F(n) = (d/dx)F(n-1) for n >= 1 and F(0) = exp(BesselI(0, x) - 1).

The programs for A350291, there is no canonical definition to state claims against.
-/

/-! ## A350291.P8540531748715860238

`A000984(n)*A023998(n)`
-/

namespace A350291.P8540531748715860238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A023998 n

end

end A350291.P8540531748715860238

/-! ## A350291.P15059624525340996340

`record[A081668(n)]*A023998(n)`
-/

namespace A350291.P15059624525340996340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A023998 n

end

end A350291.P15059624525340996340

/-! ## A350291.P18235304424718667996

`A001405(2*n)*A023998(n)`
-/

namespace A350291.P18235304424718667996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A023998 n

end

end A350291.P18235304424718667996

/-! ## A350291.P3852460358769347376

`A023998(n)*A081668(2*n)`
-/

namespace A350291.P3852460358769347376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023998 n * A081668 (2 * n)

end

end A350291.P3852460358769347376

/-! ## A350291.P8258433166209511409

`A023998(n)*A126869(2*n)`
-/

namespace A350291.P8258433166209511409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023998 n * A126869 (2 * n)

end

end A350291.P8258433166209511409

/-!
# A350292: Triangle read by rows: the n-th row gives the saturated vertex Turán numbers for the cube graph Q_n.

The programs for A350292, there is no canonical definition to state claims against.
-/

/-! ## A350292.P3312372759777322545

`A134510(n+1)*A209278(n+1)`
-/

namespace A350292.P3312372759777322545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134510 (n + 1) * A209278 (n + 1)

end

end A350292.P3312372759777322545

/-! ## A350292.P13606816110852125496

`A155038(n+1)*A185908(n+2)`
-/

namespace A350292.P13606816110852125496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1) * A185908 (n + 2)

end

end A350292.P13606816110852125496

/-! ## A350292.P6480870979469637770

`A091435(n)+A077055(A249822(n+1))`
-/

namespace A350292.P6480870979469637770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + A077055 (A249822 (n + 1)).toNat

end

end A350292.P6480870979469637770

/-! ## A350292.P17849034314856866071

`A000010(A130321(n))*A185908(n+2)`
-/

namespace A350292.P17849034314856866071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130321 n).toNat * A185908 (n + 2)

end

end A350292.P17849034314856866071

/-! ## A350292.P7010510515927807456

`A054450(A014132(n+1))*A209278(n+1)`
-/

namespace A350292.P7010510515927807456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A014132 (n + 1)).toNat * A209278 (n + 1)

end

end A350292.P7010510515927807456

/-!
# A350293: a(n) is the 1st saturated vertex Turán number for the cube graph Q_n.

The programs for A350293, there is no canonical definition to state claims against.
-/

/-! ## A350293.P9049132335328989724

`ogf((1+2x^2+4x^5+8x^6)/(1-2x))`
-/

namespace A350293.P9049132335328989724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 0, 0, 4, 8] [1, -2] n

end

end A350293.P9049132335328989724

/-! ## A350293.P422620098737630732

`and((2^n+2)²-6, ∑[or(1, 2^n)-n])`
-/

namespace A350293.P422620098737630732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((2 ^ n + 2) ^ 2 : ℤ) - 6) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350293.P422620098737630732

/-! ## A350293.P17494333990964775844

`A002202(2^n-C(n, 3))`
-/

namespace A350293.P17494333990964775844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (2 ^ n - Nat.choose n 3)

end

end A350293.P17494333990964775844

/-!
# A350294: a(n) = floor(n*2^n/(n + 1)).

The programs for A350294, the canonical program `A350294.P2514091814312758924` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350294 has offset 0).

The definition of A350294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*2^n/(n+1))` (program `A350294.P2514091814312758924`, by `A350294.P2514091814312758924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350294.P2514091814312758924

`floor(n*2^n/(n+1))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350294

/-- `floor(n*2^n/(n+1))` -/
def P2514091814312758924.Spec : Prop :=
  ∀ n, P2514091814312758924.a n = A350294 n

theorem P2514091814312758924.correct : P2514091814312758924.Spec := by
  intro n
  simp only [A350294]

end A350294

/-! ## A350294.P10976729002043664321

`2^n-A053637(n+1)`
-/

namespace A350294.P10976729002043664321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A053637 (n + 1)

end

end A350294.P10976729002043664321

namespace A350294

/-- `2^n-A053637(n+1)` -/
def P10976729002043664321.Spec : Prop :=
  ∀ n, P10976729002043664321.a n = A350294 n

end A350294

/-! ## A350294.P11927149380764806571

`ceil(n/(n+1)*A000225(n))`
-/

namespace A350294.P11927149380764806571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ) * (A000225 n : ℚ)⌉

end

end A350294.P11927149380764806571

namespace A350294

/-- `ceil(n/(n+1)*A000225(n))` -/
def P11927149380764806571.Spec : Prop :=
  ∀ n, P11927149380764806571.a n = A350294 n

end A350294

/-! ## A350294.P16705644470743454464

`and(-A053637(n+1), A000225(n))`
-/

namespace A350294.P16705644470743454464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A053637 (n + 1)) (A000225 n)

end

end A350294.P16705644470743454464

namespace A350294

/-- `and(-A053637(n+1), A000225(n))` -/
def P16705644470743454464.Spec : Prop :=
  ∀ n, P16705644470743454464.a n = A350294 n

end A350294

/-! ## A350294.P11258713688232121731

`A000051(n)-(A053637(n+1)+1)`
-/

namespace A350294.P11258713688232121731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A053637 (n + 1) + 1)

end

end A350294.P11258713688232121731

namespace A350294

/-- `A000051(n)-(A053637(n+1)+1)` -/
def P11258713688232121731.Spec : Prop :=
  ∀ n, P11258713688232121731.a n = A350294 n

end A350294

/-! ## A350294.P16672339845573066973

`A000325(n)-A053637(n+1)+n`
-/

namespace A350294.P16672339845573066973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A053637 (n + 1) + (n : ℤ)

end

end A350294.P16672339845573066973

namespace A350294

/-- `A000325(n)-A053637(n+1)+n` -/
def P16672339845573066973.Spec : Prop :=
  ∀ n, P16672339845573066973.a n = A350294 n

end A350294

/-! ## A350294.P13531698215343558599

`A000079(n)-(A043545(n)+A006788(n+1))`
-/

namespace A350294.P13531698215343558599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A043545 n + A006788 (n + 1))

end

end A350294.P13531698215343558599

namespace A350294

/-- `A000079(n)-(A043545(n)+A006788(n+1))` -/
def P13531698215343558599.Spec : Prop :=
  ∀ n, P13531698215343558599.a n = A350294 n

end A350294

/-! ## A350294.P4505095041080796882

`A054650(n+1)+A000079(n)-A053638(n+1)`
-/

namespace A350294.P4505095041080796882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054650 (n + 1) + (A000079 n - A053638 (n + 1))

end

end A350294.P4505095041080796882

namespace A350294

/-- `A054650(n+1)+A000079(n)-A053638(n+1)` -/
def P4505095041080796882.Spec : Prop :=
  ∀ n, P4505095041080796882.a n = A350294 n

end A350294

/-! ## A350294.P9875257629833499396

`A054650(n+1)+A000225(n)-A082482(n+1)`
-/

namespace A350294.P9875257629833499396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054650 (n + 1) + (A000225 n - A082482 (n + 1))

end

end A350294.P9875257629833499396

namespace A350294

/-- `A054650(n+1)+A000225(n)-A082482(n+1)` -/
def P9875257629833499396.Spec : Prop :=
  ∀ n, P9875257629833499396.a n = A350294 n

end A350294

/-! ## A350294.P18427787776517766667

`ceil(A066524(n)/(n+1))`
-/

namespace A350294.P18427787776517766667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066524 n : ℚ) / (n + 1 : ℚ)⌉

end

end A350294.P18427787776517766667

namespace A350294

/-- `ceil(A066524(n)/(n+1))` -/
def P18427787776517766667.Spec : Prop :=
  ∀ n, P18427787776517766667.a n = A350294 n

end A350294

/-! ## A350294.P16028315551284789479

`round(A059672(n)/A103517(n))`
-/

namespace A350294.P16028315551284789479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059672 n : ℚ) / (A103517 n : ℚ))

end

end A350294.P16028315551284789479

namespace A350294

/-- `round(A059672(n)/A103517(n))` -/
def P16028315551284789479.Spec : Prop :=
  ∀ n, P16028315551284789479.a n = A350294 n

end A350294

/-!
# A350295: 2nd subdiagonal of the triangle A350292.

The programs for A350295, the canonical program `A350295.P2643765296414287942` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350295 has offset 3).

The definition of A350295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350295.P252269924778246867

`ogf((6-10x+4x^2+3x^3-2x^4)/(1-3x+3x^2-x^3))`
-/

namespace A350295.P252269924778246867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10, 4, 3, -2] [1, -3, 3, -1] n

end

end A350295.P252269924778246867

namespace A350295

/-- `ogf((6-10x+4x^2+3x^3-2x^4)/(1-3x+3x^2-x^3))` -/
def P252269924778246867.Spec : Prop :=
  ∀ n, P252269924778246867.a n = A350295 (n + 3)

end A350295

/-! ## A350295.P2643765296414287942

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=6, a(1)=8, a(2)=10, a(3)=15, a(4)=21`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350295

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2643765296414287942.Spec : Prop :=
  ∀ n, P2643765296414287942.a n = A350295 (n + 3)

theorem P2643765296414287942.correct : P2643765296414287942.Spec := by
  intro n
  simp only [A350295, Nat.add_sub_cancel]

end A350295

/-! ## A350295.P114792097911875983

`∑[a(2%n)+n]` with `a(0)=6, a(1)=2, a(2)=2`
-/

namespace A350295.P114792097911875983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 2, 2] fun n f1 =>
  f1 (2 % n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350295.P114792097911875983

namespace A350295

/-- `∑[a(2%n)+n]` -/
def P114792097911875983.Spec : Prop :=
  ∀ n, (P114792097911875983.a n : ℤ) = A350295 (n + 3)

end A350295

/-! ## A350295.P1479303742817072138

`record[a(n-1)+n]` with `a(0)=6, a(1)=8, a(2)=3`
-/

namespace A350295.P1479303742817072138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 8, 3] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350295.P1479303742817072138

namespace A350295

/-- `record[a(n-1)+n]` -/
def P1479303742817072138.Spec : Prop :=
  ∀ n, (P1479303742817072138.a n : ℤ) = A350295 (n + 3)

end A350295

/-! ## A350295.P2536726642910795135

`∑[a(n-1)+1]` with `a(0)=6, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A350295.P2536726642910795135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 2, 2, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350295.P2536726642910795135

namespace A350295

/-- `∑[a(n-1)+1]` -/
def P2536726642910795135.Spec : Prop :=
  ∀ n, (P2536726642910795135.a n : ℤ) = A350295 (n + 3)

end A350295

/-! ## A350295.P6797846924782196175

`a(n-1)+2+n` with `a(0)=6, a(1)=8, a(2)=10`
-/

namespace A350295.P6797846924782196175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 8, 10] fun n a =>
  a (n - 1) + 2 + n

end

end A350295.P6797846924782196175

namespace A350295

/-- `a(n-1)+2+n` -/
def P6797846924782196175.Spec : Prop :=
  ∀ n, (P6797846924782196175.a n : ℤ) = A350295 (n + 3)

end A350295

/-! ## A350295.P10988583675190925418

`∑[n+2]+4-3%(n²+1)`
-/

namespace A350295.P10988583675190925418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ) - ((3 % (n ^ 2 + 1) : ℕ) : ℤ)

end

end A350295.P10988583675190925418

namespace A350295

/-- `∑[n+2]+4-3%(n²+1)` -/
def P10988583675190925418.Spec : Prop :=
  ∀ n, P10988583675190925418.a n = A350295 (n + 3)

end A350295

/-! ## A350295.P9346128730903522689

`∑[n+2]+(n+2)^C(2, n+1)`
-/

namespace A350295.P9346128730903522689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ Nat.choose 2 (n + 1)

end

end A350295.P9346128730903522689

namespace A350295

/-- `∑[n+2]+(n+2)^C(2, n+1)` -/
def P9346128730903522689.Spec : Prop :=
  ∀ n, (P9346128730903522689.a n : ℤ) = A350295 (n + 3)

end A350295

/-! ## A350295.P1119725902737982244

`C(n+3, 2)-(n-3)*C(n, n²)`
-/

namespace A350295.P1119725902737982244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - ((n : ℤ) - 3) * (Nat.choose n (n ^ 2) : ℤ)

end

end A350295.P1119725902737982244

namespace A350295

/-- `C(n+3, 2)-(n-3)*C(n, n²)` -/
def P1119725902737982244.Spec : Prop :=
  ∀ n, P1119725902737982244.a n = A350295 (n + 3)

end A350295

/-! ## A350295.P12894698263241745077

`(C(2, n+1)+n+2)*(n+3)/2`
-/

namespace A350295.P12894698263241745077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 1) + (n + 2) : ℚ) * ((n + 3 : ℚ) / 2)

end

end A350295.P12894698263241745077

namespace A350295

/-- `(C(2, n+1)+n+2)*(n+3)/2` -/
def P12894698263241745077.Spec : Prop :=
  ∀ n, P12894698263241745077.a n = (A350295 (n + 3) : ℚ)

end A350295

/-! ## A350295.P7857523034540031348

`∑[n+3-C(n, (1-n)²)]-(n-3)`
-/

namespace A350295.P7857523034540031348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.choose n ((1 - (n : ℤ)) ^ 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 3)

end

end A350295.P7857523034540031348

namespace A350295

/-- `∑[n+3-C(n, (1-n)²)]-(n-3)` -/
def P7857523034540031348.Spec : Prop :=
  ∀ n, P7857523034540031348.a n = A350295 (n + 3)

end A350295

/-! ## A350295.P9702652911022543787

`∑[n+2]+A000203(ceil(3/(n+1)))`
-/

namespace A350295.P9702652911022543787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000203 ⌈3 / (n + 1 : ℚ)⌉.toNat

end

end A350295.P9702652911022543787

namespace A350295

/-- `∑[n+2]+A000203(ceil(3/(n+1)))` -/
def P9702652911022543787.Spec : Prop :=
  ∀ n, P9702652911022543787.a n = A350295 (n + 3)

end A350295

/-! ## A350295.P9854088348124270631

`∑[n+2]+A000032(C(2, n+1)+1)`
-/

namespace A350295.P9854088348124270631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000032 (Nat.choose 2 (n + 1) + 1)

end

end A350295.P9854088348124270631

namespace A350295

/-- `∑[n+2]+A000032(C(2, n+1)+1)` -/
def P9854088348124270631.Spec : Prop :=
  ∀ n, P9854088348124270631.a n = A350295 (n + 3)

end A350295

/-! ## A350295.P8698671781490206662

`∑[n+2]+A000032(floor((n+3)/(n+1)))`
-/

namespace A350295.P8698671781490206662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000032 ⌊(n + 3 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A350295.P8698671781490206662

namespace A350295

/-- `∑[n+2]+A000032(floor((n+3)/(n+1)))` -/
def P8698671781490206662.Spec : Prop :=
  ∀ n, P8698671781490206662.a n = A350295 (n + 3)

end A350295

/-! ## A350295.P8383975725672799775

`A055522(2*(n+2))/(A055495(2*n+1)-2)`
-/

namespace A350295.P8383975725672799775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055522 (2 * (n + 2)) : ℚ) / (A055495 (2 * n + 1) - 2 : ℚ)

end

end A350295.P8383975725672799775

namespace A350295

/-- `A055522(2*(n+2))/(A055495(2*n+1)-2)` -/
def P8383975725672799775.Spec : Prop :=
  ∀ n, P8383975725672799775.a n = (A350295 (n + 3) : ℚ)

end A350295

/-! ## A350295.P1091304827619945592

`∑[A233583(n+1)]+2*A233583(n+1)`
-/

namespace A350295.P1091304827619945592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A233583 (n + 1)

end

end A350295.P1091304827619945592

namespace A350295

/-- `∑[A233583(n+1)]+2*A233583(n+1)` -/
def P1091304827619945592.Spec : Prop :=
  ∀ n, P1091304827619945592.a n = A350295 (n + 3)

end A350295

/-! ## A350295.P10009368611236504322

`A005843(A233583(n+1))+∑[A233583(n+1)]`
-/

namespace A350295.P10009368611236504322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A233583 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350295.P10009368611236504322

namespace A350295

/-- `A005843(A233583(n+1))+∑[A233583(n+1)]` -/
def P10009368611236504322.Spec : Prop :=
  ∀ n, P10009368611236504322.a n = A350295 (n + 3)

end A350295

/-! ## A350295.P7670082157825234737

`∩[A175821(n+1), A001972(n)]`
-/

namespace A350295.P7670082157825234737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350295.P7670082157825234737

namespace A350295

/-- `∩[A175821(n+1), A001972(n)]` -/
def P7670082157825234737.Spec : Prop :=
  ∀ n, (P7670082157825234737.a n : ℤ) = A350295 (n + 3)

end A350295

/-! ## A350295.P18026095823236387604

`∩[A082667(n+1), A175821(n+1)]`
-/

namespace A350295.P18026095823236387604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350295.P18026095823236387604

namespace A350295

/-- `∩[A082667(n+1), A175821(n+1)]` -/
def P18026095823236387604.Spec : Prop :=
  ∀ n, (P18026095823236387604.a n : ℤ) = A350295 (n + 3)

end A350295

/-! ## A350295.P6529175533678603792

`eq[2, A190167(n)]`
-/

namespace A350295.P6529175533678603792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190167 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350295.P6529175533678603792

namespace A350295

/-- `eq[2, A190167(n)]` -/
def P6529175533678603792.Spec : Prop :=
  ∀ n, (P6529175533678603792.a n : ℤ) = A350295 (n + 3)

end A350295

/-!
# A350296: Minimum number of 1's in an n X n binary matrix with no zero 2 X 2 submatrix.

The programs for A350296, there is no canonical definition to state claims against.
-/

/-! ## A350296.P17175543613910276016

`(n+1)²-A072567(n+1)`
-/

namespace A350296.P17175543613910276016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A072567 (n + 1)

end

end A350296.P17175543613910276016

/-! ## A350296.P12957081572343696773

`(n+1)²-A205805(2*(n+1))`
-/

namespace A350296.P12957081572343696773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A205805 (2 * (n + 1))

end

end A350296.P12957081572343696773

/-! ## A350296.P4590831247647441950

`A005563(n)+1-A072567(n+1)`
-/

namespace A350296.P4590831247647441950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A072567 (n + 1))

end

end A350296.P4590831247647441950

/-! ## A350296.P4443128995687119395

`abs(A000290(n+1)-A072567(n+1))`
-/

namespace A350296.P4443128995687119395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (n + 1) - A072567 (n + 1)|

end

end A350296.P4443128995687119395

/-! ## A350296.P8630441250933166609

`A002378(n)+n+1-A072567(n+1)`
-/

namespace A350296.P8630441250933166609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + ((n + 1 : ℤ) - A072567 (n + 1))

end

end A350296.P8630441250933166609

/-!
# A350297: Triangle read by rows: T(n,k) = n!*(n-1)^k/k!.

The programs for A350297, the canonical program `A350297.P4495735054223435470` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350297 has offset 0).

The definition of A350297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350297.P4495735054223435470

`row(n)!*(row(n)-1)^col(n)/col(n)!`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A350297

/-- `row(n)!*(row(n)-1)^col(n)/col(n)!` -/
def P4495735054223435470.Spec : Prop :=
  ∀ n, P4495735054223435470.a n = (A350297 n : ℚ)

end A350297

/-! ## A350297.P10817994705648641319

`A007318(n)*A350269(n)`
-/

namespace A350297.P10817994705648641319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A350269 n

end

end A350297.P10817994705648641319

namespace A350297

/-- `A007318(n)*A350269(n)` -/
def P10817994705648641319.Spec : Prop :=
  ∀ n, P10817994705648641319.a n = A350297 n

end A350297

/-! ## A350297.P4259697949033645968

`abs(A108086(n)*A350269(n))`
-/

namespace A350297.P4259697949033645968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A350269 n|

end

end A350297.P4259697949033645968

namespace A350297

/-- `abs(A108086(n)*A350269(n))` -/
def P4259697949033645968.Spec : Prop :=
  ∀ n, P4259697949033645968.a n = A350297 n

end A350297

/-! ## A350297.P10828359518557168128

`abs(A117440(n)*A350269(n))`
-/

namespace A350297.P10828359518557168128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A350269 n|

end

end A350297.P10828359518557168128

namespace A350297

/-- `abs(A117440(n)*A350269(n))` -/
def P10828359518557168128.Spec : Prop :=
  ∀ n, P10828359518557168128.a n = A350297 n

end A350297

/-! ## A350297.P15041085272326110997

`abs(A130595(n)*A350269(n))`
-/

namespace A350297.P15041085272326110997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A350269 n|

end

end A350297.P15041085272326110997

namespace A350297

/-- `abs(A130595(n)*A350269(n))` -/
def P15041085272326110997.Spec : Prop :=
  ∀ n, P15041085272326110997.a n = A350297 n

end A350297

/-!
# A350299: Numbers k > 1 with sigma(k)/(k * log(log(k))) > sigma(m)/(m * log(log(m))) for all m > k, sigma(k) being A000203(k), the sum of the divisors of k.

The programs for A350299, there is no canonical definition to state claims against.
-/

/-! ## A350299.P8897632556556695344

`record[lcm(A057143(n+1), A070172(2*(n+2)))]`
-/

namespace A350299.P8897632556556695344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057143 (n + 1)) (A070172 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350299.P8897632556556695344

/-! ## A350299.P13325035314832137247

`record[A293442(A112781(n+1))]`
-/

namespace A350299.P13325035314832137247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A112781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350299.P13325035314832137247

/-! ## A350299.P3449137178445470960

`record[A008480(A214514(n+1))]`
-/

namespace A350299.P3449137178445470960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A214514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350299.P3449137178445470960

/-! ## A350299.P16226609974753484212

`xor(A017904(n), A168263(A347189(n+2)))`
-/

namespace A350299.P16226609974753484212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A017904 n) (A168263 (A347189 (n + 2)).toNat)

end

end A350299.P16226609974753484212

