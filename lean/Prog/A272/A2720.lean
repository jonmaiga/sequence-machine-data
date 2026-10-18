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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
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
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A272000: Coinage sequence: a(n) = A018227(n)-7.

The programs for A272000, the canonical program `A272000.P874290223858658884` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272000 has offset 1).

The definition of A272000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272000.P874290223858658884

`∑[2*(floor(n/2)+2)²]-5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A272000

/-- `∑[2*(floor(n/2)+2)²]-5` -/
def P874290223858658884.Spec : Prop :=
  ∀ n, P874290223858658884.a n = A272000 (n + 1)

theorem P874290223858658884.correct : P874290223858658884.Spec := by
  intro n
  simp only [A272000, Nat.add_sub_cancel]

end A272000

/-! ## A272000.P2265763574088351079

`abs(2-A271997(n+2))`
-/

namespace A272000.P2265763574088351079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A271997 (n + 2)|

end

end A272000.P2265763574088351079

namespace A272000

/-- `abs(2-A271997(n+2))` -/
def P2265763574088351079.Spec : Prop :=
  ∀ n, P2265763574088351079.a n = A272000 (n + 1)

end A272000

/-! ## A272000.P14887647889678985897

`abs(3-A271996(n+2))`
-/

namespace A272000.P14887647889678985897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A271996 (n + 2)|

end

end A272000.P14887647889678985897

namespace A272000

/-- `abs(3-A271996(n+2))` -/
def P14887647889678985897.Spec : Prop :=
  ∀ n, P14887647889678985897.a n = A272000 (n + 1)

end A272000

/-! ## A272000.P15069092878896884258

`abs(4-A271995(n+2))`
-/

namespace A272000.P15069092878896884258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A271995 (n + 2)|

end

end A272000.P15069092878896884258

namespace A272000

/-- `abs(4-A271995(n+2))` -/
def P15069092878896884258.Spec : Prop :=
  ∀ n, P15069092878896884258.a n = A272000 (n + 1)

end A272000

/-! ## A272000.P11865266818745336500

`abs(5-A271994(n+2))`
-/

namespace A272000.P11865266818745336500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A271994 (n + 2)|

end

end A272000.P11865266818745336500

namespace A272000

/-- `abs(5-A271994(n+2))` -/
def P11865266818745336500.Spec : Prop :=
  ∀ n, P11865266818745336500.a n = A272000 (n + 1)

end A272000

/-! ## A272000.P15441814409125981157

`(2-A271997(n+2))*A008683(A151800(n))`
-/

namespace A272000.P15441814409125981157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A271997 (n + 2)) * A008683 (A151800 n).toNat

end

end A272000.P15441814409125981157

namespace A272000

/-- `(2-A271997(n+2))*A008683(A151800(n))` -/
def P15441814409125981157.Spec : Prop :=
  ∀ n, P15441814409125981157.a n = A272000 (n + 1)

end A272000

/-! ## A272000.P8354674225223267007

`abs(7-A018227(n+2))`
-/

namespace A272000.P8354674225223267007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A018227 (n + 2)|

end

end A272000.P8354674225223267007

namespace A272000

/-- `abs(7-A018227(n+2))` -/
def P8354674225223267007.Spec : Prop :=
  ∀ n, P8354674225223267007.a n = A272000 (n + 1)

end A272000

/-! ## A272000.P1906579002434771567

`∑[A184636(Δ[A184674(n+1)])]`
-/

namespace A272000.P1906579002434771567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184674 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184636 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272000.P1906579002434771567

namespace A272000

/-- `∑[A184636(Δ[A184674(n+1)])]` -/
def P1906579002434771567.Spec : Prop :=
  ∀ n, P1906579002434771567.a n = A272000 (n + 1)

end A272000

/-! ## A272000.P10909602368860407158

`∑[A123108(A265283(n+1))*A265283(n+1)]`
-/

namespace A272000.P10909602368860407158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A265283 (n + 1)).toNat * A265283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272000.P10909602368860407158

namespace A272000

/-- `∑[A123108(A265283(n+1))*A265283(n+1)]` -/
def P10909602368860407158.Spec : Prop :=
  ∀ n, P10909602368860407158.a n = A272000 (n + 1)

end A272000

/-! ## A272000.P3832749536516122788

`(2-A271997(n+2))*A316441(A000040(n+1))`
-/

namespace A272000.P3832749536516122788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A271997 (n + 2)) * A316441 (A000040 (n + 1)).toNat

end

end A272000.P3832749536516122788

namespace A272000

/-- `(2-A271997(n+2))*A316441(A000040(n+1))` -/
def P3832749536516122788.Spec : Prop :=
  ∀ n, P3832749536516122788.a n = A272000 (n + 1)

end A272000

/-! ## A272000.P10628368257536593596

`abs(5-∑[A004277((A002265(2*(n+2))+1)²)])`
-/

namespace A272000.P10628368257536593596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((A002265 (2 * (n + 2)) + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A272000.P10628368257536593596

namespace A272000

/-- `abs(5-∑[A004277((A002265(2*(n+2))+1)²)])` -/
def P10628368257536593596.Spec : Prop :=
  ∀ n, P10628368257536593596.a n = A272000 (n + 1)

end A272000

/-!
# A272006: a(n) = A003617(n) - A062397(n-1).

The programs for A272006, the canonical program `A272006.P12335751938190877041` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272006 has offset 1).

The definition of A272006 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272006.P10824471319690234752

`A033873(n)-1`
-/

namespace A272006.P10824471319690234752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n - 1

end

end A272006.P10824471319690234752

namespace A272006

/-- `A033873(n)-1` -/
def P10824471319690234752.Spec : Prop :=
  ∀ n, P10824471319690234752.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P12335751938190877041

`A003617(n+1)-A062397(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A272006

/-- `A003617(n+1)-A062397(n)` -/
def P12335751938190877041.Spec : Prop :=
  ∀ n, P12335751938190877041.a n = A272006 (n + 1)

theorem P12335751938190877041.correct : P12335751938190877041.Spec := by
  intro n
  simp only [A272006, Nat.add_sub_cancel]

end A272006

/-! ## A272006.P9069309299374095910

`A004442(A033873(n))`
-/

namespace A272006.P9069309299374095910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A033873 n).toNat

end

end A272006.P9069309299374095910

namespace A272006

/-- `A004442(A033873(n))` -/
def P9069309299374095910.Spec : Prop :=
  ∀ n, P9069309299374095910.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P17013153043942963395

`A289207(A033873(n)+1)`
-/

namespace A272006.P17013153043942963395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A033873 n + 1).toNat

end

end A272006.P17013153043942963395

namespace A272006

/-- `A289207(A033873(n)+1)` -/
def P17013153043942963395.Spec : Prop :=
  ∀ n, P17013153043942963395.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P15782838395721476260

`A004524(2*A033873(n))`
-/

namespace A272006.P15782838395721476260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A033873 n).toNat

end

end A272006.P15782838395721476260

namespace A272006

/-- `A004524(2*A033873(n))` -/
def P15782838395721476260.Spec : Prop :=
  ∀ n, P15782838395721476260.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P3812858144453790410

`A249738(2*A033873(n))`
-/

namespace A272006.P3812858144453790410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A033873 n).toNat

end

end A272006.P3812858144453790410

namespace A272006

/-- `A249738(2*A033873(n))` -/
def P3812858144453790410.Spec : Prop :=
  ∀ n, P3812858144453790410.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P8094523181241815767

`A004524(lcm(2, A033873(n)))`
-/

namespace A272006.P8094523181241815767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lcm 2 (A033873 n))

end

end A272006.P8094523181241815767

namespace A272006

/-- `A004524(lcm(2, A033873(n)))` -/
def P8094523181241815767.Spec : Prop :=
  ∀ n, P8094523181241815767.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P10976894157132447852

`A004458(xor(16, A033873(n)))`
-/

namespace A272006.P10976894157132447852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004458 (Int.xor 16 (A033873 n)).toNat

end

end A272006.P10976894157132447852

namespace A272006

/-- `A004458(xor(16, A033873(n)))` -/
def P10976894157132447852.Spec : Prop :=
  ∀ n, P10976894157132447852.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P5689102722806236116

`A004464(xor(22, A033873(n)))`
-/

namespace A272006.P5689102722806236116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004464 (Int.xor 22 (A033873 n)).toNat

end

end A272006.P5689102722806236116

namespace A272006

/-- `A004464(xor(22, A033873(n)))` -/
def P5689102722806236116.Spec : Prop :=
  ∀ n, P5689102722806236116.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P14828911657767055500

`xor(char[A001281(n)], A033873(n))`
-/

namespace A272006.P14828911657767055500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A033873 n)

end

end A272006.P14828911657767055500

namespace A272006

/-- `xor(char[A001281(n)], A033873(n))` -/
def P14828911657767055500.Spec : Prop :=
  ∀ n, P14828911657767055500.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P11061320906881769627

`xor(char[A003188(n)], A033873(n))`
-/

namespace A272006.P11061320906881769627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A033873 n)

end

end A272006.P11061320906881769627

namespace A272006

/-- `xor(char[A003188(n)], A033873(n))` -/
def P11061320906881769627.Spec : Prop :=
  ∀ n, P11061320906881769627.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P15633839242232369137

`2*A002265(2*A033873(n))`
-/

namespace A272006.P15633839242232369137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002265 (2 * A033873 n).toNat

end

end A272006.P15633839242232369137

namespace A272006

/-- `2*A002265(2*A033873(n))` -/
def P15633839242232369137.Spec : Prop :=
  ∀ n, P15633839242232369137.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P3871062658929584642

`A057428(n+1)+A033873(n)`
-/

namespace A272006.P3871062658929584642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A033873 n

end

end A272006.P3871062658929584642

namespace A272006

/-- `A057428(n+1)+A033873(n)` -/
def P3871062658929584642.Spec : Prop :=
  ∀ n, P3871062658929584642.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P12112162431566400249

`xor(A000034(2*n), A033873(n))`
-/

namespace A272006.P12112162431566400249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (2 * n)) (A033873 n)

end

end A272006.P12112162431566400249

namespace A272006

/-- `xor(A000034(2*n), A033873(n))` -/
def P12112162431566400249.Spec : Prop :=
  ∀ n, P12112162431566400249.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P4977925864695887864

`A280193(2*n+1)+A033873(n)`
-/

namespace A272006.P4977925864695887864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A033873 n

end

end A272006.P4977925864695887864

namespace A272006

/-- `A280193(2*n+1)+A033873(n)` -/
def P4977925864695887864.Spec : Prop :=
  ∀ n, P4977925864695887864.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P11492896195699480140

`xor(A008683(n+1)²!, A033873(n))`
-/

namespace A272006.P11492896195699480140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) (A033873 n)

end

end A272006.P11492896195699480140

namespace A272006

/-- `xor(A008683(n+1)²!, A033873(n))` -/
def P11492896195699480140.Spec : Prop :=
  ∀ n, P11492896195699480140.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P5565770747865762051

`xor(A001221(A001359(n+1)), A033873(n))`
-/

namespace A272006.P5565770747865762051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A001359 (n + 1)).toNat) (A033873 n)

end

end A272006.P5565770747865762051

namespace A272006

/-- `xor(A001221(A001359(n+1)), A033873(n))` -/
def P5565770747865762051.Spec : Prop :=
  ∀ n, P5565770747865762051.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P10943499020770751644

`xor(A001221(A005383(n+1)), A033873(n))`
-/

namespace A272006.P10943499020770751644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A005383 (n + 1)).toNat) (A033873 n)

end

end A272006.P10943499020770751644

namespace A272006

/-- `xor(A001221(A005383(n+1)), A033873(n))` -/
def P10943499020770751644.Spec : Prop :=
  ∀ n, P10943499020770751644.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P2208108170045497600

`xor(A033873(n), A056926(A000040(n+1)))`
-/

namespace A272006.P2208108170045497600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033873 n) (A056926 (A000040 (n + 1)).toNat)

end

end A272006.P2208108170045497600

namespace A272006

/-- `xor(A033873(n), A056926(A000040(n+1)))` -/
def P2208108170045497600.Spec : Prop :=
  ∀ n, P2208108170045497600.a n = A272006 (n + 1)

end A272006

/-! ## A272006.P8111641808235188052

`xor(A001221(A100201(n+1)), A033873(n))`
-/

namespace A272006.P8111641808235188052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A100201 (n + 1)).toNat) (A033873 n)

end

end A272006.P8111641808235188052

namespace A272006

/-- `xor(A001221(A100201(n+1)), A033873(n))` -/
def P8111641808235188052.Spec : Prop :=
  ∀ n, P8111641808235188052.a n = A272006 (n + 1)

end A272006

/-!
# A272007: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

The programs for A272007, the canonical program `A272007.P3056853875055908999` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272007 has offset 0).

The definition of A272007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272007.P3056853875055908999

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=5, a(3)=48, a(4)=5, a(5)=120, a(6)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A272007

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P3056853875055908999.Spec : Prop :=
  ∀ n, P3056853875055908999.a n = A272007 n

theorem P3056853875055908999.correct : P3056853875055908999.Spec := by
  intro n
  simp only [A272007]

end A272007

/-! ## A272007.P9753021581678937396

`xor(1, xor(1, A267352(n))²)`
-/

namespace A272007.P9753021581678937396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A267352 n) ^ 2)

end

end A272007.P9753021581678937396

namespace A272007

/-- `xor(1, xor(1, A267352(n))²)` -/
def P9753021581678937396.Spec : Prop :=
  ∀ n, P9753021581678937396.a n = A272007 n

end A272007

/-! ## A272007.P16319486395397138031

`A168269(n)²-a(n-1)+4` with `a(0)=1, a(1)=8`
-/

namespace A272007.P16319486395397138031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A168269 n ^ 2 - a (n - 1) + 4

end

end A272007.P16319486395397138031

namespace A272007

/-- `A168269(n)²-a(n-1)+4` -/
def P16319486395397138031.Spec : Prop :=
  ∀ n, P16319486395397138031.a n = A272007 n

end A272007

/-! ## A272007.P2324311549743091125

`xor(1, A004442(A267352(n))²)`
-/

namespace A272007.P2324311549743091125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A004442 (A267352 n).toNat ^ 2)

end

end A272007.P2324311549743091125

namespace A272007

/-- `xor(1, A004442(A267352(n))²)` -/
def P2324311549743091125.Spec : Prop :=
  ∀ n, P2324311549743091125.a n = A272007 n

end A272007

/-! ## A272007.P5165992647237310240

`xor(1, A266258(A014681(n))²)`
-/

namespace A272007.P5165992647237310240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A266258 (A014681 n).toNat ^ 2)

end

end A272007.P5165992647237310240

namespace A272007

/-- `xor(1, A266258(A014681(n))²)` -/
def P5165992647237310240.Spec : Prop :=
  ∀ n, P5165992647237310240.a n = A272007 n

end A272007

/-! ## A272007.P6384484945622013155

`A000034(n)*A266725(A267352(n))`
-/

namespace A272007.P6384484945622013155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A266725 (A267352 n).toNat

end

end A272007.P6384484945622013155

namespace A272007

/-- `A000034(n)*A266725(A267352(n))` -/
def P6384484945622013155.Spec : Prop :=
  ∀ n, P6384484945622013155.a n = A272007 n

end A272007

/-! ## A272007.P7309415043420139133

`xor((A266303(n)+A057427(n))², A057427(n))`
-/

namespace A272007.P7309415043420139133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((A266303 n + A057427 n) ^ 2) (A057427 n)

end

end A272007.P7309415043420139133

namespace A272007

/-- `xor((A266303(n)+A057427(n))², A057427(n))` -/
def P7309415043420139133.Spec : Prop :=
  ∀ n, P7309415043420139133.a n = A272007 n

end A272007

/-! ## A272007.P9142436900490301049

`A269906(n)+4*A057427(n)`
-/

namespace A272007.P9142436900490301049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + 4 * A057427 n

end

end A272007.P9142436900490301049

namespace A272007

/-- `A269906(n)+4*A057427(n)` -/
def P9142436900490301049.Spec : Prop :=
  ∀ n, P9142436900490301049.a n = A272007 n

end A272007

/-! ## A272007.P15486940935147360049

`A269906(n)+4%A001844(n)`
-/

namespace A272007.P15486940935147360049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + Int.tmod 4 (A001844 n)

end

end A272007.P15486940935147360049

namespace A272007

/-- `A269906(n)+4%A001844(n)` -/
def P15486940935147360049.Spec : Prop :=
  ∀ n, P15486940935147360049.a n = A272007 n

end A272007

/-! ## A272007.P18049932258402875247

`A269906(n)+(2-A000038(n))²`
-/

namespace A272007.P18049932258402875247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + (2 - A000038 n) ^ 2

end

end A272007.P18049932258402875247

namespace A272007

/-- `A269906(n)+(2-A000038(n))²` -/
def P18049932258402875247.Spec : Prop :=
  ∀ n, P18049932258402875247.a n = A272007 n

end A272007

/-! ## A272007.P4277716477266475394

`A269906(n)+A090369(A001316(n))`
-/

namespace A272007.P4277716477266475394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + A090369 (A001316 n).toNat

end

end A272007.P4277716477266475394

namespace A272007

/-- `A269906(n)+A090369(A001316(n))` -/
def P4277716477266475394.Spec : Prop :=
  ∀ n, P4277716477266475394.a n = A272007 n

end A272007

/-! ## A272007.P18074300976399495522

`A269906(n)+A174571(A004273(n))`
-/

namespace A272007.P18074300976399495522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + A174571 (A004273 n).toNat

end

end A272007.P18074300976399495522

namespace A272007

/-- `A269906(n)+A174571(A004273(n))` -/
def P18074300976399495522.Spec : Prop :=
  ∀ n, P18074300976399495522.a n = A272007 n

end A272007

/-! ## A272007.P4928495429974605251

`A269906(n)+A174571(A062545(n))`
-/

namespace A272007.P4928495429974605251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + A174571 (A062545 n).toNat

end

end A272007.P4928495429974605251

namespace A272007

/-- `A269906(n)+A174571(A062545(n))` -/
def P4928495429974605251.Spec : Prop :=
  ∀ n, P4928495429974605251.a n = A272007 n

end A272007

/-! ## A272007.P834769005424673101

`A269906(n)+A174571(A019426(2*n))`
-/

namespace A272007.P834769005424673101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + A174571 (A019426 (2 * n)).toNat

end

end A272007.P834769005424673101

namespace A272007

/-- `A269906(n)+A174571(A019426(2*n))` -/
def P834769005424673101.Spec : Prop :=
  ∀ n, P834769005424673101.a n = A272007 n

end A272007

/-! ## A272007.P12635218193895172253

`lcm(3*(n-1)%2+2, A271060(n))`
-/

namespace A272007.P12635218193895172253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 * Int.tmod ((n : ℤ) - 1) 2 + 2) (A271060 n)

end

end A272007.P12635218193895172253

namespace A272007

/-- `lcm(3*(n-1)%2+2, A271060(n))` -/
def P12635218193895172253.Spec : Prop :=
  ∀ n, (P12635218193895172253.a n : ℤ) = A272007 n

end A272007

/-! ## A272007.P3010767442109338126

`lcm(A072996(n), A271060(n))`
-/

namespace A272007.P3010767442109338126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072996 n) (A271060 n)

end

end A272007.P3010767442109338126

namespace A272007

/-- `lcm(A072996(n), A271060(n))` -/
def P3010767442109338126.Spec : Prop :=
  ∀ n, (P3010767442109338126.a n : ℤ) = A272007 n

end A272007

/-! ## A272007.P12929807040542347800

`or(A271060(n), A297402(A103517(n)))`
-/

namespace A272007.P12929807040542347800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A271060 n) (A297402 (A103517 n).toNat)

end

end A272007.P12929807040542347800

namespace A272007

/-- `or(A271060(n), A297402(A103517(n)))` -/
def P12929807040542347800.Spec : Prop :=
  ∀ n, P12929807040542347800.a n = A272007 n

end A272007

/-! ## A272007.P8704732111285933465

