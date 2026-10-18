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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A228300: Composite squarefree numbers n such that p-d(n) divides n-d(n), where p are the prime factors of n and d(n) the number of divisors of n.

The programs for A228300, there is no canonical definition to state claims against.
-/

/-! ## A228300.P12392126487121902728

`∩[round(1/acot(5*n))+5, A229321(n+1)]`
-/

namespace A228300.P12392126487121902728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228300.P12392126487121902728

/-!
# A228304: a(n) = Sum_{k=0..n} C(n,k)^4*(-1)^k.

The programs for A228304, there is no canonical definition to state claims against.
-/

/-! ## A228304.P4528806441985047263

`A304076(A036776(n))-A163102(n)`
-/

namespace A228304.P4528806441985047263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304076 (A036776 n).toNat - A163102 n

end

end A228304.P4528806441985047263

/-!
# A228305: a(1) = 3; for n >= 1, a(2*n) = 2^(n+1), a(2*n+1) = 5*2^(n-1).

The programs for A228305, the canonical program `A228305.P11064539550250345772` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228305 has offset 1).

The definition of A228305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228305.P11064539550250345772

`2*a(n-2)` with `a(0)=3, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228305

/-- `2*a(n-2)` -/
def P11064539550250345772.Spec : Prop :=
  ∀ n, (P11064539550250345772.a n : ℤ) = A228305 (n + 1)

theorem P11064539550250345772.correct : P11064539550250345772.Spec := by
  intro n
  simp only [A228305, Nat.add_sub_cancel]

end A228305

/-! ## A228305.P7451079112968456506

`ceil((9-(-1)^(n+1))*2^(floor((n+1)/2)-2))`
-/

namespace A228305.P7451079112968456506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 - (-1) ^ (n + 1) : ℚ) * (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ - 2 : ℤ)⌉

end

end A228305.P7451079112968456506

namespace A228305

/-- `ceil((9-(-1)^(n+1))*2^(floor((n+1)/2)-2))` -/
def P7451079112968456506.Spec : Prop :=
  ∀ n, P7451079112968456506.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P7042470280765584787

`a(n-2)+a(n-2)` with `a(0)=3, a(1)=4, a(2)=5`
-/

namespace A228305.P7042470280765584787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 5] fun n a =>
  a (n - 2) + a (n - 2)

end

end A228305.P7042470280765584787

namespace A228305

/-- `a(n-2)+a(n-2)` -/
def P7042470280765584787.Spec : Prop :=
  ∀ n, (P7042470280765584787.a n : ℤ) = A228305 (n + 1)

theorem P7042470280765584787.correct : P7042470280765584787.Spec := by
  intro n
  simp only [A228305, Nat.add_sub_cancel, A228305.P7042470280765584787.a, A228305.P11064539550250345772.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A228305

/-! ## A228305.P17768526479960288831

`a(n-2)/(1-1/2)` with `a(0)=3, a(1)=4, a(2)=5`
-/

namespace A228305.P17768526479960288831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4, 5] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A228305.P17768526479960288831

namespace A228305

/-- `a(n-2)/(1-1/2)` -/
def P17768526479960288831.Spec : Prop :=
  ∀ n, P17768526479960288831.a n = (A228305 (n + 1) : ℚ)

end A228305

/-! ## A228305.P11680726087892116694

`a(n-2)-(char[2]-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A228305.P11680726087892116694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A228305.P11680726087892116694

namespace A228305

/-- `a(n-2)-(char[2]-a(n-2))` -/
def P11680726087892116694.Spec : Prop :=
  ∀ n, P11680726087892116694.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P8625910713289751482

`A074323(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A228305.P8625910713289751482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A074323 (n - 1) + a (n - 1)

end

end A228305.P8625910713289751482

namespace A228305

/-- `A074323(n-1)+a(n-1)` -/
def P8625910713289751482.Spec : Prop :=
  ∀ n, P8625910713289751482.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P2852162233631746206

`A029747(A133223(n+2))`
-/

namespace A228305.P2852162233631746206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A133223 (n + 2)).toNat

end

end A228305.P2852162233631746206

namespace A228305

/-- `A029747(A133223(n+2))` -/
def P2852162233631746206.Spec : Prop :=
  ∀ n, P2852162233631746206.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P17712997728725195078

`A162255(n+1)+A137206(n)`
-/

namespace A228305.P17712997728725195078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162255 (n + 1) + A137206 n

end

end A228305.P17712997728725195078

namespace A228305

/-- `A162255(n+1)+A137206(n)` -/
def P17712997728725195078.Spec : Prop :=
  ∀ n, P17712997728725195078.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P3881739223356458476

`A094958(n+2)+A000007(n)`
-/

namespace A228305.P3881739223356458476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 2) + A000007 n

end

end A228305.P3881739223356458476

namespace A228305

/-- `A094958(n+2)+A000007(n)` -/
def P3881739223356458476.Spec : Prop :=
  ∀ n, P3881739223356458476.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P655097227102718304

`A137206(n)+A074323(n+2)`
-/

namespace A228305.P655097227102718304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 n + A074323 (n + 2)

end

end A228305.P655097227102718304

namespace A228305

/-- `A137206(n)+A074323(n+2)` -/
def P655097227102718304.Spec : Prop :=
  ∀ n, P655097227102718304.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P18389465076275277713

`A164073(n+2)+A137206(n)`
-/

namespace A228305.P18389465076275277713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 2) + A137206 n

end

end A228305.P18389465076275277713

namespace A228305

/-- `A164073(n+2)+A137206(n)` -/
def P18389465076275277713.Spec : Prop :=
  ∀ n, P18389465076275277713.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P12784365838872652893

`A164090(n+1)+A158780(n+1)`
-/

namespace A228305.P12784365838872652893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A158780 (n + 1)

end

end A228305.P12784365838872652893

namespace A228305

/-- `A164090(n+1)+A158780(n+1)` -/
def P12784365838872652893.Spec : Prop :=
  ∀ n, P12784365838872652893.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P2557098651265271681

`A158780(n+1)+A029744(n+2)`
-/

namespace A228305.P2557098651265271681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1) + A029744 (n + 2)

end

end A228305.P2557098651265271681

namespace A228305

/-- `A158780(n+1)+A029744(n+2)` -/
def P2557098651265271681.Spec : Prop :=
  ∀ n, P2557098651265271681.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P14431195814327561198

`A076736(n+3)+A016116(n+2)`
-/

namespace A228305.P14431195814327561198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 3) + A016116 (n + 2)

end

end A228305.P14431195814327561198

namespace A228305

/-- `A076736(n+3)+A016116(n+2)` -/
def P14431195814327561198.Spec : Prop :=
  ∀ n, P14431195814327561198.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P1219089495156482759

`A094958(n+2)+and(1, A028708(n))`
-/

namespace A228305.P1219089495156482759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 2) + Int.land 1 (A028708 n)

end

end A228305.P1219089495156482759

namespace A228305

/-- `A094958(n+2)+and(1, A028708(n))` -/
def P1219089495156482759.Spec : Prop :=
  ∀ n, P1219089495156482759.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P1631841732508745560

`A029744(n+2)+Δ[A029744(n+1)]`
-/

namespace A228305.P1631841732508745560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) + (f1 (n + 1) - f1 n)

end

end A228305.P1631841732508745560

namespace A228305

/-- `A029744(n+2)+Δ[A029744(n+1)]` -/
def P1631841732508745560.Spec : Prop :=
  ∀ n, P1631841732508745560.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P4964543564940435496

`A094958(n+2)+2-A040001(2*n)`
-/

namespace A228305.P4964543564940435496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 2) + (2 - A040001 (2 * n))

end

end A228305.P4964543564940435496

namespace A228305

/-- `A094958(n+2)+2-A040001(2*n)` -/
def P4964543564940435496.Spec : Prop :=
  ∀ n, P4964543564940435496.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P248727380879482213

`∑[A158780(n+1)+Δ[A158780(n)]]+1`
-/

namespace A228305.P248727380879482213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A228305.P248727380879482213

namespace A228305

/-- `∑[A158780(n+1)+Δ[A158780(n)]]+1` -/
def P248727380879482213.Spec : Prop :=
  ∀ n, P248727380879482213.a n = A228305 (n + 1)

end A228305

/-! ## A228305.P3950950257806532568

`A016116(A014681(n))+A016116(n+2)`
-/

namespace A228305.P3950950257806532568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A014681 n).toNat + A016116 (n + 2)

end

end A228305.P3950950257806532568

namespace A228305

/-- `A016116(A014681(n))+A016116(n+2)` -/
def P3950950257806532568.Spec : Prop :=
  ∀ n, P3950950257806532568.a n = A228305 (n + 1)

end A228305

/-!
# A228306: The Wiener index of the Kneser graph K(n,2) (n>=5).

The programs for A228306, the canonical program `A228306.P10242106187632163400` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228306 has offset 5).

The definition of A228306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228306.P10242106187632163400

`1/8*(n+5)*(n+4)*(n+3)*(n+10)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228306

/-- `1/8*(n+5)*(n+4)*(n+3)*(n+10)` -/
def P10242106187632163400.Spec : Prop :=
  ∀ n, P10242106187632163400.a n = (A228306 (n + 5) : ℚ)

end A228306

/-! ## A228306.P4512634462913718290

`Δ[3*A005583(n+2)]`
-/

namespace A228306.P4512634462913718290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005583 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228306.P4512634462913718290

namespace A228306

/-- `Δ[3*A005583(n+2)]` -/
def P4512634462913718290.Spec : Prop :=
  ∀ n, P4512634462913718290.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P14661895794211503421

`Δ[Δ[3*A005584(n+1)]]`
-/

namespace A228306.P14661895794211503421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005584 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228306.P14661895794211503421

namespace A228306

/-- `Δ[Δ[3*A005584(n+1)]]` -/
def P14661895794211503421.Spec : Prop :=
  ∀ n, P14661895794211503421.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P17937881559297991382

`A239568(n+5)`
-/

namespace A228306.P17937881559297991382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239568 (n + 5)

end

end A228306.P17937881559297991382

namespace A228306

/-- `A239568(n+5)` -/
def P17937881559297991382.Spec : Prop :=
  ∀ n, P17937881559297991382.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P17332461363549257951

`A211899(n+5)-1`
-/

namespace A228306.P17332461363549257951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211899 (n + 5) - 1

end

end A228306.P17332461363549257951

namespace A228306

/-- `A211899(n+5)-1` -/
def P17332461363549257951.Spec : Prop :=
  ∀ n, P17332461363549257951.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P9162532994119116071

`A211924(n+5)-(n+5)`
-/

namespace A228306.P9162532994119116071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211924 (n + 5) - (n + 5 : ℤ)

end

end A228306.P9162532994119116071

namespace A228306

/-- `A211924(n+5)-(n+5)` -/
def P9162532994119116071.Spec : Prop :=
  ∀ n, P9162532994119116071.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P1865719820549183413

`A000217(A027379(n+3))-A000217(n+2)`
-/

namespace A228306.P1865719820549183413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A027379 (n + 3)).toNat - A000217 (n + 2)

end

end A228306.P1865719820549183413

namespace A228306

/-- `A000217(A027379(n+3))-A000217(n+2)` -/
def P1865719820549183413.Spec : Prop :=
  ∀ n, P1865719820549183413.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P954720572110462342

`A000217(A055998(n+3))-A000217(n+2)`
-/

namespace A228306.P954720572110462342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A055998 (n + 3)).toNat - A000217 (n + 2)

end

end A228306.P954720572110462342

namespace A228306

/-- `A000217(A055998(n+3))-A000217(n+2)` -/
def P954720572110462342.Spec : Prop :=
  ∀ n, P954720572110462342.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P5422650291059566459

`A166136(∑[n+5]+5)+3*(n+1)`
-/

namespace A228306.P5422650291059566459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (∑ j ∈ Finset.range (n + 1), f1 j + 5) + (3 * (n + 1) : ℤ)

end

end A228306.P5422650291059566459

namespace A228306

/-- `A166136(∑[n+5]+5)+3*(n+1)` -/
def P5422650291059566459.Spec : Prop :=
  ∀ n, P5422650291059566459.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P6118595873003395540

`A167499(∑[n+5]+5)+3*n+4`
-/

namespace A228306.P6118595873003395540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (∑ j ∈ Finset.range (n + 1), f1 j + 5) + (3 * n + 4 : ℤ)

end

end A228306.P6118595873003395540

namespace A228306

/-- `A167499(∑[n+5]+5)+3*n+4` -/
def P6118595873003395540.Spec : Prop :=
  ∀ n, P6118595873003395540.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P12563073509274590303

`A000096(A046691(n+3))-∑[n+2]`
-/

namespace A228306.P12563073509274590303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A046691 (n + 3)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A228306.P12563073509274590303

namespace A228306

/-- `A000096(A046691(n+3))-∑[n+2]` -/
def P12563073509274590303.Spec : Prop :=
  ∀ n, P12563073509274590303.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P4264341631717962865

`A055998(∑[n+5]+5)-A055998(n)`
-/

namespace A228306.P4264341631717962865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (∑ j ∈ Finset.range (n + 1), f1 j + 5) - A055998 n

end

end A228306.P4264341631717962865

namespace A228306

/-- `A055998(∑[n+5]+5)-A055998(n)` -/
def P4264341631717962865.Spec : Prop :=
  ∀ n, P4264341631717962865.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P3762211745279145283

`A000096(Δ[A023545(n+1)])-∑[n+2]`
-/

namespace A228306.P3762211745279145283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (f1 (n + 1) - f1 n).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A228306.P3762211745279145283

namespace A228306

/-- `A000096(Δ[A023545(n+1)])-∑[n+2]` -/
def P3762211745279145283.Spec : Prop :=
  ∀ n, P3762211745279145283.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P6897903976345291923

`A167614(∑[n+5]+6)-A167614(n+1)`
-/

namespace A228306.P6897903976345291923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (∑ j ∈ Finset.range (n + 1), f1 j + 6) - A167614 (n + 1)

end

end A228306.P6897903976345291923

namespace A228306

/-- `A167614(∑[n+5]+6)-A167614(n+1)` -/
def P6897903976345291923.Spec : Prop :=
  ∀ n, P6897903976345291923.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P14878057571073271007

`A060577(A046691(n+3))-A046691(n)`
-/

namespace A228306.P14878057571073271007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060577 (A046691 (n + 3)).toNat - A046691 n

end

end A228306.P14878057571073271007

namespace A228306

/-- `A060577(A046691(n+3))-A046691(n)` -/
def P14878057571073271007.Spec : Prop :=
  ∀ n, P14878057571073271007.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P2722142274441076675

`A034856(A046691(n+3))-A034856(n+1)`
-/

namespace A228306.P2722142274441076675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A046691 (n + 3)).toNat - A034856 (n + 1)

end

end A228306.P2722142274441076675

namespace A228306

/-- `A034856(A046691(n+3))-A034856(n+1)` -/
def P2722142274441076675.Spec : Prop :=
  ∀ n, P2722142274441076675.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P7368301095839064640

`A167487(A046691(n+3))-A167487(n+1)`
-/

namespace A228306.P7368301095839064640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167487 (A046691 (n + 3)).toNat - A167487 (n + 1)

end

end A228306.P7368301095839064640

namespace A228306

/-- `A167487(A046691(n+3))-A167487(n+1)` -/
def P7368301095839064640.Spec : Prop :=
  ∀ n, P7368301095839064640.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P500719977929288387

`A000124(A055998(n+3))-A000124(n+2)`
-/

namespace A228306.P500719977929288387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A055998 (n + 3)).toNat - A000124 (n + 2)

end

end A228306.P500719977929288387

namespace A228306

/-- `A000124(A055998(n+3))-A000124(n+2)` -/
def P500719977929288387.Spec : Prop :=
  ∀ n, P500719977929288387.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P2567799623983557630

`A173036(A027379(n+3))-A173036(n+2)`
-/

namespace A228306.P2567799623983557630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173036 (A027379 (n + 3)).toNat - A173036 (n + 2)

end

end A228306.P2567799623983557630

namespace A228306

/-- `A173036(A027379(n+3))-A173036(n+2)` -/
def P2567799623983557630.Spec : Prop :=
  ∀ n, P2567799623983557630.a n = A228306 (n + 5)

end A228306

/-! ## A228306.P13517549572015456185

`A173036(A055998(n+3))-A173036(n+2)`
-/

namespace A228306.P13517549572015456185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173036 (A055998 (n + 3)).toNat - A173036 (n + 2)

end

end A228306.P13517549572015456185

namespace A228306

/-- `A173036(A055998(n+3))-A173036(n+2)` -/
def P13517549572015456185.Spec : Prop :=
  ∀ n, P13517549572015456185.a n = A228306 (n + 5)

end A228306

/-!
# A228307: The hyper-Wiener index of the Kneser graph K(n,2) (n>=5).

The programs for A228307, the canonical program `A228307.P2482203565318172247` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228307 has offset 5).

The definition of A228307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228307.P2482203565318172247

`1/8*(n+5)*(n+4)*(n+3)*(n+14)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228307

/-- `1/8*(n+5)*(n+4)*(n+3)*(n+14)` -/
def P2482203565318172247.Spec : Prop :=
  ∀ n, P2482203565318172247.a n = (A228307 (n + 5) : ℚ)

end A228307

/-! ## A228307.P4162579571063111920

`Δ[3*A000574(n+4)]`
-/

namespace A228307.P4162579571063111920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000574 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228307.P4162579571063111920

namespace A228307

/-- `Δ[3*A000574(n+4)]` -/
def P4162579571063111920.Spec : Prop :=
  ∀ n, P4162579571063111920.a n = A228307 (n + 5)

end A228307

/-! ## A228307.P3403470836638020507

`A130809(n+5)+A001296(n+3)`
-/

namespace A228307.P3403470836638020507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130809 (n + 5) + A001296 (n + 3)

end

end A228307.P3403470836638020507

namespace A228307

/-- `A130809(n+5)+A001296(n+3)` -/
def P3403470836638020507.Spec : Prop :=
  ∀ n, P3403470836638020507.a n = A228307 (n + 5)

end A228307

/-! ## A228307.P6973830924761506135

`C(A052905(n+3), 2)-A253145(2*(n+2))`
-/

namespace A228307.P6973830924761506135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A052905 (n + 3)).toNat 2 : ℤ) - A253145 (2 * (n + 2))

end

end A228307.P6973830924761506135

namespace A228307

/-- `C(A052905(n+3), 2)-A253145(2*(n+2))` -/
def P6973830924761506135.Spec : Prop :=
  ∀ n, P6973830924761506135.a n = A228307 (n + 5)

end A228307

/-! ## A228307.P10568475868567674588

`A105938(n+2)-A000217(A000217(n+3))`
-/

namespace A228307.P10568475868567674588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105938 (n + 2) - A000217 (A000217 (n + 3)).toNat

end

end A228307.P10568475868567674588

namespace A228307

/-- `A105938(n+2)-A000217(A000217(n+3))` -/
def P10568475868567674588.Spec : Prop :=
  ∀ n, P10568475868567674588.a n = A228307 (n + 5)

end A228307

/-! ## A228307.P4293417622948190893

`A000217(A055999(n+3))-A000217(A005408(n+2))`
-/

namespace A228307.P4293417622948190893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A055999 (n + 3)).toNat - A000217 (A005408 (n + 2)).toNat

end

end A228307.P4293417622948190893

namespace A228307

/-- `A000217(A055999(n+3))-A000217(A005408(n+2))` -/
def P4293417622948190893.Spec : Prop :=
  ∀ n, P4293417622948190893.a n = A228307 (n + 5)

end A228307

/-! ## A228307.P16365316199412172316

`A000217(A055999(n+3))-A000217(A020710(2*n))`
-/

namespace A228307.P16365316199412172316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A055999 (n + 3)).toNat - A000217 (A020710 (2 * n)).toNat

end

end A228307.P16365316199412172316

namespace A228307

/-- `A000217(A055999(n+3))-A000217(A020710(2*n))` -/
def P16365316199412172316.Spec : Prop :=
  ∀ n, P16365316199412172316.a n = A228307 (n + 5)

end A228307

/-! ## A228307.P14136617490699096159

`A080422(n+2)/3^n`
-/

namespace A228307.P14136617490699096159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080422 (n + 2) : ℚ) / (3 ^ n : ℚ)

end

end A228307.P14136617490699096159

namespace A228307

/-- `A080422(n+2)/3^n` -/
def P14136617490699096159.Spec : Prop :=
  ∀ n, P14136617490699096159.a n = (A228307 (n + 5) : ℚ)

end A228307

/-! ## A228307.P13633466981471976562

`A162254(n+3)+A000096(A000096(n+3))`
-/

namespace A228307.P13633466981471976562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 3) + A000096 (A000096 (n + 3)).toNat

end

end A228307.P13633466981471976562

namespace A228307

/-- `A162254(n+3)+A000096(A000096(n+3))` -/
def P13633466981471976562.Spec : Prop :=
  ∀ n, P13633466981471976562.a n = A228307 (n + 5)

end A228307

/-!
# A228308: Triangle read by rows: T(n,k) (n>=2, 1<=k<=n-1) is the number of unordered pairs of vertices at distances k in the odd graph O_n.

The programs for A228308, there is no canonical definition to state claims against.
-/

/-! ## A228308.P7008646147708969466

`A119319(A023217(n+1))`
-/

namespace A228308.P7008646147708969466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119319 (A023217 (n + 1)).toNat

end

end A228308.P7008646147708969466

/-!
# A228310: The hyper-Wiener index of the hypercube graph Q(n) (n>=2).

The programs for A228310, the canonical program `A228310.P17941938714213719995` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228310 has offset 2).

The definition of A228310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228310.P5438557216382254126

`∏[4*ratio[∑[n+2]]]`
-/

namespace A228310.P5438557216382254126
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228310.P5438557216382254126

namespace A228310

/-- `∏[4*ratio[∑[n+2]]]` -/
def P5438557216382254126.Spec : Prop :=
  ∀ n, P5438557216382254126.a n = (A228310 (n + 2) : ℚ)

end A228310

/-! ## A228310.P17941938714213719995

`((n+3)²-xor(n, -1))*4^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228310

/-- `((n+3)²-xor(n, -1))*4^n` -/
def P17941938714213719995.Spec : Prop :=
  ∀ n, P17941938714213719995.a n = A228310 (n + 2)

theorem P17941938714213719995.correct : P17941938714213719995.Spec := by
  intro n
  simp only [A228310, Nat.add_sub_cancel]

end A228310

/-! ## A228310.P1698555961155402943

`(n+2)*A079028(n+1)`
-/

namespace A228310.P1698555961155402943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A079028 (n + 1)

end

end A228310.P1698555961155402943

namespace A228310

/-- `(n+2)*A079028(n+1)` -/
def P1698555961155402943.Spec : Prop :=
  ∀ n, P1698555961155402943.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P7212490102894070627

`2*4^n*Δ[A005586(n)]`
-/

namespace A228310.P7212490102894070627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A228310.P7212490102894070627

namespace A228310

/-- `2*4^n*Δ[A005586(n)]` -/
def P7212490102894070627.Spec : Prop :=
  ∀ n, P7212490102894070627.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P8497500062046648721

`(n+2)*A111297(2*(n+1))`
-/

namespace A228310.P8497500062046648721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A111297 (2 * (n + 1))

end

end A228310.P8497500062046648721

namespace A228310

/-- `(n+2)*A111297(2*(n+1))` -/
def P8497500062046648721.Spec : Prop :=
  ∀ n, P8497500062046648721.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P7972762909737143399

`A045623(2*n+1)*(n+5)`
-/

namespace A228310.P7972762909737143399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (2 * n + 1) * (n + 5 : ℤ)

end

end A228310.P7972762909737143399

namespace A228310

/-- `A045623(2*n+1)*(n+5)` -/
def P7972762909737143399.Spec : Prop :=
  ∀ n, P7972762909737143399.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P1221858518935898797

`2^(n+1)*A001793(n+2)`
-/

namespace A228310.P1221858518935898797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A001793 (n + 2)

end

end A228310.P1221858518935898797

namespace A228310

/-- `2^(n+1)*A001793(n+2)` -/
def P1221858518935898797.Spec : Prop :=
  ∀ n, P1221858518935898797.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P9794827464182140225

`2^(n-2)*A074092(n+3)`
-/

namespace A228310.P9794827464182140225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A074092 (n + 3) : ℚ)

end

end A228310.P9794827464182140225

namespace A228310

/-- `2^(n-2)*A074092(n+3)` -/
def P9794827464182140225.Spec : Prop :=
  ∀ n, P9794827464182140225.a n = (A228310 (n + 2) : ℚ)

end A228310

/-! ## A228310.P4896889184694027466

`Δ[A038845(n)]-A038845(n)`
-/

namespace A228310.P4896889184694027466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A038845 n

end

end A228310.P4896889184694027466

namespace A228310

/-- `Δ[A038845(n)]-A038845(n)` -/
def P4896889184694027466.Spec : Prop :=
  ∀ n, P4896889184694027466.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P17760848075188566057

`A000096(n+2)*A004171(n)`
-/

namespace A228310.P17760848075188566057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 2) * A004171 n

end

end A228310.P17760848075188566057

namespace A228310

/-- `A000096(n+2)*A004171(n)` -/
def P17760848075188566057.Spec : Prop :=
  ∀ n, P17760848075188566057.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P14137294785796306956

`A001792(n)*A087447(n+3)`
-/

namespace A228310.P14137294785796306956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n * A087447 (n + 3)

end

end A228310.P14137294785796306956

namespace A228310

/-- `A001792(n)*A087447(n+3)` -/
def P14137294785796306956.Spec : Prop :=
  ∀ n, P14137294785796306956.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P13319661727413405336

`A001792(n)*A129953(n+3)`
-/

namespace A228310.P13319661727413405336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n * A129953 (n + 3)

end

end A228310.P13319661727413405336

namespace A228310

/-- `A001792(n)*A129953(n+3)` -/
def P13319661727413405336.Spec : Prop :=
  ∀ n, P13319661727413405336.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P4603208898332630096

`A001792(n)*A079859(n+5)`
-/

namespace A228310.P4603208898332630096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n * A079859 (n + 5)

end

end A228310.P4603208898332630096

namespace A228310

/-- `A001792(n)*A079859(n+5)` -/
def P4603208898332630096.Spec : Prop :=
  ∀ n, P4603208898332630096.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P3313582403425282010

`A000079(n)²*A028552(n+2)`
-/

namespace A228310.P3313582403425282010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A028552 (n + 2)

end

end A228310.P3313582403425282010

namespace A228310

/-- `A000079(n)²*A028552(n+2)` -/
def P3313582403425282010.Spec : Prop :=
  ∀ n, P3313582403425282010.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P12148428196375669339

`A001793(n+2)*A011782(n+2)`
-/

namespace A228310.P12148428196375669339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 2) * A011782 (n + 2)

end

end A228310.P12148428196375669339

namespace A228310

/-- `A001793(n+2)*A011782(n+2)` -/
def P12148428196375669339.Spec : Prop :=
  ∀ n, P12148428196375669339.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P2438083898959484345

`A038845(n+1)-2*A038845(n)`
-/

namespace A228310.P2438083898959484345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038845 (n + 1) - 2 * A038845 n

end

end A228310.P2438083898959484345

namespace A228310

/-- `A038845(n+1)-2*A038845(n)` -/
def P2438083898959484345.Spec : Prop :=
  ∀ n, P2438083898959484345.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P2410888441776296948

`A000079(2*n)*A028552(n+2)`
-/

namespace A228310.P2410888441776296948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A028552 (n + 2)

end

end A228310.P2410888441776296948

namespace A228310

/-- `A000079(2*n)*A028552(n+2)` -/
def P2410888441776296948.Spec : Prop :=
  ∀ n, P2410888441776296948.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P4922258228202959278

`2*A196410(n+5)*A001792(n)`
-/

namespace A228310.P4922258228202959278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196410 (n + 5) * A001792 n

end

end A228310.P4922258228202959278

namespace A228310

/-- `2*A196410(n+5)*A001792(n)` -/
def P4922258228202959278.Spec : Prop :=
  ∀ n, P4922258228202959278.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P15554346542695293585

`A002697(n+1)+A001792(n+1)²`
-/

namespace A228310.P15554346542695293585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) + A001792 (n + 1) ^ 2

end

end A228310.P15554346542695293585

namespace A228310

