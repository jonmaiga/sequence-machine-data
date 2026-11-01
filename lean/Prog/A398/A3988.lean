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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A398801: Numbers of the form i*j, where i and j both have m digits and i*j = 10^m*R(i) + j, R being the digit reversal (A004086); j may end in 0.

The programs for A398801, there is no canonical definition to state claims against.
-/

/-! ## A398801.P14679220176998304954

`A014575(lt[A226375(n), A065052(n+1)])`
-/

namespace A398801.P14679220176998304954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226375 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014575 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A398801.P14679220176998304954

/-!
# A398802: Numbers k of the form q(k)^2 * rad(k), where rad = A007947, and q(k) the second smallest distinct prime factor of k.

The programs for A398802, there is no canonical definition to state claims against.
-/

/-! ## A398802.P9625537072785539984

`∩[A048109(n+1), A398375(n+1)]`
-/

namespace A398802.P9625537072785539984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398802.P9625537072785539984

/-! ## A398802.P17754950716375082593

`∩[A360793(n+1), A398375(n+1)]`
-/

namespace A398802.P17754950716375082593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398802.P17754950716375082593

/-! ## A398802.P4283327183674380693

`filter[A398375(n+1), A359472(#)]`
-/

namespace A398802.P4283327183674380693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A398802.P4283327183674380693

/-!
# A398804: Numbers k such that A008479(k) = 4.

The programs for A398804, there is no canonical definition to state claims against.
-/

/-! ## A398804.P10269787976440188277

`eq[4, A355432(n+1)+A005361(n+1)]+1`
-/

namespace A398804.P10269787976440188277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1) + A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398804.P10269787976440188277

/-! ## A398804.P2268968200103061686

`eq[4, A008479(n+1)]+1`
-/

namespace A398804.P2268968200103061686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398804.P2268968200103061686

/-! ## A398804.P7112618990386561375

`eq[4, A008479(A028310(n))]`
-/

namespace A398804.P7112618990386561375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A398804.P7112618990386561375

/-! ## A398804.P5011069360384578978

`eq[4, A008479(A000038(n)+n)]`
-/

namespace A398804.P5011069360384578978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A398804.P5011069360384578978

/-! ## A398804.P11852606111823536917

`eq[4, A005361(n+1)+A183093(n+1)-A372720(n+1)]+1`
-/

namespace A398804.P11852606111823536917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) + (A183093 (n + 1) - A372720 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398804.P11852606111823536917

/-!
# A398805: Number of length-n overlap-free ternary words.

The programs for A398805, there is no canonical definition to state claims against.
-/

/-! ## A398805.P16441096669041732249

`A256133(A106472(n))`
-/

namespace A398805.P16441096669041732249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A106472 n).toNat

end

end A398805.P16441096669041732249

/-! ## A398805.P17911540733449718580

`A070106(A049612(n+3)+3)`
-/

namespace A398805.P17911540733449718580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A049612 (n + 3) + 3).toNat

end

end A398805.P17911540733449718580

/-!
# A398807: Expansion of (Sum_{k>=0} binomial(5*k+1,k) * x^k)^4.

The programs for A398807, the canonical program `A398807.P1294699922700618276` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398807 has offset 0).

The definition of A398807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398807.P1294699922700618276

`∑{#}[n, 4^#*C(#+2, 2)*C(5*n+7, n-#)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398807

/-- `∑{#}[n, 4^#*C(#+2, 2)*C(5*n+7, n-#)]` -/
def P1294699922700618276.Spec : Prop :=
  ∀ n, (P1294699922700618276.a n : ℤ) = A398807 n

theorem P1294699922700618276.correct : P1294699922700618276.Spec := by
  intro n
  simp only [A398807]

end A398807

/-!
# A398808: a(n) = 27^n * [z^n] 2F1(1/3, 1/3; 1; z)^2.

The programs for A398808, the canonical program `A398808.P3237987185005976780` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398808 has offset 0).

The definition of A398808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398808.P3237987185005976780

`∑{#}[n, A276018(#)*A276018(n-#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398808

/-- `∑{#}[n, A276018(#)*A276018(n-#)]` -/
def P3237987185005976780.Spec : Prop :=
  ∀ n, P3237987185005976780.a n = A398808 n

theorem P3237987185005976780.correct : P3237987185005976780.Spec := by
  intro n
  simp only [A398808]

end A398808

/-!
# A398811: a(n) is the number of tilings of a 10 X 5n rectangle into Y-pentominoes (no reflections, only rotations).

The programs for A398811, the canonical program `A398811.P934446363900781508` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398811 has offset 0).

The definition of A398811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398811.P934446363900781508

`ogf((1-4x-2x^2-x^3)/(1-5x-5x^2))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398811

/-- `ogf((1-4x-2x^2-x^3)/(1-5x-5x^2))` -/
def P934446363900781508.Spec : Prop :=
  ∀ n, P934446363900781508.a n = A398811 n

theorem P934446363900781508.correct : P934446363900781508.Spec := by
  intro n
  simp only [A398811]

end A398811

/-! ## A398811.P11158036737184626784

`5*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=1, a(2)=8, a(3)=44`
-/

namespace A398811.P11158036737184626784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 8, 44] fun n a =>
  5 * a (n - 1) + 5 * a (n - 2)

end

end A398811.P11158036737184626784

namespace A398811

/-- `5*a(n-1)+5*a(n-2)` -/
def P11158036737184626784.Spec : Prop :=
  ∀ n, (P11158036737184626784.a n : ℤ) = A398811 n

end A398811

/-!
# A398812: a(n) = n^2 - A138808(n): number of lattice points in the square [1,n] X [1,n] not covered by any box [1,p] X [1,q] with p*q = n.

The programs for A398812, there is no canonical definition to state claims against.
-/

/-! ## A398812.P8586340332541732374

`(n+1)²-A138808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398812.P8586340332541732374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A138808 (n + 1)

end

end A398812.P8586340332541732374

/-! ## A398812.P17802124440639480509

`A344485(n+1)+A083917(A319616(n))`
-/

namespace A398812.P17802124440639480509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344485 (n + 1) + A083917 (A319616 n).toNat

end

end A398812.P17802124440639480509

/-! ## A398812.P9566076906870693842

`A344485(n+1)+A063524(A241704(n+1))`
-/

namespace A398812.P9566076906870693842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344485 (n + 1) + A063524 (A241704 (n + 1)).toNat

end

end A398812.P9566076906870693842

/-!
# A398813: Smallest number with multiplicative partition persistence n (see A398037).

The programs for A398813, there is no canonical definition to state claims against.
-/

/-! ## A398813.P12667966893791145910

`A018231(A018082(n))`
-/

namespace A398813.P12667966893791145910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018231 (A018082 n).toNat

end

end A398813.P12667966893791145910

/-! ## A398813.P14663784172198847336

`A018231(A093637(n)+n)`
-/

namespace A398813.P14663784172198847336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018231 (A093637 n + (n : ℤ)).toNat

end

end A398813.P14663784172198847336

/-!
# A398814: Numbers k such that k!! + k - 1 is prime.

The programs for A398814, there is no canonical definition to state claims against.
-/

/-! ## A398814.P10031567591326697200

`A339556(n+1)+A178487(A066572(n+1))`
-/

namespace A398814.P10031567591326697200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339556 (n + 1) + A178487 (A066572 (n + 1)).toNat

end

end A398814.P10031567591326697200

/-! ## A398814.P6059479875567412521

`A261046(A239873(A239873(n)))+n+1`
-/

namespace A398814.P6059479875567412521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261046 (A239873 (A239873 n).toNat).toNat + (n + 1 : ℤ)

end

end A398814.P6059479875567412521

/-!
# A398816: Number of factorizations of (p*q*r*s)^n into parts > 1 where none of p, q, r, or s are permitted as factors, for any four distinct primes p, q, r, and s.

The programs for A398816, there is no canonical definition to state claims against.
-/

/-! ## A398816.P15209017078036851425

`A399923(∑[n+4]+2)`
-/

namespace A398816.P15209017078036851425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399923 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A398816.P15209017078036851425

/-!
# A398817: Numbers with multiplicative partition persistence 3.

The programs for A398817, there is no canonical definition to state claims against.
-/

/-! ## A398817.P10364519411601373354

`eq[3, A398037(n+1)]+1`
-/

namespace A398817.P10364519411601373354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398817.P10364519411601373354

/-! ## A398817.P15008382624649772892

`∩[A273157(n+1), A374904(n+1)]`
-/

namespace A398817.P15008382624649772892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398817.P15008382624649772892

/-! ## A398817.P9561462119500577176

`∩[A335080(n+1), A374904(n+1)]`
-/

namespace A398817.P9561462119500577176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398817.P9561462119500577176

/-! ## A398817.P12777489742442401034

`eq[3, A348610(A348610(n+1))]+1`
-/

namespace A398817.P12777489742442401034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (A348610 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398817.P12777489742442401034

/-! ## A398817.P6456991409304751881

`eq[2, A141169(A293514(n+1))]+1`
-/

namespace A398817.P6456991409304751881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A293514 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398817.P6456991409304751881

/-!
# A398818: Numbers whose powerful part (A057521) is a cube.

The programs for A398818, the canonical program `A398818.P2247325722849130262` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398818 has offset 1).

The definition of A398818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6933 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398818.P2247325722849130262

`record[lcm(A007947(n+1), A008834(n+1))]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A398818

/-- `record[lcm(A007947(n+1), A008834(n+1))]` -/
def P2247325722849130262.Spec : Prop :=
  ∀ n, (P2247325722849130262.a n : ℤ) = A398818 (n + 1)

theorem P2247325722849130262.correct : P2247325722849130262.Spec := by
  intro n
  simp only [A398818, Nat.add_sub_cancel]

end A398818

/-! ## A398818.P15116989207848212802

`eq[A360720(n+1), A380396(n+1)]+1`
-/

namespace A398818.P15116989207848212802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398818.P15116989207848212802

namespace A398818

/-- `eq[A360720(n+1), A380396(n+1)]+1` -/
def P15116989207848212802.Spec : Prop :=
  ∀ n, (P15116989207848212802.a n : ℤ) = A398818 (n + 1)

end A398818

/-! ## A398818.P2731773186590690901

`eq[A380396(n+1), A380400(n+1)]+1`
-/

namespace A398818.P2731773186590690901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398818.P2731773186590690901

namespace A398818

/-- `eq[A380396(n+1), A380400(n+1)]+1` -/
def P2731773186590690901.Spec : Prop :=
  ∀ n, (P2731773186590690901.a n : ℤ) = A398818 (n + 1)

end A398818

/-! ## A398818.P67987369864658425

`eq[A384050(n+1), A384053(n+1)]+1`
-/

namespace A398818.P67987369864658425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398818.P67987369864658425

namespace A398818

/-- `eq[A384050(n+1), A384053(n+1)]+1` -/
def P67987369864658425.Spec : Prop :=
  ∀ n, (P67987369864658425.a n : ℤ) = A398818 (n + 1)

end A398818

/-! ## A398818.P3513164665955088243

`eq[A399737(n+1), A399740(n+1)]+1`
-/

namespace A398818.P3513164665955088243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398818.P3513164665955088243

namespace A398818

/-- `eq[A399737(n+1), A399740(n+1)]+1` -/
def P3513164665955088243.Spec : Prop :=
  ∀ n, (P3513164665955088243.a n : ℤ) = A398818 (n + 1)

end A398818

/-! ## A398818.P4318297302403286071

`eq[1, A134273(A327012(n+1))]+1`
-/

namespace A398818.P4318297302403286071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134273 (A327012 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398818.P4318297302403286071

namespace A398818

/-- `eq[1, A134273(A327012(n+1))]+1` -/
def P4318297302403286071.Spec : Prop :=
  ∀ n, (P4318297302403286071.a n : ℤ) = A398818 (n + 1)

end A398818

/-!
# A398819: Numbers k such that the powerful parts (A057521) of both k and k+1 are cubes.

The programs for A398819, the canonical program `A398819.P9340603326399367742` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398819 has offset 1).

The definition of A398819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398819.P9340603326399367742

`∩[A398818(n+1)-1, A398818(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A398819

/-- `∩[A398818(n+1)-1, A398818(n+1)]` -/
def P9340603326399367742.Spec : Prop :=
  ∀ n, (P9340603326399367742.a n : ℤ) = A398819 (n + 1)

theorem P9340603326399367742.correct : P9340603326399367742.Spec := by
  intro n
  simp only [A398819, Nat.add_sub_cancel]

end A398819

/-!
# A398820: Numbers whose powerful part (A057521) is a square that is larger than 1.

The programs for A398820, the canonical program `A398820.P11169697857267256165` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398820 has offset 1).

The definition of A398820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398820.P11169697857267256165

`eq[A008683(n+1), A295663(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A398820

/-- `eq[A008683(n+1), A295663(n+1)]+1` -/
def P11169697857267256165.Spec : Prop :=
  ∀ n, (P11169697857267256165.a n : ℤ) = A398820 (n + 1)

theorem P11169697857267256165.correct : P11169697857267256165.Spec := by
  intro n
  simp only [A398820, Nat.add_sub_cancel]

end A398820

/-! ## A398820.P10592934013182042899

`filter[A335275(2+n), A087049(#)]`
-/

namespace A398820.P10592934013182042899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A398820.P10592934013182042899

namespace A398820

/-- `filter[A335275(2+n), A087049(#)]` -/
def P10592934013182042899.Spec : Prop :=
  ∀ n, P10592934013182042899.a n = A398820 (n + 1)

end A398820

/-! ## A398820.P16865606399267949971

`∩[A013929(n+1), A335275(n+1)]`
-/

namespace A398820.P16865606399267949971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398820.P16865606399267949971

namespace A398820

/-- `∩[A013929(n+1), A335275(n+1)]` -/
def P16865606399267949971.Spec : Prop :=
  ∀ n, (P16865606399267949971.a n : ℤ) = A398820 (n + 1)

end A398820

/-! ## A398820.P7001142401219358018

`∩[A072587(1+n), A335275(n+1)]`
-/

namespace A398820.P7001142401219358018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398820.P7001142401219358018

namespace A398820

/-- `∩[A072587(1+n), A335275(n+1)]` -/
def P7001142401219358018.Spec : Prop :=
  ∀ n, (P7001142401219358018.a n : ℤ) = A398820 (n + 1)

end A398820

/-! ## A398820.P12335158247014815544

`∩[A335275(n+1), A398824(n+1)]`
-/

namespace A398820.P12335158247014815544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398820.P12335158247014815544

namespace A398820

/-- `∩[A335275(n+1), A398824(n+1)]` -/
def P12335158247014815544.Spec : Prop :=
  ∀ n, (P12335158247014815544.a n : ℤ) = A398820 (n + 1)

end A398820

/-! ## A398820.P2640659131480104890

`filter[A072587(n+1), A055229(#)]`
-/

namespace A398820.P2640659131480104890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A055229 (f1 j).toNat = 1) n)

end

end A398820.P2640659131480104890

namespace A398820

/-- `filter[A072587(n+1), A055229(#)]` -/
def P2640659131480104890.Spec : Prop :=
  ∀ n, P2640659131480104890.a n = A398820 (n + 1)

end A398820

/-! ## A398820.P4027676407753666022

`filter[A335275(n+1), A107078(#)]`
-/

namespace A398820.P4027676407753666022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A398820.P4027676407753666022

namespace A398820

/-- `filter[A335275(n+1), A107078(#)]` -/
def P4027676407753666022.Spec : Prop :=
  ∀ n, P4027676407753666022.a n = A398820 (n + 1)

end A398820

/-! ## A398820.P5796671412097380477

`eq[2, A006530(A360721(n+1))]+1`
-/

namespace A398820.P5796671412097380477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A360721 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398820.P5796671412097380477

namespace A398820

/-- `eq[2, A006530(A360721(n+1))]+1` -/
def P5796671412097380477.Spec : Prop :=
  ∀ n, (P5796671412097380477.a n : ℤ) = A398820 (n + 1)

end A398820

/-! ## A398820.P9539068857820548457

`eq[A069158(n+1), A295662(n+1)]+1`
-/

namespace A398820.P9539068857820548457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A398820.P9539068857820548457

namespace A398820

/-- `eq[A069158(n+1), A295662(n+1)]+1` -/
def P9539068857820548457.Spec : Prop :=
  ∀ n, (P9539068857820548457.a n : ℤ) = A398820 (n + 1)

end A398820

/-! ## A398820.P2594125718644051301

`A368714(n+2)%A271461(A065036(n+1))`
-/

namespace A398820.P2594125718644051301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368714 (n + 2)) (A271461 (A065036 (n + 1)).toNat)

end

end A398820.P2594125718644051301

namespace A398820

/-- `A368714(n+2)%A271461(A065036(n+1))` -/
def P2594125718644051301.Spec : Prop :=
  ∀ n, P2594125718644051301.a n = A398820 (n + 1)

end A398820

/-! ## A398820.P11948913050838364374

`∪[A368714(A184429(n+2)), A384519(n+1)]`
-/

namespace A398820.P11948913050838364374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (A184429 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A398820.P11948913050838364374

namespace A398820

/-- `∪[A368714(A184429(n+2)), A384519(n+1)]` -/
def P11948913050838364374.Spec : Prop :=
  ∀ n, (P11948913050838364374.a n : ℤ) = A398820 (n + 1)

end A398820

/-! ## A398820.P11518869079707500751

`A368714(n+2)%A000203(A003360(n+1))`
-/

namespace A398820.P11518869079707500751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368714 (n + 2)) (A000203 (A003360 (n + 1)).toNat)

end

end A398820.P11518869079707500751

namespace A398820

/-- `A368714(n+2)%A000203(A003360(n+1))` -/
def P11518869079707500751.Spec : Prop :=
  ∀ n, P11518869079707500751.a n = A398820 (n + 1)

end A398820

/-! ## A398820.P16586089435437289821

`A368714(A178815(n+3)+n)`
-/

namespace A398820.P16586089435437289821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (A178815 (n + 3) + (n : ℤ)).toNat

end

end A398820.P16586089435437289821

namespace A398820

/-- `A368714(A178815(n+3)+n)` -/
def P16586089435437289821.Spec : Prop :=
  ∀ n, P16586089435437289821.a n = A398820 (n + 1)

end A398820

/-!
# A398821: Numbers k such that the powerful parts (A057521) of both k and k+1 are squares that are larger than 1.

The programs for A398821, the canonical program `A398821.P1436620168790745760` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398821 has offset 1).

The definition of A398821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398821.P1436620168790745760