`A272010(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272007.P8704732111285933465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272010 (n - 1) + a (n - 1)

end

end A272007.P8704732111285933465

namespace A272007

/-- `A272010(n-1)+a(n-1)` -/
def P8704732111285933465.Spec : Prop :=
  ∀ n, P8704732111285933465.a n = A272007 n

end A272007

/-! ## A272007.P10646581598053840279

`Δ[A272009(n)]-A272010(n)`
-/

namespace A272007.P10646581598053840279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272010 n

end

end A272007.P10646581598053840279

namespace A272007

/-- `Δ[A272009(n)]-A272010(n)` -/
def P10646581598053840279.Spec : Prop :=
  ∀ n, P10646581598053840279.a n = A272007 n

end A272007

/-! ## A272007.P11909321074020083016

`A272009(n+1)-(A272010(n)+A272009(n))`
-/

namespace A272007.P11909321074020083016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272009 (n + 1) - (A272010 n + A272009 n)

end

end A272007.P11909321074020083016

namespace A272007

/-- `A272009(n+1)-(A272010(n)+A272009(n))` -/
def P11909321074020083016.Spec : Prop :=
  ∀ n, P11909321074020083016.a n = A272007 n

end A272007

/-!
# A272008: a(n) is the numerator of the fractional part of sigma(n)/n, where sigma(n) is the sum of the divisors of n.

The programs for A272008, the canonical program `A272008.P3020960973328718695` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272008 has offset 1).

The definition of A272008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272008.P8769041275174651411

`lcm(n+1, A054024(n+1))/(n+1)`
-/

namespace A272008.P8769041275174651411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A054024 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A272008.P8769041275174651411

namespace A272008

/-- `lcm(n+1, A054024(n+1))/(n+1)` -/
def P8769041275174651411.Spec : Prop :=
  ∀ n, P8769041275174651411.a n = (A272008 (n + 1) : ℚ)

end A272008

/-! ## A272008.P1780936997145643776

`A054024(n+1)/A009194(n+1)`
-/

namespace A272008.P1780936997145643776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054024 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A272008.P1780936997145643776

namespace A272008

/-- `A054024(n+1)/A009194(n+1)` -/
def P1780936997145643776.Spec : Prop :=
  ∀ n, P1780936997145643776.a n = (A272008 (n + 1) : ℚ)

end A272008

/-! ## A272008.P12989980508195434786

`A017665(n+1)%A017666(n+1)`
-/

namespace A272008.P12989980508195434786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017665 (n + 1)) (A017666 (n + 1))

end

end A272008.P12989980508195434786

namespace A272008

/-- `A017665(n+1)%A017666(n+1)` -/
def P12989980508195434786.Spec : Prop :=
  ∀ n, P12989980508195434786.a n = A272008 (n + 1)

end A272008

/-! ## A272008.P1091838474391659950

`A243473(n+1)%A017666(n+1)`
-/

namespace A272008.P1091838474391659950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243473 (n + 1)) (A017666 (n + 1))

end

end A272008.P1091838474391659950

namespace A272008

/-- `A243473(n+1)%A017666(n+1)` -/
def P1091838474391659950.Spec : Prop :=
  ∀ n, P1091838474391659950.a n = A272008 (n + 1)

end A272008

/-! ## A272008.P3020960973328718695

`(A000203(n+1)/A009194(n+1))%((n+1)/gcd(n-1-2*n, ∑{d}[n+1, #]))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A272008

/-- `(A000203(n+1)/A009194(n+1))%((n+1)/gcd(n-1-2*n, ∑{d}[n+1, #]))` -/
def P3020960973328718695.Spec : Prop :=
  ∀ n, P3020960973328718695.a n = A272008 (n + 1)

theorem P3020960973328718695.correct : P3020960973328718695.Spec := by
  intro n
  simp only [A272008, Nat.add_sub_cancel]

end A272008

/-! ## A272008.P5023123068218643130

`A017665(n+1)-A017666(n+1)*A108775(n+1)`
-/

namespace A272008.P5023123068218643130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A017666 (n + 1) * A108775 (n + 1)

end

end A272008.P5023123068218643130

namespace A272008

/-- `A017665(n+1)-A017666(n+1)*A108775(n+1)` -/
def P5023123068218643130.Spec : Prop :=
  ∀ n, P5023123068218643130.a n = A272008 (n + 1)

end A272008

/-! ## A272008.P16072623006851025065

`A017665(n+1)/A000203(n+1)*A054024(n+1)`
-/

namespace A272008.P16072623006851025065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017665 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A054024 (n + 1) : ℚ)

end

end A272008.P16072623006851025065

namespace A272008

/-- `A017665(n+1)/A000203(n+1)*A054024(n+1)` -/
def P16072623006851025065.Spec : Prop :=
  ∀ n, P16072623006851025065.a n = (A272008 (n + 1) : ℚ)

end A272008

/-! ## A272008.P14427874571401734727

`(A000203(n+1)/A009194(n+1))%A017666(n+1)`
-/

namespace A272008.P14427874571401734727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ))) (A017666 (n + 1))

end

end A272008.P14427874571401734727

namespace A272008

/-- `(A000203(n+1)/A009194(n+1))%A017666(n+1)` -/
def P14427874571401734727.Spec : Prop :=
  ∀ n, P14427874571401734727.a n = A272008 (n + 1)

end A272008

/-! ## A272008.P7543276649943141229

`A054024(n+1)/gcd(A014683(n+1), A054024(n+1))`
-/

namespace A272008.P7543276649943141229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054024 (n + 1) : ℚ) / (Int.gcd (A014683 (n + 1)) (A054024 (n + 1)) : ℚ)

end

end A272008.P7543276649943141229

namespace A272008

/-- `A054024(n+1)/gcd(A014683(n+1), A054024(n+1))` -/
def P7543276649943141229.Spec : Prop :=
  ∀ n, P7543276649943141229.a n = (A272008 (n + 1) : ℚ)

end A272008

/-! ## A272008.P6629457492953728643

`(A000203(n+1)/gcd(n+1, A155085(n+1)))%A017666(n+1)`
-/

namespace A272008.P6629457492953728643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A155085 (n + 1)) : ℚ))) (A017666 (n + 1))

end

end A272008.P6629457492953728643

namespace A272008

/-- `(A000203(n+1)/gcd(n+1, A155085(n+1)))%A017666(n+1)` -/
def P6629457492953728643.Spec : Prop :=
  ∀ n, P6629457492953728643.a n = A272008 (n + 1)

end A272008

/-!
# A272009: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

The programs for A272009, the canonical program `A272009.P9208722681090242085` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272009 has offset 0).

The definition of A272009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272009.P9208722681090242085

`∑[A272007(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272009

/-- `∑[A272007(n)]` -/
def P9208722681090242085.Spec : Prop :=
  ∀ n, P9208722681090242085.a n = A272009 n

theorem P9208722681090242085.correct : P9208722681090242085.Spec := by
  intro n
  simp only [A272009]

end A272009

/-! ## A272009.P9018694512833328687

`A269908(n)+4*n`
-/

namespace A272009.P9018694512833328687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269908 n + (4 * n : ℤ)

end

end A272009.P9018694512833328687

namespace A272009

/-- `A269908(n)+4*n` -/
def P9018694512833328687.Spec : Prop :=
  ∀ n, P9018694512833328687.a n = A272009 n

end A272009

/-! ## A272009.P17223426712796599187

`4*n+∑[A269906(n)]`
-/

namespace A272009.P17223426712796599187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272009.P17223426712796599187

namespace A272009

/-- `4*n+∑[A269906(n)]` -/
def P17223426712796599187.Spec : Prop :=
  ∀ n, P17223426712796599187.a n = A272009 n

end A272009

/-! ## A272009.P7141532656037855676

`A004767(n)+A269908(n)-3`
-/

namespace A272009.P7141532656037855676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + (A269908 n - 3)

end

end A272009.P7141532656037855676

namespace A272009

/-- `A004767(n)+A269908(n)-3` -/
def P7141532656037855676.Spec : Prop :=
  ∀ n, P7141532656037855676.a n = A272009 n

end A272009

/-! ## A272009.P12332733105593510058

`∑[xor(1, A004442(A267352(n))²)]`
-/

namespace A272009.P12332733105593510058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A004442 (A267352 n).toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272009.P12332733105593510058

namespace A272009

/-- `∑[xor(1, A004442(A267352(n))²)]` -/
def P12332733105593510058.Spec : Prop :=
  ∀ n, P12332733105593510058.a n = A272009 n

end A272009

/-! ## A272009.P15615283915087206196

`A272007(n%A044534(n))+a(n-1)` with `a(0)=1`
-/

namespace A272009.P15615283915087206196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272007 (Int.tmod (n : ℤ) (A044534 n)).toNat + a (n - 1)

end

end A272009.P15615283915087206196

namespace A272009

/-- `A272007(n%A044534(n))+a(n-1)` -/
def P15615283915087206196.Spec : Prop :=
  ∀ n, P15615283915087206196.a n = A272009 n

end A272009

/-! ## A272009.P3148454785066385240

`∑[lcm(A072996(n), A271060(n))]`
-/

namespace A272009.P3148454785066385240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072996 n) (A271060 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272009.P3148454785066385240

namespace A272009

/-- `∑[lcm(A072996(n), A271060(n))]` -/
def P3148454785066385240.Spec : Prop :=
  ∀ n, (P3148454785066385240.a n : ℤ) = A272009 n

end A272009

/-! ## A272009.P2726350354464675441

`A271062(n)+2*A052928(n)`
-/

namespace A272009.P2726350354464675441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 n + 2 * A052928 n

end

end A272009.P2726350354464675441

namespace A272009

/-- `A271062(n)+2*A052928(n)` -/
def P2726350354464675441.Spec : Prop :=
  ∀ n, P2726350354464675441.a n = A272009 n

end A272009

/-! ## A272009.P9919371974122678199

`A271062(n)+A052928(A052928(n)+n)`
-/

namespace A272009.P9919371974122678199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 n + A052928 (A052928 n + (n : ℤ)).toNat

end

end A272009.P9919371974122678199

namespace A272009

/-- `A271062(n)+A052928(A052928(n)+n)` -/
def P9919371974122678199.Spec : Prop :=
  ∀ n, P9919371974122678199.a n = A272009 n

end A272009

/-! ## A272009.P3665139136985038681

`A269912(n)+A047355(n+1)`
-/

namespace A272009.P3665139136985038681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269912 n + A047355 (n + 1)

end

end A272009.P3665139136985038681

namespace A272009

/-- `A269912(n)+A047355(n+1)` -/
def P3665139136985038681.Spec : Prop :=
  ∀ n, P3665139136985038681.a n = A272009 n

end A272009

/-!
# A272010: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

The programs for A272010, the canonical program `A272010.P7180507134470778556` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272010 has offset 0).

The definition of A272010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272010.P7180507134470778556

`Δ[A272007(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272010

/-- `Δ[A272007(n)]` -/
def P7180507134470778556.Spec : Prop :=
  ∀ n, P7180507134470778556.a n = A272010 n

theorem P7180507134470778556.correct : P7180507134470778556.Spec := by
  intro n
  simp only [A272010]

end A272010

/-! ## A272010.P18384390858277608810

`Δ[xor(5, A005563(A267352(n)))]`
-/

namespace A272010.P18384390858277608810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A005563 (A267352 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272010.P18384390858277608810

namespace A272010

/-- `Δ[xor(5, A005563(A267352(n)))]` -/
def P18384390858277608810.Spec : Prop :=
  ∀ n, P18384390858277608810.a n = A272010 n

end A272010

/-! ## A272010.P7560890043326732434

`A269909(n)+A000038(n)²`
-/

namespace A272010.P7560890043326732434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269909 n + A000038 n ^ 2

end

end A272010.P7560890043326732434

namespace A272010

/-- `A269909(n)+A000038(n)²` -/
def P7560890043326732434.Spec : Prop :=
  ∀ n, P7560890043326732434.a n = A272010 n

end A272010

/-! ## A272010.P4066208594923443423

`or(A278907(n)², A269909(n))`
-/

namespace A272010.P4066208594923443423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A278907 n ^ 2) (A269909 n)

end

end A272010.P4066208594923443423

namespace A272010

/-- `or(A278907(n)², A269909(n))` -/
def P4066208594923443423.Spec : Prop :=
  ∀ n, P4066208594923443423.a n = A272010 n

end A272010

/-! ## A272010.P285753928454118442

`Δ[A269906(n)+A040012(n)]`
-/

namespace A272010.P285753928454118442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + A040012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272010.P285753928454118442

namespace A272010

/-- `Δ[A269906(n)+A040012(n)]` -/
def P285753928454118442.Spec : Prop :=
  ∀ n, P285753928454118442.a n = A272010 n

end A272010

/-! ## A272010.P14562834125990143787

`A272007(n+1)-A272007(n)`
-/

namespace A272010.P14562834125990143787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 (n + 1) - A272007 n

end

end A272010.P14562834125990143787

namespace A272010

/-- `A272007(n+1)-A272007(n)` -/
def P14562834125990143787.Spec : Prop :=
  ∀ n, P14562834125990143787.a n = A272010 n

theorem P14562834125990143787.correct : P14562834125990143787.Spec := by
  intro n
  simp only [A272010, Nat.add_sub_cancel, A272010.P14562834125990143787.a, A272010.P7180507134470778556.f1, A272010.P7180507134470778556.a, SequenceMachineLib.memo_apply]

end A272010

/-! ## A272010.P10766003674678595726

`A269909(n)+4*A000007(n)`
-/

namespace A272010.P10766003674678595726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269909 n + 4 * A000007 n

end

end A272010.P10766003674678595726

namespace A272010

/-- `A269909(n)+4*A000007(n)` -/
def P10766003674678595726.Spec : Prop :=
  ∀ n, P10766003674678595726.a n = A272010 n

end A272010

/-! ## A272010.P3171251132980028044

`Δ[xor(1, A266258(A014681(n))²)]`
-/

namespace A272010.P3171251132980028044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A266258 (A014681 n).toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272010.P3171251132980028044

namespace A272010

/-- `Δ[xor(1, A266258(A014681(n))²)]` -/
def P3171251132980028044.Spec : Prop :=
  ∀ n, P3171251132980028044.a n = A272010 n

end A272010

/-! ## A272010.P655160074949057504

`Δ[A269906(n)]+A000038(n)²`
-/

namespace A272010.P655160074949057504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000038 n ^ 2

end

end A272010.P655160074949057504

namespace A272010

/-- `Δ[A269906(n)]+A000038(n)²` -/
def P655160074949057504.Spec : Prop :=
  ∀ n, P655160074949057504.a n = A272010 n

end A272010

/-! ## A272010.P8247088094795584538

`Δ[lcm(A059855(n+1), A271060(n))]`
-/

namespace A272010.P8247088094795584538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059855 (n + 1)) (A271060 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A272010.P8247088094795584538

namespace A272010

/-- `Δ[lcm(A059855(n+1), A271060(n))]` -/
def P8247088094795584538.Spec : Prop :=
  ∀ n, P8247088094795584538.a n = A272010 n

end A272010

/-! ## A272010.P17983432292445372996

`or(A010702(A008486(n)), A269909(n))`
-/

namespace A272010.P17983432292445372996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010702 (A008486 n).toNat) (A269909 n)

end

end A272010.P17983432292445372996

namespace A272010

/-- `or(A010702(A008486(n)), A269909(n))` -/
def P17983432292445372996.Spec : Prop :=
  ∀ n, P17983432292445372996.a n = A272010 n

end A272010

/-! ## A272010.P8042376965473148416

`or(A019431(A145154(n)), A269909(n))`
-/

namespace A272010.P8042376965473148416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019431 (A145154 n).toNat) (A269909 n)

end

end A272010.P8042376965473148416

namespace A272010

/-- `or(A019431(A145154(n)), A269909(n))` -/
def P8042376965473148416.Spec : Prop :=
  ∀ n, P8042376965473148416.a n = A272010 n

end A272010

/-! ## A272010.P12515441750379696760

`or(A217221(A008574(n)), A269909(n))`
-/

namespace A272010.P12515441750379696760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A217221 (A008574 n).toNat) (A269909 n)

end

end A272010.P12515441750379696760

namespace A272010

/-- `or(A217221(A008574(n)), A269909(n))` -/
def P12515441750379696760.Spec : Prop :=
  ∀ n, P12515441750379696760.a n = A272010 n

end A272010

/-! ## A272010.P3861109613133733383

`or(A010702(A008706(n)), A269909(n))`
-/

namespace A272010.P3861109613133733383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010702 (A008706 n).toNat) (A269909 n)

end

end A272010.P3861109613133733383

namespace A272010

/-- `or(A010702(A008706(n)), A269909(n))` -/
def P3861109613133733383.Spec : Prop :=
  ∀ n, P3861109613133733383.a n = A272010 n

end A272010

/-! ## A272010.P7366719532210605277

`A270935(n+1)+A269909(n)-A269907(n+1)`
-/

namespace A272010.P7366719532210605277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270935 (n + 1) + (A269909 n - A269907 (n + 1))

end

end A272010.P7366719532210605277

namespace A272010

/-- `A270935(n+1)+A269909(n)-A269907(n+1)` -/
def P7366719532210605277.Spec : Prop :=
  ∀ n, P7366719532210605277.a n = A272010 n

end A272010

/-!
# A272011: Irregular triangle read by rows: strictly decreasing sequences of nonnegative numbers given in lexicographic order.

The programs for A272011, there is no canonical definition to state claims against.
-/

/-! ## A272011.P18135963145751342079

`A272020(n)-1`
-/

namespace A272011.P18135963145751342079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272020 n - 1

end

end A272011.P18135963145751342079

/-! ## A272011.P283465595880128375

`A009995(A272020(n))`
-/

namespace A272011.P283465595880128375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (A272020 n).toNat

end

end A272011.P283465595880128375

/-! ## A272011.P12037193701011064102

`A065423(2*A272020(n))`
-/

namespace A272011.P12037193701011064102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A272020 n).toNat

end

end A272011.P12037193701011064102

/-! ## A272011.P3032088159626689049

`A252736(2^A272020(n))`
-/

namespace A272011.P3032088159626689049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A272020 n : ℤ))).toNat

end

end A272011.P3032088159626689049

/-! ## A272011.P311105894530141697

`A340251(2^A272020(n))`
-/

namespace A272011.P311105894530141697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A272020 n : ℤ))).toNat

end

end A272011.P311105894530141697

/-! ## A272011.P12659898981223993012

`A009996(A272020(n)%comp[∑[n]])`
-/

namespace A272011.P12659898981223993012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (Int.tmod (A272020 n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A272011.P12659898981223993012

/-! ## A272011.P15199981903673648014

`A009996(A272020(n))%A008000(n)`
-/

namespace A272011.P15199981903673648014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009996 (A272020 n).toNat) (A008000 n)

end

end A272011.P15199981903673648014

/-! ## A272011.P16819297423163488002

`A136490(A272020(n)+A033683(2*(n+2)))`
-/

namespace A272011.P16819297423163488002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (A272020 n + A033683 (2 * (n + 2))).toNat

end

end A272011.P16819297423163488002

/-! ## A272011.P6377678688387569775

`A200748(n)%A272020(n)`
-/

namespace A272011.P6377678688387569775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A272020 n)

end

end A272011.P6377678688387569775

/-! ## A272011.P10101159854372484603

`A058197(n+1)%A272020(n)`
-/

namespace A272011.P10101159854372484603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A272020 n)

end

end A272011.P10101159854372484603

/-! ## A272011.P3021298191765690282

`A181562(n+1)%A272020(n)`
-/

namespace A272011.P3021298191765690282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181562 (n + 1)) (A272020 n)

end

end A272011.P3021298191765690282

/-! ## A272011.P15906988657473698789

`A133489(n+1)%A272020(n)`
-/

namespace A272011.P15906988657473698789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133489 (n + 1)) (A272020 n)

end

end A272011.P15906988657473698789

/-! ## A272011.P18338681547486302495

`A117010(n+1)%A272020(n)`
-/

namespace A272011.P18338681547486302495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A272020 n)

end

end A272011.P18338681547486302495

/-! ## A272011.P1787544894153551734

`A083800(n+1)%A272020(n)`
-/

namespace A272011.P1787544894153551734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A272020 n)

end

end A272011.P1787544894153551734

/-! ## A272011.P5706006019113176101

`A070198(n)%A272020(n)`
-/

namespace A272011.P5706006019113176101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A272020 n)

end

end A272011.P5706006019113176101

/-! ## A272011.P6985362225586216305

`A079782(n+1)%A272020(n)`
-/

namespace A272011.P6985362225586216305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A272020 n)

end

end A272011.P6985362225586216305

/-! ## A272011.P6785123969969169516

`A083685(n+1)%A272020(n)`
-/

namespace A272011.P6785123969969169516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A272020 n)

end

end A272011.P6785123969969169516

/-! ## A272011.P4507372202459128873

`A121934(n+1)%A272020(n)`
-/

namespace A272011.P4507372202459128873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A272020 n)

end

