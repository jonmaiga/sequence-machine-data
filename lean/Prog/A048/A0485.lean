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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A048500: a(n) = 2^(n-1)*(7*n-12) + 7.

The programs for A048500, the canonical program `A048500.P14690285155973139423` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048500 has offset 0).

The definition of A048500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048500.P14690285155973139423

`2^(n-1)*(7*n-12)+7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048500

/-- `2^(n-1)*(7*n-12)+7` -/
def P14690285155973139423.Spec : Prop :=
  ∀ n, P14690285155973139423.a n = (A048500 n : ℚ)

end A048500

/-! ## A048500.P8442626753125435611

`∑[ogf((1-3x+9x^2)/(1-4x+4x^2))]`
-/

namespace A048500.P8442626753125435611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 9] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048500.P8442626753125435611

namespace A048500

/-- `∑[ogf((1-3x+9x^2)/(1-4x+4x^2))]` -/
def P8442626753125435611.Spec : Prop :=
  ∀ n, P8442626753125435611.a n = A048500 n

end A048500

/-! ## A048500.P6138220699488393942

`∑[2*a(n-1)+A174317(n+1)+2]` with `a(0)=1, a(1)=1`
-/

namespace A048500.P6138220699488393942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) + (A174317 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048500.P6138220699488393942

namespace A048500

/-- `∑[2*a(n-1)+A174317(n+1)+2]` -/
def P6138220699488393942.Spec : Prop :=
  ∀ n, P6138220699488393942.a n = A048500 n

end A048500

/-! ## A048500.P4406825310728161718

`ogf((1-3x+9x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048500.P4406825310728161718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 9] [1, -5, 8, -4] n

end

end A048500.P4406825310728161718

namespace A048500

/-- `ogf((1-3x+9x^2)/(1-5x+8x^2-4x^3))` -/
def P4406825310728161718.Spec : Prop :=
  ∀ n, P4406825310728161718.a n = A048500 n

end A048500

/-! ## A048500.P14090499353282785163

`(A048501(n)+A048499(n))/2`
-/

namespace A048500.P14090499353282785163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048501 n + A048499 n : ℚ) / 2

end

end A048500.P14090499353282785163

namespace A048500

/-- `(A048501(n)+A048499(n))/2` -/
def P14090499353282785163.Spec : Prop :=
  ∀ n, P14090499353282785163.a n = (A048500 n : ℚ)

end A048500

/-! ## A048500.P1062464285868555004

`(A048502(n)+A048498(n))/2`
-/

namespace A048500.P1062464285868555004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048502 n + A048498 n : ℚ) / 2

end

end A048500.P1062464285868555004

namespace A048500

/-- `(A048502(n)+A048498(n))/2` -/
def P1062464285868555004.Spec : Prop :=
  ∀ n, P1062464285868555004.a n = (A048500 n : ℚ)

end A048500

/-! ## A048500.P159074386333197986

`(A291526(n+1)+A048496(n))%A218200(n+1)`
-/

namespace A048500.P159074386333197986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291526 (n + 1) + A048496 n) (A218200 (n + 1))

end

end A048500.P159074386333197986

namespace A048500

/-- `(A291526(n+1)+A048496(n))%A218200(n+1)` -/
def P159074386333197986.Spec : Prop :=
  ∀ n, P159074386333197986.a n = A048500 n

end A048500

/-! ## A048500.P11400774283611692473

`A048494(eq[6, A002262(n)])`
-/

namespace A048500.P11400774283611692473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048500.P11400774283611692473

namespace A048500

/-- `A048494(eq[6, A002262(n)])` -/
def P11400774283611692473.Spec : Prop :=
  ∀ n, P11400774283611692473.a n = A048500 n

end A048500

/-! ## A048500.P11602159207555895675

`A048494(A167487(n+5)-1)`
-/

namespace A048500.P11602159207555895675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (A167487 (n + 5) - 1).toNat

end

end A048500.P11602159207555895675

namespace A048500

/-- `A048494(A167487(n+5)-1)` -/
def P11602159207555895675.Spec : Prop :=
  ∀ n, P11602159207555895675.a n = A048500 n

end A048500

/-! ## A048500.P13907767234623256863

`A048494(A000124(n+6)+5)`
-/

namespace A048500.P13907767234623256863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (A000124 (n + 6) + 5).toNat

end

end A048500.P13907767234623256863

namespace A048500

/-- `A048494(A000124(n+6)+5)` -/
def P13907767234623256863.Spec : Prop :=
  ∀ n, P13907767234623256863.a n = A048500 n

end A048500

/-! ## A048500.P4683559881056248452

`A048494(A000096(n+5)+7)`
-/

namespace A048500.P4683559881056248452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (A000096 (n + 5) + 7).toNat

end

end A048500.P4683559881056248452

namespace A048500

/-- `A048494(A000096(n+5)+7)` -/
def P4683559881056248452.Spec : Prop :=
  ∀ n, P4683559881056248452.a n = A048500 n

end A048500

/-! ## A048500.P14107203104765458468

`A048494(A000217(n+6)+6)`
-/

namespace A048500.P14107203104765458468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (A000217 (n + 6) + 6).toNat

end

end A048500.P14107203104765458468

namespace A048500

/-- `A048494(A000217(n+6)+6)` -/
def P14107203104765458468.Spec : Prop :=
  ∀ n, P14107203104765458468.a n = A048500 n

end A048500

/-! ## A048500.P8085813678485573544

`A048494(eq[7, A002260(n+1)])`
-/

namespace A048500.P8085813678485573544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048500.P8085813678485573544

namespace A048500

/-- `A048494(eq[7, A002260(n+1)])` -/
def P8085813678485573544.Spec : Prop :=
  ∀ n, P8085813678485573544.a n = A048500 n

end A048500

/-! ## A048500.P17620061466125987652

`A048494(eq[8, A059268(n)/8])`
-/

namespace A048500.P17620061466125987652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A048500.P17620061466125987652

namespace A048500

/-- `A048494(eq[8, A059268(n)/8])` -/
def P17620061466125987652.Spec : Prop :=
  ∀ n, P17620061466125987652.a n = A048500 n

end A048500

/-! ## A048500.P16289379452742520941

`A048494(eq[6, val(A059268(n), 2)])`
-/

namespace A048500.P16289379452742520941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059268 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A048500.P16289379452742520941

namespace A048500

/-- `A048494(eq[6, val(A059268(n), 2)])` -/
def P16289379452742520941.Spec : Prop :=
  ∀ n, P16289379452742520941.a n = A048500 n

end A048500

/-! ## A048500.P9394834478316382606

`A048494(A034856(n+6)-(n-1))`
-/

namespace A048500.P9394834478316382606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (A034856 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A048500.P9394834478316382606

namespace A048500

/-- `A048494(A034856(n+6)-(n-1))` -/
def P9394834478316382606.Spec : Prop :=
  ∀ n, P9394834478316382606.a n = A048500 n

end A048500

/-!
# A048501: a(n) = 2^(n-1)*(8*n-14) + 8.

The programs for A048501, the canonical program `A048501.P4603674595961243869` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048501 has offset 0).

The definition of A048501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048501.P4603674595961243869

`2^(n-1)*(8*n-14)+8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048501

/-- `2^(n-1)*(8*n-14)+8` -/
def P4603674595961243869.Spec : Prop :=
  ∀ n, P4603674595961243869.a n = (A048501 n : ℚ)

end A048501

/-! ## A048501.P16753712503708794179

`∑[ogf((1-3x+10x^2)/(1-4x+4x^2))]`
-/

namespace A048501.P16753712503708794179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 10] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048501.P16753712503708794179

namespace A048501

/-- `∑[ogf((1-3x+10x^2)/(1-4x+4x^2))]` -/
def P16753712503708794179.Spec : Prop :=
  ∀ n, P16753712503708794179.a n = A048501 n

end A048501

/-! ## A048501.P6825532366616757506

`ogf((1-3x+10x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A048501.P6825532366616757506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 10] [1, -5, 8, -4] n

end

end A048501.P6825532366616757506

namespace A048501

/-- `ogf((1-3x+10x^2)/(1-5x+8x^2-4x^3))` -/
def P6825532366616757506.Spec : Prop :=
  ∀ n, P6825532366616757506.a n = A048501 n

end A048501

/-! ## A048501.P194964194653306527

`4*(a(n-1)+2-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A048501.P194964194653306527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) + (2 - a (n - 2)))

end

end A048501.P194964194653306527

namespace A048501

/-- `4*(a(n-1)+2-a(n-2))` -/
def P194964194653306527.Spec : Prop :=
  ∀ n, P194964194653306527.a n = A048501 n

end A048501

/-! ## A048501.P10291390508317095551

`4*(2-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A048501.P10291390508317095551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (2 - (a (n - 2) - a (n - 1)))

end

end A048501.P10291390508317095551

namespace A048501

/-- `4*(2-(a(n-2)-a(n-1)))` -/
def P10291390508317095551.Spec : Prop :=
  ∀ n, P10291390508317095551.a n = A048501 n

end A048501

/-! ## A048501.P13032854300879957574

`∑[a(n-1)+a(n-1)+2^(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A048501.P13032854300879957574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2 ^ (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048501.P13032854300879957574

namespace A048501

/-- `∑[a(n-1)+a(n-1)+2^(n+1)]` -/
def P13032854300879957574.Spec : Prop :=
  ∀ n, (P13032854300879957574.a n : ℤ) = A048501 n

end A048501

/-! ## A048501.P14524524072323466083

`∑[(abs(2-4*n)-1)*A011782(n)]`
-/

namespace A048501.P14524524072323466083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|2 - (4 * n : ℤ)| - 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048501.P14524524072323466083

namespace A048501

/-- `∑[(abs(2-4*n)-1)*A011782(n)]` -/
def P14524524072323466083.Spec : Prop :=
  ∀ n, P14524524072323466083.a n = A048501 n

end A048501

/-!
# A048502: a(n) = 2^(n-1)*(9*n-16) + 9.

The programs for A048502, the canonical program `A048502.P2219356796365350861` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048502 has offset 0).

The definition of A048502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048502.P2219356796365350861

`2^(n-1)*(9*n-16)+9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048502

/-- `2^(n-1)*(9*n-16)+9` -/
def P2219356796365350861.Spec : Prop :=
  ∀ n, P2219356796365350861.a n = (A048502 n : ℚ)

end A048502

/-! ## A048502.P12795026021388475314

`∑[A011782(n)+9*A139756(n)]`
-/

namespace A048502.P12795026021388475314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + 9 * A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048502.P12795026021388475314

namespace A048502

/-- `∑[A011782(n)+9*A139756(n)]` -/
def P12795026021388475314.Spec : Prop :=
  ∀ n, P12795026021388475314.a n = A048502 n

end A048502

/-! ## A048502.P2327732926351900578

`A048494(eq[8, A002262(n)])`
-/

namespace A048502.P2327732926351900578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048502.P2327732926351900578

namespace A048502

/-- `A048494(eq[8, A002262(n)])` -/
def P2327732926351900578.Spec : Prop :=
  ∀ n, P2327732926351900578.a n = A048502 n

end A048502

/-! ## A048502.P18110201636315646855

`A048494(A000096(n+7)+9)`
-/

namespace A048502.P18110201636315646855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (A000096 (n + 7) + 9).toNat

end

end A048502.P18110201636315646855

namespace A048502

/-- `A048494(A000096(n+7)+9)` -/
def P18110201636315646855.Spec : Prop :=
  ∀ n, P18110201636315646855.a n = A048502 n

end A048502

/-! ## A048502.P2630971998621017546

`A048494(eq[8, A144328(n+1)])`
-/

namespace A048502.P2630971998621017546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048502.P2630971998621017546

namespace A048502

/-- `A048494(eq[8, A144328(n+1)])` -/
def P2630971998621017546.Spec : Prop :=
  ∀ n, P2630971998621017546.a n = A048502 n

end A048502

/-! ## A048502.P4037204748841384297

`A048494(eq[9, A002260(n+1)])`
-/

namespace A048502.P4037204748841384297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048502.P4037204748841384297

namespace A048502

/-- `A048494(eq[9, A002260(n+1)])` -/
def P4037204748841384297.Spec : Prop :=
  ∀ n, P4037204748841384297.a n = A048502 n

end A048502

/-!
# A048503: Expansion of g.f. (1 - 4*x + 6*x^2 - 2*x^3)/((1-x)^3*(1-2*x)^2).

The programs for A048503, the canonical program `A048503.P2433676022527892211` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048503 has offset 0).

The definition of A048503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2-2x^3)/(1-7x+19x^2-25x^3+16x^4-4x^5))` (program `A048503.P2433676022527892211`, by `A048503.P2433676022527892211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048503.P15002060044115626457

`(14+7*n+n²+(n-3)*2^(n+2))/2`
-/

namespace A048503.P15002060044115626457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 + 7 * n + n ^ 2 : ℤ) + ((n : ℤ) - 3) * (2 ^ (n + 2) : ℤ) : ℚ) / 2

end

end A048503.P15002060044115626457

namespace A048503

/-- `(14+7*n+n²+(n-3)*2^(n+2))/2` -/
def P15002060044115626457.Spec : Prop :=
  ∀ n, P15002060044115626457.a n = (A048503 n : ℚ)

end A048503

/-! ## A048503.P2433676022527892211

`ogf((1-4x+6x^2-2x^3)/(1-7x+19x^2-25x^3+16x^4-4x^5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048503

/-- `ogf((1-4x+6x^2-2x^3)/(1-7x+19x^2-25x^3+16x^4-4x^5))` -/
def P2433676022527892211.Spec : Prop :=
  ∀ n, P2433676022527892211.a n = A048503 n

theorem P2433676022527892211.correct : P2433676022527892211.Spec := by
  intro n
  simp only [A048503]

end A048503

/-! ## A048503.P879861899252613058

`A130104(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A048503.P879861899252613058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130104 n + 2 * a (n - 1)

end

end A048503.P879861899252613058

namespace A048503

/-- `A130104(n)+2*a(n-1)` -/
def P879861899252613058.Spec : Prop :=
  ∀ n, P879861899252613058.a n = A048503 n

end A048503

/-! ## A048503.P7312100147508852700

`A360606(n)+A084634(n)`
-/

namespace A048503.P7312100147508852700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360606 n + A084634 n

end

end A048503.P7312100147508852700

namespace A048503

/-- `A360606(n)+A084634(n)` -/
def P7312100147508852700.Spec : Prop :=
  ∀ n, P7312100147508852700.a n = A048503 n

end A048503

/-! ## A048503.P11453242463521428739

`A048481(n)-∑[A000295(n)]`
-/

namespace A048503.P11453242463521428739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048481 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048503.P11453242463521428739

namespace A048503

/-- `A048481(n)-∑[A000295(n)]` -/
def P11453242463521428739.Spec : Prop :=
  ∀ n, P11453242463521428739.a n = A048503 n

end A048503

/-! ## A048503.P14946282965242958154

`∑[A069229(n)]-A109363(n)`
-/

namespace A048503.P14946282965242958154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109363 n

end

end A048503.P14946282965242958154

namespace A048503

/-- `∑[A069229(n)]-A109363(n)` -/
def P14946282965242958154.Spec : Prop :=
  ∀ n, P14946282965242958154.a n = A048503 n

end A048503

/-! ## A048503.P9608591970990875671

`A104747(n+1)-A000295(n+1)`
-/

namespace A048503.P9608591970990875671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104747 (n + 1) - A000295 (n + 1)

end

end A048503.P9608591970990875671

namespace A048503

/-- `A104747(n+1)-A000295(n+1)` -/
def P9608591970990875671.Spec : Prop :=
  ∀ n, P9608591970990875671.a n = A048503 n

end A048503

/-! ## A048503.P3484005706870378556

`∑[A181527(n)+1]-A181527(n)`
-/

namespace A048503.P3484005706870378556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181527 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181527 n

end

end A048503.P3484005706870378556

namespace A048503

/-- `∑[A181527(n)+1]-A181527(n)` -/
def P3484005706870378556.Spec : Prop :=
  ∀ n, P3484005706870378556.a n = A048503 n

end A048503

/-! ## A048503.P6208883596084480135

`A000124(n)+∑[A088578(n)]-A088578(n)`
-/

namespace A048503.P6208883596084480135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (∑ j ∈ Finset.range (n + 1), f1 j - A088578 n)

end

end A048503.P6208883596084480135

namespace A048503

/-- `A000124(n)+∑[A088578(n)]-A088578(n)` -/
def P6208883596084480135.Spec : Prop :=
  ∀ n, P6208883596084480135.a n = A048503 n

end A048503

/-! ## A048503.P7071960455434712814

`∑[A088578(n)+A028310(n)]-A088578(n)`
-/

namespace A048503.P7071960455434712814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088578 n + A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088578 n

end

end A048503.P7071960455434712814

namespace A048503

/-- `∑[A088578(n)+A028310(n)]-A088578(n)` -/
def P7071960455434712814.Spec : Prop :=
  ∀ n, P7071960455434712814.a n = A048503 n

end A048503

/-! ## A048503.P16422550052981788690

`A210217(A034856(n+1))+n`
-/

namespace A048503.P16422550052981788690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210217 (A034856 (n + 1)).toNat + (n : ℤ)

end

end A048503.P16422550052981788690

namespace A048503

/-- `A210217(A034856(n+1))+n` -/
def P16422550052981788690.Spec : Prop :=
  ∀ n, P16422550052981788690.a n = A048503 n

end A048503

/-!
# A048504: a(n) = T(n,n), array T given by A048494.

The programs for A048504, the canonical program `A048504.P8231006774109252804` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048504 has offset 0).

The definition of A048504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048504.P8231006774109252804

`n*(n-1)*2^(n-1)+n+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048504

/-- `n*(n-1)*2^(n-1)+n+1` -/
def P8231006774109252804.Spec : Prop :=
  ∀ n, P8231006774109252804.a n = (A048504 n : ℚ)

end A048504

/-! ## A048504.P9595958021437851008

`or(n+1, A100381(n))`
-/

namespace A048504.P9595958021437851008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A100381 n)

end

end A048504.P9595958021437851008

namespace A048504

/-- `or(n+1, A100381(n))` -/
def P9595958021437851008.Spec : Prop :=
  ∀ n, P9595958021437851008.a n = A048504 n

end A048504

/-! ## A048504.P7062467985704580344

`or(n+1, 2*A001815(n))`
-/

namespace A048504.P7062467985704580344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (2 * A001815 n)

end

end A048504.P7062467985704580344

namespace A048504

/-- `or(n+1, 2*A001815(n))` -/
def P7062467985704580344.Spec : Prop :=
  ∀ n, P7062467985704580344.a n = A048504 n

end A048504

/-! ## A048504.P4255261484177970402

`∑[(n-1)*A129953(n)+1]`
-/

namespace A048504.P4255261484177970402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A129953 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048504.P4255261484177970402

namespace A048504

/-- `∑[(n-1)*A129953(n)+1]` -/
def P4255261484177970402.Spec : Prop :=
  ∀ n, P4255261484177970402.a n = A048504 n

end A048504

/-! ## A048504.P611230838173920004

`∑[(n+2)*A139756(n)+1]`
-/

namespace A048504.P611230838173920004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A139756 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048504.P611230838173920004

namespace A048504

/-- `∑[(n+2)*A139756(n)+1]` -/
def P611230838173920004.Spec : Prop :=
  ∀ n, P611230838173920004.a n = A048504 n

end A048504

/-! ## A048504.P1347756851356337259

`or(n+1, (n-1)*A001787(n))`
-/

namespace A048504.P1347756851356337259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (((n : ℤ) - 1) * A001787 n)

end

end A048504.P1347756851356337259

namespace A048504

/-- `or(n+1, (n-1)*A001787(n))` -/
def P1347756851356337259.Spec : Prop :=
  ∀ n, P1347756851356337259.a n = A048504 n

end A048504

/-! ## A048504.P13974683527081996934

`or(n+1, C(n, 2)*A000079(n))`
-/

namespace A048504.P13974683527081996934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) ((Nat.choose n 2 : ℤ) * A000079 n)

end

end A048504.P13974683527081996934

namespace A048504

/-- `or(n+1, C(n, 2)*A000079(n))` -/
def P13974683527081996934.Spec : Prop :=
  ∀ n, P13974683527081996934.a n = A048504 n

end A048504

/-! ## A048504.P12415246922045754530

`∑[(∑[n]-1)*A131577(n)+1]`
-/

namespace A048504.P12415246922045754530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) * A131577 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048504.P12415246922045754530

namespace A048504

/-- `∑[(∑[n]-1)*A131577(n)+1]` -/
def P12415246922045754530.Spec : Prop :=
  ∀ n, P12415246922045754530.a n = A048504 n

end A048504

/-! ## A048504.P14320915983548165647

`or(n+1, A330592(A004277(n)))`
-/

namespace A048504.P14320915983548165647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A330592 (A004277 n).toNat)

end

end A048504.P14320915983548165647

namespace A048504

/-- `or(n+1, A330592(A004277(n)))` -/
def P14320915983548165647.Spec : Prop :=
  ∀ n, P14320915983548165647.a n = A048504 n

end A048504

/-! ## A048504.P5962328402629765491

`xor(A000027(n+1), A100381(n))`
-/

namespace A048504.P5962328402629765491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000027 (n + 1)) (A100381 n)

end

end A048504.P5962328402629765491

namespace A048504

/-- `xor(A000027(n+1), A100381(n))` -/
def P5962328402629765491.Spec : Prop :=
  ∀ n, P5962328402629765491.a n = A048504 n

end A048504

/-! ## A048504.P18022310696069057242

`(A128798(n)+A036289(n+1))/A000079(n+1)`
-/

namespace A048504.P18022310696069057242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128798 n + A036289 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A048504.P18022310696069057242

namespace A048504

/-- `(A128798(n)+A036289(n+1))/A000079(n+1)` -/
def P18022310696069057242.Spec : Prop :=
  ∀ n, P18022310696069057242.a n = (A048504 n : ℚ)

end A048504

/-!
# A048506: a(n) = T(0,n), array T given by A048505.

The programs for A048506, the canonical program `A048506.P2500265143826289307` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048506 has offset 0).

The definition of A048506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048506.P2500265143826289307

`n*(n+1)*2^(n-2)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048506

/-- `n*(n+1)*2^(n-2)+1` -/
def P2500265143826289307.Spec : Prop :=
  ∀ n, P2500265143826289307.a n = (A048506 n : ℚ)

end A048506

/-! ## A048506.P8426088828494635249

`abs((A000124(n)-1)*A011782(n)+1)`
-/

namespace A048506.P8426088828494635249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000124 n - 1) * A011782 n + 1|

end

end A048506.P8426088828494635249

namespace A048506

/-- `abs((A000124(n)-1)*A011782(n)+1)` -/
def P8426088828494635249.Spec : Prop :=
  ∀ n, P8426088828494635249.a n = A048506 n

end A048506

/-! ## A048506.P16885551585927008146

`∏{e}[A020639(11*n+19), n*A049610(n+1)+#]`
-/

namespace A048506.P16885551585927008146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * n + 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) * A049610 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A048506.P16885551585927008146

namespace A048506

/-- `∏{e}[A020639(11*n+19), n*A049610(n+1)+#]` -/
def P16885551585927008146.Spec : Prop :=
  ∀ n, P16885551585927008146.a n = A048506 n

end A048506

/-! ## A048506.P6888611673994670392

`(2^n*C(n+1, 2)+2)/2`
-/

namespace A048506.P6888611673994670392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.choose (n + 1) 2 + 2 : ℚ) / 2

end

end A048506.P6888611673994670392

namespace A048506

/-- `(2^n*C(n+1, 2)+2)/2` -/
def P6888611673994670392.Spec : Prop :=
  ∀ n, P6888611673994670392.a n = (A048506 n : ℚ)

end A048506

/-! ## A048506.P7026183746187013716

`ceil(A048482(n)/2)`
-/

namespace A048506.P7026183746187013716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048482 n : ℚ) / 2⌉

end

end A048506.P7026183746187013716

namespace A048506

/-- `ceil(A048482(n)/2)` -/
def P7026183746187013716.Spec : Prop :=
  ∀ n, P7026183746187013716.a n = A048506 n

end A048506

/-! ## A048506.P14571708087110861860

`(∑[n]*A000079(n)+2)/2`
-/

namespace A048506.P14571708087110861860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 n + 2 : ℚ) / 2

end

end A048506.P14571708087110861860

namespace A048506

/-- `(∑[n]*A000079(n)+2)/2` -/
def P14571708087110861860.Spec : Prop :=
  ∀ n, P14571708087110861860.a n = (A048506 n : ℚ)

end A048506

/-! ## A048506.P4473010939074690165

`(A003013(n+1)-(n-1))/2`
-/

namespace A048506.P4473010939074690165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003013 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A048506.P4473010939074690165

namespace A048506

/-- `(A003013(n+1)-(n-1))/2` -/
def P4473010939074690165.Spec : Prop :=
  ∀ n, P4473010939074690165.a n = (A048506 n : ℚ)

end A048506

/-! ## A048506.P1656935430814407372

`((n+1)*A001787(n)+2)/2`
-/

namespace A048506.P1656935430814407372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A001787 n + 2 : ℚ) / 2

end

end A048506.P1656935430814407372

namespace A048506

/-- `((n+1)*A001787(n)+2)/2` -/
def P1656935430814407372.Spec : Prop :=
  ∀ n, P1656935430814407372.a n = (A048506 n : ℚ)

end A048506

/-! ## A048506.P3111472798765478279

`(2^n*A000217(n)+2)/2`
-/

namespace A048506.P3111472798765478279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A000217 n + 2 : ℚ) / 2

end

end A048506.P3111472798765478279

namespace A048506

/-- `(2^n*A000217(n)+2)/2` -/
def P3111472798765478279.Spec : Prop :=
  ∀ n, P3111472798765478279.a n = (A048506 n : ℚ)

end A048506

/-! ## A048506.P4804382988486102988

`(A002999(n+1)+A001489(2*n))/2`
-/

namespace A048506.P4804382988486102988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002999 (n + 1) + A001489 (2 * n) : ℚ) / 2

end

end A048506.P4804382988486102988

namespace A048506

/-- `(A002999(n+1)+A001489(2*n))/2` -/
def P4804382988486102988.Spec : Prop :=
  ∀ n, P4804382988486102988.a n = (A048506 n : ℚ)

end A048506

/-! ## A048506.P5081559258517559947

`(2^(n-1)*A046092(n)+4)/4`
-/

namespace A048506.P5081559258517559947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A046092 n : ℚ) + 4) / 4

end

end A048506.P5081559258517559947

namespace A048506

/-- `(2^(n-1)*A046092(n)+4)/4` -/
def P5081559258517559947.Spec : Prop :=
  ∀ n, P5081559258517559947.a n = (A048506 n : ℚ)

end A048506

/-! ## A048506.P16106021565141980501

`∑[A336996(n²+2)]`
-/

namespace A048506.P16106021565141980501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048506.P16106021565141980501

namespace A048506

/-- `∑[A336996(n²+2)]` -/
def P16106021565141980501.Spec : Prop :=
  ∀ n, P16106021565141980501.a n = A048506 n

end A048506

/-! ## A048506.P41827056616339956

`A048505(∑[n])`
-/

namespace A048506.P41827056616339956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048506.P41827056616339956

namespace A048506

/-- `A048505(∑[n])` -/
def P41827056616339956.Spec : Prop :=
  ∀ n, P41827056616339956.a n = A048506 n

end A048506

/-! ## A048506.P5111835230077359332

`record[A048505(n)]`
-/

namespace A048506.P5111835230077359332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048506.P5111835230077359332

namespace A048506

/-- `record[A048505(n)]` -/
def P5111835230077359332.Spec : Prop :=
  ∀ n, P5111835230077359332.a n = A048506 n

end A048506

/-! ## A048506.P3298613042720383708

`record[n*A152568(n)+1]`
-/

namespace A048506.P3298613042720383708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A152568 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048506.P3298613042720383708

namespace A048506

/-- `record[n*A152568(n)+1]` -/
def P3298613042720383708.Spec : Prop :=
  ∀ n, P3298613042720383708.a n = A048506 n

end A048506

/-! ## A048506.P6903469698152033963

`xor(A014963(A000217(n+1)), A001788(n))`
-/

namespace A048506.P6903469698152033963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A000217 (n + 1)).toNat) (A001788 n)

end

end A048506.P6903469698152033963

namespace A048506

/-- `xor(A014963(A000217(n+1)), A001788(n))` -/
def P6903469698152033963.Spec : Prop :=
  ∀ n, P6903469698152033963.a n = A048506 n

end A048506

/-!
# A048507: a(n) = T(2,n), array T given by A048505.

The programs for A048507, the canonical program `A048507.P3457194782195800232` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048507 has offset 0).

The definition of A048507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048507.P3457194782195800232