/-- `A002697(n+1)+A001792(n+1)²` -/
def P15554346542695293585.Spec : Prop :=
  ∀ n, P15554346542695293585.a n = A228310 (n + 2)

end A228310

/-! ## A228310.P8632071620715453506

`A001792(2*n)+A001792(n+1)²`
-/

namespace A228310.P8632071620715453506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n) + A001792 (n + 1) ^ 2

end

end A228310.P8632071620715453506

namespace A228310

/-- `A001792(2*n)+A001792(n+1)²` -/
def P8632071620715453506.Spec : Prop :=
  ∀ n, P8632071620715453506.a n = A228310 (n + 2)

end A228310

/-!
# A228311: Numbers k such that the sum of digits of k! is itself a factorial.

The programs for A228311, there is no canonical definition to state claims against.
-/

/-! ## A228311.P3792902716783178384

`A001043(A131382(10*a(n-2)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A228311.P3792902716783178384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  A001043 (A131382 (10 * a (n - 2)).toNat).toNat

end

end A228311.P3792902716783178384

/-!
# A228312: Triangle read by rows: T(m,n) (1<=n<=m) is the hyper-Wiener index of the complete bipartite graph K(m,n).

The programs for A228312, the canonical program `A228312.P16144185583148908062` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228312 has offset 1).

The definition of A228312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228312.P16212576735693770970

`A367964(n)+A182491(n+1)`
-/

namespace A228312.P16212576735693770970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 n + A182491 (n + 1)

end

end A228312.P16212576735693770970

namespace A228312

/-- `A367964(n)+A182491(n+1)` -/
def P16212576735693770970.Spec : Prop :=
  ∀ n, P16212576735693770970.a n = A228312 (n + 1)

end A228312

/-! ## A228312.P16144185583148908062

`A214604(n+1)-A141418(n+1)+n`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A228312

/-- `A214604(n+1)-A141418(n+1)+n` -/
def P16144185583148908062.Spec : Prop :=
  ∀ n, P16144185583148908062.a n = A228312 (n + 1)

theorem P16144185583148908062.correct : P16144185583148908062.Spec := by
  intro n
  simp only [A228312, Nat.add_sub_cancel]

end A228312

/-! ## A228312.P17011200848586295568

`A069011(n)+A034856(A094727(n+1))`
-/

namespace A228312.P17011200848586295568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + A034856 (A094727 (n + 1)).toNat

end

end A228312.P17011200848586295568

namespace A228312

/-- `A069011(n)+A034856(A094727(n+1))` -/
def P17011200848586295568.Spec : Prop :=
  ∀ n, P17011200848586295568.a n = A228312 (n + 1)

end A228312

/-! ## A228312.P4826888605315468705

`A005449(A094727(n+1))-A244418(n+1)`
-/

namespace A228312.P4826888605315468705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A094727 (n + 1)).toNat - A244418 (n + 1)

end

end A228312.P4826888605315468705

namespace A228312

/-- `A005449(A094727(n+1))-A244418(n+1)` -/
def P4826888605315468705.Spec : Prop :=
  ∀ n, P4826888605315468705.a n = A228312 (n + 1)

end A228312

/-! ## A228312.P5640086559665081689

`A115067(A108872(n+1))-A144562(n+1)`
-/

namespace A228312.P5640086559665081689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (A108872 (n + 1)).toNat - A144562 (n + 1)

end

end A228312.P5640086559665081689

namespace A228312

/-- `A115067(A108872(n+1))-A144562(n+1)` -/
def P5640086559665081689.Spec : Prop :=
  ∀ n, P5640086559665081689.a n = A228312 (n + 1)

end A228312

/-! ## A228312.P4392337802488359897

`A070216(n+1)+A245300(n)-A002260(n+1)`
-/

namespace A228312.P4392337802488359897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) + (A245300 n - A002260 (n + 1))

end

end A228312.P4392337802488359897

namespace A228312

/-- `A070216(n+1)+A245300(n)-A002260(n+1)` -/
def P4392337802488359897.Spec : Prop :=
  ∀ n, P4392337802488359897.a n = A228312 (n + 1)

end A228312

/-! ## A228312.P7815695744401975161

`A214661(n+1)+A002262(n)+A000096(A025581(n))`
-/

namespace A228312.P7815695744401975161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214661 (n + 1) + (A002262 n + A000096 (A025581 n).toNat)

end

end A228312.P7815695744401975161

namespace A228312

/-- `A214661(n+1)+A002262(n)+A000096(A025581(n))` -/
def P7815695744401975161.Spec : Prop :=
  ∀ n, P7815695744401975161.a n = A228312 (n + 1)

end A228312

/-! ## A228312.P13810412247766480857

`A214661(n+1)+A003056(n)+A000217(A025581(n))`
-/

namespace A228312.P13810412247766480857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214661 (n + 1) + (A003056 n + A000217 (A025581 n).toNat)

end

end A228312.P13810412247766480857

namespace A228312

/-- `A214661(n+1)+A003056(n)+A000217(A025581(n))` -/
def P13810412247766480857.Spec : Prop :=
  ∀ n, P13810412247766480857.a n = A228312 (n + 1)

end A228312

/-!
# A228315: Triangular array read by rows: T(n,k) is the number of rooted labeled simple graphs on {1,2,...,n} such that the root is in a component of size k; n>=1, 1<=k<=n.

The programs for A228315, there is no canonical definition to state claims against.
-/

/-! ## A228315.P9188480388438045491

`A002260(n+1)*A223894(n+1)`
-/

namespace A228315.P9188480388438045491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A223894 (n + 1)

end

end A228315.P9188480388438045491

/-! ## A228315.P7877996326367867379

`(A002262(n)+1)*A223894(n+1)`
-/

namespace A228315.P7877996326367867379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A223894 (n + 1)

end

end A228315.P7877996326367867379

/-! ## A228315.P9883350748357657037

`A097285(A005408(n))*A223894(n+1)`
-/

namespace A228315.P9883350748357657037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A005408 n).toNat * A223894 (n + 1)

end

end A228315.P9883350748357657037

/-! ## A228315.P1870638361142135614

`A004736(A038722(n+1))*A223894(n+1)`
-/

namespace A228315.P1870638361142135614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A223894 (n + 1)

end

end A228315.P1870638361142135614

/-! ## A228315.P5544527625159900526

`A000194(A133819(n+1))*A223894(n+1)`
-/

namespace A228315.P5544527625159900526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A133819 (n + 1)).toNat * A223894 (n + 1)

end

end A228315.P5544527625159900526

/-! ## A228315.P3063552406337584073

`A000005(A059268(n))*A223894(n+1)`
-/

namespace A228315.P3063552406337584073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A223894 (n + 1)

end

end A228315.P3063552406337584073

/-! ## A228315.P11764649954775922089

`A001511(A018900(n+1))*A223894(n+1)`
-/

namespace A228315.P11764649954775922089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A018900 (n + 1)).toNat * A223894 (n + 1)

end

end A228315.P11764649954775922089

/-!
# A228316: The hyper-Wiener index of the Cartesian product of the cycles C(n) and C(n) (a Torus Grid Graph).

The programs for A228316, there is no canonical definition to state claims against.
-/

/-! ## A228316.P9307140660571563888

`A228314(∑[n+1])`
-/

namespace A228316.P9307140660571563888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228314 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228316.P9307140660571563888

/-! ## A228316.P1416863451439477515

`record[A228314(∑[char[∑[n]]]²-n)]`
-/

namespace A228316.P1416863451439477515
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228314 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228316.P1416863451439477515

/-! ## A228316.P1331796214555421044

`lcm(2, A228314(record[A049777(n+1)]))`
-/

namespace A228316.P1331796214555421044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A228314 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A228316.P1331796214555421044

/-! ## A228316.P4937997375113493430

`record[A228314(n+1)/A101038(n)]`
-/

namespace A228316.P4937997375113493430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228314 (n + 1) : ℚ) / (A101038 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228316.P4937997375113493430

/-! ## A228316.P12758517254383788357

`record[A228314(n+1)/A121441(n)]`
-/

namespace A228316.P12758517254383788357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228314 (n + 1) : ℚ) / (A121441 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228316.P12758517254383788357

/-!
# A228317: The hyper-Wiener index of the triangular graph T(n) (n >= 1).

The programs for A228317, the canonical program `A228317.P16201795372386176391` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228317 has offset 1).

The definition of A228317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228317.P16201795372386176391

`(n+1)*n*(n-1)*(3*(n+1)-5)/8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228317

/-- `(n+1)*n*(n-1)*(3*(n+1)-5)/8` -/
def P16201795372386176391.Spec : Prop :=
  ∀ n, P16201795372386176391.a n = (A228317 (n + 1) : ℚ)

end A228317

/-! ## A228317.P1466530511012845739

`C(n², 2)-C(∑[n], 2)`
-/

namespace A228317.P1466530511012845739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A228317.P1466530511012845739

namespace A228317

/-- `C(n², 2)-C(∑[n], 2)` -/
def P1466530511012845739.Spec : Prop :=
  ∀ n, P1466530511012845739.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P4378822044263675496

`∑[3*(n-1)*C(n, 2)]`
-/

namespace A228317.P4378822044263675496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n : ℤ) - 1) * (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228317.P4378822044263675496

namespace A228317

/-- `∑[3*(n-1)*C(n, 2)]` -/
def P4378822044263675496.Spec : Prop :=
  ∀ n, P4378822044263675496.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P5052362364363099950

`∑[A270205(n)]/2`
-/

namespace A228317.P5052362364363099950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A228317.P5052362364363099950

namespace A228317

/-- `∑[A270205(n)]/2` -/
def P5052362364363099950.Spec : Prop :=
  ∀ n, P5052362364363099950.a n = (A228317 (n + 1) : ℚ)

end A228317

/-! ## A228317.P384814038284403843

`∑[(n-A000567(n))*(1-n)]/2`
-/

namespace A228317.P384814038284403843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000567 n) * (1 - (n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A228317.P384814038284403843

namespace A228317

/-- `∑[(n-A000567(n))*(1-n)]/2` -/
def P384814038284403843.Spec : Prop :=
  ∀ n, P384814038284403843.a n = (A228317 (n + 1) : ℚ)

end A228317

/-! ## A228317.P13333167773662485761

`A050534(n)+A006011(n)`
-/

namespace A228317.P13333167773662485761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + A006011 n

end

end A228317.P13333167773662485761

namespace A228317

/-- `A050534(n)+A006011(n)` -/
def P13333167773662485761.Spec : Prop :=
  ∀ n, P13333167773662485761.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P17852197540509408642

`A027441(n)-A002817(n)`
-/

namespace A228317.P17852197540509408642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n - A002817 n

end

end A228317.P17852197540509408642

namespace A228317

/-- `A027441(n)-A002817(n)` -/
def P17852197540509408642.Spec : Prop :=
  ∀ n, P17852197540509408642.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P5893822532714772323

`A100855(n)-A037255(n)`
-/

namespace A228317.P5893822532714772323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n - A037255 n

end

end A228317.P5893822532714772323

namespace A228317

/-- `A100855(n)-A037255(n)` -/
def P5893822532714772323.Spec : Prop :=
  ∀ n, P5893822532714772323.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P10272464904942892460

`A179095(n)-A014205(n)`
-/

namespace A228317.P10272464904942892460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179095 n - A014205 n

end

end A228317.P10272464904942892460

namespace A228317

/-- `A179095(n)-A014205(n)` -/
def P10272464904942892460.Spec : Prop :=
  ∀ n, P10272464904942892460.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P5032048488653460470

`A101375(n)-A101357(n)`
-/

namespace A228317.P5032048488653460470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101375 n - A101357 n

end

end A228317.P5032048488653460470

namespace A228317

/-- `A101375(n)-A101357(n)` -/
def P5032048488653460470.Spec : Prop :=
  ∀ n, P5032048488653460470.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P3247318789466999460

`A212523(n)-A090809(n)`
-/

namespace A228317.P3247318789466999460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n - A090809 n

end

end A228317.P3247318789466999460

namespace A228317

/-- `A212523(n)-A090809(n)` -/
def P3247318789466999460.Spec : Prop :=
  ∀ n, P3247318789466999460.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P9779421095498555091

`∑[A007586(n)]-A007584(n)`
-/

namespace A228317.P9779421095498555091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007584 n

end

end A228317.P9779421095498555091

namespace A228317

/-- `∑[A007586(n)]-A007584(n)` -/
def P9779421095498555091.Spec : Prop :=
  ∀ n, P9779421095498555091.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P7939322724564084221

`A051798(n)-A213837(n+1)`
-/

namespace A228317.P7939322724564084221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051798 n - A213837 (n + 1)

end

end A228317.P7939322724564084221

namespace A228317

/-- `A051798(n)-A213837(n+1)` -/
def P7939322724564084221.Spec : Prop :=
  ∀ n, P7939322724564084221.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P6425426218172596809

`A101374(n)-A176145(n+3)`
-/

namespace A228317.P6425426218172596809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n - A176145 (n + 3)

end

end A228317.P6425426218172596809

namespace A228317

/-- `A101374(n)-A176145(n+3)` -/
def P6425426218172596809.Spec : Prop :=
  ∀ n, P6425426218172596809.a n = A228317 (n + 1)

end A228317

/-! ## A228317.P13391773958419879628

`A086602(n)+(n-A000217(n))²`
-/

namespace A228317.P13391773958419879628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n + ((n : ℤ) - A000217 n) ^ 2

end

end A228317.P13391773958419879628

namespace A228317

/-- `A086602(n)+(n-A000217(n))²` -/
def P13391773958419879628.Spec : Prop :=
  ∀ n, P13391773958419879628.a n = A228317 (n + 1)

end A228317

/-!
# A228318: The Wiener index of the graph obtained by applying Mycielski's construction to the star graph K(1,n).

The programs for A228318, the canonical program `A228318.P17680154182974769730` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228318 has offset 1).

The definition of A228318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228318.P17680154182974769730

`4*(n+1)²+6*(n+1)+5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228318

/-- `4*(n+1)²+6*(n+1)+5` -/
def P17680154182974769730.Spec : Prop :=
  ∀ n, (P17680154182974769730.a n : ℤ) = A228318 (n + 1)

theorem P17680154182974769730.correct : P17680154182974769730.Spec := by
  intro n
  simp only [A228318, Nat.add_sub_cancel]

end A228318

/-! ## A228318.P104742680957088386

`∑[a(n-1)+8]` with `a(0)=15, a(1)=18`
-/

namespace A228318.P104742680957088386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 18] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228318.P104742680957088386

namespace A228318

/-- `∑[a(n-1)+8]` -/
def P104742680957088386.Spec : Prop :=
  ∀ n, (P104742680957088386.a n : ℤ) = A228318 (n + 1)

end A228318

/-! ## A228318.P5264161857255741895

`record[lcm(n+3, n+5)-n]`
-/

namespace A228318.P5264161857255741895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) (n + 5) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228318.P5264161857255741895

namespace A228318

/-- `record[lcm(n+3, n+5)-n]` -/
def P5264161857255741895.Spec : Prop :=
  ∀ n, P5264161857255741895.a n = A228318 (n + 1)

end A228318

/-! ## A228318.P9057539544335060910

`Δ[C(2*(n+2), 3)-n²]`
-/

namespace A228318.P9057539544335060910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 3 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228318.P9057539544335060910

namespace A228318

/-- `Δ[C(2*(n+2), 3)-n²]` -/
def P9057539544335060910.Spec : Prop :=
  ∀ n, P9057539544335060910.a n = A228318 (n + 1)

end A228318

/-! ## A228318.P7970543791911772152

`record[xor(1, -(n+3))²-(n+1)]`
-/

namespace A228318.P7970543791911772152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n + 3 : ℤ)) ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228318.P7970543791911772152

namespace A228318

/-- `record[xor(1, -(n+3))²-(n+1)]` -/
def P7970543791911772152.Spec : Prop :=
  ∀ n, P7970543791911772152.a n = A228318 (n + 1)

end A228318

/-! ## A228318.P5507320965778171684

`xor(1, (4*n+6)*(n+2)+2)`
-/

namespace A228318.P5507320965778171684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((4 * n + 6) * (n + 2) + 2)

end

end A228318.P5507320965778171684

namespace A228318

/-- `xor(1, (4*n+6)*(n+2)+2)` -/
def P5507320965778171684.Spec : Prop :=
  ∀ n, (P5507320965778171684.a n : ℤ) = A228318 (n + 1)

end A228318

/-! ## A228318.P10338265066166570520

`or(1, (4*n+10)*(n+1)+4)`
-/

namespace A228318.P10338265066166570520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((4 * n + 10) * (n + 1) + 4)

end

end A228318.P10338265066166570520

namespace A228318

/-- `or(1, (4*n+10)*(n+1)+4)` -/
def P10338265066166570520.Spec : Prop :=
  ∀ n, (P10338265066166570520.a n : ℤ) = A228318 (n + 1)

end A228318

/-! ## A228318.P14069104420086569398

`3/(n+1)*A050533(n+1)`
-/

namespace A228318.P14069104420086569398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A050533 (n + 1) : ℚ)

end

end A228318.P14069104420086569398

namespace A228318

/-- `3/(n+1)*A050533(n+1)` -/
def P14069104420086569398.Spec : Prop :=
  ∀ n, P14069104420086569398.a n = (A228318 (n + 1) : ℚ)

end A228318

/-! ## A228318.P7559486744831791495

`abs(2*n+1-A005843(n+2)²)`
-/

namespace A228318.P7559486744831791495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - A005843 (n + 2) ^ 2|

end

end A228318.P7559486744831791495

namespace A228318

/-- `abs(2*n+1-A005843(n+2)²)` -/
def P7559486744831791495.Spec : Prop :=
  ∀ n, P7559486744831791495.a n = A228318 (n + 1)

end A228318

/-! ## A228318.P15843333516910732901

`(Δ[(A005563(n)+1)²]+n)/(n+1)`
-/

namespace A228318.P15843333516910732901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005563 n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A228318.P15843333516910732901

namespace A228318

/-- `(Δ[(A005563(n)+1)²]+n)/(n+1)` -/
def P15843333516910732901.Spec : Prop :=
  ∀ n, P15843333516910732901.a n = (A228318 (n + 1) : ℚ)

end A228318

/-! ## A228318.P1757274197202167418

`Δ[A002492(n+1)-n²]`
-/

namespace A228318.P1757274197202167418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228318.P1757274197202167418

namespace A228318

/-- `Δ[A002492(n+1)-n²]` -/
def P1757274197202167418.Spec : Prop :=
  ∀ n, P1757274197202167418.a n = A228318 (n + 1)

end A228318

/-! ## A228318.P3933281557401431147

`Δ[A001845(n+1)-(n+1)²]`
-/

namespace A228318.P3933281557401431147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228318.P3933281557401431147

namespace A228318

/-- `Δ[A001845(n+1)-(n+1)²]` -/
def P3933281557401431147.Spec : Prop :=
  ∀ n, P3933281557401431147.a n = A228318 (n + 1)

end A228318

/-! ## A228318.P6338156483967255227

`Δ[A100504(n+1)-(n+1)²]`
-/

namespace A228318.P6338156483967255227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228318.P6338156483967255227

namespace A228318

/-- `Δ[A100504(n+1)-(n+1)²]` -/
def P6338156483967255227.Spec : Prop :=
  ∀ n, P6338156483967255227.a n = A228318 (n + 1)

end A228318

/-! ## A228318.P5665737983619386926

`abs(A016742(n+2)-A005408(n))`
-/

namespace A228318.P5665737983619386926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016742 (n + 2) - A005408 n|

end

end A228318.P5665737983619386926

namespace A228318

/-- `abs(A016742(n+2)-A005408(n))` -/
def P5665737983619386926.Spec : Prop :=
  ∀ n, P5665737983619386926.a n = A228318 (n + 1)

end A228318

/-! ## A228318.P7957491640363602191

`Δ[A081489(n+1)+A081435(n+1)]`
-/

namespace A228318.P7957491640363602191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081489 (n + 1) + A081435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228318.P7957491640363602191

namespace A228318

/-- `Δ[A081489(n+1)+A081435(n+1)]` -/
def P7957491640363602191.Spec : Prop :=
  ∀ n, P7957491640363602191.a n = A228318 (n + 1)

end A228318

/-! ## A228318.P28258719768430323

`record[A048759(n+3)+3]`
-/

namespace A228318.P28258719768430323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048759 (n + 3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228318.P28258719768430323

namespace A228318

/-- `record[A048759(n+3)+3]` -/
def P28258719768430323.Spec : Prop :=
  ∀ n, P28258719768430323.a n = A228318 (n + 1)

end A228318

/-!
# A228319: The hyper-Wiener index of the graph obtained by applying Mycielski's construction to the star graph K(1,n).

The programs for A228319, the canonical program `A228319.P4051828744319447943` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228319 has offset 1).

The definition of A228319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228319.P4051828744319447943

`6*(n+1)²+7*(n+1)+7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228319

/-- `6*(n+1)²+7*(n+1)+7` -/
def P4051828744319447943.Spec : Prop :=
  ∀ n, (P4051828744319447943.a n : ℤ) = A228319 (n + 1)

theorem P4051828744319447943.correct : P4051828744319447943.Spec := by
  intro n
  simp only [A228319, Nat.add_sub_cancel]

end A228319

/-! ## A228319.P6362989895051594149

`∑[a(n-1)+12]` with `a(0)=20, a(1)=25`
-/

namespace A228319.P6362989895051594149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [20, 25] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228319.P6362989895051594149

namespace A228319

/-- `∑[a(n-1)+12]` -/
def P6362989895051594149.Spec : Prop :=
  ∀ n, (P6362989895051594149.a n : ℤ) = A228319 (n + 1)

end A228319

/-! ## A228319.P11243359815481395234

`ceil(6/Δ[atan(n+1)]+n+1)`
-/

namespace A228319.P11243359815481395234
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 / (f1 (n + 1) - f1 n) + (n + 1 : ℝ)⌉

end

end A228319.P11243359815481395234

namespace A228319

/-- `ceil(6/Δ[atan(n+1)]+n+1)` -/
def P11243359815481395234.Spec : Prop :=
  ∀ n, P11243359815481395234.a n = A228319 (n + 1)

end A228319

/-! ## A228319.P8756830481815997287

`floor(6/Δ[atan(n+1)]+n+2)`
-/

namespace A228319.P8756830481815997287
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / (f1 (n + 1) - f1 n) + (n + 2 : ℝ)⌋

end

end A228319.P8756830481815997287

namespace A228319

/-- `floor(6/Δ[atan(n+1)]+n+2)` -/
def P8756830481815997287.Spec : Prop :=
  ∀ n, P8756830481815997287.a n = A228319 (n + 1)

end A228319

/-! ## A228319.P10583290894123687555

`Δ[A056119(n)+A007588(n+1)]`
-/

namespace A228319.P10583290894123687555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056119 n + A007588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228319.P10583290894123687555

namespace A228319

/-- `Δ[A056119(n)+A007588(n+1)]` -/
def P10583290894123687555.Spec : Prop :=
  ∀ n, P10583290894123687555.a n = A228319 (n + 1)

end A228319

/-! ## A228319.P14938054143903780495

`Δ[A268581(n)+A213772(n+1)]`
-/

namespace A228319.P14938054143903780495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n + A213772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228319.P14938054143903780495

namespace A228319

/-- `Δ[A268581(n)+A213772(n+1)]` -/
def P14938054143903780495.Spec : Prop :=
  ∀ n, P14938054143903780495.a n = A228319 (n + 1)

end A228319

/-! ## A228319.P7622474602721659202

`abs(2*(A049450(n+2)-n)-n)`
-/

namespace A228319.P7622474602721659202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A049450 (n + 2) - (n : ℤ)) - (n : ℤ)|

end

end A228319.P7622474602721659202

namespace A228319

/-- `abs(2*(A049450(n+2)-n)-n)` -/
def P7622474602721659202.Spec : Prop :=
  ∀ n, P7622474602721659202.a n = A228319 (n + 1)

end A228319

/-! ## A228319.P18020751963683021718

`abs(2*(A014255(A005408(n)+1)+2)-n)`
-/

namespace A228319.P18020751963683021718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A014255 (A005408 n + 1).toNat + 2) - (n : ℤ)|

end

end A228319.P18020751963683021718

namespace A228319

/-- `abs(2*(A014255(A005408(n)+1)+2)-n)` -/
def P18020751963683021718.Spec : Prop :=
  ∀ n, P18020751963683021718.a n = A228319 (n + 1)

end A228319

/-! ## A228319.P18240699198027104426

`A008754(6*(n+2))`
-/

namespace A228319.P18240699198027104426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008754 (6 * (n + 2))

end

end A228319.P18240699198027104426

namespace A228319

/-- `A008754(6*(n+2))` -/
def P18240699198027104426.Spec : Prop :=
  ∀ n, P18240699198027104426.a n = A228319 (n + 1)

end A228319

/-!
# A228320: The Wiener index of the graph obtained by applying Mycielski's construction to the cycle graph C(n).

The programs for A228320, the canonical program `A228320.P2606468582315173944` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228320 has offset 7).

The definition of A228320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228320.P2606468582315173944

`6*(n+7)²-13*(n+7)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228320

/-- `6*(n+7)²-13*(n+7)` -/
def P2606468582315173944.Spec : Prop :=
  ∀ n, P2606468582315173944.a n = A228320 (n + 7)

theorem P2606468582315173944.correct : P2606468582315173944.Spec := by
  intro n
  simp only [A228320, Nat.add_sub_cancel]

end A228320

/-!
# A228321: The Wiener index of the graph obtained by applying Mycielski's construction to the path graph on n vertices (n>=2).

The programs for A228321, the canonical program `A228321.P3035066690980424821` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228321 has offset 2).

The definition of A228321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228321.P6061329529554665392

`ceil(n/acot(n+1))+5*((n+1)²+2)`
-/

namespace A228321.P6061329529554665392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌉ + (5 * ((n + 1) ^ 2 + 2) : ℤ)

end

end A228321.P6061329529554665392

namespace A228321

/-- `ceil(n/acot(n+1))+5*((n+1)²+2)` -/
def P6061329529554665392.Spec : Prop :=
  ∀ n, P6061329529554665392.a n = A228321 (n + 2)

end A228321

/-! ## A228321.P3035066690980424821

`2*A106648(n)-A028310(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228321

/-- `2*A106648(n)-A028310(n)` -/
def P3035066690980424821.Spec : Prop :=
  ∀ n, P3035066690980424821.a n = A228321 (n + 2)

theorem P3035066690980424821.correct : P3035066690980424821.Spec := by
  intro n
  simp only [A228321, Nat.add_sub_cancel]

end A228321

/-! ## A228321.P15744049336700817872

`A347677(n+2)+7`
-/

namespace A228321.P15744049336700817872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347677 (n + 2) + 7

end

end A228321.P15744049336700817872

namespace A228321

/-- `A347677(n+2)+7` -/
def P15744049336700817872.Spec : Prop :=
  ∀ n, P15744049336700817872.a n = A228321 (n + 2)

end A228321

/-! ## A228321.P3744860708814508493

`Δ[A163661(n)+A079908(n)]`
-/

namespace A228321.P3744860708814508493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163661 n + A079908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228321.P3744860708814508493

namespace A228321

/-- `Δ[A163661(n)+A079908(n)]` -/
def P3744860708814508493.Spec : Prop :=
  ∀ n, P3744860708814508493.a n = A228321 (n + 2)

end A228321

/-! ## A228321.P8987525567806011658

`A125169(n)+A005449(A004273(n))`
-/

namespace A228321.P8987525567806011658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A005449 (A004273 n).toNat

end

end A228321.P8987525567806011658

namespace A228321

/-- `A125169(n)+A005449(A004273(n))` -/
def P8987525567806011658.Spec : Prop :=
  ∀ n, P8987525567806011658.a n = A228321 (n + 2)

end A228321

/-! ## A228321.P15683233485768159409

`A089071(2*n+1)+A027575(n)`
-/

namespace A228321.P15683233485768159409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (2 * n + 1) + A027575 n

end

end A228321.P15683233485768159409

namespace A228321

/-- `A089071(2*n+1)+A027575(n)` -/
def P15683233485768159409.Spec : Prop :=
  ∀ n, P15683233485768159409.a n = A228321 (n + 2)

end A228321

/-! ## A228321.P17370736296458679915

`A106648(n)+A028310(A106648(n)-A028310(n))`
-/

namespace A228321.P17370736296458679915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106648 n + A028310 (A106648 n - A028310 n).toNat

end

end A228321.P17370736296458679915

namespace A228321

/-- `A106648(n)+A028310(A106648(n)-A028310(n))` -/
def P17370736296458679915.Spec : Prop :=
  ∀ n, P17370736296458679915.a n = A228321 (n + 2)

end A228321

/-!
# A228322: The Wiener index of the graph obtained by applying Mycielski's construction to the hypercube graph Q(n) (n>=1).

The programs for A228322, there is no canonical definition to state claims against.
-/

/-! ## A228322.P10894916146523192484

`A312304(A163606(n))+A034444(n+1)`
-/

namespace A228322.P10894916146523192484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312304 (A163606 n).toNat + A034444 (n + 1)

end

end A228322.P10894916146523192484

/-!
# A228324: Primes arising from A228323 in order of their appearance.

The programs for A228324, there is no canonical definition to state claims against.
-/

/-! ## A228324.P5079287443463735589

`A255581(A047024(n+2))`
-/

namespace A228324.P5079287443463735589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255581 (A047024 (n + 2)).toNat

end

end A228324.P5079287443463735589

/-!
# A228325: a(n) is the smallest number m>n such that the concatenation nm is prime.

The programs for A228325, there is no canonical definition to state claims against.
-/

/-! ## A228325.P2651818325516272059

`n+1+A245727(n+1)+A000038(n)`
-/

namespace A228325.P2651818325516272059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A245727 (n + 1) + A000038 n)