end A272011.P4507372202459128873

/-! ## A272011.P2851670682417395419

`A030494(n+1)%A272020(n)`
-/

namespace A272011.P2851670682417395419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A272020 n)

end

end A272011.P2851670682417395419

/-! ## A272011.P5880207658445173884

`A072828(n+1)%A272020(n)`
-/

namespace A272011.P5880207658445173884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A272020 n)

end

end A272011.P5880207658445173884

/-!
# A272012: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A272012, there is no canonical definition to state claims against.
-/

/-! ## A272012.P12684682772159140815

`A272015(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272012.P12684682772159140815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272015 (n - 1) + a (n - 1)

end

end A272012.P12684682772159140815

/-! ## A272012.P1975141173275671747

`Δ[A272014(n)]-A272015(n)`
-/

namespace A272012.P1975141173275671747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272015 n

end

end A272012.P1975141173275671747

/-! ## A272012.P9831817627356568931

`A272014(n+1)-(A272015(n)+A272014(n))`
-/

namespace A272012.P9831817627356568931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272014 (n + 1) - (A272015 n + A272014 n)

end

end A272012.P9831817627356568931

/-! ## A272012.P10800320428131177571

`A000007(n)+A016754(n)-A272790(n)`
-/

namespace A272012.P10800320428131177571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A272790 n)

end

end A272012.P10800320428131177571

/-! ## A272012.P15548586213427008172

`A016754(n)*A054977(n)-A272790(n)`
-/

namespace A272012.P15548586213427008172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A054977 n - A272790 n

end

end A272012.P15548586213427008172

/-! ## A272012.P14460954522015339250

`A181385(A016825(n))-A272790(n)`
-/

namespace A272012.P14460954522015339250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272790 n

end

end A272012.P14460954522015339250

/-! ## A272012.P3810827274866465215

`A181385(A130824(n+1))-A272790(n)`
-/

namespace A272012.P3810827274866465215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A130824 (n + 1)).toNat - A272790 n

end

end A272012.P3810827274866465215

/-! ## A272012.P10457431604161593893

`A008740(A008458(n))-A272790(n)`
-/

namespace A272012.P10457431604161593893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272790 n

end

end A272012.P10457431604161593893

/-! ## A272012.P16627482967264555518

`A022144(A000217(n))+1-A272790(n)`
-/

namespace A272012.P16627482967264555518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat + (1 - A272790 n)

end

end A272012.P16627482967264555518

/-!
# A272013: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A272013, there is no canonical definition to state claims against.
-/

/-! ## A272013.P6401048597184067067

`A272012(2^n-1)`
-/

namespace A272013.P6401048597184067067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272012 (2 ^ n - 1)

end

end A272013.P6401048597184067067

/-! ## A272013.P16379332859718723713

`record[A272012(A232751(n))]`
-/

namespace A272013.P16379332859718723713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272012 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272013.P16379332859718723713

/-! ## A272013.P13163052895186029866

`record[A272012(A253564(n+1))]`
-/

namespace A272013.P13163052895186029866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272012 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272013.P13163052895186029866

/-! ## A272013.P6815945595904550582

`record[A036987(n)*A272012(n)]`
-/

namespace A272013.P6815945595904550582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A272012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272013.P6815945595904550582

/-! ## A272013.P15364804926628157459

`A272012(A000225(n))+2-4/2`
-/

namespace A272013.P15364804926628157459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272012 (A000225 n).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A272013.P15364804926628157459

/-!
# A272014: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A272014, there is no canonical definition to state claims against.
-/

/-! ## A272014.P4594090356558958042

`∑[A272012(n)]`
-/

namespace A272014.P4594090356558958042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272014.P4594090356558958042

/-! ## A272014.P2729820770178484076

`A272012(or(n, char[1]))+a(n-1)` with `a(0)=1`
-/

namespace A272014.P2729820770178484076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272012 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A272014.P2729820770178484076

/-! ## A272014.P7192406873762366104

`A272012(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272014.P7192406873762366104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272012 n + a (A023443 n).toNat

end

end A272014.P7192406873762366104

/-! ## A272014.P10045612756330657128

`a(n-1)+A272012(n)+A000007(n)` with `a(0)=1`
-/

namespace A272014.P10045612756330657128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272012 n + A000007 n)

end

end A272014.P10045612756330657128

/-! ## A272014.P1956100063334909116

`a(n-1)+A272012(n)%Δ[A172045(n)]` with `a(0)=1`
-/

namespace A272014.P1956100063334909116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272012 n) (f1 (n + 1) - f1 n)

end

end A272014.P1956100063334909116

/-! ## A272014.P7306448623697220453

`a(n-1)+A272012(n)+and(2, A267355(n+1))` with `a(0)=1`
-/

namespace A272014.P7306448623697220453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272012 n + Int.land 2 (A267355 (n + 1)))

end

end A272014.P7306448623697220453

/-! ## A272014.P15758011946873389741

`∑[∑[A272015(n)]+1-A272015(n)]`
-/

namespace A272014.P15758011946873389741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272015 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272014.P15758011946873389741

/-! ## A272014.P10085288868626542793

`∑[A181385(A016825(n))-A272790(n)]`
-/

namespace A272014.P10085288868626542793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272014.P10085288868626542793

/-! ## A272014.P11334677429411214075

`∑[A181385(A016825(n))]-A272792(n)`
-/

namespace A272014.P11334677429411214075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272792 n

end

end A272014.P11334677429411214075

/-!
# A272015: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A272015, there is no canonical definition to state claims against.
-/

/-! ## A272015.P6134173035072287302

`Δ[A272012(n)]`
-/

namespace A272015.P6134173035072287302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272015.P6134173035072287302

/-! ## A272015.P12534802059180685527

`A272012(n+1)-A272012(n)`
-/

namespace A272015.P12534802059180685527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272012 (n + 1) - A272012 n

end

end A272015.P12534802059180685527

/-! ## A272015.P11939091769882491386

`Δ[C(2, n+2)+A016754(n)-A272790(n)]`
-/

namespace A272015.P11939091769882491386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A016754 n - A272790 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272015.P11939091769882491386

/-! ## A272015.P18175848233411938808

`Δ[A000007(n)+A016754(n)-A272790(n)]`
-/

namespace A272015.P18175848233411938808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A272790 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272015.P18175848233411938808

/-! ## A272015.P5034364510019142829

`Δ[A181385(A016825(n))-A272790(n)]`
-/

namespace A272015.P5034364510019142829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272015.P5034364510019142829

/-! ## A272015.P18138457251337173278

`Δ[A022144(A000217(n))-A272790(n)]`
-/

namespace A272015.P18138457251337173278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat - A272790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272015.P18138457251337173278

/-! ## A272015.P14528135080839800815

`A272012(A008611(3*n))+A001489(A272012(n))`
-/

namespace A272015.P14528135080839800815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272012 (A008611 (3 * n)).toNat + A001489 (A272012 n).toNat

end

end A272015.P14528135080839800815

/-!
# A272016: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 417", based on the 5-celled von Neumann neighborhood.

The programs for A272016, there is no canonical definition to state claims against.
-/

/-! ## A272016.P5493513136317258815

`A272019(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272016.P5493513136317258815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272019 (n - 1) + a (n - 1)

end

end A272016.P5493513136317258815

/-! ## A272016.P4907849500541751559

`∑[A272019((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A272016.P4907849500541751559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272019 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272016.P4907849500541751559

/-! ## A272016.P13071506074420773096

`Δ[A272018(n)]-A272019(n)`
-/

namespace A272016.P13071506074420773096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272019 n

end

end A272016.P13071506074420773096

/-! ## A272016.P7906564152576356794

`∑[A272019(2*n-n)]+1-A272019(n)`
-/

namespace A272016.P7906564152576356794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272019 (2 * n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272019 n)

end

end A272016.P7906564152576356794

/-! ## A272016.P11941161703174427970

`A272018(n+1)-(A272019(n)+A272018(n))`
-/

namespace A272016.P11941161703174427970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272018 (n + 1) - (A272019 n + A272018 n)

end

end A272016.P11941161703174427970

/-!
# A272017: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 417", based on the 5-celled von Neumann neighborhood.

The programs for A272017, there is no canonical definition to state claims against.
-/

/-! ## A272017.P10908315713521713719

`A272016(2^n-1)`
-/

namespace A272017.P10908315713521713719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272016 (2 ^ n - 1)

end

end A272017.P10908315713521713719

/-! ## A272017.P13950208692036542581

`record[A272016(A038573(n))]`
-/

namespace A272017.P13950208692036542581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272016 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272017.P13950208692036542581

/-! ## A272017.P13763140901778568649

`record[A272016(A253564(n+1))]`
-/

namespace A272017.P13763140901778568649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272016 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272017.P13763140901778568649

/-! ## A272017.P12205438562924518056

`record[A272016(A324877(n+1))]`
-/

namespace A272017.P12205438562924518056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272016 (A324877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272017.P12205438562924518056

/-! ## A272017.P5950001435997152720

`record[gcd(A025480(n), A272016(n))]`
-/

namespace A272017.P5950001435997152720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 n) (A272016 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272017.P5950001435997152720

/-!
# A272018: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 417", based on the 5-celled von Neumann neighborhood.

The programs for A272018, there is no canonical definition to state claims against.
-/

/-! ## A272018.P13679705169299529477

`∑[∑[A272019(n)]+1-A272019(n)]`
-/

namespace A272018.P13679705169299529477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272019 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272018.P13679705169299529477

/-! ## A272018.P12224513453779236859

`∑[A272016(n)]`
-/

namespace A272018.P12224513453779236859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272018.P12224513453779236859

/-! ## A272018.P6917738070509890337

`A272016(n%A001122(n))+a(n-1)` with `a(0)=1`
-/

namespace A272018.P6917738070509890337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272016 (Int.tmod (n : ℤ) (A001122 n)).toNat + a (n - 1)

end

end A272018.P6917738070509890337

/-! ## A272018.P9131314082897123855

`a(n-1)+A019426(2*n)*A272016(n)` with `a(0)=1`
-/

namespace A272018.P9131314082897123855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A019426 (2 * n) * A272016 n

end

end A272018.P9131314082897123855

/-! ## A272018.P6023139455614496416

`A272016(gcd(n, A326588(n)))+a(n-1)` with `a(0)=1`
-/

namespace A272018.P6023139455614496416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272016 (Int.gcd (n : ℤ) (A326588 n)) + a (n - 1)

end

end A272018.P6023139455614496416

/-!
# A272019: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 417", based on the 5-celled von Neumann neighborhood.

The programs for A272019, there is no canonical definition to state claims against.
-/

/-! ## A272019.P12475840628856084257

`Δ[A272016(n)]`
-/

namespace A272019.P12475840628856084257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272019.P12475840628856084257

/-! ## A272019.P14326584921226433077

`A272016(n+1)-A272016(n)`
-/

namespace A272019.P14326584921226433077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272016 (n + 1) - A272016 n

end

end A272019.P14326584921226433077

/-! ## A272019.P15711439895357518699

`A272016(n+1)+A001478(A272016(n)+1)+1`
-/

namespace A272019.P15711439895357518699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272016 (n + 1) + (A001478 (A272016 n + 1).toNat + 1)

end

end A272019.P15711439895357518699

/-! ## A272019.P3104963097717159512

`Δ[A272018(n)]-A272089(n)^(n-∑{digits}[n, #])!`
-/

namespace A272019.P3104963097717159512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272018 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272089 n ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A272019.P3104963097717159512

/-! ## A272019.P9422777835738325515

`Δ[A272018(n)]-A272089(A087051(n))`
-/

namespace A272019.P9422777835738325515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272089 (A087051 n).toNat

end

end A272019.P9422777835738325515

/-!
# A272020: Irregular triangle read by rows: strictly decreasing sequences of positive numbers given in lexicographic order.

The programs for A272020, there is no canonical definition to state claims against.
-/

/-! ## A272020.P14048925364312325879

`A272011(n+1)+1`
-/

namespace A272020.P14048925364312325879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272011 (n + 1) + 1

end

end A272020.P14048925364312325879

/-! ## A272020.P1372813484565675338

`A005555(A272011(n+1))`
-/

namespace A272020.P1372813484565675338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A272011 (n + 1)).toNat

end

end A272020.P1372813484565675338

/-! ## A272020.P16627639536868052962

`A000005(A392036(n+1))`
-/

namespace A272020.P16627639536868052962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A392036 (n + 1)).toNat

end

end A272020.P16627639536868052962

/-! ## A272020.P9076248926593864827

`A029837(A392036(n+1)+1)`
-/

namespace A272020.P9076248926593864827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A392036 (n + 1) + 1).toNat

end

end A272020.P9076248926593864827

/-! ## A272020.P1238075231821426971

`A023416(2*A392036(n+1))`
-/

namespace A272020.P1238075231821426971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * A392036 (n + 1)).toNat

end

end A272020.P1238075231821426971

/-! ## A272020.P11209343515865752219

`A055941(2*A392036(n+1))`
-/

namespace A272020.P11209343515865752219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (2 * A392036 (n + 1)).toNat

end

end A272020.P11209343515865752219

/-!
# A272022: Look at the set of numbers obtained by permuting the digits of n in all possible ways, then remove n itself from the set. If the remaining numbers are all primes, then n is in the sequence.

The programs for A272022, there is no canonical definition to state claims against.
-/

/-! ## A272022.P8892221078097005488

`record[A007934(A030545(n))]`
-/

namespace A272022.P8892221078097005488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (A030545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272022.P8892221078097005488

/-! ## A272022.P7764646713443016277

`A118759(A007934(n+2))`
-/

namespace A272022.P7764646713443016277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A007934 (n + 2)).toNat

end

end A272022.P7764646713443016277

/-! ## A272022.P757138610593604847

`A118759(A111347(n+2))`
-/

namespace A272022.P757138610593604847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A111347 (n + 2)).toNat

end

end A272022.P757138610593604847

/-! ## A272022.P7011904925863181047

`A000188(A007934(n+2)²)`
-/

namespace A272022.P7011904925863181047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A007934 (n + 2) ^ 2).toNat

end

end A272022.P7011904925863181047

/-! ## A272022.P12427925869786071402

`A000194(A007934(n+2)²)`
-/

namespace A272022.P12427925869786071402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A007934 (n + 2) ^ 2).toNat

end

end A272022.P12427925869786071402

/-!
# A272024: Number of partitions of the sum of the divisors of n.

The programs for A272024, there is no canonical definition to state claims against.
-/

/-! ## A272024.P4141737950137170491

`A000041(A000203(n+1))`
-/

namespace A272024.P4141737950137170491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000203 (n + 1)).toNat

end

end A272024.P4141737950137170491

/-! ## A272024.P1727177959341733064

`A000041(∑{d}[n+1, #])`
-/

namespace A272024.P1727177959341733064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A272024.P1727177959341733064

/-! ## A272024.P10186838341716577534

`A000041(Δ[A160664(n)])`
-/

namespace A272024.P10186838341716577534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A272024.P10186838341716577534

/-! ## A272024.P17003901031668609429

`A000041(abs(A143348(n+1)))`
-/

namespace A272024.P17003901031668609429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A143348 (n + 1)|.toNat

end

end A272024.P17003901031668609429

/-! ## A272024.P15322520447958937218

`A000041(sqrt(A072861(n+1)))`
-/

namespace A272024.P15322520447958937218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A272024.P15322520447958937218

/-! ## A272024.P9944284394689357590

`A000041(∑[A340793(n+1)])`
-/

namespace A272024.P9944284394689357590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272024.P9944284394689357590

/-! ## A272024.P16735171565397951270

`A000041(A039653(n+1)+1)`
-/

namespace A272024.P16735171565397951270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A039653 (n + 1) + 1).toNat

end

end A272024.P16735171565397951270

/-! ## A272024.P11506781010355469799

`A000041(A245092(2*n+1))`
-/

namespace A272024.P11506781010355469799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A245092 (2 * n + 1)).toNat

end

end A272024.P11506781010355469799

/-! ## A272024.P5970160339217176994

`A000041(A262610(2*n+1))`
-/

namespace A272024.P5970160339217176994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A262610 (2 * n + 1)).toNat

end

end A272024.P5970160339217176994

/-! ## A272024.P17344333802486615988

`A000041(A074400(n+1)/2)`
-/

namespace A272024.P17344333802486615988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A272024.P17344333802486615988

/-! ## A272024.P6220321423963275399

`A000041(A001065(n+1)+1+n)`
-/

namespace A272024.P6220321423963275399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A272024.P6220321423963275399

/-! ## A272024.P12955918721764442315

`A000041(A155085(n+1)-(n+1))`
-/

namespace A272024.P12955918721764442315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A272024.P12955918721764442315

/-! ## A272024.P8989958545997639312

`A000041(A160664(n+1)-A160664(n))`
-/

namespace A272024.P8989958545997639312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A160664 (n + 1) - A160664 n).toNat

end

end A272024.P8989958545997639312

/-! ## A272024.P2085647121220867905

`A000041(A000041(n+1)-A086738(n+1))`
-/

namespace A272024.P2085647121220867905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000041 (n + 1) - A086738 (n + 1)).toNat

end

end A272024.P2085647121220867905

/-! ## A272024.P1762407871551130300

`A000041(A152211(n+1)-A038040(n+1))`
-/

namespace A272024.P1762407871551130300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A152211 (n + 1) - A038040 (n + 1)).toNat

end

end A272024.P1762407871551130300

/-! ## A272024.P1489092686018315907

`A000041(A066186(n+1)-A162329(n+1))`
-/

namespace A272024.P1489092686018315907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A066186 (n + 1) - A162329 (n + 1)).toNat

end

end A272024.P1489092686018315907

/-! ## A272024.P7868950453839898029

`A000041(A319528(n+1)-A319527(n+1))`
-/

namespace A272024.P7868950453839898029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A319528 (n + 1) - A319527 (n + 1)).toNat

end

end A272024.P7868950453839898029

/-! ## A272024.P14817579645297430672

`A000041(A343226(n+1)*A343227(n+1))`
-/

namespace A272024.P14817579645297430672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A343226 (n + 1) * A343227 (n + 1)).toNat

end

end A272024.P14817579645297430672

/-! ## A272024.P13961556074241398850

`A035363(A074400(n+1))`
-/

namespace A272024.P13961556074241398850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A074400 (n + 1)).toNat

end

end A272024.P13961556074241398850

/-! ## A272024.P11293922701729483431

`A194451(A002659(n+1))`
-/

namespace A272024.P11293922701729483431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (A002659 (n + 1)).toNat

end

end A272024.P11293922701729483431

/-!
# A272025: Irregular triangle read by rows, n >= 1, 1 <= k <= A038548(n), in which T(n,k) is the sum of the k-th pair of conjugate divisors of n, or T(n,k) is the central divisor of n if such a pair does not exist.

The programs for A272025, there is no canonical definition to state claims against.
-/

/-! ## A272025.P11749468505956052196

`A340791(n+1)+A161906(n+1)%A340791(n+1)`
-/

namespace A272025.P11749468505956052196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340791 (n + 1) + Int.tmod (A161906 (n + 1)) (A340791 (n + 1))

end

end A272025.P11749468505956052196

/-! ## A272025.P17641282417815371344

`A237273(record[n%(A237273(n+1)+n)]+1)`
-/

namespace A272025.P17641282417815371344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A237273 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A272025.P17641282417815371344

/-! ## A272025.P958403295898045523

`A237273(lt[A045698(n), A237273(n+1)]+1)`
-/

namespace A272025.P958403295898045523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237273 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A272025.P958403295898045523

/-! ## A272025.P187827798573099

`A161904(2*(n+1))+A161904(2*n+1)%A161904(2*(n+1))`
-/

namespace A272025.P187827798573099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161904 (2 * (n + 1)) + Int.tmod (A161904 (2 * n + 1)) (A161904 (2 * (n + 1)))

end

end A272025.P187827798573099

/-! ## A272025.P8670432768611619214

`A237273(lt[A244461(n+8), A003963(n+1)])`
-/

namespace A272025.P8670432768611619214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244461 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237273 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272025.P8670432768611619214

/-!
# A272026: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists the numbers A016945 interleaved with k-1 zeros, and the first element of column k is in row k(k+1)/2.

The programs for A272026, there is no canonical definition to state claims against.
-/

/-! ## A272026.P10656117602936082497

`3*A196020(n+1)`
-/

namespace A272026.P10656117602936082497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A196020 (n + 1)

end

end A272026.P10656117602936082497

/-! ## A272026.P10736180249502798050

`3/4*A239662(n+1)`
-/