`(n²+9*n+16)*2^(n-2)-3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048507

/-- `(n²+9*n+16)*2^(n-2)-3` -/
def P3457194782195800232.Spec : Prop :=
  ∀ n, P3457194782195800232.a n = (A048507 n : ℚ)

end A048507

/-! ## A048507.P12132609149223760752

`record[abs(2-A049611(n))-1]`
-/

namespace A048507.P12132609149223760752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A049611 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048507.P12132609149223760752

namespace A048507

/-- `record[abs(2-A049611(n))-1]` -/
def P12132609149223760752.Spec : Prop :=
  ∀ n, P12132609149223760752.a n = A048507 n

end A048507

/-! ## A048507.P10001569379531716821

`record[A084851(A008611(n))-3]`
-/

namespace A048507.P10001569379531716821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 (A008611 n).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048507.P10001569379531716821

namespace A048507

/-- `record[A084851(A008611(n))-3]` -/
def P10001569379531716821.Spec : Prop :=
  ∀ n, P10001569379531716821.a n = A048507 n

end A048507

/-! ## A048507.P8676425575945487539

`∑[A058396(n+1)-A000038(n)]`
-/

namespace A048507.P8676425575945487539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 (n + 1) - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048507.P8676425575945487539

namespace A048507

/-- `∑[A058396(n+1)-A000038(n)]` -/
def P8676425575945487539.Spec : Prop :=
  ∀ n, P8676425575945487539.a n = A048507 n

end A048507

/-! ## A048507.P12544351288163498483

`Δ[A001793(n+1)-3*n]`
-/

namespace A048507.P12544351288163498483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048507.P12544351288163498483

namespace A048507

/-- `Δ[A001793(n+1)-3*n]` -/
def P12544351288163498483.Spec : Prop :=
  ∀ n, P12544351288163498483.a n = A048507 n

end A048507

/-! ## A048507.P4064831474512724074

`Δ[Δ[A048506(n)]-3*n]`
-/

namespace A048507.P4064831474512724074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048507.P4064831474512724074

namespace A048507

/-- `Δ[Δ[A048506(n)]-3*n]` -/
def P4064831474512724074.Spec : Prop :=
  ∀ n, P4064831474512724074.a n = A048507 n

end A048507

/-! ## A048507.P14162318111599002944

`Δ[Δ[A001788(n)]-(3*n+1)]`
-/

namespace A048507.P14162318111599002944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (3 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048507.P14162318111599002944

namespace A048507

/-- `Δ[Δ[A001788(n)]-(3*n+1)]` -/
def P14162318111599002944.Spec : Prop :=
  ∀ n, P14162318111599002944.a n = A048507 n

end A048507

/-! ## A048507.P1914775666003925797

`record[A055252(n+1)-3]`
-/

namespace A048507.P1914775666003925797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055252 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048507.P1914775666003925797

namespace A048507

/-- `record[A055252(n+1)-3]` -/
def P1914775666003925797.Spec : Prop :=
  ∀ n, P1914775666003925797.a n = A048507 n

end A048507

/-! ## A048507.P2965793044605945575

`A048505(∑[n+2]+3)`
-/

namespace A048507.P2965793044605945575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A048507.P2965793044605945575

namespace A048507

/-- `A048505(∑[n+2]+3)` -/
def P2965793044605945575.Spec : Prop :=
  ∀ n, P2965793044605945575.a n = A048507 n

end A048507

/-!
# A048508: a(n) = T(3,n), array T given by A048505.

The programs for A048508, the canonical program `A048508.P999404958235077501` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048508 has offset 0).

The definition of A048508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048508.P999404958235077501

`(n+4)*(n+9)*2^(n-2)-8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048508

/-- `(n+4)*(n+9)*2^(n-2)-8` -/
def P999404958235077501.Spec : Prop :=
  ∀ n, P999404958235077501.a n = (A048508 n : ℚ)

end A048508

/-! ## A048508.P9258831427001129773

`Δ[A048507(n)-(8*n+7)]`
-/

namespace A048508.P9258831427001129773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048507 n - (8 * n + 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048508.P9258831427001129773

namespace A048508

/-- `Δ[A048507(n)-(8*n+7)]` -/
def P9258831427001129773.Spec : Prop :=
  ∀ n, P9258831427001129773.a n = A048508 n

end A048508

/-! ## A048508.P11097205318742474145

`Δ[A084851(n+1)-A017077(n)]`
-/

namespace A048508.P11097205318742474145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 (n + 1) - A017077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048508.P11097205318742474145

namespace A048508

/-- `Δ[A084851(n+1)-A017077(n)]` -/
def P11097205318742474145.Spec : Prop :=
  ∀ n, P11097205318742474145.a n = A048508 n

end A048508

/-! ## A048508.P8823115387470299551

`Δ[A049611(n+2)-A017101(n+1)]`
-/

namespace A048508.P8823115387470299551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 2) - A017101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048508.P8823115387470299551

namespace A048508

/-- `Δ[A049611(n+2)-A017101(n+1)]` -/
def P8823115387470299551.Spec : Prop :=
  ∀ n, P8823115387470299551.a n = A048508 n

end A048508

/-! ## A048508.P4733422054406655450

`A048505(A167614(n+2))`
-/

namespace A048508.P4733422054406655450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (A167614 (n + 2)).toNat

end

end A048508.P4733422054406655450

namespace A048508

/-- `A048505(A167614(n+2))` -/
def P4733422054406655450.Spec : Prop :=
  ∀ n, P4733422054406655450.a n = A048508 n

end A048508

/-! ## A048508.P12774712634267176051

`A048505(eq[3, A002262(n)])`
-/

namespace A048508.P12774712634267176051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048508.P12774712634267176051

namespace A048508

/-- `A048505(eq[3, A002262(n)])` -/
def P12774712634267176051.Spec : Prop :=
  ∀ n, P12774712634267176051.a n = A048508 n

end A048508

/-! ## A048508.P10656750102608967972

`A048505(eq[1, A144328(n+1)-2])`
-/

namespace A048508.P10656750102608967972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048508.P10656750102608967972

namespace A048508

/-- `A048505(eq[1, A144328(n+1)-2])` -/
def P10656750102608967972.Spec : Prop :=
  ∀ n, P10656750102608967972.a n = A048508 n

end A048508

/-! ## A048508.P4536600200318498859

`A048505(eq[2, A002260(n+1)-2])`
-/

namespace A048508.P4536600200318498859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048508.P4536600200318498859

namespace A048508

/-- `A048505(eq[2, A002260(n+1)-2])` -/
def P4536600200318498859.Spec : Prop :=
  ∀ n, P4536600200318498859.a n = A048508 n

end A048508

/-! ## A048508.P12641734459903337598

`A048505(eq[2, A002260(n+1)/2])`
-/

namespace A048508.P12641734459903337598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A048508.P12641734459903337598

namespace A048508

/-- `A048505(eq[2, A002260(n+1)/2])` -/
def P12641734459903337598.Spec : Prop :=
  ∀ n, P12641734459903337598.a n = A048508 n

end A048508

/-!
# A048509: a(n) = T(4,n), array T given by A048505.

The programs for A048509, the canonical program `A048509.P14616637768825833167` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048509 has offset 0).

The definition of A048509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048509.P14616637768825833167

`(n²+17*n+64)*2^(n-2)-15`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048509

/-- `(n²+17*n+64)*2^(n-2)-15` -/
def P14616637768825833167.Spec : Prop :=
  ∀ n, P14616637768825833167.a n = (A048509 n : ℚ)

end A048509

/-! ## A048509.P16365405416608807651

`Δ[A048508(n)-A257645(n)]`
-/

namespace A048509.P16365405416608807651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048508 n - A257645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048509.P16365405416608807651

namespace A048509

/-- `Δ[A048508(n)-A257645(n)]` -/
def P16365405416608807651.Spec : Prop :=
  ∀ n, P16365405416608807651.a n = A048509 n

end A048509

/-! ## A048509.P18277437551117804833

`A048505(eq[4, A002262(n)])`
-/

namespace A048509.P18277437551117804833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048509.P18277437551117804833

namespace A048509

/-- `A048505(eq[4, A002262(n)])` -/
def P18277437551117804833.Spec : Prop :=
  ∀ n, P18277437551117804833.a n = A048509 n

end A048509

/-! ## A048509.P11187999101023498638

`A048505(A000096(n+3)+5)`
-/

namespace A048509.P11187999101023498638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (A000096 (n + 3) + 5).toNat

end

end A048509.P11187999101023498638

namespace A048509

/-- `A048505(A000096(n+3)+5)` -/
def P11187999101023498638.Spec : Prop :=
  ∀ n, P11187999101023498638.a n = A048509 n

end A048509

/-! ## A048509.P15026626586582919888

`A048505(eq[4, A144328(n+1)])`
-/

namespace A048509.P15026626586582919888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048509.P15026626586582919888

namespace A048509

/-- `A048505(eq[4, A144328(n+1)])` -/
def P15026626586582919888.Spec : Prop :=
  ∀ n, P15026626586582919888.a n = A048509 n

end A048509

/-! ## A048509.P17032251531152792200

`A048505(A000217(n+5)-(n+1))`
-/

namespace A048509.P17032251531152792200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A048509.P17032251531152792200

namespace A048509

/-- `A048505(A000217(n+5)-(n+1))` -/
def P17032251531152792200.Spec : Prop :=
  ∀ n, P17032251531152792200.a n = A048509 n

end A048509

/-!
# A048510: a(n) = T(5,n), array T given by A048505.

The programs for A048510, the canonical program `A048510.P15399364423971016772` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048510 has offset 0).

The definition of A048510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048510.P15399364423971016772

`(n²+21*n+100)*2^(n-2)-24`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048510

/-- `(n²+21*n+100)*2^(n-2)-24` -/
def P15399364423971016772.Spec : Prop :=
  ∀ n, P15399364423971016772.a n = (A048510 n : ℚ)

end A048510

/-! ## A048510.P584782193943970214

`A048505(A000096(n+4)+6)`
-/

namespace A048510.P584782193943970214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (A000096 (n + 4) + 6).toNat

end

end A048510.P584782193943970214

namespace A048510

/-- `A048505(A000096(n+4)+6)` -/
def P584782193943970214.Spec : Prop :=
  ∀ n, P584782193943970214.a n = A048510 n

end A048510

/-! ## A048510.P16125856843124917775

`A048505(A000217(n+5)+5)`
-/

namespace A048510.P16125856843124917775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (A000217 (n + 5) + 5).toNat

end

end A048510.P16125856843124917775

namespace A048510

/-- `A048505(A000217(n+5)+5)` -/
def P16125856843124917775.Spec : Prop :=
  ∀ n, P16125856843124917775.a n = A048510 n

end A048510

/-! ## A048510.P17515910735859847294

`A048505(eq[5, A144328(n+1)])`
-/

namespace A048510.P17515910735859847294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048510.P17515910735859847294

namespace A048510

/-- `A048505(eq[5, A144328(n+1)])` -/
def P17515910735859847294.Spec : Prop :=
  ∀ n, P17515910735859847294.a n = A048510 n

end A048510

/-!
# A048511: a(n) = T(6,n), array T given by A048505.

The programs for A048511, the canonical program `A048511.P829932951773873775` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048511 has offset 0).

The definition of A048511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048511.P829932951773873775

`(n+9)*(n+16)*2^(n-2)-35`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048511

/-- `(n+9)*(n+16)*2^(n-2)-35` -/
def P829932951773873775.Spec : Prop :=
  ∀ n, P829932951773873775.a n = (A048511 n : ℚ)

end A048511

/-! ## A048511.P16812909196941801851

`Δ[A048510(n)-35*n]`
-/

namespace A048511.P16812909196941801851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048510 n - (35 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048511.P16812909196941801851

namespace A048511

/-- `Δ[A048510(n)-35*n]` -/
def P16812909196941801851.Spec : Prop :=
  ∀ n, P16812909196941801851.a n = A048511 n

end A048511

/-! ## A048511.P12539899580274713840

`Δ[Δ[A048509(n)]-35*n]`
-/

namespace A048511.P12539899580274713840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (35 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048511.P12539899580274713840

namespace A048511

/-- `Δ[Δ[A048509(n)]-35*n]` -/
def P12539899580274713840.Spec : Prop :=
  ∀ n, P12539899580274713840.a n = A048511 n

end A048511

/-! ## A048511.P6967931342478701660

`A048505(A000096(n+5)+7)`
-/

namespace A048511.P6967931342478701660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (A000096 (n + 5) + 7).toNat

end

end A048511.P6967931342478701660

namespace A048511

/-- `A048505(A000096(n+5)+7)` -/
def P6967931342478701660.Spec : Prop :=
  ∀ n, P6967931342478701660.a n = A048511 n

end A048511

/-! ## A048511.P17802494073252838464

`A048505(eq[6, A144328(n+1)])`
-/

namespace A048511.P17802494073252838464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048511.P17802494073252838464

namespace A048511

/-- `A048505(eq[6, A144328(n+1)])` -/
def P17802494073252838464.Spec : Prop :=
  ∀ n, P17802494073252838464.a n = A048511 n

end A048511

/-!
# A048512: a(n) = T(7,n), array T given by A048505.

The programs for A048512, the canonical program `A048512.P10277746947776527850` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048512 has offset 0).

The definition of A048512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048512.P10277746947776527850

`(n²+29*n+196)*2^(n-2)-48`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048512

/-- `(n²+29*n+196)*2^(n-2)-48` -/
def P10277746947776527850.Spec : Prop :=
  ∀ n, P10277746947776527850.a n = (A048512 n : ℚ)

end A048512

/-! ## A048512.P13099166813760241299

`A048505(eq[7, A002262(n)])`
-/

namespace A048512.P13099166813760241299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048512.P13099166813760241299

namespace A048512

/-- `A048505(eq[7, A002262(n)])` -/
def P13099166813760241299.Spec : Prop :=
  ∀ n, P13099166813760241299.a n = A048512 n

end A048512

/-! ## A048512.P17763589438023699075

`A048505(eq[7, A144328(n+1)])`
-/

namespace A048512.P17763589438023699075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048512.P17763589438023699075

namespace A048512

/-- `A048505(eq[7, A144328(n+1)])` -/
def P17763589438023699075.Spec : Prop :=
  ∀ n, P17763589438023699075.a n = A048512 n

end A048512

/-! ## A048512.P5766247686615416539

`A048505(eq[8, A002260(n+1)])`
-/

namespace A048512.P5766247686615416539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048512.P5766247686615416539

namespace A048512

/-- `A048505(eq[8, A002260(n+1)])` -/
def P5766247686615416539.Spec : Prop :=
  ∀ n, P5766247686615416539.a n = A048512 n

end A048512

/-!
# A048513: a(n) = T(8,n), array T given by A048505.

The programs for A048513, the canonical program `A048513.P7819311905271726713` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048513 has offset 0).

The definition of A048513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048513.P7819311905271726713

`(n²+33*n+256)*2^(n-2)-63`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048513

/-- `(n²+33*n+256)*2^(n-2)-63` -/
def P7819311905271726713.Spec : Prop :=
  ∀ n, P7819311905271726713.a n = (A048513 n : ℚ)

end A048513

/-! ## A048513.P5984077302622958421

`A048505(eq[8, A002262(n)])`
-/

namespace A048513.P5984077302622958421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048513.P5984077302622958421

namespace A048513

/-- `A048505(eq[8, A002262(n)])` -/
def P5984077302622958421.Spec : Prop :=
  ∀ n, P5984077302622958421.a n = A048513 n

end A048513

/-! ## A048513.P17387844987781658028

`A048505(eq[9, A002260(n+1)])`
-/

namespace A048513.P17387844987781658028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048513.P17387844987781658028

namespace A048513

/-- `A048505(eq[9, A002260(n+1)])` -/
def P17387844987781658028.Spec : Prop :=
  ∀ n, P17387844987781658028.a n = A048513 n

end A048513

/-!
# A048514: a(n) = T(0,n)+T(1,n-1)+...+T(n,0), array T given by A048505.

The programs for A048514, the canonical program `A048514.P5552065461441350087` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048514 has offset 0).

The definition of A048514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048514.P5552065461441350087

`∑[A001793(n+1)-n*(n+2)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048514

/-- `∑[A001793(n+1)-n*(n+2)]` -/
def P5552065461441350087.Spec : Prop :=
  ∀ n, P5552065461441350087.a n = A048514 n

theorem P5552065461441350087.correct : P5552065461441350087.Spec := by
  intro n
  simp only [A048514]

end A048514

/-! ## A048514.P7886496178614260794

`∑[∑[A084851(n)]-A005563(n)]`
-/

namespace A048514.P7886496178614260794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048514.P7886496178614260794

namespace A048514

/-- `∑[∑[A084851(n)]-A005563(n)]` -/
def P7886496178614260794.Spec : Prop :=
  ∀ n, P7886496178614260794.a n = A048514 n

end A048514

/-! ## A048514.P5087732559132694486

`∑[Δ[A001788(n)]-A005563(n)]`
-/

namespace A048514.P5087732559132694486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048514.P5087732559132694486

namespace A048514

/-- `∑[Δ[A001788(n)]-A005563(n)]` -/
def P5087732559132694486.Spec : Prop :=
  ∀ n, P5087732559132694486.a n = A048514 n

end A048514

/-! ## A048514.P8420847617534020796

`∑[Δ[A048506(n)]-A005563(n)]`
-/

namespace A048514.P8420847617534020796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048514.P8420847617534020796

namespace A048514

/-- `∑[Δ[A048506(n)]-A005563(n)]` -/
def P8420847617534020796.Spec : Prop :=
  ∀ n, P8420847617534020796.a n = A048514 n

end A048514

/-! ## A048514.P7026123624214304406

`A001788(n+1)-∑[A005563(n)]`
-/

namespace A048514.P7026123624214304406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048514.P7026123624214304406

namespace A048514

/-- `A001788(n+1)-∑[A005563(n)]` -/
def P7026123624214304406.Spec : Prop :=
  ∀ n, P7026123624214304406.a n = A048514 n

end A048514

/-! ## A048514.P12630137362731473465

`Δ[A052481(n)]-∑[A005563(n)]`
-/

namespace A048514.P12630137362731473465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A048514.P12630137362731473465

namespace A048514

/-- `Δ[A052481(n)]-∑[A005563(n)]` -/
def P12630137362731473465.Spec : Prop :=
  ∀ n, P12630137362731473465.a n = A048514 n

end A048514

/-!
# A048515: a(n) = T(n,n), array T given by A048505.

The programs for A048515, the canonical program `A048515.P6923430101304562401` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048515 has offset 0).

The definition of A048515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048515.P6923430101304562401

`(9*n²+n)*2^(n-2)-n²+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048515

/-- `(9*n²+n)*2^(n-2)-n²+1` -/
def P6923430101304562401.Spec : Prop :=
  ∀ n, P6923430101304562401.a n = (A048515 n : ℚ)

end A048515

/-! ## A048515.P13744378893836281046

`A048505(∑[4*n])`
-/

namespace A048515.P13744378893836281046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048515.P13744378893836281046

namespace A048515

/-- `A048505(∑[4*n])` -/
def P13744378893836281046.Spec : Prop :=
  ∀ n, P13744378893836281046.a n = A048515 n

end A048515

/-! ## A048515.P5216446323369361

`record[A003982(n)*A048505(n)]`
-/

namespace A048515.P5216446323369361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A048505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048515.P5216446323369361

namespace A048515

/-- `record[A003982(n)*A048505(n)]` -/
def P5216446323369361.Spec : Prop :=
  ∀ n, P5216446323369361.a n = A048515 n

end A048515

/-! ## A048515.P13367618069373114549

`record[gcd(A008482(n), A048505(n))]`
-/

namespace A048515.P13367618069373114549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A048505 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048515.P13367618069373114549

namespace A048515

/-- `record[gcd(A008482(n), A048505(n))]` -/
def P13367618069373114549.Spec : Prop :=
  ∀ n, (P13367618069373114549.a n : ℤ) = A048515 n

end A048515

/-! ## A048515.P5867574297654270056

`record[A048505(n*A077051(n+1))]`
-/

namespace A048515.P5867574297654270056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 ((n : ℤ) * A077051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048515.P5867574297654270056

namespace A048515

/-- `record[A048505(n*A077051(n+1))]` -/
def P5867574297654270056.Spec : Prop :=
  ∀ n, P5867574297654270056.a n = A048515 n

end A048515

/-! ## A048515.P7248810406020551380

`A048505(A046092(n))^A178334(n)`
-/

namespace A048515.P7248810406020551380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048505 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A048515.P7248810406020551380

namespace A048515

/-- `A048505(A046092(n))^A178334(n)` -/
def P7248810406020551380.Spec : Prop :=
  ∀ n, P7248810406020551380.a n = (A048515 n : ℚ)

end A048515

/-!
# A048516: Array T read by diagonals: T(m,n)=number of subsets S of {1,2,3,...,m+n-1} such that |S|>1 and |a-b|>=m for all distinct a and b in S, m=1,2,3,...; n=1,2,3,...

The programs for A048516, there is no canonical definition to state claims against.
-/

/-! ## A048516.P15828692090642414120

`and(A008292(n+1), A316855(A091042(n)))`
-/

namespace A048516.P15828692090642414120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008292 (n + 1)) (A316855 (A091042 n).toNat)

end

end A048516.P15828692090642414120

/-! ## A048516.P3895655714150722097

`A008292(n+1)%A194445(A065826(n+1))`
-/

namespace A048516.P3895655714150722097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008292 (n + 1)) (A194445 (A065826 (n + 1)).toNat)

end

end A048516.P3895655714150722097

/-!
# A048517: Primes whose sum of digits is the perfect number 28.

The programs for A048517, the canonical program `A048517.P16047989077348899026` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048517 has offset 1).

The definition of A048517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048517.P16047989077348899026