end

end A228325.P2651818325516272059

/-! ## A228325.P5347659690367910678

`A245727(n+1)+A038572(A051755(n+2))`
-/

namespace A228325.P5347659690367910678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245727 (n + 1) + A038572 (A051755 (n + 2)).toNat

end

end A228325.P5347659690367910678

/-! ## A228325.P3808030919444393884

`A245727(n+1)+gcd(A051755(n+2), A111708(n))`
-/

namespace A228325.P3808030919444393884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245727 (n + 1) + (Int.gcd (A051755 (n + 2)) (A111708 n) : ℤ)

end

end A228325.P3808030919444393884

/-! ## A228325.P4609879902077891316

`A004442(A245727(n+1)+n)+A000038(n)`
-/

namespace A228325.P4609879902077891316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A245727 (n + 1) + (n : ℤ)).toNat + A000038 n

end

end A228325.P4609879902077891316

/-! ## A228325.P9636849008245957393

`or(1, A245727(n+1)+A233583(n+1))`
-/

namespace A228325.P9636849008245957393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A245727 (n + 1) + A233583 (n + 1))

end

end A228325.P9636849008245957393

/-! ## A228325.P889527569213845832

`A233583(n+1)+A245727(n+1)+A060576(n)`
-/

namespace A228325.P889527569213845832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + (A245727 (n + 1) + A060576 n)

end

end A228325.P889527569213845832

/-! ## A228325.P14500957667328001913

`A245727(A233583(n+2))+A233583(n+2)`
-/

namespace A228325.P14500957667328001913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245727 (A233583 (n + 2)).toNat + A233583 (n + 2)

end

end A228325.P14500957667328001913

/-!
# A228326: Start with 0. Successive digits in the sequence must differ by 1. Adjoin the smallest number not yet in the sequence.

The programs for A228326, there is no canonical definition to state claims against.
-/

/-! ## A228326.P9553808873909769005

`A307887(n)%A055086(A013643(2*n+5))`
-/

namespace A228326.P9553808873909769005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307887 n) (A055086 (A013643 (2 * n + 5)).toNat)

end

end A228326.P9553808873909769005

/-! ## A228326.P14232679752769880477

`A098766(a(n-1)+1)` with `a(0)=0`
-/

namespace A228326.P14232679752769880477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A098766 (a (n - 1) + 1).toNat

end

end A228326.P14232679752769880477

/-! ## A228326.P16673045251147490957

`A249517(n+1)%(n²+4)`
-/

namespace A228326.P16673045251147490957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249517 (n + 1)) (n ^ 2 + 4 : ℤ)

end

end A228326.P16673045251147490957

/-! ## A228326.P5248937167222164816

`A098766(A055649(n))`
-/

namespace A228326.P5248937167222164816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098766 (A055649 n).toNat

end

end A228326.P5248937167222164816

/-! ## A228326.P9546693643267624299

`A098766(A061378(n))`
-/

namespace A228326.P9546693643267624299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098766 (A061378 n).toNat

end

end A228326.P9546693643267624299

/-!
# A228329: a(n) = Sum_{k=0..n} (k+1)^2*T(n,k)^2 where T(n,k) is the Catalan triangle A039598.

The programs for A228329, the canonical program `A228329.P18294392692715026064` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228329 has offset 0).

The definition of A228329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228329.P18294392692715026064

`A051960(2*n)/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228329

/-- `A051960(2*n)/2` -/
def P18294392692715026064.Spec : Prop :=
  ∀ n, P18294392692715026064.a n = (A228329 n : ℚ)

end A228329

/-! ## A228329.P3613334976372594878

`(4*n)!*(3*n+1)/((2*n)!²*(2*n+1))`
-/

namespace A228329.P3613334976372594878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) * (3 * n + 1) : ℚ) / (Nat.factorial (2 * n) ^ 2 * (2 * n + 1) : ℚ)

end

end A228329.P3613334976372594878

namespace A228329

/-- `(4*n)!*(3*n+1)/((2*n)!²*(2*n+1))` -/
def P3613334976372594878.Spec : Prop :=
  ∀ n, P3613334976372594878.a n = (A228329 n : ℚ)

end A228329

/-! ## A228329.P2752742987397956532

`(3*n+1)*A048990(n)`
-/

namespace A228329.P2752742987397956532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A048990 n

end

end A228329.P2752742987397956532

namespace A228329

/-- `(3*n+1)*A048990(n)` -/
def P2752742987397956532.Spec : Prop :=
  ∀ n, P2752742987397956532.a n = A228329 n

end A228329

/-! ## A228329.P16178131166951252462

`(3*n+1)*record[A182492(n)]`
-/

namespace A228329.P16178131166951252462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228329.P16178131166951252462

namespace A228329

/-- `(3*n+1)*record[A182492(n)]` -/
def P16178131166951252462.Spec : Prop :=
  ∀ n, P16178131166951252462.a n = A228329 n

end A228329

/-! ## A228329.P2498032027723471646

`A000108(2*n)*(3*n+1)`
-/

namespace A228329.P2498032027723471646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * (3 * n + 1 : ℤ)

end

end A228329.P2498032027723471646

namespace A228329

/-- `A000108(2*n)*(3*n+1)` -/
def P2498032027723471646.Spec : Prop :=
  ∀ n, P2498032027723471646.a n = A228329 n

end A228329

/-! ## A228329.P14146528439210941829

`(3*n+1)*A028304(4*n)`
-/

namespace A228329.P14146528439210941829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A028304 (4 * n)

end

end A228329.P14146528439210941829

namespace A228329

/-- `(3*n+1)*A028304(4*n)` -/
def P14146528439210941829.Spec : Prop :=
  ∀ n, P14146528439210941829.a n = A228329 n

end A228329

/-! ## A228329.P9945731795810516741

`(3*n+1)*A090192(4*n+1)`
-/

namespace A228329.P9945731795810516741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A090192 (4 * n + 1)

end

end A228329.P9945731795810516741

namespace A228329

/-- `(3*n+1)*A090192(4*n+1)` -/
def P9945731795810516741.Spec : Prop :=
  ∀ n, P9945731795810516741.a n = A228329 n

end A228329

/-! ## A228329.P15430105752151360680

`record[A090192(n)]*A016777(n)`
-/

namespace A228329.P15430105752151360680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A016777 n

end

end A228329.P15430105752151360680

namespace A228329

/-- `record[A090192(n)]*A016777(n)` -/
def P15430105752151360680.Spec : Prop :=
  ∀ n, P15430105752151360680.a n = A228329 n

end A228329

/-! ## A228329.P896161974136598604

`record[A168491(n)]*A016777(n)`
-/

namespace A228329.P896161974136598604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A016777 n

end

end A228329.P896161974136598604

namespace A228329

/-- `record[A168491(n)]*A016777(n)` -/
def P896161974136598604.Spec : Prop :=
  ∀ n, P896161974136598604.a n = A228329 n

end A228329

/-! ## A228329.P7854525048833021975

`record[A182492(n)]*A016777(n)`
-/

namespace A228329.P7854525048833021975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A016777 n

end

end A228329.P7854525048833021975

namespace A228329

/-- `record[A182492(n)]*A016777(n)` -/
def P7854525048833021975.Spec : Prop :=
  ∀ n, P7854525048833021975.a n = A228329 n

end A228329

/-!
# A228334: Triangle read by rows: the X-transformation of the Catalan triangle A033184.

The programs for A228334, there is no canonical definition to state claims against.
-/

/-! ## A228334.P11265167281115410444

`sqrt(A180401(n+1)%A180376(n+1))*A236376(n)`
-/

namespace A228334.P11265167281115410444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A180401 (n + 1)) (A180376 (n + 1)) : ℝ) * (A236376 n : ℝ)

end

end A228334.P11265167281115410444

/-! ## A228334.P5954763602785310524

`(A131185(A131137(n+2))+A131182(n))*A208335(n+1)`
-/

namespace A228334.P5954763602785310524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131185 (A131137 (n + 2)).toNat + A131182 n) * A208335 (n + 1)

end

end A228334.P5954763602785310524

/-!
# A228335: Triangle read by rows: the Y-transformation of the Catalan triangle A033184.

The programs for A228335, there is no canonical definition to state claims against.
-/

/-! ## A228335.P15056833901892870204

`A039798(A245300(n)+A114327(n))`
-/

namespace A228335.P15056833901892870204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (A245300 n + A114327 n).toNat

end

end A228335.P15056833901892870204

/-! ## A228335.P14458136396783025241

`A179898(abs(1-n)-n+(1-round(sqrt(2*(n+1))))²+2*n+1)`
-/

namespace A228335.P14458136396783025241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179898 (|1 - (n : ℤ)| - (n : ℤ) + ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ))).toNat

end

end A228335.P14458136396783025241

/-!
# A228336: Triangle read by rows: the Z-transformation of the Catalan triangle A033184.

The programs for A228336, there is no canonical definition to state claims against.
-/

/-! ## A228336.P16136506753182379337

`A165621(comp[∑[n-1]])*A165621(n)`
-/

namespace A228336.P16136506753182379337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165621 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A165621 n

end

end A228336.P16136506753182379337

/-! ## A228336.P12054046071798154280

`A111660(2*A111062(n))`
-/

namespace A228336.P12054046071798154280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A111062 n).toNat

end

end A228336.P12054046071798154280

/-! ## A228336.P9741970481250913871

`A111062(n)-A080224(A187829(n+1))`
-/

namespace A228336.P9741970481250913871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111062 n - A080224 (A187829 (n + 1)).toNat

end

end A228336.P9741970481250913871

/-! ## A228336.P4335077543802678890

`A111062(n)-A181154(A175579(n+1))`
-/

namespace A228336.P4335077543802678890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111062 n - A181154 (A175579 (n + 1)).toNat

end

end A228336.P4335077543802678890

/-! ## A228336.P1282944326960487255

`A121373(A076155(3*(n+1)))+A111062(n)`
-/

namespace A228336.P1282944326960487255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A076155 (3 * (n + 1))).toNat + A111062 n

end

end A228336.P1282944326960487255

/-!
# A228338: Third diagonal of Catalan difference table (A059346).

The programs for A228338, the canonical program `A228338.P2629555823753106334` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228338 has offset 0).

The definition of A228338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228338.P8928629736116350612

`A378947(n+1)+3`
-/

namespace A228338.P8928629736116350612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378947 (n + 1) + 3

end

end A228338.P8928629736116350612

namespace A228338

/-- `A378947(n+1)+3` -/
def P8928629736116350612.Spec : Prop :=
  ∀ n, P8928629736116350612.a n = A228338 n

end A228338

/-! ## A228338.P11130357495506257701

`abs(Δ[Δ[A166587(n+1)]])`
-/

namespace A228338.P11130357495506257701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A228338.P11130357495506257701

namespace A228338

/-- `abs(Δ[Δ[A166587(n+1)]])` -/
def P11130357495506257701.Spec : Prop :=
  ∀ n, P11130357495506257701.a n = A228338 n

end A228338

/-! ## A228338.P2629555823753106334

`A005554(n+2)+A005554(n+3)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228338

/-- `A005554(n+2)+A005554(n+3)` -/
def P2629555823753106334.Spec : Prop :=
  ∀ n, P2629555823753106334.a n = A228338 n

theorem P2629555823753106334.correct : P2629555823753106334.Spec := by
  intro n
  simp only [A228338]

end A228338

/-! ## A228338.P2723630403091156815

`A059346(A167614(n+2))`
-/

namespace A228338.P2723630403091156815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A167614 (n + 2)).toNat

end

end A228338.P2723630403091156815

namespace A228338

/-- `A059346(A167614(n+2))` -/
def P2723630403091156815.Spec : Prop :=
  ∀ n, P2723630403091156815.a n = A228338 n

end A228338

/-! ## A228338.P14166825297973906677

`A059346(A052905(n)+8)`
-/

namespace A228338.P14166825297973906677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A052905 n + 8).toNat

end

end A228338.P14166825297973906677

namespace A228338

/-- `A059346(A052905(n)+8)` -/
def P14166825297973906677.Spec : Prop :=
  ∀ n, P14166825297973906677.a n = A228338 n

end A228338

/-! ## A228338.P3772434132813547919

`A059346(A167487(n)+A005408(n))`
-/

namespace A228338.P3772434132813547919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A167487 n + A005408 n).toNat

end

end A228338.P3772434132813547919

namespace A228338

/-- `A059346(A167487(n)+A005408(n))` -/
def P3772434132813547919.Spec : Prop :=
  ∀ n, P3772434132813547919.a n = A228338 n

end A228338

/-!
# A228339: Fourth differences of Catalan numbers (A000108).

The programs for A228339, the canonical program `A228339.P1397303470350323638` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228339 has offset 0).

The definition of A228339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228339.P1397303470350323638

`Δ[A033434(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228339

/-- `Δ[A033434(n)]` -/
def P1397303470350323638.Spec : Prop :=
  ∀ n, P1397303470350323638.a n = A228339 n

theorem P1397303470350323638.correct : P1397303470350323638.Spec := by
  intro n
  simp only [A228339]

end A228339

/-! ## A228339.P12537673870256961572

`Δ[Δ[A026012(n)]]`
-/

namespace A228339.P12537673870256961572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228339.P12537673870256961572

namespace A228339

/-- `Δ[Δ[A026012(n)]]` -/
def P12537673870256961572.Spec : Prop :=
  ∀ n, P12537673870256961572.a n = A228339 n

end A228339

/-! ## A228339.P45621095666545799

`Δ[Δ[Δ[A000245(n)]]]`
-/

namespace A228339.P45621095666545799
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228339.P45621095666545799

namespace A228339

/-- `Δ[Δ[Δ[A000245(n)]]]` -/
def P45621095666545799.Spec : Prop :=
  ∀ n, P45621095666545799.a n = A228339 n

end A228339

/-! ## A228339.P1975342848891204587

`Δ[Δ[A071738(n+1)]]`
-/

namespace A228339.P1975342848891204587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228339.P1975342848891204587

namespace A228339

/-- `Δ[Δ[A071738(n+1)]]` -/
def P1975342848891204587.Spec : Prop :=
  ∀ n, P1975342848891204587.a n = A228339 n

end A228339

/-! ## A228339.P9736710456283325769

`Δ[Δ[A026021(2*n)]]`
-/

namespace A228339.P9736710456283325769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228339.P9736710456283325769

namespace A228339

/-- `Δ[Δ[A026021(2*n)]]` -/
def P9736710456283325769.Spec : Prop :=
  ∀ n, P9736710456283325769.a n = A228339 n

end A228339

/-! ## A228339.P13047732600811549446

`Δ[Δ[Δ[Δ[A000108(n)]]]]`
-/

namespace A228339.P13047732600811549446
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228339.P13047732600811549446

namespace A228339

/-- `Δ[Δ[Δ[Δ[A000108(n)]]]]` -/
def P13047732600811549446.Spec : Prop :=
  ∀ n, P13047732600811549446.a n = A228339 n

end A228339

/-! ## A228339.P16551311823841245228

`A033434(n+1)-A033434(n)`
-/

namespace A228339.P16551311823841245228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 (n + 1) - A033434 n

end

end A228339.P16551311823841245228

namespace A228339

/-- `A033434(n+1)-A033434(n)` -/
def P16551311823841245228.Spec : Prop :=
  ∀ n, P16551311823841245228.a n = A228339 n

theorem P16551311823841245228.correct : P16551311823841245228.Spec := by
  intro n
  simp only [A228339, Nat.add_sub_cancel, A228339.P16551311823841245228.a, A228339.P1397303470350323638.f1, A228339.P1397303470350323638.a, SequenceMachineLib.memo_apply]

end A228339

/-! ## A228339.P2317893672927599006

`Δ[Δ[A120304(n)+A099376(n)]]`
-/

namespace A228339.P2317893672927599006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + A099376 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228339.P2317893672927599006

namespace A228339

/-- `Δ[Δ[A120304(n)+A099376(n)]]` -/
def P2317893672927599006.Spec : Prop :=
  ∀ n, P2317893672927599006.a n = A228339 n

end A228339

/-! ## A228339.P4163834872985630163

`Δ[A002057(n)-Δ[A143955(n)]]`
-/

namespace A228339.P4163834872985630163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228339.P4163834872985630163

namespace A228339

/-- `Δ[A002057(n)-Δ[A143955(n)]]` -/
def P4163834872985630163.Spec : Prop :=
  ∀ n, P4163834872985630163.a n = A228339 n

end A228339

/-! ## A228339.P10724933252464725579

`A026029(n+1)+A070031(n)-A000245(n)`
-/

namespace A228339.P10724933252464725579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) + (A070031 n - A000245 n)

end

end A228339.P10724933252464725579

namespace A228339

/-- `A026029(n+1)+A070031(n)-A000245(n)` -/
def P10724933252464725579.Spec : Prop :=
  ∀ n, P10724933252464725579.a n = A228339 n

end A228339

/-! ## A228339.P5834643255239596903

`A026013(n+1)+A026012(n)+∑[A026012(n)]`
-/

namespace A228339.P5834643255239596903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) + (A026012 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228339.P5834643255239596903

namespace A228339

/-- `A026013(n+1)+A026012(n)+∑[A026012(n)]` -/
def P5834643255239596903.Spec : Prop :=
  ∀ n, P5834643255239596903.a n = A228339 n

end A228339

/-! ## A228339.P15484833729082763769

`A000245(n+1)+A026013(n+1)+A026012(n)`
-/

namespace A228339.P15484833729082763769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A026013 (n + 1) + A026012 n)

end

end A228339.P15484833729082763769

namespace A228339

/-- `A000245(n+1)+A026013(n+1)+A026012(n)` -/
def P15484833729082763769.Spec : Prop :=
  ∀ n, P15484833729082763769.a n = A228339 n

end A228339

/-! ## A228339.P1016244918937336778

`A026016(n+1)+A026029(n+1)-A000588(n)`
-/

namespace A228339.P1016244918937336778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) + (A026029 (n + 1) - A000588 n)

end

end A228339.P1016244918937336778

namespace A228339

/-- `A026016(n+1)+A026029(n+1)-A000588(n)` -/
def P1016244918937336778.Spec : Prop :=
  ∀ n, P1016244918937336778.a n = A228339 n

end A228339

/-! ## A228339.P11194321007359759524

`A000588(n+1)+A071718(n+1)-A000245(n)`
-/

namespace A228339.P11194321007359759524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (A071718 (n + 1) - A000245 n)

end

end A228339.P11194321007359759524

namespace A228339

/-- `A000588(n+1)+A071718(n+1)-A000245(n)` -/
def P11194321007359759524.Spec : Prop :=
  ∀ n, P11194321007359759524.a n = A228339 n

end A228339

/-! ## A228339.P5221739219518088131

`A000588(n+1)+A071736(n+1)-A000588(n)`
-/

namespace A228339.P5221739219518088131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 1) + (A071736 (n + 1) - A000588 n)

end

end A228339.P5221739219518088131

namespace A228339

/-- `A000588(n+1)+A071736(n+1)-A000588(n)` -/
def P5221739219518088131.Spec : Prop :=
  ∀ n, P5221739219518088131.a n = A228339 n

end A228339

/-! ## A228339.P3407902642476022711

`A026016(n+2)+A026012(n)-A026016(n+1)`
-/

namespace A228339.P3407902642476022711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 2) + (A026012 n - A026016 (n + 1))

end

end A228339.P3407902642476022711

namespace A228339

/-- `A026016(n+2)+A026012(n)-A026016(n+1)` -/
def P3407902642476022711.Spec : Prop :=
  ∀ n, P3407902642476022711.a n = A228339 n

end A228339

/-! ## A228339.P11709074453824189610

`A026021(2*n)+A026016(n+2)-A026021(2*n+1)`
-/

namespace A228339.P11709074453824189610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n) + (A026016 (n + 2) - A026021 (2 * n + 1))

end

end A228339.P11709074453824189610

namespace A228339

/-- `A026021(2*n)+A026016(n+2)-A026021(2*n+1)` -/
def P11709074453824189610.Spec : Prop :=
  ∀ n, P11709074453824189610.a n = A228339 n

end A228339

/-! ## A228339.P848745516601552408

`A059346(A052905(n+2))`
-/

namespace A228339.P848745516601552408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A052905 (n + 2)).toNat

end

end A228339.P848745516601552408

namespace A228339

/-- `A059346(A052905(n+2))` -/
def P848745516601552408.Spec : Prop :=
  ∀ n, P848745516601552408.a n = A228339 n

end A228339

/-! ## A228339.P5637585138714654489

`A059346(A167487(n)+2*A005408(n))`
-/

namespace A228339.P5637585138714654489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A167487 n + 2 * A005408 n).toNat

end

end A228339.P5637585138714654489

namespace A228339

/-- `A059346(A167487(n)+2*A005408(n))` -/
def P5637585138714654489.Spec : Prop :=
  ∀ n, P5637585138714654489.a n = A228339 n

end A228339

/-! ## A228339.P8158353397993060070

`A059346(A005408(n)+A167487(n)+A005408(n))`
-/

namespace A228339.P8158353397993060070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A005408 n + (A167487 n + A005408 n)).toNat

end

end A228339.P8158353397993060070

namespace A228339

/-- `A059346(A005408(n)+A167487(n)+A005408(n))` -/
def P8158353397993060070.Spec : Prop :=
  ∀ n, P8158353397993060070.a n = A228339 n

end A228339

/-!
# A228340: Triangle read by rows: T(n,k) = (n-1)*T(n-1,k) + T(n-2,k), with T(n,n-1)=1, T(n,n-2)=n-2, for n >= 1, 0 <= k <= n-1.

The programs for A228340, there is no canonical definition to state claims against.
-/

/-! ## A228340.P1348801949393135881

`A102472(n+1)-A246654(comp[∑[n]])`
-/

namespace A228340.P1348801949393135881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102472 (n + 1) - A246654 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A228340.P1348801949393135881

/-! ## A228340.P2538242172511344037

`A058294(A004201(n+1))-A246654(A014132(n+1))`
-/

namespace A228340.P2538242172511344037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058294 (A004201 (n + 1)).toNat - A246654 (A014132 (n + 1)).toNat

end

end A228340.P2538242172511344037

/-! ## A228340.P17437159415755135760

`A058294(A061885(n)+1)-A246654(A014132(n+1))`
-/

namespace A228340.P17437159415755135760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058294 (A061885 n + 1).toNat - A246654 (A014132 (n + 1)).toNat

end

end A228340.P17437159415755135760

/-! ## A228340.P10030566811620589447

`A102473(A038722(n+1))-A246654(A014132(n+1))`
-/

namespace A228340.P10030566811620589447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102473 (A038722 (n + 1)).toNat - A246654 (A014132 (n + 1)).toNat

end

end A228340.P10030566811620589447

/-! ## A228340.P3672100695426629563

`A102473(A061579(n)+1)-A246654(A014132(n+1))`
-/

namespace A228340.P3672100695426629563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102473 (A061579 n + 1).toNat - A246654 (A014132 (n + 1)).toNat

end

end A228340.P3672100695426629563

/-! ## A228340.P968712488382192945

`A102473(A002024(n+1)²-n)-A246654(A014132(n+1))`
-/

namespace A228340.P968712488382192945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102473 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat - A246654 (A014132 (n + 1)).toNat

end

end A228340.P968712488382192945

/-! ## A228340.P7853657311920219271

`A246654(A000037(2*n+1)-(n+1))-A246654(A014132(n+1))`
-/

namespace A228340.P7853657311920219271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246654 (A000037 (2 * n + 1) - (n + 1 : ℤ)).toNat - A246654 (A014132 (n + 1)).toNat

end

end A228340.P7853657311920219271

/-!
# A228341: Third diagonal (T(n,2)) of triangle in A228340.

The programs for A228341, the canonical program `A228341.P11184977852236042810` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228341 has offset 2).

The definition of A228341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228341.P11184977852236042810

`(n+2)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228341

/-- `(n+2)*a(n-1)+a(n-2)` -/
def P11184977852236042810.Spec : Prop :=
  ∀ n, (P11184977852236042810.a n : ℤ) = A228341 (n + 2)

theorem P11184977852236042810.correct : P11184977852236042810.Spec := by
  intro n
  simp only [A228341, Nat.add_sub_cancel]

end A228341

/-! ## A228341.P5357417085030450380

`∏[1/a(n-1)+n+2]` with `a(0)=1, a(1)=2`
-/