namespace A272026.P10736180249502798050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A239662 (n + 1) : ℚ)

end

end A272026.P10736180249502798050

/-! ## A272026.P5409555298978167013

`A008585(A196020(n+1))`
-/

namespace A272026.P5409555298978167013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A196020 (n + 1)).toNat

end

end A272026.P5409555298978167013

/-! ## A272026.P11142765189136859554

`A057353(A239662(n+1))`
-/

namespace A272026.P11142765189136859554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A239662 (n + 1)).toNat

end

end A272026.P11142765189136859554

/-! ## A272026.P14486418887436929399

`abs(A228935(A211343(n+1)))`
-/

namespace A272026.P14486418887436929399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228935 (A211343 (n + 1)).toNat|

end

end A272026.P14486418887436929399

/-! ## A272026.P5409723996058677882

`A257844(A239662(n+1)+3)`
-/

namespace A272026.P5409723996058677882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257844 (A239662 (n + 1) + 3).toNat

end

end A272026.P5409723996058677882

/-! ## A272026.P15032799739424077848

`A004274(3*A211343(n+1))`
-/

namespace A272026.P15032799739424077848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (3 * A211343 (n + 1)).toNat

end

end A272026.P15032799739424077848

/-! ## A272026.P2334400337993435470

`A006368(lcm(2, A196020(n+1)))`
-/

namespace A272026.P2334400337993435470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lcm 2 (A196020 (n + 1)))

end

end A272026.P2334400337993435470

/-! ## A272026.P10685908632989284145

`A008486(A196020(n+1)+1)-3`
-/

namespace A272026.P10685908632989284145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A196020 (n + 1) + 1).toNat - 3

end

end A272026.P10685908632989284145

/-! ## A272026.P16962240654866139924

`A016777(A196020(n+1)+1)-4`
-/

namespace A272026.P16962240654866139924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A196020 (n + 1) + 1).toNat - 4

end

end A272026.P16962240654866139924

/-!
# A272027: a(n) = 3*sigma(n).

The programs for A272027, the canonical program `A272027.P17950759033993077215` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272027 has offset 1).

The definition of A272027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272027.P17950759033993077215

`3*A000203(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272027

/-- `3*A000203(n+1)` -/
def P17950759033993077215.Spec : Prop :=
  ∀ n, P17950759033993077215.a n = A272027 (n + 1)

theorem P17950759033993077215.correct : P17950759033993077215.Spec := by
  intro n
  simp only [A272027, Nat.add_sub_cancel]

end A272027

/-! ## A272027.P3118990052810267695

`A274536(n+1)/2`
-/

namespace A272027.P3118990052810267695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) : ℚ) / 2

end

end A272027.P3118990052810267695

namespace A272027

/-- `A274536(n+1)/2` -/
def P3118990052810267695.Spec : Prop :=
  ∀ n, P3118990052810267695.a n = (A272027 (n + 1) : ℚ)

end A272027

/-! ## A272027.P3814442510242619893

`A000203(n+1)+A074400(n+1)`
-/

namespace A272027.P3814442510242619893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A074400 (n + 1)

end

end A272027.P3814442510242619893

namespace A272027

/-- `A000203(n+1)+A074400(n+1)` -/
def P3814442510242619893.Spec : Prop :=
  ∀ n, P3814442510242619893.a n = A272027 (n + 1)

end A272027

/-! ## A272027.P14767988755339149439

`A239050(n+1)-A000203(n+1)`
-/

namespace A272027.P14767988755339149439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1) - A000203 (n + 1)

end

end A272027.P14767988755339149439

namespace A272027

/-- `A239050(n+1)-A000203(n+1)` -/
def P14767988755339149439.Spec : Prop :=
  ∀ n, P14767988755339149439.a n = A272027 (n + 1)

end A272027

/-! ## A272027.P13657326950217935322

`3*∑{d}[n+1, #]`
-/

namespace A272027.P13657326950217935322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A272027.P13657326950217935322

namespace A272027

/-- `3*∑{d}[n+1, #]` -/
def P13657326950217935322.Spec : Prop :=
  ∀ n, (P13657326950217935322.a n : ℤ) = A272027 (n + 1)

end A272027

/-! ## A272027.P5363473265999225106

`∑{d}[xor(n, -1), 3*#]`
-/

namespace A272027.P5363473265999225106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 3 * d

end

end A272027.P5363473265999225106

namespace A272027

/-- `∑{d}[xor(n, -1), 3*#]` -/
def P5363473265999225106.Spec : Prop :=
  ∀ n, (P5363473265999225106.a n : ℤ) = A272027 (n + 1)

end A272027

/-! ## A272027.P15404277678885976779

`3/∑{d}[n+1, #]^-1`
-/

namespace A272027.P15404277678885976779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A272027.P15404277678885976779

namespace A272027

/-- `3/∑{d}[n+1, #]^-1` -/
def P15404277678885976779.Spec : Prop :=
  ∀ n, P15404277678885976779.a n = (A272027 (n + 1) : ℚ)

end A272027

/-! ## A272027.P1179383714993572198

`∑{d}[2*n-(n-1), 3*#]`
-/

namespace A272027.P1179383714993572198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 3 * d

end

end A272027.P1179383714993572198

namespace A272027

/-- `∑{d}[2*n-(n-1), 3*#]` -/
def P1179383714993572198.Spec : Prop :=
  ∀ n, (P1179383714993572198.a n : ℤ) = A272027 (n + 1)

end A272027

/-! ## A272027.P17217361303084283079

`Δ[3*A160664(n)]`
-/

namespace A272027.P17217361303084283079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272027.P17217361303084283079

namespace A272027

/-- `Δ[3*A160664(n)]` -/
def P17217361303084283079.Spec : Prop :=
  ∀ n, P17217361303084283079.a n = A272027 (n + 1)

end A272027

/-! ## A272027.P14336306591303958790

`A325299(n+1)/3`
-/

namespace A272027.P14336306591303958790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325299 (n + 1) : ℚ) / 3

end

end A272027.P14336306591303958790

namespace A272027

/-- `A325299(n+1)/3` -/
def P14336306591303958790.Spec : Prop :=
  ∀ n, P14336306591303958790.a n = (A272027 (n + 1) : ℚ)

end A272027

/-! ## A272027.P3084597700332939137

`3*A245092(Δ[n²])`
-/

namespace A272027.P3084597700332939137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A272027.P3084597700332939137

namespace A272027

/-- `3*A245092(Δ[n²])` -/
def P3084597700332939137.Spec : Prop :=
  ∀ n, P3084597700332939137.a n = A272027 (n + 1)

end A272027

/-! ## A272027.P3905672325572658802

`3*sqrt(A072861(n+1))`
-/

namespace A272027.P3905672325572658802
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A072861 (n + 1) : ℝ)

end

end A272027.P3905672325572658802

namespace A272027

/-- `3*sqrt(A072861(n+1))` -/
def P3905672325572658802.Spec : Prop :=
  ∀ n, P3905672325572658802.a n = (A272027 (n + 1) : ℝ)

end A272027

/-! ## A272027.P11739806182939788930

`3*(A039653(n+1)+1)`
-/

namespace A272027.P11739806182939788930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A039653 (n + 1) + 1)

end

end A272027.P11739806182939788930

namespace A272027

/-- `3*(A039653(n+1)+1)` -/
def P11739806182939788930.Spec : Prop :=
  ∀ n, P11739806182939788930.a n = A272027 (n + 1)

end A272027

/-! ## A272027.P10890238448049171269

`3*(A088580(n+1)-1)`
-/

namespace A272027.P10890238448049171269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A088580 (n + 1) - 1)

end

end A272027.P10890238448049171269

namespace A272027

/-- `3*(A088580(n+1)-1)` -/
def P10890238448049171269.Spec : Prop :=
  ∀ n, P10890238448049171269.a n = A272027 (n + 1)

end A272027

/-! ## A272027.P351020975097345519

`3/2*A074400(n+1)`
-/

namespace A272027.P351020975097345519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A272027.P351020975097345519

namespace A272027

/-- `3/2*A074400(n+1)` -/
def P351020975097345519.Spec : Prop :=
  ∀ n, P351020975097345519.a n = (A272027 (n + 1) : ℚ)

end A272027

/-! ## A272027.P8811157989197172328

`3/4*A239050(n+1)`
-/

namespace A272027.P8811157989197172328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A239050 (n + 1) : ℚ)

end

end A272027.P8811157989197172328

namespace A272027

/-- `3/4*A239050(n+1)` -/
def P8811157989197172328.Spec : Prop :=
  ∀ n, P8811157989197172328.a n = (A272027 (n + 1) : ℚ)

end A272027

/-! ## A272027.P10831514455876137912

`3/5*A274535(n+1)`
-/

namespace A272027.P10831514455876137912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A274535 (n + 1) : ℚ)

end

end A272027.P10831514455876137912

namespace A272027

/-- `3/5*A274535(n+1)` -/
def P10831514455876137912.Spec : Prop :=
  ∀ n, P10831514455876137912.a n = (A272027 (n + 1) : ℚ)

end A272027

/-! ## A272027.P16736816339935494257

`3*(A001065(n+1)+1+n)`
-/

namespace A272027.P16736816339935494257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A001065 (n + 1) + 1 + (n : ℤ))

end

end A272027.P16736816339935494257

namespace A272027

/-- `3*(A001065(n+1)+1+n)` -/
def P16736816339935494257.Spec : Prop :=
  ∀ n, P16736816339935494257.a n = A272027 (n + 1)

end A272027

/-! ## A272027.P14638180091819737878

`3*(A155085(n+1)-(n+1))`
-/

namespace A272027.P14638180091819737878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A155085 (n + 1) - (n + 1 : ℤ))

end

end A272027.P14638180091819737878

namespace A272027

/-- `3*(A155085(n+1)-(n+1))` -/
def P14638180091819737878.Spec : Prop :=
  ∀ n, P14638180091819737878.a n = A272027 (n + 1)

end A272027

/-! ## A272027.P17337205236244289870

`3/(n+1)*A064987(n+1)`
-/

namespace A272027.P17337205236244289870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A064987 (n + 1) : ℚ)

end

end A272027.P17337205236244289870

namespace A272027

/-- `3/(n+1)*A064987(n+1)` -/
def P17337205236244289870.Spec : Prop :=
  ∀ n, P17337205236244289870.a n = (A272027 (n + 1) : ℚ)

end A272027

/-!
# A272032: Positive integers n such that (q^n + r^n)/(q+r) is prime, where q is the number of consecutive composite numbers smaller than n and r is the number of consecutive composite numbers greater than n.

The programs for A272032, there is no canonical definition to state claims against.
-/

/-! ## A272032.P10430222468535388599

`p?[∑[xor(7, n)%(xor(8, n)+8)]]`
-/

namespace A272032.P10430222468535388599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n % (Nat.xor 8 n + 8)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A272032.P10430222468535388599

/-!
# A272033: Number of irreducible normal polynomials of degree n over GF(2) that are not primitive.

The programs for A272033, there is no canonical definition to state claims against.
-/

/-! ## A272033.P16372232361422069450

`A027362(n+1)-A107222(n+1)`
-/

namespace A272033.P16372232361422069450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027362 (n + 1) - A107222 (n + 1)

end

end A272033.P16372232361422069450

/-! ## A272033.P13662724542187376401

`A003473(n+1)/(n+1)-A107222(n+1)`
-/

namespace A272033.P13662724542187376401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003473 (n + 1) : ℚ) / (n + 1 : ℚ) - (A107222 (n + 1) : ℚ)

end

end A272033.P13662724542187376401

/-! ## A272033.P4758471794940641923

`(2^(n+1)-A086324(n+1))/(n+1)-A107222(n+1)`
-/

namespace A272033.P4758471794940641923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A086324 (n + 1) : ℚ) / (n + 1 : ℚ) - (A107222 (n + 1) : ℚ)

end

end A272033.P4758471794940641923

/-! ## A272033.P9193025087730400658

`A027362(n+1)+A107222(n+1)/A033999(2*n+1)`
-/

namespace A272033.P9193025087730400658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027362 (n + 1) : ℚ) + (A107222 (n + 1) : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A272033.P9193025087730400658

/-! ## A272033.P14026805180922705167

`and(-A086324(n+1), A126646(n))/(n+1)-A107222(n+1)`
-/

namespace A272033.P14026805180922705167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-A086324 (n + 1)) (A126646 n) : ℚ) / (n + 1 : ℚ) - (A107222 (n + 1) : ℚ)

end

end A272033.P14026805180922705167

/-!
# A272034: Numbers n such that the sum of the inverse of the exponents in the binary expansion of 2n is the inverse of an integer.

The programs for A272034, there is no canonical definition to state claims against.
-/

/-! ## A272034.P14867197905724995801

`eq[1, A116416(n)]`
-/

namespace A272034.P14867197905724995801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272034.P14867197905724995801

/-! ## A272034.P14550288510147028166

`1+lt[A116416(n+1), 2]`
-/

namespace A272034.P14550288510147028166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272034.P14550288510147028166

/-! ## A272034.P16731507447930435733

`lt[A116416(n), atan(A005843(n))]`
-/

namespace A272034.P16731507447930435733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A005843 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A272034.P16731507447930435733

/-! ## A272034.P4158631291075308296

`lt[A116416(n), 2*A062157(n)²]`
-/

namespace A272034.P4158631291075308296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062157 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272034.P4158631291075308296

/-! ## A272034.P592778773856105953

`lt[A004442(A116416(n)), A033999(n)²]`
-/

namespace A272034.P592778773856105953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A116416 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272034.P592778773856105953

/-!
# A272035: Numbers n such that the sum of the inverse of the exponents in the binary expansion of 2n is an integer.

The programs for A272035, there is no canonical definition to state claims against.
-/

/-! ## A272035.P2775297409413228536

`eq[1, A116417(n)]`
-/

namespace A272035.P2775297409413228536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272035.P2775297409413228536

/-!
# A272036: Numbers n such that the sum of the inverse of the exponents in the binary expansion of 2n is equal to 1.

The programs for A272036, there is no canonical definition to state claims against.
-/

/-! ## A272036.P6217963382696341141

`∩[A272034(n+1), A272035(n+2)]`
-/

namespace A272036.P6217963382696341141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272035 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272036.P6217963382696341141

/-! ## A272036.P15271122615300577633

`A272035(2*n+1)+A023533(A080572(3*n+1))`
-/

namespace A272036.P15271122615300577633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272035 (2 * n + 1) + A023533 (A080572 (3 * n + 1)).toNat

end

end A272036.P15271122615300577633

/-! ## A272036.P14697718267619818149

`A272035(2*n+1)+A023533(A118598(3*n+1))`
-/

namespace A272036.P14697718267619818149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272035 (2 * n + 1) + A023533 (A118598 (3 * n + 1)).toNat

end

end A272036.P14697718267619818149

/-! ## A272036.P7260108282730686490

`A272035(2*n+2)-A057427(A328097(n+1))`
-/

namespace A272036.P7260108282730686490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272035 (2 * n + 2) - A057427 (A328097 (n + 1)).toNat

end

end A272036.P7260108282730686490

/-! ## A272036.P15821100896064205997

`A272035(2*(n+1))+A062157(A339809(2*n))`
-/

namespace A272036.P15821100896064205997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272035 (2 * (n + 1)) + A062157 (A339809 (2 * n)).toNat

end

end A272036.P15821100896064205997

/-!
# A272038: Somos's sequence {b(9,n)} defined in comment in A078495: a(0)=a(1)=...=a(20)=1; for n>=21, a(n)=(a(n-1)*a(n-20)+a(n-10)*a(n-11))/a(n-21).

The programs for A272038, there is no canonical definition to state claims against.
-/

/-! ## A272038.P3836416076562100024

`A001511(∏[∏[A326307(n)]])`
-/

namespace A272038.P3836416076562100024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272038.P3836416076562100024

/-! ## A272038.P17478247117273620964

`A376567(∏[∏[A082586(n+4)]])`
-/

namespace A272038.P17478247117273620964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082586 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376567 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272038.P17478247117273620964

/-! ## A272038.P9487004213838220014

`∑[round(A199409(n)/A132275(n+3))]`
-/

namespace A272038.P9487004213838220014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199409 n : ℚ) / (A132275 (n + 3) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272038.P9487004213838220014

/-! ## A272038.P307815630525715557

`∑[C(record[A320485(n)]-n, 2)^n^n]`
-/

namespace A272038.P307815630525715557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)).toNat 2 ^ n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272038.P307815630525715557

/-! ## A272038.P13943966802137229869

`∑[C(comp[A109303(n+1)]-n, 2)^n^n]`
-/

namespace A272038.P13943966802137229869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 ^ n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272038.P13943966802137229869

/-!
# A272039: a(n) = 10*n^2 + 4*n + 1.

The programs for A272039, the canonical program `A272039.P16521876396814227489` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272039 has offset 0).

The definition of A272039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n²+4*n+1` (program `A272039.P16521876396814227489`, by `A272039.P16521876396814227489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272039.P16521876396814227489

