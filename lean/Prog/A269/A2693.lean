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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A269301: Normalization coefficients for quantum Pascal's pyramid, numerators of: T(n,k,m) = ((n - m)! m!)/(2^n (n - k)! k!).

The programs for A269301, there is no canonical definition to state claims against.
-/

/-! ## A269301.P10959471968786753045

`gcd(3, A332580(A342097(n+1)))`
-/

namespace A269301.P10959471968786753045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A332580 (A342097 (n + 1)).toNat)

end

end A269301.P10959471968786753045

/-! ## A269301.P8393725213028911182

`∏{e}[A287634(n+1), A287616(#)]`
-/

namespace A269301.P8393725213028911182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A287616 (Nat.factorization (f1 n).natAbs p)

end

end A269301.P8393725213028911182

/-! ## A269301.P7126117981385510941

`gcd(A081604(n), A135342(A186851(n+1)))`
-/

namespace A269301.P7126117981385510941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081604 n) (A135342 (A186851 (n + 1)).toNat)

end

end A269301.P7126117981385510941

/-! ## A269301.P11923845739155155571

`gcd(A064315(n+1), A175834(A002374(n+3)))`
-/

namespace A269301.P11923845739155155571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064315 (n + 1)) (A175834 (A002374 (n + 3)).toNat)

end

end A269301.P11923845739155155571

/-! ## A269301.P4202722137403177752

`gcd(A027828(n), A357677(n+1))`
-/

namespace A269301.P4202722137403177752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027828 n) (A357677 (n + 1))

end

end A269301.P4202722137403177752

/-!
# A269302: Normalization coefficients for quantum Pascal's pyramid, denominators of: T(n,k,m) = ((n - m)! m!)/(2^n (n - k)! k!).

The programs for A269302, there is no canonical definition to state claims against.
-/

/-! ## A269302.P15123057595880255813

`A000005(A090079(Δ[A209410(n)]))`
-/

namespace A269302.P15123057595880255813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A090079 (f1 (n + 1) - f1 n).toNat).toNat

end

end A269302.P15123057595880255813

/-! ## A269302.P16607599372230294477

`A076888(A074686(n)+A000079(n))`
-/

namespace A269302.P16607599372230294477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076888 (A074686 n + A000079 n).toNat

end

end A269302.P16607599372230294477

/-! ## A269302.P4343553927464974673

`A000005(or(A115567(n), A191825(n)))`
-/

namespace A269302.P4343553927464974673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A115567 n) (A191825 n)).toNat

end

end A269302.P4343553927464974673

/-! ## A269302.P7329642770597077558

`A048106(A318556(n+1)+A000079(n))`
-/

namespace A269302.P7329642770597077558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048106 (A318556 (n + 1) + A000079 n).toNat

end

end A269302.P7329642770597077558

/-! ## A269302.P15009563468052915644

`A060594(A334923(n+1)+A061256(n))`
-/

namespace A269302.P15009563468052915644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A334923 (n + 1) + A061256 n).toNat

end

end A269302.P15009563468052915644

/-!
# A269303: Numbers k such that (266*10^k + 1)/3 is prime.

The programs for A269303, there is no canonical definition to state claims against.
-/

/-! ## A269303.P15381215151269209834

`A319400(n)+A072966(n+1)`
-/

namespace A269303.P15381215151269209834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319400 n + A072966 (n + 1)

end

end A269303.P15381215151269209834

/-! ## A269303.P10314686121135860984

`A072966(n+1)+∑[A302643(n+1)]`
-/

namespace A269303.P10314686121135860984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072966 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269303.P10314686121135860984

/-! ## A269303.P9299074370465088293

`A319400(n)+eq[0, A241658(abs(1-n)+1)]`
-/

namespace A269303.P9299074370465088293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241658 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319400 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A269303.P9299074370465088293

/-!
# A269304: a(n) = n + n/gpf(n) + 1, where gpf(n) is the greatest prime factor of n or 1 if n = 1.

The programs for A269304, the canonical program `A269304.P13577493983909923936` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269304 has offset 1).

The definition of A269304 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269304.P13577493983909923936

`n+1+A052126(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A269304

/-- `n+1+A052126(n+1)+1` -/
def P13577493983909923936.Spec : Prop :=
  ∀ n, P13577493983909923936.a n = A269304 (n + 1)

theorem P13577493983909923936.correct : P13577493983909923936.Spec := by
  intro n
  simp only [A269304, Nat.add_sub_cancel]

end A269304

/-! ## A269304.P9822731578054053332

`n+1+(n+1)/A006530(n+1)+1`
-/

namespace A269304.P9822731578054053332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) + 1

end

end A269304.P9822731578054053332

namespace A269304

/-- `n+1+(n+1)/A006530(n+1)+1` -/
def P9822731578054053332.Spec : Prop :=
  ∀ n, P9822731578054053332.a n = (A269304 (n + 1) : ℚ)

end A269304

/-! ## A269304.P9955561329704994328

`A335876(n+1)+1`
-/

namespace A269304.P9955561329704994328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335876 (n + 1) + 1

end

end A269304.P9955561329704994328

namespace A269304

/-- `A335876(n+1)+1` -/
def P9955561329704994328.Spec : Prop :=
  ∀ n, P9955561329704994328.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P16295730262987685563

`A052126(n+1)+2+n`
-/

namespace A269304.P16295730262987685563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) + 2 + (n : ℤ)

end

end A269304.P16295730262987685563

namespace A269304

/-- `A052126(n+1)+2+n` -/
def P16295730262987685563.Spec : Prop :=
  ∀ n, P16295730262987685563.a n = A269304 (n + 1)

theorem P16295730262987685563.correct : P16295730262987685563.Spec := by
  intro n
  simp only [A269304, Nat.add_sub_cancel, A269304.P16295730262987685563.a, A269304.P13577493983909923936.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A269304

/-! ## A269304.P14712291761484115228

`2*n+3-A171462(n+1)`
-/

namespace A269304.P14712291761484115228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - A171462 (n + 1))

end

end A269304.P14712291761484115228

namespace A269304

/-- `2*n+3-A171462(n+1)` -/
def P14712291761484115228.Spec : Prop :=
  ∀ n, P14712291761484115228.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P16628610329262296164

`floor(n/A006530(n+1)+n+3)`
-/

namespace A269304.P16628610329262296164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A006530 (n + 1) : ℚ) + (n + 3 : ℚ)⌋

end

end A269304.P16628610329262296164

namespace A269304

/-- `floor(n/A006530(n+1)+n+3)` -/
def P16628610329262296164.Spec : Prop :=
  ∀ n, P16628610329262296164.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P4436577818206849761

`A342768(n+1)/(n+1)+n+2`
-/

namespace A269304.P4436577818206849761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342768 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 2 : ℚ)

end

end A269304.P4436577818206849761

namespace A269304

/-- `A342768(n+1)/(n+1)+n+2` -/
def P4436577818206849761.Spec : Prop :=
  ∀ n, P4436577818206849761.a n = (A269304 (n + 1) : ℚ)

end A269304

/-! ## A269304.P1536376830148163997

`A032742(A130065(n+1))+2+n`
-/

namespace A269304.P1536376830148163997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A130065 (n + 1)).toNat + 2 + (n : ℤ)

end

end A269304.P1536376830148163997

namespace A269304

/-- `A032742(A130065(n+1))+2+n` -/
def P1536376830148163997.Spec : Prop :=
  ∀ n, P1536376830148163997.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P12010604138971477002

`A144396(n+1)-A171462(n+1)`
-/

namespace A269304.P12010604138971477002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A171462 (n + 1)

end

end A269304.P12010604138971477002

namespace A269304

/-- `A144396(n+1)-A171462(n+1)` -/
def P12010604138971477002.Spec : Prop :=
  ∀ n, P12010604138971477002.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P2568807055458649824

`A004277(n+1)+1-A171462(n+1)`
-/

namespace A269304.P2568807055458649824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + 1 - A171462 (n + 1)

end

end A269304.P2568807055458649824

namespace A269304

/-- `A004277(n+1)+1-A171462(n+1)` -/
def P2568807055458649824.Spec : Prop :=
  ∀ n, P2568807055458649824.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P4612571111457912012

`A016777(n)+2-A171462(n+1)-n`
-/

namespace A269304.P4612571111457912012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 2 - A171462 (n + 1) - (n : ℤ)

end

end A269304.P4612571111457912012

namespace A269304

/-- `A016777(n)+2-A171462(n+1)-n` -/
def P4612571111457912012.Spec : Prop :=
  ∀ n, P4612571111457912012.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P10321205534249604652

`Δ[A005563(n)]-A171462(n+1)`
-/

namespace A269304.P10321205534249604652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A171462 (n + 1)

end

end A269304.P10321205534249604652

namespace A269304

/-- `Δ[A005563(n)]-A171462(n+1)` -/
def P10321205534249604652.Spec : Prop :=
  ∀ n, P10321205534249604652.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P2550897057353753458

`A004273(n+2)-A171462(n+1)`
-/

namespace A269304.P2550897057353753458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 2) - A171462 (n + 1)

end

end A269304.P2550897057353753458

namespace A269304

/-- `A004273(n+2)-A171462(n+1)` -/
def P2550897057353753458.Spec : Prop :=
  ∀ n, P2550897057353753458.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P7585259938296380182

`A020725(A335876(n+1))`
-/

namespace A269304.P7585259938296380182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335876 (n + 1)).toNat

end

end A269304.P7585259938296380182

namespace A269304

/-- `A020725(A335876(n+1))` -/
def P7585259938296380182.Spec : Prop :=
  ∀ n, P7585259938296380182.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P8158393774183351693

`A051119(A253550(n+1))+2+n`
-/

namespace A269304.P8158393774183351693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A253550 (n + 1)).toNat + 2 + (n : ℤ)

end

end A269304.P8158393774183351693

namespace A269304

/-- `A051119(A253550(n+1))+2+n` -/
def P8158393774183351693.Spec : Prop :=
  ∀ n, P8158393774183351693.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P9365671675821437449

`A070821(A103517(n))+2+n`
-/

namespace A269304.P9365671675821437449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A103517 n).toNat + 2 + (n : ℤ)

end

end A269304.P9365671675821437449

namespace A269304

/-- `A070821(A103517(n))+2+n` -/
def P9365671675821437449.Spec : Prop :=
  ∀ n, P9365671675821437449.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P635316068805253114

`A329900(A331188(n+1))+n+2`
-/

namespace A269304.P635316068805253114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A331188 (n + 1)).toNat + (n + 2 : ℤ)

end

end A269304.P635316068805253114

namespace A269304

/-- `A329900(A331188(n+1))+n+2` -/
def P635316068805253114.Spec : Prop :=
  ∀ n, P635316068805253114.a n = A269304 (n + 1)

end A269304

/-! ## A269304.P11046338743720206579

`A346704(A342768(n+1))+n+2`
-/

namespace A269304.P11046338743720206579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346704 (A342768 (n + 1)).toNat + (n + 2 : ℤ)

end

end A269304.P11046338743720206579

namespace A269304

/-- `A346704(A342768(n+1))+n+2` -/
def P11046338743720206579.Spec : Prop :=
  ∀ n, P11046338743720206579.a n = A269304 (n + 1)

end A269304

/-!
# A269305: 2^n mod 27 successively displaced by 0, 3, 6, 9, etc.

The programs for A269305, the canonical program `A269305.P1797455579722960803` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269305 has offset 0).

The definition of A269305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269305.P1797455579722960803

`(2^n+3*floor(n/18))%27`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269305

/-- `(2^n+3*floor(n/18))%27` -/
def P1797455579722960803.Spec : Prop :=
  ∀ n, P1797455579722960803.a n = A269305 n

theorem P1797455579722960803.correct : P1797455579722960803.Spec := by
  intro n
  simp only [A269305]

end A269305

/-!
# A269306: a(n+1) is the smallest integer such that the difference between its digital sum and the digital sum of a(n) is n.

The programs for A269306, there is no canonical definition to state claims against.
-/

/-! ## A269306.P12589841126172438173

`A051885(∑[n])`
-/

namespace A269306.P12589841126172438173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269306.P12589841126172438173

/-! ## A269306.P5736291707636811188

`A037124(C(n+1, 2)+1)-1`
-/

namespace A269306.P5736291707636811188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (Nat.choose (n + 1) 2 + 1) - 1

end

end A269306.P5736291707636811188

/-! ## A269306.P14264941226686849114

`floor(A331788(∑[round((3*n+1)/3)]+1)/2)`
-/

namespace A269306.P14264941226686849114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * n + 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331788 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat : ℚ) / 2⌋

end

end A269306.P14264941226686849114

/-! ## A269306.P12804622548703614415

`record[A051885(A049780(n))]`
-/

namespace A269306.P12804622548703614415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269306.P12804622548703614415

/-! ## A269306.P5630779916351034193

`A037124(A000124(n))-1`
-/

namespace A269306.P5630779916351034193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A000124 n).toNat - 1

end

end A269306.P5630779916351034193

/-!
# A269311: Consider the arithmetic derivative of a number x. Take the sum of its digits. Repeat the process deleting the first addendum and adding the previous sum. The sequence lists the numbers that after some iterations reach x.

The programs for A269311, there is no canonical definition to state claims against.
-/

/-! ## A269311.P2158961201854805932

`A002808(or(A073043(2*n+3), A292065(2*n+1)))`
-/

namespace A269311.P2158961201854805932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (Int.lor (A073043 (2 * n + 3)) (A292065 (2 * n + 1))).toNat

end

end A269311.P2158961201854805932

/-!
# A269315: Numbers x that are the sum of the digits of some consecutive run of numbers x-1, x-2, x-3, ...

The programs for A269315, there is no canonical definition to state claims against.
-/

/-! ## A269315.P5682368092599578570

`3*lt[A091734(n+1), A184872(n+1)]`
-/

namespace A269315.P5682368092599578570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269315.P5682368092599578570

/-! ## A269315.P5827910376645782073

`A008486(lt[A091734(n+1), A184872(n+1)])`
-/

namespace A269315.P5827910376645782073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269315.P5827910376645782073

/-! ## A269315.P5812153955830874393

`3*lt[and(2, A330117(3*n+2)), 1]`
-/

namespace A269315.P5812153955830874393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A330117 (3 * n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269315.P5812153955830874393

/-! ## A269315.P14404998136182991908

`A016051(record[A347739(n)])`
-/

namespace A269315.P14404998136182991908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A269315.P14404998136182991908

/-! ## A269315.P14882282040454862569

`A070790(record[A347739(n)])`
-/

namespace A269315.P14882282040454862569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A269315.P14882282040454862569

/-!
# A269316: Intersection of A269315 and A269314.

The programs for A269316, there is no canonical definition to state claims against.
-/

/-! ## A269316.P6670759027164366803

`∩[A269314(n+1), A269315(n+1)]`
-/

namespace A269316.P6670759027164366803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269316.P6670759027164366803

/-!
# A269319: Discriminants of real quadratic fields with 3-class group of type (3,3).

The programs for A269319, there is no canonical definition to state claims against.
-/

/-! ## A269319.P3869464750825615691

`A269318(A348553(n)%A269322(n+1))`
-/

namespace A269319.P3869464750825615691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269318 (Int.tmod (A348553 n) (A269322 (n + 1))).toNat

end

end A269319.P3869464750825615691

/-! ## A269319.P7551450341080746761

`A269318(A348553(n))%A269322(A092486(n))`
-/

namespace A269319.P7551450341080746761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269318 (A348553 n).toNat) (A269322 (A092486 n).toNat)

end

end A269319.P7551450341080746761

/-! ## A269319.P2167147492434715272

`A269318(A348553(n))+A008683(A235893(n+1))`
-/

namespace A269319.P2167147492434715272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269318 (A348553 n).toNat + A008683 (A235893 (n + 1)).toNat

end

end A269319.P2167147492434715272

/-! ## A269319.P16762548756348609637

`A269318(n+1)%A372708(n)`
-/

namespace A269319.P16762548756348609637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269318 (n + 1)) (A372708 n)

end

end A269319.P16762548756348609637

/-! ## A269319.P3903492090752583999

`A269318(A328617(n+1))`
-/

namespace A269319.P3903492090752583999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269318 (A328617 (n + 1)).toNat

end

end A269319.P3903492090752583999

/-!
# A269326: Let k be a number which is simultaneously Sierpiński and Riesel, and let P be a set of primes which cover every number of the form k*2^m + 1 and of the form k*2^m - 1 with m >= 1. Sequence shows elements of the set P which has the property that the product of its primes is as small as it is possible.

The programs for A269326, there is no canonical definition to state claims against.
-/

/-! ## A269326.P12145122267861817201

`A291360(comp[(4*n)²])`
-/

namespace A269326.P12145122267861817201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291360 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A269326.P12145122267861817201

/-! ## A269326.P4938794577200224950

`record[A291360(A053632(n))]`
-/

namespace A269326.P4938794577200224950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291360 (A053632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269326.P4938794577200224950

/-! ## A269326.P363333987312278822

`p?[or(A291360(n+1), A292946(n))]`
-/

namespace A269326.P363333987312278822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A291360 (n + 1)) (A292946 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269326.P363333987312278822

/-! ## A269326.P17844790112357374048

`∩[A038616(n+1), A291360(n+1)]`
-/

namespace A269326.P17844790112357374048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269326.P17844790112357374048

/-! ## A269326.P2133301303307156815

`∩[A052421(n+1), A291360(n+1)]`
-/

namespace A269326.P2133301303307156815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269326.P2133301303307156815

/-!
# A269327: a(n) = 7^prime(n).

The programs for A269327, the canonical program `A269327.P12691883733270740652` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269327 has offset 1).

The definition of A269327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269327.P12691883733270740652

`7^A000040(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A269327

/-- `7^A000040(n+1)` -/
def P12691883733270740652.Spec : Prop :=
  ∀ n, P12691883733270740652.a n = (A269327 (n + 1) : ℚ)

end A269327

/-! ## A269327.P15367592707644365636

`7^p?[comp[n²]]`
-/

namespace A269327.P15367592707644365636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A269327.P15367592707644365636

namespace A269327

/-- `7^p?[comp[n²]]` -/
def P15367592707644365636.Spec : Prop :=
  ∀ n, (P15367592707644365636.a n : ℤ) = A269327 (n + 1)

end A269327

/-! ## A269327.P8751515704241986807

`record[7^∑{p}[n+2, #]]`
-/

namespace A269327.P8751515704241986807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269327.P8751515704241986807

namespace A269327

/-- `record[7^∑{p}[n+2, #]]` -/
def P8751515704241986807.Spec : Prop :=
  ∀ n, (P8751515704241986807.a n : ℤ) = A269327 (n + 1)

end A269327

/-! ## A269327.P8513813502532645290

`record[∏{p}[n+2, 7^#]]`
-/

namespace A269327.P8513813502532645290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 7 ^ p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269327.P8513813502532645290

namespace A269327

/-- `record[∏{p}[n+2, 7^#]]` -/
def P8513813502532645290.Spec : Prop :=
  ∀ n, (P8513813502532645290.a n : ℤ) = A269327 (n + 1)

end A269327

/-! ## A269327.P15626590651717783810

`7^A049551(n+1)`
-/

namespace A269327.P15626590651717783810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A049551 (n + 1) : ℤ)