`∩[A398820(n+1)-1, A398820(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A398821

/-- `∩[A398820(n+1)-1, A398820(n+1)]` -/
def P1436620168790745760.Spec : Prop :=
  ∀ n, (P1436620168790745760.a n : ℤ) = A398821 (n + 1)

theorem P1436620168790745760.correct : P1436620168790745760.Spec := by
  intro n
  simp only [A398821, Nat.add_sub_cancel]

end A398821

/-! ## A398821.P7476354469303412953

`∩[A068781(n+1), A398161(n+1)]`
-/

namespace A398821.P7476354469303412953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398821.P7476354469303412953

namespace A398821

/-- `∩[A068781(n+1), A398161(n+1)]` -/
def P7476354469303412953.Spec : Prop :=
  ∀ n, (P7476354469303412953.a n : ℤ) = A398821 (n + 1)

end A398821

/-! ## A398821.P16072000611968163388

`∩[A342187(n+1), A398161(n+1)]`
-/

namespace A398821.P16072000611968163388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398821.P16072000611968163388

namespace A398821

/-- `∩[A342187(n+1), A398161(n+1)]` -/
def P16072000611968163388.Spec : Prop :=
  ∀ n, (P16072000611968163388.a n : ℤ) = A398821 (n + 1)

end A398821

/-! ## A398821.P12046905733270653919

`∩[A233583(A368714(n+1)), A368714(n+1)]`
-/

namespace A398821.P12046905733270653919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A368714 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398821.P12046905733270653919

namespace A398821

/-- `∩[A233583(A368714(n+1)), A368714(n+1)]` -/
def P12046905733270653919.Spec : Prop :=
  ∀ n, (P12046905733270653919.a n : ℤ) = A398821 (n + 1)

end A398821

/-!
# A398822: Numbers whose powerful part (A057521) is a cube that is larger than 1.

The programs for A398822, the canonical program `A398822.P17647454095404140229` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398822 has offset 1).

The definition of A398822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398822.P17647454095404140229

`filter[A398818(n+2), A087049(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A398822

/-- `filter[A398818(n+2), A087049(#)]` -/
def P17647454095404140229.Spec : Prop :=
  ∀ n, P17647454095404140229.a n = A398822 (n + 1)

theorem P17647454095404140229.correct : P17647454095404140229.Spec := by
  intro n
  simp only [A398822, Nat.add_sub_cancel]

end A398822

/-! ## A398822.P8666836115772789373

`∩[A013929(n+1), A398818(n+1)]`
-/

namespace A398822.P8666836115772789373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P8666836115772789373

namespace A398822

/-- `∩[A013929(n+1), A398818(n+1)]` -/
def P8666836115772789373.Spec : Prop :=
  ∀ n, (P8666836115772789373.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P16229051705366308848

`∩[A046099(n+1), A398818(n+1)]`
-/

namespace A398822.P16229051705366308848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P16229051705366308848

namespace A398822

/-- `∩[A046099(n+1), A398818(n+1)]` -/
def P16229051705366308848.Spec : Prop :=
  ∀ n, (P16229051705366308848.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P3877303734458910922

`∩[A046790(n+1), A398818(n+1)]`
-/

namespace A398822.P3877303734458910922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P3877303734458910922

namespace A398822

/-- `∩[A046790(n+1), A398818(n+1)]` -/
def P3877303734458910922.Spec : Prop :=
  ∀ n, (P3877303734458910922.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P9236084579287922994

`∩[A048108(n+1), A398818(n+1)]`
-/

namespace A398822.P9236084579287922994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P9236084579287922994

namespace A398822

/-- `∩[A048108(n+1), A398818(n+1)]` -/
def P9236084579287922994.Spec : Prop :=
  ∀ n, (P9236084579287922994.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P865110048905654447

`∩[A049199(n+1), A398818(n+1)]`
-/

namespace A398822.P865110048905654447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P865110048905654447

namespace A398822

/-- `∩[A049199(n+1), A398818(n+1)]` -/
def P865110048905654447.Spec : Prop :=
  ∀ n, (P865110048905654447.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P147770710032199999

`∩[A062171(n+1), A398818(n+1)]`
-/

namespace A398822.P147770710032199999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P147770710032199999

namespace A398822

/-- `∩[A062171(n+1), A398818(n+1)]` -/
def P147770710032199999.Spec : Prop :=
  ∀ n, (P147770710032199999.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P1571709283415682277

`∩[A080756(n+1), A398818(n+1)]`
-/

namespace A398822.P1571709283415682277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P1571709283415682277

namespace A398822

/-- `∩[A080756(n+1), A398818(n+1)]` -/
def P1571709283415682277.Spec : Prop :=
  ∀ n, (P1571709283415682277.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P973905169711606371

`∩[A274141(n+1), A398818(n+1)]`
-/

namespace A398822.P973905169711606371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P973905169711606371

namespace A398822

/-- `∩[A274141(n+1), A398818(n+1)]` -/
def P973905169711606371.Spec : Prop :=
  ∀ n, (P973905169711606371.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P3956737630483461386

`∩[A366761(n+1), A398818(n+1)]`
-/

namespace A398822.P3956737630483461386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P3956737630483461386

namespace A398822

/-- `∩[A366761(n+1), A398818(n+1)]` -/
def P3956737630483461386.Spec : Prop :=
  ∀ n, (P3956737630483461386.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P10954420356894365712

`∩[A374590(n+1), A398818(n+1)]`
-/

namespace A398822.P10954420356894365712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P10954420356894365712

namespace A398822

/-- `∩[A374590(n+1), A398818(n+1)]` -/
def P10954420356894365712.Spec : Prop :=
  ∀ n, (P10954420356894365712.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P12733949641540918054

`∩[A398818(n+1), A398824(n+1)]`
-/

namespace A398822.P12733949641540918054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P12733949641540918054

namespace A398822

/-- `∩[A398818(n+1), A398824(n+1)]` -/
def P12733949641540918054.Spec : Prop :=
  ∀ n, (P12733949641540918054.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P10676207689779452263

`filter[A398818(n+1), A107078(#)]`
-/

namespace A398822.P10676207689779452263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A398822.P10676207689779452263

namespace A398822

/-- `filter[A398818(n+1), A107078(#)]` -/
def P10676207689779452263.Spec : Prop :=
  ∀ n, P10676207689779452263.a n = A398822 (n + 1)

end A398822

/-! ## A398822.P11280549697197136973

`∩[A299117(n+1), A398818(n+1)]`
-/

namespace A398822.P11280549697197136973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P11280549697197136973

namespace A398822

/-- `∩[A299117(n+1), A398818(n+1)]` -/
def P11280549697197136973.Spec : Prop :=
  ∀ n, (P11280549697197136973.a n : ℤ) = A398822 (n + 1)

end A398822

/-! ## A398822.P6293819553328441663

`∩[A225353(n+1), A398818(n+1)]`
-/

namespace A398822.P6293819553328441663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398822.P6293819553328441663

namespace A398822

/-- `∩[A225353(n+1), A398818(n+1)]` -/
def P6293819553328441663.Spec : Prop :=
  ∀ n, (P6293819553328441663.a n : ℤ) = A398822 (n + 1)

end A398822

/-!
# A398823: Numbers k such that the powerful parts (A057521) of both k and k+1 are cubes that are larger than 1.

The programs for A398823, the canonical program `A398823.P17524817232743273424` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398823 has offset 1).

The definition of A398823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398823.P17524817232743273424

`∩[A398822(n+1)-1, A398822(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A398823

/-- `∩[A398822(n+1)-1, A398822(n+1)]` -/
def P17524817232743273424.Spec : Prop :=
  ∀ n, (P17524817232743273424.a n : ℤ) = A398823 (n + 1)

theorem P17524817232743273424.correct : P17524817232743273424.Spec := by
  intro n
  simp only [A398823, Nat.add_sub_cancel]

end A398823

/-! ## A398823.P7545709451051745707

`filter[A342189(n+1), A321081(#)]`
-/

namespace A398823.P7545709451051745707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A321081 (f1 j).toNat = 1) n)

end

end A398823.P7545709451051745707

namespace A398823

/-- `filter[A342189(n+1), A321081(#)]` -/
def P7545709451051745707.Spec : Prop :=
  ∀ n, P7545709451051745707.a n = A398823 (n + 1)

end A398823

/-!
# A398824: Numbers whose powerful part (A057521) is a perfect power that is larger than 1.

The programs for A398824, there is no canonical definition to state claims against.
-/

/-! ## A398824.P12241613043189563918

`eq[2, A050379(A256690(n+1)+1)%4]+1`
-/

namespace A398824.P12241613043189563918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050379 (A256690 (n + 1) + 1).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A398824.P12241613043189563918

/-!
# A398825: Numbers k such that the canonical prime factorizations of both k and k+1 contain only exponents that are congruent to 1 modulo 3.

The programs for A398825, the canonical program `A398825.P3099503128466544509` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398825 has offset 1).

The definition of A398825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5882 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398825.P3099503128466544509

`∩[A366762(n+1)-1, A366762(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A398825

/-- `∩[A366762(n+1)-1, A366762(n+1)]` -/
def P3099503128466544509.Spec : Prop :=
  ∀ n, (P3099503128466544509.a n : ℤ) = A398825 (n + 1)

theorem P3099503128466544509.correct : P3099503128466544509.Spec := by
  intro n
  simp only [A398825, Nat.add_sub_cancel]

end A398825

/-!
# A398826: Number of partitions of n where the largest part is equal to the number of divisors of n.

The programs for A398826, the canonical program `A398826.P7098747537138350296` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398826 has offset 1).

The definition of A398826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398826.P7098747537138350296

`A008284(C(n+1, 2)+A000005(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A398826

/-- `A008284(C(n+1, 2)+A000005(n+1))` -/
def P7098747537138350296.Spec : Prop :=
  ∀ n, P7098747537138350296.a n = A398826 (n + 1)

theorem P7098747537138350296.correct : P7098747537138350296.Spec := by
  intro n
  simp only [A398826, Nat.add_sub_cancel]

end A398826

/-! ## A398826.P12894034842293283775

`A008284(A000005(1+n)+∑[n])`
-/

namespace A398826.P12894034842293283775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A000005 (1 + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A398826.P12894034842293283775

namespace A398826

/-- `A008284(A000005(1+n)+∑[n])` -/
def P12894034842293283775.Spec : Prop :=
  ∀ n, P12894034842293283775.a n = A398826 (n + 1)

end A398826

/-! ## A398826.P7508493284863511456

`A008284(A000217(n)+∏{e}[n+1, #+1])`
-/

namespace A398826.P7508493284863511456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A000217 n + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A398826.P7508493284863511456

namespace A398826

/-- `A008284(A000217(n)+∏{e}[n+1, #+1])` -/
def P7508493284863511456.Spec : Prop :=
  ∀ n, P7508493284863511456.a n = A398826 (n + 1)

end A398826

/-! ## A398826.P11530485292406572553

`A008284(A000217(n)+∑{d}[n+1, gcd(n, #)])`
-/

namespace A398826.P11530485292406572553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A000217 n + ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)).toNat

end

end A398826.P11530485292406572553

namespace A398826

/-- `A008284(A000217(n)+∑{d}[n+1, gcd(n, #)])` -/
def P11530485292406572553.Spec : Prop :=
  ∀ n, P11530485292406572553.a n = A398826 (n + 1)

end A398826

/-! ## A398826.P2995566882698506291

`A008284(A179865(n+1)+∏{e}[n+1, #+1])`
-/

namespace A398826.P2995566882698506291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A179865 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A398826.P2995566882698506291

namespace A398826

/-- `A008284(A179865(n+1)+∏{e}[n+1, #+1])` -/
def P2995566882698506291.Spec : Prop :=
  ∀ n, P2995566882698506291.a n = A398826 (n + 1)

end A398826

/-! ## A398826.P2779705944104126787

`A008284(A000217(n)+A000005(n+1))`
-/

namespace A398826.P2779705944104126787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A000217 n + A000005 (n + 1)).toNat

end

end A398826.P2779705944104126787

namespace A398826

/-- `A008284(A000217(n)+A000005(n+1))` -/
def P2779705944104126787.Spec : Prop :=
  ∀ n, P2779705944104126787.a n = A398826 (n + 1)

end A398826

/-! ## A398826.P1916753797968075057

`A008284(A161680(n+1)+A000005(n+1))`
-/

namespace A398826.P1916753797968075057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A161680 (n + 1) + A000005 (n + 1)).toNat

end

end A398826.P1916753797968075057

namespace A398826

/-- `A008284(A161680(n+1)+A000005(n+1))` -/
def P1916753797968075057.Spec : Prop :=
  ∀ n, P1916753797968075057.a n = A398826 (n + 1)

end A398826

/-! ## A398826.P7829969067241584039

`A008284(A179865(n+1)+A000005(n+1))`
-/

namespace A398826.P7829969067241584039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A179865 (n + 1) + A000005 (n + 1)).toNat

end

end A398826.P7829969067241584039

namespace A398826

/-- `A008284(A179865(n+1)+A000005(n+1))` -/
def P7829969067241584039.Spec : Prop :=
  ∀ n, P7829969067241584039.a n = A398826 (n + 1)

end A398826

/-! ## A398826.P6424056810747485650

`A008284(A008795(2*n+1)+A000005(n+1))`
-/

namespace A398826.P6424056810747485650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A008795 (2 * n + 1) + A000005 (n + 1)).toNat

end

end A398826.P6424056810747485650

namespace A398826

/-- `A008284(A008795(2*n+1)+A000005(n+1))` -/
def P6424056810747485650.Spec : Prop :=
  ∀ n, P6424056810747485650.a n = A398826 (n + 1)

end A398826

/-! ## A398826.P5565269513370285239

`A072233(A000217(n+1)+A000005(n+1))`
-/

namespace A398826.P5565269513370285239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A000217 (n + 1) + A000005 (n + 1)).toNat

end

end A398826.P5565269513370285239

namespace A398826

/-- `A072233(A000217(n+1)+A000005(n+1))` -/
def P5565269513370285239.Spec : Prop :=
  ∀ n, P5565269513370285239.a n = A398826 (n + 1)

end A398826

/-!
# A398827: a(n) is the number of tilings of a 9 X 10n rectangle into L-pentominoes (no reflections, only rotations).

The programs for A398827, the canonical program `A398827.P8300964796558680602` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398827 has offset 0).

The definition of A398827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398827.P8300964796558680602

`ogf(1/(1-3x-4x^2-4x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398827

/-- `ogf(1/(1-3x-4x^2-4x^3))` -/
def P8300964796558680602.Spec : Prop :=
  ∀ n, P8300964796558680602.a n = A398827 n

theorem P8300964796558680602.correct : P8300964796558680602.Spec := by
  intro n
  simp only [A398827]

end A398827

/-! ## A398827.P17846110264373657589

`3*a(n-1)+4*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A398827.P17846110264373657589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) + 4 * a (n - 3)

end

end A398827.P17846110264373657589

namespace A398827

/-- `3*a(n-1)+4*a(n-2)+4*a(n-3)` -/
def P17846110264373657589.Spec : Prop :=
  ∀ n, (P17846110264373657589.a n : ℤ) = A398827 n

end A398827

/-! ## A398827.P13486251078491777759

`Δ[A311815(a(n-1))]` with `a(0)=0`
-/

namespace A398827.P13486251078491777759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A311815 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398827.P13486251078491777759

namespace A398827

/-- `Δ[A311815(a(n-1))]` -/
def P13486251078491777759.Spec : Prop :=
  ∀ n, P13486251078491777759.a n = A398827 n

end A398827

/-!
# A398830: Numbers j, such that there exists no k, k<j, where 2*k-sigma(k) = 2*j-sigma(j) and tau(k) = tau(j).

The programs for A398830, there is no canonical definition to state claims against.
-/

/-! ## A398830.P14998202169531260043

`lt[A008281(n), A363544(n)]`
-/

namespace A398830.P14998202169531260043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363544 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398830.P14998202169531260043

/-! ## A398830.P12449181146756645169

`lt[A177886(n+1), A323652(A265110(n+1))]`
-/

namespace A398830.P12449181146756645169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323652 (A265110 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398830.P12449181146756645169

/-! ## A398830.P5163130849496355308

`comp[A362982(A272215(2*n+3)+2)-1]+1`
-/

namespace A398830.P5163130849496355308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362982 (A272215 (2 * n + 3) + 2).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A398830.P5163130849496355308

/-! ## A398830.P14870571768084493464

`lt[A195843(A090705(n+1)), A066063(n)]`
-/

namespace A398830.P14870571768084493464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (A090705 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398830.P14870571768084493464

/-! ## A398830.P3345844587164303690

`lt[A132633(n+1), A080335(A276853(n))]`
-/

namespace A398830.P3345844587164303690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 (A276853 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398830.P3345844587164303690

/-!
# A398831: Triangle read by rows: T(n, k) is the number of k-element subsets of {1, ..., n - 1} that occur as the complete digit set of both m and m + Rev_n(m) in base n for some positive integer m, where 1 <= k <= n - 1.

The programs for A398831, there is no canonical definition to state claims against.
-/

/-! ## A398831.P5072563209500311421

`and(A000360(A286899(n+1)), A002236(3*n+4))`
-/

namespace A398831.P5072563209500311421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000360 (A286899 (n + 1)).toNat) (A002236 (3 * n + 4))

end

end A398831.P5072563209500311421

/-! ## A398831.P14217851737922842873

`A023416(A395146(n))%A151987(n)`
-/

namespace A398831.P14217851737922842873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (A395146 n).toNat) (A151987 n)

end

end A398831.P14217851737922842873

/-! ## A398831.P3522040647148816001

`A058175(A396501(n))`
-/

namespace A398831.P3522040647148816001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058175 (A396501 n).toNat

end

end A398831.P3522040647148816001

/-! ## A398831.P4609283273333918971

`A171872(A396588(n))`
-/

namespace A398831.P4609283273333918971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171872 (A396588 n).toNat

end

end A398831.P4609283273333918971

/-! ## A398831.P11379068501463420568

`A243163(A384751(n))`
-/

namespace A398831.P11379068501463420568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243163 (A384751 n).toNat

end

end A398831.P11379068501463420568

/-!
# A398832: Number of Baxter permutations of length n equivalent under the action of dihedral group of the square D_4 on the permutation matrix.

The programs for A398832, there is no canonical definition to state claims against.
-/

/-! ## A398832.P7815992830605267371

`ceil(A323787(n)/A328028(n+1))`
-/

namespace A398832.P7815992830605267371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A323787 n : ℚ) / (A328028 (n + 1) : ℚ)⌉

end

end A398832.P7815992830605267371

/-! ## A398832.P2295127888003750294

`A076885(∑[A000110(n)]-A002863(n+2))`
-/

namespace A398832.P2295127888003750294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (∑ j ∈ Finset.range (n + 1), f1 j - A002863 (n + 2)).toNat

end

end A398832.P2295127888003750294

/-!
# A398833: a(n) is the number of tilings of a 10 X n rectangle into L-pentominoes (no reflections, only rotations).

The programs for A398833, the canonical program `A398833.P3872639580255898512` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398833 has offset 0).

The definition of A398833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398833.P3872639580255898512

`ogf(1/(1-x^2-x^5-x^10))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398833

/-- `ogf(1/(1-x^2-x^5-x^10))` -/
def P3872639580255898512.Spec : Prop :=
  ∀ n, P3872639580255898512.a n = A398833 n

theorem P3872639580255898512.correct : P3872639580255898512.Spec := by
  intro n
  simp only [A398833]

end A398833

/-! ## A398833.P4221690645285013215

`a(n-2)+a(n-5)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=2, a(8)=1, a(9)=3`
-/

namespace A398833.P4221690645285013215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 1, 1, 2, 1, 3] fun n a =>
  a (n - 2) + a (n - 5) + a (n - 10)

end

end A398833.P4221690645285013215

namespace A398833

/-- `a(n-2)+a(n-5)+a(n-10)` -/
def P4221690645285013215.Spec : Prop :=
  ∀ n, (P4221690645285013215.a n : ℤ) = A398833 n

end A398833

/-!
# A398836: Lower (1, 2/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398836, the canonical program `A398836.P16886983851941829356` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398836 has offset 0).

The definition of A398836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398836.P16886983851941829356

`floor(n*(9*n+1)/6)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398836

/-- `floor(n*(9*n+1)/6)` -/
def P16886983851941829356.Spec : Prop :=
  ∀ n, P16886983851941829356.a n = A398836 n

theorem P16886983851941829356.correct : P16886983851941829356.Spec := by
  intro n
  simp only [A398836]

end A398836

/-! ## A398836.P13546901811824802825

`ogf((x+4x^2+3x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398836.P13546901811824802825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 3, 1] [1, -2, 1, -1, 2, -1] n

end

end A398836.P13546901811824802825

namespace A398836

/-- `ogf((x+4x^2+3x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P13546901811824802825.Spec : Prop :=
  ∀ n, P13546901811824802825.a n = A398836 n

end A398836

/-! ## A398836.P7974503965009253031

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=14, a(4)=24`
-/

namespace A398836.P7974503965009253031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 14, 24] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398836.P7974503965009253031

namespace A398836

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P7974503965009253031.Spec : Prop :=
  ∀ n, P7974503965009253031.a n = A398836 n

end A398836

/-! ## A398836.P9612195658919049520

`∑[a(n-3)+9]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=8`
-/

namespace A398836.P9612195658919049520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 8] fun n f1 =>
  f1 (n - 3) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398836.P9612195658919049520

namespace A398836

/-- `∑[a(n-3)+9]` -/
def P9612195658919049520.Spec : Prop :=
  ∀ n, (P9612195658919049520.a n : ℤ) = A398836 n

end A398836

/-! ## A398836.P15059853849652449768

`n²-∑[∑[n]%3]+∑[n]`
-/

namespace A398836.P15059853849652449768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A398836.P15059853849652449768

namespace A398836

/-- `n²-∑[∑[n]%3]+∑[n]` -/
def P15059853849652449768.Spec : Prop :=
  ∀ n, P15059853849652449768.a n = A398836 n

end A398836

/-! ## A398836.P17372031124132279630

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=3, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A398836.P17372031124132279630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398836.P17372031124132279630

namespace A398836

/-- `∑[∑[floor(a(n-3))]]` -/
def P17372031124132279630.Spec : Prop :=
  ∀ n, (P17372031124132279630.a n : ℤ) = A398836 n

end A398836

/-! ## A398836.P2967731375232495745

`A389142(n)+n²`
-/

namespace A398836.P2967731375232495745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389142 n + (n ^ 2 : ℤ)

end

end A398836.P2967731375232495745

namespace A398836

/-- `A389142(n)+n²` -/
def P2967731375232495745.Spec : Prop :=
  ∀ n, P2967731375232495745.a n = A398836 n

end A398836

/-! ## A398836.P15082261812358412420

`A004523(n)+A000326(n)`
-/

namespace A398836.P15082261812358412420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n + A000326 n

end

end A398836.P15082261812358412420

namespace A398836

/-- `A004523(n)+A000326(n)` -/
def P15082261812358412420.Spec : Prop :=
  ∀ n, P15082261812358412420.a n = A398836 n

end A398836

/-! ## A398836.P16463931674170562329

`A397980(n)+A000212(n)`
-/

namespace A398836.P16463931674170562329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n + A000212 n

end

end A398836.P16463931674170562329

namespace A398836

/-- `A397980(n)+A000212(n)` -/
def P16463931674170562329.Spec : Prop :=
  ∀ n, P16463931674170562329.a n = A398836 n

end A398836

/-! ## A398836.P18015111026432892646

`A397982(n)+A130518(n)`
-/

namespace A398836.P18015111026432892646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397982 n + A130518 n

end

end A398836.P18015111026432892646

namespace A398836

/-- `A397982(n)+A130518(n)` -/
def P18015111026432892646.Spec : Prop :=
  ∀ n, P18015111026432892646.a n = A398836 n

end A398836

/-! ## A398836.P2858119620846691471

`A101986(n)-A131477(n)`
-/

namespace A398836.P2858119620846691471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A131477 n

end

end A398836.P2858119620846691471

namespace A398836

/-- `A101986(n)-A131477(n)` -/
def P2858119620846691471.Spec : Prop :=
  ∀ n, P2858119620846691471.a n = A398836 n

end A398836

/-! ## A398836.P12529083268242317131

`A222170(n)-A130518(n)`
-/

namespace A398836.P12529083268242317131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222170 n - A130518 n

end

end A398836.P12529083268242317131

namespace A398836

/-- `A222170(n)-A130518(n)` -/
def P12529083268242317131.Spec : Prop :=
  ∀ n, P12529083268242317131.a n = A398836 n

end A398836

/-! ## A398836.P10337780537665062664

`A005475(n)-A389317(n)`
-/

namespace A398836.P10337780537665062664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A389317 n

end

end A398836.P10337780537665062664

namespace A398836

/-- `A005475(n)-A389317(n)` -/
def P10337780537665062664.Spec : Prop :=
  ∀ n, P10337780537665062664.a n = A398836 n

end A398836

/-! ## A398836.P9849422200327767139

`A398202(n)-A001840(n)`
-/

namespace A398836.P9849422200327767139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398202 n - A001840 n

end

end A398836.P9849422200327767139

namespace A398836

/-- `A398202(n)-A001840(n)` -/
def P9849422200327767139.Spec : Prop :=
  ∀ n, P9849422200327767139.a n = A398836 n

end A398836

/-! ## A398836.P15255720104672167327

`A398837(n)-A011655(n)`
-/

namespace A398836.P15255720104672167327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398837 n - A011655 n

end

end A398836.P15255720104672167327

namespace A398836

/-- `A398837(n)-A011655(n)` -/
def P15255720104672167327.Spec : Prop :=
  ∀ n, P15255720104672167327.a n = A398836 n

end A398836

/-! ## A398836.P1755680111580235859

`A016742(n)-A398839(n)`
-/

namespace A398836.P1755680111580235859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A398839 n

end

end A398836.P1755680111580235859

namespace A398836

/-- `A016742(n)-A398839(n)` -/
def P1755680111580235859.Spec : Prop :=
  ∀ n, P1755680111580235859.a n = A398836 n

end A398836

/-! ## A398836.P17232614596966800987

`A398858(n)-A071619(n)`
-/

namespace A398836.P17232614596966800987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398858 n - A071619 n

end

end A398836.P17232614596966800987

namespace A398836

/-- `A398858(n)-A071619(n)` -/
def P17232614596966800987.Spec : Prop :=
  ∀ n, P17232614596966800987.a n = A398836 n

end A398836

/-! ## A398836.P1336310105254959219

`A330451(n)-A398857(n)`
-/

namespace A398836.P1336310105254959219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330451 n - A398857 n

end

end A398836.P1336310105254959219

namespace A398836

/-- `A330451(n)-A398857(n)` -/
def P1336310105254959219.Spec : Prop :=
  ∀ n, P1336310105254959219.a n = A398836 n

end A398836

/-! ## A398836.P4178726786652484762

`A240438(n+1)+A161680(n)`
-/

namespace A398836.P4178726786652484762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240438 (n + 1) + A161680 n

end

end A398836.P4178726786652484762

namespace A398836

/-- `A240438(n+1)+A161680(n)` -/
def P4178726786652484762.Spec : Prop :=
  ∀ n, P4178726786652484762.a n = A398836 n

end A398836

/-!
# A398837: Upper (1, 2/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398837, the canonical program `A398837.P12955740837584096552` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398837 has offset 0).

The definition of A398837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398837.P12955740837584096552

`ceil(n*(9*n+1)/6)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398837

/-- `ceil(n*(9*n+1)/6)` -/
def P12955740837584096552.Spec : Prop :=
  ∀ n, P12955740837584096552.a n = A398837 n

theorem P12955740837584096552.correct : P12955740837584096552.Spec := by
  intro n
  simp only [A398837]

end A398837

/-! ## A398837.P17809243471703366188

`ogf((2x+3x^2+2x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398837.P17809243471703366188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 2, 2] [1, -2, 1, -1, 2, -1] n

end

end A398837.P17809243471703366188

namespace A398837

/-- `ogf((2x+3x^2+2x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P17809243471703366188.Spec : Prop :=
  ∀ n, P17809243471703366188.a n = A398837 n

end A398837

/-! ## A398837.P12481698538823802163

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14, a(4)=25`
-/

namespace A398837.P12481698538823802163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 14, 25] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398837.P12481698538823802163

namespace A398837

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P12481698538823802163.Spec : Prop :=
  ∀ n, P12481698538823802163.a n = A398837 n

end A398837

/-! ## A398837.P16853510122369574568

`∑[a(n-3)+9]` with `a(0)=0, a(1)=2, a(2)=5, a(3)=7`
-/

namespace A398837.P16853510122369574568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 7] fun n f1 =>
  f1 (n - 3) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398837.P16853510122369574568

namespace A398837

/-- `∑[a(n-3)+9]` -/
def P16853510122369574568.Spec : Prop :=
  ∀ n, (P16853510122369574568.a n : ℤ) = A398837 n

end A398837

/-! ## A398837.P6834154645624075158

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A398837.P6834154645624075158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 2, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398837.P6834154645624075158

namespace A398837

/-- `∑[∑[floor(a(n-3))]]` -/
def P6834154645624075158.Spec : Prop :=
  ∀ n, (P6834154645624075158.a n : ℤ) = A398837 n

end A398837

/-! ## A398837.P15041663773026543221

`A389143(n)+n²`
-/

namespace A398837.P15041663773026543221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389143 n + (n ^ 2 : ℤ)

end

end A398837.P15041663773026543221

namespace A398837

/-- `A389143(n)+n²` -/
def P15041663773026543221.Spec : Prop :=
  ∀ n, P15041663773026543221.a n = A398837 n

end A398837

/-! ## A398837.P13631714729447200442

`A397980(n)+A008810(n)`
-/

namespace A398837.P13631714729447200442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n + A008810 n

end

end A398837.P13631714729447200442

namespace A398837

/-- `A397980(n)+A008810(n)` -/
def P13631714729447200442.Spec : Prop :=
  ∀ n, P13631714729447200442.a n = A398837 n

end A398837

/-! ## A398837.P11389821599626475889

`A398836(n)+A011655(n)`
-/

namespace A398837.P11389821599626475889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398836 n + A011655 n

end

end A398837.P11389821599626475889

namespace A398837

/-- `A398836(n)+A011655(n)` -/
def P11389821599626475889.Spec : Prop :=
  ∀ n, P11389821599626475889.a n = A398837 n

end A398837

/-! ## A398837.P4025532858099094165

`A005449(n)-A002264(n)`
-/

namespace A398837.P4025532858099094165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A002264 n

end

end A398837.P4025532858099094165

namespace A398837

/-- `A005449(n)-A002264(n)` -/
def P4025532858099094165.Spec : Prop :=
  ∀ n, P4025532858099094165.a n = A398837 n

end A398837

/-! ## A398837.P15550580525318339918

`A045943(n)-A004773(n)`
-/

namespace A398837.P15550580525318339918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n - A004773 n

end

end A398837.P15550580525318339918

namespace A398837

/-- `A045943(n)-A004773(n)` -/
def P15550580525318339918.Spec : Prop :=
  ∀ n, P15550580525318339918.a n = A398837 n

end A398837

/-! ## A398837.P3905610296617478230

`A104249(n)-A008620(n)`
-/

namespace A398837.P3905610296617478230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n - A008620 n

end

end A398837.P3905610296617478230

namespace A398837

/-- `A104249(n)-A008620(n)` -/
def P3905610296617478230.Spec : Prop :=
  ∀ n, P3905610296617478230.a n = A398837 n

end A398837

/-! ## A398837.P4292883257840905059

`A001105(n)-A171452(n)`
-/

namespace A398837.P4292883257840905059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A171452 n

end

end A398837.P4292883257840905059

namespace A398837

/-- `A001105(n)-A171452(n)` -/
def P4292883257840905059.Spec : Prop :=
  ∀ n, P4292883257840905059.a n = A398837 n

end A398837

/-! ## A398837.P14461116664359334195

`A101986(n)-A131476(n)`
-/

namespace A398837.P14461116664359334195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A131476 n

end

end A398837.P14461116664359334195

namespace A398837

/-- `A101986(n)-A131476(n)` -/
def P14461116664359334195.Spec : Prop :=
  ∀ n, P14461116664359334195.a n = A398837 n

end A398837

/-! ## A398837.P15550287896328335779

`A113422(n)-A130518(n)`
-/

namespace A398837.P15550287896328335779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113422 n - A130518 n

end

end A398837.P15550287896328335779

namespace A398837

/-- `A113422(n)-A130518(n)` -/
def P15550287896328335779.Spec : Prop :=
  ∀ n, P15550287896328335779.a n = A398837 n

end A398837

/-! ## A398837.P8122887822897636574

`A022264(n)-A264938(n)`
-/

namespace A398837.P8122887822897636574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - A264938 n

end

end A398837.P8122887822897636574

namespace A398837

/-- `A022264(n)-A264938(n)` -/
def P8122887822897636574.Spec : Prop :=
  ∀ n, P8122887822897636574.a n = A398837 n

end A398837

/-! ## A398837.P2074827521828953681

`A005475(n)-A389316(n)`
-/

namespace A398837.P2074827521828953681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A389316 n

end

end A398837.P2074827521828953681

namespace A398837

/-- `A005475(n)-A389316(n)` -/
def P2074827521828953681.Spec : Prop :=
  ∀ n, P2074827521828953681.a n = A398837 n

end A398837

/-! ## A398837.P16709332435089601822

`A016742(n)-A398838(n)`
-/

namespace A398837.P16709332435089601822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A398838 n

end

end A398837.P16709332435089601822

namespace A398837

/-- `A016742(n)-A398838(n)` -/
def P16709332435089601822.Spec : Prop :=
  ∀ n, P16709332435089601822.a n = A398837 n

end A398837

/-! ## A398837.P9919036937731975480

`A032528(n)+A011960(n+1)`
-/

namespace A398837.P9919036937731975480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + A011960 (n + 1)

end

end A398837.P9919036937731975480

namespace A398837

/-- `A032528(n)+A011960(n+1)` -/
def P9919036937731975480.Spec : Prop :=
  ∀ n, P9919036937731975480.a n = A398837 n

end A398837

/-! ## A398837.P2921740756931648601

`A238410(n+1)+A008615(n)`
-/

namespace A398837.P2921740756931648601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 1) + A008615 n

end

end A398837.P2921740756931648601

namespace A398837

/-- `A238410(n+1)+A008615(n)` -/
def P2921740756931648601.Spec : Prop :=
  ∀ n, P2921740756931648601.a n = A398837 n

end A398837

/-! ## A398837.P1965388777607208579

`A322042(n+1)+A000326(n)`
-/

namespace A398837.P1965388777607208579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (n + 1) + A000326 n

end

end A398837.P1965388777607208579

namespace A398837

/-- `A322042(n+1)+A000326(n)` -/
def P1965388777607208579.Spec : Prop :=
  ∀ n, P1965388777607208579.a n = A398837 n

end A398837

/-!
# A398838: Lower (1, 4/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398838, the canonical program `A398838.P10276710094283728770` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398838 has offset 0).

The definition of A398838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398838.P10276710094283728770

`ogf((2x+5x^2+6x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398838

/-- `ogf((2x+5x^2+6x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P10276710094283728770.Spec : Prop :=
  ∀ n, P10276710094283728770.a n = A398838 n

theorem P10276710094283728770.correct : P10276710094283728770.Spec := by
  intro n
  simp only [A398838]

end A398838

/-! ## A398838.P2835240681429172517

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=22, a(4)=39`
-/

namespace A398838.P2835240681429172517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 9, 22, 39] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398838.P2835240681429172517

namespace A398838

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P2835240681429172517.Spec : Prop :=
  ∀ n, P2835240681429172517.a n = A398838 n

end A398838

/-! ## A398838.P16163599620081382710

`floor((C(15*n, 2)+7)/45)`
-/

namespace A398838.P16163599620081382710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (15 * n) 2 + 7 : ℚ) / 45⌋

end

end A398838.P16163599620081382710

namespace A398838

/-- `floor((C(15*n, 2)+7)/45)` -/
def P16163599620081382710.Spec : Prop :=
  ∀ n, P16163599620081382710.a n = A398838 n

end A398838

/-! ## A398838.P8111368011932406118

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=5, a(3)=6, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A398838.P8111368011932406118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 6, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398838.P8111368011932406118

namespace A398838

/-- `∑[∑[floor(a(n-3))]]` -/
def P8111368011932406118.Spec : Prop :=
  ∀ n, (P8111368011932406118.a n : ℤ) = A398838 n

end A398838

/-! ## A398838.P209282517604908211

`floor(n/3)-(∑[n]-3*n²)`
-/

namespace A398838.P209282517604908211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (3 * n ^ 2 : ℤ))

end

end A398838.P209282517604908211

namespace A398838

/-- `floor(n/3)-(∑[n]-3*n²)` -/
def P209282517604908211.Spec : Prop :=
  ∀ n, P209282517604908211.a n = A398838 n

end A398838

/-! ## A398838.P3982872047875812897

`floor(A398855(3*n)/6)`
-/

namespace A398838.P3982872047875812897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A398855 (3 * n) : ℚ) / 6⌋

end

end A398838.P3982872047875812897

namespace A398838

/-- `floor(A398855(3*n)/6)` -/
def P3982872047875812897.Spec : Prop :=
  ∀ n, P3982872047875812897.a n = A398838 n

end A398838

/-!
# A398839: Upper (1, 4/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398839, the canonical program `A398839.P16974092594332849696` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398839 has offset 0).

The definition of A398839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398839.P16974092594332849696

`ceil(n*(15*n-1)/6)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398839

/-- `ceil(n*(15*n-1)/6)` -/
def P16974092594332849696.Spec : Prop :=
  ∀ n, P16974092594332849696.a n = A398839 n

theorem P16974092594332849696.correct : P16974092594332849696.Spec := by
  intro n
  simp only [A398839]

end A398839

/-! ## A398839.P16529438780920581460

`ogf((3x+4x^2+5x^3+3x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398839.P16529438780920581460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4, 5, 3] [1, -2, 1, -1, 2, -1] n

end

end A398839.P16529438780920581460

namespace A398839

/-- `ogf((3x+4x^2+5x^3+3x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P16529438780920581460.Spec : Prop :=
  ∀ n, P16529438780920581460.a n = A398839 n

end A398839

/-! ## A398839.P15283372822740927816

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=10, a(3)=22, a(4)=40`
-/

namespace A398839.P15283372822740927816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 10, 22, 40] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398839.P15283372822740927816

namespace A398839

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P15283372822740927816.Spec : Prop :=
  ∀ n, P15283372822740927816.a n = A398839 n

end A398839

/-! ## A398839.P5539449213074770239

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A398839.P5539449213074770239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5, 6] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398839.P5539449213074770239

namespace A398839

/-- `∑[∑[floor(a(n-3))]]` -/
def P5539449213074770239.Spec : Prop :=
  ∀ n, (P5539449213074770239.a n : ℤ) = A398839 n

end A398839

/-! ## A398839.P3435453357768742213

`ceil((3*n²+n)/3)+C(n, 2)+n²`
-/

namespace A398839.P3435453357768742213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n ^ 2 + n : ℚ) / 3⌉ + (Nat.choose n 2 + n ^ 2 : ℤ)

end

end A398839.P3435453357768742213

namespace A398839

/-- `ceil((3*n²+n)/3)+C(n, 2)+n²` -/
def P3435453357768742213.Spec : Prop :=
  ∀ n, P3435453357768742213.a n = A398839 n

end A398839

/-! ## A398839.P12787983375237477403

`(2*n)²-A398836(n)`
-/

namespace A398839.P12787983375237477403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A398836 n

end

end A398839.P12787983375237477403

namespace A398839

/-- `(2*n)²-A398836(n)` -/
def P12787983375237477403.Spec : Prop :=
  ∀ n, P12787983375237477403.a n = A398839 n

end A398839

/-! ## A398839.P8616428140191000776

`A000566(n)+comp[4*n+1]`
-/

namespace A398839.P8616428140191000776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A398839.P8616428140191000776

namespace A398839

/-- `A000566(n)+comp[4*n+1]` -/
def P8616428140191000776.Spec : Prop :=
  ∀ n, P8616428140191000776.a n = A398839 n

end A398839

/-! ## A398839.P136944345041844892

`A389317(n)+A000326(n)`
-/

namespace A398839.P136944345041844892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389317 n + A000326 n

end

end A398839.P136944345041844892

namespace A398839

/-- `A389317(n)+A000326(n)` -/
def P136944345041844892.Spec : Prop :=
  ∀ n, P136944345041844892.a n = A398839 n

end A398839

/-! ## A398839.P13988650596865871864

`A398838(n)+A011655(n)`
-/

namespace A398839.P13988650596865871864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398838 n + A011655 n

end

end A398839.P13988650596865871864

namespace A398839

/-- `A398838(n)+A011655(n)` -/
def P13988650596865871864.Spec : Prop :=
  ∀ n, P13988650596865871864.a n = A398839 n

end A398839

/-! ## A398839.P8005298733485911760

`A398857(n)+A071619(n)`
-/

namespace A398839.P8005298733485911760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398857 n + A071619 n

end

end A398839.P8005298733485911760

namespace A398839

/-- `A398857(n)+A071619(n)` -/
def P8005298733485911760.Spec : Prop :=
  ∀ n, P8005298733485911760.a n = A398839 n

end A398839

/-! ## A398839.P14818777217310012198

`A398205(n)+A113422(n)`
-/

namespace A398839.P14818777217310012198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398205 n + A113422 n

end

end A398839.P14818777217310012198

namespace A398839

/-- `A398205(n)+A113422(n)` -/
def P14818777217310012198.Spec : Prop :=
  ∀ n, P14818777217310012198.a n = A398839 n

end A398839

/-! ## A398839.P13553120021514268727

`A005475(n)-A004523(n)`
-/

namespace A398839.P13553120021514268727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A004523 n

end

end A398839.P13553120021514268727

namespace A398839

/-- `A005475(n)-A004523(n)` -/
def P13553120021514268727.Spec : Prop :=
  ∀ n, P13553120021514268727.a n = A398839 n

end A398839

/-! ## A398839.P6158779788077887324

`A033428(n)-A389142(n)`
-/

namespace A398839.P6158779788077887324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A389142 n

end

end A398839.P6158779788077887324

namespace A398839

/-- `A033428(n)-A389142(n)` -/
def P6158779788077887324.Spec : Prop :=
  ∀ n, P6158779788077887324.a n = A398839 n

end A398839

/-! ## A398839.P7876654554940440633

`A004772(n+1)+A000566(n)`
-/

namespace A398839.P7876654554940440633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1) + A000566 n

end

end A398839.P7876654554940440633

namespace A398839

/-- `A004772(n+1)+A000566(n)` -/
def P7876654554940440633.Spec : Prop :=
  ∀ n, P7876654554940440633.a n = A398839 n

end A398839

/-! ## A398839.P15971763651286413118

`A005891(n)-A047400(n+1)`
-/

namespace A398839.P15971763651286413118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n - A047400 (n + 1)

end

end A398839.P15971763651286413118

namespace A398839

/-- `A005891(n)-A047400(n+1)` -/
def P15971763651286413118.Spec : Prop :=
  ∀ n, P15971763651286413118.a n = A398839 n

end A398839

/-! ## A398839.P5727953182689267904

`A028895(n)-A047618(n+1)`
-/

namespace A398839.P5727953182689267904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n - A047618 (n + 1)

end

end A398839.P5727953182689267904

namespace A398839

/-- `A028895(n)-A047618(n+1)` -/
def P5727953182689267904.Spec : Prop :=
  ∀ n, P5727953182689267904.a n = A398839 n

end A398839

/-! ## A398839.P14615012842934406519

`A147875(n)-A047220(n+1)`
-/

namespace A398839.P14615012842934406519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - A047220 (n + 1)

end

end A398839.P14615012842934406519

namespace A398839

/-- `A147875(n)-A047220(n+1)` -/
def P14615012842934406519.Spec : Prop :=
  ∀ n, P14615012842934406519.a n = A398839 n

end A398839

/-! ## A398839.P1393072096389387915

`A121509(n+1)-A103221(n)`
-/

namespace A398839.P1393072096389387915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 (n + 1) - A103221 n

end

end A398839.P1393072096389387915

namespace A398839

/-- `A121509(n+1)-A103221(n)` -/
def P1393072096389387915.Spec : Prop :=
  ∀ n, P1393072096389387915.a n = A398839 n

end A398839

/-! ## A398839.P13493614518000133742

`A022265(n)-A240438(n+1)`
-/

namespace A398839.P13493614518000133742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - A240438 (n + 1)

end

end A398839.P13493614518000133742

namespace A398839

/-- `A022265(n)-A240438(n+1)` -/
def P13493614518000133742.Spec : Prop :=
  ∀ n, P13493614518000133742.a n = A398839 n

end A398839

/-! ## A398839.P8972723979011173457

`A389615(n)-A331943(n+1)`
-/

namespace A398839.P8972723979011173457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n - A331943 (n + 1)

end

end A398839.P8972723979011173457

namespace A398839

/-- `A389615(n)-A331943(n+1)` -/
def P8972723979011173457.Spec : Prop :=
  ∀ n, P8972723979011173457.a n = A398839 n

end A398839

/-!
# A398840: Lower (1, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398840, the canonical program `A398840.P593991936963180517` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398840 has offset 0).

The definition of A398840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398840.P593991936963180517

`floor(n*(11*n-1)/4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398840

/-- `floor(n*(11*n-1)/4)` -/
def P593991936963180517.Spec : Prop :=
  ∀ n, P593991936963180517.a n = A398840 n

theorem P593991936963180517.correct : P593991936963180517.Spec := by
  intro n
  simp only [A398840]

end A398840

/-! ## A398840.P12962492531715632257

`ogf((2x+4x^2+2x^3+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398840.P12962492531715632257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, 2, 3] [1, -3, 4, -4, 3, -1] n

end

end A398840.P12962492531715632257

namespace A398840

/-- `ogf((2x+4x^2+2x^3+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P12962492531715632257.Spec : Prop :=
  ∀ n, P12962492531715632257.a n = A398840 n

end A398840

/-! ## A398840.P16778486103130317104

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=10, a(3)=24, a(4)=43`
-/

namespace A398840.P16778486103130317104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 10, 24, 43] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A398840.P16778486103130317104

namespace A398840

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P16778486103130317104.Spec : Prop :=
  ∀ n, P16778486103130317104.a n = A398840 n

end A398840

/-! ## A398840.P11643799400019275652

`A398852(n)+n²`
-/

namespace A398840.P11643799400019275652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398852 n + (n ^ 2 : ℤ)

end

end A398840.P11643799400019275652

namespace A398840

/-- `A398852(n)+n²` -/
def P11643799400019275652.Spec : Prop :=
  ∀ n, P11643799400019275652.a n = A398840 n

end A398840

/-! ## A398840.P4338666992738370614

`floor(A226492(n)/2)+n`
-/

namespace A398840.P4338666992738370614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226492 n : ℚ) / 2⌋ + (n : ℤ)

end

end A398840.P4338666992738370614

namespace A398840

/-- `floor(A226492(n)/2)+n` -/
def P4338666992738370614.Spec : Prop :=
  ∀ n, P4338666992738370614.a n = A398840 n

end A398840

/-! ## A398840.P292307643394991724

`A231559(n)+A001105(n)`
-/

namespace A398840.P292307643394991724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + A001105 n

end

end A398840.P292307643394991724

namespace A398840

/-- `A231559(n)+A001105(n)` -/
def P292307643394991724.Spec : Prop :=
  ∀ n, P292307643394991724.a n = A398840 n

end A398840

/-! ## A398840.P2360455997056766179

`A281026(n)+A000384(n)`
-/

namespace A398840.P2360455997056766179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + A000384 n

end

end A398840.P2360455997056766179

namespace A398840

/-- `A281026(n)+A000384(n)` -/
def P2360455997056766179.Spec : Prop :=
  ∀ n, P2360455997056766179.a n = A398840 n

end A398840

/-! ## A398840.P1663157441866655868

`A397978(n)+A000326(n)`
-/

namespace A398840.P1663157441866655868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n + A000326 n

end

end A398840.P1663157441866655868

namespace A398840

/-- `A397978(n)+A000326(n)` -/
def P1663157441866655868.Spec : Prop :=
  ∀ n, P1663157441866655868.a n = A398840 n

end A398840

/-! ## A398840.P721555924046043874

`A398842(n)+A045943(n)`
-/

namespace A398840.P721555924046043874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398842 n + A045943 n

end

end A398840.P721555924046043874

namespace A398840

/-- `A398842(n)+A045943(n)` -/
def P721555924046043874.Spec : Prop :=
  ∀ n, P721555924046043874.a n = A398840 n

end A398840

/-! ## A398840.P13820223886090026635

`A398860(n)+A161680(n)`
-/

namespace A398840.P13820223886090026635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398860 n + A161680 n

end

end A398840.P13820223886090026635

namespace A398840

/-- `A398860(n)+A161680(n)` -/
def P13820223886090026635.Spec : Prop :=
  ∀ n, P13820223886090026635.a n = A398840 n

end A398840

/-! ## A398840.P872067605860432841

`A398843(n)+A268810(n)`
-/

namespace A398840.P872067605860432841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398843 n + A268810 n

end

end A398840.P872067605860432841

namespace A398840

/-- `A398843(n)+A268810(n)` -/
def P872067605860432841.Spec : Prop :=
  ∀ n, P872067605860432841.a n = A398840 n

end A398840

/-! ## A398840.P7038654481005136167

`A398857(n)+A398846(n)`
-/

namespace A398840.P7038654481005136167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398857 n + A398846 n

end

end A398840.P7038654481005136167

namespace A398840

/-- `A398857(n)+A398846(n)` -/
def P7038654481005136167.Spec : Prop :=
  ∀ n, P7038654481005136167.a n = A398840 n

end A398840

/-! ## A398840.P732651438381689085

`A301711(n)-A016777(n)`
-/

namespace A398840.P732651438381689085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301711 n - A016777 n

end

end A398840.P732651438381689085

namespace A398840

/-- `A301711(n)-A016777(n)` -/
def P732651438381689085.Spec : Prop :=
  ∀ n, P732651438381689085.a n = A398840 n

end A398840

/-! ## A398840.P15125041225145618849

`A022264(n)-A340648(n)`
-/

namespace A398840.P15125041225145618849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - A340648 n

end

end A398840.P15125041225145618849

namespace A398840

/-- `A022264(n)-A340648(n)` -/
def P15125041225145618849.Spec : Prop :=
  ∀ n, P15125041225145618849.a n = A398840 n

end A398840

/-! ## A398840.P12072916750304533753

`A002939(n)-A398843(n)`
-/

namespace A398840.P12072916750304533753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n - A398843 n

end

end A398840.P12072916750304533753

namespace A398840

/-- `A002939(n)-A398843(n)` -/
def P12072916750304533753.Spec : Prop :=
  ∀ n, P12072916750304533753.a n = A398840 n

end A398840

/-! ## A398840.P7091914147307446752

`A016742(n)-A397979(n)`
-/

namespace A398840.P7091914147307446752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A397979 n

end

end A398840.P7091914147307446752

namespace A398840

/-- `A016742(n)-A397979(n)` -/
def P7091914147307446752.Spec : Prop :=
  ∀ n, P7091914147307446752.a n = A398840 n

end A398840

/-! ## A398840.P630296270343554401

`A022267(n)-A397985(n)`
-/

namespace A398840.P630296270343554401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n - A397985 n

end

end A398840.P630296270343554401

namespace A398840

/-- `A022267(n)-A397985(n)` -/
def P630296270343554401.Spec : Prop :=
  ∀ n, P630296270343554401.a n = A398840 n

end A398840

/-! ## A398840.P6658982245758218897

`A022268(n)-A398841(n)`
-/

namespace A398840.P6658982245758218897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n - A398841 n

end

end A398840.P6658982245758218897

namespace A398840

/-- `A022268(n)-A398841(n)` -/
def P6658982245758218897.Spec : Prop :=
  ∀ n, P6658982245758218897.a n = A398840 n

end A398840

/-! ## A398840.P9217891341144106802

`A022266(n)-A398853(n)`
-/

namespace A398840.P9217891341144106802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n - A398853 n

end

end A398840.P9217891341144106802

namespace A398840

/-- `A022266(n)-A398853(n)` -/
def P9217891341144106802.Spec : Prop :=
  ∀ n, P9217891341144106802.a n = A398840 n

end A398840

/-! ## A398840.P513905416303122028

`A033429(n)-A398861(n)`
-/

namespace A398840.P513905416303122028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n - A398861 n

end

end A398840.P513905416303122028

namespace A398840

/-- `A033429(n)-A398861(n)` -/
def P513905416303122028.Spec : Prop :=
  ∀ n, P513905416303122028.a n = A398840 n

end A398840

/-!
# A398841: Upper (1, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398841, the canonical program `A398841.P13552911479898040379` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398841 has offset 0).

The definition of A398841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398841.P13552911479898040379

`ogf((3x+2x^2+3x^3+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398841

/-- `ogf((3x+2x^2+3x^3+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P13552911479898040379.Spec : Prop :=
  ∀ n, P13552911479898040379.a n = A398841 n

theorem P13552911479898040379.correct : P13552911479898040379.Spec := by
  intro n
  simp only [A398841]

end A398841

/-! ## A398841.P2683221377846047080

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=11, a(3)=24, a(4)=43`
-/

namespace A398841.P2683221377846047080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 11, 24, 43] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A398841.P2683221377846047080

namespace A398841

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P2683221377846047080.Spec : Prop :=
  ∀ n, P2683221377846047080.a n = A398841 n

end A398841

/-! ## A398841.P11005314134492376877

`ceil((11*n-1)*n/4)`
-/

namespace A398841.P11005314134492376877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((11 * n : ℤ) - 1) * (n : ℤ) : ℚ) / 4⌉

end

end A398841.P11005314134492376877

namespace A398841

/-- `ceil((11*n-1)*n/4)` -/
def P11005314134492376877.Spec : Prop :=
  ∀ n, P11005314134492376877.a n = A398841 n

end A398841

/-! ## A398841.P13787421343526911549

`round(∑[11+a(n-1)]/2)` with `a(0)=0, a(1)=5`
-/

namespace A398841.P13787421343526911549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  11 + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A398841.P13787421343526911549

namespace A398841

/-- `round(∑[11+a(n-1)]/2)` -/
def P13787421343526911549.Spec : Prop :=
  ∀ n, P13787421343526911549.a n = A398841 n

end A398841

/-! ## A398841.P3947329487123198121

`floor(∑[11+a(n-1)]/2+n)` with `a(0)=1, a(1)=3`
-/

namespace A398841.P3947329487123198121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  11 + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 + (n : ℚ)⌋

end

end A398841.P3947329487123198121

namespace A398841

/-- `floor(∑[11+a(n-1)]/2+n)` -/
def P3947329487123198121.Spec : Prop :=
  ∀ n, P3947329487123198121.a n = A398841 n

end A398841

/-! ## A398841.P12341299025962008233

`abs(floor(n*(3*n-1)/4)-C(7*n, 2)/7)`
-/

namespace A398841.P12341299025962008233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(⌊((n : ℤ) * ((3 * n : ℤ) - 1) : ℚ) / 4⌋ : ℚ) - (Nat.choose (7 * n) 2 : ℚ) / 7|

end

end A398841.P12341299025962008233

namespace A398841

/-- `abs(floor(n*(3*n-1)/4)-C(7*n, 2)/7)` -/
def P12341299025962008233.Spec : Prop :=
  ∀ n, P12341299025962008233.a n = (A398841 n : ℚ)

end A398841

/-! ## A398841.P6068516206363794131

`floor(C(7*n, 2)/7-floor(n*(3*n-1)/4))`
-/

namespace A398841.P6068516206363794131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (7 * n) 2 : ℚ) / 7 - (⌊((n : ℤ) * ((3 * n : ℤ) - 1) : ℚ) / 4⌋ : ℚ)⌋

end

end A398841.P6068516206363794131

namespace A398841

/-- `floor(C(7*n, 2)/7-floor(n*(3*n-1)/4))` -/
def P6068516206363794131.Spec : Prop :=
  ∀ n, P6068516206363794131.a n = A398841 n

end A398841

/-! ## A398841.P11378220369007148574

`A398853(n)+n²`
-/

namespace A398841.P11378220369007148574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398853 n + (n ^ 2 : ℤ)

end

end A398841.P11378220369007148574

namespace A398841

/-- `A398853(n)+n²` -/
def P11378220369007148574.Spec : Prop :=
  ∀ n, P11378220369007148574.a n = A398841 n

end A398841

/-! ## A398841.P3120661840116567524

`A054925(3*n)+∑[n]`
-/

namespace A398841.P3120661840116567524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (3 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398841.P3120661840116567524

namespace A398841

/-- `A054925(3*n)+∑[n]` -/
def P3120661840116567524.Spec : Prop :=
  ∀ n, P3120661840116567524.a n = A398841 n

end A398841

/-! ## A398841.P13386203302113657658

`A022264(n)-A004526(A000326(n))`
-/

namespace A398841.P13386203302113657658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - A004526 (A000326 n).toNat

end

end A398841.P13386203302113657658

namespace A398841

/-- `A022264(n)-A004526(A000326(n))` -/
def P13386203302113657658.Spec : Prop :=
  ∀ n, P13386203302113657658.a n = A398841 n

end A398841

/-!
# A398842: Lower (-2, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398842, the canonical program `A398842.P947199534998649314` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398842 has offset 0).

The definition of A398842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398842.P947199534998649314

`floor(n*(5*n-7)/4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398842

/-- `floor(n*(5*n-7)/4)` -/
def P947199534998649314.Spec : Prop :=
  ∀ n, P947199534998649314.a n = A398842 n

theorem P947199534998649314.correct : P947199534998649314.Spec := by
  intro n
  simp only [A398842]

end A398842

/-! ## A398842.P17177337555829397133

`ogf((-x+4x^2-x^3+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398842.P17177337555829397133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 4, -1, 3] [1, -3, 4, -4, 3, -1] n

end

end A398842.P17177337555829397133

namespace A398842

/-- `ogf((-x+4x^2-x^3+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P17177337555829397133.Spec : Prop :=
  ∀ n, P17177337555829397133.a n = A398842 n

end A398842

/-! ## A398842.P7662134860306869434

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=6, a(4)=13`
-/

namespace A398842.P7662134860306869434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 6, 13] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A398842.P7662134860306869434

namespace A398842

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P7662134860306869434.Spec : Prop :=
  ∀ n, P7662134860306869434.a n = A398842 n

end A398842

/-! ## A398842.P12869990653279125001

`∑[∑[char[or(2, n)]]]+n*(n-2)`
-/

namespace A398842.P12869990653279125001
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * ((n : ℤ) - 2)

end

end A398842.P12869990653279125001

namespace A398842

/-- `∑[∑[char[or(2, n)]]]+n*(n-2)` -/
def P12869990653279125001.Spec : Prop :=
  ∀ n, P12869990653279125001.a n = A398842 n

end A398842

/-! ## A398842.P7306230190435554488

`A397978(n)-2*n`
-/

namespace A398842.P7306230190435554488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n - (2 * n : ℤ)

end

end A398842.P7306230190435554488

namespace A398842

/-- `A397978(n)-2*n` -/
def P7306230190435554488.Spec : Prop :=
  ∀ n, P7306230190435554488.a n = A398842 n

end A398842

/-! ## A398842.P15785190551583065042

`A332495(n)-3*n`
-/

namespace A398842.P15785190551583065042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332495 n - (3 * n : ℤ)

end

end A398842.P15785190551583065042

namespace A398842

/-- `A332495(n)-3*n` -/
def P15785190551583065042.Spec : Prop :=
  ∀ n, P15785190551583065042.a n = A398842 n

end A398842

/-! ## A398842.P17924822051590466699

`A000566(n)-A397979(n)`
-/

namespace A398842.P17924822051590466699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n - A397979 n

end

end A398842.P17924822051590466699

namespace A398842

/-- `A000566(n)-A397979(n)` -/
def P17924822051590466699.Spec : Prop :=
  ∀ n, P17924822051590466699.a n = A398842 n

end A398842

/-! ## A398842.P9153609589370452010

`A398852(n)-A000096(n)`
-/

namespace A398842.P9153609589370452010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398852 n - A000096 n

end

end A398842.P9153609589370452010

namespace A398842

/-- `A398852(n)-A000096(n)` -/
def P9153609589370452010.Spec : Prop :=
  ∀ n, P9153609589370452010.a n = A398842 n

end A398842

/-! ## A398842.P11727608558511973821

`A000567(n)-A398853(n)`
-/

namespace A398842.P11727608558511973821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n - A398853 n

end

end A398842.P11727608558511973821

namespace A398842

/-- `A000567(n)-A398853(n)` -/
def P11727608558511973821.Spec : Prop :=
  ∀ n, P11727608558511973821.a n = A398842 n

end A398842

/-! ## A398842.P4973144622040393898

`A002939(n)-A398841(n)`
-/

namespace A398842.P4973144622040393898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n - A398841 n

end

end A398842.P4973144622040393898

namespace A398842

/-- `A002939(n)-A398841(n)` -/
def P4973144622040393898.Spec : Prop :=
  ∀ n, P4973144622040393898.a n = A398842 n

end A398842

/-! ## A398842.P17309775825807781961

`A398860(n)-A005563(n)`
-/

namespace A398842.P17309775825807781961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398860 n - A005563 n

end

end A398842.P17309775825807781961

namespace A398842

/-- `A398860(n)-A005563(n)` -/
def P17309775825807781961.Spec : Prop :=
  ∀ n, P17309775825807781961.a n = A398842 n

end A398842

/-! ## A398842.P9817651089501238814

`A398840(n)-A045943(n)`
-/

namespace A398842.P9817651089501238814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398840 n - A045943 n

end

end A398842.P9817651089501238814

namespace A398842

/-- `A398840(n)-A045943(n)` -/
def P9817651089501238814.Spec : Prop :=
  ∀ n, P9817651089501238814.a n = A398842 n

end A398842

/-! ## A398842.P2773691369569625040

`A049450(n)-A397985(n)`
-/

namespace A398842.P2773691369569625040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n - A397985 n

end

end A398842.P2773691369569625040

namespace A398842

/-- `A049450(n)-A397985(n)` -/
def P2773691369569625040.Spec : Prop :=
  ∀ n, P2773691369569625040.a n = A398842 n

end A398842

/-! ## A398842.P5553969422464077115

`A397984(n)-A055998(n)`
-/

namespace A398842.P5553969422464077115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397984 n - A055998 n

end

end A398842.P5553969422464077115

namespace A398842

/-- `A397984(n)-A055998(n)` -/
def P5553969422464077115.Spec : Prop :=
  ∀ n, P5553969422464077115.a n = A398842 n

end A398842

/-! ## A398842.P16177609588988803858

`A064043(n)-A398728(n)`
-/

namespace A398842.P16177609588988803858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064043 n - A398728 n

end

end A398842.P16177609588988803858

namespace A398842

/-- `A064043(n)-A398728(n)` -/
def P16177609588988803858.Spec : Prop :=
  ∀ n, P16177609588988803858.a n = A398842 n

end A398842

/-! ## A398842.P17221307294372841713

`A218471(n)-A398861(n)`
-/

namespace A398842.P17221307294372841713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n - A398861 n

end

end A398842.P17221307294372841713

namespace A398842

/-- `A218471(n)-A398861(n)` -/
def P17221307294372841713.Spec : Prop :=
  ∀ n, P17221307294372841713.a n = A398842 n

end A398842

/-! ## A398842.P16338701075270557764

`A326725(n)-A398843(n)`
-/

namespace A398842.P16338701075270557764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n - A398843 n

end

end A398842.P16338701075270557764

namespace A398842

/-- `A326725(n)-A398843(n)` -/
def P16338701075270557764.Spec : Prop :=
  ∀ n, P16338701075270557764.a n = A398842 n

end A398842

/-! ## A398842.P847064511278147834

`A001105(n)-A024219(n+1)`
-/

namespace A398842.P847064511278147834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A024219 (n + 1)

end

end A398842.P847064511278147834

namespace A398842

/-- `A001105(n)-A024219(n+1)` -/
def P847064511278147834.Spec : Prop :=
  ∀ n, P847064511278147834.a n = A398842 n

end A398842

/-! ## A398842.P15198479454722295618

`A032527(n)-A047379(n+1)`
-/

namespace A398842.P15198479454722295618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 n - A047379 (n + 1)

end

end A398842.P15198479454722295618

namespace A398842

/-- `A032527(n)-A047379(n+1)` -/
def P15198479454722295618.Spec : Prop :=
  ∀ n, P15198479454722295618.a n = A398842 n

end A398842

/-! ## A398842.P15295191999415205677

`A054567(n+1)-A301709(n)`
-/

namespace A398842.P15295191999415205677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1) - A301709 n

end

end A398842.P15295191999415205677

namespace A398842

/-- `A054567(n+1)-A301709(n)` -/
def P15295191999415205677.Spec : Prop :=
  ∀ n, P15295191999415205677.a n = A398842 n

end A398842

/-!
# A398843: Upper (-2, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398843, the canonical program `A398843.P9440608218935463149` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398843 has offset 0).

The definition of A398843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398843.P9440608218935463149

`ogf((2x^2+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398843

/-- `ogf((2x^2+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P9440608218935463149.Spec : Prop :=
  ∀ n, P9440608218935463149.a n = A398843 n

theorem P9440608218935463149.correct : P9440608218935463149.Spec := by
  intro n
  simp only [A398843]

end A398843

/-! ## A398843.P15164968061198681631

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6, a(4)=13`
-/

namespace A398843.P15164968061198681631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 6, 13] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A398843.P15164968061198681631

namespace A398843

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P15164968061198681631.Spec : Prop :=
  ∀ n, P15164968061198681631.a n = A398843 n

end A398843

/-! ## A398843.P7825381409741835014

`ceil((5*C(n, 2)-n)/2)`
-/

namespace A398843.P7825381409741835014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((5 * Nat.choose n 2 : ℤ) - (n : ℤ) : ℚ) / 2⌉

end

end A398843.P7825381409741835014

namespace A398843

/-- `ceil((5*C(n, 2)-n)/2)` -/
def P7825381409741835014.Spec : Prop :=
  ∀ n, P7825381409741835014.a n = A398843 n

end A398843

/-! ## A398843.P13060021947612169147

`∑[∑[col(a(n-2))+2]]` with `a(0)=0, a(1)=0`
-/

namespace A398843.P13060021947612169147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  SequenceMachineLib.triCol (f2 (n - 2)) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398843.P13060021947612169147

namespace A398843

/-- `∑[∑[col(a(n-2))+2]]` -/
def P13060021947612169147.Spec : Prop :=
  ∀ n, (P13060021947612169147.a n : ℤ) = A398843 n

end A398843

/-! ## A398843.P9889812184709280526

`∑[∑[5-a(n-2)]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A398843.P9889812184709280526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 2] fun n f2 =>
  5 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398843.P9889812184709280526

namespace A398843

/-- `∑[∑[5-a(n-2)]]` -/
def P9889812184709280526.Spec : Prop :=
  ∀ n, P9889812184709280526.a n = A398843 n

end A398843

/-! ## A398843.P18349725516897840416

`floor(((n+2)/4+n-1)*(n-1))`
-/

namespace A398843.P18349725516897840416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2 : ℚ) / 4 + ((n : ℤ) - 1 : ℚ)) * ((n : ℤ) - 1 : ℚ)⌋

end

end A398843.P18349725516897840416

namespace A398843

/-- `floor(((n+2)/4+n-1)*(n-1))` -/
def P18349725516897840416.Spec : Prop :=
  ∀ n, P18349725516897840416.a n = A398843 n

end A398843

/-! ## A398843.P4011018163464088326

`ceil(A326725(n)/2)`
-/

namespace A398843.P4011018163464088326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326725 n : ℚ) / 2⌉

end

end A398843.P4011018163464088326

namespace A398843

/-- `ceil(A326725(n)/2)` -/
def P4011018163464088326.Spec : Prop :=
  ∀ n, P4011018163464088326.a n = A398843 n

end A398843

/-! ## A398843.P9330548546479123555

`A397979(n)-2*n`
-/

namespace A398843.P9330548546479123555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397979 n - (2 * n : ℤ)

end

end A398843.P9330548546479123555

namespace A398843

/-- `A397979(n)-2*n` -/
def P9330548546479123555.Spec : Prop :=
  ∀ n, P9330548546479123555.a n = A398843 n

end A398843

/-! ## A398843.P7782912813251931935

`A000384(n)-A281026(n)`
-/

namespace A398843.P7782912813251931935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n - A281026 n

end

end A398843.P7782912813251931935

namespace A398843

/-- `A000384(n)-A281026(n)` -/
def P7782912813251931935.Spec : Prop :=
  ∀ n, P7782912813251931935.a n = A398843 n

end A398843

/-! ## A398843.P1657562423571406723

`A005476(n)-A332495(n)`
-/

namespace A398843.P1657562423571406723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - A332495 n

end

end A398843.P1657562423571406723

namespace A398843

/-- `A005476(n)-A332495(n)` -/
def P1657562423571406723.Spec : Prop :=
  ∀ n, P1657562423571406723.a n = A398843 n

end A398843

/-! ## A398843.P10867504478270584340

`A000566(n)-A397978(n)`
-/

namespace A398843.P10867504478270584340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n - A397978 n

end

end A398843.P10867504478270584340

namespace A398843

/-- `A000566(n)-A397978(n)` -/
def P10867504478270584340.Spec : Prop :=
  ∀ n, P10867504478270584340.a n = A398843 n

end A398843

/-! ## A398843.P7457785738665082671

`A398853(n)-A000096(n)`
-/

namespace A398843.P7457785738665082671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398853 n - A000096 n

end

end A398843.P7457785738665082671

namespace A398843

/-- `A398853(n)-A000096(n)` -/
def P7457785738665082671.Spec : Prop :=
  ∀ n, P7457785738665082671.a n = A398843 n

end A398843

/-! ## A398843.P14678579735124187900

`A000567(n)-A398852(n)`
-/

namespace A398843.P14678579735124187900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n - A398852 n

end

end A398843.P14678579735124187900

namespace A398843

/-- `A000567(n)-A398852(n)` -/
def P14678579735124187900.Spec : Prop :=
  ∀ n, P14678579735124187900.a n = A398843 n

end A398843

/-! ## A398843.P13810299819080499752

`A002939(n)-A398840(n)`
-/

namespace A398843.P13810299819080499752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n - A398840 n

end

end A398843.P13810299819080499752

namespace A398843

/-- `A002939(n)-A398840(n)` -/
def P13810299819080499752.Spec : Prop :=
  ∀ n, P13810299819080499752.a n = A398843 n

end A398843

/-! ## A398843.P16003170273939557848

`A398861(n)-A005563(n)`
-/

namespace A398843.P16003170273939557848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398861 n - A005563 n

end

end A398843.P16003170273939557848

namespace A398843

/-- `A398861(n)-A005563(n)` -/
def P16003170273939557848.Spec : Prop :=
  ∀ n, P16003170273939557848.a n = A398843 n

end A398843

/-! ## A398843.P10554085541543669688

`A398841(n)-A045943(n)`
-/

namespace A398843.P10554085541543669688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398841 n - A045943 n

end

end A398843.P10554085541543669688

namespace A398843

/-- `A398841(n)-A045943(n)` -/
def P10554085541543669688.Spec : Prop :=
  ∀ n, P10554085541543669688.a n = A398843 n

end A398843

/-! ## A398843.P14356154595417623645

`A049450(n)-A397984(n)`
-/

namespace A398843.P14356154595417623645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n - A397984 n

end

end A398843.P14356154595417623645

namespace A398843

/-- `A049450(n)-A397984(n)` -/
def P14356154595417623645.Spec : Prop :=
  ∀ n, P14356154595417623645.a n = A398843 n

end A398843

/-! ## A398843.P4995824524144234979

`A397985(n)-A055998(n)`
-/

namespace A398843.P4995824524144234979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397985 n - A055998 n

end

end A398843.P4995824524144234979

namespace A398843

/-- `A397985(n)-A055998(n)` -/
def P4995824524144234979.Spec : Prop :=
  ∀ n, P4995824524144234979.a n = A398843 n

end A398843

/-! ## A398843.P8746706297616140780

`A064043(n)-A398727(n)`
-/

namespace A398843.P8746706297616140780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064043 n - A398727 n

end

end A398843.P8746706297616140780

namespace A398843

/-- `A064043(n)-A398727(n)` -/
def P8746706297616140780.Spec : Prop :=
  ∀ n, P8746706297616140780.a n = A398843 n

end A398843

/-! ## A398843.P13947663562399090149

`A218471(n)-A398860(n)`
-/

namespace A398843.P13947663562399090149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n - A398860 n

end

end A398843.P13947663562399090149

namespace A398843

/-- `A218471(n)-A398860(n)` -/
def P13947663562399090149.Spec : Prop :=
  ∀ n, P13947663562399090149.a n = A398843 n

end A398843

/-!
# A398844: Lower (1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398844, the canonical program `A398844.P8131316336226091348` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398844 has offset 0).

The definition of A398844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398844.P17441515787504732147

`floor(((3*n)²+n)/12)`
-/

namespace A398844.P17441515787504732147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * n) ^ 2 + n : ℚ) / 12⌋

end

end A398844.P17441515787504732147

namespace A398844

/-- `floor(((3*n)²+n)/12)` -/
def P17441515787504732147.Spec : Prop :=
  ∀ n, P17441515787504732147.a n = A398844 n

end A398844

/-! ## A398844.P8131316336226091348

`A398850(n)+∑[n]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398844

/-- `A398850(n)+∑[n]` -/
def P8131316336226091348.Spec : Prop :=
  ∀ n, P8131316336226091348.a n = A398844 n

theorem P8131316336226091348.correct : P8131316336226091348.Spec := by
  intro n
  simp only [A398844]

end A398844

/-! ## A398844.P15180325449576275088

`ceil((A398836(n)-1)/2)`
-/

namespace A398844.P15180325449576275088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A398836 n - 1 : ℚ) / 2⌉

end

end A398844.P15180325449576275088

namespace A398844

/-- `ceil((A398836(n)-1)/2)` -/
def P15180325449576275088.Spec : Prop :=
  ∀ n, P15180325449576275088.a n = A398844 n

end A398844

/-! ## A398844.P10138547734722402538

`abs(A398850(n)+A000217(n))`
-/

namespace A398844.P10138547734722402538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A398850 n + A000217 n|

end

end A398844.P10138547734722402538

namespace A398844

/-- `abs(A398850(n)+A000217(n))` -/
def P10138547734722402538.Spec : Prop :=
  ∀ n, P10138547734722402538.a n = A398844 n

end A398844

/-! ## A398844.P16920807241559969381

`round(A398850(n)+sqrt(A000537(n)))`
-/

namespace A398844.P16920807241559969381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A398850 n : ℝ) + Real.sqrt (A000537 n : ℝ))

end

end A398844.P16920807241559969381

namespace A398844

/-- `round(A398850(n)+sqrt(A000537(n)))` -/
def P16920807241559969381.Spec : Prop :=
  ∀ n, P16920807241559969381.a n = A398844 n

end A398844

/-! ## A398844.P2359777493409440136

`floor(A398836(n)/2)%A168574(n)`
-/

namespace A398844.P2359777493409440136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A398836 n : ℚ) / 2⌋ (A168574 n)

end

end A398844.P2359777493409440136

namespace A398844

/-- `floor(A398836(n)/2)%A168574(n)` -/
def P2359777493409440136.Spec : Prop :=
  ∀ n, P2359777493409440136.a n = A398844 n

end A398844

/-! ## A398844.P15978426298302569405

`A398851(n+2)+∑[n-1]`
-/

namespace A398844.P15978426298302569405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398851 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398844.P15978426298302569405

namespace A398844

/-- `A398851(n+2)+∑[n-1]` -/
def P15978426298302569405.Spec : Prop :=
  ∀ n, P15978426298302569405.a n = A398844 n

end A398844

/-! ## A398844.P16102018120572373977

`A397972(n)-floor(A054925(n+3)/3)`
-/

namespace A398844.P16102018120572373977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n - ⌊(A054925 (n + 3) : ℚ) / 3⌋

end

end A398844.P16102018120572373977

namespace A398844

/-- `A397972(n)-floor(A054925(n+3)/3)` -/
def P16102018120572373977.Spec : Prop :=
  ∀ n, P16102018120572373977.a n = A398844 n

end A398844

/-! ## A398844.P3714363745556584192

`A000007(3*n+2)+floor(A398836(n)/2)`
-/

namespace A398844.P3714363745556584192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 2) + ⌊(A398836 n : ℚ) / 2⌋

end

end A398844.P3714363745556584192

namespace A398844

/-- `A000007(3*n+2)+floor(A398836(n)/2)` -/
def P3714363745556584192.Spec : Prop :=
  ∀ n, P3714363745556584192.a n = A398844 n

end A398844

/-! ## A398844.P12522294598859474917

`xor(A003188(A398836(n)), A398836(n))`
-/

namespace A398844.P12522294598859474917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A398836 n).toNat) (A398836 n)

end

end A398844.P12522294598859474917

namespace A398844

/-- `xor(A003188(A398836(n)), A398836(n))` -/
def P12522294598859474917.Spec : Prop :=
  ∀ n, P12522294598859474917.a n = A398844 n

end A398844

/-!
# A398845: Upper (1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398845, the canonical program `A398845.P2931905076541296090` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398845 has offset 0).

The definition of A398845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398845.P2931905076541296090

`ceil(n*(9*n+1)/12)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398845

/-- `ceil(n*(9*n+1)/12)` -/
def P2931905076541296090.Spec : Prop :=
  ∀ n, P2931905076541296090.a n = A398845 n

theorem P2931905076541296090.correct : P2931905076541296090.Spec := by
  intro n
  simp only [A398845]

end A398845

/-! ## A398845.P11637642445340919999

`ogf((x+2x^2+2x^4-x^5+x^6+2x^8+x^9+x^10)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))`
-/

namespace A398845.P11637642445340919999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 2, -1, 1, 0, 2, 1, 1] [1, -2, 1, -1, 2, -1, 1, -2, 1, -1, 2, -1] n

end

end A398845.P11637642445340919999

namespace A398845

/-- `ogf((x+2x^2+2x^4-x^5+x^6+2x^8+x^9+x^10)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))` -/
def P11637642445340919999.Spec : Prop :=
  ∀ n, P11637642445340919999.a n = A398845 n

end A398845

/-! ## A398845.P652698603821319286

`round(A398837(n)/2)`
-/

namespace A398845.P652698603821319286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A398837 n : ℚ) / 2)

end

end A398845.P652698603821319286

namespace A398845

/-- `round(A398837(n)/2)` -/
def P652698603821319286.Spec : Prop :=
  ∀ n, P652698603821319286.a n = A398845 n

end A398845

/-! ## A398845.P14732376744112896952

`A398851(n)+∑[n]`
-/

namespace A398845.P14732376744112896952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398851 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398845.P14732376744112896952

namespace A398845

/-- `A398851(n)+∑[n]` -/
def P14732376744112896952.Spec : Prop :=
  ∀ n, P14732376744112896952.a n = A398845 n

theorem P14732376744112896952.correct : P14732376744112896952.Spec := by
  intro n
  simp only [A398845, Nat.add_sub_cancel, A398845.P14732376744112896952.f1, A398845.P14732376744112896952.a, A398845.P2931905076541296090.a, A398851, A398851.P6452967671185813626.f1, A398851.P6452967671185813626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398845

/-! ## A398845.P14240151892365615167

`A398847(n)-A130518(n)`
-/

namespace A398845.P14240151892365615167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398847 n - A130518 n

end

end A398845.P14240151892365615167

namespace A398845

/-- `A398847(n)-A130518(n)` -/
def P14240151892365615167.Spec : Prop :=
  ∀ n, P14240151892365615167.a n = A398845 n

end A398845

/-! ## A398845.P12968887475847831703

`A110654(A398837(n))`
-/

namespace A398845.P12968887475847831703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A398837 n).toNat

end

end A398845.P12968887475847831703

namespace A398845

/-- `A110654(A398837(n))` -/
def P12968887475847831703.Spec : Prop :=
  ∀ n, P12968887475847831703.a n = A398845 n

end A398845

/-!
# A398846: Lower (1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398846, the canonical program `A398846.P1935067902238574170` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398846 has offset 0).

The definition of A398846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398846.P1935067902238574170

`floor(n*(11*n-1)/12)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398846