`∩[A062336(n+1), A117674(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A048517

/-- `∩[A062336(n+1), A117674(n+1)]` -/
def P16047989077348899026.Spec : Prop :=
  ∀ n, (P16047989077348899026.a n : ℤ) = A048517 (n + 1)

theorem P16047989077348899026.correct : P16047989077348899026.Spec := by
  intro n
  simp only [A048517, Nat.add_sub_cancel]

end A048517

/-! ## A048517.P11702116930622404965

`∩[A061237(n+1), A062336(n+1)]`
-/

namespace A048517.P11702116930622404965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048517.P11702116930622404965

namespace A048517

/-- `∩[A061237(n+1), A062336(n+1)]` -/
def P11702116930622404965.Spec : Prop :=
  ∀ n, (P11702116930622404965.a n : ℤ) = A048517 (n + 1)

end A048517

/-! ## A048517.P11618175621985437147

`∩[A062336(n+1), A166561(n+1)]`
-/

namespace A048517.P11618175621985437147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048517.P11618175621985437147

namespace A048517

/-- `∩[A062336(n+1), A166561(n+1)]` -/
def P11618175621985437147.Spec : Prop :=
  ∀ n, (P11618175621985437147.a n : ℤ) = A048517 (n + 1)

end A048517

/-! ## A048517.P13807322534772143586

`∩[A061237(n+1), A062338(n+1)]`
-/

namespace A048517.P13807322534772143586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048517.P13807322534772143586

namespace A048517

/-- `∩[A061237(n+1), A062338(n+1)]` -/
def P13807322534772143586.Spec : Prop :=
  ∀ n, (P13807322534772143586.a n : ℤ) = A048517 (n + 1)

end A048517

/-! ## A048517.P5107824196550804071

`∩[A062336(n+1), A062338(n+1)]`
-/

namespace A048517.P5107824196550804071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048517.P5107824196550804071

namespace A048517

/-- `∩[A062336(n+1), A062338(n+1)]` -/
def P5107824196550804071.Spec : Prop :=
  ∀ n, (P5107824196550804071.a n : ℤ) = A048517 (n + 1)

end A048517

/-! ## A048517.P11881270567340238441

`∩[A062338(n+1), A117674(n+1)]`
-/

namespace A048517.P11881270567340238441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048517.P11881270567340238441

namespace A048517

/-- `∩[A062338(n+1), A117674(n+1)]` -/
def P11881270567340238441.Spec : Prop :=
  ∀ n, (P11881270567340238441.a n : ℤ) = A048517 (n + 1)

end A048517

/-! ## A048517.P6739706698956373024

`∩[A062336(n+1), A079130(n+1)]`
-/

namespace A048517.P6739706698956373024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048517.P6739706698956373024

namespace A048517

/-- `∩[A062336(n+1), A079130(n+1)]` -/
def P6739706698956373024.Spec : Prop :=
  ∀ n, (P6739706698956373024.a n : ℤ) = A048517 (n + 1)

end A048517

/-! ## A048517.P1452034844244844321

`p?[A236751(n+13)+1]`
-/

namespace A048517.P1452034844244844321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236751 (n + 13) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048517.P1452034844244844321

namespace A048517

/-- `p?[A236751(n+13)+1]` -/
def P1452034844244844321.Spec : Prop :=
  ∀ n, P1452034844244844321.a n = A048517 (n + 1)

end A048517

/-! ## A048517.P15528944842262356895

`p?[A017173(A279777(n+1))]`
-/

namespace A048517.P15528944842262356895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A279777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048517.P15528944842262356895

namespace A048517

/-- `p?[A017173(A279777(n+1))]` -/
def P15528944842262356895.Spec : Prop :=
  ∀ n, P15528944842262356895.a n = A048517 (n + 1)

end A048517

/-!
# A048519: Prime plus its digit sum equals a prime.

The programs for A048519, the canonical program `A048519.P10135432408505313688` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048519 has offset 1).

The definition of A048519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048519.P10135432408505313688

`p?[A047791(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048519

/-- `p?[A047791(n+1)]` -/
def P10135432408505313688.Spec : Prop :=
  ∀ n, P10135432408505313688.a n = A048519 (n + 1)

theorem P10135432408505313688.correct : P10135432408505313688.Spec := by
  intro n
  simp only [A048519, Nat.add_sub_cancel]

end A048519

/-! ## A048519.P7489022771994157282

`∩[A000040(n+1), A047791(n+1)]`
-/

namespace A048519.P7489022771994157282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P7489022771994157282

namespace A048519

/-- `∩[A000040(n+1), A047791(n+1)]` -/
def P7489022771994157282.Spec : Prop :=
  ∀ n, (P7489022771994157282.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P926876440330000283

`∩[A004139(n+1), A047791(n+1)]`
-/

namespace A048519.P926876440330000283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P926876440330000283

namespace A048519

/-- `∩[A004139(n+1), A047791(n+1)]` -/
def P926876440330000283.Spec : Prop :=
  ∀ n, (P926876440330000283.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P18040616646322624226

`∩[A045319(n+1), A047791(n+1)]`
-/

namespace A048519.P18040616646322624226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P18040616646322624226

namespace A048519

/-- `∩[A045319(n+1), A047791(n+1)]` -/
def P18040616646322624226.Spec : Prop :=
  ∀ n, (P18040616646322624226.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P15551577660041943354

`∩[A045344(n+1), A047791(n+1)]`
-/

namespace A048519.P15551577660041943354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P15551577660041943354

namespace A048519

/-- `∩[A045344(n+1), A047791(n+1)]` -/
def P15551577660041943354.Spec : Prop :=
  ∀ n, (P15551577660041943354.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P17217559773897830650

`∩[A047791(n+1), A051948(n+1)]`
-/

namespace A048519.P17217559773897830650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P17217559773897830650

namespace A048519

/-- `∩[A047791(n+1), A051948(n+1)]` -/
def P17217559773897830650.Spec : Prop :=
  ∀ n, (P17217559773897830650.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P14235509446452656398

`∩[A047791(n+1), A064728(n+1)]`
-/

namespace A048519.P14235509446452656398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P14235509446452656398

namespace A048519

/-- `∩[A047791(n+1), A064728(n+1)]` -/
def P14235509446452656398.Spec : Prop :=
  ∀ n, (P14235509446452656398.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P1550328849978636948

`∩[A047791(n+1), A065091(n+1)]`
-/

namespace A048519.P1550328849978636948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P1550328849978636948

namespace A048519

/-- `∩[A047791(n+1), A065091(n+1)]` -/
def P1550328849978636948.Spec : Prop :=
  ∀ n, (P1550328849978636948.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P6482173147243050959

`∩[A047791(n+1), A065396(n+1)]`
-/

namespace A048519.P6482173147243050959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P6482173147243050959

namespace A048519

/-- `∩[A047791(n+1), A065396(n+1)]` -/
def P6482173147243050959.Spec : Prop :=
  ∀ n, (P6482173147243050959.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P1188726523740293977

`∩[A047791(n+1), A075763(n+1)]`
-/

namespace A048519.P1188726523740293977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P1188726523740293977

namespace A048519

/-- `∩[A047791(n+1), A075763(n+1)]` -/
def P1188726523740293977.Spec : Prop :=
  ∀ n, (P1188726523740293977.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P12905187665310048279

`∩[A047791(n+1), A116974(n+1)]`
-/

namespace A048519.P12905187665310048279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P12905187665310048279

namespace A048519

/-- `∩[A047791(n+1), A116974(n+1)]` -/
def P12905187665310048279.Spec : Prop :=
  ∀ n, (P12905187665310048279.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P2288719029188154796

`∩[A047791(n+1), A119449(n+1)]`
-/

namespace A048519.P2288719029188154796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P2288719029188154796

namespace A048519

/-- `∩[A047791(n+1), A119449(n+1)]` -/
def P2288719029188154796.Spec : Prop :=
  ∀ n, (P2288719029188154796.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P6880805278854516129

`∩[A047791(n+1), A140826(n+1)]`
-/

namespace A048519.P6880805278854516129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P6880805278854516129

namespace A048519

/-- `∩[A047791(n+1), A140826(n+1)]` -/
def P6880805278854516129.Spec : Prop :=
  ∀ n, (P6880805278854516129.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P9110662476267198692

`∩[A047791(n+1), A161346(n+1)]`
-/

namespace A048519.P9110662476267198692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P9110662476267198692

namespace A048519

/-- `∩[A047791(n+1), A161346(n+1)]` -/
def P9110662476267198692.Spec : Prop :=
  ∀ n, (P9110662476267198692.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P13896187592515050170

`∩[A047791(n+1), A161428(n+1)]`
-/

namespace A048519.P13896187592515050170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P13896187592515050170

namespace A048519

/-- `∩[A047791(n+1), A161428(n+1)]` -/
def P13896187592515050170.Spec : Prop :=
  ∀ n, (P13896187592515050170.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P13077235360350843684

`∩[A047791(n+1), A175787(n+1)]`
-/

namespace A048519.P13077235360350843684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P13077235360350843684

namespace A048519

/-- `∩[A047791(n+1), A175787(n+1)]` -/
def P13077235360350843684.Spec : Prop :=
  ∀ n, (P13077235360350843684.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P7501312526399700384

`∩[A047791(n+1), A182986(n+1)]`
-/

namespace A048519.P7501312526399700384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P7501312526399700384

namespace A048519

/-- `∩[A047791(n+1), A182986(n+1)]` -/
def P7501312526399700384.Spec : Prop :=
  ∀ n, (P7501312526399700384.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P5959284910790253363

`∩[A047791(n+1), A215848(n+1)]`
-/

namespace A048519.P5959284910790253363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P5959284910790253363

namespace A048519

/-- `∩[A047791(n+1), A215848(n+1)]` -/
def P5959284910790253363.Spec : Prop :=
  ∀ n, (P5959284910790253363.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P8905301737613720420

`∩[A047791(n+1), A301987(n+1)]`
-/

namespace A048519.P8905301737613720420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P8905301737613720420

namespace A048519

/-- `∩[A047791(n+1), A301987(n+1)]` -/
def P8905301737613720420.Spec : Prop :=
  ∀ n, (P8905301737613720420.a n : ℤ) = A048519 (n + 1)

end A048519

/-! ## A048519.P2907014284611501960

`∩[A348283(n+1), A047791(n+1)]`
-/

namespace A048519.P2907014284611501960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048519.P2907014284611501960

namespace A048519

/-- `∩[A348283(n+1), A047791(n+1)]` -/
def P2907014284611501960.Spec : Prop :=
  ∀ n, (P2907014284611501960.a n : ℤ) = A048519 (n + 1)

end A048519

/-!
# A048520: Primes expressible as the sum of a prime plus its digit sum.

The programs for A048520, there is no canonical definition to state claims against.
-/

/-! ## A048520.P9689626470537798306

`p?[or(A316867(n), A320881(n+1))]`
-/

namespace A048520.P9689626470537798306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316867 n) (A320881 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048520.P9689626470537798306

/-! ## A048520.P15180580787841496258

`p?[or(A297046(n+1), A320881(n+1))]`
-/

namespace A048520.P15180580787841496258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A297046 (n + 1)) (A320881 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048520.P15180580787841496258

/-! ## A048520.P13065752000995219253

`p?[or(A320841(2*(n+2)), A320881(n+1))]`
-/

namespace A048520.P13065752000995219253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320841 (2 * (n + 2))) (A320881 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048520.P13065752000995219253

/-! ## A048520.P15168683569972621454

`p?[A320881(n+1)]`
-/

namespace A048520.P15168683569972621454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048520.P15168683569972621454

/-! ## A048520.P5586393530541362445

`record[A001414(A320881(n+4))]`
-/

namespace A048520.P5586393530541362445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A320881 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048520.P5586393530541362445

/-!
# A048521: Primes expressible as the sum of an integer plus its digit sum.

The programs for A048521, there is no canonical definition to state claims against.
-/

/-! ## A048521.P2288821963075875388

`A000040(lt[1, A107740(n+1)+1]+1)`
-/

namespace A048521.P2288821963075875388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107740 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A048521.P2288821963075875388

/-! ## A048521.P8196746817318609814

`p?[A176995(n+1)]`
-/

namespace A048521.P8196746817318609814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048521.P8196746817318609814

/-! ## A048521.P12266716715936152822

`record[A020639(A176995(n+2))]`
-/

namespace A048521.P12266716715936152822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A176995 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048521.P12266716715936152822

/-! ## A048521.P15217843052223459584

`filter[A176995(n+1), A010051(#)]`
-/

namespace A048521.P15217843052223459584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A048521.P15217843052223459584

/-! ## A048521.P16135233612012271138

`∩[A000040(n+1), A176995(n+1)]`
-/

namespace A048521.P16135233612012271138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048521.P16135233612012271138

/-! ## A048521.P6800647093158155008

`∩[A008578(n+1), A176995(n+1)]`
-/

namespace A048521.P6800647093158155008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048521.P6800647093158155008

/-! ## A048521.P3832042530084380753

`∩[A033946(n+1), A176995(n+1)]`
-/

namespace A048521.P3832042530084380753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048521.P3832042530084380753

/-! ## A048521.P11173868030863965679

`∩[A045319(n+1), A176995(n+1)]`
-/

namespace A048521.P11173868030863965679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048521.P11173868030863965679

/-! ## A048521.P4379788841725107632

`∩[A045344(n+1), A176995(n+1)]`
-/

namespace A048521.P4379788841725107632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048521.P4379788841725107632

/-! ## A048521.P13704987179510658680

`∩[A158611(n+1), A176995(n+1)]`
-/

namespace A048521.P13704987179510658680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048521.P13704987179510658680

/-! ## A048521.P17445467120968518863

`∩[A176995(n+1), A182986(n+1)]`
-/

namespace A048521.P17445467120968518863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048521.P17445467120968518863

/-! ## A048521.P18202713031710598823

`p?[comp[A006378(n+1)]]`
-/

namespace A048521.P18202713031710598823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A048521.P18202713031710598823

/-! ## A048521.P15581445428235588799

`record[p?[A062028(n)]]`
-/

namespace A048521.P15581445428235588799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048521.P15581445428235588799

/-! ## A048521.P14902848849821556096

`record[p?[A007953(n)+n]]`
-/

namespace A048521.P14902848849821556096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048521.P14902848849821556096

/-! ## A048521.P17355899848801477107

`record[A020639(A062028(n+1))]`
-/

namespace A048521.P17355899848801477107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048521.P17355899848801477107

/-! ## A048521.P15242428560926710540

`filter[A176995(n+1), A080339(#)]`
-/

namespace A048521.P15242428560926710540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A048521.P15242428560926710540

/-! ## A048521.P14046490346912633750

`record[A014963(A007953(n+1)+1+n)]`
-/

namespace A048521.P14046490346912633750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007953 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048521.P14046490346912633750

/-! ## A048521.P8307967341962414235

`record[A006530(A014963(∑{digits}[n+2, #]+2+n))]`
-/

namespace A048521.P8307967341962414235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014963 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048521.P8307967341962414235

/-! ## A048521.P8846475715230829972

`eq[n, char[A062028(n)]*A051697(n)]`
-/

namespace A048521.P8846475715230829972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048521.P8846475715230829972

/-!
# A048523: Primes for which only one iteration of 'Prime plus its digit sum equals a prime' is possible.

The programs for A048523, there is no canonical definition to state claims against.
-/

/-! ## A048523.P4729077387208457788

`A048519(A037918(n+2)+A018843(3*n+2))`
-/

namespace A048523.P4729077387208457788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048519 (A037918 (n + 2) + A018843 (3 * n + 2)).toNat

end

end A048523.P4729077387208457788

/-! ## A048523.P5068647092551161150

`A048519(A078174(n+1)%A070272(n+1))`
-/

namespace A048523.P5068647092551161150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048519 (Int.tmod (A078174 (n + 1)) (A070272 (n + 1))).toNat

end

end A048523.P5068647092551161150

/-! ## A048523.P10080574962901729339

`∩[A175679(n+1), A048519(A246655(n+1))]`
-/

namespace A048523.P10080574962901729339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048519 (A246655 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048523.P10080574962901729339

/-! ## A048523.P1351877553896588058

`∩[A340104(n+1), A048519(A002113(n+2))]`
-/

namespace A048523.P1351877553896588058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048519 (A002113 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048523.P1351877553896588058

/-!
# A048524: Primes for which only two iterations of 'Prime plus its digit sum equals a prime' are possible.

The programs for A048524, there is no canonical definition to state claims against.
-/

/-! ## A048524.P3813477339379639098

`A320882(A020658(n+1)%A320883(n+1))`
-/

namespace A048524.P3813477339379639098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320882 (Int.tmod (A020658 (n + 1)) (A320883 (n + 1))).toNat

end

end A048524.P3813477339379639098

/-! ## A048524.P9319167001858202877

`A320882(A020658(n+1)^A160941(n+1))`
-/

namespace A048524.P9319167001858202877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320882 (SequenceMachineLib.roundAway ((A020658 (n + 1) : ℚ) ^ (A160941 (n + 1) : ℤ))).toNat

end

end A048524.P9319167001858202877

/-! ## A048524.P12264947072235961655

`A320882(A160941(n+1)²²*A020658(n+1))`
-/

namespace A048524.P12264947072235961655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320882 ((A160941 (n + 1) ^ 2) ^ 2 * A020658 (n + 1)).toNat

end

end A048524.P12264947072235961655

/-! ## A048524.P10234468244082253666

`∩[A320882(n+1), A391005(n+1)]`
-/

namespace A048524.P10234468244082253666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048524.P10234468244082253666

/-!
# A048528: Primes expressible in two ways as the sum of an integer and its digit sum.

The programs for A048528, there is no canonical definition to state claims against.
-/

/-! ## A048528.P12684623112251142114

`A065091(eq[2, A107740(n+1)])`
-/

namespace A048528.P12684623112251142114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048528.P12684623112251142114

/-! ## A048528.P9278223120991298742

`p?[A230094(n+1)]`
-/

namespace A048528.P9278223120991298742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048528.P9278223120991298742

/-! ## A048528.P4370631366242799522

`∩[A000040(n+1), A230094(n+1)]`
-/

namespace A048528.P4370631366242799522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P4370631366242799522

/-! ## A048528.P17094680303366542550

`∩[A004139(n+1), A230094(n+1)]`
-/

namespace A048528.P17094680303366542550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P17094680303366542550

/-! ## A048528.P9183630572987278758

`∩[A006005(n+1), A230094(n+1)]`
-/

namespace A048528.P9183630572987278758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P9183630572987278758

/-! ## A048528.P14153381135686396101

`∩[A008578(n+1), A230094(n+1)]`
-/

namespace A048528.P14153381135686396101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P14153381135686396101

/-! ## A048528.P1399718415591731365

`∩[A033946(n+1), A230094(n+1)]`
-/

namespace A048528.P1399718415591731365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P1399718415591731365

/-! ## A048528.P12473801164116882708

`∩[A045319(n+1), A230094(n+1)]`
-/

namespace A048528.P12473801164116882708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P12473801164116882708

/-! ## A048528.P14497007178642648311

`∩[A045344(n+1), A230094(n+1)]`
-/

namespace A048528.P14497007178642648311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P14497007178642648311

/-! ## A048528.P13447851114622539259

`∩[A046022(n+1), A230094(n+1)]`
-/

namespace A048528.P13447851114622539259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P13447851114622539259

/-! ## A048528.P3344564068529809796

`∩[A048521(n+1), A230094(n+1)]`
-/

namespace A048528.P3344564068529809796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P3344564068529809796

/-! ## A048528.P17642181418378332360

`∩[A051948(n+1), A230094(n+1)]`
-/

namespace A048528.P17642181418378332360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P17642181418378332360

/-! ## A048528.P5565925055039735451

`∩[A053813(n+1), A230094(n+1)]`
-/

namespace A048528.P5565925055039735451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P5565925055039735451

/-! ## A048528.P16937375542167425560

`∩[A062972(n+1), A230094(n+1)]`
-/

namespace A048528.P16937375542167425560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P16937375542167425560

/-! ## A048528.P5403394824815256344

`∩[A065091(n+1), A230094(n+1)]`
-/

namespace A048528.P5403394824815256344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P5403394824815256344

/-! ## A048528.P2912138650787436268

`∩[A065376(n+1), A230094(n+1)]`
-/

namespace A048528.P2912138650787436268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P2912138650787436268

/-! ## A048528.P2777581591785040054

`∩[A065396(n+1), A230094(n+1)]`
-/

namespace A048528.P2777581591785040054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P2777581591785040054

/-! ## A048528.P16010342994492026626

`∩[A067126(n+1), A230094(n+1)]`
-/

namespace A048528.P16010342994492026626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P16010342994492026626

/-! ## A048528.P6185452271575081426

`∩[A071621(n+1), A230094(n+1)]`
-/

namespace A048528.P6185452271575081426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P6185452271575081426

/-! ## A048528.P13151211718028642464

`∩[A078138(n+1), A230094(n+1)]`
-/

namespace A048528.P13151211718028642464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048528.P13151211718028642464

/-!
# A048529: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 0's.

The programs for A048529, there is no canonical definition to state claims against.
-/

/-! ## A048529.P6618784104720086172

`floor(sqrt(A048530(n+1)))`
-/

namespace A048529.P6618784104720086172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048530 (n + 1))

end

end A048529.P6618784104720086172

/-! ## A048529.P17212827681764845847

`round(sqrt(A048530(n+1)-A000217(n)))`
-/

namespace A048529.P17212827681764845847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048530 (n + 1) - A000217 n : ℝ))

end

end A048529.P17212827681764845847

/-! ## A048529.P2755052437208836746

`round(sqrt(A048530(n+1)-A000384(n)))`
-/

namespace A048529.P2755052437208836746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048530 (n + 1) - A000384 n : ℝ))

end

end A048529.P2755052437208836746

/-! ## A048529.P6020506078897827268

`round(sqrt(A048530(n+1)-A002262(n)))`
-/

namespace A048529.P6020506078897827268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048530 (n + 1) - A002262 n : ℝ))

end

end A048529.P6020506078897827268

/-! ## A048529.P4859987826145960218

`round(sqrt(A048530(n+1)-A002378(n)))`
-/

namespace A048529.P4859987826145960218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048530 (n + 1) - A002378 n : ℝ))

end

end A048529.P4859987826145960218

/-!
# A048530: Smallest oblong (promic) number containing exactly n 0's.

The programs for A048530, there is no canonical definition to state claims against.
-/

/-! ## A048530.P18289724313649659550

`A048529(n+1)+A048529(n+1)²`
-/

namespace A048530.P18289724313649659550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048529 (n + 1) + A048529 (n + 1) ^ 2

end

end A048530.P18289724313649659550

/-! ## A048530.P9972367838716460715

`(A054977(n)+A048529(n+1))*A048529(n+1)`
-/

namespace A048530.P9972367838716460715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054977 n + A048529 (n + 1)) * A048529 (n + 1)

end

end A048530.P9972367838716460715

/-! ## A048530.P17323414728019163774

`(A057427(n)+A048529(n+1))*A048529(n+1)`
-/

namespace A048530.P17323414728019163774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + A048529 (n + 1)) * A048529 (n + 1)

end

end A048530.P17323414728019163774

/-! ## A048530.P2203764867475694105

`lcm(A262681(n)+A048529(n+1), A048529(n+1))`
-/

namespace A048530.P2203764867475694105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A262681 n + A048529 (n + 1)) (A048529 (n + 1))

end

end A048530.P2203764867475694105

/-! ## A048530.P4674768514832280128

`(A048529(n+1)+A014963(10*(n+2)))*A048529(n+1)`
-/

namespace A048530.P4674768514832280128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048529 (n + 1) + A014963 (10 * (n + 2))) * A048529 (n + 1)

end

end A048530.P4674768514832280128

/-!
# A048531: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 1's.

The programs for A048531, there is no canonical definition to state claims against.
-/

/-! ## A048531.P1850053280460466517

`floor(sqrt(A048532(n+1)))`
-/

namespace A048531.P1850053280460466517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048532 (n + 1))

end

end A048531.P1850053280460466517

/-! ## A048531.P14952139886929899499

`round(sqrt(A048532(n+1)-A000217(n)))`
-/

namespace A048531.P14952139886929899499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048532 (n + 1) - A000217 n : ℝ))

end

end A048531.P14952139886929899499

/-! ## A048531.P17215916569526154736

`round(sqrt(A048532(n+1)-A000384(n)))`
-/

namespace A048531.P17215916569526154736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048532 (n + 1) - A000384 n : ℝ))

end

end A048531.P17215916569526154736

/-! ## A048531.P10402051188620769134

`round(sqrt(A048532(n+1)-A002262(n)))`
-/

namespace A048531.P10402051188620769134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048532 (n + 1) - A002262 n : ℝ))

end

end A048531.P10402051188620769134

/-! ## A048531.P14737665499995944267

`round(sqrt(A048532(n+1)-A002378(n)))`
-/

namespace A048531.P14737665499995944267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048532 (n + 1) - A002378 n : ℝ))

end

end A048531.P14737665499995944267

/-!
# A048532: Smallest oblong (promic) number containing exactly n 1's.

The programs for A048532, there is no canonical definition to state claims against.
-/

/-! ## A048532.P1430901955065206606

`A048531(n+1)+A048531(n+1)²`
-/

namespace A048532.P1430901955065206606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048531 (n + 1) + A048531 (n + 1) ^ 2

end

end A048532.P1430901955065206606

/-! ## A048532.P17494385267626495267

`(A262681(n)+A048531(n+1))*A048531(n+1)`
-/

namespace A048532.P17494385267626495267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262681 n + A048531 (n + 1)) * A048531 (n + 1)

end

end A048532.P17494385267626495267

/-! ## A048532.P9205589027377578779

`(A057427(3*(n+1))+A048531(n+1))*A048531(n+1)`
-/

namespace A048532.P9205589027377578779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 (3 * (n + 1)) + A048531 (n + 1)) * A048531 (n + 1)

end

end A048532.P9205589027377578779

/-! ## A048532.P1031032824546795808

`(A048531(n+1)+A014963(A000384(n+1)))*A048531(n+1)`
-/

namespace A048532.P1031032824546795808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048531 (n + 1) + A014963 (A000384 (n + 1)).toNat) * A048531 (n + 1)

end

end A048532.P1031032824546795808

/-!
# A048533: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 2's.

The programs for A048533, there is no canonical definition to state claims against.
-/

/-! ## A048533.P13043206357832343798

`floor(sqrt(A048534(n+1)))`
-/

namespace A048533.P13043206357832343798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048534 (n + 1))

end

end A048533.P13043206357832343798

/-! ## A048533.P18071323591051918217

`round(sqrt(A048534(n+1)-A000217(n)))`
-/

namespace A048533.P18071323591051918217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048534 (n + 1) - A000217 n : ℝ))

end

end A048533.P18071323591051918217

/-! ## A048533.P9246587194465852248

`round(sqrt(A048534(n+1)-A000384(n)))`
-/

namespace A048533.P9246587194465852248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048534 (n + 1) - A000384 n : ℝ))

end

end A048533.P9246587194465852248

/-! ## A048533.P13543310104576662809

`round(sqrt(A048534(n+1)-A002262(n)))`
-/

namespace A048533.P13543310104576662809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048534 (n + 1) - A002262 n : ℝ))

end

end A048533.P13543310104576662809

/-! ## A048533.P14558028000450947397

`round(sqrt(A048534(n+1)-A002378(n)))`
-/

namespace A048533.P14558028000450947397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048534 (n + 1) - A002378 n : ℝ))

end

end A048533.P14558028000450947397

/-!
# A048534: Smallest oblong (promic) number containing exactly n 2's.

The programs for A048534, there is no canonical definition to state claims against.
-/

/-! ## A048534.P16785711565306134138

`A048533(n+1)+A048533(n+1)²`
-/

namespace A048534.P16785711565306134138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048533 (n + 1) + A048533 (n + 1) ^ 2

end

end A048534.P16785711565306134138

/-! ## A048534.P2627597200030573437

`(A048533(n+1)+char[A002262(n)])*A048533(n+1)`
-/

namespace A048534.P2627597200030573437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048533 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A048533 (n + 1)

end

end A048534.P2627597200030573437

/-! ## A048534.P7301100788126337731

`(A048533(n+1)-A033999(2*n+1))*A048533(n+1)`
-/

namespace A048534.P7301100788126337731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048533 (n + 1) - A033999 (2 * n + 1)) * A048533 (n + 1)

end

end A048534.P7301100788126337731

/-! ## A048534.P2721209902679407395

`(A097325(A022004(n+1))+A048533(n+1))*A048533(n+1)`
-/

namespace A048534.P2721209902679407395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097325 (A022004 (n + 1)).toNat + A048533 (n + 1)) * A048533 (n + 1)

end

end A048534.P2721209902679407395

/-! ## A048534.P14453170788761426804

`(A048533(n+1)-A008836(A026424(n+1)))*A048533(n+1)`
-/

namespace A048534.P14453170788761426804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048533 (n + 1) - A008836 (A026424 (n + 1)).toNat) * A048533 (n + 1)

end

end A048534.P14453170788761426804

/-!
# A048535: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 3's.

The programs for A048535, there is no canonical definition to state claims against.
-/

/-! ## A048535.P4302948525242628312

`floor(sqrt(A048536(n+1)))`
-/

namespace A048535.P4302948525242628312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048536 (n + 1))

end

end A048535.P4302948525242628312

/-! ## A048535.P692653052378343205

`round(sqrt(A048536(n+1)-A000217(n)))`
-/

namespace A048535.P692653052378343205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048536 (n + 1) - A000217 n : ℝ))

end

end A048535.P692653052378343205

/-! ## A048535.P14207837293266072294

`round(sqrt(A048536(n+1)-A002378(n)))`
-/

namespace A048535.P14207837293266072294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048536 (n + 1) - A002378 n : ℝ))

end

end A048535.P14207837293266072294

/-! ## A048535.P3172459894861601897

`round(sqrt(A048536(n+1)-A048529(n+1)))`
-/

namespace A048535.P3172459894861601897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048536 (n + 1) - A048529 (n + 1) : ℝ))

end

end A048535.P3172459894861601897

/-! ## A048535.P14816818632328492756

`round(sqrt(A048536(n+1)-A048533(n+1)))`
-/

namespace A048535.P14816818632328492756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048536 (n + 1) - A048533 (n + 1) : ℝ))

end

end A048535.P14816818632328492756

/-!
# A048536: Smallest oblong (promic) number containing exactly n 3's.

The programs for A048536, there is no canonical definition to state claims against.
-/

/-! ## A048536.P1499370153716360977

`A048535(n+1)+A048535(n+1)²`
-/

namespace A048536.P1499370153716360977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048535 (n + 1) + A048535 (n + 1) ^ 2

end

end A048536.P1499370153716360977

/-! ## A048536.P5680863244102447989

`(A262681(n)+A048535(n+1))*A048535(n+1)`
-/

namespace A048536.P5680863244102447989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262681 n + A048535 (n + 1)) * A048535 (n + 1)

end

end A048536.P5680863244102447989

/-! ## A048536.P11293407410485487661

`(A057427(3*(n+1))+A048535(n+1))*A048535(n+1)`
-/

namespace A048536.P11293407410485487661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 (3 * (n + 1)) + A048535 (n + 1)) * A048535 (n + 1)

end

end A048536.P11293407410485487661

/-! ## A048536.P11732620802851855764

`(A054977(A002385(n+1))+A048535(n+1))*A048535(n+1)`
-/

namespace A048536.P11732620802851855764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054977 (A002385 (n + 1)).toNat + A048535 (n + 1)) * A048535 (n + 1)

end

end A048536.P11732620802851855764

/-!
# A048537: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 4's.

The programs for A048537, there is no canonical definition to state claims against.
-/

/-! ## A048537.P11921676923667955914

`floor(sqrt(A048538(n+1)))`
-/

namespace A048537.P11921676923667955914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048538 (n + 1))

end

end A048537.P11921676923667955914

/-! ## A048537.P1374139407266292579

`round(sqrt(A048538(n+1)-A000217(n)))`
-/

namespace A048537.P1374139407266292579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048538 (n + 1) - A000217 n : ℝ))

end

end A048537.P1374139407266292579

/-! ## A048537.P1895545814862433736

`round(sqrt(A048538(n+1)-A002378(n)))`
-/

namespace A048537.P1895545814862433736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048538 (n + 1) - A002378 n : ℝ))

end

end A048537.P1895545814862433736

/-! ## A048537.P3799594203698566946

`round(sqrt(A048538(n+1)-A048529(n+1)))`
-/

namespace A048537.P3799594203698566946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048538 (n + 1) - A048529 (n + 1) : ℝ))

end

end A048537.P3799594203698566946

/-! ## A048537.P8792683539892902582

`round(sqrt(A048538(n+1)-A048533(n+1)))`
-/

namespace A048537.P8792683539892902582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048538 (n + 1) - A048533 (n + 1) : ℝ))

end

end A048537.P8792683539892902582

/-!
# A048538: Smallest oblong (promic) number containing exactly n 4's.

The programs for A048538, there is no canonical definition to state claims against.
-/

/-! ## A048538.P5579024042129954054

`A048537(n+1)+A048537(n+1)²`
-/

namespace A048538.P5579024042129954054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048537 (n + 1) + A048537 (n + 1) ^ 2

end

end A048538.P5579024042129954054

/-! ## A048538.P16388593277209453183

`(A262681(n)+A048537(n+1))*A048537(n+1)`
-/

namespace A048538.P16388593277209453183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262681 n + A048537 (n + 1)) * A048537 (n + 1)

end

end A048538.P16388593277209453183

/-! ## A048538.P2769668695080292473

`(A048537(n+1)+A005117(abs((-1)^n)))*A048537(n+1)`
-/

namespace A048538.P2769668695080292473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048537 (n + 1) + A005117 |(-1) ^ n|.toNat) * A048537 (n + 1)

end

end A048538.P2769668695080292473

/-! ## A048538.P8127051559457427629

`(A048537(n+1)+A001221(A140513(n)))*A048537(n+1)`
-/

namespace A048538.P8127051559457427629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048537 (n + 1) + A001221 (A140513 n).toNat) * A048537 (n + 1)

end

end A048538.P8127051559457427629

/-!
# A048539: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 5's.

The programs for A048539, there is no canonical definition to state claims against.
-/

/-! ## A048539.P13513555817615769291

`floor(sqrt(A048540(n+1)))`
-/

namespace A048539.P13513555817615769291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048540 (n + 1))

end

end A048539.P13513555817615769291

/-! ## A048539.P6518153507842662823

`round(sqrt(A048540(n+1)-A000217(n)))`
-/

namespace A048539.P6518153507842662823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048540 (n + 1) - A000217 n : ℝ))

end

end A048539.P6518153507842662823

/-! ## A048539.P7552286334378798538

`round(sqrt(A048540(n+1)-A002378(n)))`
-/

namespace A048539.P7552286334378798538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048540 (n + 1) - A002378 n : ℝ))

end

end A048539.P7552286334378798538

/-! ## A048539.P8068622501232670836

`round(sqrt(A048540(n+1)-A048529(n+1)))`
-/

namespace A048539.P8068622501232670836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048540 (n + 1) - A048529 (n + 1) : ℝ))

end

end A048539.P8068622501232670836

/-! ## A048539.P16385170796415908619

`round(sqrt(A048540(n+1)-A048533(n+1)))`
-/

namespace A048539.P16385170796415908619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048540 (n + 1) - A048533 (n + 1) : ℝ))

end

end A048539.P16385170796415908619

/-!
# A048540: Smallest oblong (promic) number containing exactly n 5's.

The programs for A048540, there is no canonical definition to state claims against.
-/

/-! ## A048540.P4668938001894767807

`A048539(n+1)+A048539(n+1)²`
-/

namespace A048540.P4668938001894767807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048539 (n + 1) + A048539 (n + 1) ^ 2

end

end A048540.P4668938001894767807

/-! ## A048540.P5634745253714148624

`(A048539(n+1)+1)*A048539(C(n+1, n))`
-/

namespace A048540.P5634745253714148624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048539 (n + 1) + 1) * A048539 (Nat.choose (n + 1) n)

end

end A048540.P5634745253714148624

/-! ## A048540.P16441508186154832954

`(A262681(n)+A048539(n+1))*A048539(n+1)`
-/

namespace A048540.P16441508186154832954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262681 n + A048539 (n + 1)) * A048539 (n + 1)

end

end A048540.P16441508186154832954

/-! ## A048540.P8251824479362280351

`(A048539(n+1)+1)*A048539(n+1)*A361338(n)`
-/

namespace A048540.P8251824479362280351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048539 (n + 1) + 1) * (A048539 (n + 1) * A361338 n)

end

end A048540.P8251824479362280351

/-! ## A048540.P12063376410782627443

`(A057427(3*(n+1))+A048539(n+1))*A048539(n+1)`
-/

namespace A048540.P12063376410782627443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 (3 * (n + 1)) + A048539 (n + 1)) * A048539 (n + 1)

end

end A048540.P12063376410782627443

/-!
# A048541: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 6's.

The programs for A048541, there is no canonical definition to state claims against.
-/

/-! ## A048541.P3283474575764865803

`floor(sqrt(A048542(n+1)))`
-/

namespace A048541.P3283474575764865803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048542 (n + 1))

end

end A048541.P3283474575764865803

/-! ## A048541.P18428761548929367068

`round(sqrt(A048542(n+1)-A000217(n)))`
-/

namespace A048541.P18428761548929367068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048542 (n + 1) - A000217 n : ℝ))

end

end A048541.P18428761548929367068

/-! ## A048541.P759702113118807196

`round(sqrt(A048542(n+1)-A002378(n)))`
-/

namespace A048541.P759702113118807196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048542 (n + 1) - A002378 n : ℝ))

end

end A048541.P759702113118807196

/-! ## A048541.P8935387403043415695

`round(sqrt(A048542(n+1)-A048529(n+1)))`
-/

namespace A048541.P8935387403043415695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048542 (n + 1) - A048529 (n + 1) : ℝ))

end

end A048541.P8935387403043415695

/-! ## A048541.P7070221520081820704

`round(sqrt(A048542(n+1)-A048533(n+1)))`
-/

namespace A048541.P7070221520081820704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048542 (n + 1) - A048533 (n + 1) : ℝ))

end

end A048541.P7070221520081820704

/-!
# A048542: Smallest oblong (promic) number containing exactly n 6's.

The programs for A048542, there is no canonical definition to state claims against.
-/

/-! ## A048542.P4429013785113134527

`A048541(n+1)+A048541(n+1)²`
-/

namespace A048542.P4429013785113134527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048541 (n + 1) + A048541 (n + 1) ^ 2

end

end A048542.P4429013785113134527

/-! ## A048542.P12085228666367446365

`(A262681(n)+A048541(n+1))*A048541(n+1)`
-/

namespace A048542.P12085228666367446365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262681 n + A048541 (n + 1)) * A048541 (n + 1)

end

end A048542.P12085228666367446365

/-! ## A048542.P8670508432853637353

`(A048541(n+1)+char[A061579(n)])*A048541(n+1)`
-/

namespace A048542.P8670508432853637353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048541 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A048541 (n + 1)

end

end A048542.P8670508432853637353

/-! ## A048542.P2713917371558360025

`(A048541(n+1)+A014963(15*(n+1)))*A048541(n+1)`
-/

namespace A048542.P2713917371558360025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048541 (n + 1) + A014963 (15 * (n + 1))) * A048541 (n + 1)

end

end A048542.P2713917371558360025

/-!
# A048543: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 7's.

The programs for A048543, there is no canonical definition to state claims against.
-/

/-! ## A048543.P11948386769180248013

`floor(sqrt(A048544(n+1)))`
-/

namespace A048543.P11948386769180248013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048544 (n + 1))

end

end A048543.P11948386769180248013

/-! ## A048543.P5553184749048692429

`round(sqrt(A048544(n+1)-A000217(n)))`
-/

namespace A048543.P5553184749048692429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048544 (n + 1) - A000217 n : ℝ))

end

end A048543.P5553184749048692429

/-! ## A048543.P14768564651138699402

`round(sqrt(A048544(n+1)-A002378(n)))`
-/

namespace A048543.P14768564651138699402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048544 (n + 1) - A002378 n : ℝ))

end

end A048543.P14768564651138699402

/-! ## A048543.P12066904226560904806

`round(sqrt(A048544(n+1)-A048529(n+1)))`
-/

namespace A048543.P12066904226560904806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048544 (n + 1) - A048529 (n + 1) : ℝ))

end

end A048543.P12066904226560904806

/-! ## A048543.P4520418292185989441

`round(sqrt(A048544(n+1)-A048531(n+1)))`
-/