end

end A269327.P15626590651717783810

namespace A269327

/-- `7^A049551(n+1)` -/
def P15626590651717783810.Spec : Prop :=
  ∀ n, P15626590651717783810.a n = (A269327 (n + 1) : ℚ)

end A269327

/-!
# A269331: Indices k such that A107435(k) = A268057(k).

The programs for A269331, there is no canonical definition to state claims against.
-/

/-! ## A269331.P17589998546699125177

`eq[A107435(n+1), A268057(n+1)]+1`
-/

namespace A269331.P17589998546699125177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A269331.P17589998546699125177

/-! ## A269331.P15503576476035583006

`lt[A197126(A074909(n)), A121711(n+1)]`
-/

namespace A269331.P15503576476035583006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197126 (A074909 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269331.P15503576476035583006

/-! ## A269331.P1428490894174576753

`lt[A344005(A350501(n+3)), A276086(n+1)]`
-/

namespace A269331.P1428490894174576753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A350501 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269331.P1428490894174576753

/-! ## A269331.P17687243786954312293

`∑[A167966(A034851(n+1))]`
-/

namespace A269331.P17687243786954312293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167966 (A034851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269331.P17687243786954312293

/-! ## A269331.P3568281859684076868

`lt[A292372(A277330(2*n)), n]`
-/

namespace A269331.P3568281859684076868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A277330 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269331.P3568281859684076868

/-! ## A269331.P16077456709747251097

`∑[A008327(A004164(A008327(n+1)))]`
-/

namespace A269331.P16077456709747251097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 (A004164 (A008327 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269331.P16077456709747251097

/-! ## A269331.P14165988142540887165

`∑[2-A298782(A298782(n+2)+1)%2]`
-/

namespace A269331.P14165988142540887165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A298782 (A298782 (n + 2) + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269331.P14165988142540887165

/-!
# A269332: Smallest multiple of n whose sum of digits is greater than n.

The programs for A269332, there is no canonical definition to state claims against.
-/

/-! ## A269332.P8313610427446599855

`(n+1)*A269333(n+1)`
-/

namespace A269332.P8313610427446599855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A269333 (n + 1)

end

end A269332.P8313610427446599855

/-! ## A269332.P13102008611262324426

`A104147(A011784(n+1))*(n+1)`
-/

namespace A269332.P13102008611262324426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104147 (A011784 (n + 1)).toNat * (n + 1 : ℤ)

end

end A269332.P13102008611262324426

/-! ## A269332.P6982059678475537879

`(A128330(A308030(n+1))+1)*(n+1)`
-/

namespace A269332.P6982059678475537879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128330 (A308030 (n + 1)).toNat + 1) * (n + 1 : ℤ)

end

end A269332.P6982059678475537879

/-!
# A269333: Smallest number such that the sum of the digits of n * a(n) is greater than n.

The programs for A269333, there is no canonical definition to state claims against.
-/

/-! ## A269333.P14177606611240293796

`A269332(n+1)/(n+1)`
-/

namespace A269333.P14177606611240293796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269332 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A269333.P14177606611240293796

/-!
# A269334: Number of nX2 arrays containing 2 copies of 0..n-1 avoiding the pattern equal-up in every row and column.

The programs for A269334, there is no canonical definition to state claims against.
-/

/-! ## A269334.P14754566323750183976

`A269646(∑[n+2])`
-/

namespace A269334.P14754566323750183976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269334.P14754566323750183976

/-! ## A269334.P8166466731792300317

`record[A269646(A198455(n+1))]`
-/

namespace A269334.P8166466731792300317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269334.P8166466731792300317

/-! ## A269334.P14547184315771380918

`record[gcd(A008290(n), A269646(n+1))]`
-/

namespace A269334.P14547184315771380918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A269646 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269334.P14547184315771380918

/-! ## A269334.P5082790195634520489

`record[and(A167374(n), A269646(n+1))]`
-/

namespace A269334.P5082790195634520489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A269646 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269334.P5082790195634520489

/-!
# A269335: Number of nX3 arrays containing 3 copies of 0..n-1 avoiding the pattern equal-up in every row and column.

The programs for A269335, there is no canonical definition to state claims against.
-/

/-! ## A269335.P8582034078924780661

`A269336(∑[n+3]+1)`
-/

namespace A269335.P8582034078924780661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269336 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269335.P8582034078924780661

/-! ## A269335.P6233659560045567345

`record[A269336(abs(A255878(n+1)))]`
-/

namespace A269335.P6233659560045567345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269336 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269335.P6233659560045567345

/-!
# A269336: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 avoiding the pattern equal-up in every row and column.

The programs for A269336, there is no canonical definition to state claims against.
-/

/-! ## A269336.P18045313947934602443

`A269646(A020485(n)+1)`
-/

namespace A269336.P18045313947934602443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A020485 n + 1).toNat

end

end A269336.P18045313947934602443

/-! ## A269336.P17512908573687693572

`A269646(A043317(n+1))`
-/

namespace A269336.P17512908573687693572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A043317 (n + 1)).toNat

end

end A269336.P17512908573687693572

/-! ## A269336.P14221696302030437461

`A269646(A044914(n+1))`
-/

namespace A269336.P14221696302030437461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A044914 (n + 1)).toNat

end

end A269336.P14221696302030437461

/-! ## A269336.P14805398095118925606

`A269646(A055648(n+1))`
-/

namespace A269336.P14805398095118925606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A055648 (n + 1)).toNat

end

end A269336.P14805398095118925606

/-! ## A269336.P14009646196054354439

`A269646(A099469(n+1))`
-/

namespace A269336.P14009646196054354439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A099469 (n + 1)).toNat

end

end A269336.P14009646196054354439

/-!
# A269337: Number of 3Xn arrays containing n copies of 0..3-1 avoiding the pattern equal-up in every row and column.

The programs for A269337, there is no canonical definition to state claims against.
-/

/-! ## A269337.P310814736769258374

`A269336(∑[n+2]+4)`
-/

namespace A269337.P310814736769258374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269336 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269337.P310814736769258374

/-! ## A269337.P14010164145804209047

`A269336(A167614(n+1))+n-∏{digits}[n, #]`
-/

namespace A269337.P14010164145804209047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269336 (A167614 (n + 1)).toNat + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ))

end

end A269337.P14010164145804209047

/-! ## A269337.P266222394672272521

`A269336(A167614(n+1))+A011738(n)`
-/

namespace A269337.P266222394672272521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269336 (A167614 (n + 1)).toNat + A011738 n

end

end A269337.P266222394672272521

/-!
# A269338: Number of 4Xn arrays containing n copies of 0..4-1 avoiding the pattern equal-up in every row and column.

The programs for A269338, there is no canonical definition to state claims against.
-/

/-! ## A269338.P12521432031337250119

`A269336(A020752(n+1))`
-/

namespace A269338.P12521432031337250119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269336 (A020752 (n + 1)).toNat

end

end A269338.P12521432031337250119

/-! ## A269338.P1195361927079341509

`A269336(A145018(n+4))`
-/

namespace A269338.P1195361927079341509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269336 (A145018 (n + 4)).toNat

end

end A269338.P1195361927079341509

/-!
# A269340: A second sequence (see A268865) connected with negabinary expansions (cf. A039724) - see comments.

The programs for A269340, there is no canonical definition to state claims against.
-/

/-! ## A269340.P11602247890180141045

`ceil(A268865(4*n+2)/4)`
-/

namespace A269340.P11602247890180141045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268865 (4 * n + 2) : ℚ) / 4⌉

end

end A269340.P11602247890180141045

/-! ## A269340.P8264898280827176114

`round(A268865(record[lcm(2, n)+4])/4)`
-/

namespace A269340.P8264898280827176114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A268865 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 4)

end

end A269340.P8264898280827176114

/-! ## A269340.P7269782779562258095

`round(A268865(record[a(n-2)+4])/4)` with `a(0)=2, a(1)=1`
-/

namespace A269340.P7269782779562258095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A268865 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 4)

end

end A269340.P7269782779562258095

/-! ## A269340.P14110338434493096264

`A268865(A339570(n+1)+n)`
-/

namespace A269340.P14110338434493096264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268865 (A339570 (n + 1) + (n : ℤ)).toNat

end

end A269340.P14110338434493096264

/-! ## A269340.P10298391774597229106

`A268865(A140513(A078496(n+4))+n)`
-/

namespace A269340.P10298391774597229106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268865 (A140513 (A078496 (n + 4)).toNat + (n : ℤ)).toNat

end

end A269340.P10298391774597229106

/-!
# A269341: Records in A269340.

The programs for A269341, there is no canonical definition to state claims against.
-/

/-! ## A269341.P7563984039794115162

`record[and(1-and(2, n), A137208(n))]`
-/

namespace A269341.P7563984039794115162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (Nat.land 2 n : ℤ)) (A137208 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269341.P7563984039794115162

/-! ## A269341.P11164525750063052624

`record[and(A057077(n), A137208(n))]`
-/

namespace A269341.P11164525750063052624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057077 n) (A137208 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269341.P11164525750063052624

/-! ## A269341.P5189543342126894248

`record[A269340(n)]`
-/

namespace A269341.P5189543342126894248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269341.P5189543342126894248

/-! ## A269341.P15375090040773067321

`A002265(∑{d}[n+1, (#+n)%2]+ceil(4^n/3)+(2^and(n, -2))²)`
-/

namespace A269341.P15375090040773067321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), (d + n) % 2 : ℕ) : ℚ) + ((⌈(4 ^ n : ℚ) / 3⌉ : ℚ) + ((2 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)) ^ 2))).toNat

end

end A269341.P15375090040773067321

/-!
# A269342: a(n) = (n + 1)*(2*n + 1)*(4*n + 9)/3.

The programs for A269342, the canonical program `A269342.P7105143798630874600` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269342 has offset 0).

The definition of A269342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2*n+1)*(4*n+9)/3` (program `A269342.P9270249929360269317`, by `A269342.P9270249929360269317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269342.P9270249929360269317

`(n+1)*(2*n+1)*(4*n+9)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269342.P9270249929360269317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n + 1) * (4 * n + 9) : ℚ) / 3

end

end A269342.P9270249929360269317

namespace A269342

/-- `(n+1)*(2*n+1)*(4*n+9)/3` -/
def P9270249929360269317.Spec : Prop :=
  ∀ n, P9270249929360269317.a n = (A269342 n : ℚ)

theorem P9270249929360269317.correct : P9270249929360269317.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A269342, Nat.add_sub_cancel, A269342.P9270249929360269317.a, A269342.P7105143798630874600.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A269342, Nat.add_sub_cancel, A269342.P9270249929360269317.a, A269342.P7105143798630874600.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A269342

/-! ## A269342.P7105143798630874600

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=26, a(2)=85, a(3)=196`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A269342

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7105143798630874600.Spec : Prop :=
  ∀ n, P7105143798630874600.a n = A269342 n

theorem P7105143798630874600.correct : P7105143798630874600.Spec := by
  intro n
  simp only [A269342]

end A269342

/-! ## A269342.P2290281801257432093

`∑[∑[a(n-1)+16]]` with `a(0)=3, a(1)=20`
-/

namespace A269342.P2290281801257432093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 20] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269342.P2290281801257432093

namespace A269342

/-- `∑[∑[a(n-1)+16]]` -/
def P2290281801257432093.Spec : Prop :=
  ∀ n, (P2290281801257432093.a n : ℤ) = A269342 n

end A269342

/-! ## A269342.P13899316125557804101

`∑[2*n]+∑[C(4*n+3, 2)]`
-/

namespace A269342.P13899316125557804101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A269342.P13899316125557804101

namespace A269342

/-- `∑[2*n]+∑[C(4*n+3, 2)]` -/
def P13899316125557804101.Spec : Prop :=
  ∀ n, (P13899316125557804101.a n : ℤ) = A269342 n

end A269342

/-! ## A269342.P6783980527086084975

`Δ[C(2*n+3, 4)-(n²+n)]`
-/

namespace A269342.P6783980527086084975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) 4 : ℤ) - (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269342.P6783980527086084975

namespace A269342

/-- `Δ[C(2*n+3, 4)-(n²+n)]` -/
def P6783980527086084975.Spec : Prop :=
  ∀ n, P6783980527086084975.a n = A269342 n

end A269342

/-! ## A269342.P14847537492387990969

`Δ[C(2*n+3, 4)]-2*(n+1)`
-/

namespace A269342.P14847537492387990969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (2 * (n + 1) : ℤ)

end

end A269342.P14847537492387990969

namespace A269342

/-- `Δ[C(2*n+3, 4)]-2*(n+1)` -/
def P14847537492387990969.Spec : Prop :=
  ∀ n, P14847537492387990969.a n = A269342 n

end A269342

/-! ## A269342.P16793053873741367295

`∑[lcm(2*n+1, 4*(n+1))]-(n+1)`
-/

namespace A269342.P16793053873741367295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A269342.P16793053873741367295

namespace A269342

/-- `∑[lcm(2*n+1, 4*(n+1))]-(n+1)` -/
def P16793053873741367295.Spec : Prop :=
  ∀ n, P16793053873741367295.a n = A269342 n

end A269342

/-! ## A269342.P12852743821708996178

`∑[A118057(n+1)+2]`
-/

namespace A269342.P12852743821708996178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118057 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269342.P12852743821708996178

namespace A269342

/-- `∑[A118057(n+1)+2]` -/
def P12852743821708996178.Spec : Prop :=
  ∀ n, P12852743821708996178.a n = A269342 n

end A269342

/-! ## A269342.P3615815040649987701

`∑[A060820(n+1)-2]`
-/

namespace A269342.P3615815040649987701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060820 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269342.P3615815040649987701

namespace A269342

/-- `∑[A060820(n+1)-2]` -/
def P3615815040649987701.Spec : Prop :=
  ∀ n, P3615815040649987701.a n = A269342 n

end A269342

/-! ## A269342.P2510853732930632049

`∑[A254527(n+1)-3]`
-/

namespace A269342.P2510853732930632049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254527 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269342.P2510853732930632049

namespace A269342

/-- `∑[A254527(n+1)-3]` -/
def P2510853732930632049.Spec : Prop :=
  ∀ n, P2510853732930632049.a n = A269342 n

end A269342

/-! ## A269342.P15073259407229735575

`A267522(n)/2-(n+1)`
-/

namespace A269342.P15073259407229735575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267522 n : ℚ) / 2 - (n + 1 : ℚ)

end

end A269342.P15073259407229735575

namespace A269342

/-- `A267522(n)/2-(n+1)` -/
def P15073259407229735575.Spec : Prop :=
  ∀ n, P15073259407229735575.a n = (A269342 n : ℚ)

end A269342

/-! ## A269342.P14221734655204849071

`A100207(n)-A030440(n)`
-/

namespace A269342.P14221734655204849071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100207 n - A030440 n

end

end A269342.P14221734655204849071

namespace A269342

/-- `A100207(n)-A030440(n)` -/
def P14221734655204849071.Spec : Prop :=
  ∀ n, P14221734655204849071.a n = A269342 n

end A269342

/-! ## A269342.P6758353052248336978

`A126335(n+1)+A016061(n)`
-/