/-- `floor(n*(11*n-1)/12)` -/
def P1935067902238574170.Spec : Prop :=
  ∀ n, P1935067902238574170.a n = A398846 n

theorem P1935067902238574170.correct : P1935067902238574170.Spec := by
  intro n
  simp only [A398846]

end A398846

/-! ## A398846.P1365501022436252173

`ogf((3x^2+2x^3+4x^4+x^5+x^6)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))`
-/

namespace A398846.P1365501022436252173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 2, 4, 1, 1] [1, -2, 2, -3, 3, -2, 2, -1] n

end

end A398846.P1365501022436252173

namespace A398846

/-- `ogf((3x^2+2x^3+4x^4+x^5+x^6)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))` -/
def P1365501022436252173.Spec : Prop :=
  ∀ n, P1365501022436252173.a n = A398846 n

end A398846

/-! ## A398846.P9642992907292907820

`n²-ceil(C(n+1, 2)/6)`
-/

namespace A398846.P9642992907292907820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌈(Nat.choose (n + 1) 2 : ℚ) / 6⌉

end

end A398846.P9642992907292907820

namespace A398846

/-- `n²-ceil(C(n+1, 2)/6)` -/
def P9642992907292907820.Spec : Prop :=
  ∀ n, P9642992907292907820.a n = A398846 n