`10*n²+4*n+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A272039

/-- `10*n²+4*n+1` -/
def P16521876396814227489.Spec : Prop :=
  ∀ n, (P16521876396814227489.a n : ℤ) = A272039 n

theorem P16521876396814227489.correct : P16521876396814227489.Spec := by
  intro n
  simp only [A272039]

end A272039

/-! ## A272039.P12178504839567185560

`∑[a(n-1)+20]` with `a(0)=1, a(1)=14`
-/

namespace A272039.P12178504839567185560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272039.P12178504839567185560

namespace A272039

/-- `∑[a(n-1)+20]` -/
def P12178504839567185560.Spec : Prop :=
  ∀ n, (P12178504839567185560.a n : ℤ) = A272039 n

end A272039

/-! ## A272039.P8771478141819910757

`or(1, n*(10*n+4))`
-/

namespace A272039.P8771478141819910757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (10 * n + 4))

end

end A272039.P8771478141819910757

namespace A272039

/-- `or(1, n*(10*n+4))` -/
def P8771478141819910757.Spec : Prop :=
  ∀ n, (P8771478141819910757.a n : ℤ) = A272039 n

end A272039

/-! ## A272039.P3755544838082135090

`xor(1, n*(10*n+4))`
-/

namespace A272039.P3755544838082135090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (10 * n + 4))

end

end A272039.P3755544838082135090

namespace A272039

/-- `xor(1, n*(10*n+4))` -/
def P3755544838082135090.Spec : Prop :=
  ∀ n, (P3755544838082135090.a n : ℤ) = A272039 n

end A272039

/-! ## A272039.P2133447642425143003

`abs(5*C(2*n+1, 2)-(n-1))`
-/

namespace A272039.P2133447642425143003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * Nat.choose (2 * n + 1) 2 : ℤ) - ((n : ℤ) - 1)|

end

end A272039.P2133447642425143003

namespace A272039

/-- `abs(5*C(2*n+1, 2)-(n-1))` -/
def P2133447642425143003.Spec : Prop :=
  ∀ n, P2133447642425143003.a n = A272039 n

end A272039

/-! ## A272039.P15172329704087640859

`abs(5*lcm(n, 2*n+1)-(n-1))`
-/

namespace A272039.P15172329704087640859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * Nat.lcm n (2 * n + 1) : ℤ) - ((n : ℤ) - 1)|

end

end A272039.P15172329704087640859

namespace A272039

/-- `abs(5*lcm(n, 2*n+1)-(n-1))` -/
def P15172329704087640859.Spec : Prop :=
  ∀ n, P15172329704087640859.a n = A272039 n

end A272039

/-! ## A272039.P17797768519362660959

`abs(n-A080860(n))`
-/

namespace A272039.P17797768519362660959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A080860 n|

end

end A272039.P17797768519362660959

namespace A272039

/-- `abs(n-A080860(n))` -/
def P17797768519362660959.Spec : Prop :=
  ∀ n, P17797768519362660959.a n = A272039 n

end A272039

/-! ## A272039.P9751993275170310025

`(A381196(n)+1)/2`
-/

namespace A272039.P9751993275170310025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381196 n + 1 : ℚ) / 2

end

end A272039.P9751993275170310025

namespace A272039

/-- `(A381196(n)+1)/2` -/
def P9751993275170310025.Spec : Prop :=
  ∀ n, P9751993275170310025.a n = (A272039 n : ℚ)

end A272039

/-! ## A272039.P7188068686555470934

`∑[A019557(n)+2*n]`
-/

namespace A272039.P7188068686555470934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272039.P7188068686555470934

namespace A272039

/-- `∑[A019557(n)+2*n]` -/
def P7188068686555470934.Spec : Prop :=
  ∀ n, P7188068686555470934.a n = A272039 n

end A272039

/-! ## A272039.P3143999268850371945

`ceil(4*A016861(n)²/10)`
-/

namespace A272039.P3143999268850371945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((A016861 n ^ 2 : ℚ) / 10)⌉

end

end A272039.P3143999268850371945

namespace A272039

/-- `ceil(4*A016861(n)²/10)` -/
def P3143999268850371945.Spec : Prop :=
  ∀ n, P3143999268850371945.a n = A272039 n

end A272039

/-! ## A272039.P11183955920970375711

`abs(n*A017329(n)+1-n)`
-/

namespace A272039.P11183955920970375711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A017329 n + 1 - (n : ℤ)|

end

end A272039.P11183955920970375711

namespace A272039

/-- `abs(n*A017329(n)+1-n)` -/
def P11183955920970375711.Spec : Prop :=
  ∀ n, P11183955920970375711.a n = A272039 n

end A272039

/-! ## A272039.P9921564678237205684

`abs(2*(A005897(n)-(1-n)²)-1)`
-/

namespace A272039.P9921564678237205684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A005897 n - (1 - (n : ℤ)) ^ 2) - 1|

end

end A272039.P9921564678237205684

namespace A272039

/-- `abs(2*(A005897(n)-(1-n)²)-1)` -/
def P9921564678237205684.Spec : Prop :=
  ∀ n, P9921564678237205684.a n = A272039 n

end A272039

/-! ## A272039.P14253591328694128974

`Δ[A034721(n)]`
-/

namespace A272039.P14253591328694128974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272039.P14253591328694128974

namespace A272039

/-- `Δ[A034721(n)]` -/
def P14253591328694128974.Spec : Prop :=
  ∀ n, P14253591328694128974.a n = A272039 n

end A272039

/-! ## A272039.P5419603484419883096

`∑[A298033(2*n)+2*n]`
-/

namespace A272039.P5419603484419883096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272039.P5419603484419883096

namespace A272039

/-- `∑[A298033(2*n)+2*n]` -/
def P5419603484419883096.Spec : Prop :=
  ∀ n, P5419603484419883096.a n = A272039 n

end A272039

/-! ## A272039.P8491504872599050006

`(A079273(2*n+1)+1)/2`
-/

namespace A272039.P8491504872599050006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079273 (2 * n + 1) + 1 : ℚ) / 2

end

end A272039.P8491504872599050006

namespace A272039

/-- `(A079273(2*n+1)+1)/2` -/
def P8491504872599050006.Spec : Prop :=
  ∀ n, P8491504872599050006.a n = (A272039 n : ℚ)

end A272039

/-! ## A272039.P11317378683213353696

`abs(n-A005891(A005843(n)))`
-/

namespace A272039.P11317378683213353696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A005891 (A005843 n).toNat|

end

end A272039.P11317378683213353696

namespace A272039

/-- `abs(n-A005891(A005843(n)))` -/
def P11317378683213353696.Spec : Prop :=
  ∀ n, P11317378683213353696.a n = A272039 n

end A272039

/-! ## A272039.P9147125335682012396

`∑[A109474(2*n+2*n+1)]`
-/

namespace A272039.P9147125335682012396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272039.P9147125335682012396

namespace A272039

/-- `∑[A109474(2*n+2*n+1)]` -/
def P9147125335682012396.Spec : Prop :=
  ∀ n, P9147125335682012396.a n = A272039 n

end A272039

/-! ## A272039.P6018244403063747460

`∑[record[A267318(2*n)]]`
-/

namespace A272039.P6018244403063747460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272039.P6018244403063747460

namespace A272039

/-- `∑[record[A267318(2*n)]]` -/
def P6018244403063747460.Spec : Prop :=
  ∀ n, P6018244403063747460.a n = A272039 n

end A272039

/-! ## A272039.P13183581546997138368

`A036408(A017293(n))`
-/

namespace A272039.P13183581546997138368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 (A017293 n).toNat

end

end A272039.P13183581546997138368

namespace A272039

/-- `A036408(A017293(n))` -/
def P13183581546997138368.Spec : Prop :=
  ∀ n, P13183581546997138368.a n = A272039 n

end A272039

/-!
# A272040: a(n) = A000010(A000129(n)).

The programs for A272040, the canonical program `A272040.P17165963704395840071` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272040 has offset 1).

The definition of A272040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272040.P17165963704395840071

`A000010(A000129(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A272040

/-- `A000010(A000129(n+1))` -/
def P17165963704395840071.Spec : Prop :=
  ∀ n, P17165963704395840071.a n = A272040 (n + 1)

theorem P17165963704395840071.correct : P17165963704395840071.Spec := by
  intro n
  simp only [A272040, Nat.add_sub_cancel]

end A272040

/-! ## A272040.P366427328453628853

`A000010(floor(∑[(sqrt(2)+1)^n/2])+1)`
-/

namespace A272040.P366427328453628853
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (2 : ℝ) + 1) ^ n / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1).toNat

end

end A272040.P366427328453628853

namespace A272040

/-- `A000010(floor(∑[(sqrt(2)+1)^n/2])+1)` -/
def P366427328453628853.Spec : Prop :=
  ∀ n, P366427328453628853.a n = A272040 (n + 1)

end A272040

/-! ## A272040.P11579620084019346674

`A062570(A041011(n))`
-/

namespace A272040.P11579620084019346674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A041011 n).toNat

end

end A272040.P11579620084019346674

namespace A272040

/-- `A062570(A041011(n))` -/
def P11579620084019346674.Spec : Prop :=
  ∀ n, P11579620084019346674.a n = A272040 (n + 1)

end A272040

/-! ## A272040.P17207341244251630210

`A062570(A152118(n+1))`
-/

namespace A272040.P17207341244251630210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A152118 (n + 1)).toNat

end

end A272040.P17207341244251630210

namespace A272040

/-- `A062570(A152118(n+1))` -/
def P17207341244251630210.Spec : Prop :=
  ∀ n, P17207341244251630210.a n = A272040 (n + 1)

end A272040

/-! ## A272040.P3597403457967215921

`A000010(∑[A001333(n)])+char[30]`
-/

namespace A272040.P3597403457967215921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272040.P3597403457967215921

namespace A272040

/-- `A000010(∑[A001333(n)])+char[30]` -/
def P3597403457967215921.Spec : Prop :=
  ∀ n, P3597403457967215921.a n = A272040 (n + 1)

end A272040

/-!
# A272042: a(n) = 2*prime(2n) - prime(n).

The programs for A272042, the canonical program `A272042.P14624273689638821498` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272042 has offset 1).

The definition of A272042 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031215, A072473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272042.P14624273689638821498