namespace A048543.P4520418292185989441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048544 (n + 1) - A048531 (n + 1) : ℝ))

end

end A048543.P4520418292185989441

/-!
# A048544: Smallest oblong (promic) number containing exactly n 7's.

The programs for A048544, there is no canonical definition to state claims against.
-/

/-! ## A048544.P2704144646745002133

`A048543(n+1)+A048543(n+1)²`
-/

namespace A048544.P2704144646745002133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048543 (n + 1) + A048543 (n + 1) ^ 2

end

end A048544.P2704144646745002133

/-! ## A048544.P16352992303745789634

`(A048543(n+1)+A001221(A007645(n+2)))*A048543(n+1)`
-/

namespace A048544.P16352992303745789634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048543 (n + 1) + A001221 (A007645 (n + 2)).toNat) * A048543 (n + 1)

end

end A048544.P16352992303745789634

/-! ## A048544.P11625759592984713967

`A000027(A048543(n+1)+1)*A048543(n+1)`
-/

namespace A048544.P11625759592984713967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A048543 (n + 1) + 1).toNat * A048543 (n + 1)

end

end A048544.P11625759592984713967

/-!
# A048545: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 8's.

The programs for A048545, there is no canonical definition to state claims against.
-/

/-! ## A048545.P12328592513933200249

`floor(sqrt(A048546(n+1)))`
-/

namespace A048545.P12328592513933200249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048546 (n + 1))

end

end A048545.P12328592513933200249

/-! ## A048545.P5996879175737532560

`round(sqrt(A048546(n+1)-A000217(n)))`
-/

namespace A048545.P5996879175737532560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048546 (n + 1) - A000217 n : ℝ))

end

end A048545.P5996879175737532560

/-! ## A048545.P5804156976202747194

`round(sqrt(A048546(n+1)-A002378(n)))`
-/

namespace A048545.P5804156976202747194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048546 (n + 1) - A002378 n : ℝ))

end

end A048545.P5804156976202747194

/-! ## A048545.P9159368779592988396

`round(sqrt(A048546(n+1)-A048529(n+1)))`
-/

namespace A048545.P9159368779592988396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048546 (n + 1) - A048529 (n + 1) : ℝ))

end

end A048545.P9159368779592988396

/-! ## A048545.P18096067768254503245

`round(sqrt(A048546(n+1)-A048531(n+1)))`
-/

namespace A048545.P18096067768254503245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048546 (n + 1) - A048531 (n + 1) : ℝ))

end

end A048545.P18096067768254503245

/-!
# A048546: Smallest oblong (pronic) number containing exactly n 8's.

The programs for A048546, there is no canonical definition to state claims against.
-/

/-! ## A048546.P8632313096879426300

`A048545(n+1)+A048545(n+1)²`
-/

namespace A048546.P8632313096879426300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048545 (n + 1) + A048545 (n + 1) ^ 2

end

end A048546.P8632313096879426300

/-! ## A048546.P17723624101679563218

`(A262681(n)+A048545(n+1))*A048545(n+1)`
-/

namespace A048546.P17723624101679563218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262681 n + A048545 (n + 1)) * A048545 (n + 1)

end

end A048546.P17723624101679563218

/-! ## A048546.P4689796170467350062

`(A048545(n+1)+A000108(C(2, n+2)))*A048545(n+1)`
-/

namespace A048546.P4689796170467350062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048545 (n + 1) + A000108 (Nat.choose 2 (n + 2))) * A048545 (n + 1)

end

end A048546.P4689796170467350062

/-!
# A048547: a(n) is the smallest value of m such that A002378(m), the m-th oblong number, contains exactly n 9's.

The programs for A048547, there is no canonical definition to state claims against.
-/

/-! ## A048547.P11083529364167134949

`floor(sqrt(A048548(n+1)))`
-/

namespace A048547.P11083529364167134949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048548 (n + 1))

end

end A048547.P11083529364167134949

/-! ## A048547.P4260731598473996963

`round(sqrt(A048548(n+1)-A000217(n)))`
-/

namespace A048547.P4260731598473996963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048548 (n + 1) - A000217 n : ℝ))

end

end A048547.P4260731598473996963

/-! ## A048547.P773418422858775686

`round(sqrt(A048548(n+1)-A002378(n)))`
-/

namespace A048547.P773418422858775686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048548 (n + 1) - A002378 n : ℝ))

end

end A048547.P773418422858775686

/-! ## A048547.P974769057404312724

`round(sqrt(A048548(n+1)-A048529(n+1)))`
-/

namespace A048547.P974769057404312724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048548 (n + 1) - A048529 (n + 1) : ℝ))

end

end A048547.P974769057404312724

/-! ## A048547.P13096255953589164198

`round(sqrt(A048548(n+1)-A048531(n+1)))`
-/

namespace A048547.P13096255953589164198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A048548 (n + 1) - A048531 (n + 1) : ℝ))

end

end A048547.P13096255953589164198

/-!
# A048548: Smallest oblong (promic) number containing exactly n 9's.

The programs for A048548, there is no canonical definition to state claims against.
-/

/-! ## A048548.P2212390512824207918

`A048547(n+1)+A048547(n+1)²`
-/

namespace A048548.P2212390512824207918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048547 (n + 1) + A048547 (n + 1) ^ 2

end

end A048548.P2212390512824207918

/-! ## A048548.P10598578073430409026

`(A262681(n)+A048547(n+1))*A048547(n+1)`
-/

namespace A048548.P10598578073430409026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262681 n + A048547 (n + 1)) * A048547 (n + 1)

end

end A048548.P10598578073430409026

/-! ## A048548.P15920586192564585395

`(A124625(2*(n+1))+A048547(n+1))*A048547(n+1)`
-/

namespace A048548.P15920586192564585395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124625 (2 * (n + 1)) + A048547 (n + 1)) * A048547 (n + 1)

end

end A048548.P15920586192564585395

/-! ## A048548.P17516665734481107356

`(A057427(3*(n+1))+A048547(n+1))*A048547(n+1)`
-/

namespace A048548.P17516665734481107356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 (3 * (n + 1)) + A048547 (n + 1)) * A048547 (n + 1)

end

end A048548.P17516665734481107356

/-!
# A048549: a(n+1) is next smallest prime beginning with a(n), initial prime is 2.

The programs for A048549, there is no canonical definition to state claims against.
-/

/-! ## A048549.P8244314479528167002

`A030670(A000720(a(n-1)))` with `a(0)=2`
-/

namespace A048549.P8244314479528167002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A030670 (A000720 (a (n - 1)).toNat).toNat

end

end A048549.P8244314479528167002

/-! ## A048549.P7727291282421677765

`A030670(A302039(a(n-1)))` with `a(0)=2`
-/

namespace A048549.P7727291282421677765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A030670 (A302039 (a (n - 1)).toNat).toNat

end

end A048549.P7727291282421677765

/-!
# A048550: a(n+1) is the next smallest prime beginning with a(n), initial prime is 3.

The programs for A048550, there is no canonical definition to state claims against.
-/

/-! ## A048550.P16584595678211407812

`A064792(A000720(a(n-1)+1))` with `a(0)=3`
-/

namespace A048550.P16584595678211407812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A064792 (A000720 (a (n - 1) + 1).toNat).toNat

end

end A048550.P16584595678211407812

/-!
# A048552: a(n+1) is next smallest prime beginning with a(n), initial prime is a(0) = 7.

The programs for A048552, there is no canonical definition to state claims against.
-/

/-! ## A048552.P3758399144701073092

`A100895(n+1)`
-/

namespace A048552.P3758399144701073092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100895 (n + 1)

end

end A048552.P3758399144701073092

/-! ## A048552.P4465175358231188333

`p?[A065537(n+1)]`
-/

namespace A048552.P4465175358231188333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048552.P4465175358231188333

/-!
# A048557: a(1) = 1; a(n+1) is next smallest nontrivial square beginning with a(n).

The programs for A048557, there is no canonical definition to state claims against.
-/

/-! ## A048557.P14790107205885638439

`A048558(n)²`
-/

namespace A048557.P14790107205885638439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048558 n ^ 2

end

end A048557.P14790107205885638439

/-! ## A048557.P16640369377202499353

`A048558(n)^sqrt(A040002(n))`
-/

namespace A048557.P16640369377202499353
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048558 n : ℝ) ^ (Real.sqrt (A040002 n : ℝ))

end

end A048557.P16640369377202499353

/-! ## A048557.P3706006973430739180

`A048558(n)^p?[A048571(n)]`
-/

namespace A048557.P3706006973430739180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048558 n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A048557.P3706006973430739180

/-! ## A048557.P6951965155362479608

`A048558(n)^A000040(A208615(n))`
-/

namespace A048557.P6951965155362479608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048558 n : ℚ) ^ (A000040 (A208615 n).toNat : ℤ)

end

end A048557.P6951965155362479608

/-!
# A048558: a(n+1)^2 is next smallest nontrivial square beginning with a(n)^2, initial square is 1.

The programs for A048558, there is no canonical definition to state claims against.
-/

/-! ## A048558.P18235868543848241172

`sqrt(A048557(n+1))`
-/

namespace A048558.P18235868543848241172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048557 (n + 1) : ℝ)

end

end A048558.P18235868543848241172

/-! ## A048558.P17873229222087964323

`A048557(n+1)^(A208615(n)/2)`
-/

namespace A048558.P17873229222087964323
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048557 (n + 1) : ℝ) ^ ((A208615 n : ℚ) / 2 : ℝ)

end

end A048558.P17873229222087964323

/-!
# A048559: 

The programs for A048559, there is no canonical definition to state claims against.
-/

/-! ## A048559.P16714221269053204576

`A048560(n)²`
-/

namespace A048559.P16714221269053204576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048560 n ^ 2

end

end A048559.P16714221269053204576

/-! ## A048559.P11923045295577832179

`A048560(n)^p?[A048571(n)]`
-/

namespace A048559.P11923045295577832179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048560 n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A048559.P11923045295577832179

/-! ## A048559.P496357963501432322

`A048560(n)^A000040(A208615(n))`
-/

namespace A048559.P496357963501432322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048560 n : ℚ) ^ (A000040 (A208615 n).toNat : ℤ)

end

end A048559.P496357963501432322

/-!
# A048561: 

The programs for A048561, there is no canonical definition to state claims against.
-/

/-! ## A048561.P10454789180270468444

`A048562(n)²`
-/

namespace A048561.P10454789180270468444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048562 n ^ 2

end

end A048561.P10454789180270468444

/-!
# A048569: Values of k for which the number of divisors of the central binomial coefficient C(k, floor(k/2)) exceeds the number of divisors of all other binomial coefficients C(k,j).

The programs for A048569, there is no canonical definition to state claims against.
-/

/-! ## A048569.P17069013908612435739

`eq[0, A048485(n+1)]+1`
-/

namespace A048569.P17069013908612435739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048485 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048569.P17069013908612435739

/-! ## A048569.P10884373707092159443

`lt[A048485(ϕ²-(ϕ-n)), 1]+1`
-/

namespace A048569.P10884373707092159443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048485 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048569.P10884373707092159443

/-! ## A048569.P16926665811362087270

`lt[A048485(1-(C(a(n-1), n+2)!-n)), 1]` with `a(0)=1`
-/

namespace A048569.P16926665811362087270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A048485 (1 - ((Nat.factorial (Nat.choose (f1 (n - 1)).toNat (n + 2)) : ℤ) - (n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048569.P16926665811362087270

/-! ## A048569.P17761250053440174314

`eq[A048475(n+1), A110654(n)]+1`
-/

namespace A048569.P17761250053440174314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048569.P17761250053440174314

/-! ## A048569.P15405291425402010515

`record[gcd(n+1, A048485(A000027(n+1)))]`
-/

namespace A048569.P15405291425402010515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048485 (A000027 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048569.P15405291425402010515

/-! ## A048569.P11923841008911330900

`record[gcd(1-A001489(n), A048485(n+1))]`
-/

namespace A048569.P11923841008911330900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A001489 n) (A048485 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048569.P11923841008911330900

/-! ## A048569.P17410357744717777769

`eq[A004526(n+1), A048475(n+1)]+1`
-/

namespace A048569.P17410357744717777769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048569.P17410357744717777769

/-! ## A048569.P17736709860977265474

`record[(n+1)*A117980(A048485(n+1)²)]`
-/

namespace A048569.P17736709860977265474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117980 (A048485 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048569.P17736709860977265474

/-! ## A048569.P3449777557770046565

`record[xor(-A048485(n+1), A000027(n+1))]`
-/

namespace A048569.P3449777557770046565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A048485 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048569.P3449777557770046565

/-! ## A048569.P17317976046177302761

`record[(n+1)/A000005(A048485(n+1)+1)]`
-/

namespace A048569.P17317976046177302761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (A048485 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048569.P17317976046177302761

/-! ## A048569.P12372143760772614027

`record[(n+1)/A000203(A048485(n+1)+1)]`
-/

namespace A048569.P12372143760772614027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000203 (A048485 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048569.P12372143760772614027

/-! ## A048569.P12744109217423270091

`record[(n+1)*A117980(A048485(n+1)^2)]`
-/

namespace A048569.P12744109217423270091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117980 (A048485 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048569.P12744109217423270091

/-! ## A048569.P3655760203365861370

`lt[A048485(1-(n^a(A001221(n))-n)), 1]` with `a(0)=1`
-/

namespace A048569.P3655760203365861370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A048485 (SequenceMachineLib.roundAway (1 - ((n : ℚ) ^ (f1 (A001221 n).toNat : ℤ) - (n : ℚ)))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048569.P3655760203365861370

/-!
# A048570: Triangle T(n,k) = number of divisors of binomial(n,k).

The programs for A048570, the canonical program `A048570.P17125824842376526747` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048570 has offset 0).

The definition of A048570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048570.P17125824842376526747

`A000005(A007318(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048570

/-- `A000005(A007318(n))` -/
def P17125824842376526747.Spec : Prop :=
  ∀ n, P17125824842376526747.a n = A048570 n

theorem P17125824842376526747.correct : P17125824842376526747.Spec := by
  intro n
  simp only [A048570]

end A048570

/-! ## A048570.P15416897018206001671

`∏{e}[A014473(n)+1, #+1]`
-/

namespace A048570.P15416897018206001671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A048570.P15416897018206001671

namespace A048570

/-- `∏{e}[A014473(n)+1, #+1]` -/
def P15416897018206001671.Spec : Prop :=
  ∀ n, (P15416897018206001671.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P15737370982530852532

`∏{e}[A028326(n)/2, #+1]`
-/

namespace A048570.P15737370982530852532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A048570.P15737370982530852532

namespace A048570

/-- `∏{e}[A028326(n)/2, #+1]` -/
def P15737370982530852532.Spec : Prop :=
  ∀ n, (P15737370982530852532.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P11929477190336170541

`∏{e}[ceil(A134059(n)/3), #+1]`
-/

namespace A048570.P11929477190336170541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A048570.P11929477190336170541

namespace A048570

/-- `∏{e}[ceil(A134059(n)/3), #+1]` -/
def P11929477190336170541.Spec : Prop :=
  ∀ n, (P11929477190336170541.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P9936018028498032048

`∏{e}[ceil(A134060(n)/3), #+1]`
-/

namespace A048570.P9936018028498032048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A048570.P9936018028498032048

namespace A048570

/-- `∏{e}[ceil(A134060(n)/3), #+1]` -/
def P9936018028498032048.Spec : Prop :=
  ∀ n, (P9936018028498032048.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P6203345124197505811

`∏{e}[ceil(A135087(n)/4), #+1]`
-/

namespace A048570.P6203345124197505811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A048570.P6203345124197505811

namespace A048570

/-- `∏{e}[ceil(A135087(n)/4), #+1]` -/
def P6203345124197505811.Spec : Prop :=
  ∀ n, (P6203345124197505811.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P16872328238290703513

`∏{e}[round(A135089(n)/5), #+1]`
-/

namespace A048570.P16872328238290703513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135089 n : ℚ) / 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A048570.P16872328238290703513

namespace A048570

/-- `∏{e}[round(A135089(n)/5), #+1]` -/
def P16872328238290703513.Spec : Prop :=
  ∀ n, (P16872328238290703513.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P17382176998333293266

`∑{d}[A007318(n), A007318(val(#, 3))]`
-/

namespace A048570.P17382176998333293266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (SequenceMachineLib.valuation d 3)

end

end A048570.P17382176998333293266

namespace A048570

/-- `∑{d}[A007318(n), A007318(val(#, 3))]` -/
def P17382176998333293266.Spec : Prop :=
  ∀ n, P17382176998333293266.a n = A048570 n

end A048570

/-! ## A048570.P1946585680729765310

`∑{d}[A007318(n), A000009(C(2, #))]`
-/

namespace A048570.P1946585680729765310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000009 (Nat.choose 2 d)

end

end A048570.P1946585680729765310

namespace A048570

/-- `∑{d}[A007318(n), A000009(C(2, #))]` -/
def P1946585680729765310.Spec : Prop :=
  ∀ n, P1946585680729765310.a n = A048570 n

end A048570

/-! ## A048570.P4690903149886365666

`∑{d}[A007318(n), A007318(C(2, #))]`
-/

namespace A048570.P4690903149886365666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Nat.choose 2 d)

end

end A048570.P4690903149886365666

namespace A048570

/-- `∑{d}[A007318(n), A007318(C(2, #))]` -/
def P4690903149886365666.Spec : Prop :=
  ∀ n, P4690903149886365666.a n = A048570 n

end A048570

/-! ## A048570.P7372462601173417449

`∑{d}[A007318(n), A007318(and(1, -#))]`
-/

namespace A048570.P7372462601173417449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Int.land 1 (-(d : ℤ))).toNat

end

end A048570.P7372462601173417449

namespace A048570

/-- `∑{d}[A007318(n), A007318(and(1, -#))]` -/
def P7372462601173417449.Spec : Prop :=
  ∀ n, P7372462601173417449.a n = A048570 n

end A048570

/-! ## A048570.P11495500298156104797

`∑{d}[A007318(n), A007318(floor(1/#))]`
-/

namespace A048570.P11495500298156104797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 ⌊1 / (d : ℚ)⌋.toNat

end

end A048570.P11495500298156104797

namespace A048570

/-- `∑{d}[A007318(n), A007318(floor(1/#))]` -/
def P11495500298156104797.Spec : Prop :=
  ∀ n, P11495500298156104797.a n = A048570 n

end A048570

/-! ## A048570.P16178730999586866150

`∏{e}[A193554(lt[1, A193588(n)]), #+1]`
-/

namespace A048570.P16178730999586866150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A048570.P16178730999586866150

namespace A048570

/-- `∏{e}[A193554(lt[1, A193588(n)]), #+1]` -/
def P16178730999586866150.Spec : Prop :=
  ∀ n, (P16178730999586866150.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P9766865575760449001

`∏{e}[A034852(n)+A034851(n), #+1]`
-/

namespace A048570.P9766865575760449001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + A034851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A048570.P9766865575760449001

namespace A048570

/-- `∏{e}[A034852(n)+A034851(n), #+1]` -/
def P9766865575760449001.Spec : Prop :=
  ∀ n, (P9766865575760449001.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P6695022517058656564

`∏{e}[A176348(n)/A176346(n), #+1]`
-/

namespace A048570.P6695022517058656564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A176346 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A048570.P6695022517058656564

namespace A048570

/-- `∏{e}[A176348(n)/A176346(n), #+1]` -/
def P6695022517058656564.Spec : Prop :=
  ∀ n, (P6695022517058656564.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P17372171309467251532

`∏{e}[gcd(A124927(n), A124928(n)), #+1]`
-/

namespace A048570.P17372171309467251532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A048570.P17372171309467251532

namespace A048570

/-- `∏{e}[gcd(A124927(n), A124928(n)), #+1]` -/
def P17372171309467251532.Spec : Prop :=
  ∀ n, (P17372171309467251532.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P8215141438381975860

`∏{e}[C(A003056(n), A002262(n)), #+1]`
-/

namespace A048570.P8215141438381975860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002262 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A048570.P8215141438381975860

namespace A048570

/-- `∏{e}[C(A003056(n), A002262(n)), #+1]` -/
def P8215141438381975860.Spec : Prop :=
  ∀ n, (P8215141438381975860.a n : ℤ) = A048570 n

end A048570

/-! ## A048570.P8655126881501624459

`A000005(A278218(n))`
-/

namespace A048570.P8655126881501624459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278218 n).toNat

end

end A048570.P8655126881501624459

namespace A048570

/-- `A000005(A278218(n))` -/
def P8655126881501624459.Spec : Prop :=
  ∀ n, P8655126881501624459.a n = A048570 n

end A048570

/-! ## A048570.P11613274056451362655

`A320111(A124927(n))`
-/

namespace A048570.P11613274056451362655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A124927 n).toNat

end

end A048570.P11613274056451362655

namespace A048570

/-- `A320111(A124927(n))` -/
def P11613274056451362655.Spec : Prop :=
  ∀ n, P11613274056451362655.a n = A048570 n

end A048570

/-!
# A048571: Triangle read by rows: T(n,k) = number of distinct prime factors of C(n,k).

The programs for A048571, the canonical program `A048571.P4485784298280140691` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048571 has offset 0).

The definition of A048571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048571.P4485784298280140691

`A001221(A007318(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048571

/-- `A001221(A007318(n))` -/
def P4485784298280140691.Spec : Prop :=
  ∀ n, P4485784298280140691.a n = A048571 n

theorem P4485784298280140691.correct : P4485784298280140691.Spec := by
  intro n
  simp only [A048571]

end A048571

/-! ## A048571.P3158796717790291512

`log2(A103444(n))`
-/

namespace A048571.P3158796717790291512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A103444 n : ℝ)

end

end A048571.P3158796717790291512

namespace A048571

/-- `log2(A103444(n))` -/
def P3158796717790291512.Spec : Prop :=
  ∀ n, P3158796717790291512.a n = (A048571 n : ℝ)

end A048571

/-! ## A048571.P6199113320778421276

`A048105(2*A103444(n))`
-/

namespace A048571.P6199113320778421276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (2 * A103444 n).toNat

end

end A048571.P6199113320778421276

namespace A048571

/-- `A048105(2*A103444(n))` -/
def P6199113320778421276.Spec : Prop :=
  ∀ n, P6199113320778421276.a n = A048571 n

end A048571

/-! ## A048571.P5868524264583844603

`A383160(A103444(n)²)`
-/

namespace A048571.P5868524264583844603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383160 (A103444 n ^ 2).toNat

end

end A048571.P5868524264583844603

namespace A048571

/-- `A383160(A103444(n)²)` -/
def P5868524264583844603.Spec : Prop :=
  ∀ n, P5868524264583844603.a n = A048571 n

end A048571

/-! ## A048571.P10973299785468421547

`A383160(A103444(n)*A103444(n))`
-/

namespace A048571.P10973299785468421547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383160 (A103444 n * A103444 n).toNat

end

end A048571.P10973299785468421547

namespace A048571

/-- `A383160(A103444(n)*A103444(n))` -/
def P10973299785468421547.Spec : Prop :=
  ∀ n, P10973299785468421547.a n = A048571 n

end A048571

/-! ## A048571.P12300458815749248824

`∑{e}[A080396(n), #]`
-/

namespace A048571.P12300458815749248824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A048571.P12300458815749248824

namespace A048571

/-- `∑{e}[A080396(n), #]` -/
def P12300458815749248824.Spec : Prop :=
  ∀ n, (P12300458815749248824.a n : ℤ) = A048571 n

end A048571

/-! ## A048571.P15705877767881590564

`∑{p}[A007318(n), A001222(#)]`
-/

namespace A048571.P15705877767881590564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A048571.P15705877767881590564

namespace A048571

/-- `∑{p}[A007318(n), A001222(#)]` -/
def P15705877767881590564.Spec : Prop :=
  ∀ n, P15705877767881590564.a n = A048571 n

end A048571

/-! ## A048571.P8479859409407585656

`∑{p}[A007318(n), A010051(#)]`
-/

namespace A048571.P8479859409407585656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A048571.P8479859409407585656

namespace A048571

/-- `∑{p}[A007318(n), A010051(#)]` -/
def P8479859409407585656.Spec : Prop :=
  ∀ n, P8479859409407585656.a n = A048571 n

end A048571

/-! ## A048571.P17629809947111575343

`∑{p}[A007318(n), A014306(#)]`
-/

namespace A048571.P17629809947111575343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014306 p

end

end A048571.P17629809947111575343

namespace A048571

/-- `∑{p}[A007318(n), A014306(#)]` -/
def P17629809947111575343.Spec : Prop :=
  ∀ n, P17629809947111575343.a n = A048571 n

end A048571

/-! ## A048571.P2797223348549834286

`∑{p}[A007318(n), A032741(#)]`
-/

namespace A048571.P2797223348549834286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032741 p

end

end A048571.P2797223348549834286

namespace A048571

/-- `∑{p}[A007318(n), A032741(#)]` -/
def P2797223348549834286.Spec : Prop :=
  ∀ n, P2797223348549834286.a n = A048571 n

end A048571

/-! ## A048571.P17540250239589680317

`∑{p}[A007318(n), A033676(#)]`
-/

namespace A048571.P17540250239589680317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A033676 p

end

end A048571.P17540250239589680317

namespace A048571

/-- `∑{p}[A007318(n), A033676(#)]` -/
def P17540250239589680317.Spec : Prop :=
  ∀ n, P17540250239589680317.a n = A048571 n

end A048571

/-! ## A048571.P919179061054112501

`∑{e}[A007318(n), A005709(#)]`
-/

namespace A048571.P919179061054112501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005709 (Nat.factorization (f1 n).natAbs p)

end

end A048571.P919179061054112501

namespace A048571

/-- `∑{e}[A007318(n), A005709(#)]` -/
def P919179061054112501.Spec : Prop :=
  ∀ n, P919179061054112501.a n = A048571 n

end A048571

/-! ## A048571.P3583080474003595281

`∑{e}[A007318(n), A036064(#)]`
-/

namespace A048571.P3583080474003595281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A036064 (Nat.factorization (f1 n).natAbs p)

end

end A048571.P3583080474003595281

namespace A048571

/-- `∑{e}[A007318(n), A036064(#)]` -/
def P3583080474003595281.Spec : Prop :=
  ∀ n, P3583080474003595281.a n = A048571 n

end A048571

/-! ## A048571.P823363322193326385

`∑{e}[A007318(n), A069010(#)]`
-/

namespace A048571.P823363322193326385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069010 (Nat.factorization (f1 n).natAbs p)

end

end A048571.P823363322193326385

namespace A048571

/-- `∑{e}[A007318(n), A069010(#)]` -/
def P823363322193326385.Spec : Prop :=
  ∀ n, P823363322193326385.a n = A048571 n

end A048571

/-! ## A048571.P6641336784441423194

`∑{e}[A007318(n), A156254(#)]`
-/

namespace A048571.P6641336784441423194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156254 (Nat.factorization (f1 n).natAbs p)

end

end A048571.P6641336784441423194

namespace A048571

/-- `∑{e}[A007318(n), A156254(#)]` -/
def P6641336784441423194.Spec : Prop :=
  ∀ n, P6641336784441423194.a n = A048571 n

end A048571

/-! ## A048571.P9340428983771071242

`∑{p}[A007318(n), abs(A008683(#))]`
-/

namespace A048571.P9340428983771071242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, |A008683 p|

end

end A048571.P9340428983771071242

namespace A048571

/-- `∑{p}[A007318(n), abs(A008683(#))]` -/
def P9340428983771071242.Spec : Prop :=
  ∀ n, P9340428983771071242.a n = A048571 n

end A048571

/-! ## A048571.P16003843962199506087

`∑{p}[A007318(n), log2(A000005(#))]`
-/

namespace A048571.P16003843962199506087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.logb 2 (A000005 p : ℝ)

end

end A048571.P16003843962199506087

namespace A048571

/-- `∑{p}[A007318(n), log2(A000005(#))]` -/
def P16003843962199506087.Spec : Prop :=
  ∀ n, P16003843962199506087.a n = (A048571 n : ℝ)

end A048571

/-! ## A048571.P654411264733390041

`∑{e}[A007318(n), A007318(#-1)]`
-/

namespace A048571.P654411264733390041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p - 1)

end

end A048571.P654411264733390041

namespace A048571

/-- `∑{e}[A007318(n), A007318(#-1)]` -/
def P654411264733390041.Spec : Prop :=
  ∀ n, P654411264733390041.a n = A048571 n

end A048571

/-! ## A048571.P1640802821613638535

`∑{p}[A007318(n), #/A006530(#)]`
-/

namespace A048571.P1640802821613638535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A006530 p : ℚ)

end

end A048571.P1640802821613638535

namespace A048571

/-- `∑{p}[A007318(n), #/A006530(#)]` -/
def P1640802821613638535.Spec : Prop :=
  ∀ n, P1640802821613638535.a n = (A048571 n : ℚ)

end A048571

/-!
# A048572: a(n) = sum of digits of a(n-1)*a(n-2).

The programs for A048572, the canonical program `A048572.P13017132504727043006` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048572 has offset 1).

The definition of A048572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048572.P13017132504727043006

`A007953(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048572

/-- `A007953(a(n-1)*a(n-2))` -/
def P13017132504727043006.Spec : Prop :=
  ∀ n, P13017132504727043006.a n = A048572 (n + 1)

theorem P13017132504727043006.correct : P13017132504727043006.Spec := by
  intro n
  simp only [A048572, Nat.add_sub_cancel]

end A048572

/-!
# A048573: a(n) = a(n-1) + 2*a(n-2), a(0)=2, a(1)=3.

The programs for A048573, the canonical program `A048573.P2715505086605759479` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048573 has offset 0).

The definition of A048573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)` (program `A048573.P2715505086605759479`, by `A048573.P2715505086605759479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048573.P2715505086605759479

`a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048573

/-- `a(n-1)+2*a(n-2)` -/
def P2715505086605759479.Spec : Prop :=
  ∀ n, (P2715505086605759479.a n : ℤ) = A048573 n

theorem P2715505086605759479.correct : P2715505086605759479.Spec := by
  intro n
  simp only [A048573]

end A048573

/-! ## A048573.P17114924418843750408

`A084170(n)+1`
-/

namespace A048573.P17114924418843750408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084170 n + 1

end

end A048573.P17114924418843750408

namespace A048573

/-- `A084170(n)+1` -/
def P17114924418843750408.Spec : Prop :=
  ∀ n, P17114924418843750408.a n = A048573 n

end A048573

/-! ## A048573.P860745771624273405

`abs(A083581(n)-3)`
-/

namespace A048573.P860745771624273405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083581 n - 3|

end

end A048573.P860745771624273405

namespace A048573

/-- `abs(A083581(n)-3)` -/
def P860745771624273405.Spec : Prop :=
  ∀ n, P860745771624273405.a n = A048573 n

end A048573

/-! ## A048573.P7564937113790240136

`2^n+A001045(n+1)`
-/

namespace A048573.P7564937113790240136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A001045 (n + 1)

end

end A048573.P7564937113790240136

namespace A048573

/-- `2^n+A001045(n+1)` -/
def P7564937113790240136.Spec : Prop :=
  ∀ n, P7564937113790240136.a n = A048573 n

end A048573

/-! ## A048573.P16476294408334774848

`A130755(n)-A166249(n)`
-/

namespace A048573.P16476294408334774848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130755 n - A166249 n

end

end A048573.P16476294408334774848

namespace A048573

/-- `A130755(n)-A166249(n)` -/
def P16476294408334774848.Spec : Prop :=
  ∀ n, P16476294408334774848.a n = A048573 n

end A048573

/-! ## A048573.P5198332211518086188

`A083322(n+1)+A024493(n)`
-/

namespace A048573.P5198332211518086188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083322 (n + 1) + A024493 n

end

end A048573.P5198332211518086188

namespace A048573

/-- `A083322(n+1)+A024493(n)` -/
def P5198332211518086188.Spec : Prop :=
  ∀ n, P5198332211518086188.a n = A048573 n

end A048573

/-! ## A048573.P5815519869009552350

`A007679(n+1)+A139763(n)`
-/

namespace A048573.P5815519869009552350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 1) + A139763 n

end

end A048573.P5815519869009552350

namespace A048573

/-- `A007679(n+1)+A139763(n)` -/
def P5815519869009552350.Spec : Prop :=
  ∀ n, P5815519869009552350.a n = A048573 n

end A048573

/-! ## A048573.P12836197224144041484

`A001045(n+2)+A078008(n)`
-/

namespace A048573.P12836197224144041484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) + A078008 n

end

end A048573.P12836197224144041484

namespace A048573

/-- `A001045(n+2)+A078008(n)` -/
def P12836197224144041484.Spec : Prop :=
  ∀ n, P12836197224144041484.a n = A048573 n

end A048573

/-! ## A048573.P14700067162333980149

`A062510(n+1)-A078008(n)`
-/

namespace A048573.P14700067162333980149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (n + 1) - A078008 n

end

end A048573.P14700067162333980149

namespace A048573

/-- `A062510(n+1)-A078008(n)` -/
def P14700067162333980149.Spec : Prop :=
  ∀ n, P14700067162333980149.a n = A048573 n

end A048573

/-! ## A048573.P4047883625357723942

`A014551(n)+2*A001045(n)`
-/

namespace A048573.P4047883625357723942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n + 2 * A001045 n

end

end A048573.P4047883625357723942

namespace A048573

/-- `A014551(n)+2*A001045(n)` -/
def P4047883625357723942.Spec : Prop :=
  ∀ n, P4047883625357723942.a n = A048573 n

end A048573

/-! ## A048573.P2187252137204223629

`abs(A140360(n+1))-A280560(n+1)`
-/

namespace A048573.P2187252137204223629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140360 (n + 1)| - A280560 (n + 1)

end

end A048573.P2187252137204223629

namespace A048573

/-- `abs(A140360(n+1))-A280560(n+1)` -/
def P2187252137204223629.Spec : Prop :=
  ∀ n, P2187252137204223629.a n = A048573 n

end A048573

/-! ## A048573.P15546258153204490158

`A112387(2*n)+A112387(2*n+1)`
-/

namespace A048573.P15546258153204490158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (2 * n) + A112387 (2 * n + 1)

end

end A048573.P15546258153204490158

namespace A048573

/-- `A112387(2*n)+A112387(2*n+1)` -/
def P15546258153204490158.Spec : Prop :=
  ∀ n, P15546258153204490158.a n = A048573 n

end A048573

/-! ## A048573.P297916193393813231

`A135318(2*n)+A135318(2*n+1)`
-/

namespace A048573.P297916193393813231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (2 * n) + A135318 (2 * n + 1)

end

end A048573.P297916193393813231

namespace A048573

/-- `A135318(2*n)+A135318(2*n+1)` -/
def P297916193393813231.Spec : Prop :=
  ∀ n, P297916193393813231.a n = A048573 n

end A048573

/-! ## A048573.P17823199148482044788

`A084214(n+2)/2`
-/

namespace A048573.P17823199148482044788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084214 (n + 2) : ℚ) / 2

end

end A048573.P17823199148482044788

namespace A048573

/-- `A084214(n+2)/2` -/
def P17823199148482044788.Spec : Prop :=
  ∀ n, P17823199148482044788.a n = (A048573 n : ℚ)

end A048573

/-! ## A048573.P211835311589008472

`A290604(n)+A083944(n)`
-/

namespace A048573.P211835311589008472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290604 n + A083944 n

end

end A048573.P211835311589008472

namespace A048573

/-- `A290604(n)+A083944(n)` -/
def P211835311589008472.Spec : Prop :=
  ∀ n, P211835311589008472.a n = A048573 n

end A048573

/-! ## A048573.P5453007707638786360

`A001045(n+3)-A000079(n)`
-/

namespace A048573.P5453007707638786360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 3) - A000079 n

end

end A048573.P5453007707638786360

namespace A048573

/-- `A001045(n+3)-A000079(n)` -/
def P5453007707638786360.Spec : Prop :=
  ∀ n, P5453007707638786360.a n = A048573 n

end A048573

/-! ## A048573.P5233065608667397287

`A081254(n+2)-A081254(n+1)`
-/

namespace A048573.P5233065608667397287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081254 (n + 2) - A081254 (n + 1)

end

end A048573.P5233065608667397287

namespace A048573

/-- `A081254(n+2)-A081254(n+1)` -/
def P5233065608667397287.Spec : Prop :=
  ∀ n, P5233065608667397287.a n = A048573 n

end A048573

/-! ## A048573.P17540130000339540488

`(A001045(n+2)+A062510(n+1))/2`
-/

namespace A048573.P17540130000339540488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 2) + A062510 (n + 1) : ℚ) / 2

end

end A048573.P17540130000339540488

namespace A048573

/-- `(A001045(n+2)+A062510(n+1))/2` -/
def P17540130000339540488.Spec : Prop :=
  ∀ n, P17540130000339540488.a n = (A048573 n : ℚ)

end A048573

/-! ## A048573.P14866103464004582639

`(5*2^n+(-1)^n)/3`
-/

namespace A048573.P14866103464004582639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ n : ℤ) + (-1) ^ n : ℚ) / 3

end

end A048573.P14866103464004582639

namespace A048573

/-- `(5*2^n+(-1)^n)/3` -/
def P14866103464004582639.Spec : Prop :=
  ∀ n, P14866103464004582639.a n = (A048573 n : ℚ)

theorem P14866103464004582639.correct : P14866103464004582639.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A048573, Nat.add_sub_cancel, A048573.P14866103464004582639.a, A048573.P2715505086605759479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A048573, Nat.add_sub_cancel, A048573.P14866103464004582639.a, A048573.P2715505086605759479.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048573

/-! ## A048573.P12162928880396465176

`A001045(n+4)-A340627(n)`
-/

namespace A048573.P12162928880396465176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 4) - A340627 n

end

end A048573.P12162928880396465176

namespace A048573

/-- `A001045(n+4)-A340627(n)` -/
def P12162928880396465176.Spec : Prop :=
  ∀ n, P12162928880396465176.a n = A048573 n

end A048573

/-!
# A048574: Self-convolution of 1 2 3 5 7 11 15 22 30 42 56 77 ... (A000041).

The programs for A048574, there is no canonical definition to state claims against.
-/

/-! ## A048574.P854277817182525288

`A000712(n+2)-2*A000041(n+2)`
-/

namespace A048574.P854277817182525288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 2) - 2 * A000041 (n + 2)

end

end A048574.P854277817182525288

/-! ## A048574.P3111044836309707651

`A052837(n+2)`
-/

namespace A048574.P3111044836309707651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052837 (n + 2)

end

end A048574.P3111044836309707651

/-! ## A048574.P3052935335636962579

`record[A052837(abs(2-n))]`
-/

namespace A048574.P3052935335636962579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052837 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048574.P3052935335636962579

/-! ## A048574.P7972226999016401948

`record[or(A000007(n), A052837(n))]`
-/

namespace A048574.P7972226999016401948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A052837 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048574.P7972226999016401948

/-! ## A048574.P2680652327572695626

`record[abs(A000041(n)-A122768(n))]`
-/

namespace A048574.P2680652327572695626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000041 n - A122768 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048574.P2680652327572695626

/-! ## A048574.P6886841232006707931

`A122768(n+2)-A000041(n+2)`
-/

namespace A048574.P6886841232006707931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (n + 2) - A000041 (n + 2)

end

end A048574.P6886841232006707931

/-! ## A048574.P18338634366926009045

`A000712(n+2)-A139582(n+2)`
-/

namespace A048574.P18338634366926009045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 2) - A139582 (n + 2)

end

end A048574.P18338634366926009045

/-! ## A048574.P5215026128960950179

`A060642(∑[n+1]+2)`
-/

namespace A048574.P5215026128960950179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A048574.P5215026128960950179

/-!
# A048575: Pisot sequences L(2,5), E(2,5).

The programs for A048575, the canonical program `A048575.P12938457523830492032` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048575 has offset 0).