namespace A228341.P5357417085030450380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  1 / f1 (n - 1) + (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228341.P5357417085030450380

namespace A228341

/-- `∏[1/a(n-1)+n+2]` -/
def P5357417085030450380.Spec : Prop :=
  ∀ n, P5357417085030450380.a n = (A228341 (n + 2) : ℚ)

end A228341

/-! ## A228341.P262495052946231292

`A058307(n+1)-A058308(n)`
-/

namespace A228341.P262495052946231292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058307 (n + 1) - A058308 n

end

end A228341.P262495052946231292

namespace A228341

/-- `A058307(n+1)-A058308(n)` -/
def P262495052946231292.Spec : Prop :=
  ∀ n, P262495052946231292.a n = A228341 (n + 2)

end A228341

/-! ## A228341.P12277259165726996712

`A228340(∑[n+2]+4)`
-/

namespace A228341.P12277259165726996712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228340 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228341.P12277259165726996712

namespace A228341

/-- `A228340(∑[n+2]+4)` -/
def P12277259165726996712.Spec : Prop :=
  ∀ n, P12277259165726996712.a n = A228341 (n + 2)

end A228341

/-! ## A228341.P1233519072484692859

`A058279(n+1)-2*A058308(n)`
-/

namespace A228341.P1233519072484692859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058279 (n + 1) - 2 * A058308 n

end

end A228341.P1233519072484692859

namespace A228341

/-- `A058279(n+1)-2*A058308(n)` -/
def P1233519072484692859.Spec : Prop :=
  ∀ n, P1233519072484692859.a n = A228341 (n + 2)

end A228341

/-! ## A228341.P8186383352806714594

`2*A058307(n+1)-A058279(n+1)`
-/

namespace A228341.P8186383352806714594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058307 (n + 1) - A058279 (n + 1)

end

end A228341.P8186383352806714594

namespace A228341

/-- `2*A058307(n+1)-A058279(n+1)` -/
def P8186383352806714594.Spec : Prop :=
  ∀ n, P8186383352806714594.a n = A228341 (n + 2)

end A228341

/-!
# A228342: Number of maximal chains in the voting coalition poset J_n+.

The programs for A228342, there is no canonical definition to state claims against.
-/

/-! ## A228342.P6894157664965760310

`2^floor(n/2)*C(2^n-1, ∑[n])`
-/

namespace A228342.P6894157664965760310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (Nat.choose ((2 ^ n : ℤ) - 1).toNat (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A228342.P6894157664965760310

/-!
# A228343: The number of ordered trees with bicolored single edges on the boundary.

The programs for A228343, the canonical program `A228343.P4320931973267472568` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228343 has offset 0).

The definition of A228343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228343.P4320931973267472568

`Δ[A143955(n)+2*a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228343

/-- `Δ[A143955(n)+2*a(n-1)]` -/
def P4320931973267472568.Spec : Prop :=
  ∀ n, P4320931973267472568.a n = A228343 n

theorem P4320931973267472568.correct : P4320931973267472568.Spec := by
  intro n
  simp only [A228343]

end A228343

/-! ## A228343.P320387228917148367

`2*a(n-1)-A115144(n+3)` with `a(0)=1`
-/

namespace A228343.P320387228917148367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A115144 (n + 3)

end

end A228343.P320387228917148367

namespace A228343

/-- `2*a(n-1)-A115144(n+3)` -/
def P320387228917148367.Spec : Prop :=
  ∀ n, P320387228917148367.a n = A228343 n

end A228343

/-! ## A228343.P10705846270653884966

`A220902(n+2)-A134635(n)`
-/

namespace A228343.P10705846270653884966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 2) - A134635 n

end

end A228343.P10705846270653884966

namespace A228343

/-- `A220902(n+2)-A134635(n)` -/
def P10705846270653884966.Spec : Prop :=
  ∀ n, P10705846270653884966.a n = A228343 n

end A228343

/-! ## A228343.P15749243765512652973

`A220902(n+2)+Δ[A126966(n)]`
-/

namespace A228343.P15749243765512652973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 2) + (f1 (n + 1) - f1 n)

end

end A228343.P15749243765512652973

namespace A228343

/-- `A220902(n+2)+Δ[A126966(n)]` -/
def P15749243765512652973.Spec : Prop :=
  ∀ n, P15749243765512652973.a n = A228343 n

end A228343

/-! ## A228343.P1022780330579456191

`Δ[A000108(n+1)]+A126966(n+1)/2`
-/

namespace A228343.P1022780330579456191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A126966 (n + 1) : ℚ) / 2

end

end A228343.P1022780330579456191

namespace A228343

/-- `Δ[A000108(n+1)]+A126966(n+1)/2` -/
def P1022780330579456191.Spec : Prop :=
  ∀ n, P1022780330579456191.a n = (A228343 n : ℚ)

end A228343

/-!
# A228344: a(n) = floor(3*n^2/4) - 1.

The programs for A228344, the canonical program `A228344.P5993680695944632253` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228344 has offset 2).

The definition of A228344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*(n+2)²/4)-1` (program `A228344.P5993680695944632253`, by `A228344.P5993680695944632253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228344.P5993680695944632253

`floor(3*(n+2)²/4)-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228344

/-- `floor(3*(n+2)²/4)-1` -/
def P5993680695944632253.Spec : Prop :=
  ∀ n, P5993680695944632253.a n = A228344 (n + 2)

theorem P5993680695944632253.correct : P5993680695944632253.Spec := by
  intro n
  simp only [A228344, Nat.add_sub_cancel]

end A228344

/-! ## A228344.P5241189562557568263

`round(3*sinh(log(n+2))²)`
-/

namespace A228344.P5241189562557568263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * Real.sinh (Real.log (n + 2 : ℝ)) ^ 2)

end

end A228344.P5241189562557568263

namespace A228344

/-- `round(3*sinh(log(n+2))²)` -/
def P5241189562557568263.Spec : Prop :=
  ∀ n, P5241189562557568263.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P15418562355144061469

`∑[a(n-2)+3]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A228344.P15418562355144061469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228344.P15418562355144061469

namespace A228344

/-- `∑[a(n-2)+3]` -/
def P15418562355144061469.Spec : Prop :=
  ∀ n, (P15418562355144061469.a n : ℤ) = A228344 (n + 2)

end A228344

/-! ## A228344.P11794595129386722584

`∑[∑[xor(1, a(n%2))]]` with `a(0)=2, a(1)=1`
-/

namespace A228344.P11794595129386722584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  Nat.xor 1 (f2 (n % 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228344.P11794595129386722584

namespace A228344

/-- `∑[∑[xor(1, a(n%2))]]` -/
def P11794595129386722584.Spec : Prop :=
  ∀ n, (P11794595129386722584.a n : ℤ) = A228344 (n + 2)

end A228344

/-! ## A228344.P5728255412836803373

`ceil(3*cot(2/(n+2))²)`
-/

namespace A228344.P5728255412836803373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.cot (2 / (n + 2 : ℚ) : ℝ) ^ 2⌉

end

end A228344.P5728255412836803373

namespace A228344

/-- `ceil(3*cot(2/(n+2))²)` -/
def P5728255412836803373.Spec : Prop :=
  ∀ n, P5728255412836803373.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P6581127856991627750

`∑[∑[3-a(n-1)]]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A228344.P6581127856991627750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228344.P6581127856991627750

namespace A228344

/-- `∑[∑[3-a(n-1)]]` -/
def P6581127856991627750.Spec : Prop :=
  ∀ n, P6581127856991627750.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P9396280815106460541

`∑[A040001(n)+∑[A040001(n)]]`
-/

namespace A228344.P9396280815106460541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228344.P9396280815106460541

namespace A228344

/-- `∑[A040001(n)+∑[A040001(n)]]` -/
def P9396280815106460541.Spec : Prop :=
  ∀ n, P9396280815106460541.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P2683856559383770744

`Δ[A248851(n+1)-Δ[A248851(n+1)]]`
-/

namespace A228344.P2683856559383770744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248851 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228344.P2683856559383770744

namespace A228344

/-- `Δ[A248851(n+1)-Δ[A248851(n+1)]]` -/
def P2683856559383770744.Spec : Prop :=
  ∀ n, P2683856559383770744.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P7703798351910647743

`A014682(∑[A109613(n)]+n)`
-/

namespace A228344.P7703798351910647743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A228344.P7703798351910647743

namespace A228344

/-- `A014682(∑[A109613(n)]+n)` -/
def P7703798351910647743.Spec : Prop :=
  ∀ n, P7703798351910647743.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P8200173223961334089

`A016789(A024206(n+1))`
-/

namespace A228344.P8200173223961334089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A024206 (n + 1)).toNat

end

end A228344.P8200173223961334089

namespace A228344

/-- `A016789(A024206(n+1))` -/
def P8200173223961334089.Spec : Prop :=
  ∀ n, P8200173223961334089.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P15621909898010749159

`A016789(A002620(n)+n)`
-/

namespace A228344.P15621909898010749159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A002620 n + (n : ℤ)).toNat

end

end A228344.P15621909898010749159

namespace A228344

/-- `A016789(A002620(n)+n)` -/
def P15621909898010749159.Spec : Prop :=
  ∀ n, P15621909898010749159.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P7693860240561910940

`A016789(∑[A008619(n)]-1)`
-/

namespace A228344.P7693860240561910940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A228344.P7693860240561910940

namespace A228344

/-- `A016789(∑[A008619(n)]-1)` -/
def P7693860240561910940.Spec : Prop :=
  ∀ n, P7693860240561910940.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P15997990175388050318

`A016789(A076921(n+2)-1)`
-/

namespace A228344.P15997990175388050318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A076921 (n + 2) - 1).toNat

end

end A228344.P15997990175388050318

namespace A228344

/-- `A016789(A076921(n+2)-1)` -/
def P15997990175388050318.Spec : Prop :=
  ∀ n, P15997990175388050318.a n = A228344 (n + 2)

end A228344

/-! ## A228344.P2445589210049489805

`A016789(A033638(n+2)-2)`
-/

namespace A228344.P2445589210049489805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A033638 (n + 2) - 2).toNat

end

end A228344.P2445589210049489805

namespace A228344

/-- `A016789(A033638(n+2)-2)` -/
def P2445589210049489805.Spec : Prop :=
  ∀ n, P2445589210049489805.a n = A228344 (n + 2)

end A228344

/-!
# A228346: Records in the continued fraction expansion of log(10).

The programs for A228346, there is no canonical definition to state claims against.
-/

/-! ## A228346.P6150511993953774726

`record[A016738(n)]`
-/

namespace A228346.P6150511993953774726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228346.P6150511993953774726

/-! ## A228346.P4797298150857697285

`A016738(A228345(n+1))`
-/

namespace A228346.P4797298150857697285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016738 (A228345 (n + 1)).toNat

end

end A228346.P4797298150857697285

/-!
# A228347: Triangle of regions and compositions of the positive integers (see Comments lines for definition).

The programs for A228347, there is no canonical definition to state claims against.
-/

/-! ## A228347.P4647312368648608686

`A014083(A296758(n+1))`
-/

namespace A228347.P4647312368648608686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (A296758 (n + 1)).toNat

end

end A228347.P4647312368648608686

/-! ## A228347.P10537702010857571992

`A228348(∑[char[∑[n]]]²-n)`
-/

namespace A228347.P10537702010857571992
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228348 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A228347.P10537702010857571992

/-! ## A228347.P6680322723892751852

`A228348(A038722(n+1))%5`
-/

namespace A228347.P6680322723892751852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228348 (A038722 (n + 1)).toNat) 5

end

end A228347.P6680322723892751852

/-!
# A228348: Triangle of regions and compositions of the positive integers (see Comments lines for definition).

The programs for A228348, there is no canonical definition to state claims against.
-/

/-! ## A228348.P10292890461424271964

`A014083(A296758(n+1)+A114327(n))`
-/

namespace A228348.P10292890461424271964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (A296758 (n + 1) + A114327 n).toNat

end

end A228348.P10292890461424271964

/-! ## A228348.P569029399350385907

`A228347(∑[char[∑[n]]]²-n)`
-/

namespace A228348.P569029399350385907
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228347 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A228348.P569029399350385907

/-! ## A228348.P14330011199575993532

`A228347(A038722(n+1))%5`
-/

namespace A228348.P14330011199575993532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228347 (A038722 (n + 1)).toNat) 5

end

end A228348.P14330011199575993532

/-! ## A228348.P4942136841209925887

`A228347(A061579(n)+1)%5`
-/

namespace A228348.P4942136841209925887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228347 (A061579 n + 1).toNat) 5

end

end A228348.P4942136841209925887

/-! ## A228348.P3486219567348020179

`gcd(A130706(n), A228347(A038722(n+1)))`
-/

namespace A228348.P3486219567348020179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A228347 (A038722 (n + 1)).toNat)

end

end A228348.P3486219567348020179

/-! ## A228348.P10988519755049065784

`abs(A097807(n)*A228347(A038722(n+1)))`
-/

namespace A228348.P10988519755049065784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097807 n * A228347 (A038722 (n + 1)).toNat|

end

end A228348.P10988519755049065784

/-! ## A228348.P13419456720449530721

`A007318(∑[n])*A228347(A038722(n+1))`
-/

namespace A228348.P13419456720449530721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A228347 (A038722 (n + 1)).toNat

end

end A228348.P13419456720449530721

/-! ## A228348.P13155808737667926381

`A228347(A038722(n+1))+A000007(n+1)`
-/

namespace A228348.P13155808737667926381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228347 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A228348.P13155808737667926381

/-! ## A228348.P12531724433162829793

`and(A153881(n+1), A228347(A038722(n+1)))`
-/

namespace A228348.P12531724433162829793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A228347 (A038722 (n + 1)).toNat)

end

end A228348.P12531724433162829793

/-! ## A228348.P3590844985956474979

`A153881(n+2)+A228347(A038722(n+1))+1`
-/

namespace A228348.P3590844985956474979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + (A228347 (A038722 (n + 1)).toNat + 1)

end

end A228348.P3590844985956474979

/-!
# A228349: Triangle read by rows: T(j,k) is the k-th part in nondecreasing order of the j-th region of the set of compositions (ordered partitions) of n in colexicographic order, if 1<=j<=2^(n-1) and 1<=k<=A006519(j).

The programs for A228349, the canonical program `A228349.P17029725680639391758` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228349 has offset 1).

The definition of A228349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228349.P17029725680639391758

`A000989(eq[A058281(n), A134022(n)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A228349

/-- `A000989(eq[A058281(n), A134022(n)])` -/
def P17029725680639391758.Spec : Prop :=
  ∀ n, P17029725680639391758.a n = A228349 (n + 1)

theorem P17029725680639391758.correct : P17029725680639391758.Spec := by
  intro n
  simp only [A228349, Nat.add_sub_cancel]

end A228349

/-! ## A228349.P10094112230643913783

`A081603(eq[A058281(n), A134022(n)])`
-/

namespace A228349.P10094112230643913783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228349.P10094112230643913783

namespace A228349

/-- `A081603(eq[A058281(n), A134022(n)])` -/
def P10094112230643913783.Spec : Prop :=
  ∀ n, P10094112230643913783.a n = A228349 (n + 1)

end A228349

/-! ## A228349.P10096048549700272234

`A000989(eq[A134022(n), A257075(n)])`
-/

namespace A228349.P10096048549700272234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228349.P10096048549700272234

namespace A228349

/-- `A000989(eq[A134022(n), A257075(n)])` -/
def P10096048549700272234.Spec : Prop :=
  ∀ n, P10096048549700272234.a n = A228349 (n + 1)

end A228349

/-! ## A228349.P10691984938105941677

`A273513(eq[A058281(n), A134022(n)])`
-/

namespace A228349.P10691984938105941677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228349.P10691984938105941677

namespace A228349

/-- `A273513(eq[A058281(n), A134022(n)])` -/
def P10691984938105941677.Spec : Prop :=
  ∀ n, P10691984938105941677.a n = A228349 (n + 1)

end A228349

/-! ## A228349.P12727132972472464168

`A081603(eq[A134022(n), A257075(n)])`
-/

namespace A228349.P12727132972472464168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228349.P12727132972472464168

namespace A228349

/-- `A081603(eq[A134022(n), A257075(n)])` -/
def P12727132972472464168.Spec : Prop :=
  ∀ n, P12727132972472464168.a n = A228349 (n + 1)

end A228349

/-! ## A228349.P15451871653362774560

`A000989(eq[A134022(n), A343785(n+1)])`
-/

namespace A228349.P15451871653362774560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228349.P15451871653362774560

namespace A228349

/-- `A000989(eq[A134022(n), A343785(n+1)])` -/
def P15451871653362774560.Spec : Prop :=
  ∀ n, P15451871653362774560.a n = A228349 (n + 1)

end A228349

/-! ## A228349.P1257584951296340724

`A081603(eq[A134022(n), A343785(n+1)])`
-/

namespace A228349.P1257584951296340724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228349.P1257584951296340724

namespace A228349

/-- `A081603(eq[A134022(n), A343785(n+1)])` -/
def P1257584951296340724.Spec : Prop :=
  ∀ n, P1257584951296340724.a n = A228349 (n + 1)

end A228349

/-!
# A228350: Triangle read by rows: T(j,k) is the k-th part in nonincreasing order of the j-th region of the set of compositions (ordered partitions) of n in colexicographic order, if 1<=j<=2^(n-1) and 1<=k<=A006519(j).

The programs for A228350, there is no canonical definition to state claims against.
-/

/-! ## A228350.P2809480024580510647

`A262097(eq[2, A273513(3*n+2)])`
-/

namespace A228350.P2809480024580510647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228350.P2809480024580510647

/-! ## A228350.P5182152140628046236

`A000989(eq[A058281(n), A081603(n)])`
-/

namespace A228350.P5182152140628046236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228350.P5182152140628046236

/-! ## A228350.P16845961582899747491

`A134022(eq[A058281(n), A081603(n)])`
-/

namespace A228350.P16845961582899747491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228350.P16845961582899747491

/-! ## A228350.P13374482968588846146

`A000989(eq[A058281(n), A273513(n)])`
-/

namespace A228350.P13374482968588846146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228350.P13374482968588846146

/-! ## A228350.P6471549201137034241

`A134022(eq[A058281(n), A273513(n)])`
-/

namespace A228350.P6471549201137034241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228350.P6471549201137034241

/-! ## A228350.P9216308090149227544

`A134022(eq[A081603(n), A257075(n)])`
-/

namespace A228350.P9216308090149227544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228350.P9216308090149227544

/-!
# A228351: Triangle read by rows in which row n lists the compositions (ordered partitions) of n (see Comments lines for definition).

The programs for A228351, there is no canonical definition to state claims against.
-/

/-! ## A228351.P8249429937080767132

`A163510(n+1)+1`
-/

namespace A228351.P8249429937080767132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (n + 1) + 1

end

end A228351.P8249429937080767132

/-! ## A228351.P13985796714494854788

`A005555(A163510(n+1))`
-/

namespace A228351.P13985796714494854788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A163510 (n + 1)).toNat

end

end A228351.P13985796714494854788

/-! ## A228351.P5279326373849053086

`Δ[eq[A030308(n), A057427(n)]]`
-/

namespace A228351.P5279326373849053086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228351.P5279326373849053086

/-! ## A228351.P16598263299751175369

`A100922(A000788(A163510(A100922(A000788(n)))))`
-/

namespace A228351.P16598263299751175369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100922 (A000788 (A163510 (A100922 (A000788 n).toNat).toNat).toNat).toNat

end

end A228351.P16598263299751175369

/-! ## A228351.P1396089616754529692

`Δ[eq[A030308(n), A178334(n)]]`
-/

namespace A228351.P1396089616754529692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228351.P1396089616754529692

/-!
# A228352: Triangle read by rows, giving antidiagonals of an array of sequences representing the number of compositions of n when there are N types of ones (the sequences in the array begin (1, N, ...)).

The programs for A228352, there is no canonical definition to state claims against.
-/

/-! ## A228352.P4841412633711782090

`A226764(A252501(n)+3)`
-/

namespace A228352.P4841412633711782090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (A252501 n + 3).toNat

end

end A228352.P4841412633711782090

/-! ## A228352.P2732414046508204495

`A119485(floor(sqrt(A063007(n))))`
-/

namespace A228352.P2732414046508204495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119485 (Int.sqrt (A063007 n)).toNat

end

end A228352.P2732414046508204495

/-! ## A228352.P15356131195134466145

`A087739(A008620(A063007(n)))`
-/

namespace A228352.P15356131195134466145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (A008620 (A063007 n).toNat).toNat

end

end A228352.P15356131195134466145

/-! ## A228352.P9737366141738941263

`A048766(A019446(A033282(n+3))²)`
-/

namespace A228352.P9737366141738941263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A019446 (A033282 (n + 3)).toNat ^ 2).toNat

end

end A228352.P9737366141738941263

/-!
# A228353: Primes of the form 3*p - 4 where p is prime.

The programs for A228353, there is no canonical definition to state claims against.
-/

/-! ## A228353.P249865216887843105

`3*A258261(n+1)-4`
-/

namespace A228353.P249865216887843105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A258261 (n + 1) - 4

end

end A228353.P249865216887843105

/-! ## A228353.P4612027479827593649

`p?[A176003(n+1)-2]`
-/

namespace A228353.P4612027479827593649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176003 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228353.P4612027479827593649

/-! ## A228353.P11225089960714058315

`p?[A112773(n+1)-4]`
-/

namespace A228353.P11225089960714058315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228353.P11225089960714058315

/-! ## A228353.P1050617587898427021

`p?[3*A040976(n+1)+2]`
-/

namespace A228353.P1050617587898427021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040976 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228353.P1050617587898427021

/-! ## A228353.P3756728774660968655

`p?[3*A000040(n+1)-4]`
-/

namespace A228353.P3756728774660968655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228353.P3756728774660968655

/-! ## A228353.P9998066985800935174

`p?[record[A006530(n+2)+2*n]]`
-/

namespace A228353.P9998066985800935174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228353.P9998066985800935174

/-! ## A228353.P14280451257698287205

`3*p?[A228121(n+1)]-4`
-/

namespace A228353.P14280451257698287205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A228353.P14280451257698287205

/-! ## A228353.P11312957714717104829

`∩[A003627(n+1), A289250(n+1)]`
-/

namespace A228353.P11312957714717104829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P11312957714717104829

/-! ## A228353.P13454024958639314911

`∩[A045309(n+1), A289250(n+1)]`
-/

namespace A228353.P13454024958639314911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P13454024958639314911

/-! ## A228353.P9923724032878508631

`∩[A066501(n+1), A289250(n+1)]`
-/

namespace A228353.P9923724032878508631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P9923724032878508631

/-! ## A228353.P9841889520346618756

`record[A006530(A176003(n+2)-2)]`
-/

namespace A228353.P9841889520346618756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A176003 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228353.P9841889520346618756

/-! ## A228353.P5218347550495456480

`∩[A082406(n+1), A289250(n+1)]`
-/

namespace A228353.P5218347550495456480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P5218347550495456480

/-! ## A228353.P3570491035460908602

`∩[A167409(n+1), A289250(n+1)]`
-/

namespace A228353.P3570491035460908602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P3570491035460908602

/-! ## A228353.P5481814071877330915

`p?[A174857(n+2)-n²]`
-/

namespace A228353.P5481814071877330915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174857 (n + 2) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228353.P5481814071877330915

/-! ## A228353.P12876768542960111973

`∩[A074243(n+1), A289250(n+1)]`
-/

namespace A228353.P12876768542960111973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P12876768542960111973

/-! ## A228353.P15486791632196947490

`∩[A179871(n+1), A289250(n+1)]`
-/

namespace A228353.P15486791632196947490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P15486791632196947490

/-! ## A228353.P6373108422763561816

`∩[A004612(n+1), A289250(n+1)]`
-/

namespace A228353.P6373108422763561816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P6373108422763561816

/-! ## A228353.P13021688630867597886

`∩[A289250(n+1), A347838(n+1)]`
-/

namespace A228353.P13021688630867597886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P13021688630867597886

/-! ## A228353.P5736459897871482217

`∩[A088232(n+1), A289250(n+1)]`
-/

namespace A228353.P5736459897871482217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228353.P5736459897871482217

/-! ## A228353.P10775980059022130244

`p?[A061397(n+2)+2*n]`
-/

namespace A228353.P10775980059022130244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 2) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228353.P10775980059022130244

/-!
# A228354: Indices (k) of partitions in the list of compositions of j in colexicographic order, if 1<=k<=2^(j-1), j>=1.

The programs for A228354, the canonical program `A228354.P14726846839078751284` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228354 has offset 1).

The definition of A228354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228354.P14726846839078751284

`1+A194602(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A228354

/-- `1+A194602(n)` -/
def P14726846839078751284.Spec : Prop :=
  ∀ n, P14726846839078751284.a n = A228354 (n + 1)

theorem P14726846839078751284.correct : P14726846839078751284.Spec := by
  intro n
  simp only [A228354, Nat.add_sub_cancel]

end A228354

/-! ## A228354.P6026622628506194169

`eq[1, A286552(n)]+1`
-/

namespace A228354.P6026622628506194169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228354.P6026622628506194169

namespace A228354

/-- `eq[1, A286552(n)]+1` -/
def P6026622628506194169.Spec : Prop :=
  ∀ n, (P6026622628506194169.a n : ℤ) = A228354 (n + 1)

end A228354

/-! ## A228354.P10456983718572709739

`eq[1, A337377(n)]+1`
-/

namespace A228354.P10456983718572709739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228354.P10456983718572709739

namespace A228354

/-- `eq[1, A337377(n)]+1` -/
def P10456983718572709739.Spec : Prop :=
  ∀ n, (P10456983718572709739.a n : ℤ) = A228354 (n + 1)

end A228354

/-! ## A228354.P13719237474890207500

`eq[1, A366877(n)]+1`
-/

namespace A228354.P13719237474890207500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228354.P13719237474890207500

namespace A228354

/-- `eq[1, A366877(n)]+1` -/
def P13719237474890207500.Spec : Prop :=
  ∀ n, (P13719237474890207500.a n : ℤ) = A228354 (n + 1)

end A228354

/-! ## A228354.P10225550013826116327

`filter[n+1, A326956(#)]`
-/

namespace A228354.P10225550013826116327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326956 (f1 j) = 1) n)

end

end A228354.P10225550013826116327

namespace A228354

/-- `filter[n+1, A326956(#)]` -/
def P10225550013826116327.Spec : Prop :=
  ∀ n, (P10225550013826116327.a n : ℤ) = A228354 (n + 1)

end A228354

/-! ## A228354.P17258591855725797012

`comp[A161819(n+1)]+1`
-/

namespace A228354.P17258591855725797012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228354.P17258591855725797012

namespace A228354

/-- `comp[A161819(n+1)]+1` -/
def P17258591855725797012.Spec : Prop :=
  ∀ n, (P17258591855725797012.a n : ℤ) = A228354 (n + 1)

end A228354

/-! ## A228354.P17592575242518762449

`record[A331856(2*n)+1]`
-/

namespace A228354.P17592575242518762449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228354.P17592575242518762449

namespace A228354

/-- `record[A331856(2*n)+1]` -/
def P17592575242518762449.Spec : Prop :=
  ∀ n, P17592575242518762449.a n = A228354 (n + 1)

end A228354

/-! ## A228354.P13225619102994776059

`eq[1, A326956(n+1)]+1`
-/

namespace A228354.P13225619102994776059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A228354.P13225619102994776059

namespace A228354

/-- `eq[1, A326956(n+1)]+1` -/
def P13225619102994776059.Spec : Prop :=
  ∀ n, (P13225619102994776059.a n : ℤ) = A228354 (n + 1)

end A228354

/-! ## A228354.P7994469659309659500

`A015906(A194602(n))`
-/

namespace A228354.P7994469659309659500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A194602 n).toNat

end

end A228354.P7994469659309659500

namespace A228354

/-- `A015906(A194602(n))` -/
def P7994469659309659500.Spec : Prop :=
  ∀ n, P7994469659309659500.a n = A228354 (n + 1)

end A228354

/-! ## A228354.P2827765896003713381

`A008619(2*A194602(n))`
-/

namespace A228354.P2827765896003713381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A194602 n).toNat

end

end A228354.P2827765896003713381

namespace A228354

/-- `A008619(2*A194602(n))` -/
def P2827765896003713381.Spec : Prop :=
  ∀ n, P2827765896003713381.a n = A228354 (n + 1)

end A228354

/-!
# A228355: Write the primes backwards in base 10 and juxtapose their digits.

The programs for A228355, there is no canonical definition to state claims against.
-/

/-! ## A228355.P10463716312907960201

`A033308(lt[A014692(n+1), A097484(n+1)])`
-/

namespace A228355.P10463716312907960201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228355.P10463716312907960201

/-!
# A228356: The triangle associated with the family of polynomials W_n(x).

The programs for A228356, there is no canonical definition to state claims against.
-/

/-! ## A228356.P5737082419847030756

`2*A228161(n)-A228637(n)`
-/

namespace A228356.P5737082419847030756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228161 n - A228637 n

end

end A228356.P5737082419847030756

/-!
# A228357: Numbers k such that sum of all primes <= k is not prime.

The programs for A228357, the canonical program `A228357.P1316091021505171964` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228357 has offset 1).

The definition of A228357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228357.P1316091021505171964