`A072473(n+1)+A031215(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A272042

/-- `A072473(n+1)+A031215(n+1)` -/
def P14624273689638821498.Spec : Prop :=
  ∀ n, P14624273689638821498.a n = A272042 (n + 1)

theorem P14624273689638821498.correct : P14624273689638821498.Spec := by
  intro n
  simp only [A272042, Nat.add_sub_cancel]

end A272042

/-! ## A272042.P3731134715099686752

`A092390(n+1)+A066066(n+1)`
-/

namespace A272042.P3731134715099686752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (n + 1) + A066066 (n + 1)

end

end A272042.P3731134715099686752

namespace A272042

/-- `A092390(n+1)+A066066(n+1)` -/
def P3731134715099686752.Spec : Prop :=
  ∀ n, P3731134715099686752.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P17984970363657900981

`A001748(n+1)+2*A066066(n+1)`
-/

namespace A272042.P17984970363657900981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + 2 * A066066 (n + 1)

end

end A272042.P17984970363657900981

namespace A272042

/-- `A001748(n+1)+2*A066066(n+1)` -/
def P17984970363657900981.Spec : Prop :=
  ∀ n, P17984970363657900981.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P3822155982571511292

`A000040(n+1)+2*A072473(n+1)`
-/

namespace A272042.P3822155982571511292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A072473 (n + 1)

end

end A272042.P3822155982571511292

namespace A272042

/-- `A000040(n+1)+2*A072473(n+1)` -/
def P3822155982571511292.Spec : Prop :=
  ∀ n, P3822155982571511292.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P6924903982337608029

`2*A031215(n+1)-A000040(n+1)`
-/

namespace A272042.P6924903982337608029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A031215 (n + 1) - A000040 (n + 1)

end

end A272042.P6924903982337608029

namespace A272042

/-- `2*A031215(n+1)-A000040(n+1)` -/
def P6924903982337608029.Spec : Prop :=
  ∀ n, P6924903982337608029.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P4197878768556481149

`A000040(n+1)+A066066(n+1)+A031215(n+1)`
-/

namespace A272042.P4197878768556481149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A066066 (n + 1) + A031215 (n + 1))

end

end A272042.P4197878768556481149

namespace A272042

/-- `A000040(n+1)+A066066(n+1)+A031215(n+1)` -/
def P4197878768556481149.Spec : Prop :=
  ∀ n, P4197878768556481149.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P12882627181797044838

`A066066(n+1)+A100484(n+1)+A072473(n+1)`
-/

namespace A272042.P12882627181797044838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + (A100484 (n + 1) + A072473 (n + 1))

end

end A272042.P12882627181797044838

namespace A272042

/-- `A066066(n+1)+A100484(n+1)+A072473(n+1)` -/
def P12882627181797044838.Spec : Prop :=
  ∀ n, P12882627181797044838.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P7592713709767980091

`A031215(n+1)+A031215(n+1)-A008578(n+2)`
-/

namespace A272042.P7592713709767980091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A031215 (n + 1) - A008578 (n + 2))

end

end A272042.P7592713709767980091

namespace A272042

/-- `A031215(n+1)+A031215(n+1)-A008578(n+2)` -/
def P7592713709767980091.Spec : Prop :=
  ∀ n, P7592713709767980091.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P1703818463476310940

`A037168(2*(n+1))-A040976(n+1)`
-/

namespace A272042.P1703818463476310940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (2 * (n + 1)) - A040976 (n + 1)

end

end A272042.P1703818463476310940

namespace A272042

/-- `A037168(2*(n+1))-A040976(n+1)` -/
def P1703818463476310940.Spec : Prop :=
  ∀ n, P1703818463476310940.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P9139550517438297980

`A100484(2*(n+1))-A000040(n+1)`
-/

namespace A272042.P9139550517438297980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (2 * (n + 1)) - A000040 (n + 1)

end

end A272042.P9139550517438297980

namespace A272042

/-- `A100484(2*(n+1))-A000040(n+1)` -/
def P9139550517438297980.Spec : Prop :=
  ∀ n, P9139550517438297980.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P3905794580135037073

`A072055(2*(n+1))-A028815(n+1)`
-/

namespace A272042.P3905794580135037073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (2 * (n + 1)) - A028815 (n + 1)

end

end A272042.P3905794580135037073

namespace A272042

/-- `A072055(2*(n+1))-A028815(n+1)` -/
def P3905794580135037073.Spec : Prop :=
  ∀ n, P3905794580135037073.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P15198163475922829897

`A100484(2*(n+1))-A008578(n+2)`
-/

namespace A272042.P15198163475922829897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (2 * (n + 1)) - A008578 (n + 2)

end

end A272042.P15198163475922829897

namespace A272042

/-- `A100484(2*(n+1))-A008578(n+2)` -/
def P15198163475922829897.Spec : Prop :=
  ∀ n, P15198163475922829897.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P13840711666239943849

`A100484(2*(n+1))-A182986(n+2)`
-/

namespace A272042.P13840711666239943849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (2 * (n + 1)) - A182986 (n + 2)

end

end A272042.P13840711666239943849

namespace A272042

/-- `A100484(2*(n+1))-A182986(n+2)` -/
def P13840711666239943849.Spec : Prop :=
  ∀ n, P13840711666239943849.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P11555472971767802384

`A100484(2*(n+1))-record[A006530(n+2)]`
-/

namespace A272042.P11555472971767802384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (2 * (n + 1)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272042.P11555472971767802384

namespace A272042

/-- `A100484(2*(n+1))-record[A006530(n+2)]` -/
def P11555472971767802384.Spec : Prop :=
  ∀ n, P11555472971767802384.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P14075829526410578278

`A100484(2*(n+1))-record[A020639(n+2)]`
-/

namespace A272042.P14075829526410578278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (2 * (n + 1)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272042.P14075829526410578278

namespace A272042

/-- `A100484(2*(n+1))-record[A020639(n+2)]` -/
def P14075829526410578278.Spec : Prop :=
  ∀ n, P14075829526410578278.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P8498336041531170135

`2*A000040(2*(n+1))-A000040(n+1)`
-/

namespace A272042.P8498336041531170135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (2 * (n + 1)) - A000040 (n + 1)

end

end A272042.P8498336041531170135

namespace A272042

/-- `2*A000040(2*(n+1))-A000040(n+1)` -/
def P8498336041531170135.Spec : Prop :=
  ∀ n, P8498336041531170135.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P10824204027136053571

`A100484(2*(n+1))-A067747(2*n+1)`
-/

namespace A272042.P10824204027136053571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (2 * (n + 1)) - A067747 (2 * n + 1)

end

end A272042.P10824204027136053571

namespace A272042

/-- `A100484(2*(n+1))-A067747(2*n+1)` -/
def P10824204027136053571.Spec : Prop :=
  ∀ n, P10824204027136053571.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P14708255509285872224

`lcm(2, A000040(n+2+n))-A000040(n+1)`
-/

namespace A272042.P14708255509285872224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000040 (n + 2 + n)) : ℤ) - A000040 (n + 1)

end

end A272042.P14708255509285872224

namespace A272042

/-- `lcm(2, A000040(n+2+n))-A000040(n+1)` -/
def P14708255509285872224.Spec : Prop :=
  ∀ n, P14708255509285872224.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P9458650549148014845

`A000040(n+2+n)+A000040(n+2+n)-record[A006530(n+2)]`
-/

namespace A272042.P9458650549148014845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2 + n) + (A000040 (n + 2 + n) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A272042.P9458650549148014845

namespace A272042

/-- `A000040(n+2+n)+A000040(n+2+n)-record[A006530(n+2)]` -/
def P9458650549148014845.Spec : Prop :=
  ∀ n, P9458650549148014845.a n = A272042 (n + 1)

end A272042

/-! ## A272042.P17865962832259420372

`A000040(n+2+n)+A000040(n+2+n)-record[A020639(n+2)]`
-/

namespace A272042.P17865962832259420372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2 + n) + (A000040 (n + 2 + n) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A272042.P17865962832259420372

namespace A272042

/-- `A000040(n+2+n)+A000040(n+2+n)-record[A020639(n+2)]` -/
def P17865962832259420372.Spec : Prop :=
  ∀ n, P17865962832259420372.a n = A272042 (n + 1)

end A272042

/-!
# A272043: a(n) is the shyest prime in base n.

The programs for A272043, there is no canonical definition to state claims against.
-/

/-! ## A272043.P11041952982077226314

`p?[A253831(n*gcd(2, n))+1]`
-/

namespace A272043.P11041952982077226314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253831 (n * Nat.gcd 2 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272043.P11041952982077226314

/-!
# A272044: Numbers n such that n and n^2+1 have the same number of prime factors (including multiplicities).

The programs for A272044, the canonical program `A272044.P11714011590249258596` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272044 has offset 1).

The definition of A272044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272044.P11714011590249258596

`eq[A001222(abs(1-n)+1), A193330(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A272044

/-- `eq[A001222(abs(1-n)+1), A193330(n)]` -/
def P11714011590249258596.Spec : Prop :=
  ∀ n, (P11714011590249258596.a n : ℤ) = A272044 (n + 1)

theorem P11714011590249258596.correct : P11714011590249258596.Spec := by
  intro n
  simp only [A272044, Nat.add_sub_cancel]

end A272044

/-! ## A272044.P14910107354329760114

`eq[A001222(n+1), A193330(n+1)]+1`
-/

namespace A272044.P14910107354329760114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272044.P14910107354329760114

namespace A272044

/-- `eq[A001222(n+1), A193330(n+1)]+1` -/
def P14910107354329760114.Spec : Prop :=
  ∀ n, (P14910107354329760114.a n : ℤ) = A272044 (n + 1)

end A272044

/-! ## A272044.P16293491282955063242

`eq[A122810(n+1), A193330(n+1)]+1`
-/

namespace A272044.P16293491282955063242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272044.P16293491282955063242

namespace A272044

/-- `eq[A122810(n+1), A193330(n+1)]+1` -/
def P16293491282955063242.Spec : Prop :=
  ∀ n, (P16293491282955063242.a n : ℤ) = A272044 (n + 1)

end A272044

/-! ## A272044.P3714601141549711678

`eq[A001222(abs(1-n)+1), A001222(n²+1)]`
-/

namespace A272044.P3714601141549711678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272044.P3714601141549711678

namespace A272044

/-- `eq[A001222(abs(1-n)+1), A001222(n²+1)]` -/
def P3714601141549711678.Spec : Prop :=
  ∀ n, (P3714601141549711678.a n : ℤ) = A272044 (n + 1)

end A272044

/-! ## A272044.P8751459995362325095

`eq[A001222((n+1)²+1), A001222(n+1)]+1`
-/

namespace A272044.P8751459995362325095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272044.P8751459995362325095

namespace A272044

/-- `eq[A001222((n+1)²+1), A001222(n+1)]+1` -/
def P8751459995362325095.Spec : Prop :=
  ∀ n, (P8751459995362325095.a n : ℤ) = A272044 (n + 1)

end A272044

/-! ## A272044.P5720777530251510923

`eq[A001222(n²+1)+1, A001222(A004277(n))]`
-/

namespace A272044.P5720777530251510923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272044.P5720777530251510923

namespace A272044

/-- `eq[A001222(n²+1)+1, A001222(A004277(n))]` -/
def P5720777530251510923.Spec : Prop :=
  ∀ n, (P5720777530251510923.a n : ℤ) = A272044 (n + 1)

end A272044

/-! ## A272044.P11056885526249449852

`eq[A318473((n+1)²+1), A318473(n+1)]+1`
-/

namespace A272044.P11056885526249449852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 ((n + 1) ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272044.P11056885526249449852

namespace A272044

/-- `eq[A318473((n+1)²+1), A318473(n+1)]+1` -/
def P11056885526249449852.Spec : Prop :=
  ∀ n, (P11056885526249449852.a n : ℤ) = A272044 (n + 1)

end A272044

/-!
# A272045: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 419", based on the 5-celled von Neumann neighborhood.

The programs for A272045, there is no canonical definition to state claims against.
-/

/-! ## A272045.P1390296268796938212

`A272048(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272045.P1390296268796938212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272048 (n - 1) + a (n - 1)

end

end A272045.P1390296268796938212

/-! ## A272045.P14572674005802377130

`Δ[A272047(n)]-A272048(n)`
-/

namespace A272045.P14572674005802377130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272048 n

end

end A272045.P14572674005802377130

/-! ## A272045.P17611270705307479643

`∑[A272048(C(n%2, 2)+n)]+1-A272048(n)`
-/

namespace A272045.P17611270705307479643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272048 (Nat.choose (n % 2) 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272048 n)

end

end A272045.P17611270705307479643

/-! ## A272045.P5973831066037150393

`∑[A272048(-xor(n-1, -1))]+1-A272048(n)`
-/

namespace A272045.P5973831066037150393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272048 (-Int.xor ((n : ℤ) - 1) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272048 n)

end

end A272045.P5973831066037150393

/-! ## A272045.P17102376559049895472

`A272047(n+1)-(A272048(n)+A272047(n))`
-/

namespace A272045.P17102376559049895472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272047 (n + 1) - (A272048 n + A272047 n)

end

end A272045.P17102376559049895472

/-!
# A272046: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 419", based on the 5-celled von Neumann neighborhood.

The programs for A272046, there is no canonical definition to state claims against.
-/

/-! ## A272046.P12575361472558639751

`A272045(2^n-1)`
-/

namespace A272046.P12575361472558639751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272045 (2 ^ n - 1)

end

end A272046.P12575361472558639751

/-! ## A272046.P8018407165447631134

`record[A272045(A153141(n))]`
-/

namespace A272046.P8018407165447631134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272045 (A153141 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272046.P8018407165447631134

/-! ## A272046.P4192365121186498632

`record[A272045(A303763(n))]`
-/

namespace A272046.P4192365121186498632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272045 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272046.P4192365121186498632

/-! ## A272046.P14594115229849252414

`record[A272045(A252756(n+1))]`
-/

namespace A272046.P14594115229849252414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272045 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272046.P14594115229849252414

/-! ## A272046.P13874551251054965980

`record[A272045(n)/A002173(n+1)]`
-/

namespace A272046.P13874551251054965980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272045 n : ℚ) / (A002173 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272046.P13874551251054965980

/-!
# A272047: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 419", based on the 5-celled von Neumann neighborhood.

The programs for A272047, there is no canonical definition to state claims against.
-/

/-! ## A272047.P4804851657484097220

`∑[A272045(n)]`
-/

namespace A272047.P4804851657484097220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272047.P4804851657484097220

/-! ## A272047.P4011784492257368517

`A272045(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272047.P4011784492257368517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272045 n + a (A023443 n).toNat

end

end A272047.P4011784492257368517

/-! ## A272047.P6984115515378569916

`A272045(A142150(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A272047.P6984115515378569916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272045 (A142150 (2 * n)).toNat + a (n - 1)

end

end A272047.P6984115515378569916

/-! ## A272047.P12775875014932772611

`a(n-1)+A272045(n)+A000007(n)` with `a(0)=1`
-/

namespace A272047.P12775875014932772611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272045 n + A000007 n)

end

end A272047.P12775875014932772611

/-! ## A272047.P12900649860016370104

`∑[∑[A272048(n)]+1-A272048(n)]`
-/

namespace A272047.P12900649860016370104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272048 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272047.P12900649860016370104

/-!
# A272048: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 419", based on the 5-celled von Neumann neighborhood.

The programs for A272048, there is no canonical definition to state claims against.
-/

/-! ## A272048.P4479573273449155796

`Δ[A272045(n)]`
-/

namespace A272048.P4479573273449155796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272048.P4479573273449155796

/-! ## A272048.P3721263363011359895

`A272045(n+1)-A272045(n)`
-/

namespace A272048.P3721263363011359895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272045 (n + 1) - A272045 n

end

end A272048.P3721263363011359895

/-!
# A272049: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A272049, there is no canonical definition to state claims against.
-/

/-! ## A272049.P10090643029599866595

`A272052(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272049.P10090643029599866595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272052 (n - 1) + a (n - 1)

end

end A272049.P10090643029599866595

/-! ## A272049.P12169426199325732012

`Δ[A272051(n)]-A272052(n)`
-/

namespace A272049.P12169426199325732012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272052 n

end

end A272049.P12169426199325732012

/-! ## A272049.P2771205981497288319

`A272051(n+1)-(A272052(n)+A272051(n))`
-/

namespace A272049.P2771205981497288319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272051 (n + 1) - (A272052 n + A272051 n)

end

end A272049.P2771205981497288319

/-! ## A272049.P6716650627551278174

`n-(A023443(n)-(∑[A272052(n)]-A272052(n)))`
-/

namespace A272049.P6716650627551278174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - (∑ j ∈ Finset.range (n + 1), f1 j - A272052 n))

end

end A272049.P6716650627551278174

/-! ## A272049.P13104079342490779015

`1-(A000035(2*n)-(∑[A272052(n)]-A272052(n)))`
-/

namespace A272049.P13104079342490779015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 (2 * n) - (∑ j ∈ Finset.range (n + 1), f1 j - A272052 n))

end

end A272049.P13104079342490779015

/-!
# A272050: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A272050, there is no canonical definition to state claims against.
-/

/-! ## A272050.P18399148002624640766

`A272049(A000225(n*A035931(n)))`
-/

namespace A272050.P18399148002624640766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 (A000225 ((n : ℤ) * A035931 n).toNat).toNat

end

end A272050.P18399148002624640766

/-! ## A272050.P7907434787832664332

`A272049(lcm(A000225(n), A035931(n)))`
-/

namespace A272050.P7907434787832664332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 (Int.lcm (A000225 n) (A035931 n))

end

end A272050.P7907434787832664332

/-! ## A272050.P5472266456276110943

`A272049(A000225(n)*A300138(n+1))`
-/

namespace A272050.P5472266456276110943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 (A000225 n * A300138 (n + 1)).toNat

end

end A272050.P5472266456276110943

/-! ## A272050.P3945149487560553439

`A272049(A000225(n)^A300138(n+1))`
-/

namespace A272050.P3945149487560553439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 (SequenceMachineLib.roundAway ((A000225 n : ℚ) ^ (A300138 (n + 1) : ℤ))).toNat

end

end A272050.P3945149487560553439

/-! ## A272050.P13001929598313105722

`A272049(C(A000225(n), A300138(n+1)))`
-/

namespace A272050.P13001929598313105722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 (Nat.choose (A000225 n).toNat (A300138 (n + 1)).toNat)

end

end A272050.P13001929598313105722

/-!
# A272051: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A272051, there is no canonical definition to state claims against.
-/

/-! ## A272051.P10260337860385866338

`∑[A272049(n)]`
-/

namespace A272051.P10260337860385866338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272051.P10260337860385866338

/-! ## A272051.P16360462574530783737

`A272049(or(n, char[1]))+a(n-1)` with `a(0)=1`
-/

namespace A272051.P16360462574530783737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272049 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A272051.P16360462574530783737

/-! ## A272051.P15460905518861125622

`a(n-1)+A272049(n)+A000038(n)` with `a(0)=1`
-/

namespace A272051.P15460905518861125622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272049 n + A000038 n)

end

end A272051.P15460905518861125622

/-! ## A272051.P16690186792607615407

`A272049(n%A006254(n))+a(n-1)` with `a(0)=1`
-/

namespace A272051.P16690186792607615407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272049 (Int.tmod (n : ℤ) (A006254 n)).toNat + a (n - 1)

end

end A272051.P16690186792607615407

/-! ## A272051.P15631947058186782605

`A272049(n)+a(A004526(A004273(n)))` with `a(0)=1`
-/

namespace A272051.P15631947058186782605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272049 n + a (A004526 (A004273 n).toNat).toNat

end

end A272051.P15631947058186782605

/-! ## A272051.P367161036828865832

`∑[∑[A272052(n)]+1-A272052(n)]`
-/

namespace A272051.P367161036828865832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272052 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272051.P367161036828865832

/-!
# A272052: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A272052, there is no canonical definition to state claims against.
-/

/-! ## A272052.P2711646664969100898

`Δ[A272049(n)]`
-/

namespace A272052.P2711646664969100898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272052.P2711646664969100898

/-! ## A272052.P11554807887919938564

`A272049(n+1)-A272049(n)`
-/

namespace A272052.P11554807887919938564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272049 (n + 1) - A272049 n

end

end A272052.P11554807887919938564

/-!
# A272053: a(n) is the number of equivalence classes of simple, open polygonal chains consisting of two segments and with all three vertices on the lattice points of an n X n grid.

The programs for A272053, there is no canonical definition to state claims against.
-/

/-! ## A272053.P4429914042487012435

`3*A190313(n+1)+2*A189978(n+1)`
-/

namespace A272053.P4429914042487012435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A190313 (n + 1) + 2 * A189978 (n + 1)

end

end A272053.P4429914042487012435

/-! ## A272053.P639562052772911201

`A190313(n+1)+2*A028419(n)`
-/

namespace A272053.P639562052772911201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190313 (n + 1) + 2 * A028419 n

end

end A272053.P639562052772911201

/-! ## A272053.P15444923856238158052

`3*A028419(n)-A189978(n+1)`
-/

namespace A272053.P15444923856238158052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028419 n - A189978 (n + 1)

end

end A272053.P15444923856238158052

/-! ## A272053.P12759789564572375986

`A190313(n+1)+A189978(n+1)+A190313(n+1)+A028419(n)`
-/

namespace A272053.P12759789564572375986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190313 (n + 1) + A189978 (n + 1) + (A190313 (n + 1) + A028419 n)

end

end A272053.P12759789564572375986

/-! ## A272053.P18055954830967995304

`A190313(n+1)+A005843(A028419(n))`
-/

namespace A272053.P18055954830967995304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190313 (n + 1) + A005843 (A028419 n).toNat

end

end A272053.P18055954830967995304

/-!
# A272054: Complement of A262775.

The programs for A272054, there is no canonical definition to state claims against.
-/

/-! ## A272054.P12849669469449271289

`comp[A274568(n)-2]+2`
-/

namespace A272054.P12849669469449271289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274568 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A272054.P12849669469449271289

/-! ## A272054.P14742780959336606289

`comp[A274568(n+1)%(n+1)]`
-/

namespace A272054.P14742780959336606289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274568 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272054.P14742780959336606289

/-! ## A272054.P2326276703008352942

`eq[char[A262775(n)], A063524(n)]`
-/

namespace A272054.P2326276703008352942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262775 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A272054.P2326276703008352942

/-! ## A272054.P3308232500343811488

`eq[char[A274568(n)], A063524(n)]`
-/

namespace A272054.P3308232500343811488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274568 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A272054.P3308232500343811488

/-! ## A272054.P6533204122580074051

`lt[char[A262775(n)]*A005513(n+6), n-1]`
-/

namespace A272054.P6533204122580074051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262775 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A005513 (n + 6)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A272054.P6533204122580074051

/-!
# A272057: Numbers n such that 3*4^n - 1 is prime.

The programs for A272057, there is no canonical definition to state claims against.
-/

/-! ## A272057.P12648514638974022639

`record[A273943(A002235(n+2))]`
-/

namespace A272057.P12648514638974022639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A002235 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272057.P12648514638974022639

/-! ## A272057.P3391567597762964257

`record[∑{d}[A002235(n+2), A305804(#)]]`
-/

namespace A272057.P3391567597762964257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002235 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A305804 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272057.P3391567597762964257

/-! ## A272057.P9085544989632856323

`record[ceil(A093178(A164523(n+1))/2)]`
-/

namespace A272057.P9085544989632856323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093178 (A164523 (n + 1)).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272057.P9085544989632856323

/-! ## A272057.P14134273286877424077

`eq[1, A285808(2*(n+1))]+1`
-/

namespace A272057.P14134273286877424077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272057.P14134273286877424077

/-! ## A272057.P13239337265769248348

`eq[2*n, A179291(2*n+1)]`
-/

namespace A272057.P13239337265769248348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179291 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272057.P13239337265769248348

/-!
# A272058: Start with all terms set to 0. Then add n to the next n+3 terms for n=0,1,2,... .

The programs for A272058, the canonical program `A272058.P14044332220827477355` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272058 has offset 0).

The definition of A272058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272058.P14044332220827477355

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6, a(5)=10, a(6)=14`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A272058

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P14044332220827477355.Spec : Prop :=
  ∀ n, P14044332220827477355.a n = A272058 n

theorem P14044332220827477355.correct : P14044332220827477355.Spec := by
  intro n
  simp only [A272058]

end A272058

/-! ## A272058.P5430157886773105583

`∑[gcd(2, a(a(n-1)))]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A272058.P5430157886773105583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 3] fun n f1 =>
  Nat.gcd 2 (f1 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A272058.P5430157886773105583

namespace A272058

/-- `∑[gcd(2, a(a(n-1)))]+a(n-2)` -/
def P5430157886773105583.Spec : Prop :=
  ∀ n, (P5430157886773105583.a n : ℤ) = A272058 n

end A272058

/-! ## A272058.P10292586447682150476

`∑[char[2*(n+2)]]+∑[A029578(n)]`
-/

namespace A272058.P10292586447682150476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A272058.P10292586447682150476

namespace A272058

/-- `∑[char[2*(n+2)]]+∑[A029578(n)]` -/
def P10292586447682150476.Spec : Prop :=
  ∀ n, P10292586447682150476.a n = A272058 n

end A272058

/-! ## A272058.P16798791449216038813

`A319390(n)-A174296(n)`
-/

namespace A272058.P16798791449216038813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n - A174296 n

end

end A272058.P16798791449216038813

namespace A272058

/-- `A319390(n)-A174296(n)` -/
def P16798791449216038813.Spec : Prop :=
  ∀ n, P16798791449216038813.a n = A272058 n

end A272058

/-! ## A272058.P16436073209137777644

`A212342(n)-A055802(n+2)`
-/

namespace A272058.P16436073209137777644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n - A055802 (n + 2)

end

end A272058.P16436073209137777644

namespace A272058

/-- `A212342(n)-A055802(n+2)` -/
def P16436073209137777644.Spec : Prop :=
  ∀ n, P16436073209137777644.a n = A272058 n

end A272058

/-! ## A272058.P3135865500217698141

`∑[xor(1, n)]-A133263(A004526(n))`
-/

namespace A272058.P3135865500217698141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A133263 (A004526 n).toNat

end

end A272058.P3135865500217698141

namespace A272058

/-- `∑[xor(1, n)]-A133263(A004526(n))` -/
def P3135865500217698141.Spec : Prop :=
  ∀ n, P3135865500217698141.a n = A272058 n

end A272058

/-! ## A272058.P14413348854593790093

`A001318(n)-A001221(A071044(n))`
-/

namespace A272058.P14413348854593790093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A001221 (A071044 n).toNat

end

end A272058.P14413348854593790093

namespace A272058

/-- `A001318(n)-A001221(A071044(n))` -/
def P14413348854593790093.Spec : Prop :=
  ∀ n, P14413348854593790093.a n = A272058 n

end A272058

/-! ## A272058.P16414555915731608678

`A161680(n)-A161680(A267528(n)-n)`
-/

namespace A272058.P16414555915731608678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A161680 (A267528 n - (n : ℤ)).toNat

end

end A272058.P16414555915731608678

namespace A272058

/-- `A161680(n)-A161680(A267528(n)-n)` -/
def P16414555915731608678.Spec : Prop :=
  ∀ n, P16414555915731608678.a n = A272058 n

end A272058

/-! ## A272058.P4553935518700326734

`A001318(n)-Δ[A267528(n)]`
-/

namespace A272058.P4553935518700326734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - (f1 (n + 1) - f1 n)

end

end A272058.P4553935518700326734

namespace A272058

/-- `A001318(n)-Δ[A267528(n)]` -/
def P4553935518700326734.Spec : Prop :=
  ∀ n, P4553935518700326734.a n = A272058 n

end A272058

/-! ## A272058.P15205403467349218641

`C(n, 2)-(lt[A124928(abs(2-n)), 4]-n)`
-/

namespace A272058.P15205403467349218641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 |2 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ))

end

end A272058.P15205403467349218641

namespace A272058

/-- `C(n, 2)-(lt[A124928(abs(2-n)), 4]-n)` -/
def P15205403467349218641.Spec : Prop :=
  ∀ n, P15205403467349218641.a n = A272058 n

end A272058

/-! ## A272058.P12944130685082433742

`n*A228474(A333616(n))-A333616(n)`
-/

namespace A272058.P12944130685082433742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228474 (A333616 n).toNat - A333616 n

end

end A272058.P12944130685082433742

namespace A272058

/-- `n*A228474(A333616(n))-A333616(n)` -/
def P12944130685082433742.Spec : Prop :=
  ∀ n, P12944130685082433742.a n = A272058 n

end A272058

/-! ## A272058.P17323994959694567680

`A289207(A114113(n+1)-A101881(n))`
-/

namespace A272058.P17323994959694567680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A114113 (n + 1) - A101881 n).toNat

end

end A272058.P17323994959694567680

namespace A272058

/-- `A289207(A114113(n+1)-A101881(n))` -/
def P17323994959694567680.Spec : Prop :=
  ∀ n, P17323994959694567680.a n = A272058 n

end A272058

/-! ## A272058.P16041203389548857040

`A087401(∑[1-or(1, -n)]+1)`
-/

namespace A272058.P16041203389548857040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A272058.P16041203389548857040

namespace A272058

/-- `A087401(∑[1-or(1, -n)]+1)` -/
def P16041203389548857040.Spec : Prop :=
  ∀ n, P16041203389548857040.a n = A272058 n

end A272058

/-! ## A272058.P1737367832156793886

`A087401(A080827(n+1))`
-/

namespace A272058.P1737367832156793886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (A080827 (n + 1)).toNat

end

end A272058.P1737367832156793886

namespace A272058

/-- `A087401(A080827(n+1))` -/
def P1737367832156793886.Spec : Prop :=
  ∀ n, P1737367832156793886.a n = A272058 n

end A272058

/-! ## A272058.P14128653820991175613

`A087401(A328005(n+1))`
-/

namespace A272058.P14128653820991175613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (A328005 (n + 1)).toNat

end

end A272058.P14128653820991175613

namespace A272058

/-- `A087401(A328005(n+1))` -/
def P14128653820991175613.Spec : Prop :=
  ∀ n, P14128653820991175613.a n = A272058 n

end A272058

/-! ## A272058.P9379141898425692277

`A087401(A099392(n+2))`
-/

namespace A272058.P9379141898425692277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (A099392 (n + 2)).toNat

end

end A272058.P9379141898425692277

namespace A272058

/-- `A087401(A099392(n+2))` -/
def P9379141898425692277.Spec : Prop :=
  ∀ n, P9379141898425692277.a n = A272058 n

end A272058

/-! ## A272058.P16885834519569239417

`A087401(A061925(n)+n)`
-/

namespace A272058.P16885834519569239417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (A061925 n + (n : ℤ)).toNat

end

end A272058.P16885834519569239417

namespace A272058

/-- `A087401(A061925(n)+n)` -/
def P16885834519569239417.Spec : Prop :=
  ∀ n, P16885834519569239417.a n = A272058 n

end A272058

/-! ## A272058.P2698907943148193909

`A087401(A007590(n+1)+1)`
-/

namespace A272058.P2698907943148193909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (A007590 (n + 1) + 1).toNat

end

end A272058.P2698907943148193909

namespace A272058

/-- `A087401(A007590(n+1)+1)` -/
def P2698907943148193909.Spec : Prop :=
  ∀ n, P2698907943148193909.a n = A272058 n

end A272058

/-! ## A272058.P12502107137765919982

`A087401(A000982(n)+1+n)`
-/

namespace A272058.P12502107137765919982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (A000982 n + 1 + (n : ℤ)).toNat

end

end A272058.P12502107137765919982

namespace A272058

/-- `A087401(A000982(n)+1+n)` -/
def P12502107137765919982.Spec : Prop :=
  ∀ n, P12502107137765919982.a n = A272058 n

end A272058

/-! ## A272058.P18095296806247080200

`A303273(A074148(n+1)-n)-1`
-/

namespace A272058.P18095296806247080200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 (A074148 (n + 1) - (n : ℤ)).toNat - 1

end

end A272058.P18095296806247080200

namespace A272058

/-- `A303273(A074148(n+1)-n)-1` -/
def P18095296806247080200.Spec : Prop :=
  ∀ n, P18095296806247080200.a n = A272058 n

end A272058

/-!
# A272059: Numbers k such that (17*10^k + 13)/3 is prime.

The programs for A272059, there is no canonical definition to state claims against.
-/

/-! ## A272059.P10526125234064347023

`∑[A002233(A148169(n))]`
-/