The definition of A048575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048575.P12938457523830492032

`3*a(n-1)-a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048575

/-- `3*a(n-1)-a(n-2)` -/
def P12938457523830492032.Spec : Prop :=
  ∀ n, P12938457523830492032.a n = A048575 n

theorem P12938457523830492032.correct : P12938457523830492032.Spec := by
  intro n
  simp only [A048575]

end A048575

/-! ## A048575.P14989904225379299726

`A000045(2*n+3)`
-/

namespace A048575.P14989904225379299726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 3)

end

end A048575.P14989904225379299726

namespace A048575

/-- `A000045(2*n+3)` -/
def P14989904225379299726.Spec : Prop :=
  ∀ n, P14989904225379299726.a n = A048575 n

end A048575

/-! ## A048575.P6439175069291055621

`2*A001906(n+1)-A001906(n)`
-/

namespace A048575.P6439175069291055621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001906 (n + 1) - A001906 n

end

end A048575.P6439175069291055621

namespace A048575

/-- `2*A001906(n+1)-A001906(n)` -/
def P6439175069291055621.Spec : Prop :=
  ∀ n, P6439175069291055621.a n = A048575 n

end A048575

/-! ## A048575.P16639559101546863722

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=2, a(1)=5`
-/

namespace A048575.P16639559101546863722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A048575.P16639559101546863722

namespace A048575

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P16639559101546863722.Spec : Prop :=
  ∀ n, P16639559101546863722.a n = A048575 n

end A048575

/-! ## A048575.P17012197809086486979

`Δ[ogf(1/(1-3x+x^2))]`
-/

namespace A048575.P17012197809086486979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048575.P17012197809086486979

namespace A048575

/-- `Δ[ogf(1/(1-3x+x^2))]` -/
def P17012197809086486979.Spec : Prop :=
  ∀ n, P17012197809086486979.a n = A048575 n

end A048575

/-! ## A048575.P11993439838456127076

`ogf((2-x)/(1-3x+x^2))`
-/

namespace A048575.P11993439838456127076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -3, 1] n

end

end A048575.P11993439838456127076

namespace A048575

/-- `ogf((2-x)/(1-3x+x^2))` -/
def P11993439838456127076.Spec : Prop :=
  ∀ n, P11993439838456127076.a n = A048575 n

end A048575

/-! ## A048575.P8728624157492085393

`floor(ϕ²*a(n-1))` with `a(0)=2`
-/

namespace A048575.P8728624157492085393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A048575.P8728624157492085393

namespace A048575

/-- `floor(ϕ²*a(n-1))` -/
def P8728624157492085393.Spec : Prop :=
  ∀ n, P8728624157492085393.a n = A048575 n

end A048575

/-! ## A048575.P7405609602143145053

`round(ϕ²*a(n-1))` with `a(0)=2`
-/

namespace A048575.P7405609602143145053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A048575.P7405609602143145053

namespace A048575

/-- `round(ϕ²*a(n-1))` -/
def P7405609602143145053.Spec : Prop :=
  ∀ n, P7405609602143145053.a n = A048575 n

end A048575

/-! ## A048575.P14105400246333232879

`round(a(n-1)/(2-ϕ))` with `a(0)=2`
-/

namespace A048575.P14105400246333232879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (2 - Real.goldenRatio))

end

end A048575.P14105400246333232879

namespace A048575

/-- `round(a(n-1)/(2-ϕ))` -/
def P14105400246333232879.Spec : Prop :=
  ∀ n, P14105400246333232879.a n = A048575 n

end A048575

/-! ## A048575.P10818477479090942480

`floor(ϕ*ϕ*a(n-1))` with `a(0)=2`
-/

namespace A048575.P10818477479090942480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A048575.P10818477479090942480

namespace A048575

/-- `floor(ϕ*ϕ*a(n-1))` -/
def P10818477479090942480.Spec : Prop :=
  ∀ n, P10818477479090942480.a n = A048575 n

end A048575

/-! ## A048575.P6815011205136930370

`round(ϕ*ϕ*a(n-1))` with `a(0)=2`
-/

namespace A048575.P6815011205136930370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A048575.P6815011205136930370

namespace A048575

/-- `round(ϕ*ϕ*a(n-1))` -/
def P6815011205136930370.Spec : Prop :=
  ∀ n, P6815011205136930370.a n = A048575 n

end A048575

/-! ## A048575.P4229109429578722274

`-ceil(-(ϕ²*a(n-1)))` with `a(0)=2`
-/

namespace A048575.P4229109429578722274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -⌈-(Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))⌉

end

end A048575.P4229109429578722274

namespace A048575

/-- `-ceil(-(ϕ²*a(n-1)))` -/
def P4229109429578722274.Spec : Prop :=
  ∀ n, P4229109429578722274.a n = A048575 n

end A048575

/-! ## A048575.P13174230848288889016

`record[a(n-2)-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A048575.P13174230848288889016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048575.P13174230848288889016

namespace A048575

/-- `record[a(n-2)-a(n-1)]` -/
def P13174230848288889016.Spec : Prop :=
  ∀ n, P13174230848288889016.a n = A048575 n

end A048575

/-! ## A048575.P17966645377050383762

`lcm(3, a(n-1))-a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A048575.P17966645377050383762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 2)

end

end A048575.P17966645377050383762

namespace A048575

/-- `lcm(3, a(n-1))-a(n-2)` -/
def P17966645377050383762.Spec : Prop :=
  ∀ n, P17966645377050383762.a n = A048575 n

end A048575

/-! ## A048575.P13513627910374824532

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A048575.P13513627910374824532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A048575.P13513627910374824532

namespace A048575

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P13513627910374824532.Spec : Prop :=
  ∀ n, P13513627910374824532.a n = A048575 n

theorem P13513627910374824532.correct : P13513627910374824532.Spec := by
  intro n
  simp only [A048575, Nat.add_sub_cancel, A048575.P13513627910374824532.a, A048575.P12938457523830492032.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048575

/-! ## A048575.P6318671188702382004

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A048575.P6318671188702382004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A048575.P6318671188702382004

namespace A048575

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P6318671188702382004.Spec : Prop :=
  ∀ n, P6318671188702382004.a n = A048575 n

theorem P6318671188702382004.correct : P6318671188702382004.Spec := by
  intro n
  simp only [A048575, Nat.add_sub_cancel, A048575.P6318671188702382004.a, A048575.P12938457523830492032.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048575

/-! ## A048575.P10502065462389468896

`Δ[A035508(n)]`
-/

namespace A048575.P10502065462389468896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048575.P10502065462389468896

namespace A048575

/-- `Δ[A035508(n)]` -/
def P10502065462389468896.Spec : Prop :=
  ∀ n, P10502065462389468896.a n = A048575 n

end A048575

/-! ## A048575.P14221976031355464296

`A122367(n+1)`
-/

namespace A048575.P14221976031355464296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (n + 1)

end

end A048575.P14221976031355464296

namespace A048575

/-- `A122367(n+1)` -/
def P14221976031355464296.Spec : Prop :=
  ∀ n, P14221976031355464296.a n = A048575 n

end A048575

/-! ## A048575.P12121659132963830138

`A001519(n+2)`
-/

namespace A048575.P12121659132963830138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2)

end

end A048575.P12121659132963830138

namespace A048575

/-- `A001519(n+2)` -/
def P12121659132963830138.Spec : Prop :=
  ∀ n, P12121659132963830138.a n = A048575 n

end A048575

/-! ## A048575.P9310311134717693300

`A020695(2*n)`
-/

namespace A048575.P9310311134717693300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (2 * n)

end

end A048575.P9310311134717693300

namespace A048575

/-- `A020695(2*n)` -/
def P9310311134717693300.Spec : Prop :=
  ∀ n, P9310311134717693300.a n = A048575 n

end A048575

/-!
# A048576: Pisot sequence L(2,7).

The programs for A048576, the canonical program `A048576.P14674218448893603417` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048576 has offset 0).

The definition of A048576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048576.P14674218448893603417

`ceil(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048576

/-- `ceil(a(n-1)²/a(n-2))` -/
def P14674218448893603417.Spec : Prop :=
  ∀ n, P14674218448893603417.a n = A048576 n

theorem P14674218448893603417.correct : P14674218448893603417.Spec := by
  intro n
  simp only [A048576]

end A048576

/-! ## A048576.P11037166351314632197

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=2, a(1)=7`
-/

namespace A048576.P11037166351314632197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A048576.P11037166351314632197

namespace A048576

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P11037166351314632197.Spec : Prop :=
  ∀ n, P11037166351314632197.a n = A048576 n

theorem P11037166351314632197.correct : P11037166351314632197.Spec := by
  intro n
  simp only [A048576, Nat.add_sub_cancel, A048576.P11037166351314632197.a, A048576.P14674218448893603417.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048576

/-! ## A048576.P346541461440943421

`ceil(a(n-1)^2/a(n-2))` with `a(0)=2, a(1)=7`
-/

namespace A048576.P346541461440943421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048576.P346541461440943421

namespace A048576

/-- `ceil(a(n-1)^2/a(n-2))` -/
def P346541461440943421.Spec : Prop :=
  ∀ n, P346541461440943421.a n = A048576 n

theorem P346541461440943421.correct : P346541461440943421.Spec := by
  intro n
  simp only [A048576, Nat.add_sub_cancel, A048576.P346541461440943421.a, A048576.P14674218448893603417.a, SequenceMachineLib.memo_apply]

end A048576

/-! ## A048576.P15265397798697174701

`floor((a(n-1)²-1)/a(n-2))+1` with `a(0)=2, a(1)=7`
-/

namespace A048576.P15265397798697174701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  ⌊(a (n - 1) ^ 2 - 1 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A048576.P15265397798697174701

namespace A048576

/-- `floor((a(n-1)²-1)/a(n-2))+1` -/
def P15265397798697174701.Spec : Prop :=
  ∀ n, P15265397798697174701.a n = A048576 n

end A048576

/-!
# A048577: Pisot sequence L(3,4).

The programs for A048577, the canonical program `A048577.P13834030148595370685` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048577 has offset 0).

The definition of A048577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048577.P13834030148595370685

`2*a(n-1)-a(n-3)` with `a(0)=3, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048577

/-- `2*a(n-1)-a(n-3)` -/
def P13834030148595370685.Spec : Prop :=
  ∀ n, P13834030148595370685.a n = A048577 n

theorem P13834030148595370685.correct : P13834030148595370685.Spec := by
  intro n
  simp only [A048577]

end A048577

/-! ## A048577.P14009066345478752064

`floor(ϕ*a(n-1))` with `a(0)=3`
-/

namespace A048577.P14009066345478752064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A048577.P14009066345478752064

namespace A048577

/-- `floor(ϕ*a(n-1))` -/
def P14009066345478752064.Spec : Prop :=
  ∀ n, P14009066345478752064.a n = A048577 n

end A048577

/-! ## A048577.P4746094440535450258

`∑[ogf((-3+2x+2x^2)/(-1+x+x^2))]`
-/

namespace A048577.P4746094440535450258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -2] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048577.P4746094440535450258

namespace A048577

/-- `∑[ogf((-3+2x+2x^2)/(-1+x+x^2))]` -/
def P4746094440535450258.Spec : Prop :=
  ∀ n, P4746094440535450258.a n = A048577 n

end A048577

/-! ## A048577.P16103363779859135144

`ogf((3-2x-2x^2)/(1-2x+x^3))`
-/

namespace A048577.P16103363779859135144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -2] [1, -2, 0, 1] n

end

end A048577.P16103363779859135144

namespace A048577

/-- `ogf((3-2x-2x^2)/(1-2x+x^3))` -/
def P16103363779859135144.Spec : Prop :=
  ∀ n, P16103363779859135144.a n = A048577 n

end A048577

/-! ## A048577.P1375961206572766142

`ceil(ϕ*a(n-1))-1` with `a(0)=3`
-/

namespace A048577.P1375961206572766142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ - 1

end

end A048577.P1375961206572766142

namespace A048577

/-- `ceil(ϕ*a(n-1))-1` -/
def P1375961206572766142.Spec : Prop :=
  ∀ n, P1375961206572766142.a n = A048577 n

end A048577

/-! ## A048577.P17969215692575638117

`floor(a(n-1)/(ϕ-1))` with `a(0)=3`
-/

namespace A048577.P17969215692575638117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A048577.P17969215692575638117

namespace A048577

/-- `floor(a(n-1)/(ϕ-1))` -/
def P17969215692575638117.Spec : Prop :=
  ∀ n, P17969215692575638117.a n = A048577 n

end A048577

/-! ## A048577.P3772416161729614401

`-ceil(a(n-1)/(1-ϕ))` with `a(0)=3`
-/

namespace A048577.P3772416161729614401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  -⌈(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌉

end

end A048577.P3772416161729614401

namespace A048577

/-- `-ceil(a(n-1)/(1-ϕ))` -/
def P3772416161729614401.Spec : Prop :=
  ∀ n, P3772416161729614401.a n = A048577 n

end A048577

/-! ## A048577.P1415999597678156294

`round(ϕ*a(n-1))-1` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A048577.P1415999597678156294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) - 1

end

end A048577.P1415999597678156294

namespace A048577

/-- `round(ϕ*a(n-1))-1` -/
def P1415999597678156294.Spec : Prop :=
  ∀ n, P1415999597678156294.a n = A048577 n

end A048577

/-! ## A048577.P4095594948357259810

`a(n-1)+a(n-2)-1` with `a(0)=3, a(1)=4`
-/

namespace A048577.P4095594948357259810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + (a (n - 2) - 1)

end

end A048577.P4095594948357259810

namespace A048577

/-- `a(n-1)+a(n-2)-1` -/
def P4095594948357259810.Spec : Prop :=
  ∀ n, P4095594948357259810.a n = A048577 n

end A048577

/-! ## A048577.P13887289774038362756

`a(n-1)-(1-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A048577.P13887289774038362756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A048577.P13887289774038362756

namespace A048577

/-- `a(n-1)-(1-a(n-2))` -/
def P13887289774038362756.Spec : Prop :=
  ∀ n, P13887289774038362756.a n = A048577 n

end A048577

/-! ## A048577.P8139328142185382835

`A020695(n)+1`
-/

namespace A048577.P8139328142185382835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + 1

end

end A048577.P8139328142185382835

namespace A048577

/-- `A020695(n)+1` -/
def P8139328142185382835.Spec : Prop :=
  ∀ n, P8139328142185382835.a n = A048577 n

end A048577

/-! ## A048577.P5490724347004913390

`A018910(n)-1`
-/

namespace A048577.P5490724347004913390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - 1

end

end A048577.P5490724347004913390

namespace A048577

/-- `A018910(n)-1` -/
def P5490724347004913390.Spec : Prop :=
  ∀ n, P5490724347004913390.a n = A048577 n

end A048577

/-! ## A048577.P17905404923663931739

`A001611(n+3)`
-/

namespace A048577.P17905404923663931739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 3)

end

end A048577.P17905404923663931739

namespace A048577

/-- `A001611(n+3)` -/
def P17905404923663931739.Spec : Prop :=
  ∀ n, P17905404923663931739.a n = A048577 n

end A048577

/-! ## A048577.P4578997401991187728

`A001911(n)+3`
-/

namespace A048577.P4578997401991187728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + 3

end

end A048577.P4578997401991187728

namespace A048577

/-- `A001911(n)+3` -/
def P4578997401991187728.Spec : Prop :=
  ∀ n, P4578997401991187728.a n = A048577 n

end A048577

/-! ## A048577.P2948798802244367525

`record[A226649(n+3)]`
-/

namespace A048577.P2948798802244367525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048577.P2948798802244367525

namespace A048577

/-- `record[A226649(n+3)]` -/
def P2948798802244367525.Spec : Prop :=
  ∀ n, P2948798802244367525.a n = A048577 n

end A048577

/-! ## A048577.P17058707086128218911

`A000045(n+3)+1`
-/

namespace A048577.P17058707086128218911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) + 1

end

end A048577.P17058707086128218911

namespace A048577

/-- `A000045(n+3)+1` -/
def P17058707086128218911.Spec : Prop :=
  ∀ n, P17058707086128218911.a n = A048577 n

end A048577

/-! ## A048577.P14543122370980644078

`A169622(n+1)-2`
-/

namespace A048577.P14543122370980644078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169622 (n + 1) - 2

end

end A048577.P14543122370980644078

namespace A048577

/-- `A169622(n+1)-2` -/
def P14543122370980644078.Spec : Prop :=
  ∀ n, P14543122370980644078.a n = A048577 n

end A048577

/-! ## A048577.P8747249373445161947

`A000071(n+3)+2`
-/

namespace A048577.P8747249373445161947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) + 2

end

end A048577.P8747249373445161947

namespace A048577

/-- `A000071(n+3)+2` -/
def P8747249373445161947.Spec : Prop :=
  ∀ n, P8747249373445161947.a n = A048577 n

end A048577

/-! ## A048577.P1401704319413582501

`A157725(n+3)-1`
-/

namespace A048577.P1401704319413582501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 3) - 1

end

end A048577.P1401704319413582501

namespace A048577

/-- `A157725(n+3)-1` -/
def P1401704319413582501.Spec : Prop :=
  ∀ n, P1401704319413582501.a n = A048577 n

end A048577

/-! ## A048577.P5066854556405223884

`A157726(n+3)-2`
-/

namespace A048577.P5066854556405223884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 3) - 2

end

end A048577.P5066854556405223884

namespace A048577

/-- `A157726(n+3)-2` -/
def P5066854556405223884.Spec : Prop :=
  ∀ n, P5066854556405223884.a n = A048577 n

end A048577

/-!
# A048578: Pisot sequence L(3,5).

The programs for A048578, the canonical program `A048578.P13686089786535013419` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048578 has offset 0).

The definition of A048578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048578.P13686089786535013419