namespace A269342.P6758353052248336978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126335 (n + 1) + A016061 n

end

end A269342.P6758353052248336978

namespace A269342

/-- `A126335(n+1)+A016061(n)` -/
def P6758353052248336978.Spec : Prop :=
  ∀ n, P6758353052248336978.a n = A269342 n

end A269342

/-! ## A269342.P16095469296123335577

`A162265(n+1)+A102296(n)`
-/

namespace A269342.P16095469296123335577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162265 (n + 1) + A102296 n

end

end A269342.P16095469296123335577

namespace A269342

/-- `A162265(n+1)+A102296(n)` -/
def P16095469296123335577.Spec : Prop :=
  ∀ n, P16095469296123335577.a n = A269342 n

end A269342

/-! ## A269342.P16201447922020198785

`A213823(n+1)-A220084(n)`
-/

namespace A269342.P16201447922020198785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213823 (n + 1) - A220084 n

end

end A269342.P16201447922020198785

namespace A269342

/-- `A213823(n+1)-A220084(n)` -/
def P16201447922020198785.Spec : Prop :=
  ∀ n, P16201447922020198785.a n = A269342 n

end A269342

/-! ## A269342.P13487607397651656460

`A213820(n+1)+A131423(n+1)`
-/

namespace A269342.P13487607397651656460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213820 (n + 1) + A131423 (n + 1)

end

end A269342.P13487607397651656460

namespace A269342

/-- `A213820(n+1)+A131423(n+1)` -/
def P13487607397651656460.Spec : Prop :=
  ∀ n, P13487607397651656460.a n = A269342 n

end A269342

/-! ## A269342.P10236476252116239277

`A024394(n+1)-A081489(n+1)`
-/

namespace A269342.P10236476252116239277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024394 (n + 1) - A081489 (n + 1)

end

end A269342.P10236476252116239277

namespace A269342

/-- `A024394(n+1)-A081489(n+1)` -/
def P10236476252116239277.Spec : Prop :=
  ∀ n, P10236476252116239277.a n = A269342 n

end A269342

/-! ## A269342.P16166053127434468802

`A102860(n+2)+A014105(n+1)`
-/

namespace A269342.P16166053127434468802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102860 (n + 2) + A014105 (n + 1)

end

end A269342.P16166053127434468802

namespace A269342

/-- `A102860(n+2)+A014105(n+1)` -/
def P16166053127434468802.Spec : Prop :=
  ∀ n, P16166053127434468802.a n = A269342 n

end A269342

/-! ## A269342.P16329507177073190445

`A199833(n+1)-A100157(n+1)`
-/

namespace A269342.P16329507177073190445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199833 (n + 1) - A100157 (n + 1)

end

end A269342.P16329507177073190445

namespace A269342

/-- `A199833(n+1)-A100157(n+1)` -/
def P16329507177073190445.Spec : Prop :=
  ∀ n, P16329507177073190445.a n = A269342 n

end A269342

/-! ## A269342.P38101408848799777

`∑[A085250(n+1)-1]`
-/

namespace A269342.P38101408848799777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269342.P38101408848799777

namespace A269342

/-- `∑[A085250(n+1)-1]` -/
def P38101408848799777.Spec : Prop :=
  ∀ n, P38101408848799777.a n = A269342 n

end A269342

/-!
# A269345: Smaller of two consecutive odd numbers that are composites.

The programs for A269345, the canonical program `A269345.P4206844201345878076` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269345 has offset 1).

The definition of A269345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269345.P4206844201345878076

`A061673(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A269345

/-- `A061673(n+1)-1` -/
def P4206844201345878076.Spec : Prop :=
  ∀ n, P4206844201345878076.a n = A269345 (n + 1)

theorem P4206844201345878076.correct : P4206844201345878076.Spec := by
  intro n
  simp only [A269345, Nat.add_sub_cancel]

end A269345

/-! ## A269345.P15352567768974560966

`A025583(n+1)-2`
-/

namespace A269345.P15352567768974560966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1) - 2

end

end A269345.P15352567768974560966

namespace A269345

/-- `A025583(n+1)-2` -/
def P15352567768974560966.Spec : Prop :=
  ∀ n, P15352567768974560966.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P14088637048264219281

`A298366(n+1)-5`
-/

namespace A269345.P14088637048264219281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1) - 5

end

end A269345.P14088637048264219281

namespace A269345

/-- `A298366(n+1)-5` -/
def P14088637048264219281.Spec : Prop :=
  ∀ n, P14088637048264219281.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P8741141787676179195

`2*A104278(n+1)-1`
-/

namespace A269345.P8741141787676179195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104278 (n + 1) - 1

end

end A269345.P8741141787676179195

namespace A269345

/-- `2*A104278(n+1)-1` -/
def P8741141787676179195.Spec : Prop :=
  ∀ n, P8741141787676179195.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P4974531147758271549

`A109934(n+3)-2`
-/

namespace A269345.P4974531147758271549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 3) - 2

end

end A269345.P4974531147758271549

namespace A269345

/-- `A109934(n+3)-2` -/
def P4974531147758271549.Spec : Prop :=
  ∀ n, P4974531147758271549.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P8495194416377953719

`A164376(n+3)-2`
-/

namespace A269345.P8495194416377953719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 3) - 2

end

end A269345.P8495194416377953719

namespace A269345

/-- `A164376(n+3)-2` -/
def P8495194416377953719.Spec : Prop :=
  ∀ n, P8495194416377953719.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P2750915127314737110

`A071904(A196276(n+1)-1)`
-/

namespace A269345.P2750915127314737110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (A196276 (n + 1) - 1).toNat

end

end A269345.P2750915127314737110

namespace A269345

/-- `A071904(A196276(n+1)-1)` -/
def P2750915127314737110.Spec : Prop :=
  ∀ n, P2750915127314737110.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P18065742162575200049

`A007921(A196276(n+1))`
-/

namespace A269345.P18065742162575200049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (A196276 (n + 1)).toNat

end

end A269345.P18065742162575200049

namespace A269345

/-- `A007921(A196276(n+1))` -/
def P18065742162575200049.Spec : Prop :=
  ∀ n, P18065742162575200049.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P10076295657662278215

`A071904(eq[1, A196274(n+1)])`
-/

namespace A269345.P10076295657662278215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269345.P10076295657662278215

namespace A269345

/-- `A071904(eq[1, A196274(n+1)])` -/
def P10076295657662278215.Spec : Prop :=
  ∀ n, P10076295657662278215.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P16390718298186409989

`filter[A007921(n+1), A005171(#)]`
-/

namespace A269345.P16390718298186409989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A269345.P16390718298186409989

namespace A269345

/-- `filter[A007921(n+1), A005171(#)]` -/
def P16390718298186409989.Spec : Prop :=
  ∀ n, P16390718298186409989.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P6373035653029706378

`filter[A007921(n+1), A066247(#)]`
-/

namespace A269345.P6373035653029706378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A269345.P6373035653029706378

namespace A269345

/-- `filter[A007921(n+1), A066247(#)]` -/
def P6373035653029706378.Spec : Prop :=
  ∀ n, P6373035653029706378.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P18094201230123216958

`filter[A007921(n+1), A202238(#)]`
-/

namespace A269345.P18094201230123216958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A269345.P18094201230123216958

namespace A269345

/-- `filter[A007921(n+1), A202238(#)]` -/
def P18094201230123216958.Spec : Prop :=
  ∀ n, P18094201230123216958.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P14939560319446246941

`filter[A007921(n+1), A292438(#)]`
-/

namespace A269345.P14939560319446246941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A269345.P14939560319446246941

namespace A269345

/-- `filter[A007921(n+1), A292438(#)]` -/
def P14939560319446246941.Spec : Prop :=
  ∀ n, P14939560319446246941.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P15762362355692292591

`filter[A007921(n+1), A323162(#)]`
-/

namespace A269345.P15762362355692292591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A269345.P15762362355692292591

namespace A269345

/-- `filter[A007921(n+1), A323162(#)]` -/
def P15762362355692292591.Spec : Prop :=
  ∀ n, P15762362355692292591.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P14281822198282115531

`∩[A007921(n+1), A014076(n+1)]`
-/

namespace A269345.P14281822198282115531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269345.P14281822198282115531

namespace A269345

/-- `∩[A007921(n+1), A014076(n+1)]` -/
def P14281822198282115531.Spec : Prop :=
  ∀ n, (P14281822198282115531.a n : ℤ) = A269345 (n + 1)

end A269345

/-! ## A269345.P8777866671746716956

`∩[A007921(n+1), A071904(n+1)]`
-/

namespace A269345.P8777866671746716956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269345.P8777866671746716956

namespace A269345

/-- `∩[A007921(n+1), A071904(n+1)]` -/
def P8777866671746716956.Spec : Prop :=
  ∀ n, (P8777866671746716956.a n : ℤ) = A269345 (n + 1)

end A269345

/-! ## A269345.P684256540131795513

`∩[A007921(n+1), A078505(n+1)]`
-/

namespace A269345.P684256540131795513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269345.P684256540131795513

namespace A269345

/-- `∩[A007921(n+1), A078505(n+1)]` -/
def P684256540131795513.Spec : Prop :=
  ∀ n, (P684256540131795513.a n : ℤ) = A269345 (n + 1)

end A269345

/-! ## A269345.P15826950391393310686

`A144396(A104278(n+1)-1)`
-/

namespace A269345.P15826950391393310686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A104278 (n + 1) - 1).toNat

end

end A269345.P15826950391393310686

namespace A269345

/-- `A144396(A104278(n+1)-1)` -/
def P15826950391393310686.Spec : Prop :=
  ∀ n, P15826950391393310686.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P17690727699502519125

`A004273(A104278(n+1))`
-/

namespace A269345.P17690727699502519125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A104278 (n + 1)).toNat

end

end A269345.P17690727699502519125

namespace A269345

/-- `A004273(A104278(n+1))` -/
def P17690727699502519125.Spec : Prop :=
  ∀ n, P17690727699502519125.a n = A269345 (n + 1)

end A269345

/-! ## A269345.P14652555649509332622

`A130773(A104278(n+1)-1)`
-/

namespace A269345.P14652555649509332622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A104278 (n + 1) - 1).toNat

end

end A269345.P14652555649509332622

namespace A269345

/-- `A130773(A104278(n+1)-1)` -/
def P14652555649509332622.Spec : Prop :=
  ∀ n, P14652555649509332622.a n = A269345 (n + 1)

end A269345

/-!
# A269346: Perfect cubes that are not the difference of two primes.

The programs for A269346, the canonical program `A269346.P749959525114442858` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269346 has offset 1).

The definition of A269346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269346.P749959525114442858

`A016755(lt[2, A121842(2*n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A269346

/-- `A016755(lt[2, A121842(2*n+1)])` -/
def P749959525114442858.Spec : Prop :=
  ∀ n, P749959525114442858.a n = A269346 (n + 1)

theorem P749959525114442858.correct : P749959525114442858.Spec := by
  intro n
  simp only [A269346, Nat.add_sub_cancel]

end A269346

/-! ## A269346.P10225321497061120945

`A000578(lt[A276103(n+2), A046523(3*(n+1))])`
-/

namespace A269346.P10225321497061120945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276103 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269346.P10225321497061120945

namespace A269346

/-- `A000578(lt[A276103(n+2), A046523(3*(n+1))])` -/
def P10225321497061120945.Spec : Prop :=
  ∀ n, P10225321497061120945.a n = A269346 (n + 1)

end A269346

/-! ## A269346.P5186779812905128055

`record[A332343(n+5)^3]`
-/

namespace A269346.P5186779812905128055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332343 (n + 5) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269346.P5186779812905128055

namespace A269346

/-- `record[A332343(n+5)^3]` -/
def P5186779812905128055.Spec : Prop :=
  ∀ n, P5186779812905128055.a n = A269346 (n + 1)

end A269346

/-! ## A269346.P6323079461692382166

`A020742(A062399(n))^3`
-/

namespace A269346.P6323079461692382166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A062399 n).toNat ^ 3

end

end A269346.P6323079461692382166

namespace A269346

/-- `A020742(A062399(n))^3` -/
def P6323079461692382166.Spec : Prop :=
  ∀ n, P6323079461692382166.a n = A269346 (n + 1)

end A269346

/-! ## A269346.P12253365319257011048

`A093178(A020742(n)^3)`
-/

namespace A269346.P12253365319257011048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A020742 n ^ 3).toNat

end

end A269346.P12253365319257011048

namespace A269346

/-- `A093178(A020742(n)^3)` -/
def P12253365319257011048.Spec : Prop :=
  ∀ n, P12253365319257011048.a n = A269346 (n + 1)

end A269346

/-!
# A269348: Kolakoski-(1,6) sequence: a(n) is length of n-th run.

The programs for A269348, there is no canonical definition to state claims against.
-/

/-! ## A269348.P2598122412662921270

`A010687(record[xor(3, n-1)]*A272915(n))`
-/

namespace A269348.P2598122412662921270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A272915 n).toNat

end

end A269348.P2598122412662921270

/-! ## A269348.P9600406622270391903

`A010687(A272915(n)+A000742(n+5))`
-/

namespace A269348.P9600406622270391903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 (A272915 n + A000742 (n + 5)).toNat

end

end A269348.P9600406622270391903

/-! ## A269348.P18132607774127687831

`A010687(A272915(n)%A093037(n+2))`
-/

namespace A269348.P18132607774127687831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 (Int.tmod (A272915 n) (A093037 (n + 2))).toNat

end

end A269348.P18132607774127687831

/-! ## A269348.P6950291215284364467

`A010687(gcd(A093037(n+2), A272915(n)))`
-/

namespace A269348.P6950291215284364467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 (Int.gcd (A093037 (n + 2)) (A272915 n))

end

end A269348.P6950291215284364467

/-! ## A269348.P17845173501880435743

`A007913(6^floor((n+5)/6))`
-/

namespace A269348.P17845173501880435743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (⌊(n + 5 : ℚ) / 6⌋ : ℤ))).toNat

end

end A269348.P17845173501880435743

/-!
# A269349: Kolakoski-(1,7) sequence: a(n) is length of n-th run.

The programs for A269349, there is no canonical definition to state claims against.
-/

/-! ## A269349.P863029141300139564

`A010688(A105644(n)+(2*n)²)`
-/

namespace A269349.P863029141300139564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A105644 n + ((2 * n) ^ 2 : ℤ)).toNat

end

end A269349.P863029141300139564

/-! ## A269349.P13922764736995308973

`A010688(and(A000043(n+1), A105644(n)))`
-/

namespace A269349.P13922764736995308973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (Int.land (A000043 (n + 1)) (A105644 n)).toNat

end

end A269349.P13922764736995308973

/-! ## A269349.P15843344040938993437

`A010688(A175099(2*n+3)+A105644(n))`
-/

namespace A269349.P15843344040938993437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (A175099 (2 * n + 3) + A105644 n).toNat

end

end A269349.P15843344040938993437

/-! ## A269349.P17905982718068787938

`floor(exp(and(2, 2*n-A130429(n+1))))`
-/

namespace A269349.P17905982718068787938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Int.land 2 ((2 * n : ℤ) - A130429 (n + 1)) : ℝ)⌋

end

end A269349.P17905982718068787938

/-! ## A269349.P6685738547666610078

`A010688(gcd(A105644(n), A130429(n+1)))`
-/

namespace A269349.P6685738547666610078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (Int.gcd (A105644 n) (A130429 (n + 1)))

end

end A269349.P6685738547666610078

/-!
# A269350: Kolakoski-(1,8) sequence: a(n) is length of n-th run.

The programs for A269350, there is no canonical definition to state claims against.
-/

/-! ## A269350.P385284938292592322

`A124389(n)%2*A028310(and(8, -n))`
-/

namespace A269350.P385284938292592322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124389 n) 2 * A028310 (Int.land 8 (-(n : ℤ))).toNat

end

end A269350.P385284938292592322

/-! ## A269350.P1445402130642910

`A028310(and(8, -n))%A233435(n+14)`
-/

namespace A269350.P1445402130642910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (Int.land 8 (-(n : ℤ))).toNat) (A233435 (n + 14))

end

end A269350.P1445402130642910

/-! ## A269350.P10164686499458434137

`A028310(and(8, -n))^A027465(C(n, 64))`
-/

namespace A269350.P10164686499458434137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (Int.land 8 (-(n : ℤ))).toNat : ℚ) ^ (A027465 (Nat.choose n 64) : ℤ)

end

end A269350.P10164686499458434137

/-! ## A269350.P1866039819686281892

`A028310(and(4*(A027465(C(n, 64))+1), -n))`
-/

namespace A269350.P1866039819686281892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land (4 * (A027465 (Nat.choose n 64) + 1)) (-(n : ℤ))).toNat

end

end A269350.P1866039819686281892

/-! ## A269350.P1634501112104917522

`A010689(A110656(n)*A124389(n))`
-/

namespace A269350.P1634501112104917522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (A110656 n * A124389 n).toNat

end

end A269350.P1634501112104917522

/-! ## A269350.P4626077030337752096

`A010689(A110656(n)*A207637(n+1))`
-/

namespace A269350.P4626077030337752096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (A110656 n * A207637 (n + 1)).toNat

end

end A269350.P4626077030337752096

/-!
# A269351: Kolakoski-(1,9) sequence: a(n) is length of n-th run.

The programs for A269351, there is no canonical definition to state claims against.
-/

/-! ## A269351.P9173877428445605919

`and(9, A130497(A134808(n+1)))`
-/

namespace A269351.P9173877428445605919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 9 (A130497 (A134808 (n + 1)).toNat)

end

end A269351.P9173877428445605919

/-! ## A269351.P14195998529655347003

`A010690(A337549(n+1)+A134808(n+1))`
-/

namespace A269351.P14195998529655347003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (A337549 (n + 1) + A134808 (n + 1)).toNat

end

end A269351.P14195998529655347003

/-! ## A269351.P5779839764893967303

`A010690(A247051(n)+n)`
-/

namespace A269351.P5779839764893967303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (A247051 n + (n : ℤ)).toNat

end

end A269351.P5779839764893967303

/-! ## A269351.P4866682544961332310

`A010690(xor(n, A247051(n)))`
-/

namespace A269351.P4866682544961332310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (Int.xor (n : ℤ) (A247051 n)).toNat

end

end A269351.P4866682544961332310

/-! ## A269351.P3698718598687806314

`A326904(A115716(floor((n-1)/9)+2))-1`
-/

namespace A269351.P3698718598687806314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326904 (A115716 (⌊((n : ℤ) - 1 : ℚ) / 9⌋ + 2).toNat).toNat - 1

end

end A269351.P3698718598687806314

/-!
# A269353: Expansion of 1/(1-2x/(1-3x/(1-5x/(1-7x/(1-11x/...))))) where 2,3,5,7,11,... are the prime numbers.

The programs for A269353, there is no canonical definition to state claims against.
-/

/-! ## A269353.P5522995015576268743

`A004396(C(∑[n+1], n))`
-/

namespace A269353.P5522995015576268743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A269353.P5522995015576268743

/-!
# A269355: Permutation of natural numbers: a(n) = A269380(A250469(n)).

The programs for A269355, there is no canonical definition to state claims against.
-/

/-! ## A269355.P11443067099494384731

`A269380(A250469(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269355.P11443067099494384731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A250469 (n + 1)).toNat

end

end A269355.P11443067099494384731

/-! ## A269355.P5655063710649230661

`A269380(A269360(n+1)-1)`
-/

namespace A269355.P5655063710649230661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269360 (n + 1) - 1).toNat