`eq[char[A228102(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228357

/-- `eq[char[A228102(n+1)], A000007(n)]` -/
def P1316091021505171964.Spec : Prop :=
  ∀ n, (P1316091021505171964.a n : ℤ) = A228357 (n + 1)

theorem P1316091021505171964.correct : P1316091021505171964.Spec := by
  intro n
  simp only [A228357, Nat.add_sub_cancel]

end A228357

/-! ## A228357.P12184080512479699807

`eq[char[A228102(n+1)], A000038(n)]`
-/

namespace A228357.P12184080512479699807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228357.P12184080512479699807

namespace A228357

/-- `eq[char[A228102(n+1)], A000038(n)]` -/
def P12184080512479699807.Spec : Prop :=
  ∀ n, (P12184080512479699807.a n : ℤ) = A228357 (n + 1)

end A228357

/-! ## A228357.P6609593185409534326

`eq[char[A228102(n+1)], A061397(2*(n+1))]`
-/

namespace A228357.P6609593185409534326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228357.P6609593185409534326

namespace A228357

/-- `eq[char[A228102(n+1)], A061397(2*(n+1))]` -/
def P6609593185409534326.Spec : Prop :=
  ∀ n, (P6609593185409534326.a n : ℤ) = A228357 (n + 1)

end A228357

/-! ## A228357.P3247065681044172693

`record[A065033(n)-A055671(A063960(n+1))]`
-/

namespace A228357.P3247065681044172693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A055671 (A063960 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228357.P3247065681044172693

namespace A228357

/-- `record[A065033(n)-A055671(A063960(n+1))]` -/
def P3247065681044172693.Spec : Prop :=
  ∀ n, P3247065681044172693.a n = A228357 (n + 1)

end A228357

/-! ## A228357.P17668911145127633540

`record[A065033(n+3)/A014963(A063960(n+4))]`
-/

namespace A228357.P17668911145127633540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (n + 3) : ℚ) / (A014963 (A063960 (n + 4)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228357.P17668911145127633540

namespace A228357

/-- `record[A065033(n+3)/A014963(A063960(n+4))]` -/
def P17668911145127633540.Spec : Prop :=
  ∀ n, P17668911145127633540.a n = (A228357 (n + 1) : ℚ)

end A228357

/-!
# A228358: Numbers k such that 3*k - 4 is not prime.

The programs for A228358, the canonical program `A228358.P14957160635234131478` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228358 has offset 1).

The definition of A228358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228358.P13446913448337308286

`comp[A087370(n+1)]+1`
-/

namespace A228358.P13446913448337308286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228358.P13446913448337308286

namespace A228358

/-- `comp[A087370(n+1)]+1` -/
def P13446913448337308286.Spec : Prop :=
  ∀ n, (P13446913448337308286.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P1077109582019140473

`comp[C(n+2, A033686(n))]`
-/

namespace A228358.P1077109582019140473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A033686 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A228358.P1077109582019140473

namespace A228358

/-- `comp[C(n+2, A033686(n))]` -/
def P1077109582019140473.Spec : Prop :=
  ∀ n, (P1077109582019140473.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P12575702928756376211

`comp[A024893(n+1)+1]+1`
-/

namespace A228358.P12575702928756376211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228358.P12575702928756376211

namespace A228358

/-- `comp[A024893(n+1)+1]+1` -/
def P12575702928756376211.Spec : Prop :=
  ∀ n, (P12575702928756376211.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P7573610911895550138

`comp[A088879(n+1)+2]+1`
-/

namespace A228358.P7573610911895550138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088879 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228358.P7573610911895550138

namespace A228358

/-- `comp[A088879(n+1)+2]+1` -/
def P7573610911895550138.Spec : Prop :=
  ∀ n, (P7573610911895550138.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P1721143501244016572

`comp[A228121(n+1)-1]+1`
-/

namespace A228358.P1721143501244016572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228358.P1721143501244016572

namespace A228358

/-- `comp[A228121(n+1)-1]+1` -/
def P1721143501244016572.Spec : Prop :=
  ∀ n, (P1721143501244016572.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P16954256217412560055

`record[(n+1)%A134079(n)+1]`
-/

namespace A228358.P16954256217412560055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A134079 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228358.P16954256217412560055

namespace A228358

/-- `record[(n+1)%A134079(n)+1]` -/
def P16954256217412560055.Spec : Prop :=
  ∀ n, P16954256217412560055.a n = A228358 (n + 1)

end A228358

/-! ## A228358.P410179683303785135

`comp[ceil(A045410(n+1)/3)]+1`
-/

namespace A228358.P410179683303785135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045410 (n + 1) : ℚ) / 3⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228358.P410179683303785135

namespace A228358

/-- `comp[ceil(A045410(n+1)/3)]+1` -/
def P410179683303785135.Spec : Prop :=
  ∀ n, (P410179683303785135.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P9969394624952225093

`record[(n+2)/A089026(3*n+2)]`
-/

namespace A228358.P9969394624952225093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A089026 (3 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228358.P9969394624952225093

namespace A228358

/-- `record[(n+2)/A089026(3*n+2)]` -/
def P9969394624952225093.Spec : Prop :=
  ∀ n, P9969394624952225093.a n = (A228358 (n + 1) : ℚ)

end A228358

/-! ## A228358.P7373626754671671495

`record[3%A000005(3*n+5)+n]`
-/

namespace A228358.P7373626754671671495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A000005 (3 * n + 5)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228358.P7373626754671671495

namespace A228358

/-- `record[3%A000005(3*n+5)+n]` -/
def P7373626754671671495.Spec : Prop :=
  ∀ n, P7373626754671671495.a n = A228358 (n + 1)

end A228358

/-! ## A228358.P1086013316630439281

`comp[C(n+2, A181569(3*n+1))]`
-/

namespace A228358.P1086013316630439281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A181569 (3 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A228358.P1086013316630439281

namespace A228358

/-- `comp[C(n+2, A181569(3*n+1))]` -/
def P1086013316630439281.Spec : Prop :=
  ∀ n, (P1086013316630439281.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P16607419634640338967

`comp[n+2-A067558(3*n+2)]+1`
-/

namespace A228358.P16607419634640338967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A067558 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228358.P16607419634640338967

namespace A228358

/-- `comp[n+2-A067558(3*n+2)]+1` -/
def P16607419634640338967.Spec : Prop :=
  ∀ n, (P16607419634640338967.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P3392113068717266255

`lt[A014963(or(1, abs(3*n-4))), n+1]`
-/

namespace A228358.P3392113068717266255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 1 |(3 * n : ℤ) - 4|).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A228358.P3392113068717266255

namespace A228358

/-- `lt[A014963(or(1, abs(3*n-4))), n+1]` -/
def P3392113068717266255.Spec : Prop :=
  ∀ n, (P3392113068717266255.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P14957160635234131478

`record[A271566(A018252(n+2))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228358

/-- `record[A271566(A018252(n+2))]` -/
def P14957160635234131478.Spec : Prop :=
  ∀ n, P14957160635234131478.a n = A228358 (n + 1)

theorem P14957160635234131478.correct : P14957160635234131478.Spec := by
  intro n
  simp only [A228358, Nat.add_sub_cancel]

end A228358

/-! ## A228358.P16451744984980823107

`record[A339914(A018252(n+1)+1)]`
-/

namespace A228358.P16451744984980823107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339914 (A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228358.P16451744984980823107

namespace A228358

/-- `record[A339914(A018252(n+1)+1)]` -/
def P16451744984980823107.Spec : Prop :=
  ∀ n, P16451744984980823107.a n = A228358 (n + 1)

end A228358

/-! ## A228358.P10645155033395288903

`record[A288469(A014682(n+1))-n]`
-/

namespace A228358.P10645155033395288903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A014682 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228358.P10645155033395288903

namespace A228358

/-- `record[A288469(A014682(n+1))-n]` -/
def P10645155033395288903.Spec : Prop :=
  ∀ n, P10645155033395288903.a n = A228358 (n + 1)

end A228358

/-! ## A228358.P16169513428687546165

`comp[A076605(n+2)-A006369(n+1)]`
-/

namespace A228358.P16169513428687546165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2) - A006369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228358.P16169513428687546165

namespace A228358

/-- `comp[A076605(n+2)-A006369(n+1)]` -/
def P16169513428687546165.Spec : Prop :=
  ∀ n, (P16169513428687546165.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P17166844531347713643

`comp[A010051(n+1)*A074305(n)-n]`
-/

namespace A228358.P17166844531347713643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A074305 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228358.P17166844531347713643

namespace A228358

/-- `comp[A010051(n+1)*A074305(n)-n]` -/
def P17166844531347713643.Spec : Prop :=
  ∀ n, (P17166844531347713643.a n : ℤ) = A228358 (n + 1)

end A228358

/-! ## A228358.P6562178002463587899

`A249355(4*n)+eq[A249355(2*n), A249355(3*n)]`
-/

namespace A228358.P6562178002463587899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249355 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249355 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249355 (4 * n) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A228358.P6562178002463587899

namespace A228358

/-- `A249355(4*n)+eq[A249355(2*n), A249355(3*n)]` -/
def P6562178002463587899.Spec : Prop :=
  ∀ n, P6562178002463587899.a n = A228358 (n + 1)

end A228358

/-! ## A228358.P9835311350536501786

`record[A113520(A049636(2*n))-A113520(2*n+1)]`
-/

namespace A228358.P9835311350536501786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A049636 (2 * n)).toNat - A113520 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228358.P9835311350536501786

namespace A228358

/-- `record[A113520(A049636(2*n))-A113520(2*n+1)]` -/
def P9835311350536501786.Spec : Prop :=
  ∀ n, P9835311350536501786.a n = A228358 (n + 1)

end A228358

/-!
# A228359: Numbers m whose 10's complement is not prime, i.e., 10^k-m, where k is the number of digits of m, is not prime.

The programs for A228359, the canonical program `A228359.P12401264959366660209` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228359 has offset 1).

The definition of A228359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228359.P12401264959366660209

`eq[0, A055671(A061601(n))]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228359

/-- `eq[0, A055671(A061601(n))]+1` -/
def P12401264959366660209.Spec : Prop :=
  ∀ n, (P12401264959366660209.a n : ℤ) = A228359 (n + 1)

theorem P12401264959366660209.correct : P12401264959366660209.Spec := by
  intro n
  simp only [A228359, Nat.add_sub_cancel]

end A228359

/-! ## A228359.P17306796517999878484

`eq[char[A228075(n+1)], A000007(n)]`
-/

namespace A228359.P17306796517999878484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228359.P17306796517999878484

namespace A228359

/-- `eq[char[A228075(n+1)], A000007(n)]` -/
def P17306796517999878484.Spec : Prop :=
  ∀ n, (P17306796517999878484.a n : ℤ) = A228359 (n + 1)

end A228359

/-! ## A228359.P1351484471899574051

`eq[A000007(n), A010051(A178914(n))]`
-/

namespace A228359.P1351484471899574051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A178914 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228359.P1351484471899574051

namespace A228359

/-- `eq[A000007(n), A010051(A178914(n))]` -/
def P1351484471899574051.Spec : Prop :=
  ∀ n, (P1351484471899574051.a n : ℤ) = A228359 (n + 1)

end A228359

/-! ## A228359.P12823341989074290430

`eq[A000038(n), A010051(A178914(n))]`
-/

namespace A228359.P12823341989074290430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A178914 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228359.P12823341989074290430

namespace A228359

/-- `eq[A000038(n), A010051(A178914(n))]` -/
def P12823341989074290430.Spec : Prop :=
  ∀ n, (P12823341989074290430.a n : ℤ) = A228359 (n + 1)

end A228359

/-! ## A228359.P8127284301314879151

`eq[A005171(A178914(n)), A057427(n)]`
-/

namespace A228359.P8127284301314879151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A178914 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228359.P8127284301314879151

namespace A228359

/-- `eq[A005171(A178914(n)), A057427(n)]` -/
def P8127284301314879151.Spec : Prop :=
  ∀ n, (P8127284301314879151.a n : ℤ) = A228359 (n + 1)

end A228359

/-! ## A228359.P12119638677127381162

`eq[A005171(A178914(n)), A158388(n)]`
-/

namespace A228359.P12119638677127381162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A178914 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228359.P12119638677127381162

namespace A228359

/-- `eq[A005171(A178914(n)), A158388(n)]` -/
def P12119638677127381162.Spec : Prop :=
  ∀ n, (P12119638677127381162.a n : ℤ) = A228359 (n + 1)

end A228359

/-! ## A228359.P17962299593932202706

`eq[A000007(n), A010051(A061601(n)+1)]`
-/

namespace A228359.P17962299593932202706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228359.P17962299593932202706

namespace A228359

/-- `eq[A000007(n), A010051(A061601(n)+1)]` -/
def P17962299593932202706.Spec : Prop :=
  ∀ n, (P17962299593932202706.a n : ℤ) = A228359 (n + 1)

end A228359

/-! ## A228359.P4608873413685033072

`eq[A000038(n), A010051(A061601(n)+1)]`
-/

namespace A228359.P4608873413685033072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228359.P4608873413685033072

namespace A228359

/-- `eq[A000038(n), A010051(A061601(n)+1)]` -/
def P4608873413685033072.Spec : Prop :=
  ∀ n, (P4608873413685033072.a n : ℤ) = A228359 (n + 1)

end A228359

/-! ## A228359.P2829254588652924849

`record[A008619(2*n)-A055671(A061601(n))]`
-/

namespace A228359.P2829254588652924849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A055671 (A061601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228359.P2829254588652924849

namespace A228359

/-- `record[A008619(2*n)-A055671(A061601(n))]` -/
def P2829254588652924849.Spec : Prop :=
  ∀ n, P2829254588652924849.a n = A228359 (n + 1)

end A228359

/-! ## A228359.P13040991804944953954

`eq[2, A036453(n+1)+A010051(A061601(n)+1)]`
-/

namespace A228359.P13040991804944953954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + A010051 (A061601 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228359.P13040991804944953954

namespace A228359

/-- `eq[2, A036453(n+1)+A010051(A061601(n)+1)]` -/
def P13040991804944953954.Spec : Prop :=
  ∀ n, (P13040991804944953954.a n : ℤ) = A228359 (n + 1)

end A228359

/-!
# A228360: Table read by antidiagonals: T(l,L) is the number of all possible covers of L-length line segment by l-length line segments with allowed gaps < l.

The programs for A228360, there is no canonical definition to state claims against.
-/

/-! ## A228360.P4515419177076535616

`floor(A093561(n)/A008486(A166350(n+1)))`
-/

namespace A228360.P4515419177076535616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093561 n : ℚ) / (A008486 (A166350 (n + 1)).toNat : ℚ)⌋

end

end A228360.P4515419177076535616

/-! ## A228360.P4309587105774954182

`A001221(A238802(or(42, A238802(n))))`
-/

namespace A228360.P4309587105774954182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A238802 (Int.lor 42 (A238802 n)).toNat).toNat

end

end A228360.P4309587105774954182

/-! ## A228360.P5028875651259864187

`A005136(A140997(n))-A101688(n)`
-/

namespace A228360.P5028875651259864187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A140997 n).toNat - A101688 n

end

end A228360.P5028875651259864187

/-! ## A228360.P7597114503008679030

`A176725(A155586(n))-A026836(n+1)`
-/

namespace A228360.P7597114503008679030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (A155586 n).toNat - A026836 (n + 1)

end

end A228360.P7597114503008679030

/-! ## A228360.P7360962991070573003

`A060016(n+1)-A014119(A358377(n+4))`
-/

namespace A228360.P7360962991070573003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) - A014119 (A358377 (n + 4)).toNat

end

end A228360.P7360962991070573003

/-!
# A228361: The number of all possible covers of L-length line segment by 2-length line segments with allowed gaps < 2.

The programs for A228361, the canonical program `A228361.P1439323994946294722` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228361 has offset 0).

The definition of A228361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228361.P1439323994946294722

`a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228361

/-- `a(n-2)+a(n-3)` -/
def P1439323994946294722.Spec : Prop :=
  ∀ n, (P1439323994946294722.a n : ℤ) = A228361 n

theorem P1439323994946294722.correct : P1439323994946294722.Spec := by
  intro n
  simp only [A228361]

end A228361

/-! ## A228361.P10334572344446006472

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=2, a(5)=3`
-/

namespace A228361.P10334572344446006472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2, 2, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A228361.P10334572344446006472

namespace A228361

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P10334572344446006472.Spec : Prop :=
  ∀ n, P10334572344446006472.a n = A228361 n

end A228361

/-! ## A228361.P18119698323104411371

`A134816(n+1)-C(n, n²)`
-/

namespace A228361.P18119698323104411371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A228361.P18119698323104411371

namespace A228361

/-- `A134816(n+1)-C(n, n²)` -/
def P18119698323104411371.Spec : Prop :=
  ∀ n, P18119698323104411371.a n = A228361 n

end A228361

/-! ## A228361.P7124911765709243511

`A000931(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A228361.P7124911765709243511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A000931 n + a (n - 1)

end

end A228361.P7124911765709243511

namespace A228361

/-- `A000931(n)+a(n-1)` -/
def P7124911765709243511.Spec : Prop :=
  ∀ n, P7124911765709243511.a n = A228361 n

end A228361

/-! ## A228361.P6811896061183154155

`A182097(A057544(n))`
-/

namespace A228361.P6811896061183154155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A057544 n).toNat

end

end A228361.P6811896061183154155

namespace A228361

/-- `A182097(A057544(n))` -/
def P6811896061183154155.Spec : Prop :=
  ∀ n, P6811896061183154155.a n = A228361 n

end A228361

/-! ## A228361.P5034486115470387363

`A182097(A171526(n+2))`
-/

namespace A228361.P5034486115470387363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A171526 (n + 2)).toNat

end

end A228361.P5034486115470387363

namespace A228361

/-- `A182097(A171526(n+2))` -/
def P5034486115470387363.Spec : Prop :=
  ∀ n, P5034486115470387363.a n = A228361 n

end A228361

/-! ## A228361.P6504364044703406748

`A134816(n+1)*A157928(n)`
-/

namespace A228361.P6504364044703406748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) * A157928 n

end

end A228361.P6504364044703406748

namespace A228361

/-- `A134816(n+1)*A157928(n)` -/
def P6504364044703406748.Spec : Prop :=
  ∀ n, P6504364044703406748.a n = A228361 n

end A228361

/-! ## A228361.P9576238533044355874

`∑[A000931(n)]-A019590(n+1)`
-/

namespace A228361.P9576238533044355874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A019590 (n + 1)

end

end A228361.P9576238533044355874

namespace A228361

/-- `∑[A000931(n)]-A019590(n+1)` -/
def P9576238533044355874.Spec : Prop :=
  ∀ n, P9576238533044355874.a n = A228361 n

end A228361

/-! ## A228361.P16771623796517413386

`∑[A000931(n)]-A171386(n+2)`
-/

namespace A228361.P16771623796517413386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A171386 (n + 2)

end

end A228361.P16771623796517413386

namespace A228361

/-- `∑[A000931(n)]-A171386(n+2)` -/
def P16771623796517413386.Spec : Prop :=
  ∀ n, P16771623796517413386.a n = A228361 n

end A228361

/-! ## A228361.P10153403853338018032

`A134816(n+1)-A019590(n+1)`
-/

namespace A228361.P10153403853338018032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) - A019590 (n + 1)

end

end A228361.P10153403853338018032

namespace A228361

/-- `A134816(n+1)-A019590(n+1)` -/
def P10153403853338018032.Spec : Prop :=
  ∀ n, P10153403853338018032.a n = A228361 n

end A228361

/-! ## A228361.P12658346589741650272

`A000931(n+5)-A019590(n+1)`
-/

namespace A228361.P12658346589741650272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 5) - A019590 (n + 1)

end

end A228361.P12658346589741650272

namespace A228361

/-- `A000931(n+5)-A019590(n+1)` -/
def P12658346589741650272.Spec : Prop :=
  ∀ n, P12658346589741650272.a n = A228361 n

end A228361

/-! ## A228361.P654132205721219785

`lcm(A134816(n+1), A173950(n+1))`
-/

namespace A228361.P654132205721219785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134816 (n + 1)) (A173950 (n + 1))

end

end A228361.P654132205721219785

namespace A228361

/-- `lcm(A134816(n+1), A173950(n+1))` -/
def P654132205721219785.Spec : Prop :=
  ∀ n, (P654132205721219785.a n : ℤ) = A228361 n

end A228361

/-! ## A228361.P2247110354593677126

`char[A064664(n+2)]*A134816(n+1)`
-/

namespace A228361.P2247110354593677126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A134816 (n + 1)

end

end A228361.P2247110354593677126

namespace A228361

/-- `char[A064664(n+2)]*A134816(n+1)` -/
def P2247110354593677126.Spec : Prop :=
  ∀ n, P2247110354593677126.a n = A228361 n

end A228361

/-! ## A228361.P2585894572451497557

`A134816(n+1)-char[1-A324729(n+1)]`
-/

namespace A228361.P2585894572451497557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324729 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A228361.P2585894572451497557

namespace A228361

/-- `A134816(n+1)-char[1-A324729(n+1)]` -/
def P2585894572451497557.Spec : Prop :=
  ∀ n, P2585894572451497557.a n = A228361 n

end A228361

/-! ## A228361.P10372289403318274322

`char[A324729(2*n+3)]*A134816(n+1)`
-/

namespace A228361.P10372289403318274322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324729 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A134816 (n + 1)

end

end A228361.P10372289403318274322

namespace A228361

/-- `char[A324729(2*n+3)]*A134816(n+1)` -/
def P10372289403318274322.Spec : Prop :=
  ∀ n, P10372289403318274322.a n = A228361 n

end A228361

/-! ## A228361.P763762972616225768

`A134816(n+1)+1-A040001(A151800(n))`
-/

namespace A228361.P763762972616225768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (1 - A040001 (A151800 n).toNat)

end

end A228361.P763762972616225768

namespace A228361

/-- `A134816(n+1)+1-A040001(A151800(n))` -/
def P763762972616225768.Spec : Prop :=
  ∀ n, P763762972616225768.a n = A228361 n

end A228361

/-! ## A228361.P6543153766118191284

`A228362(n+1)+A000931(n)-A017818(n)`
-/

namespace A228361.P6543153766118191284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228362 (n + 1) + (A000931 n - A017818 n)

end

end A228361.P6543153766118191284

namespace A228361

/-- `A228362(n+1)+A000931(n)-A017818(n)` -/
def P6543153766118191284.Spec : Prop :=
  ∀ n, P6543153766118191284.a n = A228361 n

end A228361

/-! ## A228361.P17165993739959123829

`A134816(n+1)%∑[A000931(n+3)]`
-/

namespace A228361.P17165993739959123829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134816 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228361.P17165993739959123829

namespace A228361

/-- `A134816(n+1)%∑[A000931(n+3)]` -/
def P17165993739959123829.Spec : Prop :=
  ∀ n, P17165993739959123829.a n = A228361 n

end A228361

/-! ## A228361.P16718366580552603585

`C(A134816(n+1), A040001(A151800(n)))`
-/

namespace A228361.P16718366580552603585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134816 (n + 1)).toNat (A040001 (A151800 n).toNat).toNat

end

end A228361.P16718366580552603585

namespace A228361

/-- `C(A134816(n+1), A040001(A151800(n)))` -/
def P16718366580552603585.Spec : Prop :=
  ∀ n, (P16718366580552603585.a n : ℤ) = A228361 n

end A228361

/-!
# A228362: The number of all possible covers of L-length line segment by 3-length line segments with allowed gaps < 3.

The programs for A228362, the canonical program `A228362.P5425906065888310846` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228362 has offset 0).

The definition of A228362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228362.P5425906065888310846

`a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=3, a(6)=3, a(7)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228362

/-- `a(n-3)+a(n-4)+a(n-5)` -/
def P5425906065888310846.Spec : Prop :=
  ∀ n, (P5425906065888310846.a n : ℤ) = A228362 n

theorem P5425906065888310846.correct : P5425906065888310846.Spec := by
  intro n
  simp only [A228362]

end A228362

/-! ## A228362.P8889938711128327528

`A017818(gcd(n+3, C(2, n)))`
-/

namespace A228362.P8889938711128327528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (Nat.gcd (n + 3) (Nat.choose 2 n))

end

end A228362.P8889938711128327528

namespace A228362

/-- `A017818(gcd(n+3, C(2, n)))` -/
def P8889938711128327528.Spec : Prop :=
  ∀ n, P8889938711128327528.a n = A228362 n

end A228362

/-! ## A228362.P17319925445032737250

`A017818(3-A166926(n)+n)`
-/

namespace A228362.P17319925445032737250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (3 - A166926 n + (n : ℤ)).toNat

end

end A228362.P17319925445032737250

namespace A228362

/-- `A017818(3-A166926(n)+n)` -/
def P17319925445032737250.Spec : Prop :=
  ∀ n, P17319925445032737250.a n = A228362 n

end A228362

/-! ## A228362.P7552857702114556463

`A017818(A282738(A267873(n)))`
-/

namespace A228362.P7552857702114556463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (A282738 (A267873 n).toNat).toNat

end

end A228362.P7552857702114556463

namespace A228362

/-- `A017818(A282738(A267873(n)))` -/
def P7552857702114556463.Spec : Prop :=
  ∀ n, P7552857702114556463.a n = A228362 n

end A228362

/-! ## A228362.P3079156858566282183

`A017818(n+3)*A057427(A103151(n+1))`
-/

namespace A228362.P3079156858566282183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (n + 3) * A057427 (A103151 (n + 1)).toNat

end

end A228362.P3079156858566282183

namespace A228362

/-- `A017818(n+3)*A057427(A103151(n+1))` -/
def P3079156858566282183.Spec : Prop :=
  ∀ n, P3079156858566282183.a n = A228362 n

end A228362

/-! ## A228362.P1482784104465496189

`A017818(n+3)%A193771(n)`
-/

namespace A228362.P1482784104465496189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017818 (n + 3)) (A193771 n)

end

end A228362.P1482784104465496189

namespace A228362

/-- `A017818(n+3)%A193771(n)` -/
def P1482784104465496189.Spec : Prop :=
  ∀ n, P1482784104465496189.a n = A228362 n

end A228362

/-! ## A228362.P10645864636462314076

`A017818(n+3)*A157928(A277193(n))`
-/

namespace A228362.P10645864636462314076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (n + 3) * A157928 (A277193 n).toNat

end

end A228362.P10645864636462314076

namespace A228362

/-- `A017818(n+3)*A157928(A277193(n))` -/
def P10645864636462314076.Spec : Prop :=
  ∀ n, P10645864636462314076.a n = A228362 n

end A228362

/-!
# A228363: Sorted entries of the multiplication table a*b, with a>1, b>1.

The programs for A228363, there is no canonical definition to state claims against.
-/

/-! ## A228363.P17523417774191991382

`comp[∑[∏{e}[n, #+1]-1]]+1-n`
-/

namespace A228363.P17523417774191991382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

end

end A228363.P17523417774191991382

/-! ## A228363.P554624945818485578

`comp[∑[∑{d}[n, (n+1)%#]]]-n+1`
-/

namespace A228363.P554624945818485578
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n + 1) % d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1

end

end A228363.P554624945818485578

/-! ## A228363.P16834215939480833203

`comp[∑[∑{d}[n+1, gcd(n, #)]-1]]-n+1`
-/

namespace A228363.P16834215939480833203
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), Nat.gcd n d : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A228363.P16834215939480833203

/-! ## A228363.P12512345189545001497

`A385476(n+1)-1`
-/

namespace A228363.P12512345189545001497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385476 (n + 1) - 1

end

end A228363.P12512345189545001497

/-! ## A228363.P6953617526892646673

`lt[1, A027751(n+1)]-n`
-/

namespace A228363.P6953617526892646673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A228363.P6953617526892646673

/-! ## A228363.P5125428023642074380

`comp[∑[A032741(n)]]+1-n`
-/

namespace A228363.P5125428023642074380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A228363.P5125428023642074380

/-! ## A228363.P17792414586014276812

`comp[A002541(n+1)]+1-n`
-/

namespace A228363.P17792414586014276812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A228363.P17792414586014276812

/-!
# A228364: G.f.: x^2*(x+1)^2/(x^3+x^2-1)^2.

The programs for A228364, the canonical program `A228364.P514550158594810868` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228364 has offset 0).

The definition of A228364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228364.P514550158594810868

`2*a(n-2)+2*a(n-3)-a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228364

/-- `2*a(n-2)+2*a(n-3)-a(n-4)-2*a(n-5)-a(n-6)` -/
def P514550158594810868.Spec : Prop :=
  ∀ n, P514550158594810868.a n = A228364 n

theorem P514550158594810868.correct : P514550158594810868.Spec := by
  intro n
  simp only [A228364]

end A228364

/-! ## A228364.P7470093609746453826

`A228361(n)+a(n-2)-round(-a(n-3))` with `a(0)=0, a(1)=0, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A228364.P7470093609746453826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A228361 n + (a (n - 2) - (-a (n - 3)))

end

end A228364.P7470093609746453826

namespace A228364

/-- `A228361(n)+a(n-2)-round(-a(n-3))` -/
def P7470093609746453826.Spec : Prop :=
  ∀ n, P7470093609746453826.a n = A228364 n

end A228364

/-! ## A228364.P6656880613259844147

`a(n-2)-floor(-a(n-3))+A052954(n+2)-1` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A228364.P6656880613259844147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  a (n - 2) - (-a (n - 3)) + (A052954 (n + 2) - 1)

end

end A228364.P6656880613259844147

namespace A228364

/-- `a(n-2)-floor(-a(n-3))+A052954(n+2)-1` -/
def P6656880613259844147.Spec : Prop :=
  ∀ n, P6656880613259844147.a n = A228364 n

end A228364

/-! ## A228364.P2057520265892545056