namespace A272059.P10526125234064347023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (A148169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272059.P10526125234064347023

/-! ## A272059.P18348282413051941703

`A000040(n+1)-A005590(A254632(2*(n+1)))`
-/

namespace A272059.P18348282413051941703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A005590 (A254632 (2 * (n + 1))).toNat

end

end A272059.P18348282413051941703

/-!
# A272060: Numbers k such that sigma((k-1)/2) + tau((k-1)/2) is prime.

The programs for A272060, there is no canonical definition to state claims against.
-/

/-! ## A272060.P13050375910632831176

`2*A064205(n+1)+1`
-/

namespace A272060.P13050375910632831176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064205 (n + 1) + 1

end

end A272060.P13050375910632831176

/-! ## A272060.P12483221230431777703

`A064205(n+1)+A064205(n+1)+A001221(A008578(n+2))`
-/

namespace A272060.P12483221230431777703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064205 (n + 1) + (A064205 (n + 1) + A001221 (A008578 (n + 2)).toNat)

end

end A272060.P12483221230431777703

/-! ## A272060.P18109766542958886363

`A064205(n+1)+A064205(n+1)+A007318(∑[n+1])`
-/

namespace A272060.P18109766542958886363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064205 (n + 1) + (A064205 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A272060.P18109766542958886363

/-! ## A272060.P8991926778265452900

`A064205(n+1)+A064205(n+1)+A014963(A008529(n))`
-/

namespace A272060.P8991926778265452900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064205 (n + 1) + (A064205 (n + 1) + A014963 (A008529 n).toNat)

end

end A272060.P8991926778265452900

/-! ## A272060.P16753393116717076605

`A064205(n+1)+A000027(A064205(n+1)+1)`
-/

namespace A272060.P16753393116717076605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064205 (n + 1) + A000027 (A064205 (n + 1) + 1).toNat

end

end A272060.P16753393116717076605

/-!
# A272061: Primes p such that sigma((p-1)/2) + tau((p-1)/2) is prime.

The programs for A272061, there is no canonical definition to state claims against.
-/

/-! ## A272061.P1248270969656707457

`∩[A077499(n+1), A272060(n+1)]`
-/

namespace A272061.P1248270969656707457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272061.P1248270969656707457

/-!
# A272062: Positive numbers k such that k^2 - 1 divides 8^k - 1.

The programs for A272062, there is no canonical definition to state claims against.
-/

/-! ## A272062.P17453977173806265969

`A062830(∩[3*(n+1), A067798(n+1)])`
-/

namespace A272062.P17453977173806265969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A272062.P17453977173806265969

/-! ## A272062.P8690978041746828071

`record[and(A114891(2*(n+1)), A171217(n+2))]`
-/

namespace A272062.P8690978041746828071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114891 (2 * (n + 1))) (A171217 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272062.P8690978041746828071

/-! ## A272062.P18173005881814549192

`A299642(n+1)+A262681(A000110(n))`
-/

namespace A272062.P18173005881814549192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299642 (n + 1) + A262681 (A000110 n).toNat

end

end A272062.P18173005881814549192

/-! ## A272062.P5783991301636970235

`A299642(n+1)+A262681(A149151(n))`
-/

namespace A272062.P5783991301636970235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299642 (n + 1) + A262681 (A149151 n).toNat

end

end A272062.P5783991301636970235

/-! ## A272062.P4357880078006842245

`A299642(n+1)+A262681(A299642(2*n+1))`
-/

namespace A272062.P4357880078006842245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299642 (n + 1) + A262681 (A299642 (2 * n + 1)).toNat

end

end A272062.P4357880078006842245

/-!
# A272064: Number of set partitions of [n] such that for each pair of consecutive blocks (b,b+1) exactly one pair of consecutive numbers (i,i+1) exists with i member of b and i+1 member of b+1.

The programs for A272064, there is no canonical definition to state claims against.
-/

/-! ## A272064.P16532458163695205236

`A000110(n)-A272065(n)`
-/

namespace A272064.P16532458163695205236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A272065 n

end

end A272064.P16532458163695205236

/-! ## A272064.P8118048031130864321

`abs(A292935(n))-A272065(n)`
-/

namespace A272064.P8118048031130864321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A272065 n

end

end A272064.P8118048031130864321

/-! ## A272064.P13513736014513161014

`Δ[A005001(n)]-A272065(n)`
-/

namespace A272064.P13513736014513161014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272065 n

end

end A272064.P13513736014513161014

/-! ## A272064.P15606675734593154284

`A011971(A000217(n))-A272065(n)`
-/

namespace A272064.P15606675734593154284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 n).toNat - A272065 n

end

end A272064.P15606675734593154284

/-! ## A272064.P7049395363860010084

`A095149(A000096(n))-A272065(n)`
-/

namespace A272064.P7049395363860010084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A000096 n).toNat - A272065 n

end

end A272064.P7049395363860010084

/-!
# A272065: Number of set partitions of [n] such that at least one pair of consecutive blocks (b,b+1) exists having not exactly one pair of consecutive numbers (i,i+1) with i member of b and i+1 member of b+1.

The programs for A272065, there is no canonical definition to state claims against.
-/

/-! ## A272065.P17776537943612688774

`A000110(n)-A272064(n)`
-/

namespace A272065.P17776537943612688774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A272064 n

end

end A272065.P17776537943612688774

/-! ## A272065.P2705145151743046097

`abs(A292935(n))-A272064(n)`
-/

namespace A272065.P2705145151743046097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A272064 n

end

end A272065.P2705145151743046097

/-! ## A272065.P2867106792089675371

`Δ[A005001(n)]-A272064(n)`
-/

namespace A272065.P2867106792089675371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272064 n

end

end A272065.P2867106792089675371

/-! ## A272065.P6195379191939720090

`A011971(A000217(n))-A272064(n)`
-/

namespace A272065.P6195379191939720090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 n).toNat - A272064 n

end

end A272065.P6195379191939720090

/-! ## A272065.P1935300342749263979

`A095149(A000096(n))-A272064(n)`
-/

namespace A272065.P1935300342749263979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A000096 n).toNat - A272064 n

end

end A272065.P1935300342749263979

/-!
# A272066: a(n) = (10^n-1)^3.

The programs for A272066, the canonical program `A272066.P11876370306910193949` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272066 has offset 0).

The definition of A272066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n-1)^3` (program `A272066.P11876370306910193949`, by `A272066.P11876370306910193949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272066.P11876370306910193949

`(10^n-1)^3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A272066

/-- `(10^n-1)^3` -/
def P11876370306910193949.Spec : Prop :=
  ∀ n, P11876370306910193949.a n = A272066 n

theorem P11876370306910193949.correct : P11876370306910193949.Spec := by
  intro n
  simp only [A272066]

end A272066

/-! ## A272066.P17514779345468386541

`floor(10^n/3)²*A086580(n)`
-/

namespace A272066.P17514779345468386541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 3⌋ ^ 2 * A086580 n

end

end A272066.P17514779345468386541

namespace A272066

/-- `floor(10^n/3)²*A086580(n)` -/
def P17514779345468386541.Spec : Prop :=
  ∀ n, P17514779345468386541.a n = A272066 n

end A272066

/-! ## A272066.P1369766439548790609

`A086574(n)²*floor(10^n/9)`
-/

namespace A272066.P1369766439548790609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086574 n ^ 2 * ⌊(10 ^ n : ℚ) / 9⌋

end

end A272066.P1369766439548790609

namespace A272066

/-- `A086574(n)²*floor(10^n/9)` -/
def P1369766439548790609.Spec : Prop :=
  ∀ n, P1369766439548790609.a n = A272066 n

end A272066

/-! ## A272066.P11988523976540672696

`A002283(n)*A059988(n)`
-/

namespace A272066.P11988523976540672696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n * A059988 n

end

end A272066.P11988523976540672696

namespace A272066

/-- `A002283(n)*A059988(n)` -/
def P11988523976540672696.Spec : Prop :=
  ∀ n, P11988523976540672696.a n = A272066 n

end A272066

/-! ## A272066.P14877921451203982588

`(A011557(n)-1)*A059988(n)`
-/

namespace A272066.P14877921451203982588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011557 n - 1) * A059988 n

end

end A272066.P14877921451203982588

namespace A272066

/-- `(A011557(n)-1)*A059988(n)` -/
def P14877921451203982588.Spec : Prop :=
  ∀ n, P14877921451203982588.a n = A272066 n

end A272066

/-!
# A272067: 

The programs for A272067, there is no canonical definition to state claims against.
-/

/-! ## A272067.P1794964334111188820

`(1-10^n)^4`
-/

namespace A272067.P1794964334111188820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (10 ^ n : ℤ)) ^ 4

end

end A272067.P1794964334111188820

/-! ## A272067.P16194172414192421861

`xor(10^n, ∑[2^n])²²`
-/

namespace A272067.P16194172414192421861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor (10 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A272067.P16194172414192421861

/-! ## A272067.P1109750993229258436

`∑[10*a(n-1)]²²` with `a(0)=0, a(1)=9`
-/

namespace A272067.P1109750993229258436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A272067.P1109750993229258436

/-! ## A272067.P18267603875806437084

`A059988(n)²`
-/

namespace A272067.P18267603875806437084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059988 n ^ 2

end

end A272067.P18267603875806437084

/-! ## A272067.P11668216122630197492

`A002283(n)²²`
-/

namespace A272067.P11668216122630197492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002283 n ^ 2) ^ 2

end

end A272067.P11668216122630197492

/-!
# A272068: 

The programs for A272068, there is no canonical definition to state claims against.
-/

/-! ## A272068.P15191141402152383183

`(10^n-1)^5`
-/

namespace A272068.P15191141402152383183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1) ^ 5

end

end A272068.P15191141402152383183

/-! ## A272068.P13621345976656721233

`A059988(n)*A272066(n)`
-/

namespace A272068.P13621345976656721233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059988 n * A272066 n

end

end A272068.P13621345976656721233

/-! ## A272068.P3706766401785492280

`A059988(n)²*A002283(n)`
-/

namespace A272068.P3706766401785492280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059988 n ^ 2 * A002283 n

end

end A272068.P3706766401785492280

/-! ## A272068.P3268376654191829010

`A002283(n)²*A272066(n)`
-/

namespace A272068.P3268376654191829010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n ^ 2 * A272066 n

end

end A272068.P3268376654191829010

/-!
# A272069: Odd numbers n such that 3^n+1 is a sum of two squares.

The programs for A272069, there is no canonical definition to state claims against.
-/

/-! ## A272069.P7664979587008365268

`and(A033316(A353136(n+1)), A341770(2*n))`
-/

namespace A272069.P7664979587008365268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033316 (A353136 (n + 1)).toNat) (A341770 (2 * n))

end

end A272069.P7664979587008365268

/-!
# A272070: Number of ways to quarter a 2n+1 X 2n+1 chessboard with central square removed.

The programs for A272070, there is no canonical definition to state claims against.
-/

/-! ## A272070.P11385875190807802176

`A006067(2*n+1)`
-/

namespace A272070.P11385875190807802176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006067 (2 * n + 1)

end

end A272070.P11385875190807802176

/-!
# A272071: Expansion of x*(3 - 2*x + x^2)/((1 - x)^2*(1 + x + x^2)).

The programs for A272071, the canonical program `A272071.P11578983387810263170` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272071 has offset 0).

The definition of A272071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272071.P11578983387810263170

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A272071

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P11578983387810263170.Spec : Prop :=
  ∀ n, P11578983387810263170.a n = A272071 n

theorem P11578983387810263170.correct : P11578983387810263170.Spec := by
  intro n
  simp only [A272071]

end A272071

/-! ## A272071.P2590899096492515891

`3*n-2*floor(n/3)-5*floor((n+1)/3)`
-/

namespace A272071.P2590899096492515891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2 * ⌊(n : ℚ) / 3⌋ - 5 * ⌊(n + 1 : ℚ) / 3⌋

end

end A272071.P2590899096492515891

namespace A272071

/-- `3*n-2*floor(n/3)-5*floor((n+1)/3)` -/
def P2590899096492515891.Spec : Prop :=
  ∀ n, P2590899096492515891.a n = A272071 n

end A272071

/-! ## A272071.P14350445393443852696

`abs(a(n-3)+2)` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A272071.P14350445393443852696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  a (n - 3) + 2

end

end A272071.P14350445393443852696

namespace A272071

/-- `abs(a(n-3)+2)` -/
def P14350445393443852696.Spec : Prop :=
  ∀ n, (P14350445393443852696.a n : ℤ) = A272071 n

end A272071

/-! ## A272071.P305160256073238878

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=-2, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A272071.P305160256073238878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272071.P305160256073238878

namespace A272071

/-- `∑[floor(a(n-3))]` -/
def P305160256073238878.Spec : Prop :=
  ∀ n, P305160256073238878.a n = A272071 n

end A272071

/-! ## A272071.P5877923732311473009

`∑[1-a((2*n)%3)]` with `a(0)=0, a(1)=3`
-/

namespace A272071.P5877923732311473009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  1 - f1 (2 * n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272071.P5877923732311473009

namespace A272071

/-- `∑[1-a((2*n)%3)]` -/
def P5877923732311473009.Spec : Prop :=
  ∀ n, P5877923732311473009.a n = A272071 n

end A272071

/-! ## A272071.P99960725658995206

`∑[a(n-3)^(-1)^(-1)]` with `a(0)=0, a(1)=3, a(2)=-2, a(3)=1`
-/

namespace A272071.P99960725658995206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 3, -2, 1] fun n f1 =>
  (f1 (n - 3) ^ (-1 : ℤ)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272071.P99960725658995206

namespace A272071

/-- `∑[a(n-3)^(-1)^(-1)]` -/
def P99960725658995206.Spec : Prop :=
  ∀ n, P99960725658995206.a n = (A272071 n : ℚ)

end A272071

/-! ## A272071.P12452109528884049719

`A004396(n+1-A131713(n))`
-/

namespace A272071.P12452109528884049719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n + 1 : ℤ) - A131713 n).toNat

end

end A272071.P12452109528884049719

namespace A272071

/-- `A004396(n+1-A131713(n))` -/
def P12452109528884049719.Spec : Prop :=
  ∀ n, P12452109528884049719.a n = A272071 n

end A272071

/-! ## A272071.P5430245895538012842

`A004396(n+1-A061347(n+2))`
-/

namespace A272071.P5430245895538012842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n + 1 : ℤ) - A061347 (n + 2)).toNat

end

end A272071.P5430245895538012842

namespace A272071

/-- `A004396(n+1-A061347(n+2))` -/
def P5430245895538012842.Spec : Prop :=
  ∀ n, P5430245895538012842.a n = A272071 n

end A272071

/-! ## A272071.P18271627717135010714

`Δ[Δ[A061263(n)]]`
-/

namespace A272071.P18271627717135010714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272071.P18271627717135010714

namespace A272071

/-- `Δ[Δ[A061263(n)]]` -/
def P18271627717135010714.Spec : Prop :=
  ∀ n, P18271627717135010714.a n = A272071 n

end A272071

/-! ## A272071.P604334049906524531

`A084964(A042968(n+1))`
-/

namespace A272071.P604334049906524531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A042968 (n + 1)).toNat

end

end A272071.P604334049906524531

namespace A272071

/-- `A084964(A042968(n+1))` -/
def P604334049906524531.Spec : Prop :=
  ∀ n, P604334049906524531.a n = A272071 n

end A272071

/-! ## A272071.P12512297983987987700

`A267182(A004772(n+2))`
-/

namespace A272071.P12512297983987987700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (A004772 (n + 2)).toNat

end

end A272071.P12512297983987987700

namespace A272071

/-- `A267182(A004772(n+2))` -/
def P12512297983987987700.Spec : Prop :=
  ∀ n, P12512297983987987700.a n = A272071 n

end A272071

/-! ## A272071.P12564638653916943517

`A226576(A047242(n+1))`
-/

namespace A272071.P12564638653916943517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226576 (A047242 (n + 1)).toNat

end

end A272071.P12564638653916943517

namespace A272071

/-- `A226576(A047242(n+1))` -/
def P12564638653916943517.Spec : Prop :=
  ∀ n, P12564638653916943517.a n = A272071 n

end A272071

/-! ## A272071.P17789223965846659333

`A226576(A047244(n+1))`
-/

namespace A272071.P17789223965846659333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226576 (A047244 (n + 1)).toNat

end

end A272071.P17789223965846659333

namespace A272071

/-- `A226576(A047244(n+1))` -/
def P17789223965846659333.Spec : Prop :=
  ∀ n, P17789223965846659333.a n = A272071 n

end A272071

/-! ## A272071.P13318482535113973736

`A004396(n+1-A117373(2*n))`
-/

namespace A272071.P13318482535113973736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n + 1 : ℤ) - A117373 (2 * n)).toNat

end

end A272071.P13318482535113973736

namespace A272071

/-- `A004396(n+1-A117373(2*n))` -/
def P13318482535113973736.Spec : Prop :=
  ∀ n, P13318482535113973736.a n = A272071 n

end A272071

/-! ## A272071.P11534257215421671453

`A004396(n+1-A132677(2*n))`
-/

namespace A272071.P11534257215421671453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n + 1 : ℤ) - A132677 (2 * n)).toNat

end

end A272071.P11534257215421671453

namespace A272071

/-- `A004396(n+1-A132677(2*n))` -/
def P11534257215421671453.Spec : Prop :=
  ∀ n, P11534257215421671453.a n = A272071 n

end A272071

/-!
# A272073: Exponents of x in the numerator of cluster variables of a rank 2 cluster algebra.

The programs for A272073, the canonical program `A272073.P17220463795209194311` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272073 has offset 2).

The definition of A272073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272073.P17220463795209194311

`4*a(n-2)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=15`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A272073

/-- `4*a(n-2)-a(n-4)` -/
def P17220463795209194311.Spec : Prop :=
  ∀ n, P17220463795209194311.a n = A272073 (n + 2)

theorem P17220463795209194311.correct : P17220463795209194311.Spec := by
  intro n
  simp only [A272073, Nat.add_sub_cancel]

end A272073

/-! ## A272073.P7435922919211492853

`A082630(n+2)-A005246(n)-A005246(n)`
-/

namespace A272073.P7435922919211492853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082630 (n + 2) - A005246 n - A005246 n

end

end A272073.P7435922919211492853

namespace A272073

/-- `A082630(n+2)-A005246(n)-A005246(n)` -/
def P7435922919211492853.Spec : Prop :=
  ∀ n, P7435922919211492853.a n = A272073 (n + 2)

end A272073

/-! ## A272073.P7318070907346019478

`(A001353(n+1)-A001835(n))/A005246(n+1)`
-/

namespace A272073.P7318070907346019478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 (n + 1) - A001835 n : ℚ) / (A005246 (n + 1) : ℚ)

end

end A272073.P7318070907346019478

namespace A272073

/-- `(A001353(n+1)-A001835(n))/A005246(n+1)` -/
def P7318070907346019478.Spec : Prop :=
  ∀ n, P7318070907346019478.a n = (A272073 (n + 2) : ℚ)

end A272073

/-!
# A272074: Numbers k such that k^4 + 29*k^2 + 101 is prime.

The programs for A272074, there is no canonical definition to state claims against.
-/

/-! ## A272074.P897142412091980198

`lt[A188258(2*n+1), A373404(A352487(n+1))]`
-/

namespace A272074.P897142412091980198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188258 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373404 (A352487 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272074.P897142412091980198

/-! ## A272074.P2635211713489798553

`lt[A054548(A339235(n)), 2]`
-/

namespace A272074.P2635211713489798553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054548 (A339235 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272074.P2635211713489798553

/-! ## A272074.P13405688840609940394

`lt[A005044(n), A000005(A104494(n+1))]`
-/

namespace A272074.P13405688840609940394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A104494 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272074.P13405688840609940394

/-! ## A272074.P6462101825178626964

`lt[A379735(A024619(n+1)), A269100(n)]`
-/

namespace A272074.P6462101825178626964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379735 (A024619 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272074.P6462101825178626964

/-! ## A272074.P13350994437659775993

`lt[A123630(n+1), Δ[A020235(n+1)]]`
-/

namespace A272074.P13350994437659775993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123630 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272074.P13350994437659775993

/-!
# A272076: Numbers n such that abs(7*n^2 - 371*n + 4871) is prime.

The programs for A272076, there is no canonical definition to state claims against.
-/

/-! ## A272076.P17445365680688954380

`lt[A092904(n), A053827(A029470(n+2))]`
-/

namespace A272076.P17445365680688954380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A029470 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272076.P17445365680688954380

/-! ## A272076.P10637776503279238569

`lt[A391624(n+1), A320136(A391624(n+1))]`
-/

namespace A272076.P10637776503279238569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320136 (A391624 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272076.P10637776503279238569

/-! ## A272076.P2879557013715814699

`lt[A325034(n+1), A053827(A029470(n+2))]`
-/

namespace A272076.P2879557013715814699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A029470 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272076.P2879557013715814699

/-! ## A272076.P11926036296089011543

`lt[A238279(2*n), A048767(A136767(n+1))]`
-/

namespace A272076.P11926036296089011543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238279 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048767 (A136767 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272076.P11926036296089011543

/-! ## A272076.P12058608421609517605

`lt[A098493(A008864(n+1)), A191455(3*n+4)]`
-/

namespace A272076.P12058608421609517605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 (A008864 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191455 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272076.P12058608421609517605

/-! ## A272076.P9631487095101443970

`lt[A000005(A335239(n+5)), 12]`
-/

namespace A272076.P9631487095101443970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A335239 (n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272076.P9631487095101443970

/-! ## A272076.P11131675188357615966

`lt[A049310(A349157(n+1)), (n+3)²]`
-/

namespace A272076.P11131675188357615966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A349157 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272076.P11131675188357615966

/-! ## A272076.P6869558755317401087

`lt[A276086(n), A208069(A335448(n+1))]`
-/

namespace A272076.P6869558755317401087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208069 (A335448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272076.P6869558755317401087

/-! ## A272076.P4200217273183210069

`lt[A272618(A347288(n)), A347288(n+1)]`
-/

namespace A272076.P4200217273183210069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272618 (A347288 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272076.P4200217273183210069

/-! ## A272076.P13960097195610490748

`lt[A002068(n+1), A214789(A027425(n+1))]`
-/

namespace A272076.P13960097195610490748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214789 (A027425 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272076.P13960097195610490748

/-!
# A272078: Numbers k such that k^2 + 1 is product of 3 distinct primes.

The programs for A272078, the canonical program `A272078.P17155082553689015027` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272078 has offset 1).

The definition of A272078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272078.P8505806190232635209

`eq[30, A278162(n)]`
-/

namespace A272078.P8505806190232635209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272078.P8505806190232635209

namespace A272078

/-- `eq[30, A278162(n)]` -/
def P8505806190232635209.Spec : Prop :=
  ∀ n, (P8505806190232635209.a n : ℤ) = A272078 (n + 1)

end A272078

/-! ## A272078.P17155082553689015027

`eq[4, A261609(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A272078

/-- `eq[4, A261609(n+1)]+1` -/
def P17155082553689015027.Spec : Prop :=
  ∀ n, (P17155082553689015027.a n : ℤ) = A272078 (n + 1)

theorem P17155082553689015027.correct : P17155082553689015027.Spec := by
  intro n
  simp only [A272078, Nat.add_sub_cancel]

end A272078

/-! ## A272078.P5964637750363414907

`eq[A059592(n)+2, A193330(n)]`
-/

namespace A272078.P5964637750363414907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272078.P5964637750363414907

namespace A272078

/-- `eq[A059592(n)+2, A193330(n)]` -/
def P5964637750363414907.Spec : Prop :=
  ∀ n, (P5964637750363414907.a n : ℤ) = A272078 (n + 1)

end A272078

/-! ## A272078.P17283100069012052175

`eq[A193432(n)%5, A193330(n)]`
-/

namespace A272078.P17283100069012052175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193432 n) 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272078.P17283100069012052175

namespace A272078

/-- `eq[A193432(n)%5, A193330(n)]` -/
def P17283100069012052175.Spec : Prop :=
  ∀ n, (P17283100069012052175.a n : ℤ) = A272078 (n + 1)

end A272078

/-! ## A272078.P5916585142191367957

`eq[A080754(A059592(n)), A193330(n)]`
-/

namespace A272078.P5916585142191367957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (A059592 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272078.P5916585142191367957

namespace A272078

/-- `eq[A080754(A059592(n)), A193330(n)]` -/
def P5916585142191367957.Spec : Prop :=
  ∀ n, (P5916585142191367957.a n : ℤ) = A272078 (n + 1)

end A272078

/-! ## A272078.P12017457113837197192

`eq[64, A193330(n)+A000043(A193432(n)+1)]`
-/

namespace A272078.P12017457113837197192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n + A000043 (A193432 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272078.P12017457113837197192

namespace A272078

/-- `eq[64, A193330(n)+A000043(A193432(n)+1)]` -/
def P12017457113837197192.Spec : Prop :=
  ∀ n, (P12017457113837197192.a n : ℤ) = A272078 (n + 1)

end A272078

/-! ## A272078.P15619894517331326480

`eq[5, A033273(n²+1)]`
-/

namespace A272078.P15619894517331326480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272078.P15619894517331326480

namespace A272078

/-- `eq[5, A033273(n²+1)]` -/
def P15619894517331326480.Spec : Prop :=
  ∀ n, (P15619894517331326480.a n : ℤ) = A272078 (n + 1)

end A272078

/-! ## A272078.P13015390596567675780

`eq[30, A071364(n²+1)]`
-/

namespace A272078.P13015390596567675780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272078.P13015390596567675780

namespace A272078

/-- `eq[30, A071364(n²+1)]` -/
def P13015390596567675780.Spec : Prop :=
  ∀ n, (P13015390596567675780.a n : ℤ) = A272078 (n + 1)

end A272078

/-! ## A272078.P10458026036097325462

`eq[3, A046645(n²+1)]`
-/

namespace A272078.P10458026036097325462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272078.P10458026036097325462

namespace A272078

/-- `eq[3, A046645(n²+1)]` -/
def P10458026036097325462.Spec : Prop :=
  ∀ n, (P10458026036097325462.a n : ℤ) = A272078 (n + 1)

end A272078

/-! ## A272078.P17640626633964831634

`eq[4, A281116(n²+1)]`
-/

namespace A272078.P17640626633964831634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272078.P17640626633964831634

namespace A272078

/-- `eq[4, A281116(n²+1)]` -/
def P17640626633964831634.Spec : Prop :=
  ∀ n, (P17640626633964831634.a n : ℤ) = A272078 (n + 1)

end A272078

/-!
# A272080: Row sums of A238498.

The programs for A272080, there is no canonical definition to state claims against.
-/

/-! ## A272080.P2310821816077246882

`A370457(A283251(n+1))`
-/

namespace A272080.P2310821816077246882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370457 (A283251 (n + 1)).toNat

end

end A272080.P2310821816077246882

/-! ## A272080.P3790852793291948764

`eq[A180180(n+5), A180183(n+1)]`
-/

namespace A272080.P3790852793291948764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180180 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272080.P3790852793291948764

/-! ## A272080.P17845093971123652718

`A328596(n+1)+A122304(A000332(n+2))`
-/

namespace A272080.P17845093971123652718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1) + A122304 (A000332 (n + 2)).toNat

end

end A272080.P17845093971123652718

/-!
# A272084: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with 4*x^2 + 5*y^2 + 20*z*w a square, where x,y,z,w are nonnegative integers with z < w.

The programs for A272084, there is no canonical definition to state claims against.
-/

/-! ## A272084.P13997102743683429374

`A069010(A343757(A000043(n+2))+n+1)`
-/

namespace A272084.P13997102743683429374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A343757 (A000043 (n + 2)).toNat + (n + 1 : ℤ)).toNat

end

end A272084.P13997102743683429374

/-! ## A272084.P18404707778579289089

`A082846(A360891(n+1))`
-/

namespace A272084.P18404707778579289089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082846 (A360891 (n + 1)).toNat

end

end A272084.P18404707778579289089

/-! ## A272084.P644100641834948167

`A001221(A280750(n)+p?[A170886(n)])`
-/

namespace A272084.P644100641834948167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A280750 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A272084.P644100641834948167

/-! ## A272084.P14157831207857487147

`A107279(A241515(A057023(n+1)))+1`
-/

namespace A272084.P14157831207857487147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A241515 (A057023 (n + 1)).toNat).toNat + 1