end

end A269355.P5655063710649230661

/-! ## A269355.P9500757009871413454

`A269380(A003961(n+1)-A280692(n+1))`
-/

namespace A269355.P9500757009871413454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A003961 (n + 1) - A280692 (n + 1)).toNat

end

end A269355.P9500757009871413454

/-! ## A269355.P15581495717084025086

`A269380(A346480(n+1)-A346479(n+1))`
-/

namespace A269355.P15581495717084025086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A346480 (n + 1) - A346479 (n + 1)).toNat

end

end A269355.P15581495717084025086

/-! ## A269355.P14768678263345075398

`A269380(A051755(n+2)-A346476(n+1))`
-/

namespace A269355.P14768678263345075398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A051755 (n + 2) - A346476 (n + 1)).toNat

end

end A269355.P14768678263345075398

/-! ## A269355.P12286541686444408173

`A269380(A280702(n+1)*A280704(n+1))`
-/

namespace A269355.P12286541686444408173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A280702 (n + 1) * A280704 (n + 1)).toNat

end

end A269355.P12286541686444408173

/-! ## A269355.P7708735185441274467

`A269380(A253886(n)+1)`
-/

namespace A269355.P7708735185441274467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A253886 n + 1).toNat

end

end A269355.P7708735185441274467

/-! ## A269355.P2222195368709707376

`A269380(or(1, A253886(n)))`
-/

namespace A269355.P2222195368709707376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (Int.lor 1 (A253886 n)).toNat

end

end A269355.P2222195368709707376

/-! ## A269355.P1449482700924869267

`A269380(xor(1, A253886(n)))`
-/

namespace A269355.P1449482700924869267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (Int.xor 1 (A253886 n)).toNat

end

end A269355.P1449482700924869267

/-! ## A269355.P2757876291516894323

`A269380(A269172(A269379(A269171(n+1))))`
-/

namespace A269355.P2757876291516894323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269380 (A269172 (A269379 (A269171 (n + 1)).toNat).toNat).toNat

end

end A269355.P2757876291516894323

/-!
# A269356: Permutation of natural numbers: a(n) = A268674(A269379(n)).

The programs for A269356, there is no canonical definition to state claims against.
-/

/-! ## A269356.P15490789589595934329

`A268674(A269379(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269356.P15490789589595934329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A269379 (n + 1)).toNat

end

end A269356.P15490789589595934329

/-! ## A269356.P2025899094189551019

`A268674(A269382(n)+1)`
-/

namespace A269356.P2025899094189551019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A269382 n + 1).toNat

end

end A269356.P2025899094189551019

/-! ## A269356.P6733688960816673646

`A268674(xor(1, A269382(n)))`
-/

namespace A269356.P6733688960816673646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Int.xor 1 (A269382 n)).toNat

end

end A269356.P6733688960816673646

/-! ## A269356.P5331758833524156989

`A269358(n+1)+n+1-A269358(A269355(n+1))`
-/

namespace A269356.P5331758833524156989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269358 (n + 1) + ((n + 1 : ℤ) - A269358 (A269355 (n + 1)).toNat)

end

end A269356.P5331758833524156989

/-! ## A269356.P4637682435761004850

`A269358((n+1)/A269355(n+1)*A269357(n+1))`
-/

namespace A269356.P4637682435761004850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A269355 (n + 1) : ℚ) * (A269357 (n + 1) : ℚ))).toNat

end

end A269356.P4637682435761004850

/-! ## A269356.P12233012868166666010

`A250470(A269382(n)+1)`
-/

namespace A269356.P12233012868166666010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A269382 n + 1).toNat

end

end A269356.P12233012868166666010

/-! ## A269356.P16924411234407772928

`A250470(2*A269379(n+1)-A269379(n+1))`
-/

namespace A269356.P16924411234407772928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * A269379 (n + 1) - A269379 (n + 1)).toNat

end

end A269356.P16924411234407772928

/-! ## A269356.P2086883364670776180

`A268674(A269171(A250469(A269172(n+1))))`
-/

namespace A269356.P2086883364670776180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A269171 (A250469 (A269172 (n + 1)).toNat).toNat).toNat

end

end A269356.P2086883364670776180

/-!
# A269357: Permutation of natural numbers: a(1) = 1, a(2n) = 2*a(n), a(2n+1) = A269380(A250469(2n+1)).

The programs for A269357, there is no canonical definition to state claims against.
-/

/-! ## A269357.P7291807522496622625

`2^val(n+1, 2)*A269355((n+1)/2^val(n+1, 2))`
-/

namespace A269357.P7291807522496622625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A269355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A269357.P7291807522496622625

/-! ## A269357.P367572860974954075

`A006519(n+1)*A269355(A000265(n+1))`
-/

namespace A269357.P367572860974954075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A269355 (A000265 (n + 1)).toNat

end

end A269357.P367572860974954075

/-!
# A269358: Permutation of natural numbers: a(1) = 1, a(2n) = 2*a(n), a(2n+1) = A268674(A269379(2n+1)).

The programs for A269358, there is no canonical definition to state claims against.
-/

/-! ## A269358.P7624763246730171520

`2^val(n+1, 2)*A269356((n+1)/2^val(n+1, 2))`
-/

namespace A269358.P7624763246730171520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A269356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A269358.P7624763246730171520

/-! ## A269358.P1004259935378675806

`A006519(n+1)*A269356(A000265(n+1))`
-/

namespace A269358.P1004259935378675806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A269356 (A000265 (n + 1)).toNat

end

end A269358.P1004259935378675806

/-!
# A269359: Self-inverse permutation of natural numbers: a(1)=1, a(A269360(n)) = A250469(1+a(n)), a(A250469(1+n)) = A269360(a(n)).

The programs for A269359, there is no canonical definition to state claims against.
-/

/-! ## A269359.P7921516558892601093

`A269864(A269866(A269867(A269865(A269863(n+1)))))`
-/

namespace A269359.P7921516558892601093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269864 (A269866 (A269867 (A269865 (A269863 (n + 1)).toNat).toNat).toNat).toNat

end

end A269359.P7921516558892601093

/-!
# A269360: Permutation of even numbers: a(n) = 1 + A250469(n).

The programs for A269360, there is no canonical definition to state claims against.
-/

/-! ## A269360.P2279521589054231022

`1+A250469(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269360.P2279521589054231022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A250469 (n + 1)

end

end A269360.P2279521589054231022

/-! ## A269360.P3397762197109673768

`2+A253886(n)`
-/

namespace A269360.P3397762197109673768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A253886 n

end

end A269360.P3397762197109673768

/-! ## A269360.P2361957928494589186

`A302042(6*n+3)+1`
-/

namespace A269360.P2361957928494589186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (6 * n + 3) + 1

end

end A269360.P2361957928494589186

/-! ## A269360.P6691285899709685764

`A347378(n+1)+2+n`
-/

namespace A269360.P6691285899709685764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (n + 1) + 2 + (n : ℤ)

end

end A269360.P6691285899709685764

/-! ## A269360.P1728397377037412669

`2*n+3-A346476(n+1)`
-/

namespace A269360.P1728397377037412669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A346476 (n + 1)

end

end A269360.P1728397377037412669

/-! ## A269360.P18274342936189321849

`A269379(A269355(n+1))+1`
-/

namespace A269360.P18274342936189321849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269355 (n + 1)).toNat + 1

end

end A269360.P18274342936189321849

/-! ## A269360.P2773717588360914313

`A346473(n+1)+A088580(n+1)`
-/

namespace A269360.P2773717588360914313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346473 (n + 1) + A088580 (n + 1)

end

end A269360.P2773717588360914313

/-! ## A269360.P9651543582911142390

`A243501(n+1)-A280692(n+1)`
-/

namespace A269360.P9651543582911142390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - A280692 (n + 1)

end

end A269360.P9651543582911142390

/-! ## A269360.P1562644112020986252

`A253885(n)+2-A280692(n+1)`
-/

namespace A269360.P1562644112020986252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + (2 - A280692 (n + 1))

end

end A269360.P1562644112020986252

/-! ## A269360.P7031236711736349566

`A000203(n+1)+A346473(n+1)+1`
-/

namespace A269360.P7031236711736349566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A346473 (n + 1) + 1)

end

end A269360.P7031236711736349566

/-! ## A269360.P6214543831188855989

`A003961(n+1)+1-A280692(n+1)`
-/

namespace A269360.P6214543831188855989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (1 - A280692 (n + 1))

end

end A269360.P6214543831188855989

/-! ## A269360.P1619375758552477520

`A346480(n+1)+1-A346479(n+1)`
-/

namespace A269360.P1619375758552477520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346480 (n + 1) + (1 - A346479 (n + 1))

end

end A269360.P1619375758552477520

/-! ## A269360.P848167489156518603

`A280702(n+1)*A280704(n+1)+1`
-/

namespace A269360.P848167489156518603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280702 (n + 1) * A280704 (n + 1) + 1

end

end A269360.P848167489156518603

/-! ## A269360.P4580420119902625593

`2*A048673(n+1)-A280692(n+1)`
-/

namespace A269360.P4580420119902625593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1) - A280692 (n + 1)

end

end A269360.P4580420119902625593

/-! ## A269360.P6161877030064615128

`A243501(A266645(n+1))`
-/

namespace A269360.P6161877030064615128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (A266645 (n + 1)).toNat

end

end A269360.P6161877030064615128

/-! ## A269360.P17836714742710117822

`A253885(A266645(n+1)-1)+2`
-/

namespace A269360.P17836714742710117822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A266645 (n + 1) - 1).toNat + 2

end

end A269360.P17836714742710117822

/-! ## A269360.P10434162344877289401

`2*A250471(n+1)`
-/

namespace A269360.P10434162344877289401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250471 (n + 1)

end

end A269360.P10434162344877289401

/-! ## A269360.P3109180048973518328

`A004277(A250471(n+1))`
-/

namespace A269360.P3109180048973518328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A250471 (n + 1)).toNat

end

end A269360.P3109180048973518328

/-! ## A269360.P1698102850037614650

`A004273(A250471(n+1)+1)-1`
-/

namespace A269360.P1698102850037614650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A250471 (n + 1) + 1).toNat - 1

end

end A269360.P1698102850037614650

/-! ## A269360.P11004151625208636350

`A250471(n+1)+A048673(A266645(n+1))`
-/

namespace A269360.P11004151625208636350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250471 (n + 1) + A048673 (A266645 (n + 1)).toNat

end

end A269360.P11004151625208636350

/-!
# A269362: Least monotonic left inverse of A269389.

The programs for A269362, the canonical program `A269362.P8803330186499929129` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269362 has offset 1).

The definition of A269362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269362.P8803330186499929129

`A269849(n+7)-6`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A269362

/-- `A269849(n+7)-6` -/
def P8803330186499929129.Spec : Prop :=
  ∀ n, P8803330186499929129.a n = A269362 (n + 1)

theorem P8803330186499929129.correct : P8803330186499929129.Spec := by
  intro n
  simp only [A269362, Nat.add_sub_cancel]

end A269362

/-! ## A269362.P4433670889951310173

`∑[(A270193(n+1)+1)%2]+1`
-/

namespace A269362.P4433670889951310173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270193 (n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A269362.P4433670889951310173

namespace A269362

/-- `∑[(A270193(n+1)+1)%2]+1` -/
def P4433670889951310173.Spec : Prop :=
  ∀ n, P4433670889951310173.a n = A269362 (n + 1)

end A269362

/-! ## A269362.P3779495148575173780

`∑[and(1, A342634(n)+A270193(n+1))]`
-/

namespace A269362.P3779495148575173780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A342634 n + A270193 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269362.P3779495148575173780

namespace A269362

/-- `∑[and(1, A342634(n)+A270193(n+1))]` -/
def P3779495148575173780.Spec : Prop :=
  ∀ n, P3779495148575173780.a n = A269362 (n + 1)

end A269362

/-! ## A269362.P6754477800136403681

`∑[Δ[A089559(n+1)%3]²]`
-/

namespace A269362.P6754477800136403681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089559 (n + 1)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269362.P6754477800136403681

namespace A269362

/-- `∑[Δ[A089559(n+1)%3]²]` -/
def P6754477800136403681.Spec : Prop :=
  ∀ n, P6754477800136403681.a n = A269362 (n + 1)

end A269362

/-! ## A269362.P13811696975255982974

`1-A269850(n+7)+n`
-/

namespace A269362.P13811696975255982974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A269850 (n + 7) + (n : ℤ)

end

end A269362.P13811696975255982974

namespace A269362

/-- `1-A269850(n+7)+n` -/
def P13811696975255982974.Spec : Prop :=
  ∀ n, P13811696975255982974.a n = A269362 (n + 1)

end A269362

/-! ## A269362.P3512917946933581777

`∑[Δ[A000040(n+7)%3]²]`
-/

namespace A269362.P3512917946933581777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 7)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269362.P3512917946933581777

namespace A269362

/-- `∑[Δ[A000040(n+7)%3]²]` -/
def P3512917946933581777.Spec : Prop :=
  ∀ n, P3512917946933581777.a n = A269362 (n + 1)

end A269362

/-! ## A269362.P547935803075054633

`∑[and(1, A054429(A270193(n+1)))]`
-/

namespace A269362.P547935803075054633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A054429 (A270193 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269362.P547935803075054633

namespace A269362

/-- `∑[and(1, A054429(A270193(n+1)))]` -/
def P547935803075054633.Spec : Prop :=
  ∀ n, P547935803075054633.a n = A269362 (n + 1)

end A269362

/-!
# A269363: Lexicographically first injection of natural numbers beginning with a(1)=3 such that for all n >= 1, a(n)*a(n+1) is a fibbinary number (A003714), i.e., has no adjacent 1's in its base-2 representation.

The programs for A269363, there is no canonical definition to state claims against.
-/

/-! ## A269363.P18353423091023055817

`A091067(A269367(n+1))`
-/

namespace A269363.P18353423091023055817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (A269367 (n + 1)).toNat

end

end A269363.P18353423091023055817

/-! ## A269363.P1975817982005930692

`A060833(A269367(n+1)+1)-1`
-/

namespace A269363.P1975817982005930692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060833 (A269367 (n + 1) + 1).toNat - 1

end

end A269363.P1975817982005930692

/-! ## A269363.P13142423083894925936

`A280193(2*n+1)+A060833(A269367(n+1)+1)`
-/

namespace A269363.P13142423083894925936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A060833 (A269367 (n + 1) + 1).toNat

end

end A269363.P13142423083894925936

/-! ## A269363.P10513757927967897048

`A269366(2*A269365(n+1)+1)`
-/

namespace A269363.P10513757927967897048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269366 (2 * A269365 (n + 1) + 1).toNat

end

end A269363.P10513757927967897048

/-! ## A269363.P5195896102693044049

`A269366(A269365(n+1)+A269365(n+1)+1)`
-/

namespace A269363.P5195896102693044049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269366 (A269365 (n + 1) + (A269365 (n + 1) + 1)).toNat

end

end A269363.P5195896102693044049

/-!
# A269364: Difference between the number of occurrences of prime gaps not divisible by 3, versus number of prime gaps that are multiples of 3, up to n-th prime gap: a(n) = A269849(n) - A269850(n).

The programs for A269364, the canonical program `A269364.P12160389382123291649` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269364 has offset 1).