`a(n-2)+a(n-3)+A023434(A289207(n))+1` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A228364.P2057520265892545056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  a (n - 2) + a (n - 3) + (A023434 (A289207 n).toNat + 1)

end

end A228364.P2057520265892545056

namespace A228364

/-- `a(n-2)+a(n-3)+A023434(A289207(n))+1` -/
def P2057520265892545056.Spec : Prop :=
  ∀ n, P2057520265892545056.a n = A228364 n

end A228364

/-! ## A228364.P11616379770754421464

`A228577(n+1)+A228577(n)-A134816(n+1)`
-/

namespace A228364.P11616379770754421464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228577 (n + 1) + (A228577 n - A134816 (n + 1))

end

end A228364.P11616379770754421464

namespace A228364

/-- `A228577(n+1)+A228577(n)-A134816(n+1)` -/
def P11616379770754421464.Spec : Prop :=
  ∀ n, P11616379770754421464.a n = A228364 n

end A228364

/-! ## A228364.P2333119816679242571

`A228577(n+1)-(A078027(n+7)-A228577(n))`
-/

namespace A228364.P2333119816679242571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228577 (n + 1) - (A078027 (n + 7) - A228577 n)

end

end A228364.P2333119816679242571

namespace A228364

/-- `A228577(n+1)-(A078027(n+7)-A228577(n))` -/
def P2333119816679242571.Spec : Prop :=
  ∀ n, P2333119816679242571.a n = A228364 n

end A228364

/-! ## A228364.P10124901286532021139

`A228577(n+1)-(A133034(n+9)-A228577(n))`
-/

namespace A228364.P10124901286532021139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228577 (n + 1) - (A133034 (n + 9) - A228577 n)

end

end A228364.P10124901286532021139

namespace A228364

/-- `A228577(n+1)-(A133034(n+9)-A228577(n))` -/
def P10124901286532021139.Spec : Prop :=
  ∀ n, P10124901286532021139.a n = A228364 n

end A228364

/-!
# A228365: Inverse binomial transform of the Galois numbers G_(n)^{(3)} (A006117).

The programs for A228365, there is no canonical definition to state claims against.
-/

/-! ## A228365.P17203372188903616756

`A123108(A227467(n)+A033742(n))`
-/

namespace A228365.P17203372188903616756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A227467 n + A033742 n).toNat

end

end A228365.P17203372188903616756

/-! ## A228365.P11604445626898306634

`A008611(A347021(n)+A087447(n))`
-/

namespace A228365.P11604445626898306634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A347021 n + A087447 n).toNat

end

end A228365.P11604445626898306634

/-!
# A228366: Toothpick sequence from a diagram of compositions of the positive integers (see Comments lines for definition).

The programs for A228366, the canonical program `A228366.P13566421837120405156` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228366 has offset 0).

The definition of A228366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228370, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228366.P13566421837120405156

`A228370(2*n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A228366

/-- `A228370(2*n)` -/
def P13566421837120405156.Spec : Prop :=
  ∀ n, P13566421837120405156.a n = A228366 n

theorem P13566421837120405156.correct : P13566421837120405156.Spec := by
  intro n
  simp only [A228366]

end A228366

/-! ## A228366.P17484781061940027633

`∑[∑{e}[xor(n, -n), #]+and(n, -n)]`
-/

namespace A228366.P17484781061940027633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ) + Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228366.P17484781061940027633

namespace A228366

/-- `∑[∑{e}[xor(n, -n), #]+and(n, -n)]` -/
def P17484781061940027633.Spec : Prop :=
  ∀ n, P17484781061940027633.a n = A228366 n

end A228366

/-! ## A228366.P2594989885107075602

`∑[val(n+1, 2)-or(n, -(n+2))]-(val(n+1, 2)-or(n, -(n+2)))`
-/

namespace A228366.P2594989885107075602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - Int.lor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) - Int.lor (n : ℤ) (-(n + 2 : ℤ)))

end

end A228366.P2594989885107075602

namespace A228366

/-- `∑[val(n+1, 2)-or(n, -(n+2))]-(val(n+1, 2)-or(n, -(n+2)))` -/
def P2594989885107075602.Spec : Prop :=
  ∀ n, P2594989885107075602.a n = A228366 n

end A228366

/-! ## A228366.P1432346815102000044

`A228367(n)+a(n-1)` with `a(0)=0`
-/

namespace A228366.P1432346815102000044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A228367 n + a (n - 1)

end

end A228366.P1432346815102000044

namespace A228366

/-- `A228367(n)+a(n-1)` -/
def P1432346815102000044.Spec : Prop :=
  ∀ n, P1432346815102000044.a n = A228366 n

end A228366

/-! ## A228366.P9558652170625058465

`A005187(n)+∑[and(n, -n)]`
-/

namespace A228366.P9558652170625058465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228366.P9558652170625058465

namespace A228366

/-- `A005187(n)+∑[and(n, -n)]` -/
def P9558652170625058465.Spec : Prop :=
  ∀ n, P9558652170625058465.a n = A228366 n

end A228366

/-! ## A228366.P9697747968166968178

`∑[and(n, -n)]+A101925(n)-1`
-/

namespace A228366.P9697747968166968178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A101925 n - 1)

end

end A228366.P9697747968166968178

namespace A228366

/-- `∑[and(n, -n)]+A101925(n)-1` -/
def P9697747968166968178.Spec : Prop :=
  ∀ n, P9697747968166968178.a n = A228366 n

end A228366

/-! ## A228366.P7806177005634322782

`∑[and(n, -n)]+A011371(n)+n`
-/

namespace A228366.P7806177005634322782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A011371 n + (n : ℤ))

end

end A228366.P7806177005634322782

namespace A228366

/-- `∑[and(n, -n)]+A011371(n)+n` -/
def P7806177005634322782.Spec : Prop :=
  ∀ n, P7806177005634322782.a n = A228366 n

end A228366

/-! ## A228366.P9986529019140543462

`A004134(n)-n-∑[or(n, -n)]`
-/

namespace A228366.P9986529019140543462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228366.P9986529019140543462

namespace A228366

/-- `A004134(n)-n-∑[or(n, -n)]` -/
def P9986529019140543462.Spec : Prop :=
  ∀ n, P9986529019140543462.a n = A228366 n

end A228366

/-! ## A228366.P8815060895322586763

`∑[A124754(and(n, -n))+and(n, -n)]`
-/

namespace A228366.P8815060895322586763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (Int.land (n : ℤ) (-(n : ℤ))).toNat + Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228366.P8815060895322586763

namespace A228366

/-- `∑[A124754(and(n, -n))+and(n, -n)]` -/
def P8815060895322586763.Spec : Prop :=
  ∀ n, P8815060895322586763.a n = A228366 n

end A228366

/-! ## A228366.P15843154307008128999

`∑[A089080(n+1)-1-or(n, -n)]`
-/

namespace A228366.P15843154307008128999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1) - 1 - Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228366.P15843154307008128999

namespace A228366

/-- `∑[A089080(n+1)-1-or(n, -n)]` -/
def P15843154307008128999.Spec : Prop :=
  ∀ n, P15843154307008128999.a n = A228366 n

end A228366

/-! ## A228366.P3818562830738249067

`A136013(n)+A004134(n)`
-/

namespace A228366.P3818562830738249067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 n + A004134 n

end

end A228366.P3818562830738249067

namespace A228366

/-- `A136013(n)+A004134(n)` -/
def P3818562830738249067.Spec : Prop :=
  ∀ n, P3818562830738249067.a n = A228366 n

end A228366

/-! ## A228366.P15279563130389845896

`A159699(n)+A011371(n)`
-/

namespace A228366.P15279563130389845896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159699 n + A011371 n

end

end A228366.P15279563130389845896

namespace A228366

/-- `A159699(n)+A011371(n)` -/
def P15279563130389845896.Spec : Prop :=
  ∀ n, P15279563130389845896.a n = A228366 n

end A228366

/-!
# A228367: n-th element of the ruler function plus the highest power of 2 dividing n.

The programs for A228367, the canonical program `A228367.P1353796914564076815` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228367 has offset 1).

The definition of A228367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228367.P6391126617323409644

`1+val(n+1, 2)+2^val(n+1, 2)`
-/

namespace A228367.P6391126617323409644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.valuation (n + 1) 2 + 2 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A228367.P6391126617323409644

namespace A228367

/-- `1+val(n+1, 2)+2^val(n+1, 2)` -/
def P6391126617323409644.Spec : Prop :=
  ∀ n, (P6391126617323409644.a n : ℤ) = A228367 (n + 1)

end A228367

/-! ## A228367.P1353796914564076815

`A001511(n+1)+A006519(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228367

/-- `A001511(n+1)+A006519(n+1)` -/
def P1353796914564076815.Spec : Prop :=
  ∀ n, P1353796914564076815.a n = A228367 (n + 1)

theorem P1353796914564076815.correct : P1353796914564076815.Spec := by
  intro n
  simp only [A228367, Nat.add_sub_cancel]

end A228367

/-! ## A228367.P5602058840109209155

`val(n+1, 2)-or(n, -(n+2))`
-/

namespace A228367.P5602058840109209155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - Int.lor (n : ℤ) (-(n + 2 : ℤ))

end

end A228367.P5602058840109209155

namespace A228367

/-- `val(n+1, 2)-or(n, -(n+2))` -/
def P5602058840109209155.Spec : Prop :=
  ∀ n, P5602058840109209155.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P17084367975476724453

`and(n, -(n+2))+val(n+1, 2)+2`
-/

namespace A228367.P17084367975476724453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) + (SequenceMachineLib.valuation (n + 1) 2 + 2 : ℤ)

end

end A228367.P17084367975476724453

namespace A228367

/-- `and(n, -(n+2))+val(n+1, 2)+2` -/
def P17084367975476724453.Spec : Prop :=
  ∀ n, P17084367975476724453.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P9329269284274758046

`Δ[a(floor(n/2))+n]+and(n+1, -(n+1))` with `a(0)=0`
-/

namespace A228367.P9329269284274758046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A228367.P9329269284274758046

namespace A228367

/-- `Δ[a(floor(n/2))+n]+and(n+1, -(n+1))` -/
def P9329269284274758046.Spec : Prop :=
  ∀ n, P9329269284274758046.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P2589287555006756512

`and(n+1, xor(n, -1))+log2(or(n, n+1)-n)+1`
-/

namespace A228367.P2589287555006756512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 1 : ℤ) (Int.xor (n : ℤ) (-1)) : ℝ) + (Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ) + 1)

end

end A228367.P2589287555006756512

namespace A228367

/-- `and(n+1, xor(n, -1))+log2(or(n, n+1)-n)+1` -/
def P2589287555006756512.Spec : Prop :=
  ∀ n, P2589287555006756512.a n = (A228367 (n + 1) : ℝ)

end A228367

/-! ## A228367.P18186248659059970116

`Δ[a(floor(n/2))+n]+(xor(n, n+1)+1)/2` with `a(0)=0`
-/

namespace A228367.P18186248659059970116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + (Nat.xor n (n + 1) + 1 : ℚ) / 2

end

end A228367.P18186248659059970116

namespace A228367

/-- `Δ[a(floor(n/2))+n]+(xor(n, n+1)+1)/2` -/
def P18186248659059970116.Spec : Prop :=
  ∀ n, P18186248659059970116.a n = (A228367 (n + 1) : ℚ)

end A228367

/-! ## A228367.P9470390739081898774

`A005126(val(n+1, 2))`
-/

namespace A228367.P9470390739081898774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 (SequenceMachineLib.valuation (n + 1) 2)

end

end A228367.P9470390739081898774

namespace A228367

/-- `A005126(val(n+1, 2))` -/
def P9470390739081898774.Spec : Prop :=
  ∀ n, P9470390739081898774.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P3540375562370369586

`A233272(and(n+1, -(n+1)))`
-/

namespace A228367.P3540375562370369586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A228367.P3540375562370369586

namespace A228367

/-- `A233272(and(n+1, -(n+1)))` -/
def P3540375562370369586.Spec : Prop :=
  ∀ n, P3540375562370369586.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P38597686043959571

`Δ[A005187(n)]+2^val(n+1, 2)`
-/

namespace A228367.P38597686043959571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A228367.P38597686043959571

namespace A228367

/-- `Δ[A005187(n)]+2^val(n+1, 2)` -/
def P38597686043959571.Spec : Prop :=
  ∀ n, P38597686043959571.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P14103703717390612008

`and(n+1, -(n+1))+A007814(n+1)+1`
-/

namespace A228367.P14103703717390612008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) + (A007814 (n + 1) + 1)

end

end A228367.P14103703717390612008

namespace A228367

/-- `and(n+1, -(n+1))+A007814(n+1)+1` -/
def P14103703717390612008.Spec : Prop :=
  ∀ n, P14103703717390612008.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P9686636908600179578

`A000005(and(n+1, -(n+1)))+and(n+1, -(n+1))`
-/

namespace A228367.P9686636908600179578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat + Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A228367.P9686636908600179578

namespace A228367

/-- `A000005(and(n+1, -(n+1)))+and(n+1, -(n+1))` -/
def P9686636908600179578.Spec : Prop :=
  ∀ n, P9686636908600179578.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P4449565597395134489

`A005126(A007814(n+1))`
-/

namespace A228367.P4449565597395134489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 (A007814 (n + 1)).toNat

end

end A228367.P4449565597395134489

namespace A228367

/-- `A005126(A007814(n+1))` -/
def P4449565597395134489.Spec : Prop :=
  ∀ n, P4449565597395134489.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P14381410409989802913

`A062249(A006519(n+1))`
-/

namespace A228367.P14381410409989802913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (A006519 (n + 1)).toNat

end

end A228367.P14381410409989802913

namespace A228367

/-- `A062249(A006519(n+1))` -/
def P14381410409989802913.Spec : Prop :=
  ∀ n, P14381410409989802913.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P10760649499154301322

`A267471(A115364(n+1))`
-/

namespace A228367.P10760649499154301322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A115364 (n + 1)).toNat

end

end A228367.P10760649499154301322

namespace A228367

/-- `A267471(A115364(n+1))` -/
def P10760649499154301322.Spec : Prop :=
  ∀ n, P10760649499154301322.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P1002221497107017576

`A135481(n)+A085058(n)`
-/

namespace A228367.P1002221497107017576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n + A085058 n

end

end A228367.P1002221497107017576

namespace A228367

/-- `A135481(n)+A085058(n)` -/
def P1002221497107017576.Spec : Prop :=
  ∀ n, P1002221497107017576.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P17467830443156249605

`A005126(log2(A006519(n+1)))`
-/

namespace A228367.P17467830443156249605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 (SequenceMachineLib.roundAway (Real.logb 2 (A006519 (n + 1) : ℝ))).toNat

end

end A228367.P17467830443156249605

namespace A228367

/-- `A005126(log2(A006519(n+1)))` -/
def P17467830443156249605.Spec : Prop :=
  ∀ n, P17467830443156249605.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P4752065426042596923

`A005126(A001511(n+1)-1)`
-/

namespace A228367.P4752065426042596923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 (A001511 (n + 1) - 1).toNat

end

end A228367.P4752065426042596923

namespace A228367

/-- `A005126(A001511(n+1)-1)` -/
def P4752065426042596923.Spec : Prop :=
  ∀ n, P4752065426042596923.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P17098073822476870416

`A341522(n)-A101921(n+1)`
-/

namespace A228367.P17098073822476870416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n - A101921 (n + 1)

end

end A228367.P17098073822476870416

namespace A228367

/-- `A341522(n)-A101921(n+1)` -/
def P17098073822476870416.Spec : Prop :=
  ∀ n, P17098073822476870416.a n = A228367 (n + 1)

end A228367

/-! ## A228367.P15775041667494442365

`A292608(n+1)-A339597(n)`
-/

namespace A228367.P15775041667494442365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292608 (n + 1) - A339597 n

end

end A228367.P15775041667494442365

namespace A228367

/-- `A292608(n+1)-A339597(n)` -/
def P15775041667494442365.Spec : Prop :=
  ∀ n, P15775041667494442365.a n = A228367 (n + 1)

end A228367

/-!
# A228368: Difference between the n-th element of the ruler function and the highest power of 2 dividing n.

The programs for A228368, the canonical program `A228368.P14038538055200218841` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228368 has offset 1).

The definition of A228368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228368.P14038538055200218841

`A001511(n+1)-A006519(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228368

/-- `A001511(n+1)-A006519(n+1)` -/
def P14038538055200218841.Spec : Prop :=
  ∀ n, P14038538055200218841.a n = A228368 (n + 1)

theorem P14038538055200218841.correct : P14038538055200218841.Spec := by
  intro n
  simp only [A228368, Nat.add_sub_cancel]

end A228368

/-! ## A228368.P11744892877816712320

`val(n+1, 2)-and(n, -(n+2))`
-/

namespace A228368.P11744892877816712320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - Int.land (n : ℤ) (-(n + 2 : ℤ))

end

end A228368.P11744892877816712320

namespace A228368

/-- `val(n+1, 2)-and(n, -(n+2))` -/
def P11744892877816712320.Spec : Prop :=
  ∀ n, P11744892877816712320.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P6493924188421632293

`val(n+1, 2)-(n-and(n, n+1))`
-/

namespace A228368.P6493924188421632293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - ((n : ℤ) - (Nat.land n (n + 1) : ℤ))

end

end A228368.P6493924188421632293

namespace A228368

/-- `val(n+1, 2)-(n-and(n, n+1))` -/
def P6493924188421632293.Spec : Prop :=
  ∀ n, P6493924188421632293.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P6849819237127400440

`-xor(val(n+1, 2), and(n, -(n+2)))`
-/

namespace A228368.P6849819237127400440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (Int.land (n : ℤ) (-(n + 2 : ℤ)))

end

end A228368.P6849819237127400440

namespace A228368

/-- `-xor(val(n+1, 2), and(n, -(n+2)))` -/
def P6849819237127400440.Spec : Prop :=
  ∀ n, P6849819237127400440.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P5104023423769784918

`val(n+1, 2)+1-2^val(n+1, 2)`
-/

namespace A228368.P5104023423769784918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A228368.P5104023423769784918

namespace A228368

/-- `val(n+1, 2)+1-2^val(n+1, 2)` -/
def P5104023423769784918.Spec : Prop :=
  ∀ n, P5104023423769784918.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P1490472327443848804

`Δ[a(floor(n/2))+n]-and(n+1, -(n+1))` with `a(0)=0`
-/

namespace A228368.P1490472327443848804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A228368.P1490472327443848804

namespace A228368

/-- `Δ[a(floor(n/2))+n]-and(n+1, -(n+1))` -/
def P1490472327443848804.Spec : Prop :=
  ∀ n, P1490472327443848804.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P14222075513901828919

`1-A000325(val(n+1, 2))`
-/

namespace A228368.P14222075513901828919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000325 (SequenceMachineLib.valuation (n + 1) 2)

end

end A228368.P14222075513901828919

namespace A228368

/-- `1-A000325(val(n+1, 2))` -/
def P14222075513901828919.Spec : Prop :=
  ∀ n, P14222075513901828919.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P8503883266683690321

`∑{d}[A160467(n+1), 1-#]`
-/

namespace A228368.P8503883266683690321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (1 - (d : ℤ))

end

end A228368.P8503883266683690321

namespace A228368

/-- `∑{d}[A160467(n+1), 1-#]` -/
def P8503883266683690321.Spec : Prop :=
  ∀ n, P8503883266683690321.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P17824517433505610104

`-A049820(2^val(n+1, 2))`
-/

namespace A228368.P17824517433505610104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A049820 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A228368.P17824517433505610104

namespace A228368

/-- `-A049820(2^val(n+1, 2))` -/
def P17824517433505610104.Spec : Prop :=
  ∀ n, P17824517433505610104.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P12397741063134443670

`val(n+1, 2)+1-A000079(val(n+1, 2))`
-/

namespace A228368.P12397741063134443670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) - A000079 (SequenceMachineLib.valuation (n + 1) 2)

end

end A228368.P12397741063134443670

namespace A228368

/-- `val(n+1, 2)+1-A000079(val(n+1, 2))` -/
def P12397741063134443670.Spec : Prop :=
  ∀ n, P12397741063134443670.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P943646624323179937

`A007814(n+1)+1-and(n+1, -(n+1))`
-/

namespace A228368.P943646624323179937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1 - Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A228368.P943646624323179937

namespace A228368

/-- `A007814(n+1)+1-and(n+1, -(n+1))` -/
def P943646624323179937.Spec : Prop :=
  ∀ n, P943646624323179937.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P15849969570552968171

`A000005(or(n, n+1)-n)-(or(n, n+1)-n)`
-/

namespace A228368.P15849969570552968171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor n (n + 1) - n) - ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

end

end A228368.P15849969570552968171

namespace A228368

/-- `A000005(or(n, n+1)-n)-(or(n, n+1)-n)` -/
def P15849969570552968171.Spec : Prop :=
  ∀ n, P15849969570552968171.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P15290012209067552680

`A000005(and(n+1, -(n+1)))-and(n+1, -(n+1))`
-/

namespace A228368.P15290012209067552680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat - Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A228368.P15290012209067552680

namespace A228368

/-- `A000005(and(n+1, -(n+1)))-and(n+1, -(n+1))` -/
def P15290012209067552680.Spec : Prop :=
  ∀ n, P15290012209067552680.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P10482145631947039019

`1-A093048(A006519(n+1))`
-/

namespace A228368.P10482145631947039019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A093048 (A006519 (n + 1)).toNat

end

end A228368.P10482145631947039019

namespace A228368

/-- `1-A093048(A006519(n+1))` -/
def P10482145631947039019.Spec : Prop :=
  ∀ n, P10482145631947039019.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P11202659904747824947

`A007814(n+1)-A135481(n)`
-/

namespace A228368.P11202659904747824947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A135481 n

end

end A228368.P11202659904747824947

namespace A228368

/-- `A007814(n+1)-A135481(n)` -/
def P11202659904747824947.Spec : Prop :=
  ∀ n, P11202659904747824947.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P4727556157628928629

`A085058(n)-(A135481(n)+2)`
-/

namespace A228368.P4727556157628928629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n - (A135481 n + 2)

end

end A228368.P4727556157628928629

namespace A228368

/-- `A085058(n)-(A135481(n)+2)` -/
def P4727556157628928629.Spec : Prop :=
  ∀ n, P4727556157628928629.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P8481871752101331608

`A001511(n+1)-(A135481(n)+1)`
-/

namespace A228368.P8481871752101331608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - (A135481 n + 1)

end

end A228368.P8481871752101331608

namespace A228368

/-- `A001511(n+1)-(A135481(n)+1)` -/
def P8481871752101331608.Spec : Prop :=
  ∀ n, P8481871752101331608.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P8508991611836398172

`A228367(n+1)-A171977(n+1)`
-/

namespace A228368.P8508991611836398172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228367 (n + 1) - A171977 (n + 1)

end

end A228368.P8508991611836398172

namespace A228368

/-- `A228367(n+1)-A171977(n+1)` -/
def P8508991611836398172.Spec : Prop :=
  ∀ n, P8508991611836398172.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P18414122478174685233

`A090740(n+1)-A385047(n+1)`
-/

namespace A228368.P18414122478174685233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (n + 1) - A385047 (n + 1)

end

end A228368.P18414122478174685233

namespace A228368

/-- `A090740(n+1)-A385047(n+1)` -/
def P18414122478174685233.Spec : Prop :=
  ∀ n, P18414122478174685233.a n = A228368 (n + 1)

end A228368

/-! ## A228368.P6551922004141538375

`A366839(n+1)-A228367(n+1)`
-/

namespace A228368.P6551922004141538375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366839 (n + 1) - A228367 (n + 1)

end

end A228368.P6551922004141538375

namespace A228368

/-- `A366839(n+1)-A228367(n+1)` -/
def P6551922004141538375.Spec : Prop :=
  ∀ n, P6551922004141538375.a n = A228368 (n + 1)

end A228368

/-!
# A228369: Triangle read by rows in which row n lists the compositions (ordered partitions) of n in lexicographic order.

The programs for A228369, there is no canonical definition to state claims against.
-/

/-! ## A228369.P151289818566464965

`Δ[∪[A003607(n+1), A083652(n)]]`
-/

namespace A228369.P151289818566464965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228369.P151289818566464965

/-! ## A228369.P15976067666691725692

`Δ[lt[A319954(n)%2, 1]]`
-/

namespace A228369.P15976067666691725692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319954 n) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A228369.P15976067666691725692

/-! ## A228369.P14444253694069720502

`A108244(A272269(n+2))`
-/

namespace A228369.P14444253694069720502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108244 (A272269 (n + 2)).toNat

end

end A228369.P14444253694069720502

/-!
# A228370: Toothpick sequence from a diagram of compositions of the positive integers (see Comments lines for definition).

The programs for A228370, the canonical program `A228370.P14690688600162977036` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228370 has offset 0).

The definition of A228370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228370.P14690688600162977036

`A228371(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A228370

/-- `A228371(n)+a(n-1)` -/
def P14690688600162977036.Spec : Prop :=
  ∀ n, P14690688600162977036.a n = A228370 n

theorem P14690688600162977036.correct : P14690688600162977036.Spec := by
  intro n
  simp only [A228370]

end A228370

/-! ## A228370.P5812262152235604191

`∑[A228371(round(acot(n)+n))]-1`
-/

namespace A228370.P5812262152235604191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228370.P5812262152235604191

namespace A228370

/-- `∑[A228371(round(acot(n)+n))]-1` -/
def P5812262152235604191.Spec : Prop :=
  ∀ n, P5812262152235604191.a n = A228370 n

end A228370

/-! ## A228370.P14839060630342977846

`∑[A228371(abs(1-n)+1)]-1`
-/

namespace A228370.P14839060630342977846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228370.P14839060630342977846

namespace A228370

/-- `∑[A228371(abs(1-n)+1)]-1` -/
def P14839060630342977846.Spec : Prop :=
  ∀ n, P14839060630342977846.a n = A228370 n

end A228370

/-! ## A228370.P7213281282087660075

`A228366(floor(n/2))+val(n+1, 2)`
-/

namespace A228370.P7213281282087660075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228366 ⌊(n : ℚ) / 2⌋.toNat + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A228370.P7213281282087660075

namespace A228370

/-- `A228366(floor(n/2))+val(n+1, 2)` -/
def P7213281282087660075.Spec : Prop :=
  ∀ n, P7213281282087660075.a n = A228370 n

end A228370

/-! ## A228370.P11773660213968359965

`∑[A228371(round(acot((n+1)²)+n))%(n+1)]`
-/

namespace A228370.P11773660213968359965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228371 (SequenceMachineLib.roundAway (SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ) + (n : ℝ))).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228370.P11773660213968359965

namespace A228370

/-- `∑[A228371(round(acot((n+1)²)+n))%(n+1)]` -/
def P11773660213968359965.Spec : Prop :=
  ∀ n, P11773660213968359965.a n = A228370 n

end A228370

/-! ## A228370.P8401989048876570600

`A228366(floor(n/2))+A007814(n+1)`
-/

namespace A228370.P8401989048876570600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228366 ⌊(n : ℚ) / 2⌋.toNat + A007814 (n + 1)

end

end A228370.P8401989048876570600

namespace A228370

/-- `A228366(floor(n/2))+A007814(n+1)` -/
def P8401989048876570600.Spec : Prop :=
  ∀ n, P8401989048876570600.a n = A228370 n

end A228370

/-! ## A228370.P16418583812906266418

`∑[A057427(n)*A228371(A028310(n))]`
-/

namespace A228370.P16418583812906266418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A228371 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228370.P16418583812906266418

namespace A228370

/-- `∑[A057427(n)*A228371(A028310(n))]` -/
def P16418583812906266418.Spec : Prop :=
  ∀ n, P16418583812906266418.a n = A228370 n

end A228370

/-! ## A228370.P1067378632661061047

`∑[A228371(A028310(n))%A000124(n)]`
-/

namespace A228370.P1067378632661061047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228371 (A028310 n).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228370.P1067378632661061047

namespace A228370

/-- `∑[A228371(A028310(n))%A000124(n)]` -/
def P1067378632661061047.Spec : Prop :=
  ∀ n, P1067378632661061047.a n = A228370 n

end A228370

/-! ## A228370.P17258356034355618831

`∑[A115352(A342410(n))+A007814(n+1)]`
-/

namespace A228370.P17258356034355618831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115352 (A342410 n).toNat + A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228370.P17258356034355618831

namespace A228370

/-- `∑[A115352(A342410(n))+A007814(n+1)]` -/
def P17258356034355618831.Spec : Prop :=
  ∀ n, P17258356034355618831.a n = A228370 n

end A228370

/-! ## A228370.P3549028870313469700

`∑[A011620(n²)*A228371(A028310(n))]`
-/

namespace A228370.P3549028870313469700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011620 (n ^ 2) * A228371 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228370.P3549028870313469700

namespace A228370

/-- `∑[A011620(n²)*A228371(A028310(n))]` -/
def P3549028870313469700.Spec : Prop :=
  ∀ n, P3549028870313469700.a n = A228370 n

end A228370

/-!
# A228371: First differences of A228370. Also A001511 and A006519 interleaved.

The programs for A228371, the canonical program `A228371.P10828106634153068610` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228371 has offset 1).

The definition of A228371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228371.P10828106634153068610

`gcd(∑[A094267(n)], A214546(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A228371

/-- `gcd(∑[A094267(n)], A214546(n))` -/
def P10828106634153068610.Spec : Prop :=
  ∀ n, (P10828106634153068610.a n : ℤ) = A228371 (n + 1)

theorem P10828106634153068610.correct : P10828106634153068610.Spec := by
  intro n
  simp only [A228371, Nat.add_sub_cancel]

end A228371

/-! ## A228371.P1395060613013674138

`A160467(n+1)+log2(A160467(n+2))`
-/

namespace A228371.P1395060613013674138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160467 (n + 1) : ℝ) + Real.logb 2 (A160467 (n + 2) : ℝ)

end

end A228371.P1395060613013674138

namespace A228371

/-- `A160467(n+1)+log2(A160467(n+2))` -/
def P1395060613013674138.Spec : Prop :=
  ∀ n, P1395060613013674138.a n = (A228371 (n + 1) : ℝ)

end A228371

/-! ## A228371.P6289117640347615518

`A001057(A135481(n))+∑[A094267(n)]`
-/

namespace A228371.P6289117640347615518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A135481 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228371.P6289117640347615518

namespace A228371

/-- `A001057(A135481(n))+∑[A094267(n)]` -/
def P6289117640347615518.Spec : Prop :=
  ∀ n, P6289117640347615518.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P2123305952841259183

`A160467(n+1)+A007814(A029579(n))`
-/

namespace A228371.P2123305952841259183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) + A007814 (A029579 n).toNat