end A398846

/-! ## A398846.P17003844908322534303

`A000290(n)-ceil(∑[n]/6)`
-/

namespace A398846.P17003844908322534303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌉

end

end A398846.P17003844908322534303

namespace A398846

/-- `A000290(n)-ceil(∑[n]/6)` -/
def P17003844908322534303.Spec : Prop :=
  ∀ n, P17003844908322534303.a n = A398846 n

end A398846

/-! ## A398846.P12231545765246202804

`C(n, 2)+n²-A398849(n)`
-/

namespace A398846.P12231545765246202804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + n ^ 2 : ℤ) - A398849 n

end

end A398846.P12231545765246202804

namespace A398846

/-- `C(n, 2)+n²-A398849(n)` -/
def P12231545765246202804.Spec : Prop :=
  ∀ n, P12231545765246202804.a n = A398846 n

end A398846

/-! ## A398846.P13722916774559440713

`A000326(n)-A398849(n)`
-/

namespace A398846.P13722916774559440713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - A398849 n

end

end A398846.P13722916774559440713

namespace A398846

/-- `A000326(n)-A398849(n)` -/
def P13722916774559440713.Spec : Prop :=
  ∀ n, P13722916774559440713.a n = A398846 n

end A398846

/-! ## A398846.P5233583947753941405

`A301294(n)-A212978(n)`
-/

namespace A398846.P5233583947753941405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301294 n - A212978 n

end

end A398846.P5233583947753941405

namespace A398846

/-- `A301294(n)-A212978(n)` -/
def P5233583947753941405.Spec : Prop :=
  ∀ n, P5233583947753941405.a n = A398846 n

end A398846

/-! ## A398846.P12220101361872761585

`A398854(n)-A340648(n)`
-/

namespace A398846.P12220101361872761585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398854 n - A340648 n

end

end A398846.P12220101361872761585

namespace A398846

/-- `A398854(n)-A340648(n)` -/
def P12220101361872761585.Spec : Prop :=
  ∀ n, P12220101361872761585.a n = A398846 n

end A398846

/-! ## A398846.P17354667957825159248

`A398858(n)-A397979(n)`
-/

namespace A398846.P17354667957825159248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398858 n - A397979 n

end

end A398846.P17354667957825159248

namespace A398846

/-- `A398858(n)-A397979(n)` -/
def P17354667957825159248.Spec : Prop :=
  ∀ n, P17354667957825159248.a n = A398846 n

end A398846

/-! ## A398846.P13863334595935441515

`A398860(n)-A397983(n)`
-/

namespace A398846.P13863334595935441515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398860 n - A397983 n

end

end A398846.P13863334595935441515

namespace A398846

/-- `A398860(n)-A397983(n)` -/
def P13863334595935441515.Spec : Prop :=
  ∀ n, P13863334595935441515.a n = A398846 n

end A398846

/-! ## A398846.P7550632351740451001

`A398852(n)-A398205(n)`
-/

namespace A398846.P7550632351740451001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398852 n - A398205 n

end

end A398846.P7550632351740451001

namespace A398846

/-- `A398852(n)-A398205(n)` -/
def P7550632351740451001.Spec : Prop :=
  ∀ n, P7550632351740451001.a n = A398846 n

end A398846

/-! ## A398846.P10529926058590575635

`A398840(n)-A398857(n)`
-/

namespace A398846.P10529926058590575635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398840 n - A398857 n

end

end A398846.P10529926058590575635

namespace A398846

/-- `A398840(n)-A398857(n)` -/
def P10529926058590575635.Spec : Prop :=
  ∀ n, P10529926058590575635.a n = A398846 n

end A398846

/-! ## A398846.P14474708959306248985

`A397983(n)+A397982(n)-A397985(n)`
-/

namespace A398846.P14474708959306248985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397983 n + A397982 n - A397985 n

end

end A398846.P14474708959306248985

namespace A398846

/-- `A397983(n)+A397982(n)-A397985(n)` -/
def P14474708959306248985.Spec : Prop :=
  ∀ n, P14474708959306248985.a n = A398846 n

end A398846

/-! ## A398846.P16134393652621768159

`A398848(n)+A398847(n)-A398849(n)`
-/

namespace A398846.P16134393652621768159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398848 n + A398847 n - A398849 n

end

end A398846.P16134393652621768159

namespace A398846

/-- `A398848(n)+A398847(n)-A398849(n)` -/
def P16134393652621768159.Spec : Prop :=
  ∀ n, P16134393652621768159.a n = A398846 n

end A398846

/-! ## A398846.P11589200887576402049

`n²-A000933(n+4)`
-/

namespace A398846.P11589200887576402049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A000933 (n + 4)

end

end A398846.P11589200887576402049

namespace A398846

/-- `n²-A000933(n+4)` -/
def P11589200887576402049.Spec : Prop :=
  ∀ n, P11589200887576402049.a n = A398846 n

end A398846

/-! ## A398846.P14894052988404764550

`A130518(2*n)+A011848(n+1)`
-/

namespace A398846.P14894052988404764550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (2 * n) + A011848 (n + 1)

end

end A398846.P14894052988404764550

namespace A398846

/-- `A130518(2*n)+A011848(n+1)` -/
def P14894052988404764550.Spec : Prop :=
  ∀ n, P14894052988404764550.a n = A398846 n

end A398846

/-! ## A398846.P17527551604144976792

`round(n²-∑[A233583(n+1)/6])`
-/

namespace A398846.P17527551604144976792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 1) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398846.P17527551604144976792

namespace A398846

/-- `round(n²-∑[A233583(n+1)/6])` -/
def P17527551604144976792.Spec : Prop :=
  ∀ n, P17527551604144976792.a n = A398846 n

end A398846

/-! ## A398846.P8654007843803398978

`A272915(∑[n])-n`
-/

namespace A398846.P8654007843803398978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272915 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A398846.P8654007843803398978

namespace A398846

/-- `A272915(∑[n])-n` -/
def P8654007843803398978.Spec : Prop :=
  ∀ n, P8654007843803398978.a n = A398846 n

end A398846

/-!
# A398847: Upper (1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398847, the canonical program `A398847.P13207648458492473620` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398847 has offset 0).

The definition of A398847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398847.P13207648458492473620

`ceil(n*(11*n-1)/12)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398847

/-- `ceil(n*(11*n-1)/12)` -/
def P13207648458492473620.Spec : Prop :=
  ∀ n, P13207648458492473620.a n = A398847 n

theorem P13207648458492473620.correct : P13207648458492473620.Spec := by
  intro n
  simp only [A398847]

end A398847

/-! ## A398847.P13422109101035390923

`ogf((x+2x^2+x^3+2x^4-x^5+x^6+2x^8+2x^9+x^10)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))`
-/

namespace A398847.P13422109101035390923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1, 2, -1, 1, 0, 2, 2, 1] [1, -2, 1, -1, 2, -1, 1, -2, 1, -1, 2, -1] n

end

end A398847.P13422109101035390923

namespace A398847

/-- `ogf((x+2x^2+x^3+2x^4-x^5+x^6+2x^8+2x^9+x^10)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))` -/
def P13422109101035390923.Spec : Prop :=
  ∀ n, P13422109101035390923.a n = A398847 n

end A398847

/-! ## A398847.P3016258301456251620

`n²-floor(C(n+1, 2)/6)`
-/

namespace A398847.P3016258301456251620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊(Nat.choose (n + 1) 2 : ℚ) / 6⌋

end

end A398847.P3016258301456251620

namespace A398847

/-- `n²-floor(C(n+1, 2)/6)` -/
def P3016258301456251620.Spec : Prop :=
  ∀ n, P3016258301456251620.a n = A398847 n

end A398847

/-! ## A398847.P15086049358850157112

`3*C(n, 2)+n-floor(n*(7*n-5)/12)`
-/

namespace A398847.P15086049358850157112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose n 2 + n : ℤ) - ⌊((n : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 12⌋

end

end A398847.P15086049358850157112

namespace A398847

/-- `3*C(n, 2)+n-floor(n*(7*n-5)/12)` -/
def P15086049358850157112.Spec : Prop :=
  ∀ n, P15086049358850157112.a n = A398847 n

end A398847

/-! ## A398847.P15311395217857852302

`∑[record[lcm(2, n)]-n]-floor(n*(7*n-5)/12)`
-/

namespace A398847.P15311395217857852302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊((n : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 12⌋

end

end A398847.P15311395217857852302

namespace A398847

/-- `∑[record[lcm(2, n)]-n]-floor(n*(7*n-5)/12)` -/
def P15311395217857852302.Spec : Prop :=
  ∀ n, P15311395217857852302.a n = A398847 n

end A398847

/-! ## A398847.P9924562288824790688

`Δ[(n-1)*C(n, 2)]-floor(n*(7*n-5)/12)`
-/

namespace A398847.P9924562288824790688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊((n : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 12⌋

end

end A398847.P9924562288824790688

namespace A398847

/-- `Δ[(n-1)*C(n, 2)]-floor(n*(7*n-5)/12)` -/
def P9924562288824790688.Spec : Prop :=
  ∀ n, P9924562288824790688.a n = A398847 n

end A398847

/-! ## A398847.P11869042205592551649

`round(A398857(n)/2)`
-/

namespace A398847.P11869042205592551649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A398857 n : ℚ) / 2)

end

end A398847.P11869042205592551649

namespace A398847

/-- `round(A398857(n)/2)` -/
def P11869042205592551649.Spec : Prop :=
  ∀ n, P11869042205592551649.a n = A398847 n

end A398847

/-! ## A398847.P12475368747021821387

`n²-A011865(n+1)`
-/

namespace A398847.P12475368747021821387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A011865 (n + 1)

end

end A398847.P12475368747021821387

namespace A398847

/-- `n²-A011865(n+1)` -/
def P12475368747021821387.Spec : Prop :=
  ∀ n, P12475368747021821387.a n = A398847 n

end A398847

/-! ## A398847.P14412074449465896716

`A000290(n)-floor(∑[n]/6)`
-/

namespace A398847.P14412074449465896716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌋

end

end A398847.P14412074449465896716

namespace A398847

/-- `A000290(n)-floor(∑[n]/6)` -/
def P14412074449465896716.Spec : Prop :=
  ∀ n, P14412074449465896716.a n = A398847 n

end A398847

/-! ## A398847.P628245157077980374

`A398845(n)+A130518(n)`
-/

namespace A398847.P628245157077980374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398845 n + A130518 n

end

end A398847.P628245157077980374

namespace A398847

/-- `A398845(n)+A130518(n)` -/
def P628245157077980374.Spec : Prop :=
  ∀ n, P628245157077980374.a n = A398847 n

end A398847

/-! ## A398847.P5669464945097234258

`A000326(n)-A398848(n)`
-/

namespace A398847.P5669464945097234258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - A398848 n

end

end A398847.P5669464945097234258

namespace A398847

/-- `A000326(n)-A398848(n)` -/
def P5669464945097234258.Spec : Prop :=
  ∀ n, P5669464945097234258.a n = A398847 n

end A398847

/-! ## A398847.P47386926939831142

`A398849(n)+A398846(n)-A398848(n)`
-/

namespace A398847.P47386926939831142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398849 n + A398846 n - A398848 n

end

end A398847.P47386926939831142

namespace A398847

/-- `A398849(n)+A398846(n)-A398848(n)` -/
def P47386926939831142.Spec : Prop :=
  ∀ n, P47386926939831142.a n = A398847 n

end A398847

/-! ## A398847.P15541100171294026975

`n²-A152467(∑[n])`
-/

namespace A398847.P15541100171294026975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A152467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398847.P15541100171294026975

namespace A398847

/-- `n²-A152467(∑[n])` -/
def P15541100171294026975.Spec : Prop :=
  ∀ n, P15541100171294026975.a n = A398847 n

end A398847

/-!
# A398848: Lower (-1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398848, the canonical program `A398848.P7723143824585085884` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398848 has offset 0).

The definition of A398848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398848.P7723143824585085884

`floor(n*(7*n-5)/12)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398848

/-- `floor(n*(7*n-5)/12)` -/
def P7723143824585085884.Spec : Prop :=
  ∀ n, P7723143824585085884.a n = A398848 n

theorem P7723143824585085884.correct : P7723143824585085884.Spec := by
  intro n
  simp only [A398848]

end A398848

/-! ## A398848.P4099381104991436552

`ogf((x^2+2x^3+x^5-x^6+x^7+x^8+x^9+x^10)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))`
-/

namespace A398848.P4099381104991436552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, 0, 1, -1, 1, 1, 1, 1] [1, -2, 1, -1, 2, -1, 1, -2, 1, -1, 2, -1] n

end

end A398848.P4099381104991436552

namespace A398848

/-- `ogf((x^2+2x^3+x^5-x^6+x^7+x^8+x^9+x^10)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))` -/
def P4099381104991436552.Spec : Prop :=
  ∀ n, P4099381104991436552.a n = A398848 n

end A398848

/-! ## A398848.P1596456222927914375

`floor(C(n+1, 2)/6)+C(n, 2)`
-/

namespace A398848.P1596456222927914375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℚ) / 6⌋ + (Nat.choose n 2 : ℤ)

end

end A398848.P1596456222927914375

namespace A398848

/-- `floor(C(n+1, 2)/6)+C(n, 2)` -/
def P1596456222927914375.Spec : Prop :=
  ∀ n, P1596456222927914375.a n = A398848 n

end A398848

/-! ## A398848.P12289122521133052913

`∑[n+Δ[A011865(n)]]-n`
-/

namespace A398848.P12289122521133052913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A398848.P12289122521133052913

namespace A398848

/-- `∑[n+Δ[A011865(n)]]-n` -/
def P12289122521133052913.Spec : Prop :=
  ∀ n, P12289122521133052913.a n = A398848 n

end A398848

/-! ## A398848.P13113749509725705680

`C(n, 2)+n²-A398847(n)`
-/

namespace A398848.P13113749509725705680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + n ^ 2 : ℤ) - A398847 n

end

end A398848.P13113749509725705680

namespace A398848

/-- `C(n, 2)+n²-A398847(n)` -/
def P13113749509725705680.Spec : Prop :=
  ∀ n, P13113749509725705680.a n = A398848 n

end A398848

/-! ## A398848.P14368575322283079094

`A000326(n)-A398847(n)`
-/

namespace A398848.P14368575322283079094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - A398847 n

end

end A398848.P14368575322283079094

namespace A398848

/-- `A000326(n)-A398847(n)` -/
def P14368575322283079094.Spec : Prop :=
  ∀ n, P14368575322283079094.a n = A398848 n

end A398848

/-! ## A398848.P1432180954537690445

`3*C(n, 2)+n-(A398845(n)+A130518(n))`
-/

namespace A398848.P1432180954537690445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose n 2 + n : ℤ) - (A398845 n + A130518 n)

end

end A398848.P1432180954537690445

namespace A398848

/-- `3*C(n, 2)+n-(A398845(n)+A130518(n))` -/
def P1432180954537690445.Spec : Prop :=
  ∀ n, P1432180954537690445.a n = A398848 n

end A398848

/-! ## A398848.P9112229452568163481

`A142150(n)+A191967(n)-A398847(n)`
-/