The definition of A269364 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269849, A269850, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269364.P12160389382123291649

`A269849(n+1)-A269850(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A269364

/-- `A269849(n+1)-A269850(n+1)` -/
def P12160389382123291649.Spec : Prop :=
  ∀ n, P12160389382123291649.a n = A269364 (n + 1)

theorem P12160389382123291649.correct : P12160389382123291649.Spec := by
  intro n
  simp only [A269364, Nat.add_sub_cancel]

end A269364

/-! ## A269364.P3270825183310278210

`∑[2-gcd(3, A001223(n+1))]`
-/

namespace A269364.P3270825183310278210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 3 (A001223 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269364.P3270825183310278210

namespace A269364

/-- `∑[2-gcd(3, A001223(n+1))]` -/
def P3270825183310278210.Spec : Prop :=
  ∀ n, P3270825183310278210.a n = A269364 (n + 1)

end A269364

/-! ## A269364.P5896177624821835039

`∑[sqrt(A076821(n+1)%6)]-n`
-/

namespace A269364.P5896177624821835039
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A076821 (n + 1)) 6 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A269364.P5896177624821835039

namespace A269364

/-- `∑[sqrt(A076821(n+1)%6)]-n` -/
def P5896177624821835039.Spec : Prop :=
  ∀ n, P5896177624821835039.a n = (A269364 (n + 1) : ℝ)

end A269364

/-! ## A269364.P8997562063030863886

`A060747(A269849(n+1))-n`
-/

namespace A269364.P8997562063030863886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A269849 (n + 1)).toNat - (n : ℤ)

end

end A269364.P8997562063030863886

namespace A269364

/-- `A060747(A269849(n+1))-n` -/
def P8997562063030863886.Spec : Prop :=
  ∀ n, P8997562063030863886.a n = A269364 (n + 1)

end A269364

/-! ## A269364.P9915421294975619219

`∑[A131561(A001223(n+1)-1)]`
-/

namespace A269364.P9915421294975619219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 (A001223 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269364.P9915421294975619219

namespace A269364

/-- `∑[A131561(A001223(n+1)-1)]` -/
def P9915421294975619219.Spec : Prop :=
  ∀ n, P9915421294975619219.a n = A269364 (n + 1)

end A269364

/-! ## A269364.P11861147187624317566

`A000027(A269849(n+1)+A269849(n+1)-(n+1))`
-/

namespace A269364.P11861147187624317566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A269849 (n + 1) + (A269849 (n + 1) - (n + 1 : ℤ))).toNat

end

end A269364.P11861147187624317566

namespace A269364

/-- `A000027(A269849(n+1)+A269849(n+1)-(n+1))` -/
def P11861147187624317566.Spec : Prop :=
  ∀ n, P11861147187624317566.a n = A269364 (n + 1)

end A269364

/-! ## A269364.P3708974560753746851

`A269849(n+1)+A087156(A269849(n+1))-A087156(n+1)`
-/

namespace A269364.P3708974560753746851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269849 (n + 1) + (A087156 (A269849 (n + 1)).toNat - A087156 (n + 1))

end

end A269364.P3708974560753746851

namespace A269364

/-- `A269849(n+1)+A087156(A269849(n+1))-A087156(n+1)` -/
def P3708974560753746851.Spec : Prop :=
  ∀ n, P3708974560753746851.a n = A269364 (n + 1)

end A269364

/-! ## A269364.P1631260118074288549

`∑[A134323(5*Δ[A134323(n+1)]²+1)]`
-/

namespace A269364.P1631260118074288549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (5 * (f2 (n + 1) - f2 n) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269364.P1631260118074288549

namespace A269364

/-- `∑[A134323(5*Δ[A134323(n+1)]²+1)]` -/
def P1631260118074288549.Spec : Prop :=
  ∀ n, P1631260118074288549.a n = A269364 (n + 1)

end A269364

/-! ## A269364.P10321295587978423822

`∑[lcm(2, A137264(n+1))-1]`
-/

namespace A269364.P10321295587978423822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A137264 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269364.P10321295587978423822

namespace A269364

/-- `∑[lcm(2, A137264(n+1))-1]` -/
def P10321295587978423822.Spec : Prop :=
  ∀ n, P10321295587978423822.a n = A269364 (n + 1)

end A269364

/-!
# A269367: Suspected permutation of natural numbers: a(n) = A255070(A269363(n)).

The programs for A269367, there is no canonical definition to state claims against.
-/

/-! ## A269367.P8331209160546189904

`A255070(A269363(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269367.P8331209160546189904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 (A269363 (n + 1)).toNat

end

end A269367.P8331209160546189904

/-! ## A269367.P6247065317888945895

`A359536(A269363(n+1)-1)`
-/

namespace A269367.P6247065317888945895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A269363 (n + 1) - 1).toNat

end

end A269367.P6247065317888945895

/-!
# A269369: a(1) = 1, a(n) = A260439(n)-th number k for which A260438(k) = A260438(n)+1; a(n) = A255551(A260438(n)+1, A260439(n)).

The programs for A269369, there is no canonical definition to state claims against.
-/

/-! ## A269369.P1016584717453396939

`A269372(n)+1`
-/

namespace A269369.P1016584717453396939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269372 n + 1

end

end A269369.P1016584717453396939

/-! ## A269369.P6214523226594829579

`xor(1, A269372(xor(1, xor(1, n))))`
-/

namespace A269369.P6214523226594829579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A269372 (Nat.xor 1 (Nat.xor 1 n)))

end

end A269369.P6214523226594829579

/-! ## A269369.P6895064236899363508

`A000265(or(1, A269372(n)))`
-/

namespace A269369.P6895064236899363508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor 1 (A269372 n)).toNat

end

end A269369.P6895064236899363508

/-! ## A269369.P17238381101867932146

`A000265(xor(1, A269372(n)))`
-/

namespace A269369.P17238381101867932146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (A269372 n)).toNat

end

end A269369.P17238381101867932146

/-! ## A269369.P10927888139911292368

`xor(A091088(n)%2, A269372(n))`
-/

namespace A269369.P10927888139911292368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A091088 n) 2) (A269372 n)

end

end A269369.P10927888139911292368

/-! ## A269369.P3721031621246147926

`xor(A016777(n)%3, A269372(n))`
-/

namespace A269369.P3721031621246147926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A016777 n) 3) (A269372 n)

end

end A269369.P3721031621246147926

/-! ## A269369.P2837905359223741512

`or(xor(1, A269372(n)), A302203(n))`
-/

namespace A269369.P2837905359223741512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.xor 1 (A269372 n)) (A302203 n)

end

end A269369.P2837905359223741512

/-! ## A269369.P198316700707722491

`or(A091090(2*n), A269372(n))`
-/

namespace A269369.P198316700707722491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091090 (2 * n)) (A269372 n)

end

end A269369.P198316700707722491

/-! ## A269369.P7006101345884368778

`A004442(A269372(n))`
-/

namespace A269369.P7006101345884368778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A269372 n).toNat

end

end A269369.P7006101345884368778

/-! ## A269369.P8724789051958513729

`A109613(lcm(2, A269372(n)))`
-/

namespace A269369.P8724789051958513729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.lcm 2 (A269372 n))

end

end A269369.P8724789051958513729

/-! ## A269369.P8087732757150748743

`A022998(or(1, A269372(n)))`
-/

namespace A269369.P8087732757150748743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.lor 1 (A269372 n)).toNat

end

end A269369.P8087732757150748743

/-! ## A269369.P12069324344448176128

`A109613(or(1, A269372(n)))`
-/

namespace A269369.P12069324344448176128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.lor 1 (A269372 n)).toNat

end

end A269369.P12069324344448176128

/-! ## A269369.P15772493876829712600

`A028310(xor(1, A269372(n)))`
-/

namespace A269369.P15772493876829712600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor 1 (A269372 n)).toNat

end

end A269369.P15772493876829712600

/-! ## A269369.P7964629545164438531

`A008619(2*A269372(n))`
-/

namespace A269369.P7964629545164438531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A269372 n).toNat

end

end A269369.P7964629545164438531

/-! ## A269369.P6581811218532531603

`A008611(3*A269372(n))`
-/

namespace A269369.P6581811218532531603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A269372 n).toNat

end

end A269369.P6581811218532531603

/-! ## A269369.P1092966182266519141

`xor(A007318(∑[n]), A269372(n))`
-/

namespace A269369.P1092966182266519141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A269372 n)

end

end A269369.P1092966182266519141

/-!
# A269370: a(1) = 1, after which, for odd n: a(n) = A260439(n)-th number k for which A260438(k) = A260438(n)-1, and for even n: a(n) = a(n/2).

The programs for A269370, there is no canonical definition to state claims against.
-/

/-! ## A269370.P10661795608832814146

`A260742(A269380(A269385(A269376(n+1))))`
-/

namespace A269370.P10661795608832814146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260742 (A269380 (A269385 (A269376 (n + 1)).toNat).toNat).toNat

end

end A269370.P10661795608832814146

/-! ## A269370.P7571900644115670060

`A260439(A269377(A269378(n+1)+1))`
-/

namespace A269370.P7571900644115670060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A269377 (A269378 (n + 1) + 1).toNat).toNat

end

end A269370.P7571900644115670060

/-! ## A269370.P3373828793240838069

`dr(A326042(A211066(∑{d}[n+1, #*#%2])))`
-/

namespace A269370.P3373828793240838069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A326042 (A211066 (∑ d ∈ Nat.divisors (f1 n), d * (d % 2))).toNat)

end

end A269370.P3373828793240838069

/-! ## A269370.P8239550014008444928

`A341392(n)-A114099(A077168(n))`
-/

namespace A269370.P8239550014008444928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 n - A114099 (A077168 n).toNat

end

end A269370.P8239550014008444928

/-! ## A269370.P10034974172854989498

`A300441(6^floor(n/(xor(n, n+1)+1)))`
-/

namespace A269370.P10034974172854989498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300441 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℤ))).toNat

end

end A269370.P10034974172854989498

/-!
# A269371: Least monotonic left inverse of A179016.

The programs for A269371, there is no canonical definition to state claims against.
-/

/-! ## A269371.P11427465634858612385

`a(n-1)+A213719(n)` with `a(0)=0`
-/

namespace A269371.P11427465634858612385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A213719 n

end

end A269371.P11427465634858612385

/-! ## A269371.P12392609782392560391

`A213718(n+1)-1`
-/

namespace A269371.P12392609782392560391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213718 (n + 1) - 1

end

end A269371.P12392609782392560391

/-! ## A269371.P10356534242267721496

`∑[char[A179016(n+1)]]`
-/

namespace A269371.P10356534242267721496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269371.P10356534242267721496

/-! ## A269371.P7025819571322429070

`∑[char[A218616(n+1)]]`
-/

namespace A269371.P7025819571322429070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218616 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269371.P7025819571322429070

/-! ## A269371.P9419642212263529322

`∑[char[A179016(n)]]-1`
-/

namespace A269371.P9419642212263529322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A269371.P9419642212263529322

/-! ## A269371.P16016400968164215099

`∑[char[A218616(n)]]-1`
-/

namespace A269371.P16016400968164215099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218616 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A269371.P16016400968164215099

/-! ## A269371.P7791107754239047619

`n-∑[and(1, A213727(n))]`
-/

namespace A269371.P7791107754239047619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A213727 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269371.P7791107754239047619

/-! ## A269371.P8982831243721406042

`∑[floor(acot(A213725(n)))]-1`
-/

namespace A269371.P8982831243721406042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A213725 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A269371.P8982831243721406042

/-! ## A269371.P402889088720354993

`n-∑[char[A213713(n+1)]]`
-/

namespace A269371.P402889088720354993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A269371.P402889088720354993

/-! ## A269371.P1734795295363638517

`∑[A000007(A213725(n))]-1`
-/

namespace A269371.P1734795295363638517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A213725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A269371.P1734795295363638517

/-! ## A269371.P12246703540801140814

`∑[A000007(A213727(n))]-1`
-/

namespace A269371.P12246703540801140814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A213727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A269371.P12246703540801140814

/-! ## A269371.P7901666165166670562

`∑[A000007(A213725(n)+A000007(n))]`
-/

namespace A269371.P7901666165166670562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A213725 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269371.P7901666165166670562

/-! ## A269371.P1540833202102362609

`∑[A000007(A213727(n)+A000007(n))]`
-/

namespace A269371.P1540833202102362609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A213727 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269371.P1540833202102362609

/-! ## A269371.P11603603354572717604

`∑[A213727(A062383(n))^A213727(n)]-1`
-/