end

end A228371.P2123305952841259183

namespace A228371

/-- `A160467(n+1)+A007814(A029579(n))` -/
def P2123305952841259183.Spec : Prop :=
  ∀ n, P2123305952841259183.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P209388992984175856

`A131577(A007814(n+1))+∑[A094267(n)]`
-/

namespace A228371.P209388992984175856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A007814 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228371.P209388992984175856

namespace A228371

/-- `A131577(A007814(n+1))+∑[A094267(n)]` -/
def P209388992984175856.Spec : Prop :=
  ∀ n, P209388992984175856.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P13351362050933685323

`A000120(A140670(n+2))*A160467(n+1)`
-/

namespace A228371.P13351362050933685323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A140670 (n + 2)).toNat * A160467 (n + 1)

end

end A228371.P13351362050933685323

namespace A228371

/-- `A000120(A140670(n+2))*A160467(n+1)` -/
def P13351362050933685323.Spec : Prop :=
  ∀ n, P13351362050933685323.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P2961558515465312990

`Δ[A228370(n)]`
-/

namespace A228371.P2961558515465312990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228371.P2961558515465312990

namespace A228371

/-- `Δ[A228370(n)]` -/
def P2961558515465312990.Spec : Prop :=
  ∀ n, P2961558515465312990.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P10094166354151322705

`A228370(n+1)-A228370(n)`
-/

namespace A228371.P10094166354151322705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228370 (n + 1) - A228370 n

end

end A228371.P10094166354151322705

namespace A228371

/-- `A228370(n+1)-A228370(n)` -/
def P10094166354151322705.Spec : Prop :=
  ∀ n, P10094166354151322705.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P16078393500244560422

`gcd(Δ[A140472(n)], A007814(n+2))`
-/

namespace A228371.P16078393500244560422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A007814 (n + 2))

end

end A228371.P16078393500244560422

namespace A228371

/-- `gcd(Δ[A140472(n)], A007814(n+2))` -/
def P16078393500244560422.Spec : Prop :=
  ∀ n, (P16078393500244560422.a n : ℤ) = A228371 (n + 1)

end A228371

/-! ## A228371.P17148911450073918976

`A007814(n+2)+A001057(A135481(n))`
-/

namespace A228371.P17148911450073918976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2) + A001057 (A135481 n).toNat

end

end A228371.P17148911450073918976

namespace A228371

/-- `A007814(n+2)+A001057(A135481(n))` -/
def P17148911450073918976.Spec : Prop :=
  ∀ n, P17148911450073918976.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P12431011812833442444

`A007814(n+2)+A004526(A006519(n+1))`
-/

namespace A228371.P12431011812833442444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2) + A004526 (A006519 (n + 1)).toNat

end

end A228371.P12431011812833442444

namespace A228371

/-- `A007814(n+2)+A004526(A006519(n+1))` -/
def P12431011812833442444.Spec : Prop :=
  ∀ n, P12431011812833442444.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P3282885711421657867

`A131577(A007814(n+1))+A007814(n+2)`
-/

namespace A228371.P3282885711421657867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A007814 (n + 1)).toNat + A007814 (n + 2)

end

end A228371.P3282885711421657867

namespace A228371

/-- `A131577(A007814(n+1))+A007814(n+2)` -/
def P3282885711421657867.Spec : Prop :=
  ∀ n, P3282885711421657867.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P3135165966596815234

`A094373(A007814(n+1))-Δ[A000120(n+1)]`
-/

namespace A228371.P3135165966596815234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A007814 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A228371.P3135165966596815234

namespace A228371

/-- `A094373(A007814(n+1))-Δ[A000120(n+1)]` -/
def P3135165966596815234.Spec : Prop :=
  ∀ n, P3135165966596815234.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P3552263622875550553

`A001511(n+2)+A135481(n)-A160467(n+1)`
-/

namespace A228371.P3552263622875550553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2) + (A135481 n - A160467 (n + 1))

end

end A228371.P3552263622875550553

namespace A228371

/-- `A001511(n+2)+A135481(n)-A160467(n+1)` -/
def P3552263622875550553.Spec : Prop :=
  ∀ n, P3552263622875550553.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P2802638099756620365

`A007814(n+2)+A000035(n)*A160467(n+1)`
-/

namespace A228371.P2802638099756620365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2) + A000035 n * A160467 (n + 1)

end

end A228371.P2802638099756620365

namespace A228371

/-- `A007814(n+2)+A000035(n)*A160467(n+1)` -/
def P2802638099756620365.Spec : Prop :=
  ∀ n, P2802638099756620365.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P12849984988093115658

`A160467(n+1)+A007814(n+2)-A000035(n+1)`
-/

namespace A228371.P12849984988093115658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) + (A007814 (n + 2) - A000035 (n + 1))

end

end A228371.P12849984988093115658

namespace A228371

/-- `A160467(n+1)+A007814(n+2)-A000035(n+1)` -/
def P12849984988093115658.Spec : Prop :=
  ∀ n, P12849984988093115658.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P14730406763491775470

`A006519(n+1)+A007814(n+2)-A160467(n+1)`
-/

namespace A228371.P14730406763491775470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + (A007814 (n + 2) - A160467 (n + 1))

end

end A228371.P14730406763491775470

namespace A228371

/-- `A006519(n+1)+A007814(n+2)-A160467(n+1)` -/
def P14730406763491775470.Spec : Prop :=
  ∀ n, P14730406763491775470.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P14427387680310643648

`A001511(n+2)*A006519(n+1)-A160467(n+1)`
-/

namespace A228371.P14427387680310643648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2) * A006519 (n + 1) - A160467 (n + 1)

end

end A228371.P14427387680310643648

namespace A228371

/-- `A001511(n+2)*A006519(n+1)-A160467(n+1)` -/
def P14427387680310643648.Spec : Prop :=
  ∀ n, P14427387680310643648.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P9628185741988965159

`A026741(A160467(2*(n+1)))+A007814(A160467(n+2))`
-/

namespace A228371.P9628185741988965159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A160467 (2 * (n + 1))).toNat + A007814 (A160467 (n + 2)).toNat

end

end A228371.P9628185741988965159

namespace A228371

/-- `A026741(A160467(2*(n+1)))+A007814(A160467(n+2))` -/
def P9628185741988965159.Spec : Prop :=
  ∀ n, P9628185741988965159.a n = A228371 (n + 1)

end A228371

/-! ## A228371.P16660085794751826802

`A160467(A160467(2*n+2))+A007814(A160467(n+2))`
-/

namespace A228371.P16660085794751826802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (A160467 (2 * n + 2)).toNat + A007814 (A160467 (n + 2)).toNat

end

end A228371.P16660085794751826802

namespace A228371

/-- `A160467(A160467(2*n+2))+A007814(A160467(n+2))` -/
def P16660085794751826802.Spec : Prop :=
  ∀ n, P16660085794751826802.a n = A228371 (n + 1)

end A228371

/-!
# A228372: Number of nontrivial divisors in the first n composites.

The programs for A228372, the canonical program `A228372.P12115013803354651000` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228372 has offset 1).

The definition of A228372 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228372.P12115013803354651000

`A006218(A002808(n+1))-2*A002808(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228372

/-- `A006218(A002808(n+1))-2*A002808(n+1)+1` -/
def P12115013803354651000.Spec : Prop :=
  ∀ n, P12115013803354651000.a n = A228372 (n + 1)

theorem P12115013803354651000.correct : P12115013803354651000.Spec := by
  intro n
  simp only [A228372, Nat.add_sub_cancel]

end A228372

/-! ## A228372.P2038385578635250559

`∑[A144925(n+1)]`
-/

namespace A228372.P2038385578635250559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P2038385578635250559

namespace A228372

/-- `∑[A144925(n+1)]` -/
def P2038385578635250559.Spec : Prop :=
  ∀ n, P2038385578635250559.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P1207547062092118127

`record[A006218(n)-2*n+1]`
-/

namespace A228372.P1207547062092118127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (2 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228372.P1207547062092118127

namespace A228372

/-- `record[A006218(n)-2*n+1]` -/
def P1207547062092118127.Spec : Prop :=
  ∀ n, P1207547062092118127.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P9342728655011425411

`record[A000005(n)+a(n-1)-2]` with `a(0)=1`
-/

namespace A228372.P9342728655011425411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000005 n + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228372.P9342728655011425411

namespace A228372

/-- `record[A000005(n)+a(n-1)-2]` -/
def P9342728655011425411.Spec : Prop :=
  ∀ n, P9342728655011425411.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P1672483059477311412

`∑[∏{e}[comp[A158611(n+1)], #+1]-2]`
-/

namespace A228372.P1672483059477311412
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P1672483059477311412

namespace A228372

/-- `∑[∏{e}[comp[A158611(n+1)], #+1]-2]` -/
def P1672483059477311412.Spec : Prop :=
  ∀ n, P1672483059477311412.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P3230971992440171943

`∑[∏{e}[A056653(n+1), #+1]]-2*n`
-/

namespace A228372.P3230971992440171943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)

end

end A228372.P3230971992440171943

namespace A228372

/-- `∑[∏{e}[A056653(n+1), #+1]]-2*n` -/
def P3230971992440171943.Spec : Prop :=
  ∀ n, P3230971992440171943.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P15006038425641867374

`∑[A000005(A002808(n+1))-2]`
-/

namespace A228372.P15006038425641867374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002808 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P15006038425641867374

namespace A228372

/-- `∑[A000005(A002808(n+1))-2]` -/
def P15006038425641867374.Spec : Prop :=
  ∀ n, P15006038425641867374.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P564800944040905199

`∑[A000005(A018252(n+2))-2]`
-/

namespace A228372.P564800944040905199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018252 (n + 2)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P564800944040905199

namespace A228372

/-- `∑[A000005(A018252(n+2))-2]` -/
def P564800944040905199.Spec : Prop :=
  ∀ n, P564800944040905199.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P12219687953489706607

`∑[A035004(n+2)-2]`
-/

namespace A228372.P12219687953489706607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P12219687953489706607

namespace A228372

/-- `∑[A035004(n+2)-2]` -/
def P12219687953489706607.Spec : Prop :=
  ∀ n, P12219687953489706607.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P3781898966054008515

`record[A054519(n)-2*n]`
-/

namespace A228372.P3781898966054008515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228372.P3781898966054008515

namespace A228372

/-- `record[A054519(n)-2*n]` -/
def P3781898966054008515.Spec : Prop :=
  ∀ n, P3781898966054008515.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P14766309245605932584

`A325459(A002808(n+1))`
-/

namespace A228372.P14766309245605932584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (A002808 (n + 1)).toNat

end

end A228372.P14766309245605932584

namespace A228372

/-- `A325459(A002808(n+1))` -/
def P14766309245605932584.Spec : Prop :=
  ∀ n, P14766309245605932584.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P6602736063692068978

`A325459(A118742(n+1))`
-/

namespace A228372.P6602736063692068978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (A118742 (n + 1)).toNat

end

end A228372.P6602736063692068978

namespace A228372

/-- `A325459(A118742(n+1))` -/
def P6602736063692068978.Spec : Prop :=
  ∀ n, P6602736063692068978.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P16637730490915576799

`A325459(A018252(n+2))`
-/

namespace A228372.P16637730490915576799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (A018252 (n + 2)).toNat

end

end A228372.P16637730490915576799

namespace A228372

/-- `A325459(A018252(n+2))` -/
def P16637730490915576799.Spec : Prop :=
  ∀ n, P16637730490915576799.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P15108872848065127300

`A325459(A072668(n+2))`
-/

namespace A228372.P15108872848065127300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (A072668 (n + 2)).toNat

end

end A228372.P15108872848065127300

namespace A228372

/-- `A325459(A072668(n+2))` -/
def P15108872848065127300.Spec : Prop :=
  ∀ n, P15108872848065127300.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P11795184736960524723

`∑[A264440(A056653(n+1))]`
-/

namespace A228372.P11795184736960524723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264440 (A056653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P11795184736960524723

namespace A228372

/-- `∑[A264440(A056653(n+1))]` -/
def P11795184736960524723.Spec : Prop :=
  ∀ n, P11795184736960524723.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P5230286465176771895

`∑[A032741(lt[1, A032741(n)])-1]`
-/

namespace A228372.P5230286465176771895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P5230286465176771895

namespace A228372

/-- `∑[A032741(lt[1, A032741(n)])-1]` -/
def P5230286465176771895.Spec : Prop :=
  ∀ n, P5230286465176771895.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P8655727282484748879

`∑[A032741(comp[A000040(n+1)-4]+4)-1]`
-/

namespace A228372.P8655727282484748879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P8655727282484748879

namespace A228372

/-- `∑[A032741(comp[A000040(n+1)-4]+4)-1]` -/
def P8655727282484748879.Spec : Prop :=
  ∀ n, P8655727282484748879.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P4178291329872473314

`∑[A000005(A067747(2*(n+1)))-2]`
-/

namespace A228372.P4178291329872473314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A067747 (2 * (n + 1))).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P4178291329872473314

namespace A228372

/-- `∑[A000005(A067747(2*(n+1)))-2]` -/
def P4178291329872473314.Spec : Prop :=
  ∀ n, P4178291329872473314.a n = A228372 (n + 1)

end A228372

/-! ## A228372.P14043148075913138099

`∑[A070824(A129401(n+1))]`
-/

namespace A228372.P14043148075913138099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A129401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228372.P14043148075913138099

namespace A228372

/-- `∑[A070824(A129401(n+1))]` -/
def P14043148075913138099.Spec : Prop :=
  ∀ n, P14043148075913138099.a n = A228372 (n + 1)

end A228372

/-!
# A228373: Numbers k such that 27*k + 1 is not prime.

The programs for A228373, the canonical program `A228373.P17418446565799431339` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228373 has offset 1).

The definition of A228373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228373.P17418446565799431339

`comp[A224467(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228373

/-- `comp[A224467(n+1)]` -/
def P17418446565799431339.Spec : Prop :=
  ∀ n, (P17418446565799431339.a n : ℤ) = A228373 (n + 1)

theorem P17418446565799431339.correct : P17418446565799431339.Spec := by
  intro n
  simp only [A228373, Nat.add_sub_cancel]

end A228373

/-! ## A228373.P531603248706751945

`lt[∑{p}[27*n+1, #], 27*n+1]`
-/

namespace A228373.P531603248706751945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A228373.P531603248706751945

namespace A228373

/-- `lt[∑{p}[27*n+1, #], 27*n+1]` -/
def P531603248706751945.Spec : Prop :=
  ∀ n, (P531603248706751945.a n : ℤ) = A228373 (n + 1)

end A228373

/-! ## A228373.P16524570385191135628

`eq[0, A010051(27*n+1)]`
-/

namespace A228373.P16524570385191135628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (27 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228373.P16524570385191135628

namespace A228373

/-- `eq[0, A010051(27*n+1)]` -/
def P16524570385191135628.Spec : Prop :=
  ∀ n, (P16524570385191135628.a n : ℤ) = A228373 (n + 1)

end A228373

/-! ## A228373.P72763108999537789

`lt[A006530(A056081(2*n+1)), A056081(n+2)]`
-/

namespace A228373.P72763108999537789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056081 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228373.P72763108999537789

namespace A228373

/-- `lt[A006530(A056081(2*n+1)), A056081(n+2)]` -/
def P72763108999537789.Spec : Prop :=
  ∀ n, (P72763108999537789.a n : ℤ) = A228373 (n + 1)

end A228373

/-! ## A228373.P521574554640750296

`eq[A285700(27*n+1), 0]`
-/

namespace A228373.P521574554640750296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (27 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A228373.P521574554640750296

namespace A228373

/-- `eq[A285700(27*n+1), 0]` -/
def P521574554640750296.Spec : Prop :=
  ∀ n, (P521574554640750296.a n : ℤ) = A228373 (n + 1)

end A228373

/-! ## A228373.P8464136088783014052

`eq[1, A014973(27*n+1)]`
-/

namespace A228373.P8464136088783014052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (27 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228373.P8464136088783014052

namespace A228373

/-- `eq[1, A014973(27*n+1)]` -/
def P8464136088783014052.Spec : Prop :=
  ∀ n, (P8464136088783014052.a n : ℤ) = A228373 (n + 1)

end A228373

/-! ## A228373.P3438289618841422861

`eq[0, A085090(A008619(A305548(n)))]`
-/

namespace A228373.P3438289618841422861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (A008619 (A305548 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228373.P3438289618841422861

namespace A228373

/-- `eq[0, A085090(A008619(A305548(n)))]` -/
def P3438289618841422861.Spec : Prop :=
  ∀ n, (P3438289618841422861.a n : ℤ) = A228373 (n + 1)

end A228373

/-! ## A228373.P6008890340842436659

`eq[A007920(3*9*n), A254667(A007920(3*9*n))]`
-/

namespace A228373.P6008890340842436659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (3 * (9 * n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A007920 (3 * (9 * n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228373.P6008890340842436659

namespace A228373

/-- `eq[A007920(3*9*n), A254667(A007920(3*9*n))]` -/
def P6008890340842436659.Spec : Prop :=
  ∀ n, (P6008890340842436659.a n : ℤ) = A228373 (n + 1)

end A228373

/-!
# A228374: Numbers k such that 2*prime(k) - prime(k+1) is not prime.

The programs for A228374, the canonical program `A228374.P4332640910458039691` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228374 has offset 1).

The definition of A228374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228374.P14999458919554356829

`comp[A216075(n+1)-1]+1`
-/

namespace A228374.P14999458919554356829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216075 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228374.P14999458919554356829

namespace A228374

/-- `comp[A216075(n+1)-1]+1` -/
def P14999458919554356829.Spec : Prop :=
  ∀ n, (P14999458919554356829.a n : ℤ) = A228374 (n + 1)

end A228374

/-! ## A228374.P14357114801592394899

`eq[char[A216075(n+1)], A000007(n)]`
-/

namespace A228374.P14357114801592394899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228374.P14357114801592394899

namespace A228374

/-- `eq[char[A216075(n+1)], A000007(n)]` -/
def P14357114801592394899.Spec : Prop :=
  ∀ n, (P14357114801592394899.a n : ℤ) = A228374 (n + 1)

end A228374

/-! ## A228374.P7283219008858403185

`eq[char[A216075(n+1)], A000038(n)]`
-/

namespace A228374.P7283219008858403185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228374.P7283219008858403185

namespace A228374

/-- `eq[char[A216075(n+1)], A000038(n)]` -/
def P7283219008858403185.Spec : Prop :=
  ∀ n, (P7283219008858403185.a n : ℤ) = A228374 (n + 1)

end A228374

/-! ## A228374.P4332640910458039691

`eq[0, A049084(A062234(n+1))]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228374

/-- `eq[0, A049084(A062234(n+1))]+1` -/
def P4332640910458039691.Spec : Prop :=
  ∀ n, (P4332640910458039691.a n : ℤ) = A228374 (n + 1)

theorem P4332640910458039691.correct : P4332640910458039691.Spec := by
  intro n
  simp only [A228374, Nat.add_sub_cancel]

end A228374

/-! ## A228374.P7048891936660279804

`eq[char[A216075(n+1)], A019590(n+2)]`
-/

namespace A228374.P7048891936660279804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228374.P7048891936660279804

namespace A228374

/-- `eq[char[A216075(n+1)], A019590(n+2)]` -/
def P7048891936660279804.Spec : Prop :=
  ∀ n, (P7048891936660279804.a n : ℤ) = A228374 (n + 1)

end A228374

/-! ## A228374.P9515194482865731837

`eq[char[A216075(n+1)], A151933(n)]`
-/

namespace A228374.P9515194482865731837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A228374.P9515194482865731837

namespace A228374

/-- `eq[char[A216075(n+1)], A151933(n)]` -/
def P9515194482865731837.Spec : Prop :=
  ∀ n, (P9515194482865731837.a n : ℤ) = A228374 (n + 1)

end A228374

/-!
# A228378: Numbers k such that tb(k) = tb(k+1) where tb(k) = A048784(k) is the number of divisors of binomial(2*k, k).

The programs for A228378, there is no canonical definition to state claims against.
-/

/-! ## A228378.P5333718590501204251

`eq[A048784(abs(1-n)), A048784(n)]`
-/

namespace A228378.P5333718590501204251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048784 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228378.P5333718590501204251

/-! ## A228378.P825165791584100588

`eq[A048784(n+1), A048784(n)]+1`
-/

namespace A228378.P825165791584100588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A228378.P825165791584100588

/-! ## A228378.P8056128654868700767

`A020725(eq[A048784(n+1), A048784(n)])`
-/

namespace A228378.P8056128654868700767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228378.P8056128654868700767

/-! ## A228378.P4972884471991749042

`A020725(eq[A034974(2*(n+1)), A034974(n-(1-n)%(n+1)+1)])`
-/

namespace A228378.P4972884471991749042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228378.P4972884471991749042

/-! ## A228378.P10665532110602428017

`A020725(eq[A034974(2*(n+1)), A034974(floor(n²/(n+1)+n)+1)])`
-/

namespace A228378.P10665532110602428017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (⌊(n ^ 2 : ℚ) / (n + 1 : ℚ) + (n : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228378.P10665532110602428017

/-!
# A228381: Unabridged sub-Kaprekar numbers (A118936, but allowing powers of ten).

The programs for A228381, there is no canonical definition to state claims against.
-/

/-! ## A228381.P10859631958012750202

`sqrt(A228103(n+1))`
-/

namespace A228381.P10859631958012750202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A228103 (n + 1) : ℝ)

end

end A228381.P10859631958012750202

/-! ## A228381.P8979563946348907045

`root(A228103(n+1), lcm(2, A033999(n)))`
-/

namespace A228381.P8979563946348907045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A228103 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A033999 n) : ℝ))

end

end A228381.P8979563946348907045

/-! ## A228381.P15915119472580907505

`root(A228103(n+1), A001316(A001316(n)))`
-/

namespace A228381.P15915119472580907505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A228103 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A228381.P15915119472580907505

/-! ## A228381.P530015244974795765

`root(A228103(n+1), 2%A118938(n+1))`
-/

namespace A228381.P530015244974795765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A228103 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A118938 (n + 1)) : ℝ))

end

end A228381.P530015244974795765

/-! ## A228381.P1853406137948703566

`root(A228103(n+1), ratio[A000079(n)])`
-/

namespace A228381.P1853406137948703566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A228103 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A228381.P1853406137948703566

/-!
# A228382: Abundant numbers that differ from the next abundant number by 3.

The programs for A228382, the canonical program `A228382.P1375136025872469721` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228382 has offset 1).

The definition of A228382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316095, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228382.P1375136025872469721

`A005101(A316095(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A228382

/-- `A005101(A316095(n+1))` -/
def P1375136025872469721.Spec : Prop :=
  ∀ n, P1375136025872469721.a n = A228382 (n + 1)

theorem P1375136025872469721.correct : P1375136025872469721.Spec := by
  intro n
  simp only [A228382, Nat.add_sub_cancel]

end A228382

/-!
# A228383: Area A of the triangle such that A, the sides, and the inradius are integers.

The programs for A228383, there is no canonical definition to state claims against.
-/

/-! ## A228383.P7010934281328880954

`∪[A230195(n+1), A230491(n+1)]%A208984(3*n+1)`
-/

namespace A228383.P7010934281328880954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230491 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A208984 (3 * n + 1))

end

end A228383.P7010934281328880954

/-! ## A228383.P7351155718745580466

`∑[gcd(36, A174313(3*n+1))]`
-/

namespace A228383.P7351155718745580466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 36 (A174313 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228383.P7351155718745580466

/-! ## A228383.P6505515987502186538

`∑[A004016(A213833(n+1)²)]`
-/

namespace A228383.P6505515987502186538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A213833 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228383.P6505515987502186538

/-! ## A228383.P18349902902786113247

`∑[A004016(A001952(3*n+1)²)]`
-/

namespace A228383.P18349902902786113247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A001952 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228383.P18349902902786113247

/-!
# A228384: Number of n X n binary arrays with top left value 1 and no two ones adjacent horizontally or vertically.

The programs for A228384, there is no canonical definition to state claims against.
-/

/-! ## A228384.P12462448875362887181

`A228390(∑[4*n]+1)`
-/

namespace A228384.P12462448875362887181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228384.P12462448875362887181

/-! ## A228384.P17094858950688149972

`record[A003982(n)*A228390(n+1)]`
-/

namespace A228384.P17094858950688149972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A228390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228384.P17094858950688149972

/-! ## A228384.P8737139648049218487

`record[gcd(A204016(n+1), A228390(n+1))]`
-/

namespace A228384.P8737139648049218487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A228390 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228384.P8737139648049218487

/-! ## A228384.P15201192252697618609

`gcd(A000038(n), A228390(A001844(n)))`
-/

namespace A228384.P15201192252697618609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A228390 (A001844 n).toNat)

end

end A228384.P15201192252697618609

/-! ## A228384.P9605880150994645113

`A228390(A001844(n))+A008683(4*(n+1))`
-/

namespace A228384.P9605880150994645113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A228384.P9605880150994645113

/-!
# A228385: Number of n X 3 binary arrays with top left value 1 and no two ones adjacent horizontally or vertically.

The programs for A228385, the canonical program `A228385.P1270420214992486823` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228385 has offset 1).

The definition of A228385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228385.P1270420214992486823

`2*a(n-1)+6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=21, a(3)=72`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228385

/-- `2*a(n-1)+6*a(n-2)-a(n-4)` -/
def P1270420214992486823.Spec : Prop :=
  ∀ n, P1270420214992486823.a n = A228385 (n + 1)

theorem P1270420214992486823.correct : P1270420214992486823.Spec := by
  intro n
  simp only [A228385, Nat.add_sub_cancel]

end A228385

/-! ## A228385.P10669188604012784807

`A228390(∑[n+2]+4)`
-/

namespace A228385.P10669188604012784807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228385.P10669188604012784807

namespace A228385

/-- `A228390(∑[n+2]+4)` -/
def P10669188604012784807.Spec : Prop :=
  ∀ n, P10669188604012784807.a n = A228385 (n + 1)

end A228385

/-! ## A228385.P16482205053545398609

`lcm((-1)^n, A228390(A167614(n+1)))`
-/

namespace A228385.P16482205053545398609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A228390 (A167614 (n + 1)).toNat)

end

end A228385.P16482205053545398609

namespace A228385

/-- `lcm((-1)^n, A228390(A167614(n+1)))` -/
def P16482205053545398609.Spec : Prop :=
  ∀ n, (P16482205053545398609.a n : ℤ) = A228385 (n + 1)

end A228385

/-! ## A228385.P11027004970584244070

`A228390(A167614(n+1))%A038192(n)`
-/

namespace A228385.P11027004970584244070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228390 (A167614 (n + 1)).toNat) (A038192 n)

end

end A228385.P11027004970584244070

namespace A228385

/-- `A228390(A167614(n+1))%A038192(n)` -/
def P11027004970584244070.Spec : Prop :=
  ∀ n, P11027004970584244070.a n = A228385 (n + 1)

end A228385

/-!
# A228386: Number of n X 4 binary arrays with top left value 1 and no two ones adjacent horizontally or vertically.

The programs for A228386, there is no canonical definition to state claims against.
-/

/-! ## A228386.P12298074319835588903

`A228390(A374004(n+1))`
-/

namespace A228386.P12298074319835588903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A374004 (n + 1)).toNat

end

end A228386.P12298074319835588903

/-! ## A228386.P4267676826093079344

`A228390(A055999(n)+10)`
-/

namespace A228386.P4267676826093079344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A055999 n + 10).toNat

end

end A228386.P4267676826093079344

/-! ## A228386.P3423445434829134886

`A228390(A167614(n+2)+1)`
-/

namespace A228386.P3423445434829134886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A167614 (n + 2) + 1).toNat

end

end A228386.P3423445434829134886

/-! ## A228386.P540545148267667641

`A228390(A112355(n+1)+4)`
-/

namespace A228386.P540545148267667641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A112355 (n + 1) + 4).toNat

end

end A228386.P540545148267667641

/-! ## A228386.P14014447153665764049

`A228390(A000217(n+3)+4)`
-/

namespace A228386.P14014447153665764049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A000217 (n + 3) + 4).toNat

end

end A228386.P14014447153665764049

/-!
# A228387: Number of nX5 binary arrays with top left value 1 and no two ones adjacent horizontally or vertically.

The programs for A228387, there is no canonical definition to state claims against.
-/

/-! ## A228387.P10175049587995260915

`A228390(A374005(n+1))`
-/

namespace A228387.P10175049587995260915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A374005 (n + 1)).toNat

end

end A228387.P10175049587995260915

/-! ## A228387.P18392835983983593300

`A228390(A167499(n+3))`
-/

namespace A228387.P18392835983983593300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A167499 (n + 3)).toNat

end

end A228387.P18392835983983593300

/-! ## A228387.P16406949973314247899

`A228390(A155212(n)+13)`
-/

namespace A228387.P16406949973314247899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A155212 n + 13).toNat