`2^(n+1)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048578

/-- `2^(n+1)+1` -/
def P13686089786535013419.Spec : Prop :=
  ∀ n, (P13686089786535013419.a n : ℤ) = A048578 n

theorem P13686089786535013419.correct : P13686089786535013419.Spec := by
  intro n
  simp only [A048578]

end A048578

/-! ## A048578.P10340454836774406538

`or(1, 2*2^n)`
-/

namespace A048578.P10340454836774406538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * 2 ^ n)

end

end A048578.P10340454836774406538

namespace A048578

/-- `or(1, 2*2^n)` -/
def P10340454836774406538.Spec : Prop :=
  ∀ n, (P10340454836774406538.a n : ℤ) = A048578 n

end A048578

/-! ## A048578.P12331370830908354800

`xor(1, 2*2^n)`
-/

namespace A048578.P12331370830908354800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * 2 ^ n)

end

end A048578.P12331370830908354800

namespace A048578

/-- `xor(1, 2*2^n)` -/
def P12331370830908354800.Spec : Prop :=
  ∀ n, (P12331370830908354800.a n : ℤ) = A048578 n

end A048578

/-! ## A048578.P4312210482861414760

`ogf((3-4x)/(1-3x+2x^2))`
-/

namespace A048578.P4312210482861414760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -3, 2] n

end

end A048578.P4312210482861414760

namespace A048578

/-- `ogf((3-4x)/(1-3x+2x^2))` -/
def P4312210482861414760.Spec : Prop :=
  ∀ n, P4312210482861414760.a n = A048578 n

end A048578

/-! ## A048578.P10583895936513734091

`∑[2*a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A048578.P10583895936513734091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048578.P10583895936513734091

namespace A048578

/-- `∑[2*a(n-1)]` -/
def P10583895936513734091.Spec : Prop :=
  ∀ n, (P10583895936513734091.a n : ℤ) = A048578 n

end A048578

/-! ## A048578.P10865119549422409138

`abs(1-2*a(n-1))` with `a(0)=3`
-/

namespace A048578.P10865119549422409138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |1 - 2 * a (n - 1)|

end

end A048578.P10865119549422409138

namespace A048578

/-- `abs(1-2*a(n-1))` -/
def P10865119549422409138.Spec : Prop :=
  ∀ n, P10865119549422409138.a n = A048578 n

end A048578

/-! ## A048578.P17933516110279222027

`ceil(2*a(n-1)-ϕ)` with `a(0)=3`
-/

namespace A048578.P17933516110279222027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(2 * a (n - 1) : ℝ) - Real.goldenRatio⌉

end

end A048578.P17933516110279222027

namespace A048578

/-- `ceil(2*a(n-1)-ϕ)` -/
def P17933516110279222027.Spec : Prop :=
  ∀ n, P17933516110279222027.a n = A048578 n

end A048578

/-! ## A048578.P6342718905410390130

`∑[a(((-1)^n)²)^n]` with `a(0)=3, a(1)=2`
-/

namespace A048578.P6342718905410390130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (((-1) ^ n) ^ 2).toNat ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048578.P6342718905410390130

namespace A048578

/-- `∑[a(((-1)^n)²)^n]` -/
def P6342718905410390130.Spec : Prop :=
  ∀ n, (P6342718905410390130.a n : ℤ) = A048578 n

end A048578

/-! ## A048578.P8909786851449877537

`2*(a(n-1)-1/2)` with `a(0)=3`
-/

namespace A048578.P8909786851449877537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 * (a (n - 1) - (1 : ℚ) / 2)

end

end A048578.P8909786851449877537

namespace A048578

/-- `2*(a(n-1)-1/2)` -/
def P8909786851449877537.Spec : Prop :=
  ∀ n, P8909786851449877537.a n = (A048578 n : ℚ)

theorem P8909786851449877537.correct : P8909786851449877537.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048578, Nat.add_sub_cancel, A048578.P8909786851449877537.a, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048578, Nat.add_sub_cancel, A048578.P8909786851449877537.a, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048578

/-! ## A048578.P11508327422691701004

`record[2*a(n-2)-1]` with `a(0)=3, a(1)=0`
-/

namespace A048578.P11508327422691701004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  2 * f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048578.P11508327422691701004

namespace A048578

/-- `record[2*a(n-2)-1]` -/
def P11508327422691701004.Spec : Prop :=
  ∀ n, P11508327422691701004.a n = A048578 n

end A048578

/-! ## A048578.P3619997742607383136

`-or(1, -(2*a(n-1)))` with `a(0)=3`
-/

namespace A048578.P3619997742607383136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  -Int.lor 1 (-(2 * a (n - 1)))

end

end A048578.P3619997742607383136

namespace A048578

/-- `-or(1, -(2*a(n-1)))` -/
def P3619997742607383136.Spec : Prop :=
  ∀ n, P3619997742607383136.a n = A048578 n

end A048578

/-! ## A048578.P190176193411985148

`-xor(1, -(2*a(n-1)))` with `a(0)=3`
-/

namespace A048578.P190176193411985148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  -Int.xor 1 (-(2 * a (n - 1)))

end

end A048578.P190176193411985148

namespace A048578

/-- `-xor(1, -(2*a(n-1)))` -/
def P190176193411985148.Spec : Prop :=
  ∀ n, P190176193411985148.a n = A048578 n

end A048578

/-! ## A048578.P16359027435532884331

`∑[gcd(2, a(n-1))^n]` with `a(0)=3, a(1)=2`
-/

namespace A048578.P16359027435532884331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  Nat.gcd 2 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048578.P16359027435532884331

namespace A048578

/-- `∑[gcd(2, a(n-1))^n]` -/
def P16359027435532884331.Spec : Prop :=
  ∀ n, (P16359027435532884331.a n : ℤ) = A048578 n

end A048578

/-! ## A048578.P8886372394723610149

`∑[lcm(2^n, a(n-1))]` with `a(0)=3, a(1)=2`
-/

namespace A048578.P8886372394723610149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  Nat.lcm (2 ^ n) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048578.P8886372394723610149

namespace A048578

/-- `∑[lcm(2^n, a(n-1))]` -/
def P8886372394723610149.Spec : Prop :=
  ∀ n, (P8886372394723610149.a n : ℤ) = A048578 n

end A048578

/-! ## A048578.P11057822628423582245

`∑[a(n-1)/(1-1/2)]` with `a(0)=3, a(1)=2`
-/

namespace A048578.P11057822628423582245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048578.P11057822628423582245

namespace A048578

/-- `∑[a(n-1)/(1-1/2)]` -/
def P11057822628423582245.Spec : Prop :=
  ∀ n, P11057822628423582245.a n = (A048578 n : ℚ)

end A048578

/-! ## A048578.P15615175860946769798

`abs(a(n-1)+a(n-1)-1)` with `a(0)=3`
-/

namespace A048578.P15615175860946769798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |a (n - 1) + (a (n - 1) - 1)|

end

end A048578.P15615175860946769798

namespace A048578

/-- `abs(a(n-1)+a(n-1)-1)` -/
def P15615175860946769798.Spec : Prop :=
  ∀ n, P15615175860946769798.a n = A048578 n

end A048578

/-! ## A048578.P10107980902778765726

`abs(1-a(n-1)-a(n-1))` with `a(0)=3`
-/

namespace A048578.P10107980902778765726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |1 - a (n - 1) - a (n - 1)|

end

end A048578.P10107980902778765726

namespace A048578

/-- `abs(1-a(n-1)-a(n-1))` -/
def P10107980902778765726.Spec : Prop :=
  ∀ n, P10107980902778765726.a n = A048578 n

end A048578

/-! ## A048578.P14975928854312255828

`ceil(a(n-1)+a(n-1)-1)` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A048578.P14975928854312255828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A048578.P14975928854312255828

namespace A048578

/-- `ceil(a(n-1)+a(n-1)-1)` -/
def P14975928854312255828.Spec : Prop :=
  ∀ n, P14975928854312255828.a n = A048578 n

theorem P14975928854312255828.correct : P14975928854312255828.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048578, Nat.add_sub_cancel, A048578.P14975928854312255828.a, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048578, Nat.add_sub_cancel, A048578.P14975928854312255828.a, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048578

/-! ## A048578.P7389455789953068934

`ceil(a(n-1)-(1-a(n-1)))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A048578.P7389455789953068934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A048578.P7389455789953068934

namespace A048578

/-- `ceil(a(n-1)-(1-a(n-1)))` -/
def P7389455789953068934.Spec : Prop :=
  ∀ n, P7389455789953068934.a n = A048578 n

theorem P7389455789953068934.correct : P7389455789953068934.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048578, Nat.add_sub_cancel, A048578.P7389455789953068934.a, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048578, Nat.add_sub_cancel, A048578.P7389455789953068934.a, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048578

/-! ## A048578.P15113443436111087642

`round(a(n-1)+a(n-1)-1)` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A048578.P15113443436111087642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A048578.P15113443436111087642

namespace A048578

/-- `round(a(n-1)+a(n-1)-1)` -/
def P15113443436111087642.Spec : Prop :=
  ∀ n, P15113443436111087642.a n = A048578 n

theorem P15113443436111087642.correct : P15113443436111087642.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A048578, Nat.add_sub_cancel, A048578.P15113443436111087642.a, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A048578, Nat.add_sub_cancel, A048578.P15113443436111087642.a, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A048578

/-!
# A048579: Pisot sequence L(3,8).

The programs for A048579, the canonical program `A048579.P15262648230355956899` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048579 has offset 0).

The definition of A048579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048579.P15262648230355956899

`ceil(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048579

/-- `ceil(a(n-1)²/a(n-2))` -/
def P15262648230355956899.Spec : Prop :=
  ∀ n, P15262648230355956899.a n = A048579 n

theorem P15262648230355956899.correct : P15262648230355956899.Spec := by
  intro n
  simp only [A048579]

end A048579

/-! ## A048579.P3611523482171499828

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=8`
-/

namespace A048579.P3611523482171499828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A048579.P3611523482171499828

namespace A048579

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P3611523482171499828.Spec : Prop :=
  ∀ n, P3611523482171499828.a n = A048579 n

theorem P3611523482171499828.correct : P3611523482171499828.Spec := by
  intro n
  simp only [A048579, Nat.add_sub_cancel, A048579.P3611523482171499828.a, A048579.P15262648230355956899.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048579

/-! ## A048579.P10765083040021715056

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=3, a(1)=8`
-/

namespace A048579.P10765083040021715056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ + 1

end

end A048579.P10765083040021715056

namespace A048579

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P10765083040021715056.Spec : Prop :=
  ∀ n, P10765083040021715056.a n = A048579 n

end A048579

/-! ## A048579.P6121086184129644666

`ceil(a(n-1)^2/a(n-2))` with `a(0)=3, a(1)=8`
-/

namespace A048579.P6121086184129644666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048579.P6121086184129644666

namespace A048579

/-- `ceil(a(n-1)^2/a(n-2))` -/
def P6121086184129644666.Spec : Prop :=
  ∀ n, P6121086184129644666.a n = A048579 n

theorem P6121086184129644666.correct : P6121086184129644666.Spec := by
  intro n
  simp only [A048579, Nat.add_sub_cancel, A048579.P6121086184129644666.a, A048579.P15262648230355956899.a, SequenceMachineLib.memo_apply]

end A048579

/-! ## A048579.P10518204088599577206

`floor(a(n-1)²/a(n-2))+1` with `a(0)=3, a(1)=8`
-/

namespace A048579.P10518204088599577206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A048579.P10518204088599577206

namespace A048579

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P10518204088599577206.Spec : Prop :=
  ∀ n, P10518204088599577206.a n = A048579 n

end A048579

/-!
# A048580: Pisot sequence L(3,10).

The programs for A048580, the canonical program `A048580.P9275668782280333019` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048580 has offset 0).

The definition of A048580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048580.P9275668782280333019

`4*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048580

/-- `4*a(n-1)-2*a(n-2)` -/
def P9275668782280333019.Spec : Prop :=
  ∀ n, P9275668782280333019.a n = A048580 n

theorem P9275668782280333019.correct : P9275668782280333019.Spec := by
  intro n
  simp only [A048580]

end A048580

/-! ## A048580.P7525660913206268895

`ceil(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=10`
-/

namespace A048580.P7525660913206268895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048580.P7525660913206268895

namespace A048580

/-- `ceil(a(n-1)²/a(n-2))` -/
def P7525660913206268895.Spec : Prop :=
  ∀ n, P7525660913206268895.a n = A048580 n

end A048580

/-! ## A048580.P8062605511834779481

`Δ[ogf(1/(1-4x+2x^2))]`
-/

namespace A048580.P8062605511834779481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048580.P8062605511834779481

namespace A048580

/-- `Δ[ogf(1/(1-4x+2x^2))]` -/
def P8062605511834779481.Spec : Prop :=
  ∀ n, P8062605511834779481.a n = A048580 n

end A048580

/-! ## A048580.P12185459884622303676

`ogf((3-2x)/(1-4x+2x^2))`
-/

namespace A048580.P12185459884622303676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -4, 2] n

end

end A048580.P12185459884622303676

namespace A048580

/-- `ogf((3-2x)/(1-4x+2x^2))` -/
def P12185459884622303676.Spec : Prop :=
  ∀ n, P12185459884622303676.a n = A048580 n

end A048580

/-! ## A048580.P12459542520276039061

`floor((2+sqrt(2))*a(n-1))` with `a(0)=3`
-/

namespace A048580.P12459542520276039061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(2 + Real.sqrt (2 : ℝ)) * (a (n - 1) : ℝ)⌋

end

end A048580.P12459542520276039061

namespace A048580

/-- `floor((2+sqrt(2))*a(n-1))` -/
def P12459542520276039061.Spec : Prop :=
  ∀ n, P12459542520276039061.a n = A048580 n

end A048580

/-! ## A048580.P8980757722459836387

`round((sqrt(2)+2)*a(n-1))` with `a(0)=3`
-/

namespace A048580.P8980757722459836387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A048580.P8980757722459836387

namespace A048580

/-- `round((sqrt(2)+2)*a(n-1))` -/
def P8980757722459836387.Spec : Prop :=
  ∀ n, P8980757722459836387.a n = A048580 n

end A048580

/-! ## A048580.P10944118885908903800

`Δ[ceil((sqrt(2)+2)*a(n-1))]` with `a(0)=1`
-/

namespace A048580.P10944118885908903800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048580.P10944118885908903800

namespace A048580

/-- `Δ[ceil((sqrt(2)+2)*a(n-1))]` -/
def P10944118885908903800.Spec : Prop :=
  ∀ n, P10944118885908903800.a n = A048580 n

end A048580

/-! ## A048580.P8368579407109448232

`floor(2*a(n-1)/(2-sqrt(2)))` with `a(0)=3`
-/

namespace A048580.P8368579407109448232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

end

end A048580.P8368579407109448232

namespace A048580

/-- `floor(2*a(n-1)/(2-sqrt(2)))` -/
def P8368579407109448232.Spec : Prop :=
  ∀ n, P8368579407109448232.a n = A048580 n

end A048580

/-! ## A048580.P14179350663287955710

`∑[ceil((sqrt(2)+2)*a(n-1))]` with `a(0)=3, a(1)=7`
-/

namespace A048580.P14179350663287955710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048580.P14179350663287955710

namespace A048580

/-- `∑[ceil((sqrt(2)+2)*a(n-1))]` -/
def P14179350663287955710.Spec : Prop :=
  ∀ n, P14179350663287955710.a n = A048580 n

end A048580

/-! ## A048580.P10600545452168956068

`(3/2-sqrt(2))*(2-sqrt(2))^n+(3/2+sqrt(2))*(2+sqrt(2))^n`
-/

namespace A048580.P10600545452168956068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((3 : ℚ) / 2 : ℝ) - Real.sqrt (2 : ℝ)) * (2 - Real.sqrt (2 : ℝ)) ^ n + (((3 : ℚ) / 2 : ℝ) + Real.sqrt (2 : ℝ)) * (2 + Real.sqrt (2 : ℝ)) ^ n

end

end A048580.P10600545452168956068

namespace A048580

/-- `(3/2-sqrt(2))*(2-sqrt(2))^n+(3/2+sqrt(2))*(2+sqrt(2))^n` -/
def P10600545452168956068.Spec : Prop :=
  ∀ n, P10600545452168956068.a n = (A048580 n : ℝ)

end A048580

/-! ## A048580.P3650188039934794754

`Δ[A007070(n)]`
-/

namespace A048580.P3650188039934794754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048580.P3650188039934794754

namespace A048580

/-- `Δ[A007070(n)]` -/
def P3650188039934794754.Spec : Prop :=
  ∀ n, P3650188039934794754.a n = A048580 n

end A048580

/-! ## A048580.P3670858874538975639

`A007052(n+1)`
-/

namespace A048580.P3670858874538975639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1)

end

end A048580.P3670858874538975639

namespace A048580

/-- `A007052(n+1)` -/
def P3670858874538975639.Spec : Prop :=
  ∀ n, P3670858874538975639.a n = A048580 n

end A048580

/-! ## A048580.P718743138727127163

`Δ[Δ[A006012(n)]]`
-/

namespace A048580.P718743138727127163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048580.P718743138727127163

namespace A048580

/-- `Δ[Δ[A006012(n)]]` -/
def P718743138727127163.Spec : Prop :=
  ∀ n, P718743138727127163.a n = A048580 n

end A048580

/-! ## A048580.P14553244580811546405

`floor(A113859(n)/2)`
-/

namespace A048580.P14553244580811546405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113859 n : ℚ) / 2⌋

end

end A048580.P14553244580811546405

namespace A048580

/-- `floor(A113859(n)/2)` -/
def P14553244580811546405.Spec : Prop :=
  ∀ n, P14553244580811546405.a n = A048580 n

end A048580

/-! ## A048580.P1181479235570178064

`Δ[A204089(n+1)]`
-/

namespace A048580.P1181479235570178064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048580.P1181479235570178064

namespace A048580

/-- `Δ[A204089(n+1)]` -/
def P1181479235570178064.Spec : Prop :=
  ∀ n, P1181479235570178064.a n = A048580 n

end A048580

/-! ## A048580.P4579546019457110188

`Δ[A068912(2*n)]`
-/

namespace A048580.P4579546019457110188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068912 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048580.P4579546019457110188

namespace A048580

/-- `Δ[A068912(2*n)]` -/
def P4579546019457110188.Spec : Prop :=
  ∀ n, P4579546019457110188.a n = A048580 n

end A048580

/-! ## A048580.P11490129762644199474

`Δ[A217730(2*n)]`
-/

namespace A048580.P11490129762644199474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048580.P11490129762644199474

namespace A048580

/-- `Δ[A217730(2*n)]` -/
def P11490129762644199474.Spec : Prop :=
  ∀ n, P11490129762644199474.a n = A048580 n

end A048580

/-! ## A048580.P14520670675041635131

`Δ[A007068(Δ[n²])]`
-/

namespace A048580.P14520670675041635131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048580.P14520670675041635131

namespace A048580

/-- `Δ[A007068(Δ[n²])]` -/
def P14520670675041635131.Spec : Prop :=
  ∀ n, P14520670675041635131.a n = A048580 n

end A048580

/-! ## A048580.P14627836600233303419

`A007068(2*(n+1))`
-/

namespace A048580.P14627836600233303419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (2 * (n + 1))

end

end A048580.P14627836600233303419

namespace A048580

/-- `A007068(2*(n+1))` -/
def P14627836600233303419.Spec : Prop :=
  ∀ n, P14627836600233303419.a n = A048580 n

end A048580

/-! ## A048580.P8698079316833781638

`A062113(2*(n+1))`
-/

namespace A048580.P8698079316833781638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * (n + 1))

end

end A048580.P8698079316833781638

namespace A048580

/-- `A062113(2*(n+1))` -/
def P8698079316833781638.Spec : Prop :=
  ∀ n, P8698079316833781638.a n = A048580 n

end A048580

/-!
# A048581: Numerators of b(n) = (1/16^n)*(4/(8*n+1) - 2/(8*n+4) - 1/(8*n+5) - 1/(8*n+6)).

The programs for A048581, there is no canonical definition to state claims against.
-/

/-! ## A048581.P14821023660274450868

`A000265(A374580(n))`
-/

namespace A048581.P14821023660274450868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A374580 n).toNat

end

end A048581.P14821023660274450868

/-! ## A048581.P3306089045777422826

`A006530(4*A374580(n))`
-/

namespace A048581.P3306089045777422826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * A374580 n).toNat

end

end A048581.P3306089045777422826

/-! ## A048581.P15072653257316490141

`A006530(A374580(n)^A257463(n))`
-/

namespace A048581.P15072653257316490141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A374580 n : ℚ) ^ (A257463 n : ℤ))).toNat

end

end A048581.P15072653257316490141

/-! ## A048581.P13964229535338719902

`A111089(A007318(n)*A374580(n))`
-/

namespace A048581.P13964229535338719902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A007318 n * A374580 n).toNat

end

end A048581.P13964229535338719902

/-! ## A048581.P3090626317536304083

`A353474(n+1)+A005069(A374580(n))`
-/

namespace A048581.P3090626317536304083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353474 (n + 1) + A005069 (A374580 n).toNat

end

end A048581.P3090626317536304083

/-!
# A048582: Pisot sequence L(4,9).

The programs for A048582, the canonical program `A048582.P13621045150089118425` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048582 has offset 0).

The definition of A048582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048582.P13621045150089118425

`ceil(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048582

/-- `ceil(a(n-1)²/a(n-2))` -/
def P13621045150089118425.Spec : Prop :=
  ∀ n, P13621045150089118425.a n = A048582 n

theorem P13621045150089118425.correct : P13621045150089118425.Spec := by
  intro n
  simp only [A048582]

end A048582

/-! ## A048582.P16430896921804507535

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=9`
-/

namespace A048582.P16430896921804507535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A048582.P16430896921804507535

namespace A048582

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P16430896921804507535.Spec : Prop :=
  ∀ n, P16430896921804507535.a n = A048582 n

theorem P16430896921804507535.correct : P16430896921804507535.Spec := by
  intro n
  simp only [A048582, Nat.add_sub_cancel, A048582.P16430896921804507535.a, A048582.P13621045150089118425.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048582

/-! ## A048582.P3730313348211697589

`floor((a(n-1)²-1)/a(n-2))+1` with `a(0)=4, a(1)=9`
-/

namespace A048582.P3730313348211697589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 - 1 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A048582.P3730313348211697589

namespace A048582

/-- `floor((a(n-1)²-1)/a(n-2))+1` -/
def P3730313348211697589.Spec : Prop :=
  ∀ n, P3730313348211697589.a n = A048582 n

end A048582

/-!
# A048583: Pisot sequence L(5,6).

The programs for A048583, the canonical program `A048583.P12098355498081058521` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048583 has offset 0).

The definition of A048583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048583.P12098355498081058521

`ceil(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048583

/-- `ceil(a(n-1)²/a(n-2))` -/
def P12098355498081058521.Spec : Prop :=
  ∀ n, P12098355498081058521.a n = A048583 n

theorem P12098355498081058521.correct : P12098355498081058521.Spec := by
  intro n
  simp only [A048583]

end A048583

/-! ## A048583.P1125641883604420177

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=5, a(1)=6`
-/

namespace A048583.P1125641883604420177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A048583.P1125641883604420177

namespace A048583

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P1125641883604420177.Spec : Prop :=
  ∀ n, P1125641883604420177.a n = A048583 n

theorem P1125641883604420177.correct : P1125641883604420177.Spec := by
  intro n
  simp only [A048583, Nat.add_sub_cancel, A048583.P1125641883604420177.a, A048583.P12098355498081058521.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048583

/-! ## A048583.P1679934033148257180

`A048586(A004273(n)-n)-A000007(n)`
-/

namespace A048583.P1679934033148257180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048586 (A004273 n - (n : ℤ)).toNat - A000007 n

end

end A048583.P1679934033148257180

namespace A048583

/-- `A048586(A004273(n)-n)-A000007(n)` -/
def P1679934033148257180.Spec : Prop :=
  ∀ n, P1679934033148257180.a n = A048583 n

end A048583

/-! ## A048583.P267699009029760866

`A048586(A004273(n)-n)-A049283(2*n+1)`
-/

namespace A048583.P267699009029760866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048586 (A004273 n - (n : ℤ)).toNat - A049283 (2 * n + 1)

end

end A048583.P267699009029760866

namespace A048583

/-- `A048586(A004273(n)-n)-A049283(2*n+1)` -/
def P267699009029760866.Spec : Prop :=
  ∀ n, P267699009029760866.a n = A048583 n

end A048583

/-! ## A048583.P11291902846981689953

`A048586(A004273(n)-n)-A322585(2*n+1)`
-/

namespace A048583.P11291902846981689953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048586 (A004273 n - (n : ℤ)).toNat - A322585 (2 * n + 1)

end

end A048583.P11291902846981689953

namespace A048583

/-- `A048586(A004273(n)-n)-A322585(2*n+1)` -/
def P11291902846981689953.Spec : Prop :=
  ∀ n, P11291902846981689953.a n = A048583 n

end A048583

/-! ## A048583.P11023355133569286676

`A048586(A004273(n)-n)-A132952(A008578(n+2))`
-/

namespace A048583.P11023355133569286676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048586 (A004273 n - (n : ℤ)).toNat - A132952 (A008578 (n + 2)).toNat

end

end A048583.P11023355133569286676

namespace A048583

/-- `A048586(A004273(n)-n)-A132952(A008578(n+2))` -/
def P11023355133569286676.Spec : Prop :=
  ∀ n, P11023355133569286676.a n = A048583 n

end A048583

/-! ## A048583.P7319036084440258401

`ceil(A048586(n)/ratio[A048586(n)])`
-/

namespace A048583.P7319036084440258401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048586 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌉

end

end A048583.P7319036084440258401

namespace A048583

/-- `ceil(A048586(n)/ratio[A048586(n)])` -/
def P7319036084440258401.Spec : Prop :=
  ∀ n, P7319036084440258401.a n = A048583 n

end A048583

/-!
# A048584: Pisot sequence L(5,7).

The programs for A048584, the canonical program `A048584.P9091899586838581431` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048584 has offset 0).

The definition of A048584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048584.P7570803267023873072

`A157725(n+4)`
-/

namespace A048584.P7570803267023873072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 4)

end

end A048584.P7570803267023873072

namespace A048584

/-- `A157725(n+4)` -/
def P7570803267023873072.Spec : Prop :=
  ∀ n, P7570803267023873072.a n = A048584 n

end A048584

/-! ## A048584.P9091899586838581431

`2*a(n-1)-a(n-3)` with `a(0)=5, a(1)=7, a(2)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048584

/-- `2*a(n-1)-a(n-3)` -/
def P9091899586838581431.Spec : Prop :=
  ∀ n, P9091899586838581431.a n = A048584 n

theorem P9091899586838581431.correct : P9091899586838581431.Spec := by
  intro n
  simp only [A048584]

end A048584

/-! ## A048584.P4092583235940259107

`ceil(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=7`
-/

namespace A048584.P4092583235940259107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048584.P4092583235940259107

namespace A048584

/-- `ceil(a(n-1)²/a(n-2))` -/
def P4092583235940259107.Spec : Prop :=
  ∀ n, P4092583235940259107.a n = A048584 n

end A048584

/-! ## A048584.P6684662027354560018

`∑[ogf((-5+3x+4x^2)/(-1+x+x^2))]`
-/

namespace A048584.P6684662027354560018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, -4] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048584.P6684662027354560018

namespace A048584

/-- `∑[ogf((-5+3x+4x^2)/(-1+x+x^2))]` -/
def P6684662027354560018.Spec : Prop :=
  ∀ n, P6684662027354560018.a n = A048584 n

end A048584

/-! ## A048584.P11780391491828113672

`ogf((5-3x-4x^2)/(1-2x+x^3))`
-/

namespace A048584.P11780391491828113672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, -4] [1, -2, 0, 1] n

end

end A048584.P11780391491828113672

namespace A048584

/-- `ogf((5-3x-4x^2)/(1-2x+x^3))` -/
def P11780391491828113672.Spec : Prop :=
  ∀ n, P11780391491828113672.a n = A048584 n

end A048584

/-! ## A048584.P10987949588904798816

`floor(ϕ*a(n-1))-1` with `a(0)=5`
-/

namespace A048584.P10987949588904798816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ - 1

end

end A048584.P10987949588904798816

namespace A048584

/-- `floor(ϕ*a(n-1))-1` -/
def P10987949588904798816.Spec : Prop :=
  ∀ n, P10987949588904798816.a n = A048584 n

end A048584

/-! ## A048584.P16966148589388240815

`ceil(ϕ*(a(n-1)-1))` with `a(0)=5`
-/

namespace A048584.P16966148589388240815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) - 1 : ℝ)⌉

end

end A048584.P16966148589388240815

namespace A048584

/-- `ceil(ϕ*(a(n-1)-1))` -/
def P16966148589388240815.Spec : Prop :=
  ∀ n, P16966148589388240815.a n = A048584 n

end A048584

/-! ## A048584.P1285891239072568551

`round(ϕ*a(n-1))-1` with `a(0)=5`
-/

namespace A048584.P1285891239072568551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) - 1

end

end A048584.P1285891239072568551

namespace A048584

/-- `round(ϕ*a(n-1))-1` -/
def P1285891239072568551.Spec : Prop :=
  ∀ n, P1285891239072568551.a n = A048584 n

end A048584

/-! ## A048584.P7558211055898268465

`a(n-1)+a(n-2)-2` with `a(0)=5, a(1)=7`
-/

namespace A048584.P7558211055898268465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  a (n - 1) + (a (n - 2) - 2)

end

end A048584.P7558211055898268465

namespace A048584

/-- `a(n-1)+a(n-2)-2` -/
def P7558211055898268465.Spec : Prop :=
  ∀ n, P7558211055898268465.a n = A048584 n

end A048584

/-! ## A048584.P3167223554777021296

`a(n-1)-(2-a(n-2))` with `a(0)=5, a(1)=7`
-/

namespace A048584.P3167223554777021296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  a (n - 1) - (2 - a (n - 2))

end

end A048584.P3167223554777021296

namespace A048584

/-- `a(n-1)-(2-a(n-2))` -/
def P3167223554777021296.Spec : Prop :=
  ∀ n, P3167223554777021296.a n = A048584 n

end A048584

/-! ## A048584.P11267272599241930127

`A018910(n+1)`
-/

namespace A048584.P11267272599241930127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 (n + 1)

end

end A048584.P11267272599241930127

namespace A048584

/-- `A018910(n+1)` -/
def P11267272599241930127.Spec : Prop :=
  ∀ n, P11267272599241930127.a n = A048584 n

end A048584

/-! ## A048584.P6071654099920601843

`A020706(n)+1`
-/

namespace A048584.P6071654099920601843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n + 1

end

end A048584.P6071654099920601843

namespace A048584

/-- `A020706(n)+1` -/
def P6071654099920601843.Spec : Prop :=
  ∀ n, P6071654099920601843.a n = A048584 n

end A048584

/-! ## A048584.P14578055453420078442

`A020701(n)+2`
-/

namespace A048584.P14578055453420078442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + 2

end

end A048584.P14578055453420078442

namespace A048584

/-- `A020701(n)+2` -/
def P14578055453420078442.Spec : Prop :=
  ∀ n, P14578055453420078442.a n = A048584 n

end A048584

/-! ## A048584.P47378273993565384

`A048577(n+1)+1`
-/

namespace A048584.P47378273993565384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (n + 1) + 1

end

end A048584.P47378273993565384

namespace A048584

/-- `A048577(n+1)+1` -/
def P47378273993565384.Spec : Prop :=
  ∀ n, P47378273993565384.a n = A048584 n

end A048584

/-! ## A048584.P12191670701854988782

`A020695(n+1)+2`
-/

namespace A048584.P12191670701854988782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + 2

end

end A048584.P12191670701854988782

namespace A048584

/-- `A020695(n+1)+2` -/
def P12191670701854988782.Spec : Prop :=
  ∀ n, P12191670701854988782.a n = A048584 n

end A048584

/-! ## A048584.P9395321321759272565

`A226271(n+2)+1`
-/

namespace A048584.P9395321321759272565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226271 (n + 2) + 1

end

end A048584.P9395321321759272565

namespace A048584

/-- `A226271(n+2)+1` -/
def P9395321321759272565.Spec : Prop :=
  ∀ n, P9395321321759272565.a n = A048584 n

end A048584

/-! ## A048584.P10577422687523557105

`A071679(n+2)+2`
-/

namespace A048584.P10577422687523557105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 2) + 2

end

end A048584.P10577422687523557105

namespace A048584

/-- `A071679(n+2)+2` -/
def P10577422687523557105.Spec : Prop :=
  ∀ n, P10577422687523557105.a n = A048584 n

end A048584

/-! ## A048584.P974464933173677139

`A169622(n+2)-1`
-/

namespace A048584.P974464933173677139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169622 (n + 2) - 1

end

end A048584.P974464933173677139

namespace A048584

/-- `A169622(n+2)-1` -/
def P974464933173677139.Spec : Prop :=
  ∀ n, P974464933173677139.a n = A048584 n

end A048584

/-! ## A048584.P13791735810469517111

`A373566(n+2)+2`
-/

namespace A048584.P13791735810469517111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (n + 2) + 2

end

end A048584.P13791735810469517111

namespace A048584

/-- `A373566(n+2)+2` -/
def P13791735810469517111.Spec : Prop :=
  ∀ n, P13791735810469517111.a n = A048584 n

end A048584

/-! ## A048584.P11368875092462895595

`A001611(n+4)+1`
-/

namespace A048584.P11368875092462895595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 4) + 1

end