namespace A269371.P11603603354572717604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213727 (A062383 n).toNat : ℚ) ^ (A213727 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A269371.P11603603354572717604

/-! ## A269371.P18194262920675701925

`∑[A213719(n)]-1`
-/

namespace A269371.P18194262920675701925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A269371.P18194262920675701925

/-! ## A269371.P1327880868165760848

`a(n-1)+and(1, A213731(n))` with `a(0)=0`
-/

namespace A269371.P1327880868165760848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.land 1 (A213731 n)

end

end A269371.P1327880868165760848

/-!
# A269372: Permutation of even numbers: a(n) = A269369(n+1) - 1.

The programs for A269372, there is no canonical definition to state claims against.
-/

/-! ## A269372.P1450042158813699077

`A269369(1+n)-1`
-/

namespace A269372.P1450042158813699077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (1 + n) - 1

end

end A269372.P1450042158813699077

/-! ## A269372.P13042129990022491923

`A269369(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269372.P13042129990022491923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (n + 1) - 1

end

end A269372.P13042129990022491923

/-! ## A269372.P15629770235883572526

`A004442(A269369(n+1))`
-/

namespace A269372.P15629770235883572526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A269369 (n + 1)).toNat

end

end A269372.P15629770235883572526

/-! ## A269372.P11864871833710109513

`A023447(A269369(n+1)+4)`
-/

namespace A269372.P11864871833710109513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A269369 (n + 1) + 4).toNat

end

end A269372.P11864871833710109513

/-! ## A269372.P11920546872499148535

`A124625(A269369(1-(n-2*n)))`
-/

namespace A269372.P11920546872499148535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A269369 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A269372.P11920546872499148535

/-! ## A269372.P1297915287237606551

`floor(A253886(3*A269369(n+1))/9)`
-/

namespace A269372.P1297915287237606551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A253886 (3 * A269369 (n + 1)).toNat : ℚ) / 9⌋

end

end A269372.P1297915287237606551

/-! ## A269372.P9081406128734849316

`and(A158525(n+4), A269369(n+1))`
-/

namespace A269372.P9081406128734849316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158525 (n + 4)) (A269369 (n + 1))

end

end A269372.P9081406128734849316

/-! ## A269372.P898279764355269024

`and(A002446(n), A269369(n+1))`
-/

namespace A269372.P898279764355269024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A269369 (n + 1))

end

end A269372.P898279764355269024

/-! ## A269372.P6680354212281755722

`and(A005367(n), A269369(n+1))`
-/

namespace A269372.P6680354212281755722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005367 n) (A269369 (n + 1))

end

end A269372.P6680354212281755722

/-! ## A269372.P1649118041138277853

`and(A269369(n+1), A286778(n))`
-/

namespace A269372.P1649118041138277853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269369 (n + 1)) (A286778 n)

end

end A269372.P1649118041138277853

/-! ## A269372.P9622271610242444440

`and(A143960(n+1), A269369(n+1))`
-/

namespace A269372.P9622271610242444440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143960 (n + 1)) (A269369 (n + 1))

end

end A269372.P9622271610242444440

/-! ## A269372.P12699487147856278924

`and(A170940(n+1), A269369(n+1))`
-/

namespace A269372.P12699487147856278924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170940 (n + 1)) (A269369 (n + 1))

end

end A269372.P12699487147856278924

/-!
# A269373: Permutation of natural numbers: a(1) = 1, a(n) = A000079(A260438(n+1)-1) * ((2 * a(A260439(n+1))) - 1).

The programs for A269373, there is no canonical definition to state claims against.
-/

/-! ## A269373.P10612320869507237325

`A000079(A260438(n+2)-1)*(2*a(A260439(n+2)-1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269373.P10612320869507237325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A260438 (n + 2) - 1).toNat * (2 * a (A260439 (n + 2) - 1).toNat - 1)

end

end A269373.P10612320869507237325

/-!
# A269375: Tree of Lucky sieve, mirrored: a(0) = 1, a(1) = 2; after which a(2n) = 2*a(n), a(2n+1) = A269369(a(n)).

The programs for A269375, there is no canonical definition to state claims against.
-/

/-! ## A269375.P12763117159968127388

`A260742(A269385(n))`
-/

namespace A269375.P12763117159968127388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260742 (A269385 n).toNat

end

end A269375.P12763117159968127388

/-! ## A269375.P85832319898090574

`A269377(A092569(2*n)/2)`
-/

namespace A269375.P85832319898090574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269377 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A269375.P85832319898090574

/-! ## A269375.P12359870382294403014

`A269377(A286548(n)+A180201(n))`
-/

namespace A269375.P12359870382294403014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269377 (A286548 n + A180201 n).toNat

end

end A269375.P12359870382294403014

/-! ## A269375.P17291098379901983228

`A269377(A286546(n)+A233279(n))`
-/

namespace A269375.P17291098379901983228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269377 (A286546 n + A233279 n).toNat

end

end A269375.P17291098379901983228

/-! ## A269375.P659473539444480276

`A269377(xor(A233279(n), A292600(n)))`
-/

namespace A269375.P659473539444480276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269377 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A269375.P659473539444480276

/-! ## A269375.P18347071187395619381

`A269377(A269386(A269387(n)))`
-/

namespace A269375.P18347071187395619381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269377 (A269386 (A269387 n).toNat).toNat

end

end A269375.P18347071187395619381

/-! ## A269375.P723401665186385694

`A269377(A269376(A269377(n)))`
-/

namespace A269375.P723401665186385694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269377 (A269376 (A269377 n).toNat).toNat

end

end A269375.P723401665186385694

/-!
# A269376: Permutation of nonnegative integers: a(1) = 0, a(2) = 1, a(2n) = 2*a(n), a(2n+1) = 1 + 2*a(A269370(2n+1)).

The programs for A269376, there is no canonical definition to state claims against.
-/

/-! ## A269376.P5804010407984433406

`A269386(A260741(n+1))`
-/

namespace A269376.P5804010407984433406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (A260741 (n + 1)).toNat

end

end A269376.P5804010407984433406

/-! ## A269376.P14490030278268068843

`A252756(A269172(A260741(A269172(A269171(n+1)))))`
-/

namespace A269376.P14490030278268068843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A269172 (A260741 (A269172 (A269171 (n + 1)).toNat).toNat).toNat).toNat

end

end A269376.P14490030278268068843

/-! ## A269376.P6534214213807173890

`A269386(A269387(A269378(n+1)))`
-/

namespace A269376.P6534214213807173890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (A269387 (A269378 (n + 1)).toNat).toNat

end

end A269376.P6534214213807173890

/-! ## A269376.P9879643458128856252

`A252756(A260741(n+1)%A034316(n))`
-/

namespace A269376.P9879643458128856252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (Int.tmod (A260741 (n + 1)) (A034316 n)).toNat

end

end A269376.P9879643458128856252

/-! ## A269376.P8675920078536180739

`A252756(C(A260741(n+1), A278657(n)))`
-/

namespace A269376.P8675920078536180739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (Nat.choose (A260741 (n + 1)).toNat (A278657 n).toNat)

end

end A269376.P8675920078536180739

/-!
# A269377: Tree of Lucky sieve: a(0) = 1, a(1) = 2; after which a(2n) = A269369(a(n)), a(2n+1) = 2*a(n).

The programs for A269377, there is no canonical definition to state claims against.
-/

/-! ## A269377.P6707572673283742816

`A260742(A269387(n))`
-/

namespace A269377.P6707572673283742816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260742 (A269387 n).toNat

end

end A269377.P6707572673283742816

/-! ## A269377.P13861357269522283060

`A269375(A337909(n+1)-1)`
-/

namespace A269377.P13861357269522283060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (A337909 (n + 1) - 1).toNat

end

end A269377.P13861357269522283060

/-! ## A269377.P15403430655734309501

`A269375(xor(n, A004761(n+2))-n-1)`
-/

namespace A269377.P15403430655734309501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (Int.xor (n : ℤ) (A004761 (n + 2)) - (n : ℤ) - 1).toNat

end

end A269377.P15403430655734309501

/-! ## A269377.P9560528511377241118

`A269375(A003945(ceil(log2(n+1)))-n-1)`
-/

namespace A269377.P9560528511377241118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (A003945 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat - (n : ℤ) - 1).toNat

end

end A269377.P9560528511377241118

/-! ## A269377.P3597999214252219154

`A269375(A001175(2^ceil(log2(n+1)))-n-1)`
-/

namespace A269377.P3597999214252219154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (A001175 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat - (n : ℤ) - 1).toNat

end

end A269377.P3597999214252219154

/-! ## A269377.P5718455317276564968

`A269375(A032766(2^ceil(log2(n+1)))-n-1)`
-/

namespace A269377.P5718455317276564968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (A032766 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat - (n : ℤ) - 1).toNat

end

end A269377.P5718455317276564968

/-! ## A269377.P5373960948713586643

`A269375(A286548(n)+A180201(n))`
-/

namespace A269377.P5373960948713586643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (A286548 n + A180201 n).toNat

end

end A269377.P5373960948713586643

/-! ## A269377.P450639246481757162

`A269375(A286546(n)+A233279(n))`
-/

namespace A269377.P450639246481757162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (A286546 n + A233279 n).toNat

end

end A269377.P450639246481757162

/-! ## A269377.P16284211728077268348

`A260742(A269385(A269388(A269385(n))))`
-/

namespace A269377.P16284211728077268348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260742 (A269385 (A269388 (A269385 n).toNat).toNat).toNat

end

end A269377.P16284211728077268348

/-! ## A269377.P17868695760986060348

`A269375(A269378(A269375(n)))`
-/

namespace A269377.P17868695760986060348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269375 (A269378 (A269375 n).toNat).toNat

end

end A269377.P17868695760986060348

/-!
# A269378: Permutation of natural numbers: a(1) = 0, after which a(2n) = 1 + 2*a(n), a(2n+1) = 2 * a(A269370(n)).

The programs for A269378, there is no canonical definition to state claims against.
-/

/-! ## A269378.P5665524676982970603

`A269388(A260741(n+1))`
-/

namespace A269378.P5665524676982970603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A260741 (n + 1)).toNat

end

end A269378.P5665524676982970603

/-! ## A269378.P16482491428161633396

`A269388(A269385(A269376(n+1)))`
-/

namespace A269378.P16482491428161633396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A269385 (A269376 (n + 1)).toNat).toNat

end

end A269378.P16482491428161633396

/-! ## A269378.P15069228463158632391

`A252754(A260741(n+1))%A115890(n+1)`
-/

namespace A269378.P15069228463158632391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252754 (A260741 (n + 1)).toNat) (A115890 (n + 1))

end

end A269378.P15069228463158632391

/-! ## A269378.P4917950663619848974

`A252754(A260741(n+1)%A157884(3*n+2))`
-/

namespace A269378.P4917950663619848974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (Int.tmod (A260741 (n + 1)) (A157884 (3 * n + 2))).toNat

end

end A269378.P4917950663619848974

/-! ## A269378.P8131059549794750416

`A156552(A260741(n+1)%A074835(n+1))`
-/

namespace A269378.P8131059549794750416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.tmod (A260741 (n + 1)) (A074835 (n + 1))).toNat

end

end A269378.P8131059549794750416

/-!
# A269379: a(1) = 1; for n > 1, a(n) = A255127(A260738(n)+1, A260739(n)).

The programs for A269379, there is no canonical definition to state claims against.
-/

/-! ## A269379.P18190449659959017022

`A269382(n)+1`
-/

namespace A269379.P18190449659959017022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269382 n + 1

end

end A269379.P18190449659959017022

/-! ## A269379.P17072894007692332924

`A000265(or(1, A269382(n)))`
-/

namespace A269379.P17072894007692332924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor 1 (A269382 n)).toNat

end

end A269379.P17072894007692332924

/-! ## A269379.P9807719017184430866

`A000265(xor(1, A269382(n)))`
-/

namespace A269379.P9807719017184430866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (A269382 n)).toNat

end

end A269379.P9807719017184430866

/-! ## A269379.P13448420728452905931

`or(A078371(n)%2, A269382(n))`
-/

namespace A269379.P13448420728452905931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A078371 n) 2) (A269382 n)

end

end A269379.P13448420728452905931

/-! ## A269379.P12311953446520645556

`or(A046280(A133310(n))%2, A269382(n))`
-/

namespace A269379.P12311953446520645556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A046280 (A133310 n).toNat) 2) (A269382 n)

end

end A269379.P12311953446520645556

/-! ## A269379.P8552934820357592231

`xor(A028310(A028310(n)-n), A269382(n))`
-/

namespace A269379.P8552934820357592231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028310 (A028310 n - (n : ℤ)).toNat) (A269382 n)

end

end A269379.P8552934820357592231

/-! ## A269379.P15612094164230986027

`A269360(A269356(n+1))-1`
-/

namespace A269379.P15612094164230986027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (A269356 (n + 1)).toNat - 1

end

end A269379.P15612094164230986027

/-! ## A269379.P6472231700136282421

`A302032(6*n+3)`
-/

namespace A269379.P6472231700136282421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (6 * n + 3)

end

end A269379.P6472231700136282421

/-! ## A269379.P13676684444760608378

`A004442(A269382(n))`
-/

namespace A269379.P13676684444760608378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A269382 n).toNat

end

end A269379.P13676684444760608378

/-! ## A269379.P1163479155925462594

`A028310(or(1, A269382(n)))`
-/

namespace A269379.P1163479155925462594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor 1 (A269382 n)).toNat

end

end A269379.P1163479155925462594

/-! ## A269379.P5443471170111511768

`A028310(xor(1, A269382(n)))`
-/

namespace A269379.P5443471170111511768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor 1 (A269382 n)).toNat

end

end A269379.P5443471170111511768

/-! ## A269379.P11117792802930295490

`A250469(A269356(n+1))`
-/

namespace A269379.P11117792802930295490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A269356 (n + 1)).toNat

end

end A269379.P11117792802930295490

/-! ## A269379.P9575315810660160660

`A253886(A269356(n+1)-1)+1`
-/

namespace A269379.P9575315810660160660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253886 (A269356 (n + 1) - 1).toNat + 1

end

end A269379.P9575315810660160660

/-! ## A269379.P846103384728438776

`A008619(2*A269382(n))`
-/

namespace A269379.P846103384728438776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A269382 n).toNat

end

end A269379.P846103384728438776

/-! ## A269379.P16563234087981903179

`A028242(2*A269382(n))`
-/

namespace A269379.P16563234087981903179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A269382 n).toNat

end

end A269379.P16563234087981903179

/-! ## A269379.P6420469142322964151

`A269171(A250469(A269172(n+1)))`
-/

namespace A269379.P6420469142322964151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A250469 (A269172 (n + 1)).toNat).toNat

end

end A269379.P6420469142322964151

/-! ## A269379.P2949219190387595332

`A302025(A003961(A302026(n+1)))`
-/

namespace A269379.P2949219190387595332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A003961 (A302026 (n + 1)).toNat).toNat

end

end A269379.P2949219190387595332

/-!
# A269380: a(1) = 1, after which, for odd numbers: a(n) = A260739(n)-th number k for which A260738(k) = A260738(n)-1, and for even numbers: a(n) = a(n/2).

The programs for A269380, there is no canonical definition to state claims against.
-/

/-! ## A269380.P15288763148010111126

`A269355(A268674(n+1))`
-/

namespace A269380.P15288763148010111126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269355 (A268674 (n + 1)).toNat

end

end A269380.P15288763148010111126

/-! ## A269380.P7753937220955981075

`A269355(A250470((n+1)/2^val(n+1, 2)))`
-/

namespace A269380.P7753937220955981075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269355 (A250470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A269380.P7753937220955981075

/-! ## A269380.P12782504590190416635

`A269355(A253554((n+1)/2^val(n+1, 2)))`
-/

namespace A269380.P12782504590190416635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269355 (A253554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A269380.P12782504590190416635

/-! ## A269380.P6351404030309989196

`A269171(A268674(A269172(n+1)))`
-/

namespace A269380.P6351404030309989196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A268674 (A269172 (n + 1)).toNat).toNat

end

end A269380.P6351404030309989196

/-! ## A269380.P17003425874444932899

`A302025(∑{d}[A302026(n+1), A349127(#)])`
-/

namespace A269380.P17003425874444932899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (∑ d ∈ Nat.divisors (f1 n).natAbs, A349127 d).toNat

end

end A269380.P17003425874444932899

/-! ## A269380.P2402068344794730794

`A302025(A064989(A302026(n+1)))`
-/

namespace A269380.P2402068344794730794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A064989 (A302026 (n + 1)).toNat).toNat

end

end A269380.P2402068344794730794

/-! ## A269380.P6022335515053273564

`A255407(A268674(A269393(A269396(n+1))))`
-/

namespace A269380.P6022335515053273564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A268674 (A269393 (A269396 (n + 1)).toNat).toNat).toNat

end

end A269380.P6022335515053273564

/-!
# A269381: Least monotonic left inverse of A233271.

The programs for A269381, the canonical program `A269381.P1411983519145448973` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269381 has offset 0).

The definition of A269381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269381.P1411983519145448973

`∑[char[A233271(n+1)]]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269381

/-- `∑[char[A233271(n+1)]]` -/
def P1411983519145448973.Spec : Prop :=
  ∀ n, (P1411983519145448973.a n : ℤ) = A269381 n

theorem P1411983519145448973.correct : P1411983519145448973.Spec := by
  intro n
  simp only [A269381]

end A269381

/-! ## A269381.P2219580564024420020

`∑[char[A233271(n)]]-1`
-/

namespace A269381.P2219580564024420020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A269381.P2219580564024420020

namespace A269381

/-- `∑[char[A233271(n)]]-1` -/
def P2219580564024420020.Spec : Prop :=
  ∀ n, P2219580564024420020.a n = A269381 n

end A269381

/-! ## A269381.P4634605973177053160

`∑[char[A233272(a(n-1))]]` with `a(0)=1`
-/

namespace A269381.P4634605973177053160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A233272 (f2 (n - 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269381.P4634605973177053160

namespace A269381

/-- `∑[char[A233272(a(n-1))]]` -/
def P4634605973177053160.Spec : Prop :=
  ∀ n, (P4634605973177053160.a n : ℤ) = A269381 n

end A269381

/-! ## A269381.P5469785415450643391

`n-∑[char[A269390(n+1)]]`
-/

namespace A269381.P5469785415450643391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269390 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A269381.P5469785415450643391

namespace A269381

/-- `n-∑[char[A269390(n+1)]]` -/
def P5469785415450643391.Spec : Prop :=
  ∀ n, P5469785415450643391.a n = A269381 n

end A269381

/-! ## A269381.P390349217248919855

`A023443(∑[char[A233271(n)]])`
-/

namespace A269381.P390349217248919855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269381.P390349217248919855

namespace A269381

/-- `A023443(∑[char[A233271(n)]])` -/
def P390349217248919855.Spec : Prop :=
  ∀ n, P390349217248919855.a n = A269381 n

end A269381

/-!
# A269382: Permutation of even numbers: a(n) = A269379(n+1) - 1.

The programs for A269382, there is no canonical definition to state claims against.
-/

/-! ## A269382.P6086169908022304456

`A269379(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269382.P6086169908022304456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (n + 1) - 1

end

end A269382.P6086169908022304456

/-! ## A269382.P4200471619606242242

`xor(1, A269379(xor(1, xor(1, n+1))))`
-/

namespace A269382.P4200471619606242242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A269379 (Nat.xor 1 (Nat.xor 1 (n + 1))))

end

end A269382.P4200471619606242242

/-! ## A269382.P5469150465213167419

`xor(1, A269379(A000027(n+1)))`
-/

namespace A269382.P5469150465213167419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A269379 (A000027 (n + 1)).toNat)

end

end A269382.P5469150465213167419

/-! ## A269382.P266599682728016163

`xor(A033999(n)², A269379(n+1))`
-/

namespace A269382.P266599682728016163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A269379 (n + 1))

end

end A269382.P266599682728016163

/-! ## A269382.P5382380469234253426

`xor(A057427(A051801(n)), A269379(n+1))`
-/

namespace A269382.P5382380469234253426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A051801 n).toNat) (A269379 (n + 1))

end

end A269382.P5382380469234253426

/-! ## A269382.P18406186998014926470

`A269360(A269356(n+1))-2`
-/

namespace A269382.P18406186998014926470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (A269356 (n + 1)).toNat - 2

end

end A269382.P18406186998014926470

/-! ## A269382.P12025421081938419593

`A302032(6*n+3)-1`
-/

namespace A269382.P12025421081938419593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (6 * n + 3) - 1

end

end A269382.P12025421081938419593

/-! ## A269382.P10525155298486493666

`A004442(A269379(n+1))`
-/

namespace A269382.P10525155298486493666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A269379 (n + 1)).toNat

end

end A269382.P10525155298486493666

/-! ## A269382.P13308075897512950441

`A253886(A269356(n+1)-1)`
-/

namespace A269382.P13308075897512950441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253886 (A269356 (n + 1) - 1).toNat

end

end A269382.P13308075897512950441

/-! ## A269382.P12805501072154716545

`and(A158525(n+4), A269379(n+1))`
-/

namespace A269382.P12805501072154716545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158525 (n + 4)) (A269379 (n + 1))

end

end A269382.P12805501072154716545

/-! ## A269382.P12395107820467127649

`and(A002446(n), A269379(n+1))`
-/

namespace A269382.P12395107820467127649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A269379 (n + 1))

end

end A269382.P12395107820467127649