end

end A228387.P16406949973314247899

/-! ## A228387.P8536694722193409587

`A228390(A055999(n+1)+11)`
-/

namespace A228387.P8536694722193409587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A055999 (n + 1) + 11).toNat

end

end A228387.P8536694722193409587

/-! ## A228387.P13259271721472424800

`A228390(eq[6, A131818(n+1)])`
-/

namespace A228387.P13259271721472424800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228387.P13259271721472424800

/-!
# A228388: Number of nX6 binary arrays with top left value 1 and no two ones adjacent horizontally or vertically.

The programs for A228388, there is no canonical definition to state claims against.
-/

/-! ## A228388.P13713036635242915618

`A228390(A374007(n+1))`
-/

namespace A228388.P13713036635242915618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A374007 (n + 1)).toNat

end

end A228388.P13713036635242915618

/-! ## A228388.P6692055517242967437

`A228390(eq[7, A131818(n+1)])`
-/

namespace A228388.P6692055517242967437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228388.P6692055517242967437

/-! ## A228388.P5300469182827175849

`A228390(A052905(n+3))`
-/

namespace A228388.P5300469182827175849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A052905 (n + 3)).toNat

end

end A228388.P5300469182827175849

/-! ## A228388.P2509800396968845896

`A228390(A302537(n)+15)`
-/

namespace A228388.P2509800396968845896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A302537 n + 15).toNat

end

end A228388.P2509800396968845896

/-! ## A228388.P8753526093319026313

`A228390(eq[3, A219347(n)])`
-/

namespace A228388.P8753526093319026313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228388.P8753526093319026313

/-!
# A228389: Number of n X 7 binary arrays with top left value 1 and no two 1's adjacent horizontally or vertically.

The programs for A228389, there is no canonical definition to state claims against.
-/

/-! ## A228389.P3049970392396192776

`A228390(A374008(n+1))`
-/

namespace A228389.P3049970392396192776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A374008 (n + 1)).toNat

end

end A228389.P3049970392396192776

/-! ## A228389.P1127911839271411480

`A228390(eq[8, A131818(n+1)])`
-/

namespace A228389.P1127911839271411480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228389.P1127911839271411480

/-! ## A228389.P6753886712047515325

`A228390(A055999(n+4))`
-/

namespace A228389.P6753886712047515325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (A055999 (n + 4)).toNat

end

end A228389.P6753886712047515325

/-! ## A228389.P2350276559008195597

`A228390(eq[4, A219347(n)])`
-/

namespace A228389.P2350276559008195597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228389.P2350276559008195597

/-! ## A228389.P8253595282489578004

`A228390(eq[6, A193592(n)])`
-/

namespace A228389.P8253595282489578004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228389.P8253595282489578004

/-!
# A228390: T(n,k)=Number of nXk binary arrays with top left value 1 and no two ones adjacent horizontally or vertically.

The programs for A228390, there is no canonical definition to state claims against.
-/

/-! ## A228390.P7768873958720807401

`A060471(A036355(n))%A137674(2*(n+1))`
-/

namespace A228390.P7768873958720807401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060471 (A036355 n).toNat) (A137674 (2 * (n + 1)))

end

end A228390.P7768873958720807401

/-! ## A228390.P3793185411241647349

`A331206(A304718(n))%A331205(A304718(n))`
-/

namespace A228390.P3793185411241647349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331206 (A304718 n).toNat) (A331205 (A304718 n).toNat)

end

end A228390.P3793185411241647349

/-! ## A228390.P1371476811149721583

`A331206(A304718(n)%A331205(n))`
-/

namespace A228390.P1371476811149721583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331206 (Int.tmod (A304718 n) (A331205 n)).toNat

end

end A228390.P1371476811149721583

/-!
# A228391: Volume of elliptic cone (rounded down) with semi-minor axis = height = n and semi-major axis = 3*n/2.

The programs for A228391, the canonical program `A228391.P7579944260834308347` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228391 has offset 1).

The definition of A228391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228391.P1110375610908706088

`ceil((n+1)^3*acos(0))-A168066(A052163(n+1))`
-/

namespace A228391.P1110375610908706088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 3 : ℝ) * Real.arccos (0 : ℝ)⌉ - A168066 (A052163 (n + 1)).toNat

end

end A228391.P1110375610908706088

namespace A228391

/-- `ceil((n+1)^3*acos(0))-A168066(A052163(n+1))` -/
def P1110375610908706088.Spec : Prop :=
  ∀ n, P1110375610908706088.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P1450212581061688589

`A248198(n+1)-A168066(A052163(n+1))`
-/

namespace A228391.P1450212581061688589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A168066 (A052163 (n + 1)).toNat

end

end A228391.P1450212581061688589

namespace A228391

/-- `A248198(n+1)-A168066(A052163(n+1))` -/
def P1450212581061688589.Spec : Prop :=
  ∀ n, P1450212581061688589.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P2532974874108113108

`ceil((n+1)^3*acos(0))-A008975(A000096(n))`
-/

namespace A228391.P2532974874108113108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 3 : ℝ) * Real.arccos (0 : ℝ)⌉ - A008975 (A000096 n).toNat

end

end A228391.P2532974874108113108

namespace A228391

/-- `ceil((n+1)^3*acos(0))-A008975(A000096(n))` -/
def P2532974874108113108.Spec : Prop :=
  ∀ n, P2532974874108113108.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P10253990303653119205

`ceil((n+1)^3*acos(0))-A008975(A000217(n))`
-/

namespace A228391.P10253990303653119205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 3 : ℝ) * Real.arccos (0 : ℝ)⌉ - A008975 (A000217 n).toNat

end

end A228391.P10253990303653119205

namespace A228391

/-- `ceil((n+1)^3*acos(0))-A008975(A000217(n))` -/
def P10253990303653119205.Spec : Prop :=
  ∀ n, P10253990303653119205.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P17692456562072737720

`A033999(A086135(n+1))+ceil((n+1)^3*acos(0))`
-/

namespace A228391.P17692456562072737720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A086135 (n + 1)).toNat + ⌈((n + 1) ^ 3 : ℝ) * Real.arccos (0 : ℝ)⌉

end

end A228391.P17692456562072737720

namespace A228391

/-- `A033999(A086135(n+1))+ceil((n+1)^3*acos(0))` -/
def P17692456562072737720.Spec : Prop :=
  ∀ n, P17692456562072737720.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P14092467600134064023

`A057428(A085079(n+1))+ceil((n+1)^3*acos(0))`
-/

namespace A228391.P14092467600134064023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A085079 (n + 1)).toNat + ⌈((n + 1) ^ 3 : ℝ) * Real.arccos (0 : ℝ)⌉

end

end A228391.P14092467600134064023

namespace A228391

/-- `A057428(A085079(n+1))+ceil((n+1)^3*acos(0))` -/
def P14092467600134064023.Spec : Prop :=
  ∀ n, P14092467600134064023.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P7579944260834308347

`A248198(n+1)-A008975(A000096(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228391

/-- `A248198(n+1)-A008975(A000096(n))` -/
def P7579944260834308347.Spec : Prop :=
  ∀ n, P7579944260834308347.a n = A228391 (n + 1)

theorem P7579944260834308347.correct : P7579944260834308347.Spec := by
  intro n
  simp only [A228391, Nat.add_sub_cancel]

end A228391

/-! ## A228391.P15517696500066326695

`A248198(n+1)-A008975(A000217(n))`
-/

namespace A228391.P15517696500066326695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A008975 (A000217 n).toNat

end

end A228391.P15517696500066326695

namespace A228391

/-- `A248198(n+1)-A008975(A000217(n))` -/
def P15517696500066326695.Spec : Prop :=
  ∀ n, P15517696500066326695.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P3105618320521419545

`A248198(n+1)+A057428(A085079(n+1))`
-/

namespace A228391.P3105618320521419545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) + A057428 (A085079 (n + 1)).toNat

end

end A228391.P3105618320521419545

namespace A228391

/-- `A248198(n+1)+A057428(A085079(n+1))` -/
def P3105618320521419545.Spec : Prop :=
  ∀ n, P3105618320521419545.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P7138726998752712853

`A248198(n+1)-A028234(A086135(n+1))`
-/

namespace A228391.P7138726998752712853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A028234 (A086135 (n + 1)).toNat

end

end A228391.P7138726998752712853

namespace A228391

/-- `A248198(n+1)-A028234(A086135(n+1))` -/
def P7138726998752712853.Spec : Prop :=
  ∀ n, P7138726998752712853.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P7477245330350111353

`A248198(n+1)-A002260(A000124(n))`
-/

namespace A228391.P7477245330350111353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A002260 (A000124 n).toNat

end

end A228391.P7477245330350111353

namespace A228391

/-- `A248198(n+1)-A002260(A000124(n))` -/
def P7477245330350111353.Spec : Prop :=
  ∀ n, P7477245330350111353.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P17130530921371824428

`A248198(n+1)+A033999(A141883(n+1))`
-/

namespace A228391.P17130530921371824428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) + A033999 (A141883 (n + 1)).toNat

end

end A228391.P17130530921371824428

namespace A228391

/-- `A248198(n+1)+A033999(A141883(n+1))` -/
def P17130530921371824428.Spec : Prop :=
  ∀ n, P17130530921371824428.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P808695669821149601

`A248198(n+1)+A033999(A270083(n+1))`
-/

namespace A228391.P808695669821149601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) + A033999 (A270083 (n + 1)).toNat

end

end A228391.P808695669821149601

namespace A228391

/-- `A248198(n+1)+A033999(A270083(n+1))` -/
def P808695669821149601.Spec : Prop :=
  ∀ n, P808695669821149601.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P14344940108140019678

`A248198(n+1)+A033999(A106067(n+1))`
-/

namespace A228391.P14344940108140019678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) + A033999 (A106067 (n + 1)).toNat

end

end A228391.P14344940108140019678

namespace A228391

/-- `A248198(n+1)+A033999(A106067(n+1))` -/
def P14344940108140019678.Spec : Prop :=
  ∀ n, P14344940108140019678.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P14730076462217785477

`A248198(n+1)-A076933(A188815(n+1))`
-/

namespace A228391.P14730076462217785477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A076933 (A188815 (n + 1)).toNat

end

end A228391.P14730076462217785477

namespace A228391

/-- `A248198(n+1)-A076933(A188815(n+1))` -/
def P14730076462217785477.Spec : Prop :=
  ∀ n, P14730076462217785477.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P6905795768507108200

`A248198(n+1)-A115360(A325696(n))`
-/

namespace A228391.P6905795768507108200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A115360 (A325696 n).toNat

end

end A228391.P6905795768507108200

namespace A228391

/-- `A248198(n+1)-A115360(A325696(n))` -/
def P6905795768507108200.Spec : Prop :=
  ∀ n, P6905795768507108200.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P9125259983321378387

`A248198(n+1)+A057428(A022856(n+1))`
-/

namespace A228391.P9125259983321378387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) + A057428 (A022856 (n + 1)).toNat

end

end A228391.P9125259983321378387

namespace A228391

/-- `A248198(n+1)+A057428(A022856(n+1))` -/
def P9125259983321378387.Spec : Prop :=
  ∀ n, P9125259983321378387.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P9192413358794089947

`A248198(n+1)-A014963(A181924(n+1))`
-/

namespace A228391.P9192413358794089947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A014963 (A181924 (n + 1)).toNat

end

end A228391.P9192413358794089947

namespace A228391

/-- `A248198(n+1)-A014963(A181924(n+1))` -/
def P9192413358794089947.Spec : Prop :=
  ∀ n, P9192413358794089947.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P3025523759108126634

`A248198(n+1)-A127093(A000124(n+6))`
-/

namespace A228391.P3025523759108126634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A127093 (A000124 (n + 6)).toNat

end

end A228391.P3025523759108126634

namespace A228391

/-- `A248198(n+1)-A127093(A000124(n+6))` -/
def P3025523759108126634.Spec : Prop :=
  ∀ n, P3025523759108126634.a n = A228391 (n + 1)

end A228391

/-! ## A228391.P12232091315997154328

`A248198(n+1)-A001222(A068710(n+1))`
-/

namespace A228391.P12232091315997154328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248198 (n + 1) - A001222 (A068710 (n + 1)).toNat

end

end A228391.P12232091315997154328

namespace A228391

/-- `A248198(n+1)-A001222(A068710(n+1))` -/
def P12232091315997154328.Spec : Prop :=
  ∀ n, P12232091315997154328.a n = A228391 (n + 1)

end A228391

/-!
# A228393: The number of permutations of length n that can be sorted by 3 block transpositions.

The programs for A228393, there is no canonical definition to state claims against.
-/

/-! ## A228393.P10416590466454428257

`A130339(∑[n*n!-log2(1/2)])-n`
-/

namespace A228393.P10416590466454428257
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n * Nat.factorial n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130339 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (n : ℤ)

end

end A228393.P10416590466454428257

/-! ## A228393.P15701759859336956221

`A130339(abs(xor(-n, (2*n-(n-1))!)))-n`
-/

namespace A228393.P15701759859336956221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130339 |Int.xor (-(n : ℤ)) (Nat.factorial ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)|.toNat - (n : ℤ)

end

end A228393.P15701759859336956221

/-!
# A228394: The number of permutations of length n sortable by 2 prefix block transpositions.

The programs for A228394, the canonical program `A228394.P14952325405355660298` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228394 has offset 1).

The definition of A228394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228394.P14952325405355660298

`1+n*(n+1)*(3*(n+1)²-11*(n+1)+16)/12`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228394

/-- `1+n*(n+1)*(3*(n+1)²-11*(n+1)+16)/12` -/
def P14952325405355660298.Spec : Prop :=
  ∀ n, P14952325405355660298.a n = (A228394 (n + 1) : ℚ)

end A228394

/-! ## A228394.P9779144178291565186

`∑[n^(3%(n+3))-4*C(n, 2)]`
-/

namespace A228394.P9779144178291565186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (3 % (n + 3)) : ℤ) - (4 * Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228394.P9779144178291565186

namespace A228394

/-- `∑[n^(3%(n+3))-4*C(n, 2)]` -/
def P9779144178291565186.Spec : Prop :=
  ∀ n, P9779144178291565186.a n = A228394 (n + 1)

end A228394

/-! ## A228394.P12059278641555953572

`floor(a(n-1)-n*(n*(2-n)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A228394.P12059278641555953572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (n : ℤ) * ((n : ℤ) * (2 - (n : ℤ)) - 2)

end

end A228394.P12059278641555953572

namespace A228394

/-- `floor(a(n-1)-n*(n*(2-n)-2))` -/
def P12059278641555953572.Spec : Prop :=
  ∀ n, P12059278641555953572.a n = A228394 (n + 1)

end A228394

/-! ## A228394.P5216520117659159712

`∑[A253909(n)+6*C(n, 3)]`
-/

namespace A228394.P5216520117659159712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n + (6 * Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228394.P5216520117659159712

namespace A228394

/-- `∑[A253909(n)+6*C(n, 3)]` -/
def P5216520117659159712.Spec : Prop :=
  ∀ n, P5216520117659159712.a n = A228394 (n + 1)

end A228394

/-! ## A228394.P7299341419544139102

`∑[(n-1)*∑[A004275(n)]+1]`
-/

namespace A228394.P7299341419544139102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228394.P7299341419544139102

namespace A228394

/-- `∑[(n-1)*∑[A004275(n)]+1]` -/
def P7299341419544139102.Spec : Prop :=
  ∀ n, P7299341419544139102.a n = A228394 (n + 1)

end A228394

/-! ## A228394.P3057902299019261226

`∑[A079908(n)-C(comp[2*n], 2)]`
-/

namespace A228394.P3057902299019261226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 n - (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228394.P3057902299019261226

namespace A228394

/-- `∑[A079908(n)-C(comp[2*n], 2)]` -/
def P3057902299019261226.Spec : Prop :=
  ∀ n, P3057902299019261226.a n = A228394 (n + 1)

end A228394

/-! ## A228394.P10653948685826900362

`∑[A253909(n)+A007531(n)]`
-/

namespace A228394.P10653948685826900362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n + A007531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228394.P10653948685826900362

namespace A228394

/-- `∑[A253909(n)+A007531(n)]` -/
def P10653948685826900362.Spec : Prop :=
  ∀ n, P10653948685826900362.a n = A228394 (n + 1)

end A228394

/-! ## A228394.P9064305821092510216

`abs(A000124(n)²-A006331(n))`
-/

namespace A228394.P9064305821092510216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000124 n ^ 2 - A006331 n|

end

end A228394.P9064305821092510216

namespace A228394

/-- `abs(A000124(n)²-A006331(n))` -/
def P9064305821092510216.Spec : Prop :=
  ∀ n, P9064305821092510216.a n = A228394 (n + 1)

end A228394

/-! ## A228394.P6995605802528724626

`∑[A053698(A123578(∑[n]-n))]`
-/

namespace A228394.P6995605802528724626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A123578 (∑ j ∈ Finset.range (n + 1), f2 j - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228394.P6995605802528724626

namespace A228394

/-- `∑[A053698(A123578(∑[n]-n))]` -/
def P6995605802528724626.Spec : Prop :=
  ∀ n, P6995605802528724626.a n = A228394 (n + 1)

end A228394

/-! ## A228394.P14648971778956898387

`∑[A198063(∑[n]+1)]`
-/

namespace A228394.P14648971778956898387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198063 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228394.P14648971778956898387

namespace A228394

/-- `∑[A198063(∑[n]+1)]` -/
def P14648971778956898387.Spec : Prop :=
  ∀ n, P14648971778956898387.a n = A228394 (n + 1)

end A228394

/-!
# A228395: The number of permutations of length n sortable by 3 prefix block transpositions.

The programs for A228395, there is no canonical definition to state claims against.
-/

/-! ## A228395.P17321423022537623887

`A019556(A150809(n+1))`
-/

namespace A228395.P17321423022537623887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019556 (A150809 (n + 1)).toNat

end

end A228395.P17321423022537623887

/-! ## A228395.P13950509448323482437

`xor(A202830(n), A309785(A001844(n)))`
-/

namespace A228395.P13950509448323482437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A202830 n) (A309785 (A001844 n).toNat)

end

end A228395.P13950509448323482437

/-!
# A228396: The number of permutations of length n sortable by 2 reversals.

The programs for A228396, there is no canonical definition to state claims against.
-/

/-! ## A228396.P6555287701691850637

`A171412(A000079(n))+A036893(n+1)`
-/

namespace A228396.P6555287701691850637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171412 (A000079 n).toNat + A036893 (n + 1)

end

end A228396.P6555287701691850637

/-!
# A228397: The number of permutations of length n sortable by 3 reversals.

The programs for A228397, there is no canonical definition to state claims against.
-/

/-! ## A228397.P1749965223409452287

`A154443(∑[A059227(n)])`
-/

namespace A228397.P1749965223409452287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228397.P1749965223409452287

/-! ## A228397.P14030798793672717414

`A259178(A259202(n)-∑{e}[n+1, #])`
-/

namespace A228397.P14030798793672717414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (A259202 n - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A228397.P14030798793672717414

/-!
# A228398: The number of permutations of length n sortable by 3 prefix reversals (in the pancake sorting sense).

The programs for A228398, the canonical program `A228398.P15081280081356226352` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228398 has offset 1).

The definition of A228398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228398.P15081280081356226352

`round(n^4/(n+1))+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228398

/-- `round(n^4/(n+1))+1` -/
def P15081280081356226352.Spec : Prop :=
  ∀ n, P15081280081356226352.a n = A228398 (n + 1)

theorem P15081280081356226352.correct : P15081280081356226352.Spec := by
  intro n
  simp only [A228398, Nat.add_sub_cancel]

end A228398

/-! ## A228398.P15333095615933562180

`((1-n)²+n)*xor(n, C(3, n²))`
-/

namespace A228398.P15333095615933562180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) * (Nat.xor n (Nat.choose 3 (n ^ 2)) : ℤ)

end

end A228398.P15333095615933562180

namespace A228398

/-- `((1-n)²+n)*xor(n, C(3, n²))` -/
def P15333095615933562180.Spec : Prop :=
  ∀ n, P15333095615933562180.a n = A228398 (n + 1)

end A228398

/-! ## A228398.P11072610157718012574

`(C(n, n²)+n)*((1-n)²+n)`
-/

namespace A228398.P11072610157718012574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) + n : ℤ) * ((1 - (n : ℤ)) ^ 2 + (n : ℤ))

end

end A228398.P11072610157718012574

namespace A228398

/-- `(C(n, n²)+n)*((1-n)²+n)` -/
def P11072610157718012574.Spec : Prop :=
  ∀ n, P11072610157718012574.a n = A228398 (n + 1)

end A228398

/-! ## A228398.P15064698484948181553

`n*(gcd(n-1, a(n-1))²+n)` with `a(0)=1`
-/

namespace A228398.P15064698484948181553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (Int.gcd ((n : ℤ) - 1) (a (n - 1) : ℤ) ^ 2 + n)

end

end A228398.P15064698484948181553

namespace A228398

/-- `n*(gcd(n-1, a(n-1))²+n)` -/
def P15064698484948181553.Spec : Prop :=
  ∀ n, (P15064698484948181553.a n : ℤ) = A228398 (n + 1)

end A228398

/-! ## A228398.P17347489834609065463

`n*(n²-floor(n-2/a(n-1)))` with `a(0)=1`
-/

namespace A228398.P17347489834609065463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((n ^ 2 : ℤ) - ⌊(n : ℚ) - 2 / (a (n - 1) : ℚ)⌋)

end

end A228398.P17347489834609065463

namespace A228398

/-- `n*(n²-floor(n-2/a(n-1)))` -/
def P17347489834609065463.Spec : Prop :=
  ∀ n, P17347489834609065463.a n = A228398 (n + 1)

end A228398

/-! ## A228398.P9106278149562258395

`ceil((A000005(n+1)+n^4)/(n+1))`
-/

namespace A228398.P9106278149562258395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (n + 1) + (n ^ 4 : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A228398.P9106278149562258395

namespace A228398

/-- `ceil((A000005(n+1)+n^4)/(n+1))` -/
def P9106278149562258395.Spec : Prop :=
  ∀ n, P9106278149562258395.a n = A228398 (n + 1)

end A228398

/-! ## A228398.P16614187170438584524

`A002061(n)/A046698(n+1)*A004277(n)`
-/

namespace A228398.P16614187170438584524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n : ℚ) / (A046698 (n + 1) : ℚ) * (A004277 n : ℚ)

end

end A228398.P16614187170438584524

namespace A228398

/-- `A002061(n)/A046698(n+1)*A004277(n)` -/
def P16614187170438584524.Spec : Prop :=
  ∀ n, P16614187170438584524.a n = (A228398 (n + 1) : ℚ)

end A228398

/-! ## A228398.P15361477455624942677

`A000194(A127367(n)+A002061(n))*A002061(n)`
-/

namespace A228398.P15361477455624942677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A127367 n + A002061 n).toNat * A002061 n

end

end A228398.P15361477455624942677

namespace A228398

/-- `A000194(A127367(n)+A002061(n))*A002061(n)` -/
def P15361477455624942677.Spec : Prop :=
  ∀ n, P15361477455624942677.a n = A228398 (n + 1)

end A228398

/-! ## A228398.P18163058965420946827

`A000194(A002061(n)+A002024(n+1))*A002061(n)`
-/

namespace A228398.P18163058965420946827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A002061 n + A002024 (n + 1)).toNat * A002061 n

end

end A228398.P18163058965420946827

namespace A228398

/-- `A000194(A002061(n)+A002024(n+1))*A002061(n)` -/
def P18163058965420946827.Spec : Prop :=
  ∀ n, P18163058965420946827.a n = A228398 (n + 1)

end A228398

/-! ## A228398.P12527322430230624619

`A000194(n²+2)*A002061(n)`
-/

namespace A228398.P12527322430230624619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n ^ 2 + 2) * A002061 n

end

end A228398.P12527322430230624619

namespace A228398

/-- `A000194(n²+2)*A002061(n)` -/
def P12527322430230624619.Spec : Prop :=
  ∀ n, P12527322430230624619.a n = A228398 (n + 1)

end A228398

/-! ## A228398.P4075613627306555478

`A000196(n²+3)*A002061(n)`
-/

namespace A228398.P4075613627306555478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n ^ 2 + 3) * A002061 n

end

end A228398.P4075613627306555478

namespace A228398

/-- `A000196(n²+3)*A002061(n)` -/
def P4075613627306555478.Spec : Prop :=
  ∀ n, P4075613627306555478.a n = A228398 (n + 1)

end A228398

/-! ## A228398.P15348195917811363151

`record[Δ[A175781(n+1)]*A175781(n+1)]`
-/

namespace A228398.P15348195917811363151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A175781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228398.P15348195917811363151

namespace A228398

/-- `record[Δ[A175781(n+1)]*A175781(n+1)]` -/
def P15348195917811363151.Spec : Prop :=
  ∀ n, P15348195917811363151.a n = A228398 (n + 1)

end A228398

/-!
# A228399: The number of permutations of length n sortable by 2 cut-and-paste moves.

The programs for A228399, there is no canonical definition to state claims against.
-/

/-! ## A228399.P5967820585460870145

`record[A233543(n)-A181340(n+1)]`
-/

namespace A228399.P5967820585460870145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n - A181340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228399.P5967820585460870145

/-! ## A228399.P12235532452658396241

`record[A292977(n)-A181340(n+1)]`
-/

namespace A228399.P12235532452658396241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 n - A181340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228399.P12235532452658396241