end A048584.P11368875092462895595

namespace A048584

/-- `A001611(n+4)+1` -/
def P11368875092462895595.Spec : Prop :=
  ∀ n, P11368875092462895595.a n = A048584 n

end A048584

/-!
# A048585: Pisot sequence L(6,7).

The programs for A048585, the canonical program `A048585.P3093131361615934223` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048585 has offset 0).

The definition of A048585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048585.P3093131361615934223

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=6, a(1)=7, a(2)=9, a(3)=12`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048585

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P3093131361615934223.Spec : Prop :=
  ∀ n, P3093131361615934223.a n = A048585 n

theorem P3093131361615934223.correct : P3093131361615934223.Spec := by
  intro n
  simp only [A048585]

end A048585

/-! ## A048585.P14677819544928688862

`ceil(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=7`
-/

namespace A048585.P14677819544928688862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048585.P14677819544928688862

namespace A048585

/-- `ceil(a(n-1)²/a(n-2))` -/
def P14677819544928688862.Spec : Prop :=
  ∀ n, P14677819544928688862.a n = A048585 n

end A048585

/-! ## A048585.P14599723869347645106

`∑[ogf((1+x^2)/(1-x-x^3))]+5`
-/

namespace A048585.P14599723869347645106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A048585.P14599723869347645106

namespace A048585

/-- `∑[ogf((1+x^2)/(1-x-x^3))]+5` -/
def P14599723869347645106.Spec : Prop :=
  ∀ n, P14599723869347645106.a n = A048585 n

end A048585

/-! ## A048585.P3085098556458425702

`a(n-1)+a(n-3)-3` with `a(0)=6, a(1)=7, a(2)=9`
-/

namespace A048585.P3085098556458425702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7, 9] fun n a =>
  a (n - 1) + (a (n - 3) - 3)

end

end A048585.P3085098556458425702

namespace A048585

/-- `a(n-1)+a(n-3)-3` -/
def P3085098556458425702.Spec : Prop :=
  ∀ n, P3085098556458425702.a n = A048585 n

end A048585

/-! ## A048585.P2133889469069570333

`a(n-1)-(3-a(n-3))` with `a(0)=6, a(1)=7, a(2)=9`
-/

namespace A048585.P2133889469069570333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7, 9] fun n a =>
  a (n - 1) - (3 - a (n - 3))

end

end A048585.P2133889469069570333

namespace A048585

/-- `a(n-1)-(3-a(n-3))` -/
def P2133889469069570333.Spec : Prop :=
  ∀ n, P2133889469069570333.a n = A048585 n

end A048585

/-! ## A048585.P14721065551263660303

`A048588(n)-1`
-/

namespace A048585.P14721065551263660303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 n - 1

end

end A048585.P14721065551263660303

namespace A048585

/-- `A048588(n)-1` -/
def P14721065551263660303.Spec : Prop :=
  ∀ n, P14721065551263660303.a n = A048585 n

end A048585

/-! ## A048585.P14677468273840748723

`∑[A068921(n)]+5`
-/

namespace A048585.P14677468273840748723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A048585.P14677468273840748723

namespace A048585

/-- `∑[A068921(n)]+5` -/
def P14677468273840748723.Spec : Prop :=
  ∀ n, P14677468273840748723.a n = A048585 n

end A048585

/-! ## A048585.P15125021722820873253

`A019527(n+3)+1`
-/

namespace A048585.P15125021722820873253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019527 (n + 3) + 1

end

end A048585.P15125021722820873253

namespace A048585

/-- `A019527(n+3)+1` -/
def P15125021722820873253.Spec : Prop :=
  ∀ n, P15125021722820873253.a n = A048585 n

end A048585

/-! ## A048585.P198975241212788661

`A077868(n+1)+4`
-/

namespace A048585.P198975241212788661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 1) + 4

end

end A048585.P198975241212788661

namespace A048585

/-- `A077868(n+1)+4` -/
def P198975241212788661.Spec : Prop :=
  ∀ n, P198975241212788661.a n = A048585 n

end A048585

/-! ## A048585.P17568318319785134590

`A068921(n+3)+3`
-/

namespace A048585.P17568318319785134590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 3) + 3

end

end A048585.P17568318319785134590

namespace A048585

/-- `A068921(n+3)+3` -/
def P17568318319785134590.Spec : Prop :=
  ∀ n, P17568318319785134590.a n = A048585 n

end A048585

/-! ## A048585.P16262377822321416192

`A000930(n+4)+3`
-/

namespace A048585.P16262377822321416192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 4) + 3

end

end A048585.P16262377822321416192

namespace A048585

/-- `A000930(n+4)+3` -/
def P16262377822321416192.Spec : Prop :=
  ∀ n, P16262377822321416192.a n = A048585 n

end A048585

/-! ## A048585.P9739297471608450047

`∑[∑[A078012(n+1)]+1]+5`
-/

namespace A048585.P9739297471608450047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A048585.P9739297471608450047

namespace A048585

/-- `∑[∑[A078012(n+1)]+1]+5` -/
def P9739297471608450047.Spec : Prop :=
  ∀ n, P9739297471608450047.a n = A048585 n

end A048585

/-! ## A048585.P11016127743603538035

`Δ[A020721(n)]+3`
-/

namespace A048585.P11016127743603538035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048585.P11016127743603538035

namespace A048585

/-- `Δ[A020721(n)]+3` -/
def P11016127743603538035.Spec : Prop :=
  ∀ n, P11016127743603538035.a n = A048585 n

end A048585

/-! ## A048585.P16695117648697446108

`Δ[A020749(n)]+3`
-/

namespace A048585.P16695117648697446108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048585.P16695117648697446108

namespace A048585

/-- `Δ[A020749(n)]+3` -/
def P16695117648697446108.Spec : Prop :=
  ∀ n, P16695117648697446108.a n = A048585 n

end A048585

/-! ## A048585.P5440471293077750893

`Δ[A048626(n)]+3`
-/

namespace A048585.P5440471293077750893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048585.P5440471293077750893

namespace A048585

/-- `Δ[A048626(n)]+3` -/
def P5440471293077750893.Spec : Prop :=
  ∀ n, P5440471293077750893.a n = A048585 n

end A048585

/-! ## A048585.P15015625413594501665

`Δ[A020711(n+1)]+3`
-/

namespace A048585.P15015625413594501665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048585.P15015625413594501665

namespace A048585

/-- `Δ[A020711(n+1)]+3` -/
def P15015625413594501665.Spec : Prop :=
  ∀ n, P15015625413594501665.a n = A048585 n

end A048585

/-! ## A048585.P16104507525931484370

`Δ[A020745(n+1)]+3`
-/

namespace A048585.P16104507525931484370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048585.P16104507525931484370

namespace A048585

/-- `Δ[A020745(n+1)]+3` -/
def P16104507525931484370.Spec : Prop :=
  ∀ n, P16104507525931484370.a n = A048585 n

end A048585

/-! ## A048585.P52579869163252022

`Δ[A048589(n+1)]+3`
-/

namespace A048585.P52579869163252022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048585.P52579869163252022

namespace A048585

/-- `Δ[A048589(n+1)]+3` -/
def P52579869163252022.Spec : Prop :=
  ∀ n, P52579869163252022.a n = A048585 n

end A048585

/-! ## A048585.P838552445247375178

`Δ[A048591(n+1)]+3`
-/

namespace A048585.P838552445247375178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048585.P838552445247375178

namespace A048585

/-- `Δ[A048591(n+1)]+3` -/
def P838552445247375178.Spec : Prop :=
  ∀ n, P838552445247375178.a n = A048585 n

end A048585

/-! ## A048585.P12653264341048099905

`Δ[A048625(n+1)]+3`
-/

namespace A048585.P12653264341048099905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048585.P12653264341048099905

namespace A048585

/-- `Δ[A048625(n+1)]+3` -/
def P12653264341048099905.Spec : Prop :=
  ∀ n, P12653264341048099905.a n = A048585 n

end A048585

/-!
# A048586: Pisot sequence L(6,8).

The programs for A048586, the canonical program `A048586.P7483846372208091650` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048586 has offset 0).

The definition of A048586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048586.P7483846372208091650

`ceil(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048586

/-- `ceil(a(n-1)²/a(n-2))` -/
def P7483846372208091650.Spec : Prop :=
  ∀ n, P7483846372208091650.a n = A048586 n

theorem P7483846372208091650.correct : P7483846372208091650.Spec := by
  intro n
  simp only [A048586]

end A048586

/-! ## A048586.P6138596178602497170

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=6, a(1)=8`
-/

namespace A048586.P6138596178602497170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 8] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A048586.P6138596178602497170

namespace A048586

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P6138596178602497170.Spec : Prop :=
  ∀ n, P6138596178602497170.a n = A048586 n

theorem P6138596178602497170.correct : P6138596178602497170.Spec := by
  intro n
  simp only [A048586, Nat.add_sub_cancel, A048586.P6138596178602497170.a, A048586.P7483846372208091650.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048586

/-! ## A048586.P16465693075061944807

`A048583(n+1)`
-/

namespace A048586.P16465693075061944807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048583 (n + 1)

end

end A048586.P16465693075061944807

namespace A048586

/-- `A048583(n+1)` -/
def P16465693075061944807.Spec : Prop :=
  ∀ n, P16465693075061944807.a n = A048586 n

end A048586

/-! ## A048586.P11112202106052954458

`record[A048583(abs(1-n))]`
-/

namespace A048586.P11112202106052954458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048583 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048586.P11112202106052954458

namespace A048586

/-- `record[A048583(abs(1-n))]` -/
def P11112202106052954458.Spec : Prop :=
  ∀ n, P11112202106052954458.a n = A048586 n

end A048586

/-! ## A048586.P13042065609393343114

`ratio[A048583(n)]*A048583(n)`
-/

namespace A048586.P13042065609393343114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048583 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A048583 n : ℚ)

end

end A048586.P13042065609393343114

namespace A048586

/-- `ratio[A048583(n)]*A048583(n)` -/
def P13042065609393343114.Spec : Prop :=
  ∀ n, P13042065609393343114.a n = (A048586 n : ℚ)

end A048586

/-!
# A048587: Pisot sequence L(6,10).

The programs for A048587, the canonical program `A048587.P18379089883551573958` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048587 has offset 0).

The definition of A048587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048587.P18379089883551573958

`3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=6, a(1)=10, a(2)=17, a(3)=29`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048587

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P18379089883551573958.Spec : Prop :=
  ∀ n, P18379089883551573958.a n = A048587 n

theorem P18379089883551573958.correct : P18379089883551573958.Spec := by
  intro n
  simp only [A048587]

end A048587

/-! ## A048587.P3289667933362543931

`ceil(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=10`
-/

namespace A048587.P3289667933362543931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048587.P3289667933362543931

namespace A048587

/-- `ceil(a(n-1)²/a(n-2))` -/
def P3289667933362543931.Spec : Prop :=
  ∀ n, P3289667933362543931.a n = A048587 n

end A048587

/-! ## A048587.P17041118696757266639

`record[a(n-2)-a(n-3)]+1` with `a(0)=5, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A048587.P17041118696757266639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 0, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A048587.P17041118696757266639

namespace A048587

/-- `record[a(n-2)-a(n-3)]+1` -/
def P17041118696757266639.Spec : Prop :=
  ∀ n, P17041118696757266639.a n = A048587 n

end A048587

/-! ## A048587.P4410800400529516582

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=6, a(1)=10`
-/

namespace A048587.P4410800400529516582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ + 1

end

end A048587.P4410800400529516582

namespace A048587

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P4410800400529516582.Spec : Prop :=
  ∀ n, P4410800400529516582.a n = A048587 n

end A048587

/-! ## A048587.P6017176403766191523

`A020713(n)+1`
-/

namespace A048587.P6017176403766191523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020713 n + 1

end

end A048587.P6017176403766191523

namespace A048587

/-- `A020713(n)+1` -/
def P6017176403766191523.Spec : Prop :=
  ∀ n, P6017176403766191523.a n = A048587 n

end A048587

/-! ## A048587.P299313256299009028

`A018908(n+2)`
-/

namespace A048587.P299313256299009028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018908 (n + 2)

end

end A048587.P299313256299009028

namespace A048587

/-- `A018908(n+2)` -/
def P299313256299009028.Spec : Prop :=
  ∀ n, P299313256299009028.a n = A048587 n

end A048587

/-! ## A048587.P18333357216131983395

`A289692(n+4)+2`
-/

namespace A048587.P18333357216131983395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289692 (n + 4) + 2

end

end A048587.P18333357216131983395

namespace A048587

/-- `A289692(n+4)+2` -/
def P18333357216131983395.Spec : Prop :=
  ∀ n, P18333357216131983395.a n = A048587 n

end A048587

/-! ## A048587.P13710933996540152220

`A167385(2*n)+5`
-/

namespace A048587.P13710933996540152220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 (2 * n) + 5

end

end A048587.P13710933996540152220

namespace A048587

/-- `A167385(2*n)+5` -/
def P13710933996540152220.Spec : Prop :=
  ∀ n, P13710933996540152220.a n = A048587 n

end A048587

/-! ## A048587.P11103001029884586638

`A052954(2*n+9)`
-/

namespace A048587.P11103001029884586638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (2 * n + 9)

end

end A048587.P11103001029884586638

namespace A048587

/-- `A052954(2*n+9)` -/
def P11103001029884586638.Spec : Prop :=
  ∀ n, P11103001029884586638.a n = A048587 n

end A048587

/-! ## A048587.P18427557958473960378

`record[A018908(abs(2-n))]`
-/

namespace A048587.P18427557958473960378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018908 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048587.P18427557958473960378

namespace A048587

/-- `record[A018908(abs(2-n))]` -/
def P18427557958473960378.Spec : Prop :=
  ∀ n, P18427557958473960378.a n = A048587 n

end A048587

/-! ## A048587.P15833722536072195033

`∑[A005251(n+4)]+4`
-/

namespace A048587.P15833722536072195033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A048587.P15833722536072195033

namespace A048587

/-- `∑[A005251(n+4)]+4` -/
def P15833722536072195033.Spec : Prop :=
  ∀ n, P15833722536072195033.a n = A048587 n

end A048587

/-! ## A048587.P11771475830907999338

`A096231(2*(n+1))+1`
-/

namespace A048587.P11771475830907999338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (2 * (n + 1)) + 1

end

end A048587.P11771475830907999338

namespace A048587

/-- `A096231(2*(n+1))+1` -/
def P11771475830907999338.Spec : Prop :=
  ∀ n, P11771475830907999338.a n = A048587 n

end A048587

/-! ## A048587.P7132475569646945069

`A054405(2*(n+1))+3`
-/

namespace A048587.P7132475569646945069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (2 * (n + 1)) + 3

end

end A048587.P7132475569646945069

namespace A048587

/-- `A054405(2*(n+1))+3` -/
def P7132475569646945069.Spec : Prop :=
  ∀ n, P7132475569646945069.a n = A048587 n

end A048587

/-! ## A048587.P15192602852531106985

`A164315(2*n+1)+4`
-/

namespace A048587.P15192602852531106985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (2 * n + 1) + 4

end

end A048587.P15192602852531106985

namespace A048587

/-- `A164315(2*n+1)+4` -/
def P15192602852531106985.Spec : Prop :=
  ∀ n, P15192602852531106985.a n = A048587 n

end A048587

/-! ## A048587.P2222138652260470820

`A164001(2*n+5)+1`
-/

namespace A048587.P2222138652260470820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * n + 5) + 1

end

end A048587.P2222138652260470820

namespace A048587

/-- `A164001(2*n+5)+1` -/
def P2222138652260470820.Spec : Prop :=
  ∀ n, P2222138652260470820.a n = A048587 n

end A048587

/-! ## A048587.P8858383399961253519

`A023434(2*n+5)+2`
-/

namespace A048587.P8858383399961253519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (2 * n + 5) + 2

end

end A048587.P8858383399961253519

namespace A048587

/-- `A023434(2*n+5)+2` -/
def P8858383399961253519.Spec : Prop :=
  ∀ n, P8858383399961253519.a n = A048587 n

end A048587

/-! ## A048587.P4726243119869722840

`A228361(2*n+7)+1`
-/

namespace A048587.P4726243119869722840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * n + 7) + 1

end

end A048587.P4726243119869722840

namespace A048587

/-- `A228361(2*n+7)+1` -/
def P4726243119869722840.Spec : Prop :=
  ∀ n, P4726243119869722840.a n = A048587 n

end A048587

/-! ## A048587.P2284049191626625927

`a(n-1)+A077855(n)+1` with `a(0)=6`
-/

namespace A048587.P2284049191626625927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (A077855 n + 1)

end

end A048587.P2284049191626625927

namespace A048587

/-- `a(n-1)+A077855(n)+1` -/
def P2284049191626625927.Spec : Prop :=
  ∀ n, P2284049191626625927.a n = A048587 n

end A048587

/-! ## A048587.P14887055100164400839

`A134816(2*n+5)+a(n-1)` with `a(0)=6`
-/

namespace A048587.P14887055100164400839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A134816 (2 * n + 5) + a (n - 1)

end

end A048587.P14887055100164400839

namespace A048587

/-- `A134816(2*n+5)+a(n-1)` -/
def P14887055100164400839.Spec : Prop :=
  ∀ n, P14887055100164400839.a n = A048587 n

end A048587

/-! ## A048587.P17600937985912545532

`A134816(A020742(n)+1)+1`
-/

namespace A048587.P17600937985912545532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A020742 n + 1).toNat + 1

end

end A048587.P17600937985912545532

namespace A048587

/-- `A134816(A020742(n)+1)+1` -/
def P17600937985912545532.Spec : Prop :=
  ∀ n, P17600937985912545532.a n = A048587 n

end A048587

/-!
# A048588: Pisot sequence L(7,8).

The programs for A048588, the canonical program `A048588.P373400505800299805` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048588 has offset 0).

The definition of A048588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048588.P373400505800299805

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=7, a(1)=8, a(2)=10, a(3)=13`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048588

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P373400505800299805.Spec : Prop :=
  ∀ n, P373400505800299805.a n = A048588 n

theorem P373400505800299805.correct : P373400505800299805.Spec := by
  intro n
  simp only [A048588]

end A048588

/-! ## A048588.P18273465758842850471

`ceil(a(n-1)²/a(n-2))` with `a(0)=7, a(1)=8`
-/

namespace A048588.P18273465758842850471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048588.P18273465758842850471

namespace A048588

/-- `ceil(a(n-1)²/a(n-2))` -/
def P18273465758842850471.Spec : Prop :=
  ∀ n, P18273465758842850471.a n = A048588 n

end A048588

/-! ## A048588.P18364964209649638833

`∑[ogf((1+x^2)/(1-x-x^3))]+6`
-/

namespace A048588.P18364964209649638833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A048588.P18364964209649638833

namespace A048588

/-- `∑[ogf((1+x^2)/(1-x-x^3))]+6` -/
def P18364964209649638833.Spec : Prop :=
  ∀ n, P18364964209649638833.a n = A048588 n

end A048588

/-! ## A048588.P16516714547946211437

`a(n-1)+a(n-3)-4` with `a(0)=7, a(1)=8, a(2)=10`
-/

namespace A048588.P16516714547946211437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8, 10] fun n a =>
  a (n - 1) + (a (n - 3) - 4)

end

end A048588.P16516714547946211437

namespace A048588

/-- `a(n-1)+a(n-3)-4` -/
def P16516714547946211437.Spec : Prop :=
  ∀ n, P16516714547946211437.a n = A048588 n

end A048588

/-! ## A048588.P2026005729127236302

`a(n-1)-(4-a(n-3))` with `a(0)=7, a(1)=8, a(2)=10`
-/

namespace A048588.P2026005729127236302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8, 10] fun n a =>
  a (n - 1) - (4 - a (n - 3))

end

end A048588.P2026005729127236302

namespace A048588

/-- `a(n-1)-(4-a(n-3))` -/
def P2026005729127236302.Spec : Prop :=
  ∀ n, P2026005729127236302.a n = A048588 n

end A048588

/-! ## A048588.P2285092195209294474

`A048585(n)+1`
-/

namespace A048588.P2285092195209294474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 n + 1

end

end A048588.P2285092195209294474

namespace A048588

/-- `A048585(n)+1` -/
def P2285092195209294474.Spec : Prop :=
  ∀ n, P2285092195209294474.a n = A048588 n

end A048588

/-! ## A048588.P805564756725663256

`∑[A068921(n)]+6`
-/

namespace A048588.P805564756725663256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A048588.P805564756725663256

namespace A048588

/-- `∑[A068921(n)]+6` -/
def P805564756725663256.Spec : Prop :=
  ∀ n, P805564756725663256.a n = A048588 n

end A048588

/-! ## A048588.P15703913086083650401

`A019527(n+3)+2`
-/

namespace A048588.P15703913086083650401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019527 (n + 3) + 2

end

end A048588.P15703913086083650401

namespace A048588

/-- `A019527(n+3)+2` -/
def P15703913086083650401.Spec : Prop :=
  ∀ n, P15703913086083650401.a n = A048588 n

end A048588

/-! ## A048588.P15855890012821356561

`A077868(n+1)+5`
-/

namespace A048588.P15855890012821356561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 1) + 5

end

end A048588.P15855890012821356561

namespace A048588

/-- `A077868(n+1)+5` -/
def P15855890012821356561.Spec : Prop :=
  ∀ n, P15855890012821356561.a n = A048588 n

end A048588

/-! ## A048588.P17754741128185961768

`A068921(n+3)+4`
-/

namespace A048588.P17754741128185961768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 3) + 4

end

end A048588.P17754741128185961768

namespace A048588

/-- `A068921(n+3)+4` -/
def P17754741128185961768.Spec : Prop :=
  ∀ n, P17754741128185961768.a n = A048588 n

end A048588

/-! ## A048588.P6524616477156354017

`A000930(n+4)+4`
-/

namespace A048588.P6524616477156354017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 4) + 4

end

end A048588.P6524616477156354017

namespace A048588

/-- `A000930(n+4)+4` -/
def P6524616477156354017.Spec : Prop :=
  ∀ n, P6524616477156354017.a n = A048588 n

end A048588

/-! ## A048588.P15595761884433287533

`A170933(n)+A078012(n+1)`
-/

namespace A048588.P15595761884433287533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170933 n + A078012 (n + 1)

end

end A048588.P15595761884433287533

namespace A048588

/-- `A170933(n)+A078012(n+1)` -/
def P15595761884433287533.Spec : Prop :=
  ∀ n, P15595761884433287533.a n = A048588 n

end A048588

/-! ## A048588.P11111722098296855098

`2*A170934(n)-A078012(n)`
-/

namespace A048588.P11111722098296855098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170934 n - A078012 n

end

end A048588.P11111722098296855098

namespace A048588

/-- `2*A170934(n)-A078012(n)` -/
def P11111722098296855098.Spec : Prop :=
  ∀ n, P11111722098296855098.a n = A048588 n

end A048588

/-! ## A048588.P13316598379549542837

`A176895(A006257(n))+A020711(abs(1-n))-1`
-/

namespace A048588.P13316598379549542837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A006257 n).toNat + (A020711 |1 - (n : ℤ)|.toNat - 1)

end

end A048588.P13316598379549542837

namespace A048588

/-- `A176895(A006257(n))+A020711(abs(1-n))-1` -/
def P13316598379549542837.Spec : Prop :=
  ∀ n, P13316598379549542837.a n = A048588 n

end A048588

/-! ## A048588.P5767387865756556933

`ceil(A048591(n)/ratio[A048591(n)])`
-/

namespace A048588.P5767387865756556933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048591 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌉

end

end A048588.P5767387865756556933

namespace A048588

/-- `ceil(A048591(n)/ratio[A048591(n)])` -/
def P5767387865756556933.Spec : Prop :=
  ∀ n, P5767387865756556933.a n = A048588 n

end A048588

/-! ## A048588.P11991502206033294521

`Δ[A020721(n)]+4`
-/

namespace A048588.P11991502206033294521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A048588.P11991502206033294521

namespace A048588

/-- `Δ[A020721(n)]+4` -/
def P11991502206033294521.Spec : Prop :=
  ∀ n, P11991502206033294521.a n = A048588 n

end A048588

/-! ## A048588.P12867715274537486541

`Δ[A020749(n)]+4`
-/

namespace A048588.P12867715274537486541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A048588.P12867715274537486541

namespace A048588

/-- `Δ[A020749(n)]+4` -/
def P12867715274537486541.Spec : Prop :=
  ∀ n, P12867715274537486541.a n = A048588 n

end A048588

/-! ## A048588.P15271793341292903640

`Δ[A048626(n)]+4`
-/

namespace A048588.P15271793341292903640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A048588.P15271793341292903640

namespace A048588

/-- `Δ[A048626(n)]+4` -/
def P15271793341292903640.Spec : Prop :=
  ∀ n, P15271793341292903640.a n = A048588 n

end A048588

/-! ## A048588.P13163288208258530005

`Δ[A020711(n+1)]+4`
-/

namespace A048588.P13163288208258530005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A048588.P13163288208258530005

namespace A048588

/-- `Δ[A020711(n+1)]+4` -/
def P13163288208258530005.Spec : Prop :=
  ∀ n, P13163288208258530005.a n = A048588 n

end A048588

/-! ## A048588.P8014452971714581033

`Δ[A020745(n+1)]+4`
-/

namespace A048588.P8014452971714581033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A048588.P8014452971714581033

namespace A048588

/-- `Δ[A020745(n+1)]+4` -/
def P8014452971714581033.Spec : Prop :=
  ∀ n, P8014452971714581033.a n = A048588 n

end A048588

/-!
# A048589: Pisot sequence L(7,9).

The programs for A048589, the canonical program `A048589.P13441729831796858036` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048589 has offset 0).

The definition of A048589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048589.P13441729831796858036

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=7, a(1)=9, a(2)=12, a(3)=16`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048589

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P13441729831796858036.Spec : Prop :=
  ∀ n, P13441729831796858036.a n = A048589 n

theorem P13441729831796858036.correct : P13441729831796858036.Spec := by
  intro n
  simp only [A048589]

end A048589

/-! ## A048589.P5118181842391168093

`ceil(a(n-1)²/a(n-2))` with `a(0)=7, a(1)=9`
-/

namespace A048589.P5118181842391168093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 9] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048589.P5118181842391168093

namespace A048589

/-- `ceil(a(n-1)²/a(n-2))` -/
def P5118181842391168093.Spec : Prop :=
  ∀ n, P5118181842391168093.a n = A048589 n

end A048589

/-! ## A048589.P7119249460836816137

`∑[a(n-1)+a(n-3)]` with `a(0)=7, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A048589.P7119249460836816137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 2, 3, 4] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048589.P7119249460836816137

namespace A048589

/-- `∑[a(n-1)+a(n-3)]` -/
def P7119249460836816137.Spec : Prop :=
  ∀ n, (P7119249460836816137.a n : ℤ) = A048589 n

end A048589

/-! ## A048589.P11955661085334503697

`A048585(n+1)`
-/

namespace A048589.P11955661085334503697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (n + 1)

end

end A048589.P11955661085334503697

namespace A048589

/-- `A048585(n+1)` -/
def P11955661085334503697.Spec : Prop :=
  ∀ n, P11955661085334503697.a n = A048589 n

end A048589

/-! ## A048589.P15963882779890177610

`A020711(n)+2`
-/

namespace A048589.P15963882779890177610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 n + 2

end

end A048589.P15963882779890177610

namespace A048589

/-- `A020711(n)+2` -/
def P15963882779890177610.Spec : Prop :=
  ∀ n, P15963882779890177610.a n = A048589 n

end A048589

/-! ## A048589.P15848257416047115170

`A048591(n)-1`
-/

namespace A048589.P15848257416047115170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 n - 1

end

end A048589.P15848257416047115170

namespace A048589

/-- `A048591(n)-1` -/
def P15848257416047115170.Spec : Prop :=
  ∀ n, P15848257416047115170.a n = A048589 n

end A048589

/-! ## A048589.P12907888103020307015

`A048625(n)+3`
-/

namespace A048589.P12907888103020307015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 n + 3

end

end A048589.P12907888103020307015

namespace A048589

/-- `A048625(n)+3` -/
def P12907888103020307015.Spec : Prop :=
  ∀ n, P12907888103020307015.a n = A048589 n

end A048589

/-! ## A048589.P11526572745338495707

`A020745(n)+4`
-/

namespace A048589.P11526572745338495707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 n + 4

end

end A048589.P11526572745338495707

namespace A048589

/-- `A020745(n)+4` -/
def P11526572745338495707.Spec : Prop :=
  ∀ n, P11526572745338495707.a n = A048589 n

end A048589

/-! ## A048589.P5444860230814498412

`A048588(n+1)-1`
-/

namespace A048589.P5444860230814498412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 1) - 1

end

end A048589.P5444860230814498412

namespace A048589

/-- `A048588(n+1)-1` -/
def P5444860230814498412.Spec : Prop :=
  ∀ n, P5444860230814498412.a n = A048589 n

end A048589

/-! ## A048589.P7088295869672060944

`A077868(n+2)+4`
-/

namespace A048589.P7088295869672060944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 2) + 4

end

end A048589.P7088295869672060944

namespace A048589

/-- `A077868(n+2)+4` -/
def P7088295869672060944.Spec : Prop :=
  ∀ n, P7088295869672060944.a n = A048589 n

end A048589

/-! ## A048589.P10501660788392128957

`A068921(n+4)+3`
-/

namespace A048589.P10501660788392128957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 4) + 3

end

end A048589.P10501660788392128957

namespace A048589

/-- `A068921(n+4)+3` -/
def P10501660788392128957.Spec : Prop :=
  ∀ n, P10501660788392128957.a n = A048589 n

end A048589

/-! ## A048589.P3417353943925889915

`A000930(n+5)+3`
-/

namespace A048589.P3417353943925889915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 5) + 3

end

end A048589.P3417353943925889915

namespace A048589

/-- `A000930(n+5)+3` -/
def P3417353943925889915.Spec : Prop :=
  ∀ n, P3417353943925889915.a n = A048589 n

end A048589

/-! ## A048589.P4776807163035579691

`record[A048585(abs(1-n))]`
-/

namespace A048589.P4776807163035579691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048589.P4776807163035579691

namespace A048589

/-- `record[A048585(abs(1-n))]` -/
def P4776807163035579691.Spec : Prop :=
  ∀ n, P4776807163035579691.a n = A048589 n

end A048589

/-! ## A048589.P5729492670068419195