end

end A272084.P14157831207857487147

/-! ## A272084.P13941998927839761874

`gcd(A001221(A003473(n+1)), A027913(n))`
-/

namespace A272084.P13941998927839761874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A003473 (n + 1)).toNat) (A027913 n)

end

end A272084.P13941998927839761874

/-!
# A272085: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 422", based on the 5-celled von Neumann neighborhood.

The programs for A272085, there is no canonical definition to state claims against.
-/

/-! ## A272085.P12947725768036495723

`A272088(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272085.P12947725768036495723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272088 (n - 1) + a (n - 1)

end

end A272085.P12947725768036495723

/-! ## A272085.P16333803951804545624

`Δ[A272087(n)]-A272088(n)`
-/

namespace A272085.P16333803951804545624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272088 n

end

end A272085.P16333803951804545624

/-! ## A272085.P12793546681024006496

`A272087(n+1)-(A272088(n)+A272087(n))`
-/

namespace A272085.P12793546681024006496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272087 (n + 1) - (A272088 n + A272087 n)

end

end A272085.P12793546681024006496

/-! ## A272085.P3161637657901408028

`A016754(n)-A273246(n)%A016754(n)`
-/

namespace A272085.P3161637657901408028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A273246 n) (A016754 n)

end

end A272085.P3161637657901408028

/-! ## A272085.P3671315641085515587

`A181385(4*n+2)-A273246(n)`
-/

namespace A272085.P3671315641085515587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (4 * n + 2) - A273246 n

end

end A272085.P3671315641085515587

/-! ## A272085.P18080923706663265792

`A008740(A008458(n))-A273246(n)`
-/

namespace A272085.P18080923706663265792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273246 n

end

end A272085.P18080923706663265792

/-! ## A272085.P11336206370078543064

`A254667(A016754(n))-A273246(n)`
-/

namespace A272085.P11336206370078543064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A016754 n).toNat - A273246 n

end

end A272085.P11336206370078543064

/-!
# A272086: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 422", based on the 5-celled von Neumann neighborhood.

The programs for A272086, there is no canonical definition to state claims against.
-/

/-! ## A272086.P14718942492209447637

`A272085(2^n-1)`
-/

namespace A272086.P14718942492209447637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272085 (2 ^ n - 1)

end

end A272086.P14718942492209447637

/-! ## A272086.P17338346063351576363

`record[A272085(A227351(n))]`
-/

namespace A272086.P17338346063351576363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272085 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272086.P17338346063351576363

/-! ## A272086.P11289514737596797766

`record[A272085(A232751(n))]`
-/

namespace A272086.P11289514737596797766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272085 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272086.P11289514737596797766

/-! ## A272086.P8641554217444657211

`record[A272085(A243071(n+1))]`
-/

namespace A272086.P8641554217444657211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272085 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272086.P8641554217444657211

/-! ## A272086.P8999027317939509930

`record[A272085(A302029(n+1))]`
-/

namespace A272086.P8999027317939509930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272085 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272086.P8999027317939509930

/-!
# A272087: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 422", based on the 5-celled von Neumann neighborhood.

The programs for A272087, there is no canonical definition to state claims against.
-/

/-! ## A272087.P3222727473673734967

`∑[A272085(n)]`
-/

namespace A272087.P3222727473673734967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272087.P3222727473673734967

/-! ## A272087.P9463947379263017305

`A272085(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A272087.P9463947379263017305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272085 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A272087.P9463947379263017305

/-! ## A272087.P10962267755641009415

`∑[∑[A272088(n)]+1-A272088(n)]`
-/

namespace A272087.P10962267755641009415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272088 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272087.P10962267755641009415

/-! ## A272087.P10421752771228978219

`∑[A181385(A016825(n))-A273246(n)]`
-/

namespace A272087.P10421752771228978219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272087.P10421752771228978219

/-! ## A272087.P11370982536425751558

`∑[A181385(A016825(n))]-A273248(n)`
-/

namespace A272087.P11370982536425751558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273248 n

end

end A272087.P11370982536425751558

/-!
# A272088: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 422", based on the 5-celled von Neumann neighborhood.

The programs for A272088, there is no canonical definition to state claims against.
-/

/-! ## A272088.P17504866845488102365

`Δ[A272085(n)]`
-/

namespace A272088.P17504866845488102365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272088.P17504866845488102365

/-! ## A272088.P14691366899745185673

`A272085(n+1)-A272085(n)`
-/

namespace A272088.P14691366899745185673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272085 (n + 1) - A272085 n

end

end A272088.P14691366899745185673

/-! ## A272088.P4985739980742654069

`Δ[A181385(A016825(n))-A273246(n)]`
-/

namespace A272088.P4985739980742654069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272088.P4985739980742654069

/-! ## A272088.P15982624910147704524

`Δ[A181385(A016825(n))]-A273249(n)`
-/

namespace A272088.P15982624910147704524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273249 n

end

end A272088.P15982624910147704524

/-! ## A272088.P4435490191483184226

`Δ[A008740(A008458(n))-A273246(n)]`
-/

namespace A272088.P4435490191483184226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272088.P4435490191483184226

/-!
# A272089: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 425", based on the 5-celled von Neumann neighborhood.

The programs for A272089, there is no canonical definition to state claims against.
-/

/-! ## A272089.P13197215928979235233

`A272092(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272089.P13197215928979235233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272092 (n - 1) + a (n - 1)

end

end A272089.P13197215928979235233

/-! ## A272089.P17302083174834240554

`Δ[A272091(n)]-A272092(n)`
-/

namespace A272089.P17302083174834240554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272092 n

end

end A272089.P17302083174834240554

/-! ## A272089.P8505731644999590867

`A272091(n+1)-(A272092(n)+A272091(n))`
-/

namespace A272089.P8505731644999590867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272091 (n + 1) - (A272092 n + A272091 n)

end

end A272089.P8505731644999590867

/-! ## A272089.P10888354716196392307

`A327112(A108577(n+1))+A272016(n)`
-/

namespace A272089.P10888354716196392307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327112 (A108577 (n + 1)).toNat + A272016 n

end

end A272089.P10888354716196392307

/-!
# A272090: Number of chiral partitions of n; number of irreducible representations of the symmetric group S_n with nontrivial determinant.

The programs for A272090, there is no canonical definition to state claims against.
-/

/-! ## A272090.P12342122053626438129

`A000041(n+1)-A045923(n+1)`
-/

namespace A272090.P12342122053626438129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A045923 (n + 1)

end

end A272090.P12342122053626438129

/-! ## A272090.P9813051990066883547

`A000065(n+1)+1-A045923(n+1)`
-/

namespace A272090.P9813051990066883547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A045923 (n + 1))

end

end A272090.P9813051990066883547

/-! ## A272090.P11905525177766012491

`Δ[A000070(n)]-A045923(n+1)`
-/

namespace A272090.P11905525177766012491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045923 (n + 1)

end

end A272090.P11905525177766012491

/-! ## A272090.P3206688720771244540

`record[A035363(n)]-A045923(n+1)`
-/

namespace A272090.P3206688720771244540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A045923 (n + 1)

end

end A272090.P3206688720771244540

/-! ## A272090.P67917810855291330

`record[A035444(n)]-A045923(n+1)`
-/

namespace A272090.P67917810855291330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A045923 (n + 1)

end

end A272090.P67917810855291330

/-! ## A272090.P12787413313678662095

`record[A114099(n)]-A045923(n+1)`
-/

namespace A272090.P12787413313678662095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A045923 (n + 1)

end

end A272090.P12787413313678662095

/-!
# A272091: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 425", based on the 5-celled von Neumann neighborhood.

The programs for A272091, there is no canonical definition to state claims against.
-/

/-! ## A272091.P989680640216474611

`∑[A272089(n)]`
-/

namespace A272091.P989680640216474611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272091.P989680640216474611

/-! ## A272091.P11041942480871983850

`A272089(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272091.P11041942480871983850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272089 n + a (A023443 n).toNat

end

end A272091.P11041942480871983850

/-! ## A272091.P15284032569699770938

`a(n-1)+A272089(n)+A000007(n)` with `a(0)=1`
-/

namespace A272091.P15284032569699770938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272089 n + A000007 n)

end

end A272091.P15284032569699770938

/-! ## A272091.P7285334102966654743

`a(n-1)+A272089(n)%A272103(n)` with `a(0)=1`
-/

namespace A272091.P7285334102966654743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272089 n) (A272103 n)

end

end A272091.P7285334102966654743

/-! ## A272091.P9828553012365879487

`∑[A272092(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272091.P9828553012365879487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272092 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272091.P9828553012365879487

/-! ## A272091.P6161715095152298846

`∑[∑[A272092(n)]+1-A272092(n)]`
-/

namespace A272091.P6161715095152298846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272092 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272091.P6161715095152298846

/-!
# A272092: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 425", based on the 5-celled von Neumann neighborhood.

The programs for A272092, there is no canonical definition to state claims against.
-/

/-! ## A272092.P13167529852539135511

`Δ[A272089(n)]`
-/

namespace A272092.P13167529852539135511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272092.P13167529852539135511

/-! ## A272092.P9967687892283090886

`A272089(n+1)-A272089(n)`
-/

namespace A272092.P9967687892283090886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272089 (n + 1) - A272089 n

end

end A272092.P9967687892283090886

/-! ## A272092.P57382992644248334

`A272089(n+1)+A272089(n)/A033999(2*n+1)`
-/

namespace A272092.P57382992644248334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272089 (n + 1) : ℚ) + (A272089 n : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A272092.P57382992644248334

/-! ## A272092.P3952660411505702958

`or(A010675(n²²), A272019(n))`
-/

namespace A272092.P3952660411505702958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010675 ((n ^ 2) ^ 2)) (A272019 n)

end

end A272092.P3952660411505702958

/-! ## A272092.P2785742126809624486

`or(A030548(A000108(n)), A272019(n))`
-/

namespace A272092.P2785742126809624486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030548 (A000108 n).toNat) (A272019 n)

end

end A272092.P2785742126809624486

/-!
# A272094: a(n) = Product_{k=0..n} binomial(k^2,k).

The programs for A272094, there is no canonical definition to state claims against.
-/

/-! ## A272094.P16439615345522125710

`∏[C(n², n)]`
-/

namespace A272094.P16439615345522125710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A272094.P16439615345522125710

/-! ## A272094.P12570373935628155636

`2^∑[log2(C(n², n))]`
-/

namespace A272094.P12570373935628155636
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.choose (n ^ 2) n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272094.P12570373935628155636

/-! ## A272094.P6257960289534068528

`C(n², n)*a(n-1)` with `a(0)=1`
-/

namespace A272094.P6257960289534068528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n ^ 2) n * a (n - 1)

end

end A272094.P6257960289534068528

/-! ## A272094.P3490073223209668442

`∏[A014062(n)]`
-/

namespace A272094.P3490073223209668442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A272094.P3490073223209668442

/-! ## A272094.P6992695033225204357

`∏[A055789(n²)]`
-/

namespace A272094.P6992695033225204357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055789 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A272094.P6992695033225204357

/-!
# A272095: a(n) = Product_{k=0..n} binomial(n^2,k).

The programs for A272095, there is no canonical definition to state claims against.
-/

/-! ## A272095.P16751424473607596896

`∏{e}[A006939(n), C(n², #)]`
-/

namespace A272095.P16751424473607596896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (n ^ 2) (Nat.factorization (f1 n).natAbs p)

end

end A272095.P16751424473607596896

/-!
# A272098: Triangle read by rows, T(n,k) = Sum_{j=0..n} (-1)^(n-j)*C(-j-1,-n-1)*E1(j,k), E1 the Eulerian numbers A173018, for n >= 0 and 0 <= k <= n.

The programs for A272098, there is no canonical definition to state claims against.
-/

/-! ## A272098.P14070019287052473793

`A046802(n+1)-Δ[char[∑[n]]]`
-/

namespace A272098.P14070019287052473793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A272098.P14070019287052473793

/-! ## A272098.P17673367017073392135

`Δ[∑[A046802(n)]-A010054(n)]`
-/

namespace A272098.P17673367017073392135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272098.P17673367017073392135

/-! ## A272098.P17579995802817405136

`A056859(n+1)+A037912(A104004(n))`
-/

namespace A272098.P17579995802817405136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056859 (n + 1) + A037912 (A104004 n).toNat

end

end A272098.P17579995802817405136

/-!
# A272099: Triangle read by rows, T(n,k) = C(n+1,k+1)*F([k-n, k-n-1], [-n-1], -1), where F is the generalized hypergeometric function, for n>=0 and 0<=k<=n.

The programs for A272099, there is no canonical definition to state claims against.
-/

/-! ## A272099.P15079894349942222201

`A210038(comp[∑[n]]+1)`
-/

namespace A272099.P15079894349942222201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210038 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A272099.P15079894349942222201

/-! ## A272099.P7938543692497077634

`A207605(comp[∑[n]]+2)`
-/

namespace A272099.P7938543692497077634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207605 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A272099.P7938543692497077634

/-! ## A272099.P2332686233451183376

`or(char[2], A207605(A007401(n+1)+3))`
-/

namespace A272099.P2332686233451183376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207605 (A007401 (n + 1) + 3).toNat)

end

end A272099.P2332686233451183376

/-! ## A272099.P13027230295910626797

`A153342(comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A272099.P13027230295910626797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153342 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A272099.P13027230295910626797

/-! ## A272099.P10099116310023755057

`A055807(lt[1, A065941(n)])`
-/

namespace A272099.P10099116310023755057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272099.P10099116310023755057

/-! ## A272099.P8157860661420557791

`A055807(lt[1, A097805(n)])`
-/

namespace A272099.P8157860661420557791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272099.P8157860661420557791

/-! ## A272099.P9963064754492853665

`A055807(lt[1, A177767(n)])`
-/

namespace A272099.P9963064754492853665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272099.P9963064754492853665

/-! ## A272099.P16002951644548528920

`A055807(lt[2, A180562(n)])`
-/

namespace A272099.P16002951644548528920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272099.P16002951644548528920

/-! ## A272099.P7686544385600533794

`A055807(lt[1, A055807(n)]+1)`
-/

namespace A272099.P7686544385600533794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A272099.P7686544385600533794

/-! ## A272099.P16962437386312025084

`A055807(lt[1, A048993(n)])`
-/

namespace A272099.P16962437386312025084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272099.P16962437386312025084