/-! ## A269382.P4180556709730224303

`and(A005367(n), A269379(n+1))`
-/

namespace A269382.P4180556709730224303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005367 n) (A269379 (n + 1))

end

end A269382.P4180556709730224303

/-! ## A269382.P15701377067902929492

`and(A269379(n+1), A286778(n))`
-/

namespace A269382.P15701377067902929492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269379 (n + 1)) (A286778 n)

end

end A269382.P15701377067902929492

/-! ## A269382.P6728749781328054446

`and(A143960(n+1), A269379(n+1))`
-/

namespace A269382.P6728749781328054446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143960 (n + 1)) (A269379 (n + 1))

end

end A269382.P6728749781328054446

/-! ## A269382.P3349497100533560057

`and(A170940(n+1), A269379(n+1))`
-/

namespace A269382.P3349497100533560057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170940 (n + 1)) (A269379 (n + 1))

end

end A269382.P3349497100533560057

/-!
# A269383: Permutation of natural numbers: a(1) = 1, a(n) = A000079(A260738(n+1)-1) * ((2 * a(A260739(n+1))) - 1).

The programs for A269383, there is no canonical definition to state claims against.
-/

/-! ## A269383.P13972793329006093601

`A000079(A260738(n+2)-1)*(2*a(A260739(n+2)-1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269383.P13972793329006093601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A260738 (n + 2) - 1).toNat * (2 * a (A260739 (n + 2) - 1).toNat - 1)

end

end A269383.P13972793329006093601

/-! ## A269383.P9343981096397720014

`A249813(n+1)%A031169(A249797(n+1))`
-/

namespace A269383.P9343981096397720014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249813 (n + 1)) (A031169 (A249797 (n + 1)).toNat)

end

end A269383.P9343981096397720014

/-! ## A269383.P7479892729652175941

`A246683(n+1)%A001197(n+6)`
-/

namespace A269383.P7479892729652175941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246683 (n + 1)) (A001197 (n + 6))

end

end A269383.P7479892729652175941

/-! ## A269383.P2958946457306819504

`A249813(n+1)%A244480(4*n)`
-/

namespace A269383.P2958946457306819504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249813 (n + 1)) (A244480 (4 * n))

end

end A269383.P2958946457306819504

/-!
# A269384: Permutation of natural numbers: a(1) = 1, a(n) = A255127(A001511(n), a(A003602(n))) - 1.

The programs for A269384, there is no canonical definition to state claims against.
-/

/-! ## A269384.P15317587206241653277

`A249814(n+1)-A033685(A059220(2*(n+2)))`
-/

namespace A269384.P15317587206241653277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249814 (n + 1) - A033685 (A059220 (2 * (n + 2))).toNat

end

end A269384.P15317587206241653277

/-! ## A269384.P6688492025068869518

`A249814(n+1)-A349797(A303393(2*n+5))`
-/

namespace A269384.P6688492025068869518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249814 (n + 1) - A349797 (A303393 (2 * n + 5)).toNat

end

end A269384.P6688492025068869518

/-!
# A269385: Tree of Ludic sieve, mirrored: a(0) = 1, a(1) = 2; after which, a(2n) = 2*a(n), a(2n+1) = A269379(a(n)).

The programs for A269385, there is no canonical definition to state claims against.
-/

/-! ## A269385.P18041538033717275702

`A269171(A252755(n))`
-/

namespace A269385.P18041538033717275702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A252755 n).toNat

end

end A269385.P18041538033717275702

/-! ## A269385.P13060897755355408427

`A260741(A269375(n))`
-/

namespace A269385.P13060897755355408427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260741 (A269375 n).toNat

end

end A269385.P13060897755355408427

/-! ## A269385.P16266633784700188523

`A269387(A286548(n)+A180201(n))`
-/

namespace A269385.P16266633784700188523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (A286548 n + A180201 n).toNat

end

end A269385.P16266633784700188523

/-! ## A269385.P3025920964928537481

`A269387(A286546(n)+A233279(n))`
-/

namespace A269385.P3025920964928537481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (A286546 n + A233279 n).toNat

end

end A269385.P3025920964928537481

/-! ## A269385.P8336057813326120508

`A269171(A286550(n)+n)`
-/

namespace A269385.P8336057813326120508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A286550 n + (n : ℤ)).toNat

end

end A269385.P8336057813326120508

/-! ## A269385.P589029848364112031

`A269387(A269386(A269387(n)))`
-/

namespace A269385.P589029848364112031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (A269386 (A269387 n).toNat).toNat

end

end A269385.P589029848364112031

/-! ## A269385.P10495503816262427274

`A269171(A252753(A252756(A252753(n))))`
-/

namespace A269385.P10495503816262427274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A252753 (A252756 (A252753 n).toNat).toNat).toNat

end

end A269385.P10495503816262427274

/-! ## A269385.P2693346367545567461

`A269387(A269376(A269377(n)))`
-/

namespace A269385.P2693346367545567461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (A269376 (A269377 n).toNat).toNat

end

end A269385.P2693346367545567461

/-! ## A269385.P9167270496236512749

`A302025(A163511(n))`
-/

namespace A269385.P9167270496236512749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A163511 n).toNat

end

end A269385.P9167270496236512749

/-!
# A269386: Permutation of nonnegative integers: a(1) = 0, a(2) = 1, a(2n) = 2*a(n), a(2n+1) = 1 + 2*a(A269380(2n+1)).

The programs for A269386, there is no canonical definition to state claims against.
-/

/-! ## A269386.P9153827366730368509

`A269376(A260742(n+1))`
-/

namespace A269386.P9153827366730368509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269376 (A260742 (n + 1)).toNat

end

end A269386.P9153827366730368509

/-! ## A269386.P11510924262048174006

`A252756(A269172(n+1))`
-/

namespace A269386.P11510924262048174006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A269172 (n + 1)).toNat

end

end A269386.P11510924262048174006

/-! ## A269386.P11571940451375420730

`A243071(A302026(n+1))`
-/

namespace A269386.P11571940451375420730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A302026 (n + 1)).toNat

end

end A269386.P11571940451375420730

/-! ## A269386.P11343144913110289834

`∑{d}[A302026(n+1), A297171(#)]`
-/

namespace A269386.P11343144913110289834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d

end

end A269386.P11343144913110289834

/-! ## A269386.P12022476022012799017

`A252756(A252753(A269388(n+1)))`
-/

namespace A269386.P12022476022012799017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A252753 (A269388 (n + 1)).toNat).toNat

end

end A269386.P12022476022012799017

/-!
# A269387: Tree of Ludic sieve: a(0) = 1, a(1) = 2; after which, a(2n) = A269379(a(n)), a(2n+1) = 2*a(n).

The programs for A269387, there is no canonical definition to state claims against.
-/

/-! ## A269387.P978406338818436477

`A269171(A252753(n))`
-/

namespace A269387.P978406338818436477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A252753 n).toNat

end

end A269387.P978406338818436477

/-! ## A269387.P234147037658173711

`A260741(A269377(n))`
-/

namespace A269387.P234147037658173711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260741 (A269377 n).toNat

end

end A269387.P234147037658173711

/-! ## A269387.P2189076439835967402

`A269385(A054429(2*n+1))/2`
-/

namespace A269387.P2189076439835967402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269385 (A054429 (2 * n + 1)).toNat : ℚ) / 2

end

end A269387.P2189076439835967402

/-! ## A269387.P13261065313637973881

`A269385(A269388(A269385(n)))`
-/

namespace A269387.P13261065313637973881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269385 (A269388 (A269385 n).toNat).toNat

end

end A269387.P13261065313637973881

/-! ## A269387.P11288762079583645942

`A269171(A252755(A252754(A252755(n))))`
-/

namespace A269387.P11288762079583645942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A252755 (A252754 (A252755 n).toNat).toNat).toNat

end

end A269387.P11288762079583645942

/-! ## A269387.P6131648407083955193

`A302025(A005940(n+1))`
-/

namespace A269387.P6131648407083955193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A005940 (n + 1)).toNat

end

end A269387.P6131648407083955193

/-! ## A269387.P17200921650322986104

`A260741(A269375(A269378(A269375(n))))`
-/

namespace A269387.P17200921650322986104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260741 (A269375 (A269378 (A269375 n).toNat).toNat).toNat

end

end A269387.P17200921650322986104

/-! ## A269387.P9550745384345540667

`A302025(A302024(A052330(n)))`
-/

namespace A269387.P9550745384345540667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A302024 (A052330 n).toNat).toNat

end

end A269387.P9550745384345540667

/-!
# A269388: Permutation of natural numbers: a(1) = 0, after which, a(2n) = 1 + 2*a(n), a(2n+1) = 2 * a(A269380(n)).

The programs for A269388, there is no canonical definition to state claims against.
-/

/-! ## A269388.P1020790070297092941

`A269378(A260742(n+1))`
-/

namespace A269388.P1020790070297092941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269378 (A260742 (n + 1)).toNat

end

end A269388.P1020790070297092941

/-! ## A269388.P779310656690294251

`A252754(A269172(n+1))`
-/

namespace A269388.P779310656690294251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A269172 (n + 1)).toNat

end

end A269388.P779310656690294251

/-! ## A269388.P16644734772678320862

`A156552(A302026(n+1))`
-/

namespace A269388.P16644734772678320862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A302026 (n + 1)).toNat

end

end A269388.P16644734772678320862

/-! ## A269388.P8248630863640868645

`∑{d}[A302026(n+1), A297112(#)]`
-/

namespace A269388.P8248630863640868645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A269388.P8248630863640868645

/-! ## A269388.P9265737110505878428

`xor(A005941(A302026(n+1)), A038712(n+1))`
-/

namespace A269388.P9265737110505878428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005941 (A302026 (n + 1)).toNat) (A038712 (n + 1))

end

end A269388.P9265737110505878428

/-!
# A269389: Numbers n for which prime(n+7)-prime(n+6) is not a multiple of three.

The programs for A269389, the canonical program `A269389.P385461570029580666` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269389 has offset 1).

The definition of A269389 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270189, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269389.P385461570029580666

`A270189(n+7)-6`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A269389

/-- `A270189(n+7)-6` -/
def P385461570029580666.Spec : Prop :=
  ∀ n, P385461570029580666.a n = A269389 (n + 1)

theorem P385461570029580666.correct : P385461570029580666.Spec := by
  intro n
  simp only [A269389, Nat.add_sub_cancel]

end A269389

/-! ## A269389.P15131603523257490457

`∑[A288915(n+7)]`
-/

namespace A269389.P15131603523257490457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288915 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269389.P15131603523257490457

namespace A269389

/-- `∑[A288915(n+7)]` -/
def P15131603523257490457.Spec : Prop :=
  ∀ n, P15131603523257490457.a n = A269389 (n + 1)

end A269389

/-! ## A269389.P7128081031894991416

`∑[abs(Δ[A270189(n+6)])]`
-/

namespace A269389.P7128081031894991416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269389.P7128081031894991416

namespace A269389

/-- `∑[abs(Δ[A270189(n+6)])]` -/
def P7128081031894991416.Spec : Prop :=
  ∀ n, P7128081031894991416.a n = A269389 (n + 1)

end A269389

/-! ## A269389.P11106905263230148673

`∑[A028310(Δ[A270189(n+6)])]`
-/

namespace A269389.P11106905263230148673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270189 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269389.P11106905263230148673

namespace A269389

/-- `∑[A028310(Δ[A270189(n+6)])]` -/
def P11106905263230148673.Spec : Prop :=
  ∀ n, P11106905263230148673.a n = A269389 (n + 1)

end A269389

/-! ## A269389.P3269173989902398672

`∑[A270189(n+7)%A270189(n+6)]`
-/

namespace A269389.P3269173989902398672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270189 (n + 7)) (A270189 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269389.P3269173989902398672

namespace A269389

/-- `∑[A270189(n+7)%A270189(n+6)]` -/
def P3269173989902398672.Spec : Prop :=
  ∀ n, P3269173989902398672.a n = A269389 (n + 1)

end A269389

/-!
# A269390: Complement of A233271.

The programs for A269390, the canonical program `A269390.P13967432364545519165` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269390 has offset 1).

The definition of A269390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269390.P13967432364545519165

`comp[A233271(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A269390

/-- `comp[A233271(n)]` -/
def P13967432364545519165.Spec : Prop :=
  ∀ n, (P13967432364545519165.a n : ℤ) = A269390 (n + 1)

theorem P13967432364545519165.correct : P13967432364545519165.Spec := by
  intro n
  simp only [A269390, Nat.add_sub_cancel]

end A269390

/-! ## A269390.P13152961080312644632

`comp[A233270(n)+A179016(n)]`
-/

namespace A269390.P13152961080312644632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233270 n + A179016 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269390.P13152961080312644632

namespace A269390

/-- `comp[A233270(n)+A179016(n)]` -/
def P13152961080312644632.Spec : Prop :=
  ∀ n, (P13152961080312644632.a n : ℤ) = A269390 (n + 1)

end A269390

/-! ## A269390.P774493661992071199

`eq[0, char[A233271(A071542(n))]]`
-/

namespace A269390.P774493661992071199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (A071542 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269390.P774493661992071199

namespace A269390

/-- `eq[0, char[A233271(A071542(n))]]` -/
def P774493661992071199.Spec : Prop :=
  ∀ n, (P774493661992071199.a n : ℤ) = A269390 (n + 1)

end A269390

/-! ## A269390.P8335511581436205176

`eq[0, char[A233271(A213714(n))]]`
-/

namespace A269390.P8335511581436205176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (A213714 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269390.P8335511581436205176

namespace A269390

/-- `eq[0, char[A233271(A213714(n))]]` -/
def P8335511581436205176.Spec : Prop :=
  ∀ n, (P8335511581436205176.a n : ℤ) = A269390 (n + 1)

end A269390

/-! ## A269390.P13159291688600644661

`eq[char[A233271(n)], A000038(n)]`
-/

namespace A269390.P13159291688600644661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A269390.P13159291688600644661

namespace A269390

/-- `eq[char[A233271(n)], A000038(n)]` -/
def P13159291688600644661.Spec : Prop :=
  ∀ n, (P13159291688600644661.a n : ℤ) = A269390 (n + 1)

end A269390

/-! ## A269390.P16355934748220915315

`eq[1, Δ[A269381(n)]+1]+1`
-/

namespace A269390.P16355934748220915315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269390.P16355934748220915315

namespace A269390

/-- `eq[1, Δ[A269381(n)]+1]+1` -/
def P16355934748220915315.Spec : Prop :=
  ∀ n, (P16355934748220915315.a n : ℤ) = A269390 (n + 1)

end A269390

/-! ## A269390.P13317054782060124962

`A269398(A213713(A269397(n+1)))`
-/

namespace A269390.P13317054782060124962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269398 (A213713 (A269397 (n + 1)).toNat).toNat

end

end A269390.P13317054782060124962

namespace A269390

/-- `A269398(A213713(A269397(n+1)))` -/
def P13317054782060124962.Spec : Prop :=
  ∀ n, P13317054782060124962.a n = A269390 (n + 1)

end A269390

/-! ## A269390.P7448377009074061774

`A269398(A213713(A269402(A269391(n+1))))`
-/

namespace A269390.P7448377009074061774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269398 (A213713 (A269402 (A269391 (n + 1)).toNat).toNat).toNat

end

end A269390.P7448377009074061774

namespace A269390

/-- `A269398(A213713(A269402(A269391(n+1))))` -/
def P7448377009074061774.Spec : Prop :=
  ∀ n, P7448377009074061774.a n = A269390 (n + 1)

end A269390

/-! ## A269390.P14752312653928642981

`A269392(2*A269391(n+1)+1)`
-/

namespace A269390.P14752312653928642981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269392 (2 * A269391 (n + 1) + 1).toNat

end

end A269390.P14752312653928642981

namespace A269390

/-- `A269392(2*A269391(n+1)+1)` -/
def P14752312653928642981.Spec : Prop :=
  ∀ n, P14752312653928642981.a n = A269390 (n + 1)

end A269390

/-! ## A269390.P1316142849268710547

`A269392(A269391(n+1)+A269391(n+1)+1)`
-/

namespace A269390.P1316142849268710547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269392 (A269391 (n + 1) + (A269391 (n + 1) + 1)).toNat

end

end A269390.P1316142849268710547

namespace A269390

/-- `A269392(A269391(n+1)+A269391(n+1)+1)` -/
def P1316142849268710547.Spec : Prop :=
  ∀ n, P1316142849268710547.a n = A269390 (n + 1)

end A269390

/-! ## A269390.P16602936126439474323

`A269392(A269381(A216431(A269391(A216431(n+1)))))`
-/

namespace A269390.P16602936126439474323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269392 (A269381 (A216431 (A269391 (A216431 (n + 1)).toNat).toNat).toNat).toNat

end

end A269390.P16602936126439474323

namespace A269390

/-- `A269392(A269381(A216431(A269391(A216431(n+1)))))` -/
def P16602936126439474323.Spec : Prop :=
  ∀ n, P16602936126439474323.a n = A269390 (n + 1)

end A269390

/-!
# A269391: Permutation of natural numbers: a(1) = 1, a(A233271(1+n)) = 2*a(n), a(A269390(n)) = 1 + 2*a(n), where A233271 is the infinite trunk of inverted binary beanstalk and A269390 is its complement.

The programs for A269391, there is no canonical definition to state claims against.
-/

/-! ## A269391.P12294067217635848853

`A269401(A269397(n+1))`
-/

namespace A269391.P12294067217635848853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269401 (A269397 (n + 1)).toNat

end

end A269391.P12294067217635848853

/-! ## A269391.P2504593849266206153

`A267111(n+1)+A183094(A291219(n))`
-/

namespace A269391.P2504593849266206153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (n + 1) + A183094 (A291219 n).toNat

end

end A269391.P2504593849266206153

/-! ## A269391.P5217595980132785223

`A267111(n+1)+A166352(A103301(A326590(n)))`
-/

namespace A269391.P5217595980132785223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (n + 1) + A166352 (A103301 (A326590 n).toNat).toNat

end

end A269391.P5217595980132785223

/-! ## A269391.P9772034057840226896

`A267111(n+1)+A091064(4*n^3)`
-/

namespace A269391.P9772034057840226896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (n + 1) + A091064 (4 * n ^ 3)

end

end A269391.P9772034057840226896

/-! ## A269391.P13144561468298963252

`A161919(or(A033665(n), A077168(n)))`
-/

namespace A269391.P13144561468298963252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161919 (Int.lor (A033665 n) (A077168 n)).toNat

end

end A269391.P13144561468298963252

/-!
# A269392: Permutation of natural numbers: a(1) = 1, a(2n) = A233271(1+a(n)), a(2n+1) = A269390(a(n)).

The programs for A269392, there is no canonical definition to state claims against.
-/

/-! ## A269392.P4801391811530040659

`A269398(A269402(n+1))`
-/

namespace A269392.P4801391811530040659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269398 (A269402 (n + 1)).toNat

end

end A269392.P4801391811530040659

/-! ## A269392.P17082135723832753544

`A267112(n+1)+A025456(A022372(n))`
-/

namespace A269392.P17082135723832753544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (n + 1) + A025456 (A022372 n).toNat

end

end A269392.P17082135723832753544

/-! ## A269392.P6424924543625362559

`A267112(n+1)+A185284(A018851(n))`
-/

namespace A269392.P6424924543625362559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (n + 1) + A185284 (A018851 n).toNat

end

end A269392.P6424924543625362559

/-! ## A269392.P1325201717056638413

`A267112(n+1)+A184946(A344182(n))`
-/

namespace A269392.P1325201717056638413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (n + 1) + A184946 (A344182 n).toNat

end

end A269392.P1325201717056638413

/-!
# A269393: Permutation of natural numbers: a(n) = A269171(3*n) / 3.

The programs for A269393, there is no canonical definition to state claims against.
-/

/-! ## A269393.P4805270540921657701

`A269171(3*(n+1))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269393.P4805270540921657701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269171 (3 * (n + 1)) : ℚ) / 3