`A226916(comp[2*n]+16)+3`
-/

namespace A048589.P5729492670068419195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 16) + 3

end

end A048589.P5729492670068419195

namespace A048589

/-- `A226916(comp[2*n]+16)+3` -/
def P5729492670068419195.Spec : Prop :=
  ∀ n, P5729492670068419195.a n = A048589 n

end A048589

/-! ## A048589.P80416177271176026

`A164316(n)+A170933(n)-1`
-/

namespace A048589.P80416177271176026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164316 n + (A170933 n - 1)

end

end A048589.P80416177271176026

namespace A048589

/-- `A164316(n)+A170933(n)-1` -/
def P80416177271176026.Spec : Prop :=
  ∀ n, P80416177271176026.a n = A048589 n

end A048589

/-! ## A048589.P17411757809286114575

`2*A020711(n)-A020745(n)`
-/

namespace A048589.P17411757809286114575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020711 n - A020745 n

end

end A048589.P17411757809286114575

namespace A048589

/-- `2*A020711(n)-A020745(n)` -/
def P17411757809286114575.Spec : Prop :=
  ∀ n, P17411757809286114575.a n = A048589 n

end A048589

/-! ## A048589.P12369973812683704774

`Δ[∑[A048588(n)]-n]`
-/

namespace A048589.P12369973812683704774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048589.P12369973812683704774

namespace A048589

/-- `Δ[∑[A048588(n)]-n]` -/
def P12369973812683704774.Spec : Prop :=
  ∀ n, P12369973812683704774.a n = A048589 n

end A048589

/-! ## A048589.P13157667203647815043

`Δ[A020721(n+1)]+3`
-/

namespace A048589.P13157667203647815043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048589.P13157667203647815043

namespace A048589

/-- `Δ[A020721(n+1)]+3` -/
def P13157667203647815043.Spec : Prop :=
  ∀ n, P13157667203647815043.a n = A048589 n

end A048589

/-! ## A048589.P6054253021156085458

`Δ[A020749(n+1)]+3`
-/

namespace A048589.P6054253021156085458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048589.P6054253021156085458

namespace A048589

/-- `Δ[A020749(n+1)]+3` -/
def P6054253021156085458.Spec : Prop :=
  ∀ n, P6054253021156085458.a n = A048589 n

end A048589

/-! ## A048589.P6293408947452952541

`Δ[A048626(n+1)]+3`
-/

namespace A048589.P6293408947452952541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A048589.P6293408947452952541

namespace A048589

/-- `Δ[A048626(n+1)]+3` -/
def P6293408947452952541.Spec : Prop :=
  ∀ n, P6293408947452952541.a n = A048589 n

end A048589

/-!
# A048590: Pisot sequence L(8,9).

The programs for A048590, the canonical program `A048590.P14421473332658495931` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048590 has offset 0).

The definition of A048590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048590.P14421473332658495931

`2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` with `a(0)=8, a(1)=9, a(2)=11, a(3)=14, a(4)=18, a(5)=24`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048590

/-- `2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` -/
def P14421473332658495931.Spec : Prop :=
  ∀ n, P14421473332658495931.a n = A048590 n

theorem P14421473332658495931.correct : P14421473332658495931.Spec := by
  intro n
  simp only [A048590]

end A048590

/-! ## A048590.P8237248526088960895

`ceil(a(n-1)²/a(n-2))` with `a(0)=8, a(1)=9`
-/

namespace A048590.P8237248526088960895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 9] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048590.P8237248526088960895

namespace A048590

/-- `ceil(a(n-1)²/a(n-2))` -/
def P8237248526088960895.Spec : Prop :=
  ∀ n, P8237248526088960895.a n = A048590 n

end A048590

/-! ## A048590.P11967565757355431476

`A048592(n)-1`
-/

namespace A048590.P11967565757355431476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048592 n - 1

end

end A048590.P11967565757355431476

namespace A048590

/-- `A048592(n)-1` -/
def P11967565757355431476.Spec : Prop :=
  ∀ n, P11967565757355431476.a n = A048590 n

end A048590

/-! ## A048590.P8419025054890332115

`∑[record[A226517(n)]]+8`
-/

namespace A048590.P8419025054890332115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A048590.P8419025054890332115

namespace A048590

/-- `∑[record[A226517(n)]]+8` -/
def P8419025054890332115.Spec : Prop :=
  ∀ n, P8419025054890332115.a n = A048590 n

end A048590

/-! ## A048590.P13716094814815070739

`A057428(n+1)+A048592(n)`
-/

namespace A048590.P13716094814815070739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A048592 n

end

end A048590.P13716094814815070739

namespace A048590

/-- `A057428(n+1)+A048592(n)` -/
def P13716094814815070739.Spec : Prop :=
  ∀ n, P13716094814815070739.a n = A048590 n

end A048590

/-! ## A048590.P18232292518471131855

`abs(A048592(n)+A008683(A007918(n)))`
-/

namespace A048590.P18232292518471131855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048592 n + A008683 (A007918 n).toNat|

end

end A048590.P18232292518471131855

namespace A048590

/-- `abs(A048592(n)+A008683(A007918(n)))` -/
def P18232292518471131855.Spec : Prop :=
  ∀ n, P18232292518471131855.a n = A048590 n

end A048590

/-! ## A048590.P11628922633843558261

`xor(-A048592(n), A008683(A002476(n+1)))`
-/

namespace A048590.P11628922633843558261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A048592 n) (A008683 (A002476 (n + 1)).toNat)

end

end A048590.P11628922633843558261

namespace A048590

/-- `xor(-A048592(n), A008683(A002476(n+1)))` -/
def P11628922633843558261.Spec : Prop :=
  ∀ n, P11628922633843558261.a n = A048590 n

end A048590

/-! ## A048590.P949193749216515693

`A048607(A001511(2*n+1))+A048592(n)`
-/

namespace A048590.P949193749216515693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048607 (A001511 (2 * n + 1)).toNat + A048592 n

end

end A048590.P949193749216515693

namespace A048590

/-- `A048607(A001511(2*n+1))+A048592(n)` -/
def P949193749216515693.Spec : Prop :=
  ∀ n, P949193749216515693.a n = A048590 n

end A048590

/-! ## A048590.P2604633577341096639

`A257075(A172057(n+1))+A048592(n)`
-/

namespace A048590.P2604633577341096639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A172057 (n + 1)).toNat + A048592 n

end

end A048590.P2604633577341096639

namespace A048590

/-- `A257075(A172057(n+1))+A048592(n)` -/
def P2604633577341096639.Spec : Prop :=
  ∀ n, P2604633577341096639.a n = A048590 n

end A048590

/-! ## A048590.P17130103368305419331

`A224820(A000217(n+9)-9-A004273(n))`
-/

namespace A048590.P17130103368305419331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224820 (A000217 (n + 9) - 9 - A004273 n).toNat

end

end A048590.P17130103368305419331

namespace A048590

/-- `A224820(A000217(n+9)-9-A004273(n))` -/
def P17130103368305419331.Spec : Prop :=
  ∀ n, P17130103368305419331.a n = A048590 n

end A048590

/-!
# A048591: Pisot sequence L(8,10).

The programs for A048591, the canonical program `A048591.P8521668911290940379` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048591 has offset 0).

The definition of A048591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048591.P8521668911290940379

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=8, a(1)=10, a(2)=13, a(3)=17`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048591

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P8521668911290940379.Spec : Prop :=
  ∀ n, P8521668911290940379.a n = A048591 n

theorem P8521668911290940379.correct : P8521668911290940379.Spec := by
  intro n
  simp only [A048591]

end A048591

/-! ## A048591.P10570468423174134784

`ceil(a(n-1)²/a(n-2))` with `a(0)=8, a(1)=10`
-/

namespace A048591.P10570468423174134784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048591.P10570468423174134784

namespace A048591

/-- `ceil(a(n-1)²/a(n-2))` -/
def P10570468423174134784.Spec : Prop :=
  ∀ n, P10570468423174134784.a n = A048591 n

end A048591

/-! ## A048591.P4339367614867153650

`∑[a(n-1)+a(n-3)]` with `a(0)=8, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A048591.P4339367614867153650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 2, 3, 4] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048591.P4339367614867153650

namespace A048591

/-- `∑[a(n-1)+a(n-3)]` -/
def P4339367614867153650.Spec : Prop :=
  ∀ n, (P4339367614867153650.a n : ℤ) = A048591 n

end A048591

/-! ## A048591.P2743877757645734284

`A048588(n+1)`
-/

namespace A048591.P2743877757645734284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 1)

end

end A048591.P2743877757645734284

namespace A048591

/-- `A048588(n+1)` -/
def P2743877757645734284.Spec : Prop :=
  ∀ n, P2743877757645734284.a n = A048591 n

end A048591

/-! ## A048591.P6964039677931350895

`A048589(n)+1`
-/

namespace A048591.P6964039677931350895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 n + 1

end

end A048591.P6964039677931350895

namespace A048591

/-- `A048589(n)+1` -/
def P6964039677931350895.Spec : Prop :=
  ∀ n, P6964039677931350895.a n = A048591 n

end A048591

/-! ## A048591.P2690226858555118489

`A020711(n)+3`
-/

namespace A048591.P2690226858555118489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 n + 3

end

end A048591.P2690226858555118489

namespace A048591

/-- `A020711(n)+3` -/
def P2690226858555118489.Spec : Prop :=
  ∀ n, P2690226858555118489.a n = A048591 n

end A048591

/-! ## A048591.P6606440935304230869

`A048625(n)+4`
-/

namespace A048591.P6606440935304230869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 n + 4

end

end A048591.P6606440935304230869

namespace A048591

/-- `A048625(n)+4` -/
def P6606440935304230869.Spec : Prop :=
  ∀ n, P6606440935304230869.a n = A048591 n

end A048591

/-! ## A048591.P17810918920411157

`A020745(n)+5`
-/

namespace A048591.P17810918920411157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 n + 5

end

end A048591.P17810918920411157

namespace A048591

/-- `A020745(n)+5` -/
def P17810918920411157.Spec : Prop :=
  ∀ n, P17810918920411157.a n = A048591 n

end A048591

/-! ## A048591.P11567443173815475022

`A048585(n+1)+1`
-/

namespace A048591.P11567443173815475022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (n + 1) + 1

end

end A048591.P11567443173815475022

namespace A048591

/-- `A048585(n+1)+1` -/
def P11567443173815475022.Spec : Prop :=
  ∀ n, P11567443173815475022.a n = A048591 n

end A048591

/-! ## A048591.P4466343554836996327

`A077868(n+2)+5`
-/

namespace A048591.P4466343554836996327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 2) + 5

end

end A048591.P4466343554836996327

namespace A048591

/-- `A077868(n+2)+5` -/
def P4466343554836996327.Spec : Prop :=
  ∀ n, P4466343554836996327.a n = A048591 n

end A048591

/-! ## A048591.P13533336621422551857

`A068921(n+4)+4`
-/

namespace A048591.P13533336621422551857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 4) + 4

end

end A048591.P13533336621422551857

namespace A048591

/-- `A068921(n+4)+4` -/
def P13533336621422551857.Spec : Prop :=
  ∀ n, P13533336621422551857.a n = A048591 n

end A048591

/-! ## A048591.P3719197562921279085

`A000930(n+5)+4`
-/

namespace A048591.P3719197562921279085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 5) + 4

end

end A048591.P3719197562921279085

namespace A048591

/-- `A000930(n+5)+4` -/
def P3719197562921279085.Spec : Prop :=
  ∀ n, P3719197562921279085.a n = A048591 n

end A048591

/-! ## A048591.P11964632866487321314

`record[A048588(abs(1-n))]`
-/

namespace A048591.P11964632866487321314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048591.P11964632866487321314

namespace A048591

/-- `record[A048588(abs(1-n))]` -/
def P11964632866487321314.Spec : Prop :=
  ∀ n, P11964632866487321314.a n = A048591 n

end A048591

/-! ## A048591.P3657836931937536473

`A226916(comp[2*n]+16)+4`
-/

namespace A048591.P3657836931937536473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 16) + 4

end

end A048591.P3657836931937536473

namespace A048591

/-- `A226916(comp[2*n]+16)+4` -/
def P3657836931937536473.Spec : Prop :=
  ∀ n, P3657836931937536473.a n = A048591 n

end A048591

/-! ## A048591.P6481485193453853921

`A170933(n)+A164316(n)`
-/

namespace A048591.P6481485193453853921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170933 n + A164316 n

end

end A048591.P6481485193453853921

namespace A048591

/-- `A170933(n)+A164316(n)` -/
def P6481485193453853921.Spec : Prop :=
  ∀ n, P6481485193453853921.a n = A048591 n

end A048591

/-! ## A048591.P16386377650587707234

`ratio[A048588(n)]*A048588(n)`
-/

namespace A048591.P16386377650587707234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A048588 n : ℚ)

end

end A048591.P16386377650587707234

namespace A048591

/-- `ratio[A048588(n)]*A048588(n)` -/
def P16386377650587707234.Spec : Prop :=
  ∀ n, P16386377650587707234.a n = (A048591 n : ℚ)

end A048591

/-! ## A048591.P11954154485732379081

`A170933(n+1)+A078012(n+2)`
-/

namespace A048591.P11954154485732379081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170933 (n + 1) + A078012 (n + 2)

end

end A048591.P11954154485732379081

namespace A048591

/-- `A170933(n+1)+A078012(n+2)` -/
def P11954154485732379081.Spec : Prop :=
  ∀ n, P11954154485732379081.a n = A048591 n

end A048591

/-! ## A048591.P13269748586081884317

`A170934(n+1)+A170934(n+1)-A078012(n+1)`
-/

namespace A048591.P13269748586081884317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170934 (n + 1) + (A170934 (n + 1) - A078012 (n + 1))

end

end A048591.P13269748586081884317

namespace A048591

/-- `A170934(n+1)+A170934(n+1)-A078012(n+1)` -/
def P13269748586081884317.Spec : Prop :=
  ∀ n, P13269748586081884317.a n = A048591 n

end A048591

/-! ## A048591.P2450792711950421227

`Δ[A020721(n+1)]+4`
-/

namespace A048591.P2450792711950421227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A048591.P2450792711950421227

namespace A048591

/-- `Δ[A020721(n+1)]+4` -/
def P2450792711950421227.Spec : Prop :=
  ∀ n, P2450792711950421227.a n = A048591 n

end A048591

/-! ## A048591.P5444402102398057796

`Δ[A020749(n+1)]+4`
-/

namespace A048591.P5444402102398057796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A048591.P5444402102398057796

namespace A048591

/-- `Δ[A020749(n+1)]+4` -/
def P5444402102398057796.Spec : Prop :=
  ∀ n, P5444402102398057796.a n = A048591 n

end A048591

/-!
# A048592: Pisot sequence L(9,10).

The programs for A048592, the canonical program `A048592.P17357701784516629224` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048592 has offset 0).

The definition of A048592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048592.P17357701784516629224

`2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` with `a(0)=9, a(1)=10, a(2)=12, a(3)=15, a(4)=19, a(5)=25`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048592

/-- `2*a(n-1)-a(n-2)+a(n-4)-a(n-5)` -/
def P17357701784516629224.Spec : Prop :=
  ∀ n, P17357701784516629224.a n = A048592 n

theorem P17357701784516629224.correct : P17357701784516629224.Spec := by
  intro n
  simp only [A048592]

end A048592

/-! ## A048592.P12369807168877653398

`ceil(a(n-1)²/a(n-2))` with `a(0)=9, a(1)=10`
-/

namespace A048592.P12369807168877653398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A048592.P12369807168877653398

namespace A048592

/-- `ceil(a(n-1)²/a(n-2))` -/
def P12369807168877653398.Spec : Prop :=
  ∀ n, P12369807168877653398.a n = A048592 n

end A048592

/-! ## A048592.P7569992491877237215

`A048590(n)+1`
-/

namespace A048592.P7569992491877237215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048590 n + 1

end

end A048592.P7569992491877237215

namespace A048592

/-- `A048590(n)+1` -/
def P7569992491877237215.Spec : Prop :=
  ∀ n, P7569992491877237215.a n = A048592 n

end A048592

/-! ## A048592.P8477005479256211411

`∑[record[A226517(n)]]+9`
-/

namespace A048592.P8477005479256211411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9

end

end A048592.P8477005479256211411

namespace A048592

/-- `∑[record[A226517(n)]]+9` -/
def P8477005479256211411.Spec : Prop :=
  ∀ n, P8477005479256211411.a n = A048592 n

end A048592

/-! ## A048592.P6883882315720504175

`A000079(n)-(A000225(n)-A048590(n))`
-/

namespace A048592.P6883882315720504175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A000225 n - A048590 n)

end

end A048592.P6883882315720504175

namespace A048592

/-- `A000079(n)-(A000225(n)-A048590(n))` -/
def P6883882315720504175.Spec : Prop :=
  ∀ n, P6883882315720504175.a n = A048592 n

end A048592

/-! ## A048592.P2695929267815911575

`A000225(n)-(A000918(n)-A048590(n))`
-/

namespace A048592.P2695929267815911575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A000918 n - A048590 n)

end

end A048592.P2695929267815911575

namespace A048592

/-- `A000225(n)-(A000918(n)-A048590(n))` -/
def P2695929267815911575.Spec : Prop :=
  ∀ n, P2695929267815911575.a n = A048592 n

end A048592

/-!
# A048593: Converse numbers: composite Fibonacci numbers Fib(k) that are congruent to Legendre symbol (k/5) mod k.

The programs for A048593, there is no canonical definition to state claims against.
-/

/-! ## A048593.P14193530811742073432

`A001519(A186542(n+4)^A243608(n))`
-/

namespace A048593.P14193530811742073432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (SequenceMachineLib.roundAway ((A186542 (n + 4) : ℚ) ^ (A243608 n : ℤ))).toNat

end

end A048593.P14193530811742073432

/-!
# A048594: Triangle T(n,k) = k! * Stirling1(n,k), 1<=k<=n.

The programs for A048594, there is no canonical definition to state claims against.
-/

/-! ## A048594.P2782561626771030407

`A008275(n+1)*A166350(n+1)`
-/

namespace A048594.P2782561626771030407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A166350 (n + 1)

end

end A048594.P2782561626771030407

/-! ## A048594.P13776518173469044993

`A140756(n+1)*A188881(n+1)`
-/

namespace A048594.P13776518173469044993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) * A188881 (n + 1)

end

end A048594.P13776518173469044993

/-! ## A048594.P745568921016077712

`A002260(n+1)!*A008275(n+1)`
-/

namespace A048594.P745568921016077712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A008275 (n + 1)

end

end A048594.P745568921016077712

/-! ## A048594.P13362734600614648445

`A008275(n+1)/A008277(n+1)*A019538(n+1)`
-/

namespace A048594.P13362734600614648445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A019538 (n + 1) : ℚ)

end

end A048594.P13362734600614648445

/-! ## A048594.P15112846660426776994

`A008275(n+1)/A001263(n+1)*A089231(n+1)`
-/

namespace A048594.P15112846660426776994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A089231 (n + 1) : ℚ)

end

end A048594.P15112846660426776994

/-! ## A048594.P11179527917444014469

`A008275(n+1)/A147315(n)*A185421(n+1)`
-/

namespace A048594.P11179527917444014469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A147315 n : ℚ) * (A185421 (n + 1) : ℚ)

end

end A048594.P11179527917444014469

/-! ## A048594.P5964074133344180957

`A142473(n+1)/A119502(n)`
-/

namespace A048594.P5964074133344180957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142473 (n + 1) : ℚ) / (A119502 n : ℚ)

end

end A048594.P5964074133344180957

/-!
# A048595: Alternative start to A002371, which is the main entry for this sequence.

The programs for A048595, there is no canonical definition to state claims against.
-/

/-! ## A048595.P8287082410580503189

`floor(sqrt(A002371(n+1)²+1))`
-/

namespace A048595.P8287082410580503189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002371 (n + 1) ^ 2 + 1)

end

end A048595.P8287082410580503189

/-! ## A048595.P11472158882838887961

`gcd(A071126(n+1), A130713(n))`
-/

namespace A048595.P11472158882838887961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071126 (n + 1)) (A130713 n)

end

end A048595.P11472158882838887961

/-! ## A048595.P9917710267647779457

`A154272(n+1)+A002371(n+1)`
-/

namespace A048595.P9917710267647779457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1) + A002371 (n + 1)

end

end A048595.P9917710267647779457

/-! ## A048595.P13970169384276832270

`A006093(n+1)/A060370(n+1)`
-/

namespace A048595.P13970169384276832270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A060370 (n + 1) : ℚ)

end

end A048595.P13970169384276832270

/-! ## A048595.P3622226450113403333

`(A000040(n+1)-1)/A060370(n+1)`
-/

namespace A048595.P3622226450113403333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1 : ℚ) / (A060370 (n + 1) : ℚ)

end

end A048595.P3622226450113403333

/-! ## A048595.P16427373742121709857

`A002371(n+1)+C(A260671(C(2, n)), 2)`
-/

namespace A048595.P16427373742121709857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1) + (Nat.choose (A260671 (Nat.choose 2 n)).toNat 2 : ℤ)

end

end A048595.P16427373742121709857

/-! ## A048595.P4000051204178771210

`A002371(n+1)+floor(A286574(n+3)²/(n+1))`
-/

namespace A048595.P4000051204178771210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1) + ⌊(A286574 (n + 3) ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A048595.P4000051204178771210

/-! ## A048595.P8723285732707897726

`A002371(n+1)+A000007(A161872(n+2))`
-/

namespace A048595.P8723285732707897726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1) + A000007 (A161872 (n + 2)).toNat

end

end A048595.P8723285732707897726

/-! ## A048595.P17667784416842521156

`eq[2, A000005(n+1)]/A060370(n+1)`
-/

namespace A048595.P17667784416842521156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A060370 (n + 1) : ℚ)

end

end A048595.P17667784416842521156

/-! ## A048595.P82099189001642684

`A007732(p?[xor(1, n)])`
-/

namespace A048595.P82099189001642684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A048595.P82099189001642684

/-! ## A048595.P18345129382382727200

`A007732(A000040(n+1))`
-/

namespace A048595.P18345129382382727200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A000040 (n + 1)).toNat

end

end A048595.P18345129382382727200

/-! ## A048595.P3450409567971748769

`A007732(A006005(n+1))`
-/

namespace A048595.P3450409567971748769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A006005 (n + 1)).toNat

end

end A048595.P3450409567971748769

/-! ## A048595.P15331824001280316057

`A028310(A002371(n+1))`
-/

namespace A048595.P15331824001280316057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002371 (n + 1)).toNat

end

end A048595.P15331824001280316057

/-! ## A048595.P5276486123441478430

`A007732(A161847(n+1))`
-/

namespace A048595.P5276486123441478430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A161847 (n + 1)).toNat

end

end A048595.P5276486123441478430

/-! ## A048595.P8674325170367040572

`A007732(A008578(n+2))`
-/

namespace A048595.P8674325170367040572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A008578 (n + 2)).toNat

end

end A048595.P8674325170367040572

/-! ## A048595.P9417975454787112926

`A007732(A116974(n+2))`
-/

namespace A048595.P9417975454787112926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A116974 (n + 2)).toNat

end

end A048595.P9417975454787112926

/-! ## A048595.P10747856547415334300

`A007732(p?[A003277(n+1)])`
-/

namespace A048595.P10747856547415334300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048595.P10747856547415334300

/-! ## A048595.P5708179215554470399

`A007732(record[A006530(n+2)])`
-/

namespace A048595.P5708179215554470399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048595.P5708179215554470399

/-! ## A048595.P180327666483680003

`A007732(record[A014963(n+2)])`
-/

namespace A048595.P180327666483680003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048595.P180327666483680003

/-! ## A048595.P15796421021221556242

`A007732(record[A020639(n+2)])`
-/

namespace A048595.P15796421021221556242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048595.P15796421021221556242

/-!
# A048598: Partial sums of the sequence (A001097) of twin primes.

The programs for A048598, the canonical program `A048598.P18321183389515101121` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048598 has offset 1).

The definition of A048598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048598.P18321183389515101121

`∑[A001097(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A048598

/-- `∑[A001097(n+1)]` -/
def P18321183389515101121.Spec : Prop :=
  ∀ n, P18321183389515101121.a n = A048598 (n + 1)

theorem P18321183389515101121.correct : P18321183389515101121.Spec := by
  intro n
  simp only [A048598, Nat.add_sub_cancel]

end A048598

/-! ## A048598.P18163178250775909621

`∑[A278972(n+1)/2]`
-/

namespace A048598.P18163178250775909621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278972 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P18163178250775909621

namespace A048598

/-- `∑[A278972(n+1)/2]` -/
def P18163178250775909621.Spec : Prop :=
  ∀ n, P18163178250775909621.a n = (A048598 (n + 1) : ℚ)

end A048598

/-! ## A048598.P2113924444170443138

`A171688(n)+a(n-1)` with `a(0)=3`
-/

namespace A048598.P2113924444170443138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A171688 n + a (n - 1)

end

end A048598.P2113924444170443138

namespace A048598

/-- `A171688(n)+a(n-1)` -/
def P2113924444170443138.Spec : Prop :=
  ∀ n, P2113924444170443138.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P9187388299938683291

`∑[A161220(n+1)+2*(n+1)]`
-/

namespace A048598.P9187388299938683291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161220 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P9187388299938683291

namespace A048598

/-- `∑[A161220(n+1)+2*(n+1)]` -/
def P9187388299938683291.Spec : Prop :=
  ∀ n, P9187388299938683291.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P16452524026229521191

`∑[record[A001097(A328397(n))]]`
-/

namespace A048598.P16452524026229521191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P16452524026229521191

namespace A048598

/-- `∑[record[A001097(A328397(n))]]` -/
def P16452524026229521191.Spec : Prop :=
  ∀ n, P16452524026229521191.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P16191137457959571709

`∑[A171821(n+2)]`
-/

namespace A048598.P16191137457959571709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P16191137457959571709

namespace A048598

/-- `∑[A171821(n+2)]` -/
def P16191137457959571709.Spec : Prop :=
  ∀ n, P16191137457959571709.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P9631244070658723289

`∑[A077800(n+2)]-2`
-/

namespace A048598.P9631244070658723289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A048598.P9631244070658723289

namespace A048598

/-- `∑[A077800(n+2)]-2` -/
def P9631244070658723289.Spec : Prop :=
  ∀ n, P9631244070658723289.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P5227375741761727116

`∑[record[A077800(A293217(n+1))]]`
-/

namespace A048598.P5227375741761727116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A293217 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P5227375741761727116

namespace A048598

/-- `∑[record[A077800(A293217(n+1))]]` -/
def P5227375741761727116.Spec : Prop :=
  ∀ n, P5227375741761727116.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P797116385620419104

`∑[record[A077800(A300827(n+1))]]`
-/

namespace A048598.P797116385620419104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A300827 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P797116385620419104

namespace A048598

/-- `∑[record[A077800(A300827(n+1))]]` -/
def P797116385620419104.Spec : Prop :=
  ∀ n, P797116385620419104.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P14116983380616461600

`∑[A000040(A334142(n+1))]`
-/

namespace A048598.P14116983380616461600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A334142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P14116983380616461600

namespace A048598

/-- `∑[A000040(A334142(n+1))]` -/
def P14116983380616461600.Spec : Prop :=
  ∀ n, P14116983380616461600.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P2934075603451593667

`∑[p?[A334141(n+1)]]`
-/

namespace A048598.P2934075603451593667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P2934075603451593667

namespace A048598

/-- `∑[p?[A334141(n+1)]]` -/
def P2934075603451593667.Spec : Prop :=
  ∀ n, P2934075603451593667.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P3377034121010308102

`∑[p?[A062505(n+1)]]`
-/

namespace A048598.P3377034121010308102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P3377034121010308102

namespace A048598

/-- `∑[p?[A062505(n+1)]]` -/
def P3377034121010308102.Spec : Prop :=
  ∀ n, P3377034121010308102.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P12246094917133275652

`∑[A006530(A278972(n+1))]`
-/

namespace A048598.P12246094917133275652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A278972 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P12246094917133275652

namespace A048598

/-- `∑[A006530(A278972(n+1))]` -/
def P12246094917133275652.Spec : Prop :=
  ∀ n, P12246094917133275652.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P2666232015252831288

`∑[p?[A062506(n+1)]]`
-/

namespace A048598.P2666232015252831288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062506 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P2666232015252831288

namespace A048598

/-- `∑[p?[A062506(n+1)]]` -/
def P2666232015252831288.Spec : Prop :=
  ∀ n, P2666232015252831288.a n = A048598 (n + 1)

end A048598

/-! ## A048598.P553253058172916396

`∑[p?[comp[A062729(n+1)]]]`
-/

namespace A048598.P553253058172916396
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P553253058172916396

namespace A048598

/-- `∑[p?[comp[A062729(n+1)]]]` -/
def P553253058172916396.Spec : Prop :=
  ∀ n, (P553253058172916396.a n : ℤ) = A048598 (n + 1)

end A048598

/-! ## A048598.P2531594576210647367

`∑[record[A284599(n+3)]]`
-/

namespace A048598.P2531594576210647367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P2531594576210647367

namespace A048598

/-- `∑[record[A284599(n+3)]]` -/
def P2531594576210647367.Spec : Prop :=
  ∀ n, P2531594576210647367.a n = A048598 (n + 1)

end A048598

/-!
# A048599: Partial products of the sequence (A001097) of twin primes.

The programs for A048599, there is no canonical definition to state claims against.
-/

/-! ## A048599.P9098971345910055658

`∏[A171821(n+1)]/2`
-/

namespace A048599.P9098971345910055658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A048599.P9098971345910055658

/-! ## A048599.P13387715324595963296

`a(n-1)*A001097(n)` with `a(0)=1`
-/

namespace A048599.P13387715324595963296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001097 n

end

end A048599.P13387715324595963296

/-! ## A048599.P10804399122476440927

`a(n-1)*A077800(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A048599.P10804399122476440927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * A077800 (n + 1)

end

end A048599.P10804399122476440927

/-! ## A048599.P8950560448312851555

`∏[record[A006530(A062505(n+1))]]`
-/

namespace A048599.P8950560448312851555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062505 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048599.P8950560448312851555

/-! ## A048599.P129492785205156244

`∏[record[A072963(A006530(n+1))]]`
-/

namespace A048599.P129492785205156244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A006530 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048599.P129492785205156244