namespace A398848.P9112229452568163481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A191967 n - A398847 n

end

end A398848.P9112229452568163481

namespace A398848

/-- `A142150(n)+A191967(n)-A398847(n)` -/
def P9112229452568163481.Spec : Prop :=
  ∀ n, P9112229452568163481.a n = A398848 n

end A398848

/-! ## A398848.P15573530894340299839

`A398849(n)+A398846(n)-A398847(n)`
-/

namespace A398848.P15573530894340299839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398849 n + A398846 n - A398847 n

end

end A398848.P15573530894340299839

namespace A398848

/-- `A398849(n)+A398846(n)-A398847(n)` -/
def P15573530894340299839.Spec : Prop :=
  ∀ n, P15573530894340299839.a n = A398848 n

end A398848

/-! ## A398848.P11879280886716688155

`A286283(Δ[n²])-n`
-/

namespace A398848.P11879280886716688155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286283 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A398848.P11879280886716688155

namespace A398848

/-- `A286283(Δ[n²])-n` -/
def P11879280886716688155.Spec : Prop :=
  ∀ n, P11879280886716688155.a n = A398848 n

end A398848

/-!
# A398849: Upper (-1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398849, the canonical program `A398849.P14506068353715613907` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398849 has offset 0).

The definition of A398849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398849.P14506068353715613907

`ceil(n*(7*n-5)/12)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398849

/-- `ceil(n*(7*n-5)/12)` -/
def P14506068353715613907.Spec : Prop :=
  ∀ n, P14506068353715613907.a n = A398849 n

theorem P14506068353715613907.correct : P14506068353715613907.Spec := by
  intro n
  simp only [A398849]

end A398849

/-! ## A398849.P14999643186835413925

`ogf((x+2x^3+x^4+2x^5+x^6)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))`
-/

namespace A398849.P14999643186835413925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 2, 1, 2, 1] [1, -2, 2, -3, 3, -2, 2, -1] n

end

end A398849.P14999643186835413925

namespace A398849

/-- `ogf((x+2x^3+x^4+2x^5+x^6)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))` -/
def P14999643186835413925.Spec : Prop :=
  ∀ n, P14999643186835413925.a n = A398849 n

end A398849

/-! ## A398849.P17972781244068203468

`ceil(∑[n/6]+C(n, 2))`
-/

namespace A398849.P17972781244068203468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℚ)⌉

end

end A398849.P17972781244068203468

namespace A398849

/-- `ceil(∑[n/6]+C(n, 2))` -/
def P17972781244068203468.Spec : Prop :=
  ∀ n, P17972781244068203468.a n = A398849 n

end A398849

/-! ## A398849.P12755959624705062562

`floor(∑[a(n-1)+7]/6)` with `a(0)=5, a(1)=1`
-/

namespace A398849.P12755959624705062562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌋

end

end A398849.P12755959624705062562

namespace A398849

/-- `floor(∑[a(n-1)+7]/6)` -/
def P12755959624705062562.Spec : Prop :=
  ∀ n, P12755959624705062562.a n = A398849 n

end A398849

/-! ## A398849.P11719077701024179919

`C(n, 2)+n²-floor(n*(11*n-1)/12)`
-/

namespace A398849.P11719077701024179919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + n ^ 2 : ℤ) - ⌊((n : ℤ) * ((11 * n : ℤ) - 1) : ℚ) / 12⌋

end

end A398849.P11719077701024179919

namespace A398849

/-- `C(n, 2)+n²-floor(n*(11*n-1)/12)` -/
def P11719077701024179919.Spec : Prop :=
  ∀ n, P11719077701024179919.a n = A398849 n

end A398849

/-! ## A398849.P9120849937827172524

`floor((A398853(n)+2-n)/3)`
-/

namespace A398849.P9120849937827172524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A398853 n + 2 - (n : ℤ) : ℚ) / 3⌋

end

end A398849.P9120849937827172524

namespace A398849

/-- `floor((A398853(n)+2-n)/3)` -/
def P9120849937827172524.Spec : Prop :=
  ∀ n, P9120849937827172524.a n = A398849 n

end A398849

/-! ## A398849.P849365419231382603

`A000326(n)-A398846(n)`
-/

namespace A398849.P849365419231382603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - A398846 n

end

end A398849.P849365419231382603

namespace A398849

/-- `A000326(n)-A398846(n)` -/
def P849365419231382603.Spec : Prop :=
  ∀ n, P849365419231382603.a n = A398849 n

end A398849

/-! ## A398849.P5382764499958042240

`A397983(n)-A281026(n)`
-/

namespace A398849.P5382764499958042240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397983 n - A281026 n

end

end A398849.P5382764499958042240

namespace A398849

/-- `A397983(n)-A281026(n)` -/
def P5382764499958042240.Spec : Prop :=
  ∀ n, P5382764499958042240.a n = A398849 n

end A398849

/-! ## A398849.P9856659829146853828

`A398853(n)-A397980(n)`
-/

namespace A398849.P9856659829146853828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398853 n - A397980 n

end

end A398849.P9856659829146853828

namespace A398849

/-- `A398853(n)-A397980(n)` -/
def P9856659829146853828.Spec : Prop :=
  ∀ n, P9856659829146853828.a n = A398849 n

end A398849

/-! ## A398849.P14429056178672204018

`A398857(n)-A397978(n)`
-/

namespace A398849.P14429056178672204018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398857 n - A397978 n

end

end A398849.P14429056178672204018

namespace A398849

/-- `A398857(n)-A397978(n)` -/
def P14429056178672204018.Spec : Prop :=
  ∀ n, P14429056178672204018.a n = A398849 n

end A398849

/-! ## A398849.P14114490107117491042

`A398861(n)-A398202(n)`
-/

namespace A398849.P14114490107117491042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398861 n - A398202 n

end

end A398849.P14114490107117491042

namespace A398849

/-- `A398861(n)-A398202(n)` -/
def P14114490107117491042.Spec : Prop :=
  ∀ n, P14114490107117491042.a n = A398849 n

end A398849

/-! ## A398849.P597802931100868573

`A398841(n)-A398858(n)`
-/

namespace A398849.P597802931100868573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398841 n - A398858 n

end

end A398849.P597802931100868573

namespace A398849

/-- `A398841(n)-A398858(n)` -/
def P597802931100868573.Spec : Prop :=
  ∀ n, P597802931100868573.a n = A398849 n

end A398849

/-! ## A398849.P11511866969664951075

`A398848(n)+A398847(n)-A398846(n)`
-/

namespace A398849.P11511866969664951075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398848 n + A398847 n - A398846 n

end

end A398849.P11511866969664951075

namespace A398849

/-- `A398848(n)+A398847(n)-A398846(n)` -/
def P11511866969664951075.Spec : Prop :=
  ∀ n, P11511866969664951075.a n = A398849 n

end A398849

/-! ## A398849.P780050468813130115

`∑[n-2+A112689(n+4)]+1`
-/

namespace A398849.P780050468813130115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 + A112689 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A398849.P780050468813130115

namespace A398849

/-- `∑[n-2+A112689(n+4)]+1` -/
def P780050468813130115.Spec : Prop :=
  ∀ n, P780050468813130115.a n = A398849 n

end A398849

/-! ## A398849.P11324611248524894236

`A389318(2*n)+A211540(n+1)`
-/

namespace A398849.P11324611248524894236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389318 (2 * n) + A211540 (n + 1)

end

end A398849.P11324611248524894236

namespace A398849

/-- `A389318(2*n)+A211540(n+1)` -/
def P11324611248524894236.Spec : Prop :=
  ∀ n, P11324611248524894236.a n = A398849 n

end A398849

/-! ## A398849.P17710155378602055883

`A211540(2*n)+A056822(2*n+1)`
-/

namespace A398849.P17710155378602055883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (2 * n) + A056822 (2 * n + 1)

end

end A398849.P17710155378602055883

namespace A398849

/-- `A211540(2*n)+A056822(2*n+1)` -/
def P17710155378602055883.Spec : Prop :=
  ∀ n, P17710155378602055883.a n = A398849 n

end A398849

/-! ## A398849.P12580704910164612680

`A304810(∑[n])-(n+1)`
-/

namespace A398849.P12580704910164612680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304810 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A398849.P12580704910164612680

namespace A398849

/-- `A304810(∑[n])-(n+1)` -/
def P12580704910164612680.Spec : Prop :=
  ∀ n, P12580704910164612680.a n = A398849 n

end A398849

/-!
# A398850: Lower (-1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398850, the canonical program `A398850.P9752319019850853025` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398850 has offset 0).

The definition of A398850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398850.P9752319019850853025

`floor(n*(n-5/3)/4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398850

/-- `floor(n*(n-5/3)/4)` -/
def P9752319019850853025.Spec : Prop :=
  ∀ n, P9752319019850853025.a n = A398850 n

theorem P9752319019850853025.correct : P9752319019850853025.Spec := by
  intro n
  simp only [A398850]

end A398850

/-! ## A398850.P8776021266155478158

`A398844(n)-∑[n]`
-/

namespace A398850.P8776021266155478158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398844 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398850.P8776021266155478158

namespace A398850

/-- `A398844(n)-∑[n]` -/
def P8776021266155478158.Spec : Prop :=
  ∀ n, P8776021266155478158.a n = A398850 n

theorem P8776021266155478158.correct : P8776021266155478158.Spec := by
  intro n
  simp only [A398850, Nat.add_sub_cancel, A398850.P8776021266155478158.f1, A398850.P8776021266155478158.a, A398850.P9752319019850853025.a, A398844, A398844.P8131316336226091348.f1, A398844.P8131316336226091348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A398850

/-! ## A398850.P16898636876028345377

`ceil((A058331(n)-(∑[n+2]+4))/6)`
-/

namespace A398850.P16898636876028345377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058331 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ) : ℚ) / 6⌉

end

end A398850.P16898636876028345377

namespace A398850

/-- `ceil((A058331(n)-(∑[n+2]+4))/6)` -/
def P16898636876028345377.Spec : Prop :=
  ∀ n, P16898636876028345377.a n = A398850 n

end A398850

/-! ## A398850.P6778237826020703965

`A398844(n)+1-A000124(n)`
-/

namespace A398850.P6778237826020703965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398844 n + 1 - A000124 n

end

end A398850.P6778237826020703965

namespace A398850

/-- `A398844(n)+1-A000124(n)` -/
def P6778237826020703965.Spec : Prop :=
  ∀ n, P6778237826020703965.a n = A398850 n

end A398850

/-! ## A398850.P18272005970323787219

`floor(A398836(n)/2)-A000217(n)`
-/

namespace A398850.P18272005970323787219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A398836 n : ℚ) / 2⌋ - A000217 n

end

end A398850.P18272005970323787219

namespace A398850

/-- `floor(A398836(n)/2)-A000217(n)` -/
def P18272005970323787219.Spec : Prop :=
  ∀ n, P18272005970323787219.a n = A398850 n

end A398850

/-! ## A398850.P13713336220413576180

`A398851(2+n)-(n+1)`
-/

namespace A398850.P13713336220413576180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398851 (2 + n) - (n + 1 : ℤ)

end

end A398850.P13713336220413576180

namespace A398850

/-- `A398851(2+n)-(n+1)` -/
def P13713336220413576180.Spec : Prop :=
  ∀ n, P13713336220413576180.a n = A398850 n

end A398850

/-! ## A398850.P15600115163791099920

`A004526(A398836(n))-A000217(n)`
-/

namespace A398850.P15600115163791099920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A398836 n).toNat - A000217 n

end

end A398850.P15600115163791099920

namespace A398850

/-- `A004526(A398836(n))-A000217(n)` -/
def P15600115163791099920.Spec : Prop :=
  ∀ n, P15600115163791099920.a n = A398850 n

end A398850

/-! ## A398850.P3810511200754749449

`A152467(A140090(n))-n`
-/

namespace A398850.P3810511200754749449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A140090 n).toNat - (n : ℤ)

end

end A398850.P3810511200754749449

namespace A398850

/-- `A152467(A140090(n))-n` -/
def P3810511200754749449.Spec : Prop :=
  ∀ n, P3810511200754749449.a n = A398850 n

end A398850

/-! ## A398850.P18018252327374163829

`A152467(n*(3*n+19)/2)-A005843(n)`
-/

namespace A398850.P18018252327374163829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (SequenceMachineLib.roundAway ((n * (3 * n + 19) : ℚ) / 2)).toNat - A005843 n

end

end A398850.P18018252327374163829

namespace A398850

/-- `A152467(n*(3*n+19)/2)-A005843(n)` -/
def P18018252327374163829.Spec : Prop :=
  ∀ n, P18018252327374163829.a n = A398850 n

end A398850

/-!
# A398851: Upper (-1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398851, the canonical program `A398851.P6452967671185813626` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398851 has offset 0).

The definition of A398851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398851.P13673181472402456823

`ceil((C(n, 2)-n/3)/2)`
-/

namespace A398851.P13673181472402456823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 2 : ℚ) - (n : ℚ) / 3) / 2⌉

end

end A398851.P13673181472402456823

namespace A398851

/-- `ceil((C(n, 2)-n/3)/2)` -/
def P13673181472402456823.Spec : Prop :=
  ∀ n, P13673181472402456823.a n = A398851 n

end A398851

/-! ## A398851.P10772372431291498000

`floor(∑[3+a(n-3)]/2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A398851.P10772372431291498000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  3 + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A398851.P10772372431291498000

namespace A398851

/-- `floor(∑[3+a(n-3)]/2)` -/
def P10772372431291498000.Spec : Prop :=
  ∀ n, P10772372431291498000.a n = A398851 n

end A398851

/-! ## A398851.P6452967671185813626

`A398845(n)-∑[n]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398851

/-- `A398845(n)-∑[n]` -/
def P6452967671185813626.Spec : Prop :=
  ∀ n, P6452967671185813626.a n = A398851 n

theorem P6452967671185813626.correct : P6452967671185813626.Spec := by
  intro n
  simp only [A398851]

end A398851

/-! ## A398851.P12559618452907377197

`ceil((∑[n]-A004773(n))/2)`
-/

namespace A398851.P12559618452907377197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004773 n : ℚ) / 2⌉

end

end A398851.P12559618452907377197

namespace A398851

/-- `ceil((∑[n]-A004773(n))/2)` -/
def P12559618452907377197.Spec : Prop :=
  ∀ n, P12559618452907377197.a n = A398851 n

end A398851

/-! ## A398851.P10598445332005738174

`A398847(n)-floor((2*n+1)/3*n)`
-/

namespace A398851.P10598445332005738174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398847 n - ⌊(2 * n + 1 : ℚ) / 3 * (n : ℚ)⌋

end

end A398851.P10598445332005738174

namespace A398851

/-- `A398847(n)-floor((2*n+1)/3*n)` -/
def P10598445332005738174.Spec : Prop :=
  ∀ n, P10598445332005738174.a n = A398851 n

end A398851

/-! ## A398851.P6255501887801706987

`ceil((∑[A004273(n)-(n+2)/2]+1)/3)`
-/

namespace A398851.P6255501887801706987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 n : ℚ) - (n + 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j + 1) / 3⌉

end

end A398851.P6255501887801706987

namespace A398851

/-- `ceil((∑[A004273(n)-(n+2)/2]+1)/3)` -/
def P6255501887801706987.Spec : Prop :=
  ∀ n, P6255501887801706987.a n = A398851 n

end A398851

/-! ## A398851.P4701407705192924929

`abs(A398845(n)-A000217(n))`
-/

namespace A398851.P4701407705192924929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A398845 n - A000217 n|

end

end A398851.P4701407705192924929

namespace A398851

/-- `abs(A398845(n)-A000217(n))` -/
def P4701407705192924929.Spec : Prop :=
  ∀ n, P4701407705192924929.a n = A398851 n

end A398851

/-! ## A398851.P8442272951652237076

`A398845(n)%A179865(n+1)`
-/

namespace A398851.P8442272951652237076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398845 n) (A179865 (n + 1))

end

end A398851.P8442272951652237076

namespace A398851

/-- `A398845(n)%A179865(n+1)` -/
def P8442272951652237076.Spec : Prop :=
  ∀ n, P8442272951652237076.a n = A398851 n

end A398851

/-! ## A398851.P3464884046325882854

`floor((A398837(n)+1)/2)-A000217(n)`
-/

namespace A398851.P3464884046325882854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A398837 n + 1 : ℚ) / 2⌋ - A000217 n

end

end A398851.P3464884046325882854

namespace A398851

/-- `floor((A398837(n)+1)/2)-A000217(n)` -/
def P3464884046325882854.Spec : Prop :=
  ∀ n, P3464884046325882854.a n = A398851 n

end A398851

/-! ## A398851.P5710516781739393985

`A398845(n)%A000217(A028310(n))`
-/

namespace A398851.P5710516781739393985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398845 n) (A000217 (A028310 n).toNat)

end

end A398851.P5710516781739393985

namespace A398851

/-- `A398845(n)%A000217(A028310(n))` -/
def P5710516781739393985.Spec : Prop :=
  ∀ n, P5710516781739393985.a n = A398851 n

end A398851

/-! ## A398851.P11209513094895360894

`A004526(1+C(n, 2)-A002264(n))`
-/

namespace A398851.P11209513094895360894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (1 + ((Nat.choose n 2 : ℤ) - A002264 n)).toNat

end

end A398851.P11209513094895360894

namespace A398851

/-- `A004526(1+C(n, 2)-A002264(n))` -/
def P11209513094895360894.Spec : Prop :=
  ∀ n, P11209513094895360894.a n = A398851 n

end A398851

/-! ## A398851.P201790958671577466

`A004526(2+∑[n-1]-A002264(n))`
-/

namespace A398851.P201790958671577466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 + (∑ j ∈ Finset.range (n + 1), f1 j - A002264 n)).toNat

end

end A398851.P201790958671577466

namespace A398851

/-- `A004526(2+∑[n-1]-A002264(n))` -/
def P201790958671577466.Spec : Prop :=
  ∀ n, P201790958671577466.a n = A398851 n

end A398851

/-! ## A398851.P10703279523651145066

`A110654(∑[A028310(n)]-A042968(n+1))`
-/

namespace A398851.P10703279523651145066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j - A042968 (n + 1)).toNat

end

end A398851.P10703279523651145066

namespace A398851

/-- `A110654(∑[A028310(n)]-A042968(n+1))` -/
def P10703279523651145066.Spec : Prop :=
  ∀ n, P10703279523651145066.a n = A398851 n

end A398851

/-! ## A398851.P18118799407507631925

`A110654(A060544(n+1)-A016754(n)-A004773(n))`
-/

namespace A398851.P18118799407507631925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A060544 (n + 1) - A016754 n - A004773 n).toNat

end

end A398851.P18118799407507631925

namespace A398851

/-- `A110654(A060544(n+1)-A016754(n)-A004773(n))` -/
def P18118799407507631925.Spec : Prop :=
  ∀ n, P18118799407507631925.a n = A398851 n

end A398851

/-! ## A398851.P6096454678354034584

`col(A101881(A389142(n+1)))-n`
-/

namespace A398851.P6096454678354034584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol (A101881 (A389142 (n + 1)).toNat).toNat : ℤ) - (n : ℤ)

end

end A398851.P6096454678354034584

namespace A398851

/-- `col(A101881(A389142(n+1)))-n` -/
def P6096454678354034584.Spec : Prop :=
  ∀ n, P6096454678354034584.a n = A398851 n

end A398851

/-!
# A398852: Lower (1/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398852, the canonical program `A398852.P6501527431990106096` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398852 has offset 0).

The definition of A398852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398852.P6501527431990106096