end

end A269393.P4805270540921657701

/-! ## A269393.P12335290786142550416

`A002264(A269171(3*(n+1)))`
-/

namespace A269393.P12335290786142550416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A269171 (3 * (n + 1))).toNat

end

end A269393.P12335290786142550416

/-! ## A269393.P13424150102388350723

`A008611(A269171(3*(n+1))+1)`
-/

namespace A269393.P13424150102388350723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A269171 (3 * (n + 1)) + 1).toNat

end

end A269393.P13424150102388350723

/-! ## A269393.P9845650827324291821

`A269171(3*n+3)-A026136(A269171(3*n+3))`
-/

namespace A269393.P9845650827324291821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (3 * n + 3) - A026136 (A269171 (3 * n + 3)).toNat

end

end A269393.P9845650827324291821

/-! ## A269393.P13198789960705310944

`A269172(A269395(n+1))`
-/

namespace A269393.P13198789960705310944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A269395 (n + 1)).toNat

end

end A269393.P13198789960705310944

/-! ## A269393.P11128799793994896430

`A269385(A252756(3*(n+1)))/3`
-/

namespace A269393.P11128799793994896430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269385 (A252756 (3 * (n + 1))).toNat : ℚ) / 3

end

end A269393.P11128799793994896430

/-! ## A269393.P939894355183115249

`A269394(A269394(n+1))`
-/

namespace A269393.P939894355183115249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A269394 (n + 1)).toNat

end

end A269393.P939894355183115249

/-! ## A269393.P15863404054066812926

`A269396(A269171(A269396(A269171(n+1))))`
-/

namespace A269393.P15863404054066812926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269396 (A269171 (A269396 (A269171 (n + 1)).toNat).toNat).toNat

end

end A269393.P15863404054066812926

/-!
# A269394: Permutation of natural numbers: a(n) = A269172(3*n) / 3.

The programs for A269394, there is no canonical definition to state claims against.
-/

/-! ## A269394.P1823104812326616501

`A269172(3*(n+1))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269394.P1823104812326616501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269172 (3 * (n + 1)) : ℚ) / 3

end

end A269394.P1823104812326616501

/-! ## A269394.P9516620872060792099

`ceil(A269172(Δ[n²]+n+2)/3)`
-/

namespace A269394.P9516620872060792099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 2 : ℤ)).toNat : ℚ) / 3⌉

end

end A269394.P9516620872060792099

/-! ## A269394.P14899873687850828626

`A002264(A269172(3*(n+1)))`
-/

namespace A269394.P14899873687850828626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A269172 (3 * (n + 1))).toNat

end

end A269394.P14899873687850828626

/-! ## A269394.P17495344111542523322

`A008615(A269172(6*(n+1)))`
-/

namespace A269394.P17495344111542523322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A269172 (6 * (n + 1))).toNat

end

end A269394.P17495344111542523322

/-! ## A269394.P16771356327240103923

`A008611(A269172(3*(n+1))+1)`
-/

namespace A269394.P16771356327240103923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A269172 (3 * (n + 1)) + 1).toNat

end

end A269394.P16771356327240103923

/-! ## A269394.P14643517513936944100

`A214917(A269172(3*(n+1))+1)`
-/

namespace A269394.P14643517513936944100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214917 (A269172 (3 * (n + 1)) + 1).toNat

end

end A269394.P14643517513936944100

/-! ## A269394.P16354629944522306822

`A214918(A269172(3*(n+1))+2)`
-/

namespace A269394.P16354629944522306822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214918 (A269172 (3 * (n + 1)) + 2).toNat

end

end A269394.P16354629944522306822

/-! ## A269394.P9723093109851907619

`A214919(or(A000122(n), A269172(3*(n+1))))`
-/

namespace A269394.P9723093109851907619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214919 (Int.lor (A000122 n) (A269172 (3 * (n + 1)))).toNat

end

end A269394.P9723093109851907619

/-! ## A269394.P854233403853114476

`A269172(A336898(n+1)+1)-A336898(n+1)+n`
-/

namespace A269394.P854233403853114476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A336898 (n + 1) + 1).toNat - A336898 (n + 1) + (n : ℤ)

end

end A269394.P854233403853114476

/-! ## A269394.P15603337690041495574

`A269396(A269171(n+1))`
-/

namespace A269394.P15603337690041495574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269396 (A269171 (n + 1)).toNat

end

end A269394.P15603337690041495574

/-!
# A269395: Permutation of natural numbers: a(n) = A269171(A269393(n)) = A269171(A269171(3*n)/3).

The programs for A269395, there is no canonical definition to state claims against.
-/

/-! ## A269395.P4361442542923046826

`A269171(A269393(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269395.P4361442542923046826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A269393 (n + 1)).toNat

end

end A269395.P4361442542923046826

/-! ## A269395.P2334524025238749044

`A269171(A269171(3*(n+1))/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269395.P2334524025238749044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (SequenceMachineLib.roundAway ((A269171 (3 * (n + 1)) : ℚ) / 3)).toNat

end

end A269395.P2334524025238749044

/-! ## A269395.P14046824339443495655

`A269171(A269394(A269394(n+1)))`
-/

namespace A269395.P14046824339443495655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A269394 (A269394 (n + 1)).toNat).toNat

end

end A269395.P14046824339443495655

/-! ## A269395.P16927483953250637621

`A255407(A269396(A255407(A269396(A255407(n+1)))))`
-/

namespace A269395.P16927483953250637621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A269396 (A255407 (A269396 (A255407 (n + 1)).toNat).toNat).toNat).toNat

end

end A269395.P16927483953250637621

/-! ## A269395.P8506115757645250070

`A269171(A269396(A269171(A269396(A269171(n+1)))))`
-/

namespace A269395.P8506115757645250070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A269396 (A269171 (A269396 (A269171 (n + 1)).toNat).toNat).toNat).toNat

end

end A269395.P8506115757645250070

/-!
# A269396: Permutation of natural numbers: a(n) = A269394(A269172(n)) = A269172(3*A269172(n)) / 3.

The programs for A269396, there is no canonical definition to state claims against.
-/

/-! ## A269396.P18249567289691188263

`A269172(3*A269172(n+1))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269396.P18249567289691188263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269172 (3 * A269172 (n + 1)).toNat : ℚ) / 3

end

end A269396.P18249567289691188263

/-! ## A269396.P11944475719613090716

`A269394(A269172(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269396.P11944475719613090716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A269172 (n + 1)).toNat

end

end A269396.P11944475719613090716

/-! ## A269396.P11687413110631578065

`A269394(A252755(A269386(n+1)))`
-/

namespace A269396.P11687413110631578065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A252755 (A269386 (n + 1)).toNat).toNat

end

end A269396.P11687413110631578065

/-! ## A269396.P13627541492461246047

`A269394(ceil(A269394(2*n+1)/2))`
-/

namespace A269396.P13627541492461246047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 ⌈(A269394 (2 * n + 1) : ℚ) / 2⌉.toNat

end

end A269396.P13627541492461246047

/-! ## A269396.P12141018857208322438

`A269394((A269394(2*n+1)+1)/2)`
-/

namespace A269396.P12141018857208322438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (SequenceMachineLib.roundAway ((A269394 (2 * n + 1) + 1 : ℚ) / 2)).toNat

end

end A269396.P12141018857208322438

/-!
# A269397: Permutation of natural numbers: a(1) = 1, a(A233271(1+n)) = A179016(1+a(n)), a(A269390(n)) = A213713(a(n)), where A179016, A233271 are the infinite trunks of binary beanstalk and inverted binary beanstalk and A213713, A269390 their complements.

The programs for A269397, there is no canonical definition to state claims against.
-/

/-! ## A269397.P14410933637462443001

`A269402(A269391(n+1))`
-/

namespace A269397.P14410933637462443001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269402 (A269391 (n + 1)).toNat

end

end A269397.P14410933637462443001

/-! ## A269397.P4324195042650574624

`A269402(A267111(n+1)+A091064(4*n^3))`
-/

namespace A269397.P4324195042650574624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269402 (A267111 (n + 1) + A091064 (4 * n ^ 3)).toNat

end

end A269397.P4324195042650574624

/-! ## A269397.P2828846039906179911

`A269402(A161919(n+1)%A166386(n+1))`
-/

namespace A269397.P2828846039906179911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269402 (Int.tmod (A161919 (n + 1)) (A166386 (n + 1))).toNat

end

end A269397.P2828846039906179911

/-! ## A269397.P16293078873397358473

`A269402(A267111(n+1)%A166386(n+1))`
-/

namespace A269397.P16293078873397358473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269402 (Int.tmod (A267111 (n + 1)) (A166386 (n + 1))).toNat

end

end A269397.P16293078873397358473

/-! ## A269397.P14139042349256179250

`A269398(A269398(A213718(A179016(A269398(n+1)))))`
-/

namespace A269397.P14139042349256179250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269398 (A269398 (A213718 (A179016 (A269398 (n + 1)).toNat).toNat).toNat).toNat

end

end A269397.P14139042349256179250

/-!
# A269398: Permutation of natural numbers: a(1) = 1, a(A179016(1+n)) = A233271(1+a(n)), a(A213713(n)) = A269390(a(n)), where A179016, A233271 are the infinite trunks of binary beanstalk and inverted binary beanstalk and A213713, A269390 are their complements.

The programs for A269398, there is no canonical definition to state claims against.
-/

/-! ## A269398.P9843004537583482012

`A269392(A269401(n+1))`
-/

namespace A269398.P9843004537583482012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269392 (A269401 (n + 1)).toNat

end

end A269398.P9843004537583482012

/-! ## A269398.P1233462868817773523

`A269392(xor(record[A330369(n+1)], A110654(n)))`
-/

namespace A269398.P1233462868817773523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269392 (Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A110654 n)).toNat

end

end A269398.P1233462868817773523

/-!
# A269399: Numbers n for which prime(n+7)-prime(n+6) is a multiple of three.

The programs for A269399, the canonical program `A269399.P17209248092647305028` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269399 has offset 1).

The definition of A269399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269399.P445434963236659680

`A270190(n+1)-6`
-/

namespace A269399.P445434963236659680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270190 (n + 1) - 6

end

end A269399.P445434963236659680

namespace A269399

/-- `A270190(n+1)-6` -/
def P445434963236659680.Spec : Prop :=
  ∀ n, P445434963236659680.a n = A269399 (n + 1)

end A269399

/-! ## A269399.P17209248092647305028

`eq[3, gcd(3, A001223(n+6))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A269399

/-- `eq[3, gcd(3, A001223(n+6))]` -/
def P17209248092647305028.Spec : Prop :=
  ∀ n, (P17209248092647305028.a n : ℤ) = A269399 (n + 1)

theorem P17209248092647305028.correct : P17209248092647305028.Spec := by
  intro n
  simp only [A269399, Nat.add_sub_cancel]

end A269399

/-! ## A269399.P16471557954090272916

`eq[3, A023519(n+1)]-6`
-/

namespace A269399.P16471557954090272916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 6

end

end A269399.P16471557954090272916

namespace A269399

/-- `eq[3, A023519(n+1)]-6` -/
def P16471557954090272916.Spec : Prop :=
  ∀ n, P16471557954090272916.a n = A269399 (n + 1)

end A269399

/-! ## A269399.P15727996560470382433

`lt[(A006094(n+6)%3)%5, 2]`
-/

namespace A269399.P15727996560470382433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A006094 (n + 6)) 3) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A269399.P15727996560470382433

namespace A269399

/-- `lt[(A006094(n+6)%3)%5, 2]` -/
def P15727996560470382433.Spec : Prop :=
  ∀ n, (P15727996560470382433.a n : ℤ) = A269399 (n + 1)

end A269399

/-! ## A269399.P15039658540363694220

`A023448(A270190(n+1))`
-/

namespace A269399.P15039658540363694220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A270190 (n + 1)).toNat

end

end A269399.P15039658540363694220

namespace A269399

/-- `A023448(A270190(n+1))` -/
def P15039658540363694220.Spec : Prop :=
  ∀ n, P15039658540363694220.a n = A269399 (n + 1)

end A269399

/-! ## A269399.P8690305743134376639

`eq[A039701(n+2), A039701(n+1)]-5`
-/

namespace A269399.P8690305743134376639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 5

end

end A269399.P8690305743134376639

namespace A269399

/-- `eq[A039701(n+2), A039701(n+1)]-5` -/
def P8690305743134376639.Spec : Prop :=
  ∀ n, P8690305743134376639.a n = A269399 (n + 1)

end A269399

/-! ## A269399.P3788558591259341980

`A000720(A258578(n+1))-6`
-/

namespace A269399.P3788558591259341980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258578 (n + 1)).toNat - 6

end

end A269399.P3788558591259341980

namespace A269399

/-- `A000720(A258578(n+1))-6` -/
def P3788558591259341980.Spec : Prop :=
  ∀ n, P3788558591259341980.a n = A269399 (n + 1)

end A269399

/-! ## A269399.P4995412361998223508

`A270194(2*A270193(n+1)+1)`
-/

namespace A269399.P4995412361998223508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270194 (2 * A270193 (n + 1) + 1).toNat

end

end A269399.P4995412361998223508

namespace A269399

/-- `A270194(2*A270193(n+1)+1)` -/
def P4995412361998223508.Spec : Prop :=
  ∀ n, P4995412361998223508.a n = A269399 (n + 1)

end A269399

/-! ## A269399.P699024406684417293

`A270194(A270193(n+1)+A270193(n+1)+1)`
-/

namespace A269399.P699024406684417293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270194 (A270193 (n + 1) + (A270193 (n + 1) + 1)).toNat

end

end A269399.P699024406684417293

namespace A269399

/-- `A270194(A270193(n+1)+A270193(n+1)+1)` -/
def P699024406684417293.Spec : Prop :=
  ∀ n, P699024406684417293.a n = A269399 (n + 1)

end A269399

/-! ## A269399.P8902058514231789988

`A270194(A270201(A270190(A270202(A270193(n+1)))))`
-/

namespace A269399.P8902058514231789988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270194 (A270201 (A270190 (A270202 (A270193 (n + 1)).toNat).toNat).toNat).toNat

end

end A269399.P8902058514231789988

namespace A269399

/-- `A270194(A270201(A270190(A270202(A270193(n+1)))))` -/
def P8902058514231789988.Spec : Prop :=
  ∀ n, P8902058514231789988.a n = A269399 (n + 1)

end A269399