`ogf((x+3x^2+x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398852

/-- `ogf((x+3x^2+x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P6501527431990106096.Spec : Prop :=
  ∀ n, P6501527431990106096.a n = A398852 n

theorem P6501527431990106096.correct : P6501527431990106096.Spec := by
  intro n
  simp only [A398852]

end A398852

/-! ## A398852.P9267293866157445364

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=15, a(4)=27`
-/

namespace A398852.P9267293866157445364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 15, 27] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A398852.P9267293866157445364

namespace A398852

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P9267293866157445364.Spec : Prop :=
  ∀ n, P9267293866157445364.a n = A398852 n

end A398852

/-! ## A398852.P9177939071026798625

`floor((7*n²-n)/4)`
-/

namespace A398852.P9177939071026798625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 * n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 4⌋

end

end A398852.P9177939071026798625

namespace A398852

/-- `floor((7*n²-n)/4)` -/
def P9177939071026798625.Spec : Prop :=
  ∀ n, P9177939071026798625.a n = A398852 n

end A398852

/-! ## A398852.P12219481536070036755

`∑[∑[7-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=4`
-/

namespace A398852.P12219481536070036755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 4] fun n f2 =>
  7 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398852.P12219481536070036755

namespace A398852

/-- `∑[∑[7-a(n-2)]]` -/
def P12219481536070036755.Spec : Prop :=
  ∀ n, P12219481536070036755.a n = A398852 n

end A398852

/-! ## A398852.P11397927062901172183

`floor(n*(9*n+1)/4)-C(n+1, 2)`
-/

namespace A398852.P11397927062901172183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (9 * n + 1) : ℚ) / 4⌋ - (Nat.choose (n + 1) 2 : ℤ)

end

end A398852.P11397927062901172183

namespace A398852

/-- `floor(n*(9*n+1)/4)-C(n+1, 2)` -/
def P11397927062901172183.Spec : Prop :=
  ∀ n, P11397927062901172183.a n = A398852 n

end A398852

/-! ## A398852.P5002013163601138030

`A397984(n)-n`
-/

namespace A398852.P5002013163601138030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397984 n - (n : ℤ)

end

end A398852.P5002013163601138030

namespace A398852

/-- `A397984(n)-n` -/
def P5002013163601138030.Spec : Prop :=
  ∀ n, P5002013163601138030.a n = A398852 n

end A398852

/-! ## A398852.P12793611617807107615

`A231559(n)+n²`
-/

namespace A398852.P12793611617807107615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + (n ^ 2 : ℤ)

end

end A398852.P12793611617807107615

namespace A398852

/-- `A231559(n)+n²` -/
def P12793611617807107615.Spec : Prop :=
  ∀ n, P12793611617807107615.a n = A398852 n

end A398852

/-! ## A398852.P607846626902793700

`A398840(n)-n²`
-/

namespace A398852.P607846626902793700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398840 n - (n ^ 2 : ℤ)

end

end A398852.P607846626902793700

namespace A398852

/-- `A398840(n)-n²` -/
def P607846626902793700.Spec : Prop :=
  ∀ n, P607846626902793700.a n = A398852 n

end A398852

/-! ## A398852.P11442592308712681798

`A398860(n)-∑[n]`
-/

namespace A398852.P11442592308712681798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398860 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398852.P11442592308712681798

namespace A398852

/-- `A398860(n)-∑[n]` -/
def P11442592308712681798.Spec : Prop :=
  ∀ n, P11442592308712681798.a n = A398852 n

end A398852

/-! ## A398852.P7773236616662105892

`A398842(n)+A000096(n)`
-/

namespace A398852.P7773236616662105892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398842 n + A000096 n

end

end A398852.P7773236616662105892

namespace A398852

/-- `A398842(n)+A000096(n)` -/
def P7773236616662105892.Spec : Prop :=
  ∀ n, P7773236616662105892.a n = A398852 n

end A398852

/-! ## A398852.P5939313702986797188

`A397978(n)+A161680(n)`
-/

namespace A398852.P5939313702986797188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n + A161680 n

end

end A398852.P5939313702986797188

namespace A398852

/-- `A397978(n)+A161680(n)` -/
def P5939313702986797188.Spec : Prop :=
  ∀ n, P5939313702986797188.a n = A398852 n

end A398852

/-! ## A398852.P10664069039245114973

`A398846(n)+A398205(n)`
-/

namespace A398852.P10664069039245114973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398846 n + A398205 n

end

end A398852.P10664069039245114973

namespace A398852

/-- `A398846(n)+A398205(n)` -/
def P10664069039245114973.Spec : Prop :=
  ∀ n, P10664069039245114973.a n = A398852 n

end A398852

/-! ## A398852.P16612598811469342087

`A293296(n)-A008811(n)`
-/

namespace A398852.P16612598811469342087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293296 n - A008811 n

end

end A398852.P16612598811469342087

namespace A398852

/-- `A293296(n)-A008811(n)` -/
def P16612598811469342087.Spec : Prop :=
  ∀ n, P16612598811469342087.a n = A398852 n

end A398852

/-! ## A398852.P17468716282078347291

`A301711(n)-A028387(n)`
-/

namespace A398852.P17468716282078347291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301711 n - A028387 n

end

end A398852.P17468716282078347291

namespace A398852

/-- `A301711(n)-A028387(n)` -/
def P17468716282078347291.Spec : Prop :=
  ∀ n, P17468716282078347291.a n = A398852 n

end A398852

/-! ## A398852.P8188941687243106804

`A005476(n)-A340648(n)`
-/

namespace A398852.P8188941687243106804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - A340648 n

end

end A398852.P8188941687243106804

namespace A398852

/-- `A005476(n)-A340648(n)` -/
def P8188941687243106804.Spec : Prop :=
  ∀ n, P8188941687243106804.a n = A398852 n

end A398852

/-! ## A398852.P16417941031319264393

`A064225(n)-A301709(n)`
-/

namespace A398852.P16417941031319264393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - A301709 n

end

end A398852.P16417941031319264393

namespace A398852

/-- `A064225(n)-A301709(n)` -/
def P16417941031319264393.Spec : Prop :=
  ∀ n, P16417941031319264393.a n = A398852 n

end A398852

/-! ## A398852.P6023887639829084708

`A000567(n)-A398843(n)`
-/

namespace A398852.P6023887639829084708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n - A398843 n

end

end A398852.P6023887639829084708

namespace A398852

/-- `A000567(n)-A398843(n)` -/
def P6023887639829084708.Spec : Prop :=
  ∀ n, P6023887639829084708.a n = A398852 n

end A398852

/-! ## A398852.P4588905263182589301

`A398661(n)-A007290(n)`
-/

namespace A398852.P4588905263182589301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398661 n - A007290 n

end

end A398852.P4588905263182589301

namespace A398852

/-- `A398661(n)-A007290(n)` -/
def P4588905263182589301.Spec : Prop :=
  ∀ n, P4588905263182589301.a n = A398852 n

end A398852

/-! ## A398852.P8520432872327699310

`A016742(n)-A398861(n)`
-/

namespace A398852.P8520432872327699310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A398861 n

end

end A398852.P8520432872327699310

namespace A398852

/-- `A016742(n)-A398861(n)` -/
def P8520432872327699310.Spec : Prop :=
  ∀ n, P8520432872327699310.a n = A398852 n

end A398852

/-! ## A398852.P3518189394894706765

`A022265(n)-A397985(n)`
-/

namespace A398852.P3518189394894706765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - A397985 n

end

end A398852.P3518189394894706765

namespace A398852

/-- `A022265(n)-A397985(n)` -/
def P3518189394894706765.Spec : Prop :=
  ∀ n, P3518189394894706765.a n = A398852 n

end A398852

/-!
# A398853: Upper (1/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398853, the canonical program `A398853.P9826183201726399414` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398853 has offset 0).

The definition of A398853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398853.P9826183201726399414

`ogf((2x+x^2+2x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398853

/-- `ogf((2x+x^2+2x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P9826183201726399414.Spec : Prop :=
  ∀ n, P9826183201726399414.a n = A398853 n

theorem P9826183201726399414.correct : P9826183201726399414.Spec := by
  intro n
  simp only [A398853]

end A398853

/-! ## A398853.P3236825432103034717

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=15, a(4)=27`
-/

namespace A398853.P3236825432103034717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 15, 27] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A398853.P3236825432103034717

namespace A398853

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P3236825432103034717.Spec : Prop :=
  ∀ n, P3236825432103034717.a n = A398853 n

end A398853

/-! ## A398853.P793980396920530281

`2*n²-floor(∑[n]/2)`
-/

namespace A398853.P793980396920530281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A398853.P793980396920530281

namespace A398853

/-- `2*n²-floor(∑[n]/2)` -/
def P793980396920530281.Spec : Prop :=
  ∀ n, P793980396920530281.a n = A398853 n

end A398853

/-! ## A398853.P1340290868980736051

`∑[∑[7-a(n-2)]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A398853.P1340290868980736051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f2 =>
  7 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398853.P1340290868980736051

namespace A398853

/-- `∑[∑[7-a(n-2)]]` -/
def P1340290868980736051.Spec : Prop :=
  ∀ n, P1340290868980736051.a n = A398853 n

end A398853

/-! ## A398853.P1538627400863295151

`floor((C(7*n, 2)/7+1)/2)`
-/

namespace A398853.P1538627400863295151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (7 * n) 2 : ℚ) / 7 + 1) / 2⌋

end

end A398853.P1538627400863295151

namespace A398853

/-- `floor((C(7*n, 2)/7+1)/2)` -/
def P1538627400863295151.Spec : Prop :=
  ∀ n, P1538627400863295151.a n = A398853 n

end A398853

/-! ## A398853.P7172670055869475895

`floor(A140063(n)/2)`
-/

namespace A398853.P7172670055869475895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140063 n : ℚ) / 2⌋

end

end A398853.P7172670055869475895

namespace A398853

/-- `floor(A140063(n)/2)` -/
def P7172670055869475895.Spec : Prop :=
  ∀ n, P7172670055869475895.a n = A398853 n

end A398853

/-! ## A398853.P18299247378582376824

`ceil(A022264(n)/2)`
-/

namespace A398853.P18299247378582376824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022264 n : ℚ) / 2⌉

end

end A398853.P18299247378582376824

namespace A398853

/-- `ceil(A022264(n)/2)` -/
def P18299247378582376824.Spec : Prop :=
  ∀ n, P18299247378582376824.a n = A398853 n

end A398853

/-! ## A398853.P8522559043106679893

`A064225(n)%A301711(n)`
-/

namespace A398853.P8522559043106679893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064225 n) (A301711 n)

end

end A398853.P8522559043106679893

namespace A398853

/-- `A064225(n)%A301711(n)` -/
def P8522559043106679893.Spec : Prop :=
  ∀ n, P8522559043106679893.a n = A398853 n

end A398853

/-! ## A398853.P1052309333937866887

`A054569(n+1)%A301294(n)`
-/

namespace A398853.P1052309333937866887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054569 (n + 1)) (A301294 n)

end

end A398853.P1052309333937866887

namespace A398853

/-- `A054569(n+1)%A301294(n)` -/
def P1052309333937866887.Spec : Prop :=
  ∀ n, P1052309333937866887.a n = A398853 n

end A398853

/-! ## A398853.P3908907581819706401

`A110654(A022264(n))`
-/

namespace A398853.P3908907581819706401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A022264 n).toNat

end

end A398853.P3908907581819706401

namespace A398853

/-- `A110654(A022264(n))` -/
def P3908907581819706401.Spec : Prop :=
  ∀ n, P3908907581819706401.a n = A398853 n

end A398853

/-!
# A398854: Lower (1/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398854, the canonical program `A398854.P11164294614401889234` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398854 has offset 0).

The definition of A398854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398854.P11164294614401889234

`ogf((x+4x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398854

/-- `ogf((x+4x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P11164294614401889234.Spec : Prop :=
  ∀ n, P11164294614401889234.a n = A398854 n

theorem P11164294614401889234.correct : P11164294614401889234.Spec := by
  intro n
  simp only [A398854]

end A398854

/-! ## A398854.P16620658943438418858

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=14, a(4)=25`
-/

namespace A398854.P16620658943438418858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 14, 25] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398854.P16620658943438418858

namespace A398854

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P16620658943438418858.Spec : Prop :=
  ∀ n, P16620658943438418858.a n = A398854 n

end A398854

/-! ## A398854.P3278436002184669190

`floor((5*n²-n)/3)`
-/

namespace A398854.P3278436002184669190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 * n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 3⌋

end

end A398854.P3278436002184669190

namespace A398854

/-- `floor((5*n²-n)/3)` -/
def P3278436002184669190.Spec : Prop :=
  ∀ n, P3278436002184669190.a n = A398854 n

end A398854

/-! ## A398854.P883505025261807388

`∑[a(n-3)+10]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=8`
-/

namespace A398854.P883505025261807388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 8] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398854.P883505025261807388

namespace A398854

/-- `∑[a(n-3)+10]` -/
def P883505025261807388.Spec : Prop :=
  ∀ n, (P883505025261807388.a n : ℤ) = A398854 n

end A398854

/-! ## A398854.P13581735631934015815

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A398854.P13581735631934015815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398854.P13581735631934015815

namespace A398854

/-- `∑[∑[floor(a(n-3))]]` -/
def P13581735631934015815.Spec : Prop :=
  ∀ n, (P13581735631934015815.a n : ℤ) = A398854 n

end A398854

/-! ## A398854.P13185007297306024268

`A398202(n)-n`
-/

namespace A398854.P13185007297306024268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398202 n - (n : ℤ)

end

end A398854.P13185007297306024268

namespace A398854

/-- `A398202(n)-n` -/
def P13185007297306024268.Spec : Prop :=
  ∀ n, P13185007297306024268.a n = A398854 n

end A398854

/-! ## A398854.P12305254626410557140

`A398858(n)-∑[n]`
-/

namespace A398854.P12305254626410557140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398858 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398854.P12305254626410557140

namespace A398854

/-- `A398858(n)-∑[n]` -/
def P12305254626410557140.Spec : Prop :=
  ∀ n, P12305254626410557140.a n = A398854 n

end A398854

/-! ## A398854.P1065201819074983981

`A298787(n)-Δ[n²]`
-/

namespace A398854.P1065201819074983981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298787 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A398854.P1065201819074983981

namespace A398854

/-- `A298787(n)-Δ[n²]` -/
def P1065201819074983981.Spec : Prop :=
  ∀ n, P1065201819074983981.a n = A398854 n

end A398854

/-! ## A398854.P6087493723118625069

`A397988(n)+A014848(n)`
-/

namespace A398854.P6087493723118625069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397988 n + A014848 n

end

end A398854.P6087493723118625069

namespace A398854

/-- `A397988(n)+A014848(n)` -/
def P6087493723118625069.Spec : Prop :=
  ∀ n, P6087493723118625069.a n = A398854 n

end A398854

/-! ## A398854.P15176730179970683172

`A397980(n)+A161680(n)`
-/

namespace A398854.P15176730179970683172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n + A161680 n

end

end A398854.P15176730179970683172

namespace A398854

/-- `A397980(n)+A161680(n)` -/
def P15176730179970683172.Spec : Prop :=
  ∀ n, P15176730179970683172.a n = A398854 n

end A398854

/-! ## A398854.P15325258372395967748

`A398846(n)+A340648(n)`
-/

namespace A398854.P15325258372395967748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398846 n + A340648 n

end

end A398854.P15325258372395967748

namespace A398854

/-- `A398846(n)+A340648(n)` -/
def P15325258372395967748.Spec : Prop :=
  ∀ n, P15325258372395967748.a n = A398854 n

end A398854

/-! ## A398854.P16531949195417773670

`A398205(n)+A398204(n)`
-/

namespace A398854.P16531949195417773670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398205 n + A398204 n

end

end A398854.P16531949195417773670

namespace A398854

/-- `A398205(n)+A398204(n)` -/
def P16531949195417773670.Spec : Prop :=
  ∀ n, P16531949195417773670.a n = A398854 n

end A398854

/-! ## A398854.P12595439487200860024

`A056108(n)-A008577(n)`
-/

namespace A398854.P12595439487200860024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n - A008577 n

end

end A398854.P12595439487200860024

namespace A398854

/-- `A056108(n)-A008577(n)` -/
def P12595439487200860024.Spec : Prop :=
  ∀ n, P12595439487200860024.a n = A398854 n

end A398854

/-! ## A398854.P13801374354119435039

`A222170(n)-A002264(n)`
-/

namespace A398854.P13801374354119435039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222170 n - A002264 n

end

end A398854.P13801374354119435039

namespace A398854

/-- `A222170(n)-A002264(n)` -/
def P13801374354119435039.Spec : Prop :=
  ∀ n, P13801374354119435039.a n = A398854 n

end A398854

/-! ## A398854.P9548173278521546151

`A049451(n)-A211480(n)`
-/

namespace A398854.P9548173278521546151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n - A211480 n

end

end A398854.P9548173278521546151

namespace A398854

/-- `A049451(n)-A211480(n)` -/
def P9548173278521546151.Spec : Prop :=
  ∀ n, P9548173278521546151.a n = A398854 n

end A398854

/-! ## A398854.P16684449059965644186

`A056109(n)-A212978(n)`
-/

namespace A398854.P16684449059965644186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n - A212978 n

end

end A398854.P16684449059965644186

namespace A398854

/-- `A056109(n)-A212978(n)` -/
def P16684449059965644186.Spec : Prop :=
  ∀ n, P16684449059965644186.a n = A398854 n

end A398854

/-! ## A398854.P6498249679156531385

`A301696(n)-A028387(n)`
-/

namespace A398854.P6498249679156531385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301696 n - A028387 n

end

end A398854.P6498249679156531385

namespace A398854

/-- `A301696(n)-A028387(n)` -/
def P6498249679156531385.Spec : Prop :=
  ∀ n, P6498249679156531385.a n = A398854 n

end A398854

/-! ## A398854.P1715241791249512116

`A005476(n)-A398205(n)`
-/

namespace A398854.P1715241791249512116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - A398205 n

end

end A398854.P1715241791249512116

namespace A398854

/-- `A005476(n)-A398205(n)` -/
def P1715241791249512116.Spec : Prop :=
  ∀ n, P1715241791249512116.a n = A398854 n

end A398854

/-! ## A398854.P7568278780615286222

`A022264(n)-A398857(n)`
-/

namespace A398854.P7568278780615286222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - A398857 n

end

end A398854.P7568278780615286222

namespace A398854

/-- `A022264(n)-A398857(n)` -/
def P7568278780615286222.Spec : Prop :=
  ∀ n, P7568278780615286222.a n = A398854 n

end A398854

/-! ## A398854.P9387222428916440787

`A033428(n)-A397983(n)`
-/

namespace A398854.P9387222428916440787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A397983 n

end

end A398854.P9387222428916440787

namespace A398854

/-- `A033428(n)-A397983(n)` -/
def P9387222428916440787.Spec : Prop :=
  ∀ n, P9387222428916440787.a n = A398854 n

end A398854

/-!
# A398855: Upper (1/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398855, the canonical program `A398855.P4235946344407734571` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398855 has offset 0).

The definition of A398855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398855.P4235946344407734571

`ogf((2x+2x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398855

/-- `ogf((2x+2x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P4235946344407734571.Spec : Prop :=
  ∀ n, P4235946344407734571.a n = A398855 n

theorem P4235946344407734571.correct : P4235946344407734571.Spec := by
  intro n
  simp only [A398855]

end A398855

/-! ## A398855.P14539788829867694709

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=14, a(4)=26`
-/

namespace A398855.P14539788829867694709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 14, 26] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398855.P14539788829867694709

namespace A398855

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P14539788829867694709.Spec : Prop :=
  ∀ n, P14539788829867694709.a n = A398855 n

end A398855

/-! ## A398855.P4185503602903139864

`ceil((5*n²-n)/3)`
-/

namespace A398855.P4185503602903139864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((5 * n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 3⌉

end

end A398855.P4185503602903139864

namespace A398855

/-- `ceil((5*n²-n)/3)` -/
def P4185503602903139864.Spec : Prop :=
  ∀ n, P4185503602903139864.a n = A398855 n

end A398855

/-! ## A398855.P18411329735013876568

`2*∑[comp[∑[gcd(2, n)+1]]]`
-/

namespace A398855.P18411329735013876568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398855.P18411329735013876568

namespace A398855

/-- `2*∑[comp[∑[gcd(2, n)+1]]]` -/
def P18411329735013876568.Spec : Prop :=
  ∀ n, (P18411329735013876568.a n : ℤ) = A398855 n

end A398855

/-! ## A398855.P4729663260497533152

`∑[a(n-3)+10]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A398855.P4729663260497533152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 8] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398855.P4729663260497533152

namespace A398855

/-- `∑[a(n-3)+10]` -/
def P4729663260497533152.Spec : Prop :=
  ∀ n, (P4729663260497533152.a n : ℤ) = A398855 n

end A398855

/-! ## A398855.P17745778322178193263

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A398855.P17745778322178193263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 4, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398855.P17745778322178193263

namespace A398855

/-- `∑[∑[floor(a(n-3))]]` -/
def P17745778322178193263.Spec : Prop :=
  ∀ n, (P17745778322178193263.a n : ℤ) = A398855 n

end A398855

/-! ## A398855.P4073457122037162774

`2*A398205(n)`
-/

namespace A398855.P4073457122037162774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A398205 n

end

end A398855.P4073457122037162774

namespace A398855

/-- `2*A398205(n)` -/
def P4073457122037162774.Spec : Prop :=
  ∀ n, P4073457122037162774.a n = A398855 n

end A398855

/-! ## A398855.P1709012846329669788

`A398203(n)-n`
-/

namespace A398855.P1709012846329669788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398203 n - (n : ℤ)

end

end A398855.P1709012846329669788

namespace A398855

/-- `A398203(n)-n` -/
def P1709012846329669788.Spec : Prop :=
  ∀ n, P1709012846329669788.a n = A398855 n

end A398855

/-! ## A398855.P7281197564354732144

`A398859(n)-∑[n]`
-/

namespace A398855.P7281197564354732144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398859 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398855.P7281197564354732144

namespace A398855

/-- `A398859(n)-∑[n]` -/
def P7281197564354732144.Spec : Prop :=
  ∀ n, P7281197564354732144.a n = A398855 n

end A398855

/-! ## A398855.P8745862754726924403

`A298785(n)-Δ[n²]`
-/

namespace A398855.P8745862754726924403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298785 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A398855.P8745862754726924403

namespace A398855

/-- `A298785(n)-Δ[n²]` -/
def P8745862754726924403.Spec : Prop :=
  ∀ n, P8745862754726924403.a n = A398855 n

end A398855

/-! ## A398855.P14212753756813393254

`A397981(n)+A161680(n)`
-/

namespace A398855.P14212753756813393254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397981 n + A161680 n

end

end A398855.P14212753756813393254

namespace A398855

/-- `A397981(n)+A161680(n)` -/
def P14212753756813393254.Spec : Prop :=
  ∀ n, P14212753756813393254.a n = A398855 n

end A398855

/-! ## A398855.P13682647012983959399

`A005475(n)-A194275(n)`
-/

namespace A398855.P13682647012983959399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A194275 n

end

end A398855.P13682647012983959399

namespace A398855

/-- `A005475(n)-A194275(n)` -/
def P13682647012983959399.Spec : Prop :=
  ∀ n, P13682647012983959399.a n = A398855 n

end A398855

/-! ## A398855.P5479450219626794046

`A058331(n)-A208994(n)`
-/

namespace A398855.P5479450219626794046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n - A208994 n

end

end A398855.P5479450219626794046

namespace A398855

/-- `A058331(n)-A208994(n)` -/
def P5479450219626794046.Spec : Prop :=
  ∀ n, P5479450219626794046.a n = A398855 n

end A398855

/-! ## A398855.P2360036160473271946

`A301695(n)-A028387(n)`
-/

namespace A398855.P2360036160473271946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301695 n - A028387 n

end

end A398855.P2360036160473271946

namespace A398855

/-- `A301695(n)-A028387(n)` -/
def P2360036160473271946.Spec : Prop :=
  ∀ n, P2360036160473271946.a n = A398855 n

end A398855

/-! ## A398855.P15503076026572305407

`A005476(n)-A398204(n)`
-/

namespace A398855.P15503076026572305407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - A398204 n

end

end A398855.P15503076026572305407

namespace A398855

/-- `A005476(n)-A398204(n)` -/
def P15503076026572305407.Spec : Prop :=
  ∀ n, P15503076026572305407.a n = A398855 n

end A398855

/-! ## A398855.P13515907148483720728

`A022264(n)-A398856(n)`
-/

namespace A398855.P13515907148483720728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - A398856 n

end

end A398855.P13515907148483720728

namespace A398855

/-- `A022264(n)-A398856(n)` -/
def P13515907148483720728.Spec : Prop :=
  ∀ n, P13515907148483720728.a n = A398855 n

end A398855

/-! ## A398855.P44626807743824599

`A033428(n)-A397982(n)`
-/

namespace A398855.P44626807743824599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A397982 n

end

end A398855.P44626807743824599

namespace A398855

/-- `A033428(n)-A397982(n)` -/
def P44626807743824599.Spec : Prop :=
  ∀ n, P44626807743824599.a n = A398855 n

end A398855

/-! ## A398855.P8841275779856784882

`A389614(n)-A236343(n)`
-/

namespace A398855.P8841275779856784882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389614 n - A236343 n

end

end A398855.P8841275779856784882

namespace A398855

/-- `A389614(n)-A236343(n)` -/
def P8841275779856784882.Spec : Prop :=
  ∀ n, P8841275779856784882.a n = A398855 n

end A398855

/-! ## A398855.P8884817171942186805

`A147623(n)+A128422(n+1)`
-/

namespace A398855.P8884817171942186805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n + A128422 (n + 1)

end

end A398855.P8884817171942186805

namespace A398855

/-- `A147623(n)+A128422(n+1)` -/
def P8884817171942186805.Spec : Prop :=
  ∀ n, P8884817171942186805.a n = A398855 n

end A398855

/-! ## A398855.P13543074707751332371

`A014105(n)-A071408(n+1)`
-/

namespace A398855.P13543074707751332371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A071408 (n + 1)

end

end A398855.P13543074707751332371

namespace A398855

/-- `A014105(n)-A071408(n+1)` -/
def P13543074707751332371.Spec : Prop :=
  ∀ n, P13543074707751332371.a n = A398855 n

end A398855

/-!
# A398856: Lower (2/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398856, the canonical program `A398856.P13260625199673236660` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398856 has offset 0).

The definition of A398856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398856.P13260625199673236660

`ogf((x+5x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398856

/-- `ogf((x+5x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P13260625199673236660.Spec : Prop :=
  ∀ n, P13260625199673236660.a n = A398856 n

theorem P13260625199673236660.correct : P13260625199673236660.Spec := by
  intro n
  simp only [A398856]

end A398856

/-! ## A398856.P11705879247628293093

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=16, a(4)=28`
-/

namespace A398856.P11705879247628293093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7, 16, 28] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398856.P11705879247628293093

namespace A398856

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P11705879247628293093.Spec : Prop :=
  ∀ n, P11705879247628293093.a n = A398856 n

end A398856

/-! ## A398856.P2987753294959749341

`floor(2*n²-∑[n]/3)`
-/

namespace A398856.P2987753294959749341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n ^ 2 : ℚ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A398856.P2987753294959749341

namespace A398856

/-- `floor(2*n²-∑[n]/3)` -/
def P2987753294959749341.Spec : Prop :=
  ∀ n, P2987753294959749341.a n = A398856 n

end A398856

/-! ## A398856.P12582903923105516062

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A398856.P12582903923105516062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398856.P12582903923105516062

namespace A398856

/-- `∑[∑[floor(a(n-3))]]` -/
def P12582903923105516062.Spec : Prop :=
  ∀ n, (P12582903923105516062.a n : ℤ) = A398856 n

end A398856

/-! ## A398856.P12026691393285795992

`A398204(n)+n²`
-/

namespace A398856.P12026691393285795992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398204 n + (n ^ 2 : ℤ)

end

end A398856.P12026691393285795992

namespace A398856

/-- `A398204(n)+n²` -/
def P12026691393285795992.Spec : Prop :=
  ∀ n, P12026691393285795992.a n = A398856 n

end A398856

/-! ## A398856.P10814552126387348753

`n²-n+A194275(n)`
-/

namespace A398856.P10814552126387348753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + A194275 n

end

end A398856.P10814552126387348753

namespace A398856

/-- `n²-n+A194275(n)` -/
def P10814552126387348753.Spec : Prop :=
  ∀ n, P10814552126387348753.a n = A398856 n

end A398856

/-! ## A398856.P4218336866882460303

`A397982(n)+A161680(n)`
-/

namespace A398856.P4218336866882460303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397982 n + A161680 n

end

end A398856.P4218336866882460303

namespace A398856

/-- `A397982(n)+A161680(n)` -/
def P4218336866882460303.Spec : Prop :=
  ∀ n, P4218336866882460303.a n = A398856 n

end A398856

/-! ## A398856.P1258730169770721784

`A064225(n)-A301695(n)`
-/

namespace A398856.P1258730169770721784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - A301695 n

end

end A398856.P1258730169770721784

namespace A398856

/-- `A064225(n)-A301695(n)` -/
def P1258730169770721784.Spec : Prop :=
  ∀ n, P1258730169770721784.a n = A398856 n

end A398856

/-! ## A398856.P5128869548742558792

`A398058(n)-A004396(n)`
-/

namespace A398856.P5128869548742558792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398058 n - A004396 n

end

end A398856.P5128869548742558792

namespace A398856

/-- `A398058(n)-A004396(n)` -/
def P5128869548742558792.Spec : Prop :=
  ∀ n, P5128869548742558792.a n = A398856 n

end A398856

/-! ## A398856.P7546258769777832645

`A016742(n)-A398859(n)`
-/

namespace A398856.P7546258769777832645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A398859 n

end

end A398856.P7546258769777832645

namespace A398856

/-- `A016742(n)-A398859(n)` -/
def P7546258769777832645.Spec : Prop :=
  ∀ n, P7546258769777832645.a n = A398856 n

end A398856

/-! ## A398856.P17057273205096215516

`A022265(n)-A398203(n)`
-/

namespace A398856.P17057273205096215516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - A398203 n

end

end A398856.P17057273205096215516

namespace A398856

/-- `A022265(n)-A398203(n)` -/
def P17057273205096215516.Spec : Prop :=
  ∀ n, P17057273205096215516.a n = A398856 n

end A398856

/-! ## A398856.P7748575784641564808

`A022264(n)-A398855(n)`
-/

namespace A398856.P7748575784641564808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - A398855 n

end

end A398856.P7748575784641564808

namespace A398856

/-- `A022264(n)-A398855(n)` -/
def P7748575784641564808.Spec : Prop :=
  ∀ n, P7748575784641564808.a n = A398856 n

end A398856

/-! ## A398856.P10337695171461374990

`A033428(n)-A397981(n)`
-/

namespace A398856.P10337695171461374990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A397981 n

end

end A398856.P10337695171461374990

namespace A398856

/-- `A033428(n)-A397981(n)` -/
def P10337695171461374990.Spec : Prop :=
  ∀ n, P10337695171461374990.a n = A398856 n

end A398856

/-! ## A398856.P2849329463117499502

`A389615(n)-A298785(n)`
-/

namespace A398856.P2849329463117499502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n - A298785 n

end

end A398856.P2849329463117499502

namespace A398856

/-- `A389615(n)-A298785(n)` -/
def P2849329463117499502.Spec : Prop :=
  ∀ n, P2849329463117499502.a n = A398856 n

end A398856

/-! ## A398856.P10485009115982842368

`A398059(n)-A302402(n)`
-/

namespace A398856.P10485009115982842368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398059 n - A302402 n

end

end A398856.P10485009115982842368

namespace A398856

/-- `A398059(n)-A302402(n)` -/
def P10485009115982842368.Spec : Prop :=
  ∀ n, P10485009115982842368.a n = A398856 n

end A398856

/-! ## A398856.P15685058842266770948

`A298025(n)-A034856(n+1)`
-/

namespace A398856.P15685058842266770948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298025 n - A034856 (n + 1)

end

end A398856.P15685058842266770948

namespace A398856

/-- `A298025(n)-A034856(n+1)` -/
def P15685058842266770948.Spec : Prop :=
  ∀ n, P15685058842266770948.a n = A398856 n

end A398856

/-! ## A398856.P16999998711936708548

`A222170(n)+A007997(n+3)`
-/

namespace A398856.P16999998711936708548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222170 n + A007997 (n + 3)

end

end A398856.P16999998711936708548

namespace A398856

/-- `A222170(n)+A007997(n+3)` -/
def P16999998711936708548.Spec : Prop :=
  ∀ n, P16999998711936708548.a n = A398856 n

end A398856

/-! ## A398856.P17062388408014704980

`2*A397980(n)-A000217(n)`
-/

namespace A398856.P17062388408014704980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A397980 n - A000217 n

end

end A398856.P17062388408014704980

namespace A398856

/-- `2*A397980(n)-A000217(n)` -/
def P17062388408014704980.Spec : Prop :=
  ∀ n, P17062388408014704980.a n = A398856 n

end A398856

/-! ## A398856.P1646618698156523640

`2*A398854(n)-A000326(n)`
-/

namespace A398856.P1646618698156523640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A398854 n - A000326 n

end

end A398856.P1646618698156523640

namespace A398856

/-- `2*A398854(n)-A000326(n)` -/
def P1646618698156523640.Spec : Prop :=
  ∀ n, P1646618698156523640.a n = A398856 n

end A398856

/-! ## A398856.P6818577738253162392

`A397982(n)+n²-A000217(n)`
-/

namespace A398856.P6818577738253162392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397982 n + (n ^ 2 : ℤ) - A000217 n

end

end A398856.P6818577738253162392

namespace A398856

/-- `A397982(n)+n²-A000217(n)` -/
def P6818577738253162392.Spec : Prop :=
  ∀ n, P6818577738253162392.a n = A398856 n

end A398856

/-!
# A398857: Upper (2/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398857, the canonical program `A398857.P16620617964778608233` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398857 has offset 0).

The definition of A398857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398857.P16620617964778608233

`ogf((2x+3x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398857

/-- `ogf((2x+3x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P16620617964778608233.Spec : Prop :=
  ∀ n, P16620617964778608233.a n = A398857 n

theorem P16620617964778608233.correct : P16620617964778608233.Spec := by
  intro n
  simp only [A398857]

end A398857

/-! ## A398857.P11450131063572875446

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=16, a(4)=29`
-/

namespace A398857.P11450131063572875446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 16, 29] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398857.P11450131063572875446

namespace A398857

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P11450131063572875446.Spec : Prop :=
  ∀ n, P11450131063572875446.a n = A398857 n

end A398857

/-! ## A398857.P17103670766527691077

`2*n²-floor(∑[n]/3)`
-/

namespace A398857.P17103670766527691077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A398857.P17103670766527691077

namespace A398857

/-- `2*n²-floor(∑[n]/3)` -/
def P17103670766527691077.Spec : Prop :=
  ∀ n, P17103670766527691077.a n = A398857 n

end A398857

/-! ## A398857.P1569694455748622569

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A398857.P1569694455748622569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398857.P1569694455748622569

namespace A398857

/-- `∑[∑[floor(a(n-3))]]` -/
def P1569694455748622569.Spec : Prop :=
  ∀ n, (P1569694455748622569.a n : ℤ) = A398857 n

end A398857

/-! ## A398857.P14827136471680203734

`(ceil(2*n²+∑[n/3])+C(n, 2)+n²)/2`
-/

namespace A398857.P14827136471680203734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(2 * n ^ 2 : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j⌉ + (Nat.choose n 2 + n ^ 2 : ℤ) : ℚ) / 2

end

end A398857.P14827136471680203734

namespace A398857

/-- `(ceil(2*n²+∑[n/3])+C(n, 2)+n²)/2` -/
def P14827136471680203734.Spec : Prop :=
  ∀ n, P14827136471680203734.a n = (A398857 n : ℚ)

end A398857

/-! ## A398857.P5966056174708250761

`ceil(A022268(n)/3)`
-/

namespace A398857.P5966056174708250761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022268 n : ℚ) / 3⌉

end

end A398857.P5966056174708250761

namespace A398857

/-- `ceil(A022268(n)/3)` -/
def P5966056174708250761.Spec : Prop :=
  ∀ n, P5966056174708250761.a n = A398857 n

end A398857

/-! ## A398857.P18271336269193439894

`A064225(n)%A301696(n)`
-/

namespace A398857.P18271336269193439894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064225 n) (A301696 n)

end

end A398857.P18271336269193439894

namespace A398857

/-- `A064225(n)%A301696(n)` -/
def P18271336269193439894.Spec : Prop :=
  ∀ n, P18271336269193439894.a n = A398857 n

end A398857

/-! ## A398857.P4722533633696246630

`round((A033991(2*n)+∑[n])/9)`
-/

namespace A398857.P4722533633696246630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033991 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 9)

end

end A398857.P4722533633696246630

namespace A398857

/-- `round((A033991(2*n)+∑[n])/9)` -/
def P4722533633696246630.Spec : Prop :=
  ∀ n, P4722533633696246630.a n = A398857 n

end A398857

/-! ## A398857.P13642836135772758568

`A004396(A398841(n))`
-/

namespace A398857.P13642836135772758568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A398841 n).toNat

end

end A398857.P13642836135772758568

namespace A398857

/-- `A004396(A398841(n))` -/
def P13642836135772758568.Spec : Prop :=
  ∀ n, P13642836135772758568.a n = A398857 n

end A398857

/-!
# A398858: Lower (4/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398858, the canonical program `A398858.P16912354617135748286` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398858 has offset 0).

The definition of A398858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398858.P16912354617135748286

`ogf((2x+5x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398858

/-- `ogf((2x+5x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P16912354617135748286.Spec : Prop :=
  ∀ n, P16912354617135748286.a n = A398858 n

theorem P16912354617135748286.correct : P16912354617135748286.Spec := by
  intro n
  simp only [A398858]

end A398858

/-! ## A398858.P415669949259525374

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=20, a(4)=35`
-/

namespace A398858.P415669949259525374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 9, 20, 35] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398858.P415669949259525374

namespace A398858

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P415669949259525374.Spec : Prop :=
  ∀ n, P415669949259525374.a n = A398858 n

end A398858

/-! ## A398858.P6387876887305201856

`floor((n+13*n²)/6)`
-/

namespace A398858.P6387876887305201856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 13 * n ^ 2 : ℚ) / 6⌋

end

end A398858.P6387876887305201856

namespace A398858

/-- `floor((n+13*n²)/6)` -/
def P6387876887305201856.Spec : Prop :=
  ∀ n, P6387876887305201856.a n = A398858 n

end A398858

/-! ## A398858.P3608076479626922096

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=5, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A398858.P3608076479626922096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 4, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398858.P3608076479626922096

namespace A398858

/-- `∑[∑[floor(a(n-3))]]` -/
def P3608076479626922096.Spec : Prop :=
  ∀ n, (P3608076479626922096.a n : ℤ) = A398858 n

end A398858

/-! ## A398858.P12532408907552134720

`round(A022271(n)/3)`
-/

namespace A398858.P12532408907552134720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022271 n : ℚ) / 3)

end

end A398858.P12532408907552134720

namespace A398858

/-- `round(A022271(n)/3)` -/
def P12532408907552134720.Spec : Prop :=
  ∀ n, P12532408907552134720.a n = A398858 n

end A398858

/-! ## A398858.P7322548486576436137

`A397980(n)+n²`
-/

namespace A398858.P7322548486576436137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n + (n ^ 2 : ℤ)

end

end A398858.P7322548486576436137

namespace A398858

/-- `A397980(n)+n²` -/
def P7322548486576436137.Spec : Prop :=
  ∀ n, P7322548486576436137.a n = A398858 n

end A398858

/-! ## A398858.P6914349416506270736

`A398854(n)+∑[n]`
-/

namespace A398858.P6914349416506270736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398854 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398858.P6914349416506270736

namespace A398858

/-- `A398854(n)+∑[n]` -/
def P6914349416506270736.Spec : Prop :=
  ∀ n, P6914349416506270736.a n = A398858 n

end A398858

/-! ## A398858.P9933167998860711708

`A056220(n)+A008748(n)`
-/

namespace A398858.P9933167998860711708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + A008748 n

end

end A398858.P9933167998860711708

namespace A398858

/-- `A056220(n)+A008748(n)` -/
def P9933167998860711708.Spec : Prop :=
  ∀ n, P9933167998860711708.a n = A398858 n

end A398858

/-! ## A398858.P18151840189866753080

`A398836(n)+A071619(n)`
-/

namespace A398858.P18151840189866753080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398836 n + A071619 n

end

end A398858.P18151840189866753080

namespace A398858

/-- `A398836(n)+A071619(n)` -/
def P18151840189866753080.Spec : Prop :=
  ∀ n, P18151840189866753080.a n = A398858 n

end A398858

/-! ## A398858.P8915601164705423659

`A389142(n)+A113422(n)`
-/

namespace A398858.P8915601164705423659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389142 n + A113422 n

end

end A398858.P8915601164705423659

namespace A398858

/-- `A389142(n)+A113422(n)` -/
def P8915601164705423659.Spec : Prop :=
  ∀ n, P8915601164705423659.a n = A398858 n

end A398858

/-! ## A398858.P17806691663888924584

`A398202(n)+A161680(n)`
-/

namespace A398858.P17806691663888924584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398202 n + A161680 n

end

end A398858.P17806691663888924584

namespace A398858

/-- `A398202(n)+A161680(n)` -/
def P17806691663888924584.Spec : Prop :=
  ∀ n, P17806691663888924584.a n = A398858 n

end A398858

/-! ## A398858.P3930046219313246533

`A389143(n)+A222170(n)`
-/

namespace A398858.P3930046219313246533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389143 n + A222170 n

end

end A398858.P3930046219313246533

namespace A398858

/-- `A389143(n)+A222170(n)` -/
def P3930046219313246533.Spec : Prop :=
  ∀ n, P3930046219313246533.a n = A398858 n

end A398858

/-! ## A398858.P2553439856804083920

`A398204(n)+A397983(n)`
-/

namespace A398858.P2553439856804083920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398204 n + A397983 n

end

end A398858.P2553439856804083920

namespace A398858

/-- `A398204(n)+A397983(n)` -/
def P2553439856804083920.Spec : Prop :=
  ∀ n, P2553439856804083920.a n = A398858 n

end A398858

/-! ## A398858.P14351625971981309801

`A398205(n)+A397982(n)`
-/

namespace A398858.P14351625971981309801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398205 n + A397982 n

end

end A398858.P14351625971981309801

namespace A398858

/-- `A398205(n)+A397982(n)` -/
def P14351625971981309801.Spec : Prop :=
  ∀ n, P14351625971981309801.a n = A398858 n

end A398858

/-! ## A398858.P358575288276433689

`A398846(n)+A397979(n)`
-/

namespace A398858.P358575288276433689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398846 n + A397979 n

end

end A398858.P358575288276433689

namespace A398858

/-- `A398846(n)+A397979(n)` -/
def P358575288276433689.Spec : Prop :=
  ∀ n, P358575288276433689.a n = A398858 n

end A398858

/-! ## A398858.P17519926906743952983

`A186029(n)-A211480(n)`
-/

namespace A398858.P17519926906743952983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n - A211480 n

end

end A398858.P17519926906743952983

namespace A398858

/-- `A186029(n)-A211480(n)` -/
def P17519926906743952983.Spec : Prop :=
  ∀ n, P17519926906743952983.a n = A398858 n

end A398858

/-! ## A398858.P9491002617526745505

`A389615(n)-A008577(n)`
-/

namespace A398858.P9491002617526745505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n - A008577 n

end

end A398858.P9491002617526745505

namespace A398858

/-- `A389615(n)-A008577(n)` -/
def P9491002617526745505.Spec : Prop :=
  ∀ n, P9491002617526745505.a n = A398858 n

end A398858

/-! ## A398858.P6950624715733130069

`A016742(n)-A398857(n)`
-/

namespace A398858.P6950624715733130069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A398857 n

end

end A398858.P6950624715733130069

namespace A398858

/-- `A016742(n)-A398857(n)` -/
def P6950624715733130069.Spec : Prop :=
  ∀ n, P6950624715733130069.a n = A398858 n

end A398858

/-! ## A398858.P9514507292851359660

`A022265(n)-A397983(n)`
-/

namespace A398858.P9514507292851359660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - A397983 n

end

end A398858.P9514507292851359660

namespace A398858

/-- `A022265(n)-A397983(n)` -/
def P9514507292851359660.Spec : Prop :=
  ∀ n, P9514507292851359660.a n = A398858 n

end A398858

/-! ## A398858.P13087216865466179944

`A064225(n)-A365418(n)`
-/

namespace A398858.P13087216865466179944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - A365418 n

end

end A398858.P13087216865466179944

namespace A398858

/-- `A064225(n)-A365418(n)` -/
def P13087216865466179944.Spec : Prop :=
  ∀ n, P13087216865466179944.a n = A398858 n

end A398858

/-!
# A398859: Upper (4/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398859, the canonical program `A398859.P10386935408754022732` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398859 has offset 0).

The definition of A398859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398859.P10386935408754022732

`ogf((3x+3x^2+5x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398859

/-- `ogf((3x+3x^2+5x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P10386935408754022732.Spec : Prop :=
  ∀ n, P10386935408754022732.a n = A398859 n

theorem P10386935408754022732.correct : P10386935408754022732.Spec := by
  intro n
  simp only [A398859]

end A398859

/-! ## A398859.P17725317400783869383

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=20, a(4)=36`
-/

namespace A398859.P17725317400783869383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 9, 20, 36] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398859.P17725317400783869383

namespace A398859

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P17725317400783869383.Spec : Prop :=
  ∀ n, P17725317400783869383.a n = A398859 n

end A398859

/-! ## A398859.P5959336176367883272

`ceil(2*n²+∑[n/3])`
-/

namespace A398859.P5959336176367883272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n ^ 2 : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398859.P5959336176367883272

namespace A398859

/-- `ceil(2*n²+∑[n/3])` -/
def P5959336176367883272.Spec : Prop :=
  ∀ n, P5959336176367883272.a n = A398859 n

end A398859

/-! ## A398859.P4180198505305944528

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=5, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A398859.P4180198505305944528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 5, 5] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398859.P4180198505305944528

namespace A398859

/-- `∑[∑[floor(a(n-3))]]` -/
def P4180198505305944528.Spec : Prop :=
  ∀ n, (P4180198505305944528.a n : ℤ) = A398859 n

end A398859

/-! ## A398859.P12015358614045715255

`ceil(C(n+1, 2)/3)+2*n²`
-/

namespace A398859.P12015358614045715255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) 2 : ℚ) / 3⌉ + (2 * n ^ 2 : ℤ)

end

end A398859.P12015358614045715255

namespace A398859

/-- `ceil(C(n+1, 2)/3)+2*n²` -/
def P12015358614045715255.Spec : Prop :=
  ∀ n, P12015358614045715255.a n = A398859 n

end A398859

/-! ## A398859.P18232704372042236645

`A397981(n)+n²`
-/

namespace A398859.P18232704372042236645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397981 n + (n ^ 2 : ℤ)

end

end A398859.P18232704372042236645

namespace A398859

/-- `A397981(n)+n²` -/
def P18232704372042236645.Spec : Prop :=
  ∀ n, P18232704372042236645.a n = A398859 n

end A398859

/-! ## A398859.P14144322862150304852

`A398855(n)+∑[n]`
-/

namespace A398859.P14144322862150304852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398855 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398859.P14144322862150304852

namespace A398859

/-- `A398855(n)+∑[n]` -/
def P14144322862150304852.Spec : Prop :=
  ∀ n, P14144322862150304852.a n = A398859 n

end A398859

/-! ## A398859.P9819152086142812482

`A398203(n)+A161680(n)`
-/

namespace A398859.P9819152086142812482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398203 n + A161680 n

end

end A398859.P9819152086142812482

namespace A398859

/-- `A398203(n)+A161680(n)` -/
def P9819152086142812482.Spec : Prop :=
  ∀ n, P9819152086142812482.a n = A398859 n

end A398859

/-! ## A398859.P459656311064945973

`A398205(n)+A397983(n)`
-/

namespace A398859.P459656311064945973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398205 n + A397983 n

end

end A398859.P459656311064945973

namespace A398859

/-- `A398205(n)+A397983(n)` -/
def P459656311064945973.Spec : Prop :=
  ∀ n, P459656311064945973.a n = A398859 n

end A398859

/-! ## A398859.P11262205994061473648

`A049451(n)-A194275(n)`
-/

namespace A398859.P11262205994061473648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n - A194275 n

end

end A398859.P11262205994061473648

namespace A398859

/-- `A049451(n)-A194275(n)` -/
def P11262205994061473648.Spec : Prop :=
  ∀ n, P11262205994061473648.a n = A398859 n

end A398859

/-! ## A398859.P7124631210695182285

`A116668(n)-A208994(n)`
-/

namespace A398859.P7124631210695182285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - A208994 n

end

end A398859.P7124631210695182285

namespace A398859

/-- `A116668(n)-A208994(n)` -/
def P7124631210695182285.Spec : Prop :=
  ∀ n, P7124631210695182285.a n = A398859 n

end A398859

/-! ## A398859.P5022759522109272780

`A064225(n)-A298025(n)`
-/

namespace A398859.P5022759522109272780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - A298025 n

end

end A398859.P5022759522109272780

namespace A398859

/-- `A064225(n)-A298025(n)` -/
def P5022759522109272780.Spec : Prop :=
  ∀ n, P5022759522109272780.a n = A398859 n

end A398859

/-! ## A398859.P11920647446078237074

`A016742(n)-A398856(n)`
-/

namespace A398859.P11920647446078237074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A398856 n

end

end A398859.P11920647446078237074

namespace A398859

/-- `A016742(n)-A398856(n)` -/
def P11920647446078237074.Spec : Prop :=
  ∀ n, P11920647446078237074.a n = A398859 n

end A398859

/-! ## A398859.P6626914380309218410

`A022265(n)-A397982(n)`
-/

namespace A398859.P6626914380309218410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - A397982 n

end

end A398859.P6626914380309218410

namespace A398859

/-- `A022265(n)-A397982(n)` -/
def P6626914380309218410.Spec : Prop :=
  ∀ n, P6626914380309218410.a n = A398859 n

end A398859

/-! ## A398859.P15854211240784778556

`A033428(n)-A398204(n)`
-/

namespace A398859.P15854211240784778556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A398204 n

end

end A398859.P15854211240784778556

namespace A398859

/-- `A033428(n)-A398204(n)` -/
def P15854211240784778556.Spec : Prop :=
  ∀ n, P15854211240784778556.a n = A398859 n

end A398859

/-! ## A398859.P16242748453584559600

`A398059(n)+A128422(n+1)`
-/

namespace A398859.P16242748453584559600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398059 n + A128422 (n + 1)

end

end A398859.P16242748453584559600

namespace A398859

/-- `A398059(n)+A128422(n+1)` -/
def P16242748453584559600.Spec : Prop :=
  ∀ n, P16242748453584559600.a n = A398859 n

end A398859

/-! ## A398859.P2784312351594773109

`A121471(n+1)-A008806(n)`
-/

namespace A398859.P2784312351594773109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121471 (n + 1) - A008806 n

end

end A398859.P2784312351594773109

namespace A398859

/-- `A121471(n+1)-A008806(n)` -/
def P2784312351594773109.Spec : Prop :=
  ∀ n, P2784312351594773109.a n = A398859 n

end A398859

/-! ## A398859.P12587802522813509982

`A147875(n)-A071408(n+1)`
-/

namespace A398859.P12587802522813509982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - A071408 (n + 1)

end

end A398859.P12587802522813509982

namespace A398859

/-- `A147875(n)-A071408(n+1)` -/
def P12587802522813509982.Spec : Prop :=
  ∀ n, P12587802522813509982.a n = A398859 n

end A398859

/-! ## A398859.P16762992302398990837

`A301695(n)-A034856(n+1)`
-/

namespace A398859.P16762992302398990837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301695 n - A034856 (n + 1)

end

end A398859.P16762992302398990837

namespace A398859

/-- `A301695(n)-A034856(n+1)` -/
def P16762992302398990837.Spec : Prop :=
  ∀ n, P16762992302398990837.a n = A398859 n

end A398859

/-! ## A398859.P12254678516279897918

`2*A398205(n)+A000217(n)`
-/

namespace A398859.P12254678516279897918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A398205 n + A000217 n

end

end A398859.P12254678516279897918

namespace A398859

/-- `2*A398205(n)+A000217(n)` -/
def P12254678516279897918.Spec : Prop :=
  ∀ n, P12254678516279897918.a n = A398859 n

end A398859

/-!
# A398860: Lower (3/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398860, the canonical program `A398860.P9237099235835428353` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398860 has offset 0).

The definition of A398860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398860.P9237099235835428353

`floor(n*(9*n+1)/4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398860

/-- `floor(n*(9*n+1)/4)` -/
def P9237099235835428353.Spec : Prop :=
  ∀ n, P9237099235835428353.a n = A398860 n

theorem P9237099235835428353.correct : P9237099235835428353.Spec := by
  intro n
  simp only [A398860]

end A398860

/-! ## A398860.P18261545805140209844

`ogf((2x+3x^2+2x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398860.P18261545805140209844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 2, 2] [1, -3, 4, -4, 3, -1] n

end

end A398860.P18261545805140209844

namespace A398860

/-- `ogf((2x+3x^2+2x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P18261545805140209844.Spec : Prop :=
  ∀ n, P18261545805140209844.a n = A398860 n

end A398860

/-! ## A398860.P15897526599503253343

`∑[∑[char[or(2, n)]]]+2*n²`
-/

namespace A398860.P15897526599503253343
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n ^ 2

end

end A398860.P15897526599503253343

namespace A398860

/-- `∑[∑[char[or(2, n)]]]+2*n²` -/
def P15897526599503253343.Spec : Prop :=
  ∀ n, (P15897526599503253343.a n : ℤ) = A398860 n

end A398860

/-! ## A398860.P2764846466553539446

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=2, a(2)=5, a(3)=5, a(4)=4, a(5)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A398860.P2764846466553539446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 5, 4, 4] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398860.P2764846466553539446

namespace A398860

/-- `∑[∑[floor(a(n-4))]]` -/
def P2764846466553539446.Spec : Prop :=
  ∀ n, (P2764846466553539446.a n : ℤ) = A398860 n

end A398860

/-! ## A398860.P15222657880160130993

`and(C(n+1, 2)+(2*n)², -2)/2`
-/

namespace A398860.P15222657880160130993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (Nat.choose (n + 1) 2 + (2 * n) ^ 2 : ℤ) (-2) : ℚ) / 2

end

end A398860.P15222657880160130993

namespace A398860

/-- `and(C(n+1, 2)+(2*n)², -2)/2` -/
def P15222657880160130993.Spec : Prop :=
  ∀ n, P15222657880160130993.a n = (A398860 n : ℚ)

end A398860

/-! ## A398860.P5979440064426155599

`C(9*n+1, 2)/9-ceil(n*(9*n+1)/4)`
-/

namespace A398860.P5979440064426155599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (9 * n + 1) 2 : ℚ) / 9 - (⌈(n * (9 * n + 1) : ℚ) / 4⌉ : ℚ)

end

end A398860.P5979440064426155599

namespace A398860

/-- `C(9*n+1, 2)/9-ceil(n*(9*n+1)/4)` -/
def P5979440064426155599.Spec : Prop :=
  ∀ n, P5979440064426155599.a n = (A398860 n : ℚ)

end A398860

/-! ## A398860.P12123284519579971862

`A397978(n)+n²`
-/

namespace A398860.P12123284519579971862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n + (n ^ 2 : ℤ)

end

end A398860.P12123284519579971862

namespace A398860

/-- `A397978(n)+n²` -/
def P12123284519579971862.Spec : Prop :=
  ∀ n, P12123284519579971862.a n = A398860 n

end A398860

/-! ## A398860.P9698427132564388103

`A398852(n)+∑[n]`
-/

namespace A398860.P9698427132564388103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398852 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398860.P9698427132564388103

namespace A398860

/-- `A398852(n)+∑[n]` -/
def P9698427132564388103.Spec : Prop :=
  ∀ n, P9698427132564388103.a n = A398860 n

end A398860

/-! ## A398860.P6393749211271053515

`A301294(n)-Δ[n²]`
-/

namespace A398860.P6393749211271053515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301294 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A398860.P6393749211271053515

namespace A398860

/-- `A301294(n)-Δ[n²]` -/
def P6393749211271053515.Spec : Prop :=
  ∀ n, P6393749211271053515.a n = A398860 n

end A398860

/-! ## A398860.P9036986673771647893

`A231559(n)+A005449(n)`
-/

namespace A398860.P9036986673771647893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + A005449 n

end

end A398860.P9036986673771647893

namespace A398860

/-- `A231559(n)+A005449(n)` -/
def P9036986673771647893.Spec : Prop :=
  ∀ n, P9036986673771647893.a n = A398860 n

end A398860

/-! ## A398860.P4729366661624155234

`A281026(n)+A000326(n)`
-/

namespace A398860.P4729366661624155234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + A000326 n

end

end A398860.P4729366661624155234

namespace A398860

/-- `A281026(n)+A000326(n)` -/
def P4729366661624155234.Spec : Prop :=
  ∀ n, P4729366661624155234.a n = A398860 n

end A398860

/-! ## A398860.P14062922563727919303

`A398842(n)+A005563(n)`
-/

namespace A398860.P14062922563727919303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398842 n + A005563 n

end

end A398860.P14062922563727919303

namespace A398860

/-- `A398842(n)+A005563(n)` -/
def P14062922563727919303.Spec : Prop :=
  ∀ n, P14062922563727919303.a n = A398860 n

end A398860

/-! ## A398860.P12047820570900842596

`A397986(n)+A113422(n)`
-/

namespace A398860.P12047820570900842596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397986 n + A113422 n

end

end A398860.P12047820570900842596

namespace A398860

/-- `A397986(n)+A113422(n)` -/
def P12047820570900842596.Spec : Prop :=
  ∀ n, P12047820570900842596.a n = A398860 n

end A398860

/-! ## A398860.P1617327546127090360

`A397984(n)+A161680(n)`
-/

namespace A398860.P1617327546127090360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397984 n + A161680 n

end

end A398860.P1617327546127090360

namespace A398860

/-- `A397984(n)+A161680(n)` -/
def P1617327546127090360.Spec : Prop :=
  ∀ n, P1617327546127090360.a n = A398860 n

end A398860

/-! ## A398860.P17086794385558057362

`A398846(n)+A397983(n)`
-/

namespace A398860.P17086794385558057362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398846 n + A397983 n

end

end A398860.P17086794385558057362

namespace A398860

/-- `A398846(n)+A397983(n)` -/
def P17086794385558057362.Spec : Prop :=
  ∀ n, P17086794385558057362.a n = A398860 n

end A398860

/-! ## A398860.P5620721736129360521

`A064225(n)-A301292(n)`
-/

namespace A398860.P5620721736129360521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - A301292 n

end

end A398860.P5620721736129360521

namespace A398860

/-- `A064225(n)-A301292(n)` -/
def P5620721736129360521.Spec : Prop :=
  ∀ n, P5620721736129360521.a n = A398860 n

end A398860

/-! ## A398860.P1645320903437421948

`A033428(n)-A340648(n)`
-/

namespace A398860.P1645320903437421948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A340648 n

end

end A398860.P1645320903437421948

namespace A398860

/-- `A033428(n)-A340648(n)` -/
def P1645320903437421948.Spec : Prop :=
  ∀ n, P1645320903437421948.a n = A398860 n

end A398860

/-! ## A398860.P3345813194488461276

`A007742(n)-A397985(n)`
-/

namespace A398860.P3345813194488461276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n - A397985 n

end

end A398860.P3345813194488461276

namespace A398860

/-- `A007742(n)-A397985(n)` -/
def P3345813194488461276.Spec : Prop :=
  ∀ n, P3345813194488461276.a n = A398860 n

end A398860

/-! ## A398860.P13601438913134159641

`A398663(n)-A007290(n)`
-/

namespace A398860.P13601438913134159641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398663 n - A007290 n

end

end A398860.P13601438913134159641

namespace A398860

/-- `A398663(n)-A007290(n)` -/
def P13601438913134159641.Spec : Prop :=
  ∀ n, P13601438913134159641.a n = A398860 n

end A398860

/-! ## A398860.P2451985415989271055

`A016742(n)-A398853(n)`
-/

namespace A398860.P2451985415989271055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A398853 n

end

end A398860.P2451985415989271055

namespace A398860

/-- `A016742(n)-A398853(n)` -/
def P2451985415989271055.Spec : Prop :=
  ∀ n, P2451985415989271055.a n = A398860 n

end A398860

/-!
# A398861: Upper (3/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

The programs for A398861, the canonical program `A398861.P9512027551121797084` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398861 has offset 0).

The definition of A398861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398861.P9512027551121797084

`ceil(n*(9*n+1)/4)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398861

/-- `ceil(n*(9*n+1)/4)` -/
def P9512027551121797084.Spec : Prop :=
  ∀ n, P9512027551121797084.a n = A398861 n

theorem P9512027551121797084.correct : P9512027551121797084.Spec := by
  intro n
  simp only [A398861]

end A398861

/-! ## A398861.P15202478230403781443

`ogf((3x+x^2+3x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398861.P15202478230403781443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, 3, 2] [1, -3, 4, -4, 3, -1] n

end

end A398861.P15202478230403781443

namespace A398861

/-- `ogf((3x+x^2+3x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P15202478230403781443.Spec : Prop :=
  ∀ n, P15202478230403781443.a n = A398861 n

end A398861

/-! ## A398861.P15800351107712682786

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=10, a(3)=21, a(4)=37`
-/

namespace A398861.P15800351107712682786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 10, 21, 37] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A398861.P15800351107712682786

namespace A398861

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P15800351107712682786.Spec : Prop :=
  ∀ n, P15800351107712682786.a n = A398861 n

end A398861

/-! ## A398861.P17480201719644111550

`round(C(3*n, 2)/2+n)`
-/

namespace A398861.P17480201719644111550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (3 * n) 2 : ℚ) / 2 + (n : ℚ))

end

end A398861.P17480201719644111550

namespace A398861

/-- `round(C(3*n, 2)/2+n)` -/
def P17480201719644111550.Spec : Prop :=
  ∀ n, P17480201719644111550.a n = A398861 n

end A398861

/-! ## A398861.P12388360696977863265

`floor(∑[a(n-1)+18]/4)` with `a(0)=2, a(1)=10`
-/

namespace A398861.P12388360696977863265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A398861.P12388360696977863265

namespace A398861

/-- `floor(∑[a(n-1)+18]/4)` -/
def P12388360696977863265.Spec : Prop :=
  ∀ n, P12388360696977863265.a n = A398861 n

end A398861

/-! ## A398861.P15643208946235894961

`floor((lcm(n, 1+9*n)+2)/4)`
-/

namespace A398861.P15643208946235894961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (1 + 9 * n) + 2 : ℚ) / 4⌋

end

end A398861.P15643208946235894961

namespace A398861

/-- `floor((lcm(n, 1+9*n)+2)/4)` -/
def P15643208946235894961.Spec : Prop :=
  ∀ n, P15643208946235894961.a n = A398861 n

end A398861

/-! ## A398861.P16188911280272336061

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=4, a(4)=5, a(5)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A398861.P16188911280272336061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 4, 5, 5] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398861.P16188911280272336061

namespace A398861

/-- `∑[∑[floor(a(n-4))]]` -/
def P16188911280272336061.Spec : Prop :=
  ∀ n, (P16188911280272336061.a n : ℤ) = A398861 n

end A398861

/-! ## A398861.P2835838476116295311

`floor((C(3*n+1, 2)-n+1)/2)`
-/

namespace A398861.P2835838476116295311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (3 * n + 1) 2 : ℤ) - (n : ℤ) + 1 : ℚ) / 2⌋

end

end A398861.P2835838476116295311

namespace A398861

/-- `floor((C(3*n+1, 2)-n+1)/2)` -/
def P2835838476116295311.Spec : Prop :=
  ∀ n, P2835838476116295311.a n = A398861 n

end A398861

/-! ## A398861.P17696077238996907658

`floor((∑[n+1]+C(2*n, 2))/2)+n²`
-/

namespace A398861.P17696077238996907658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n) 2 : ℕ) : ℚ) / 2⌋ + (n ^ 2 : ℤ)

end

end A398861.P17696077238996907658

namespace A398861

/-- `floor((∑[n+1]+C(2*n, 2))/2)+n²` -/
def P17696077238996907658.Spec : Prop :=
  ∀ n, P17696077238996907658.a n = A398861 n

end A398861

/-! ## A398861.P2349785462414915634

`floor(A006137(n)/2)`
-/

namespace A398861.P2349785462414915634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006137 n : ℚ) / 2⌋

end

end A398861.P2349785462414915634

namespace A398861

/-- `floor(A006137(n)/2)` -/
def P2349785462414915634.Spec : Prop :=
  ∀ n, P2349785462414915634.a n = A398861 n

end A398861

/-! ## A398861.P10450433951328963712

`round(A022267(n)/2)`
-/

namespace A398861.P10450433951328963712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022267 n : ℚ) / 2)

end

end A398861.P10450433951328963712

namespace A398861

/-- `round(A022267(n)/2)` -/
def P10450433951328963712.Spec : Prop :=
  ∀ n, P10450433951328963712.a n = A398861 n

end A398861

/-! ## A398861.P887665596179806875

`A397979(n)+n²`
-/

namespace A398861.P887665596179806875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397979 n + (n ^ 2 : ℤ)

end

end A398861.P887665596179806875

namespace A398861

/-- `A397979(n)+n²` -/
def P887665596179806875.Spec : Prop :=
  ∀ n, P887665596179806875.a n = A398861 n

end A398861

/-! ## A398861.P16718684077210322728

`A398853(n)+∑[n]`
-/

namespace A398861.P16718684077210322728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398853 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398861.P16718684077210322728

namespace A398861

/-- `A398853(n)+∑[n]` -/
def P16718684077210322728.Spec : Prop :=
  ∀ n, P16718684077210322728.a n = A398861 n

end A398861

/-! ## A398861.P9036862003770517400

`A301292(n)-Δ[n²]`
-/

namespace A398861.P9036862003770517400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301292 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A398861.P9036862003770517400

namespace A398861

/-- `A301292(n)-Δ[n²]` -/
def P9036862003770517400.Spec : Prop :=
  ∀ n, P9036862003770517400.a n = A398861 n

end A398861

/-! ## A398861.P16706699710632699299

`A340648(n)+A005449(n)`
-/

namespace A398861.P16706699710632699299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n + A005449 n

end

end A398861.P16706699710632699299

namespace A398861

/-- `A340648(n)+A005449(n)` -/
def P16706699710632699299.Spec : Prop :=
  ∀ n, P16706699710632699299.a n = A398861 n

end A398861

/-! ## A398861.P2888480415506591455

`A398843(n)+A005563(n)`
-/

namespace A398861.P2888480415506591455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398843 n + A005563 n

end

end A398861.P2888480415506591455

namespace A398861

/-- `A398843(n)+A005563(n)` -/
def P2888480415506591455.Spec : Prop :=
  ∀ n, P2888480415506591455.a n = A398861 n

end A398861

/-! ## A398861.P14690579593251388501

`A397985(n)+A161680(n)`
-/

namespace A398861.P14690579593251388501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397985 n + A161680 n

end

end A398861.P14690579593251388501

namespace A398861

/-- `A397985(n)+A161680(n)` -/
def P14690579593251388501.Spec : Prop :=
  ∀ n, P14690579593251388501.a n = A398861 n

end A398861

/-! ## A398861.P3845175413790849761

`A302488(n)+A293296(n)`
-/

namespace A398861.P3845175413790849761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302488 n + A293296 n

end

end A398861.P3845175413790849761

namespace A398861

/-- `A302488(n)+A293296(n)` -/
def P3845175413790849761.Spec : Prop :=
  ∀ n, P3845175413790849761.a n = A398861 n

end A398861

/-! ## A398861.P17976778778920001789

`A398849(n)+A398202(n)`
-/

namespace A398861.P17976778778920001789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398849 n + A398202 n

end

end A398861.P17976778778920001789

namespace A398861

/-- `A398849(n)+A398202(n)` -/
def P17976778778920001789.Spec : Prop :=
  ∀ n, P17976778778920001789.a n = A398861 n

end A398861

/-! ## A398861.P14573597133965450918

`A033428(n)-A231559(n)`
-/

namespace A398861.P14573597133965450918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - A231559 n

end

end A398861.P14573597133965450918

namespace A398861

/-- `A033428(n)-A231559(n)` -/
def P14573597133965450918.Spec : Prop :=
  ∀ n, P14573597133965450918.a n = A398861 n

end A398861

/-!
# A398862: Number of points with even coordinate sum in the cube [-n,n]^3 having an odd number of lattice neighbors inside the cube.

The programs for A398862, the canonical program `A398862.P2537381618111854366` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398862 has offset 1).

The definition of A398862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398862.P2537381618111854366

`ogf((38x-4x^2+14x^3)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398862

/-- `ogf((38x-4x^2+14x^3)/(1-2x+2x^3-x^4))` -/
def P2537381618111854366.Spec : Prop :=
  ∀ n, P2537381618111854366.a n = A398862 (n + 1)

theorem P2537381618111854366.correct : P2537381618111854366.Spec := by
  intro n
  simp only [A398862, Nat.add_sub_cancel]

end A398862

/-! ## A398862.P12487199644552804480

`12*(n+1)*n+7*(1+(-1)^(n+1))`
-/

namespace A398862.P12487199644552804480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) * n : ℤ) + 7 * (1 + (-1) ^ (n + 1))

end

end A398862.P12487199644552804480

namespace A398862

/-- `12*(n+1)*n+7*(1+(-1)^(n+1))` -/
def P12487199644552804480.Spec : Prop :=
  ∀ n, P12487199644552804480.a n = A398862 (n + 1)

end A398862

/-!
# A398863: Numbers with ordered prime signature (1,1,2).

The programs for A398863, there is no canonical definition to state claims against.
-/

/-! ## A398863.P16236808555115220765

`∩[A229027(n+1), A398864(n+1)]`
-/

namespace A398863.P16236808555115220765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P16236808555115220765

/-! ## A398863.P2079485380593761372

`∩[A368780(n+1), A398864(n+1)]`
-/

namespace A398863.P2079485380593761372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P2079485380593761372

/-! ## A398863.P8722240604884469910

`∩[A389145(n+1), A398864(n+1)]`
-/

namespace A398863.P8722240604884469910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P8722240604884469910

/-! ## A398863.P9117032989237521747

`∩[A390096(n+1), A398864(n+1)]`
-/

namespace A398863.P9117032989237521747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P9117032989237521747

/-! ## A398863.P14735725335069696536

`∩[A388306(n+1), A398864(n+1)]`
-/

namespace A398863.P14735725335069696536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P14735725335069696536

/-! ## A398863.P6459666146634106907

`∩[A195212(n+1), A398864(n+1)]`
-/

namespace A398863.P6459666146634106907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P6459666146634106907

/-! ## A398863.P14613070377787156309

`∩[A070003(n+1), A398864(n+1)]`
-/

namespace A398863.P14613070377787156309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P14613070377787156309

/-! ## A398863.P785463860317483658

`∩[A354869(n+1), A398864(n+1)]`
-/

namespace A398863.P785463860317483658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P785463860317483658

/-! ## A398863.P17757891870439885473

`∩[A229027(n+1), A400773(n+1)]`
-/

namespace A398863.P17757891870439885473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P17757891870439885473

/-! ## A398863.P14550182488903518224

`∩[A390096(n+1), A400773(n+1)]`
-/

namespace A398863.P14550182488903518224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P14550182488903518224

/-! ## A398863.P9271500418542610266

`∩[A070003(n+1), A085987(n+1)]`
-/

namespace A398863.P9271500418542610266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P9271500418542610266

/-! ## A398863.P5054100960422631758

`∩[A085987(n+1), A195212(n+1)]`
-/

namespace A398863.P5054100960422631758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P5054100960422631758

/-! ## A398863.P15551466726099085558

`∩[A085987(n+1), A229027(n+1)]`
-/

namespace A398863.P15551466726099085558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P15551466726099085558

/-! ## A398863.P3086169519289053934

`∩[A085987(n+1), A354869(n+1)]`
-/

namespace A398863.P3086169519289053934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P3086169519289053934

/-! ## A398863.P1386217103539785727

`∩[A085987(n+1), A368780(n+1)]`
-/

namespace A398863.P1386217103539785727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P1386217103539785727

/-! ## A398863.P14464984297002231760

`∩[A085987(n+1), A388306(n+1)]`
-/

namespace A398863.P14464984297002231760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P14464984297002231760

/-! ## A398863.P5578275569609963076

`∩[A085987(n+1), A389145(n+1)]`
-/

namespace A398863.P5578275569609963076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P5578275569609963076

/-! ## A398863.P1668162611500124118

`∩[A085987(n+1), A390096(n+1)]`
-/

namespace A398863.P1668162611500124118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P1668162611500124118

/-! ## A398863.P12075847476615821420

`∩[A085987(n+1), A398864(n+1)]`
-/

namespace A398863.P12075847476615821420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P12075847476615821420

/-! ## A398863.P482534793829262430

`∩[A085987(n+1), A400773(n+1)]`
-/

namespace A398863.P482534793829262430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398863.P482534793829262430

/-!
# A398864: Numbers k of the form q(k) * rad(k), where rad = A007947, and q(k) the third smallest distinct prime factor of k.

The programs for A398864, there is no canonical definition to state claims against.
-/

/-! ## A398864.P14175513030148211204

`filter[A400773(1+n), A359471(#)]`
-/

namespace A398864.P14175513030148211204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A398864.P14175513030148211204

/-! ## A398864.P12474749512638096221

`filter[A400773(1+n), A359474(#)]`
-/

namespace A398864.P12474749512638096221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A398864.P12474749512638096221

/-! ## A398864.P1431571388465555922

`filter[A400773(n+1), A359475(#)]`
-/

namespace A398864.P1431571388465555922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A398864.P1431571388465555922

/-! ## A398864.P7177111105194211386

`∩[A398316(n+1), A400773(n+1)]`
-/

namespace A398864.P7177111105194211386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398864.P7177111105194211386

/-! ## A398864.P17106250700023865048

`∩[A060687(n+1), A400773(n+1)]`
-/

namespace A398864.P17106250700023865048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398864.P17106250700023865048

/-! ## A398864.P9747972943089152794

`∩[A072357(n+1), A400773(n+1)]`
-/

namespace A398864.P9747972943089152794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398864.P9747972943089152794

/-!
# A398865: a(n) is the number of tilings of a 9 X 10n rectangle into P-pentominoes (no reflections, only rotations).

The programs for A398865, the canonical program `A398865.P16826196749550718768` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398865 has offset 0).

The definition of A398865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398865.P16826196749550718768

`ogf((1-3x-x^2-x^3)/(1-6x+6x^2-9x^3+8x^4+3x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398865

/-- `ogf((1-3x-x^2-x^3)/(1-6x+6x^2-9x^3+8x^4+3x^5+x^6))` -/
def P16826196749550718768.Spec : Prop :=
  ∀ n, P16826196749550718768.a n = A398865 n

theorem P16826196749550718768.correct : P16826196749550718768.Spec := by
  intro n
  simp only [A398865]

end A398865

/-!
# A398866: Sum of 2^(in-degree of v) over nodes v in all acyclic digraphs on n labeled nodes.

The programs for A398866, there is no canonical definition to state claims against.
-/

/-! ## A398866.P5311699442177435111

`A307835(A368983(2*n+1)+A349899(n+1))`
-/

namespace A398866.P5311699442177435111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307835 (A368983 (2 * n + 1) + A349899 (n + 1)).toNat

end

end A398866.P5311699442177435111

/-!
# A398868: a(n) is the number of tilings of a 10 X n rectangle into P-pentominoes (no reflections, only rotations).

The programs for A398868, there is no canonical definition to state claims against.
-/

/-! ## A398868.P9408545808174189666

`round(sqrt(A018891(n+3)))`
-/

namespace A398868.P9408545808174189666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018891 (n + 3) : ℝ))

end

end A398868.P9408545808174189666

/-! ## A398868.P9255218047244008683

`A359319(n)-A099618(A153322(n+1))`
-/

namespace A398868.P9255218047244008683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359319 n - A099618 (A153322 (n + 1)).toNat

end

end A398868.P9255218047244008683

/-! ## A398868.P11669422396241364389

`A324088(A089980(n+4))+A282906(n)`
-/

namespace A398868.P11669422396241364389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (A089980 (n + 4)).toNat + A282906 n

end

end A398868.P11669422396241364389

/-!
# A398870: a(n) is the number of tilings of a 6 X 5n rectangle into I-pentominoes.

The programs for A398870, the canonical program `A398870.P5829513920652044191` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398870 has offset 0).

The definition of A398870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398870.P5829513920652044191

`ogf((1-4x+6x^2-4x^3+x^4)/(1-7x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398870

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-7x+10x^2-10x^3+5x^4-x^5))` -/
def P5829513920652044191.Spec : Prop :=
  ∀ n, P5829513920652044191.a n = A398870 n

theorem P5829513920652044191.correct : P5829513920652044191.Spec := by
  intro n
  simp only [A398870]

end A398870

/-! ## A398870.P12277143712743972401

`7*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=17, a(3)=95, a(4)=521`
-/

namespace A398870.P12277143712743972401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 17, 95, 521] fun n a =>
  7 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A398870.P12277143712743972401

namespace A398870

/-- `7*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12277143712743972401.Spec : Prop :=
  ∀ n, P12277143712743972401.a n = A398870 n

end A398870

/-!
# A398871: Total number of nodes with in-degree 1 in all acyclic digraphs on n labeled nodes.

The programs for A398871, there is no canonical definition to state claims against.
-/

/-! ## A398871.P18129696835003584825

`A167777(4+a(n-1))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A398871.P18129696835003584825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A167777 (4 + a (n - 1)).toNat

end

end A398871.P18129696835003584825

/-!
# A398873: a(n) = numerator(1 + 2*(4^n - 1)*zeta(2*n)/Pi^(2*n)).

The programs for A398873, there is no canonical definition to state claims against.
-/

/-! ## A398873.P13402952023591640979

`A115037(A005503(n))`
-/

namespace A398873.P13402952023591640979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115037 (A005503 n).toNat

end

end A398873.P13402952023591640979

/-!
# A398874: Number of recursive calls made by the binary Fredricksen-Kessler-Maiorana (FKM) recursive generator when generating a de Bruijn sequence of order n.

The programs for A398874, the canonical program `A398874.P18069216164434100368` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398874 has offset 1).

The definition of A398874 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A398874.P18069216164434100368

`2*a(n-1)-a(n-2)+A001037(n+1)` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A398874

/-- `2*a(n-1)-a(n-2)+A001037(n+1)` -/
def P18069216164434100368.Spec : Prop :=
  ∀ n, P18069216164434100368.a n = A398874 (n + 1)

theorem P18069216164434100368.correct : P18069216164434100368.Spec := by
  intro n
  simp only [A398874, Nat.add_sub_cancel]

end A398874

/-! ## A398874.P14862245153001891410

`1+∑[A062692(1+n)]`
-/

namespace A398874.P14862245153001891410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062692 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398874.P14862245153001891410

namespace A398874

/-- `1+∑[A062692(1+n)]` -/
def P14862245153001891410.Spec : Prop :=
  ∀ n, P14862245153001891410.a n = A398874 (n + 1)

end A398874

/-! ## A398874.P4523138541026913088

`∑[A173270(1+n)]-n`
-/

namespace A398874.P4523138541026913088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A398874.P4523138541026913088

namespace A398874

/-- `∑[A173270(1+n)]-n` -/
def P4523138541026913088.Spec : Prop :=
  ∀ n, P4523138541026913088.a n = A398874 (n + 1)

end A398874

/-! ## A398874.P11388723602246026374

`1+∑[∑[A001037(n+1)]]`
-/

namespace A398874.P11388723602246026374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398874.P11388723602246026374

namespace A398874

/-- `1+∑[∑[A001037(n+1)]]` -/
def P11388723602246026374.Spec : Prop :=
  ∀ n, P11388723602246026374.a n = A398874 (n + 1)

end A398874

/-! ## A398874.P18032072635557186468

`∑[∑[A060477(n+1)]]-n`
-/

namespace A398874.P18032072635557186468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060477 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A398874.P18032072635557186468

namespace A398874

/-- `∑[∑[A060477(n+1)]]-n` -/
def P18032072635557186468.Spec : Prop :=
  ∀ n, P18032072635557186468.a n = A398874 (n + 1)

end A398874

/-!
# A398878: Triangular numbers t such that t+1, t+3, t+7, t+9 are four primes.

The programs for A398878, there is no canonical definition to state claims against.
-/

/-! ## A398878.P13430681732731951849

`∩[A173037(n+1)-5, A060544(n+1)]`
-/

namespace A398878.P13430681732731951849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398878.P13430681732731951849

/-! ## A398878.P17464219766781657366

`∩[A060544(n+1), A125855(n+1)]`
-/

namespace A398878.P17464219766781657366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398878.P17464219766781657366

/-! ## A398878.P7613080201256039999

`∩[A007530(n+1)-1, A060544(n+1)]`
-/

namespace A398878.P7613080201256039999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398878.P7613080201256039999

/-! ## A398878.P13663850997175407293

`∩[A136720(1+n)-3, A060544(n+1)]`
-/

namespace A398878.P13663850997175407293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (1 + n) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398878.P13663850997175407293

/-! ## A398878.P15042243737376280031

`∩[A090258(n+1)-9, A060544(n+1)]`
-/

namespace A398878.P15042243737376280031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1) - 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398878.P15042243737376280031

/-!
# A398879: a(n) is the number of tilings of a 9 X 5n rectangle into I-pentominoes.

The programs for A398879, the canonical program `A398879.P15397691951741920242` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398879 has offset 0).

The definition of A398879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398879.P15397691951741920242

`ogf((1-4x+6x^2-4x^3+x^4)/(1-10x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398879

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-10x+10x^2-10x^3+5x^4-x^5))` -/
def P15397691951741920242.Spec : Prop :=
  ∀ n, P15397691951741920242.a n = A398879 n

theorem P15397691951741920242.correct : P15397691951741920242.Spec := by
  intro n
  simp only [A398879]

end A398879

/-!
# A398881: Number of Hausdorff set systems on an n-set with neither the empty set nor the full set.

The programs for A398881, there is no canonical definition to state claims against.
-/

/-! ## A398881.P7103537293367057307

`∏[A286474(A080358(n))]`
-/

namespace A398881.P7103537293367057307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286474 (A080358 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A398881.P7103537293367057307

/-!
# A398882: Number of strict chains from e to S_n in the subgroup lattice of S_n.

The programs for A398882, there is no canonical definition to state claims against.
-/

/-! ## A398882.P720134015243070232

`A221035(A054359(n+2))-A131708(n)`
-/

namespace A398882.P720134015243070232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A054359 (n + 2)).toNat - A131708 n

end

end A398882.P720134015243070232

/-!
# A398884: Array read by ascending antidiagonals: A(n,k) = n*k^n + 1, with k >= 0.

The programs for A398884, the canonical program `A398884.P3834788570171898934` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398884 has offset 0).

The definition of A398884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398884.P3834788570171898934

`(row(n)-col(n))*col(n)^(row(n)-col(n))+1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398884

/-- `(row(n)-col(n))*col(n)^(row(n)-col(n))+1` -/
def P3834788570171898934.Spec : Prop :=
  ∀ n, P3834788570171898934.a n = (A398884 n : ℚ)

end A398884

/-! ## A398884.P5069842689853358675

`(row(n)-col(n))*A004248(n)+1`
-/

namespace A398884.P5069842689853358675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * A004248 n + 1

end

end A398884.P5069842689853358675

namespace A398884

/-- `(row(n)-col(n))*A004248(n)+1` -/
def P5069842689853358675.Spec : Prop :=
  ∀ n, P5069842689853358675.a n = A398884 n

end A398884

/-! ## A398884.P4430905280598380948

`(row(n)-col(n))*(A103462(n)-1)+1`
-/

namespace A398884.P4430905280598380948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (A103462 n - 1) + 1

end

end A398884.P4430905280598380948

namespace A398884

/-- `(row(n)-col(n))*(A103462(n)-1)+1` -/
def P4430905280598380948.Spec : Prop :=
  ∀ n, P4430905280598380948.a n = A398884 n

end A398884

/-! ## A398884.P17908133366264136876

`(row(n)-col(n))*col(n)^A025581(n)+1`
-/

namespace A398884.P17908133366264136876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) * (SequenceMachineLib.triCol n : ℚ) ^ (A025581 n : ℤ) + 1

end

end A398884.P17908133366264136876

namespace A398884

/-- `(row(n)-col(n))*col(n)^A025581(n)+1` -/
def P17908133366264136876.Spec : Prop :=
  ∀ n, P17908133366264136876.a n = (A398884 n : ℚ)

end A398884

/-! ## A398884.P711469589093700102

`A004248(n)*A025581(n)+1`
-/

namespace A398884.P711469589093700102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A025581 n + 1

end

end A398884.P711469589093700102

namespace A398884

/-- `A004248(n)*A025581(n)+1` -/
def P711469589093700102.Spec : Prop :=
  ∀ n, P711469589093700102.a n = A398884 n

end A398884

/-! ## A398884.P8147238449611270242

`(A003056(n)-col(n))*A004248(n)+1`
-/

namespace A398884.P8147238449611270242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n - (SequenceMachineLib.triCol n : ℤ)) * A004248 n + 1

end

end A398884.P8147238449611270242

namespace A398884

/-- `(A003056(n)-col(n))*A004248(n)+1` -/
def P8147238449611270242.Spec : Prop :=
  ∀ n, P8147238449611270242.a n = A398884 n

end A398884

/-!
# A398885: Antidiagonal sums of the array A398884.

The programs for A398885, the canonical program `A398885.P2800503761175022589` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398885 has offset 0).

The definition of A398885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398885.P2800503761175022589

`∑{#}[n, 1+#^(n-#)*(n-#)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398885

/-- `∑{#}[n, 1+#^(n-#)*(n-#)]` -/
def P2800503761175022589.Spec : Prop :=
  ∀ n, P2800503761175022589.a n = (A398885 n : ℚ)

end A398885

/-! ## A398885.P5992662768777415640

`A279554(A073788(n))+n`
-/

namespace A398885.P5992662768777415640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279554 (A073788 n).toNat + (n : ℤ)

end

end A398885.P5992662768777415640

namespace A398885

/-- `A279554(A073788(n))+n` -/
def P5992662768777415640.Spec : Prop :=
  ∀ n, P5992662768777415640.a n = A398885 n

end A398885

/-! ## A398885.P2548777691569122200

`∑[row(A125121(A001003(n)))]`
-/

namespace A398885.P2548777691569122200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A125121 (A001003 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398885.P2548777691569122200

namespace A398885

/-- `∑[row(A125121(A001003(n)))]` -/
def P2548777691569122200.Spec : Prop :=
  ∀ n, (P2548777691569122200.a n : ℤ) = A398885 n

end A398885

/-!
# A398886: Primes where the set of jumping champions changes.

The programs for A398886, there is no canonical definition to state claims against.
-/

/-! ## A398886.P6459504355073841318

`∩[A028430(n+1), A382052(n+1)]`
-/

namespace A398886.P6459504355073841318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398886.P6459504355073841318

/-! ## A398886.P15117061483209426337

`A324697(A037326(n+2))`
-/

namespace A398886.P15117061483209426337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (A037326 (n + 2)).toNat

end

end A398886.P15117061483209426337

/-! ## A398886.P16757717508155429310

`∩[A038134(n+1), A171120(n+1)]`
-/

namespace A398886.P16757717508155429310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398886.P16757717508155429310

/-! ## A398886.P11784483822089408258

`∩[A038604(n+1), A171120(n+1)]`
-/

namespace A398886.P11784483822089408258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398886.P11784483822089408258

/-!
# A398889: Minimum site perimeter of a polyknight with n cells.

The programs for A398889, there is no canonical definition to state claims against.
-/

/-! ## A398889.P14490594214367853899

`A118968(n)+∑[xor(n, -1)+8]`
-/

namespace A398889.P14490594214367853899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118968 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398889.P14490594214367853899

/-!
# A398890: Minimum edge (or bond) perimeter of a polyknight with n cells.

The programs for A398890, there is no canonical definition to state claims against.
-/

/-! ## A398890.P17958995787461711816

`∑[a(and(n, n-1))-2]` with `a(0)=8`
-/

namespace A398890.P17958995787461711816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398890.P17958995787461711816

/-! ## A398890.P6185756861738023446

`∑[2*(4-A000120(n))]`
-/

namespace A398890.P6185756861738023446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 - A000120 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398890.P6185756861738023446

/-! ## A398890.P15026980146727217986

`∑[A037145(a(and(n-1, n)))]` with `a(0)=8`
-/

namespace A398890.P15026980146727217986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A037145 (f1 (Int.land ((n : ℤ) - 1) (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398890.P15026980146727217986

/-! ## A398890.P15234852129898192157

`A193416(n+1)+2*(n+1)`
-/

namespace A398890.P15234852129898192157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193416 (n + 1) + (2 * (n + 1) : ℤ)

end

end A398890.P15234852129898192157

/-! ## A398890.P1212098150022860486

`A260391(A347467(n+2))`
-/

namespace A398890.P1212098150022860486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (A347467 (n + 2)).toNat

end

end A398890.P1212098150022860486

/-!
# A398891: Cluster series for site percolation on the square lattice with knight connected sites.

The programs for A398891, there is no canonical definition to state claims against.
-/

/-! ## A398891.P17306622858661363679

`A079764(n)-A079757(A395655(n))`
-/

namespace A398891.P17306622858661363679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079764 n - A079757 (A395655 n).toNat

end

end A398891.P17306622858661363679

/-!
# A398892: Site percolation series for square lattice with knight connected sites: coefficients of the power series expansion in powers of q=1-p of the probability that a given site (not assumed to be open) belongs to the infinite cluster, where p is the probability that a site is open.

The programs for A398892, there is no canonical definition to state claims against.
-/

/-! ## A398892.P5856009057000370766

`Δ[A398893(abs(n-1))]`
-/

namespace A398892.P5856009057000370766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398893 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398892.P5856009057000370766

/-!
# A398893: Site percolation series for square lattice with knight connected sites: coefficients of the power series expansion in powers of q=1-p of the probability that a given open site belongs to the infinite cluster, where p is the probability that a site is open.

The programs for A398893, there is no canonical definition to state claims against.
-/

/-! ## A398893.P14962946757561008557

`∑[A398892(n)]`
-/

namespace A398893.P14962946757561008557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398893.P14962946757561008557

/-!
# A398894: Minimum value of k such that there exists a subset S of {1, ..., k} of size n for which the average of every nonempty subset of S is an integer.

The programs for A398894, the canonical program `A398894.P12466504130326028723` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398894 has offset 1).

The definition of A398894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398894.P13489221803579821611

`lcm(2, n*A003418(n))+1`
-/

namespace A398894.P13489221803579821611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A003418 n) + 1

end

end A398894.P13489221803579821611

namespace A398894

/-- `lcm(2, n*A003418(n))+1` -/
def P13489221803579821611.Spec : Prop :=
  ∀ n, (P13489221803579821611.a n : ℤ) = A398894 (n + 1)

end A398894

/-! ## A398894.P14147038884205644859

`or(1, n*A139550(2*n)+1)`
-/

namespace A398894.P14147038884205644859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * A139550 (2 * n) + 1)

end

end A398894.P14147038884205644859

namespace A398894

/-- `or(1, n*A139550(2*n)+1)` -/
def P14147038884205644859.Spec : Prop :=
  ∀ n, P14147038884205644859.a n = A398894 (n + 1)

end A398894

/-! ## A398894.P10372947659202451489

`or(1, n*∏[A014963(∏{p}[n, #])]+1)`
-/

namespace A398894.P10372947659202451489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A398894.P10372947659202451489

namespace A398894

/-- `or(1, n*∏[A014963(∏{p}[n, #])]+1)` -/
def P10372947659202451489.Spec : Prop :=
  ∀ n, P10372947659202451489.a n = A398894 (n + 1)

end A398894

/-! ## A398894.P12466504130326028723

`n*A003418(A254667(n))+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398894

/-- `n*A003418(A254667(n))+1` -/
def P12466504130326028723.Spec : Prop :=
  ∀ n, P12466504130326028723.a n = A398894 (n + 1)

theorem P12466504130326028723.correct : P12466504130326028723.Spec := by
  intro n
  simp only [A398894, Nat.add_sub_cancel]

end A398894

/-! ## A398894.P9122359599934028169

`A003418(A233583(1+n))*n+1`
-/

namespace A398894.P9122359599934028169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A233583 (1 + n)).toNat * (n : ℤ) + 1

end

end A398894.P9122359599934028169

namespace A398894

/-- `A003418(A233583(1+n))*n+1` -/
def P9122359599934028169.Spec : Prop :=
  ∀ n, P9122359599934028169.a n = A398894 (n + 1)

end A398894

/-! ## A398894.P16107779247517237343

`n*A003418(n)+1+A063524(n)`
-/

namespace A398894.P16107779247517237343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003418 n + 1 + A063524 n

end

end A398894.P16107779247517237343

namespace A398894

/-- `n*A003418(n)+1+A063524(n)` -/
def P16107779247517237343.Spec : Prop :=
  ∀ n, P16107779247517237343.a n = A398894 (n + 1)

end A398894

/-! ## A398894.P6506456578139969380

`A254667(n)+A070198(abs(1-n))*n+1`
-/

namespace A398894.P6506456578139969380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + (A070198 |1 - (n : ℤ)|.toNat * (n : ℤ) + 1)

end

end A398894.P6506456578139969380

namespace A398894

/-- `A254667(n)+A070198(abs(1-n))*n+1` -/
def P6506456578139969380.Spec : Prop :=
  ∀ n, P6506456578139969380.a n = A398894 (n + 1)

end A398894

/-! ## A398894.P15601817990071140414

`or(n*A003418(n)+1, A055396(2*(n+2)))`
-/

namespace A398894.P15601817990071140414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * A003418 n + 1) (A055396 (2 * (n + 2)))

end

end A398894.P15601817990071140414

namespace A398894

/-- `or(n*A003418(n)+1, A055396(2*(n+2)))` -/
def P15601817990071140414.Spec : Prop :=
  ∀ n, P15601817990071140414.a n = A398894 (n + 1)

end A398894

/-!
# A398895: Number of words of length n over the 12 Quarter Turn Metric (QTM) generators {U,D,L,R,F,B,U',D',L',R',F',B'} whose product in the Rubik's Cube group has the maximum order among all words of that length.

The programs for A398895, there is no canonical definition to state claims against.
-/

/-! ## A398895.P8364629487909714035

`A008330(A339974(2*n+3)+A065072(n))`
-/

namespace A398895.P8364629487909714035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (A339974 (2 * n + 3) + A065072 n).toNat

end

end A398895.P8364629487909714035

/-!
# A398897: a(n) is the least k such that there are exactly n primes p such that (k/p)^2 + 1 is prime.

The programs for A398897, there is no canonical definition to state claims against.
-/

/-! ## A398897.P439460468229524867

`A085313(A098541(n))*A206240(n)`
-/

namespace A398897.P439460468229524867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085313 (A098541 n).toNat * A206240 n

end

end A398897.P439460468229524867

