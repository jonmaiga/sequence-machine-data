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
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A373901: Numbers m such that (m - k)^k modulo m is not equal to positive k <= m.

The programs for A373901, there is no canonical definition to state claims against.
-/

/-! ## A373901.P9343660184938013521

`lt[A384781(n+1), 1]+1`
-/

namespace A373901.P9343660184938013521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384781 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A373901.P9343660184938013521

/-! ## A373901.P10487938287338508228

`eq[A240328(2*n+3), A384781(n+1)]+1`
-/

namespace A373901.P10487938287338508228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A373901.P10487938287338508228

/-! ## A373901.P71325154811756598

`lt[A000217(A160127(n+1)), A323014(n+1)]`
-/

namespace A373901.P71325154811756598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A160127 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373901.P71325154811756598

/-!
# A373905: a(n) = Sum_{k=0..floor(n/3)} binomial(n+3*k,n-3*k).

The programs for A373905, there is no canonical definition to state claims against.
-/

/-! ## A373905.P2815713415998379003

`A369806(n)+A341999(A341988(2*n+9))`
-/

namespace A373905.P2815713415998379003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369806 n + A341999 (A341988 (2 * n + 9)).toNat

end

end A373905.P2815713415998379003

/-!
# A373906: a(n) = Sum_{k=0..floor(n/4)} binomial(n+2*k,n-4*k).

The programs for A373906, there is no canonical definition to state claims against.
-/

/-! ## A373906.P1317570730341117765

`A365758(A032555(n+1))`
-/

namespace A373906.P1317570730341117765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365758 (A032555 (n + 1)).toNat

end

end A373906.P1317570730341117765

/-! ## A373906.P11556800428496138407

`A365758(A032557(n+1))`
-/

namespace A373906.P11556800428496138407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365758 (A032557 (n + 1)).toNat

end

end A373906.P11556800428496138407

/-! ## A373906.P2090868332329017054

`A365758(A032559(n+1))`
-/

namespace A373906.P2090868332329017054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365758 (A032559 (n + 1)).toNat

end

end A373906.P2090868332329017054

/-! ## A373906.P11851881942237507659

`A365758(A032563(n+1))`
-/

namespace A373906.P11851881942237507659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365758 (A032563 (n + 1)).toNat

end

end A373906.P11851881942237507659

/-! ## A373906.P16137387142903189856

`A365758(A032565(n+1))`
-/

namespace A373906.P16137387142903189856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365758 (A032565 (n + 1)).toNat

end

end A373906.P16137387142903189856

/-!
# A373907: Number of compositions of 7*n into parts 1 and 7.

The programs for A373907, the canonical program `A373907.P15282238610584887245` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373907 has offset 0).

The definition of A373907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373907.P15282238610584887245

`A005709(7*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373907

/-- `A005709(7*n)` -/
def P15282238610584887245.Spec : Prop :=
  ∀ n, P15282238610584887245.a n = A373907 n

theorem P15282238610584887245.correct : P15282238610584887245.Spec := by
  intro n
  simp only [A373907]

end A373907

/-! ## A373907.P11124430866617509971

`A017901(7*(n+1))`
-/

namespace A373907.P11124430866617509971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (7 * (n + 1))

end

end A373907.P11124430866617509971

namespace A373907

/-- `A017901(7*(n+1))` -/
def P11124430866617509971.Spec : Prop :=
  ∀ n, P11124430866617509971.a n = A373907 n

end A373907

/-! ## A373907.P8536400767488402107

`∑[A099253(log2(ceil(2^(n-1))))]`
-/

namespace A373907.P8536400767488402107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099253 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373907.P8536400767488402107

namespace A373907

/-- `∑[A099253(log2(ceil(2^(n-1))))]` -/
def P8536400767488402107.Spec : Prop :=
  ∀ n, P8536400767488402107.a n = A373907 n

end A373907

/-!
# A373908: Number of compositions of 7*n into parts 2 and 7.

The programs for A373908, the canonical program `A373908.P9546572299438946991` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373908 has offset 0).

The definition of A373908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373908.P9546572299438946991

`A369813(7*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373908

/-- `A369813(7*n)` -/
def P9546572299438946991.Spec : Prop :=
  ∀ n, P9546572299438946991.a n = A373908 n

theorem P9546572299438946991.correct : P9546572299438946991.Spec := by
  intro n
  simp only [A373908]

end A373908

/-! ## A373908.P15784396082274483766

`∑[A369805(n)]`
-/

namespace A373908.P15784396082274483766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373908.P15784396082274483766

namespace A373908

/-- `∑[A369805(n)]` -/
def P15784396082274483766.Spec : Prop :=
  ∀ n, P15784396082274483766.a n = A373908 n

end A373908

/-! ## A373908.P12872252016190870666

`∑[A369813(A116728(n+2))]`
-/

namespace A373908.P12872252016190870666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (A116728 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373908.P12872252016190870666

namespace A373908

/-- `∑[A369813(A116728(n+2))]` -/
def P12872252016190870666.Spec : Prop :=
  ∀ n, P12872252016190870666.a n = A373908 n

end A373908

/-!
# A373909: Number of compositions of 7*n into parts 3 and 7.

The programs for A373909, the canonical program `A373909.P2908949416516809937` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373909 has offset 0).

The definition of A373909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373909.P2908949416516809937

`A369814(7*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373909

/-- `A369814(7*n)` -/
def P2908949416516809937.Spec : Prop :=
  ∀ n, P2908949416516809937.a n = A373909 n

theorem P2908949416516809937.correct : P2908949416516809937.Spec := by
  intro n
  simp only [A373909]

end A373909

/-! ## A373909.P3721047755252185224

`∑[A369806(n)]`
-/

namespace A373909.P3721047755252185224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373909.P3721047755252185224

namespace A373909

/-- `∑[A369806(n)]` -/
def P3721047755252185224.Spec : Prop :=
  ∀ n, P3721047755252185224.a n = A373909 n

end A373909

/-! ## A373909.P2839199622092850451

`∑[A345168(ceil(ϕ*a(n-1)))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A373909.P2839199622092850451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  A345168 ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373909.P2839199622092850451

namespace A373909

/-- `∑[A345168(ceil(ϕ*a(n-1)))]` -/
def P2839199622092850451.Spec : Prop :=
  ∀ n, P2839199622092850451.a n = A373909 n

end A373909

/-!
# A373910: Number of compositions of 7*n into parts 4 and 7.

The programs for A373910, the canonical program `A373910.P2187591033375915871` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373910 has offset 0).

The definition of A373910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373910.P2187591033375915871

`A369815(7*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373910

/-- `A369815(7*n)` -/
def P2187591033375915871.Spec : Prop :=
  ∀ n, P2187591033375915871.a n = A373910 n

theorem P2187591033375915871.correct : P2187591033375915871.Spec := by
  intro n
  simp only [A373910]

end A373910

/-! ## A373910.P15031720469993402681

`∑[A369807(n)]`
-/

namespace A373910.P15031720469993402681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373910.P15031720469993402681

namespace A373910

/-- `∑[A369807(n)]` -/
def P15031720469993402681.Spec : Prop :=
  ∀ n, P15031720469993402681.a n = A373910 n

end A373910

/-! ## A373910.P11556403861971574539

`A373912(n+2)+A171932(A373912(n))`
-/

namespace A373910.P11556403861971574539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373912 (n + 2) + A171932 (A373912 n).toNat

end

end A373910.P11556403861971574539

namespace A373910

/-- `A373912(n+2)+A171932(A373912(n))` -/
def P11556403861971574539.Spec : Prop :=
  ∀ n, P11556403861971574539.a n = A373910 n

end A373910

/-! ## A373910.P17009518798621434421

`A373912(n+2)-A178780(A005195(n))`
-/

namespace A373910.P17009518798621434421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373912 (n + 2) - A178780 (A005195 n).toNat

end

end A373910.P17009518798621434421

namespace A373910

/-- `A373912(n+2)-A178780(A005195(n))` -/
def P17009518798621434421.Spec : Prop :=
  ∀ n, P17009518798621434421.a n = A373910 n

end A373910

/-! ## A373910.P8394575995527106141

`A333883(n+3)+A159689(A247494(n))`
-/

namespace A373910.P8394575995527106141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333883 (n + 3) + A159689 (A247494 n).toNat

end

end A373910.P8394575995527106141

namespace A373910

/-- `A333883(n+3)+A159689(A247494(n))` -/
def P8394575995527106141.Spec : Prop :=
  ∀ n, P8394575995527106141.a n = A373910 n

end A373910

/-!
# A373911: Number of compositions of 7*n into parts 5 and 7.

The programs for A373911, the canonical program `A373911.P3384175063987620122` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373911 has offset 0).

The definition of A373911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373911.P3384175063987620122

`A369816(7*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373911

/-- `A369816(7*n)` -/
def P3384175063987620122.Spec : Prop :=
  ∀ n, P3384175063987620122.a n = A373911 n

theorem P3384175063987620122.correct : P3384175063987620122.Spec := by
  intro n
  simp only [A373911]

end A373911

/-! ## A373911.P682182594663774534

`∑[A369808(n)]`
-/

namespace A373911.P682182594663774534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373911.P682182594663774534

namespace A373911

/-- `∑[A369808(n)]` -/
def P682182594663774534.Spec : Prop :=
  ∀ n, P682182594663774534.a n = A373911 n

end A373911

/-! ## A373911.P10421345574030827544

`A306852(n+2)+A078442(A007713(n))`
-/

namespace A373911.P10421345574030827544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306852 (n + 2) + A078442 (A007713 n).toNat

end

end A373911.P10421345574030827544

namespace A373911

/-- `A306852(n+2)+A078442(A007713(n))` -/
def P10421345574030827544.Spec : Prop :=
  ∀ n, P10421345574030827544.a n = A373911 n

end A373911

/-! ## A373911.P8811500661149618573

`A373961(n+1)-A373925(A000079(n+3))`
-/

namespace A373911.P8811500661149618573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373961 (n + 1) - A373925 (A000079 (n + 3)).toNat

end

end A373911.P8811500661149618573

namespace A373911

/-- `A373961(n+1)-A373925(A000079(n+3))` -/
def P8811500661149618573.Spec : Prop :=
  ∀ n, P8811500661149618573.a n = A373911 n

end A373911

/-! ## A373911.P3376478428285968560

`∑[A327482(A208287(n+1))*A333882(n+1)]-n`
-/

namespace A373911.P3376478428285968560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327482 (A208287 (n + 1)).toNat * A333882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A373911.P3376478428285968560

namespace A373911

/-- `∑[A327482(A208287(n+1))*A333882(n+1)]-n` -/
def P3376478428285968560.Spec : Prop :=
  ∀ n, P3376478428285968560.a n = A373911 n

end A373911

/-!
# A373912: Number of compositions of 7*n into parts 6 and 7.

The programs for A373912, the canonical program `A373912.P4395864615512526356` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373912 has offset 0).

The definition of A373912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373912.P4395864615512526356

`A017847(7*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373912

/-- `A017847(7*n)` -/
def P4395864615512526356.Spec : Prop :=
  ∀ n, P4395864615512526356.a n = A373912 n

theorem P4395864615512526356.correct : P4395864615512526356.Spec := by
  intro n
  simp only [A373912]

end A373912

/-! ## A373912.P13260360154460798845

`∑[A369809(n)]`
-/

namespace A373912.P13260360154460798845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373912.P13260360154460798845

namespace A373912

/-- `∑[A369809(n)]` -/
def P13260360154460798845.Spec : Prop :=
  ∀ n, P13260360154460798845.a n = A373912 n

end A373912

/-! ## A373912.P3433002911044256922

`A127841(A016993(n+1))`
-/

namespace A373912.P3433002911044256922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A016993 (n + 1)).toNat

end

end A373912.P3433002911044256922

namespace A373912

/-- `A127841(A016993(n+1))` -/
def P3433002911044256922.Spec : Prop :=
  ∀ n, P3433002911044256922.a n = A373912 n

end A373912

/-! ## A373912.P11101789365444570102

`A127841(A017053(n)+2)`
-/

namespace A373912.P11101789365444570102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017053 n + 2).toNat

end

end A373912.P11101789365444570102

namespace A373912

/-- `A127841(A017053(n)+2)` -/
def P11101789365444570102.Spec : Prop :=
  ∀ n, P11101789365444570102.a n = A373912 n

end A373912

/-! ## A373912.P7255160721119046300

`A127841(A017017(n+1)-2)`
-/

namespace A373912.P7255160721119046300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017017 (n + 1) - 2).toNat

end

end A373912.P7255160721119046300

namespace A373912

/-- `A127841(A017017(n+1)-2)` -/
def P7255160721119046300.Spec : Prop :=
  ∀ n, P7255160721119046300.a n = A373912 n

end A373912

/-! ## A373912.P11763685843483812030

`A373933(n+2)-(A373933(n+1)+A369809(n+1))`
-/

namespace A373912.P11763685843483812030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373933 (n + 2) - (A373933 (n + 1) + A369809 (n + 1))

end

end A373912.P11763685843483812030

namespace A373912

/-- `A373933(n+2)-(A373933(n+1)+A369809(n+1))` -/
def P11763685843483812030.Spec : Prop :=
  ∀ n, P11763685843483812030.a n = A373912 n

end A373912

/-!
# A373913: Number of compositions of 8*n into parts 7 and 8.

The programs for A373913, the canonical program `A373913.P4676741196729923475` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373913 has offset 0).

The definition of A373913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373913.P4676741196729923475

`A017857(8*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373913

/-- `A017857(8*n)` -/
def P4676741196729923475.Spec : Prop :=
  ∀ n, P4676741196729923475.a n = A373913 n

theorem P4676741196729923475.correct : P4676741196729923475.Spec := by
  intro n
  simp only [A373913]

end A373913

/-! ## A373913.P15733901496178965638

`A392355(2*n)`
-/

namespace A373913.P15733901496178965638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392355 (2 * n)

end

end A373913.P15733901496178965638

namespace A373913

/-- `A392355(2*n)` -/
def P15733901496178965638.Spec : Prop :=
  ∀ n, P15733901496178965638.a n = A373913 n

end A373913

/-! ## A373913.P7494650836055874083

`A127842(A004768(n))`
-/

namespace A373913.P7494650836055874083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (A004768 n).toNat

end

end A373913.P7494650836055874083

namespace A373913

/-- `A127842(A004768(n))` -/
def P7494650836055874083.Spec : Prop :=
  ∀ n, P7494650836055874083.a n = A373913 n

end A373913

/-! ## A373913.P2820945380981095662

`A127842(A017077(n+1))`
-/

namespace A373913.P2820945380981095662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (A017077 (n + 1)).toNat

end

end A373913.P2820945380981095662

namespace A373913

/-- `A127842(A017077(n+1))` -/
def P2820945380981095662.Spec : Prop :=
  ∀ n, P2820945380981095662.a n = A373913 n

end A373913

/-! ## A373913.P14231173363138004358

`A127842(A017005(n+1)+n)`
-/

namespace A373913.P14231173363138004358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (A017005 (n + 1) + (n : ℤ)).toNat

end

end A373913.P14231173363138004358

namespace A373913

/-- `A127842(A017005(n+1)+n)` -/
def P14231173363138004358.Spec : Prop :=
  ∀ n, P14231173363138004358.a n = A373913 n

end A373913

/-! ## A373913.P17084853677640421331

`Δ[A127842(Δ[A000290(2*n+1)])]`
-/

namespace A373913.P17084853677640421331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373913.P17084853677640421331

namespace A373913

/-- `Δ[A127842(Δ[A000290(2*n+1)])]` -/
def P17084853677640421331.Spec : Prop :=
  ∀ n, P17084853677640421331.a n = A373913 n

end A373913

/-!
# A373914: a(n) is the largest digit sum of all n-digit fourth powers.

The programs for A373914, there is no canonical definition to state claims against.
-/

/-! ## A373914.P12436105241477253186

`A055565(A380111(n+1))`
-/

namespace A373914.P12436105241477253186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (A380111 (n + 1)).toNat

end

end A373914.P12436105241477253186

/-! ## A373914.P1889375550828221293

`A055565(A380797(n+1))`
-/

namespace A373914.P1889375550828221293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (A380797 (n + 1)).toNat

end

end A373914.P1889375550828221293

/-!
# A373915: Determinants of symmetric real {0,1}-matrices of order 9 that only occur as positive values.

The programs for A373915, there is no canonical definition to state claims against.
-/

/-! ## A373915.P15625842835418800057

`∑[gcd(A357346(2*n), A357361(3*n+5))]`
-/

namespace A373915.P15625842835418800057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A357346 (2 * n)) (A357361 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373915.P15625842835418800057

/-! ## A373915.P6413909759122134645

`lt[2*n²+3*n+3, A146076(A173786(n))]`
-/

namespace A373915.P6413909759122134645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 3 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A173786 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373915.P6413909759122134645

/-! ## A373915.P3580631824577466287

`lt[A007434(n+1), A157223(A002183(n+1))]`
-/

namespace A373915.P3580631824577466287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157223 (A002183 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373915.P3580631824577466287

/-!
# A373917: Triangle read by rows: T(n,k) = k*10 mod n, with n >= 1, k >= 0.

The programs for A373917, the canonical program `A373917.P2234265821470361716` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373917 has offset 1).

The definition of A373917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373917.P2234265821470361716

`(10*n)%round(sqrt(2*n+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A373917

/-- `(10*n)%round(sqrt(2*n+1))` -/
def P2234265821470361716.Spec : Prop :=
  ∀ n, P2234265821470361716.a n = A373917 (n + 1)

theorem P2234265821470361716.correct : P2234265821470361716.Spec := by
  intro n
  simp only [A373917, Nat.add_sub_cancel]

end A373917

/-! ## A373917.P18337077554183415502

`and(A001227(A318098(2*(n+1))), A336375(n+1))`
-/

namespace A373917.P18337077554183415502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001227 (A318098 (2 * (n + 1))).toNat) (A336375 (n + 1))

end

end A373917.P18337077554183415502

namespace A373917

/-- `and(A001227(A318098(2*(n+1))), A336375(n+1))` -/
def P18337077554183415502.Spec : Prop :=
  ∀ n, P18337077554183415502.a n = A373917 (n + 1)

end A373917

/-! ## A373917.P16637083262694317868

`A325194(A091574(n))`
-/

namespace A373917.P16637083262694317868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325194 (A091574 n).toNat

end

end A373917.P16637083262694317868

namespace A373917

/-- `A325194(A091574(n))` -/
def P16637083262694317868.Spec : Prop :=
  ∀ n, P16637083262694317868.a n = A373917 (n + 1)

end A373917

/-!
# A373920: Isolated prime Lucas numbers.

The programs for A373920, there is no canonical definition to state claims against.
-/

/-! ## A373920.P17600245308063346530

`filter[A005479(n+1), A039985(#)]`
-/

namespace A373920.P17600245308063346530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039985 (f1 j).toNat = 1) n)

end

end A373920.P17600245308063346530

/-!
# A373921: The last entry in the difference table for {the n-th row of A177028 arranged in increasing order}.

The programs for A373921, there is no canonical definition to state claims against.
-/

/-! ## A373921.P6527278050969890290

`A191838(n+1)-A342843(A342805(n+3))`
-/

namespace A373921.P6527278050969890290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191838 (n + 1) - A342843 (A342805 (n + 3)).toNat

end

end A373921.P6527278050969890290

/-!
# A373922: Number of lattices on n unlabeled nodes, up to duality.

The programs for A373922, there is no canonical definition to state claims against.
-/

/-! ## A373922.P4836218973064781301

`(A006966(n)+A373894(n))/2`
-/

namespace A373922.P4836218973064781301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006966 n + A373894 n : ℚ) / 2

end

end A373922.P4836218973064781301

/-! ## A373922.P1077626923493049860

`A004526(A373894(n)+A006966(n))`
-/

namespace A373922.P1077626923493049860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A373894 n + A006966 n).toNat

end

end A373922.P1077626923493049860

/-! ## A373922.P10443960626852795048

`A110654(A373894(n)+A006966(n))`
-/

namespace A373922.P10443960626852795048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A373894 n + A006966 n).toNat

end

end A373922.P10443960626852795048

/-! ## A373922.P14770479205019383055

`A347712(A090427(n))`
-/

namespace A373922.P14770479205019383055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347712 (A090427 n).toNat

end

end A373922.P14770479205019383055

/-! ## A373922.P10598915118505107789

`A304708(A201077(n))`
-/

namespace A373922.P10598915118505107789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (A201077 n).toNat

end

end A373922.P10598915118505107789

/-!
# A373923: a(n) = Sum_{d|n} (-1)^pi(d).

The programs for A373923, the canonical program `A373923.P9903428589849728487` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373923 has offset 1).

The definition of A373923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373923.P9903428589849728487

`∑{d}[n+1, A065357(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A373923

/-- `∑{d}[n+1, A065357(#)]` -/
def P9903428589849728487.Spec : Prop :=
  ∀ n, P9903428589849728487.a n = A373923 (n + 1)

theorem P9903428589849728487.correct : P9903428589849728487.Spec := by
  intro n
  simp only [A373923, Nat.add_sub_cancel]

end A373923

/-! ## A373923.P3599517152543258549

`A345220(n+1)-A345219(n+1)`
-/

namespace A373923.P3599517152543258549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345220 (n + 1) - A345219 (n + 1)

end

end A373923.P3599517152543258549

namespace A373923

/-- `A345220(n+1)-A345219(n+1)` -/
def P3599517152543258549.Spec : Prop :=
  ∀ n, P3599517152543258549.a n = A373923 (n + 1)

end A373923

/-! ## A373923.P6792259734231073111

`2*A345220(n+1)-A000005(n+1)`
-/

namespace A373923.P6792259734231073111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345220 (n + 1) - A000005 (n + 1)

end

end A373923.P6792259734231073111

namespace A373923

/-- `2*A345220(n+1)-A000005(n+1)` -/
def P6792259734231073111.Spec : Prop :=
  ∀ n, P6792259734231073111.a n = A373923 (n + 1)

end A373923

/-! ## A373923.P18316060590028243709

`A000005(n+1)-2*A345219(n+1)`
-/

namespace A373923.P18316060590028243709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 2 * A345219 (n + 1)

end

end A373923.P18316060590028243709

namespace A373923

/-- `A000005(n+1)-2*A345219(n+1)` -/
def P18316060590028243709.Spec : Prop :=
  ∀ n, P18316060590028243709.a n = A373923 (n + 1)

end A373923

/-! ## A373923.P17448222178959066637

`∑{d}[n+1, A000005(#)*A373924((n+1)/#)]`
-/

namespace A373923.P17448222178959066637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A373924 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373923.P17448222178959066637

namespace A373923

/-- `∑{d}[n+1, A000005(#)*A373924((n+1)/#)]` -/
def P17448222178959066637.Spec : Prop :=
  ∀ n, P17448222178959066637.a n = A373923 (n + 1)

end A373923

/-!
# A373924: a(n) = Sum_{d|n} (-1)^pi(d) * mu(n/d).

The programs for A373924, the canonical program `A373924.P1751910803727075377` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373924 has offset 1).

The definition of A373924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373924.P1751910803727075377

`∑{d}[n+1, A007427(#)*A373923((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A373924

/-- `∑{d}[n+1, A007427(#)*A373923((n+1)/#)]` -/
def P1751910803727075377.Spec : Prop :=
  ∀ n, P1751910803727075377.a n = A373924 (n + 1)

theorem P1751910803727075377.correct : P1751910803727075377.Spec := by
  intro n
  simp only [A373924, Nat.add_sub_cancel]

end A373924

/-!
# A373925: a(n) = Sum_{d|n} (-1)^phi(d).

The programs for A373925, the canonical program `A373925.P11654832793373106341` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373925 has offset 1).

The definition of A373925 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373925.P11654832793373106341

`A000005(n+1)-(3-(-1)^n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A373925

/-- `A000005(n+1)-(3-(-1)^n)` -/
def P11654832793373106341.Spec : Prop :=
  ∀ n, P11654832793373106341.a n = A373925 (n + 1)

theorem P11654832793373106341.correct : P11654832793373106341.Spec := by
  intro n
  simp only [A373925, Nat.add_sub_cancel]

end A373925

/-! ## A373925.P11867250488066229924

`∑{d}[n+1, 2%#-1]`
-/

namespace A373925.P11867250488066229924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (((2 % d : ℕ) : ℤ) - 1)

end

end A373925.P11867250488066229924

namespace A373925

/-- `∑{d}[n+1, 2%#-1]` -/
def P11867250488066229924.Spec : Prop :=
  ∀ n, P11867250488066229924.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P9508429289073788526

`A023645(n+1)-A000034(n)`
-/

namespace A373925.P9508429289073788526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - A000034 n

end

end A373925.P9508429289073788526

namespace A373925

/-- `A023645(n+1)-A000034(n)` -/
def P9508429289073788526.Spec : Prop :=
  ∀ n, P9508429289073788526.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P760347537822756687

`A037852(n+1)-A010705(n)`
-/

namespace A373925.P760347537822756687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037852 (n + 1) - A010705 n

end

end A373925.P760347537822756687

namespace A373925

/-- `A037852(n+1)-A010705(n)` -/
def P760347537822756687.Spec : Prop :=
  ∀ n, P760347537822756687.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P13394004204511339615

`A004442(n)-A059292(n+1)`
-/

namespace A373925.P13394004204511339615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n - A059292 (n + 1)

end

end A373925.P13394004204511339615

namespace A373925

/-- `A004442(n)-A059292(n+1)` -/
def P13394004204511339615.Spec : Prop :=
  ∀ n, P13394004204511339615.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P16733910265059641933

`A062558(n+1)-A010702(n)`
-/

namespace A373925.P16733910265059641933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (n + 1) - A010702 n

end

end A373925.P16733910265059641933

namespace A373925

/-- `A062558(n+1)-A010702(n)` -/
def P16733910265059641933.Spec : Prop :=
  ∀ n, P16733910265059641933.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P9288172313984245536

`A076984(n+1)-A010693(n)`
-/

namespace A373925.P9288172313984245536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - A010693 n

end

end A373925.P9288172313984245536

namespace A373925

/-- `A076984(n+1)-A010693(n)` -/
def P9288172313984245536.Spec : Prop :=
  ∀ n, P9288172313984245536.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P2963739296096832395

`A088922(n+1)-A052938(n)`
-/

namespace A373925.P2963739296096832395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) - A052938 n

end

end A373925.P2963739296096832395

namespace A373925

/-- `A088922(n+1)-A052938(n)` -/
def P2963739296096832395.Spec : Prop :=
  ∀ n, P2963739296096832395.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P2625514918575975728

`A334954(n+1)-A010703(n)`
-/

namespace A373925.P2625514918575975728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A010703 n

end

end A373925.P2625514918575975728

namespace A373925

/-- `A334954(n+1)-A010703(n)` -/
def P2625514918575975728.Spec : Prop :=
  ∀ n, P2625514918575975728.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P17153498100863619903

`A023645(n+1)-(A000035(n)+1)`
-/

namespace A373925.P17153498100863619903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - (A000035 n + 1)

end

end A373925.P17153498100863619903

namespace A373925

/-- `A023645(n+1)-(A000035(n)+1)` -/
def P17153498100863619903.Spec : Prop :=
  ∀ n, P17153498100863619903.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P8244161792233415923

`A076984(n+1)+1-A010702(n)`
-/

namespace A373925.P8244161792233415923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) + (1 - A010702 n)

end

end A373925.P8244161792233415923

namespace A373925

/-- `A076984(n+1)+1-A010702(n)` -/
def P8244161792233415923.Spec : Prop :=
  ∀ n, P8244161792233415923.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P16214310161193088137

`A088922(n+1)-(A030451(n)+1)`
-/

namespace A373925.P16214310161193088137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) - (A030451 n + 1)

end

end A373925.P16214310161193088137

namespace A373925

/-- `A088922(n+1)-(A030451(n)+1)` -/
def P16214310161193088137.Spec : Prop :=
  ∀ n, P16214310161193088137.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P16136309105480172029

`A114003(n+1)-A037852(n+1)`
-/

namespace A373925.P16136309105480172029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - A037852 (n + 1)

end

end A373925.P16136309105480172029

namespace A373925

/-- `A114003(n+1)-A037852(n+1)` -/
def P16136309105480172029.Spec : Prop :=
  ∀ n, P16136309105480172029.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P717730385624675107

`A361003(n+1)-A060762(n+1)`
-/

namespace A373925.P717730385624675107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361003 (n + 1) - A060762 (n + 1)

end

end A373925.P717730385624675107

namespace A373925

/-- `A361003(n+1)-A060762(n+1)` -/
def P717730385624675107.Spec : Prop :=
  ∀ n, P717730385624675107.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P4533468907955174442

`A076984(n+1)-(A000035(n)+2)`
-/

namespace A373925.P4533468907955174442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - (A000035 n + 2)

end

end A373925.P4533468907955174442

namespace A373925

/-- `A076984(n+1)-(A000035(n)+2)` -/
def P4533468907955174442.Spec : Prop :=
  ∀ n, P4533468907955174442.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P11107889917841863173

`A023645(n+1)+A059841(n)-2`
-/

namespace A373925.P11107889917841863173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + (A059841 n - 2)

end

end A373925.P11107889917841863173

namespace A373925

/-- `A023645(n+1)+A059841(n)-2` -/
def P11107889917841863173.Spec : Prop :=
  ∀ n, P11107889917841863173.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P6779279827578820714

`2*A023645(n+1)-A000005(n+1)`
-/

namespace A373925.P6779279827578820714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023645 (n + 1) - A000005 (n + 1)

end

end A373925.P6779279827578820714

namespace A373925

/-- `2*A023645(n+1)-A000005(n+1)` -/
def P6779279827578820714.Spec : Prop :=
  ∀ n, P6779279827578820714.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P5743327301656088616

`A070824(n+1)-A065190(n+1)+n`
-/

namespace A373925.P5743327301656088616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) - A065190 (n + 1) + (n : ℤ)

end

end A373925.P5743327301656088616

namespace A373925

/-- `A070824(n+1)-A065190(n+1)+n` -/
def P5743327301656088616.Spec : Prop :=
  ∀ n, P5743327301656088616.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P11821840660378815023

`∑{d}[n+1, A000005(#)*A373926((n+1)/#)]`
-/

namespace A373925.P11821840660378815023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A373926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373925.P11821840660378815023

namespace A373925

/-- `∑{d}[n+1, A000005(#)*A373926((n+1)/#)]` -/
def P11821840660378815023.Spec : Prop :=
  ∀ n, P11821840660378815023.a n = A373925 (n + 1)

end A373925

/-! ## A373925.P17434925312778074409

`A000005(n+1)-A040001(n+1)-A040001(n+1)`
-/

namespace A373925.P17434925312778074409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A040001 (n + 1) - A040001 (n + 1)

end

end A373925.P17434925312778074409

namespace A373925

/-- `A000005(n+1)-A040001(n+1)-A040001(n+1)` -/
def P17434925312778074409.Spec : Prop :=
  ∀ n, P17434925312778074409.a n = A373925 (n + 1)

end A373925

/-!
# A373926: a(n) = Sum_{d|n} (-1)^phi(d) * mu(n/d).

The programs for A373926, the canonical program `A373926.P5942574253038570146` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373926 has offset 1).

The definition of A373926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373926.P5942574253038570146

`A157658(n+1)-A086831(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A373926

/-- `A157658(n+1)-A086831(n+1)` -/
def P5942574253038570146.Spec : Prop :=
  ∀ n, P5942574253038570146.a n = A373926 (n + 1)

theorem P5942574253038570146.correct : P5942574253038570146.Spec := by
  intro n
  simp only [A373926, Nat.add_sub_cancel]

end A373926

/-! ## A373926.P14395264054487193055

`(A359548(n+1)-2)*A359591(n+1)`
-/

namespace A373926.P14395264054487193055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A359548 (n + 1) - 2) * A359591 (n + 1)

end

end A373926.P14395264054487193055

namespace A373926

/-- `(A359548(n+1)-2)*A359591(n+1)` -/
def P14395264054487193055.Spec : Prop :=
  ∀ n, P14395264054487193055.a n = A373926 (n + 1)

end A373926

/-! ## A373926.P5230726003833872330

`∑{d}[n+1, A007427(#)*A373925((n+1)/#)]`
-/

namespace A373926.P5230726003833872330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A373925 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373926.P5230726003833872330

namespace A373926

/-- `∑{d}[n+1, A007427(#)*A373925((n+1)/#)]` -/
def P5230726003833872330.Spec : Prop :=
  ∀ n, P5230726003833872330.a n = A373926 (n + 1)

end A373926

/-! ## A373926.P11426477098937668155

`A019590(n+2)-(A086831(n+1)+A008683(n+1))`
-/

namespace A373926.P11426477098937668155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) - (A086831 (n + 1) + A008683 (n + 1))

end

end A373926.P11426477098937668155

namespace A373926

/-- `A019590(n+2)-(A086831(n+1)+A008683(n+1))` -/
def P11426477098937668155.Spec : Prop :=
  ∀ n, P11426477098937668155.a n = A373926 (n + 1)

end A373926

/-! ## A373926.P15218861352804326175

`A019590(n+2)-A359591(n+1)-A359591(n+1)`
-/

namespace A373926.P15218861352804326175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) - A359591 (n + 1) - A359591 (n + 1)

end

end A373926.P15218861352804326175

namespace A373926

/-- `A019590(n+2)-A359591(n+1)-A359591(n+1)` -/
def P15218861352804326175.Spec : Prop :=
  ∀ n, P15218861352804326175.a n = A373926 (n + 1)

end A373926

/-!
# A373928: Number of compositions of 7*n-2 into parts 1 and 7.

The programs for A373928, the canonical program `A373928.P8650021580750186198` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373928 has offset 1).

The definition of A373928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373928.P8650021580750186198

`A005709(7*(n+1)-2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373928

/-- `A005709(7*(n+1)-2)` -/
def P8650021580750186198.Spec : Prop :=
  ∀ n, P8650021580750186198.a n = A373928 (n + 1)

theorem P8650021580750186198.correct : P8650021580750186198.Spec := by
  intro n
  simp only [A373928, Nat.add_sub_cancel]

end A373928

/-! ## A373928.P297405661924929893

`∑[A373929(n+1)]`
-/

namespace A373928.P297405661924929893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373928.P297405661924929893

namespace A373928

/-- `∑[A373929(n+1)]` -/
def P297405661924929893.Spec : Prop :=
  ∀ n, P297405661924929893.a n = A373928 (n + 1)

end A373928

/-! ## A373928.P12860707090378606287

`∑[∑[A373930(n+1)]]`
-/

namespace A373928.P12860707090378606287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373928.P12860707090378606287

namespace A373928

/-- `∑[∑[A373930(n+1)]]` -/
def P12860707090378606287.Spec : Prop :=
  ∀ n, P12860707090378606287.a n = A373928 (n + 1)

end A373928

/-! ## A373928.P342399931719040587

`A017901(A017041(n+1))`
-/

namespace A373928.P342399931719040587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017041 (n + 1)).toNat

end

end A373928.P342399931719040587

namespace A373928

/-- `A017901(A017041(n+1))` -/
def P342399931719040587.Spec : Prop :=
  ∀ n, P342399931719040587.a n = A373928 (n + 1)

end A373928

/-! ## A373928.P11637375712428170188

`A017901(A017029(n+1)+1)`
-/

namespace A373928.P11637375712428170188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017029 (n + 1) + 1).toNat

end

end A373928.P11637375712428170188

namespace A373928

/-- `A017901(A017029(n+1)+1)` -/
def P11637375712428170188.Spec : Prop :=
  ∀ n, P11637375712428170188.a n = A373928 (n + 1)

end A373928

/-! ## A373928.P3585450606830816238

`A017901(A017017(n+1)+2)`
-/

namespace A373928.P3585450606830816238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017017 (n + 1) + 2).toNat

end

end A373928.P3585450606830816238

namespace A373928

/-- `A017901(A017017(n+1)+2)` -/
def P3585450606830816238.Spec : Prop :=
  ∀ n, P3585450606830816238.a n = A373928 (n + 1)

end A373928

/-! ## A373928.P8610884993410062682

`A017901(A017053(n+1)-1)`
-/

namespace A373928.P8610884993410062682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017053 (n + 1) - 1).toNat

end

end A373928.P8610884993410062682

namespace A373928

/-- `A017901(A017053(n+1)-1)` -/
def P8610884993410062682.Spec : Prop :=
  ∀ n, P8610884993410062682.a n = A373928 (n + 1)

end A373928

/-!
# A373929: Number of compositions of 7*n-3 into parts 1 and 7.

The programs for A373929, the canonical program `A373929.P4771295431437523167` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373929 has offset 1).

The definition of A373929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373929.P4771295431437523167

`A005709(7*(n+1)-3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373929

/-- `A005709(7*(n+1)-3)` -/
def P4771295431437523167.Spec : Prop :=
  ∀ n, P4771295431437523167.a n = A373929 (n + 1)

theorem P4771295431437523167.correct : P4771295431437523167.Spec := by
  intro n
  simp only [A373929, Nat.add_sub_cancel]

end A373929

/-! ## A373929.P9809763664335450228

`∑[A373930(n+1)]`
-/

namespace A373929.P9809763664335450228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373929.P9809763664335450228

namespace A373929

/-- `∑[A373930(n+1)]` -/
def P9809763664335450228.Spec : Prop :=
  ∀ n, P9809763664335450228.a n = A373929 (n + 1)

end A373929

/-! ## A373929.P10578856010359234635

`∑[∑[A373931(n+1)]]`
-/

namespace A373929.P10578856010359234635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373931 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373929.P10578856010359234635

namespace A373929

/-- `∑[∑[A373931(n+1)]]` -/
def P10578856010359234635.Spec : Prop :=
  ∀ n, P10578856010359234635.a n = A373929 (n + 1)

end A373929

/-! ## A373929.P6775539355863665146

`A017901(A017029(n+1))`
-/

namespace A373929.P6775539355863665146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017029 (n + 1)).toNat

end

end A373929.P6775539355863665146

namespace A373929

/-- `A017901(A017029(n+1))` -/
def P6775539355863665146.Spec : Prop :=
  ∀ n, P6775539355863665146.a n = A373929 (n + 1)

end A373929

/-! ## A373929.P5493547029981512471

`A017901(A017017(n+1)+1)`
-/

namespace A373929.P5493547029981512471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017017 (n + 1) + 1).toNat

end

end A373929.P5493547029981512471

namespace A373929

/-- `A017901(A017017(n+1)+1)` -/
def P5493547029981512471.Spec : Prop :=
  ∀ n, P5493547029981512471.a n = A373929 (n + 1)

end A373929

/-! ## A373929.P13612931235549897919

`A017901(A017005(n+1)+2)`
-/

namespace A373929.P13612931235549897919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017005 (n + 1) + 2).toNat

end

end A373929.P13612931235549897919

namespace A373929

/-- `A017901(A017005(n+1)+2)` -/
def P13612931235549897919.Spec : Prop :=
  ∀ n, P13612931235549897919.a n = A373929 (n + 1)

end A373929

/-! ## A373929.P377266450168938886

`A017901(A017041(n+1)-1)`
-/

namespace A373929.P377266450168938886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017041 (n + 1) - 1).toNat

end

end A373929.P377266450168938886

namespace A373929

/-- `A017901(A017041(n+1)-1)` -/
def P377266450168938886.Spec : Prop :=
  ∀ n, P377266450168938886.a n = A373929 (n + 1)

end A373929

/-! ## A373929.P17655965903655761276

`A017901(A017053(n+1)-2)`
-/

namespace A373929.P17655965903655761276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017053 (n + 1) - 2).toNat

end

end A373929.P17655965903655761276

namespace A373929

/-- `A017901(A017053(n+1)-2)` -/
def P17655965903655761276.Spec : Prop :=
  ∀ n, P17655965903655761276.a n = A373929 (n + 1)

end A373929

/-!
# A373930: Number of compositions of 7*n-4 into parts 1 and 7.

The programs for A373930, the canonical program `A373930.P987995553319910995` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373930 has offset 1).

The definition of A373930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373930.P987995553319910995

`A005709(7*(n+1)-4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373930

/-- `A005709(7*(n+1)-4)` -/
def P987995553319910995.Spec : Prop :=
  ∀ n, P987995553319910995.a n = A373930 (n + 1)

theorem P987995553319910995.correct : P987995553319910995.Spec := by
  intro n
  simp only [A373930, Nat.add_sub_cancel]

end A373930

/-! ## A373930.P10857048244611101352

`∑[A373931(n+1)]`
-/

namespace A373930.P10857048244611101352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373930.P10857048244611101352

namespace A373930

/-- `∑[A373931(n+1)]` -/
def P10857048244611101352.Spec : Prop :=
  ∀ n, P10857048244611101352.a n = A373930 (n + 1)

end A373930

/-! ## A373930.P2470418586745992233

`∑[∑[A373932(n+1)]]`
-/

namespace A373930.P2470418586745992233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373930.P2470418586745992233

namespace A373930

/-- `∑[∑[A373932(n+1)]]` -/
def P2470418586745992233.Spec : Prop :=
  ∀ n, P2470418586745992233.a n = A373930 (n + 1)

end A373930

/-! ## A373930.P11199495026985945988

`A017901(A017017(n+1))`
-/

namespace A373930.P11199495026985945988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017017 (n + 1)).toNat

end

end A373930.P11199495026985945988

namespace A373930

/-- `A017901(A017017(n+1))` -/
def P11199495026985945988.Spec : Prop :=
  ∀ n, P11199495026985945988.a n = A373930 (n + 1)

end A373930

/-! ## A373930.P17222604061234388476

`A017901(A017005(n+1)+1)`
-/

namespace A373930.P17222604061234388476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017005 (n + 1) + 1).toNat

end

end A373930.P17222604061234388476

namespace A373930

/-- `A017901(A017005(n+1)+1)` -/
def P17222604061234388476.Spec : Prop :=
  ∀ n, P17222604061234388476.a n = A373930 (n + 1)

end A373930

/-! ## A373930.P9023324235146567312

`A017901(A016993(n+1)+2)`
-/

namespace A373930.P9023324235146567312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A016993 (n + 1) + 2).toNat

end

end A373930.P9023324235146567312

namespace A373930

/-- `A017901(A016993(n+1)+2)` -/
def P9023324235146567312.Spec : Prop :=
  ∀ n, P9023324235146567312.a n = A373930 (n + 1)

end A373930

/-! ## A373930.P9011271360506978159

`A017901(A017029(n+1)-1)`
-/

namespace A373930.P9011271360506978159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017029 (n + 1) - 1).toNat

end

end A373930.P9011271360506978159

namespace A373930

/-- `A017901(A017029(n+1)-1)` -/
def P9011271360506978159.Spec : Prop :=
  ∀ n, P9011271360506978159.a n = A373930 (n + 1)

end A373930

/-! ## A373930.P12861508286986943383

`A017901(A017041(n+1)-2)`
-/

namespace A373930.P12861508286986943383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017041 (n + 1) - 2).toNat

end

end A373930.P12861508286986943383

namespace A373930

/-- `A017901(A017041(n+1)-2)` -/
def P12861508286986943383.Spec : Prop :=
  ∀ n, P12861508286986943383.a n = A373930 (n + 1)

end A373930

/-! ## A373930.P837780537202045151

`A017901(A112414(2*n+1)+n)`
-/

namespace A373930.P837780537202045151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A112414 (2 * n + 1) + (n : ℤ)).toNat

end

end A373930.P837780537202045151

namespace A373930

/-- `A017901(A112414(2*n+1)+n)` -/
def P837780537202045151.Spec : Prop :=
  ∀ n, P837780537202045151.a n = A373930 (n + 1)

end A373930

/-!
# A373931: Number of compositions of 7*n-5 into parts 1 and 7.

The programs for A373931, the canonical program `A373931.P3318070194164780924` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373931 has offset 1).

The definition of A373931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373931.P3318070194164780924

`A005709(7*(n+1)-5)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373931

/-- `A005709(7*(n+1)-5)` -/
def P3318070194164780924.Spec : Prop :=
  ∀ n, P3318070194164780924.a n = A373931 (n + 1)

theorem P3318070194164780924.correct : P3318070194164780924.Spec := by
  intro n
  simp only [A373931, Nat.add_sub_cancel]

end A373931

/-! ## A373931.P16053803782317815228

`∑[∑[A373907(n)]]`
-/

namespace A373931.P16053803782317815228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373931.P16053803782317815228

namespace A373931

/-- `∑[∑[A373907(n)]]` -/
def P16053803782317815228.Spec : Prop :=
  ∀ n, P16053803782317815228.a n = A373931 (n + 1)

end A373931

/-! ## A373931.P7569985079388222083

`∑[A373932(n+1)]`
-/

namespace A373931.P7569985079388222083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373931.P7569985079388222083

namespace A373931

/-- `∑[A373932(n+1)]` -/
def P7569985079388222083.Spec : Prop :=
  ∀ n, P7569985079388222083.a n = A373931 (n + 1)

end A373931

/-! ## A373931.P11537718523946005141

`A017901(A017005(n+1))`
-/

namespace A373931.P11537718523946005141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017005 (n + 1)).toNat

end

end A373931.P11537718523946005141

namespace A373931

/-- `A017901(A017005(n+1))` -/
def P11537718523946005141.Spec : Prop :=
  ∀ n, P11537718523946005141.a n = A373931 (n + 1)

end A373931

/-! ## A373931.P3498963566136548873

`A017901(A016993(n+1)+1)`
-/

namespace A373931.P3498963566136548873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A016993 (n + 1) + 1).toNat

end

end A373931.P3498963566136548873

namespace A373931

/-- `A017901(A016993(n+1)+1)` -/
def P3498963566136548873.Spec : Prop :=
  ∀ n, P3498963566136548873.a n = A373931 (n + 1)

end A373931

/-! ## A373931.P3155772464782132265

`A017901(A017017(n+1)-1)`
-/

namespace A373931.P3155772464782132265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017017 (n + 1) - 1).toNat

end

end A373931.P3155772464782132265

namespace A373931

/-- `A017901(A017017(n+1)-1)` -/
def P3155772464782132265.Spec : Prop :=
  ∀ n, P3155772464782132265.a n = A373931 (n + 1)

end A373931

/-! ## A373931.P11091426598681698040

`A017901(A017029(n+1)-2)`
-/

namespace A373931.P11091426598681698040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017029 (n + 1) - 2).toNat

end

end A373931.P11091426598681698040

namespace A373931

/-- `A017901(A017029(n+1)-2)` -/
def P11091426598681698040.Spec : Prop :=
  ∀ n, P11091426598681698040.a n = A373931 (n + 1)

end A373931

/-!
# A373932: Number of compositions of 7*n-6 into parts 1 and 7.

The programs for A373932, the canonical program `A373932.P1065963213325569315` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373932 has offset 1).

The definition of A373932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373932.P1065963213325569315

`A005709(7*(n+1)-6)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373932

/-- `A005709(7*(n+1)-6)` -/
def P1065963213325569315.Spec : Prop :=
  ∀ n, P1065963213325569315.a n = A373932 (n + 1)

theorem P1065963213325569315.correct : P1065963213325569315.Spec := by
  intro n
  simp only [A373932, Nat.add_sub_cancel]

end A373932

/-! ## A373932.P1343878366697379659

`∑[A373907(n)]`
-/

namespace A373932.P1343878366697379659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373932.P1343878366697379659

namespace A373932

/-- `∑[A373907(n)]` -/
def P1343878366697379659.Spec : Prop :=
  ∀ n, P1343878366697379659.a n = A373932 (n + 1)

end A373932

/-! ## A373932.P6403791307561865581

`A017901(A016993(n+1))`
-/

namespace A373932.P6403791307561865581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A016993 (n + 1)).toNat

end

end A373932.P6403791307561865581

namespace A373932

/-- `A017901(A016993(n+1))` -/
def P6403791307561865581.Spec : Prop :=
  ∀ n, P6403791307561865581.a n = A373932 (n + 1)

end A373932

/-! ## A373932.P641596097854388203

`A017901(A017053(n)+2)`
-/

namespace A373932.P641596097854388203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017053 n + 2).toNat

end

end A373932.P641596097854388203

namespace A373932

/-- `A017901(A017053(n)+2)` -/
def P641596097854388203.Spec : Prop :=
  ∀ n, P641596097854388203.a n = A373932 (n + 1)

end A373932

/-! ## A373932.P6045044590058455453

`A017901(A017005(n+1)-1)`
-/

namespace A373932.P6045044590058455453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017005 (n + 1) - 1).toNat

end

end A373932.P6045044590058455453

namespace A373932

/-- `A017901(A017005(n+1)-1)` -/
def P6045044590058455453.Spec : Prop :=
  ∀ n, P6045044590058455453.a n = A373932 (n + 1)

end A373932

/-! ## A373932.P3882353437371039301

`A017901(A017017(n+1)-2)`
-/

namespace A373932.P3882353437371039301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017017 (n + 1) - 2).toNat

end

end A373932.P3882353437371039301

namespace A373932

/-- `A017901(A017017(n+1)-2)` -/
def P3882353437371039301.Spec : Prop :=
  ∀ n, P3882353437371039301.a n = A373932 (n + 1)

end A373932

/-! ## A373932.P8093973867476732878

`A373931(n+2)-(A373931(n+1)+A373907(n+1))`
-/

namespace A373932.P8093973867476732878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373931 (n + 2) - (A373931 (n + 1) + A373907 (n + 1))

end

end A373932.P8093973867476732878

namespace A373932

/-- `A373931(n+2)-(A373931(n+1)+A373907(n+1))` -/
def P8093973867476732878.Spec : Prop :=
  ∀ n, P8093973867476732878.a n = A373932 (n + 1)

end A373932

/-!
# A373933: Number of compositions of 7*n-1 into parts 6 and 7.

The programs for A373933, the canonical program `A373933.P14223243970326009727` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373933 has offset 1).

The definition of A373933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373933.P15154880725233057001

`A017847(7*(n+1)-1)`
-/

namespace A373933.P15154880725233057001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (7 * (n + 1) - 1)

end

end A373933.P15154880725233057001

namespace A373933

/-- `A017847(7*(n+1)-1)` -/
def P15154880725233057001.Spec : Prop :=
  ∀ n, P15154880725233057001.a n = A373933 (n + 1)

end A373933

/-! ## A373933.P14223243970326009727

`A373934(n+2)-A373934(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373933

/-- `A373934(n+2)-A373934(n+1)` -/
def P14223243970326009727.Spec : Prop :=
  ∀ n, P14223243970326009727.a n = A373933 (n + 1)

theorem P14223243970326009727.correct : P14223243970326009727.Spec := by
  intro n
  simp only [A373933, Nat.add_sub_cancel]

end A373933

/-! ## A373933.P17505613231305030243

`∑[A373912(n)]`
-/

namespace A373933.P17505613231305030243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373933.P17505613231305030243

namespace A373933

/-- `∑[A373912(n)]` -/
def P17505613231305030243.Spec : Prop :=
  ∀ n, P17505613231305030243.a n = A373933 (n + 1)

end A373933

/-! ## A373933.P5574849406185382514

`∑[∑[A369809(n)]]`
-/

namespace A373933.P5574849406185382514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369809 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373933.P5574849406185382514

namespace A373933

/-- `∑[∑[A369809(n)]]` -/
def P5574849406185382514.Spec : Prop :=
  ∀ n, P5574849406185382514.a n = A373933 (n + 1)

end A373933

/-! ## A373933.P12620743040573349433

`A127841(7*(n+2))`
-/

namespace A373933.P12620743040573349433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (7 * (n + 2))

end

end A373933.P12620743040573349433

namespace A373933

/-- `A127841(7*(n+2))` -/
def P12620743040573349433.Spec : Prop :=
  ∀ n, P12620743040573349433.a n = A373933 (n + 1)

end A373933

/-! ## A373933.P9303860363171071847

`Δ[A373934(n+1)]`
-/

namespace A373933.P9303860363171071847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373933.P9303860363171071847

namespace A373933

/-- `Δ[A373934(n+1)]` -/
def P9303860363171071847.Spec : Prop :=
  ∀ n, P9303860363171071847.a n = A373933 (n + 1)

theorem P9303860363171071847.correct : P9303860363171071847.Spec := by
  intro n
  simp only [A373933, Nat.add_sub_cancel, A373933.P9303860363171071847.f1, A373933.P9303860363171071847.a, A373933.P14223243970326009727.a, SequenceMachineLib.memo_apply]

end A373933

/-! ## A373933.P170243833125807584

`Δ[Δ[A373935(n+1)]]`
-/

namespace A373933.P170243833125807584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373935 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373933.P170243833125807584

namespace A373933

/-- `Δ[Δ[A373935(n+1)]]` -/
def P170243833125807584.Spec : Prop :=
  ∀ n, P170243833125807584.a n = A373933 (n + 1)

end A373933

/-!
# A373934: Number of compositions of 7*n-2 into parts 6 and 7.

The programs for A373934, the canonical program `A373934.P2638291770601585293` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373934 has offset 1).

The definition of A373934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373934.P17748203890274687689

`A017847(7*(n+1)-2)`
-/

namespace A373934.P17748203890274687689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (7 * (n + 1) - 2)

end

end A373934.P17748203890274687689

namespace A373934

/-- `A017847(7*(n+1)-2)` -/
def P17748203890274687689.Spec : Prop :=
  ∀ n, P17748203890274687689.a n = A373934 (n + 1)

end A373934

/-! ## A373934.P2638291770601585293

`A373935(n+2)-A373935(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373934

/-- `A373935(n+2)-A373935(n+1)` -/
def P2638291770601585293.Spec : Prop :=
  ∀ n, P2638291770601585293.a n = A373934 (n + 1)

theorem P2638291770601585293.correct : P2638291770601585293.Spec := by
  intro n
  simp only [A373934, Nat.add_sub_cancel]

end A373934

/-! ## A373934.P9775532559037507127

`A127841(A017053(n+1))`
-/

namespace A373934.P9775532559037507127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017053 (n + 1)).toNat

end

end A373934.P9775532559037507127

namespace A373934

/-- `A127841(A017053(n+1))` -/
def P9775532559037507127.Spec : Prop :=
  ∀ n, P9775532559037507127.a n = A373934 (n + 1)

end A373934

/-! ## A373934.P12551495894136714594

`Δ[A373935(n+1)]`
-/

namespace A373934.P12551495894136714594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373934.P12551495894136714594

namespace A373934

/-- `Δ[A373935(n+1)]` -/
def P12551495894136714594.Spec : Prop :=
  ∀ n, P12551495894136714594.a n = A373934 (n + 1)

theorem P12551495894136714594.correct : P12551495894136714594.Spec := by
  intro n
  simp only [A373934, Nat.add_sub_cancel, A373934.P12551495894136714594.f1, A373934.P12551495894136714594.a, A373934.P2638291770601585293.a, SequenceMachineLib.memo_apply]

end A373934

/-! ## A373934.P11556650932478868954

`Δ[Δ[A373936(n+1)]]`
-/

namespace A373934.P11556650932478868954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373936 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373934.P11556650932478868954

namespace A373934

/-- `Δ[Δ[A373936(n+1)]]` -/
def P11556650932478868954.Spec : Prop :=
  ∀ n, P11556650932478868954.a n = A373934 (n + 1)

end A373934

/-! ## A373934.P13851947165776754120

`Δ[Δ[Δ[A373937(n+1)]]]`
-/

namespace A373934.P13851947165776754120
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373934.P13851947165776754120

namespace A373934

/-- `Δ[Δ[Δ[A373937(n+1)]]]` -/
def P13851947165776754120.Spec : Prop :=
  ∀ n, P13851947165776754120.a n = A373934 (n + 1)

end A373934

/-!
# A373935: Number of compositions of 7*n-3 into parts 6 and 7.

The programs for A373935, the canonical program `A373935.P5688816994832969295` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373935 has offset 1).

The definition of A373935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373935.P18340656221843254704

`A017847(7*(n+1)-3)`
-/

namespace A373935.P18340656221843254704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (7 * (n + 1) - 3)

end

end A373935.P18340656221843254704

namespace A373935

/-- `A017847(7*(n+1)-3)` -/
def P18340656221843254704.Spec : Prop :=
  ∀ n, P18340656221843254704.a n = A373935 (n + 1)

end A373935

/-! ## A373935.P5688816994832969295

`A373936(n+2)-A373936(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A373935

/-- `A373936(n+2)-A373936(n+1)` -/
def P5688816994832969295.Spec : Prop :=
  ∀ n, P5688816994832969295.a n = A373935 (n + 1)

theorem P5688816994832969295.correct : P5688816994832969295.Spec := by
  intro n
  simp only [A373935, Nat.add_sub_cancel]

end A373935

/-! ## A373935.P8118471255568543350

`A127841(A017041(n+1))`
-/

namespace A373935.P8118471255568543350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017041 (n + 1)).toNat

end

end A373935.P8118471255568543350

namespace A373935

/-- `A127841(A017041(n+1))` -/
def P8118471255568543350.Spec : Prop :=
  ∀ n, P8118471255568543350.a n = A373935 (n + 1)

end A373935

/-! ## A373935.P1849435494514164972

`A127841(A017029(n+1)+1)`
-/

namespace A373935.P1849435494514164972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017029 (n + 1) + 1).toNat

end

end A373935.P1849435494514164972

namespace A373935

/-- `A127841(A017029(n+1)+1)` -/
def P1849435494514164972.Spec : Prop :=
  ∀ n, P1849435494514164972.a n = A373935 (n + 1)

end A373935

/-! ## A373935.P7948203996746000856

`A127841(A017017(n+1)+2)`
-/

namespace A373935.P7948203996746000856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017017 (n + 1) + 2).toNat

end

end A373935.P7948203996746000856

namespace A373935

/-- `A127841(A017017(n+1)+2)` -/
def P7948203996746000856.Spec : Prop :=
  ∀ n, P7948203996746000856.a n = A373935 (n + 1)

end A373935

/-! ## A373935.P13727910401029422461

`A127841(A017053(n+1)-1)`
-/

namespace A373935.P13727910401029422461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017053 (n + 1) - 1).toNat

end

end A373935.P13727910401029422461

namespace A373935

/-- `A127841(A017053(n+1)-1)` -/
def P13727910401029422461.Spec : Prop :=
  ∀ n, P13727910401029422461.a n = A373935 (n + 1)

end A373935

/-! ## A373935.P14824926347175561659

`Δ[A373936(n+1)]`
-/

namespace A373935.P14824926347175561659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373935.P14824926347175561659

namespace A373935

/-- `Δ[A373936(n+1)]` -/
def P14824926347175561659.Spec : Prop :=
  ∀ n, P14824926347175561659.a n = A373935 (n + 1)

theorem P14824926347175561659.correct : P14824926347175561659.Spec := by
  intro n
  simp only [A373935, Nat.add_sub_cancel, A373935.P14824926347175561659.f1, A373935.P14824926347175561659.a, A373935.P5688816994832969295.a, SequenceMachineLib.memo_apply]

end A373935

/-! ## A373935.P1258156714971485415

`Δ[Δ[A373937(n+1)]]`
-/

namespace A373935.P1258156714971485415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373935.P1258156714971485415

namespace A373935

/-- `Δ[Δ[A373937(n+1)]]` -/
def P1258156714971485415.Spec : Prop :=
  ∀ n, P1258156714971485415.a n = A373935 (n + 1)

end A373935

/-!
# A373936: Number of compositions of 7*n-4 into parts 6 and 7.

The programs for A373936, the canonical program `A373936.P11787379451298363639` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373936 has offset 1).

The definition of A373936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373936.P3324821259581951635

`A017847(7*(n+1)-4)`
-/

namespace A373936.P3324821259581951635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (7 * (n + 1) - 4)

end

end A373936.P3324821259581951635

namespace A373936

/-- `A017847(7*(n+1)-4)` -/
def P3324821259581951635.Spec : Prop :=
  ∀ n, P3324821259581951635.a n = A373936 (n + 1)

end A373936

/-! ## A373936.P11787379451298363639

`A373937(n+2)-A373937(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A373936

/-- `A373937(n+2)-A373937(n+1)` -/
def P11787379451298363639.Spec : Prop :=
  ∀ n, P11787379451298363639.a n = A373936 (n + 1)

theorem P11787379451298363639.correct : P11787379451298363639.Spec := by
  intro n
  simp only [A373936, Nat.add_sub_cancel]

end A373936

/-! ## A373936.P1489266919265319019

`Δ[A373937(n+1)]`
-/

namespace A373936.P1489266919265319019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373936.P1489266919265319019

namespace A373936

/-- `Δ[A373937(n+1)]` -/
def P1489266919265319019.Spec : Prop :=
  ∀ n, P1489266919265319019.a n = A373936 (n + 1)

theorem P1489266919265319019.correct : P1489266919265319019.Spec := by
  intro n
  simp only [A373936, Nat.add_sub_cancel, A373936.P1489266919265319019.f1, A373936.P1489266919265319019.a, A373936.P11787379451298363639.a, SequenceMachineLib.memo_apply]

end A373936

/-! ## A373936.P7564412542705580587

`A127841(A017029(n+1))`
-/

namespace A373936.P7564412542705580587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017029 (n + 1)).toNat

end

end A373936.P7564412542705580587

namespace A373936

/-- `A127841(A017029(n+1))` -/
def P7564412542705580587.Spec : Prop :=
  ∀ n, P7564412542705580587.a n = A373936 (n + 1)

end A373936

/-! ## A373936.P14362004939466077947

`A127841(A017017(n+1)+1)`
-/

namespace A373936.P14362004939466077947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017017 (n + 1) + 1).toNat

end

end A373936.P14362004939466077947

namespace A373936

/-- `A127841(A017017(n+1)+1)` -/
def P14362004939466077947.Spec : Prop :=
  ∀ n, P14362004939466077947.a n = A373936 (n + 1)

end A373936

/-! ## A373936.P10256174767878602419

`A127841(A017041(n+1)-1)`
-/

namespace A373936.P10256174767878602419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017041 (n + 1) - 1).toNat

end

end A373936.P10256174767878602419

namespace A373936

/-- `A127841(A017041(n+1)-1)` -/
def P10256174767878602419.Spec : Prop :=
  ∀ n, P10256174767878602419.a n = A373936 (n + 1)

end A373936

/-! ## A373936.P6494998732391829928

`A127841(A017053(n+1)-2)`
-/

namespace A373936.P6494998732391829928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017053 (n + 1) - 2).toNat

end

end A373936.P6494998732391829928

namespace A373936

/-- `A127841(A017053(n+1)-2)` -/
def P6494998732391829928.Spec : Prop :=
  ∀ n, P6494998732391829928.a n = A373936 (n + 1)

end A373936

/-! ## A373936.P17133133272719699799

`Δ[Δ[A369809(n+1)]]`
-/

namespace A373936.P17133133272719699799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369809 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373936.P17133133272719699799

namespace A373936

/-- `Δ[Δ[A369809(n+1)]]` -/
def P17133133272719699799.Spec : Prop :=
  ∀ n, P17133133272719699799.a n = A373936 (n + 1)

end A373936

/-!
# A373937: Number of compositions of 7*n-5 into parts 6 and 7.

The programs for A373937, the canonical program `A373937.P8686742850087483701` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373937 has offset 1).

The definition of A373937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373937.P8686742850087483701

`A017847(7*(n+1)-5)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373937

/-- `A017847(7*(n+1)-5)` -/
def P8686742850087483701.Spec : Prop :=
  ∀ n, P8686742850087483701.a n = A373937 (n + 1)

theorem P8686742850087483701.correct : P8686742850087483701.Spec := by
  intro n
  simp only [A373937, Nat.add_sub_cancel]

end A373937

/-! ## A373937.P17743238624647281683

`A369809(n+2)-A369809(n+1)`
-/

namespace A373937.P17743238624647281683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369809 (n + 2) - A369809 (n + 1)

end

end A373937.P17743238624647281683

namespace A373937

/-- `A369809(n+2)-A369809(n+1)` -/
def P17743238624647281683.Spec : Prop :=
  ∀ n, P17743238624647281683.a n = A373937 (n + 1)

end A373937

/-! ## A373937.P11082831760382735335

`A127841(A017017(n+1))`
-/

namespace A373937.P11082831760382735335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017017 (n + 1)).toNat

end

end A373937.P11082831760382735335

namespace A373937

/-- `A127841(A017017(n+1))` -/
def P11082831760382735335.Spec : Prop :=
  ∀ n, P11082831760382735335.a n = A373937 (n + 1)

end A373937

/-! ## A373937.P17728733700368196376

`A127841(A016993(n+1)+2)`
-/

namespace A373937.P17728733700368196376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A016993 (n + 1) + 2).toNat

end

end A373937.P17728733700368196376

namespace A373937

/-- `A127841(A016993(n+1)+2)` -/
def P17728733700368196376.Spec : Prop :=
  ∀ n, P17728733700368196376.a n = A373937 (n + 1)

end A373937

/-! ## A373937.P6795458793639121946

`A127841(A017029(n+1)-1)`
-/

namespace A373937.P6795458793639121946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017029 (n + 1) - 1).toNat

end

end A373937.P6795458793639121946

namespace A373937

/-- `A127841(A017029(n+1)-1)` -/
def P6795458793639121946.Spec : Prop :=
  ∀ n, P6795458793639121946.a n = A373937 (n + 1)

end A373937

/-! ## A373937.P5600634988542076521

`A127841(A017041(n+1)-2)`
-/

namespace A373937.P5600634988542076521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A017041 (n + 1) - 2).toNat

end

end A373937.P5600634988542076521

namespace A373937

/-- `A127841(A017041(n+1)-2)` -/
def P5600634988542076521.Spec : Prop :=
  ∀ n, P5600634988542076521.a n = A373937 (n + 1)

end A373937

/-! ## A373937.P10344547795999701726

`Δ[A369809(n+1)]`
-/

namespace A373937.P10344547795999701726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373937.P10344547795999701726

namespace A373937

/-- `Δ[A369809(n+1)]` -/
def P10344547795999701726.Spec : Prop :=
  ∀ n, P10344547795999701726.a n = A373937 (n + 1)

end A373937

/-! ## A373937.P5539722154923826482

`Δ[Δ[A373912(n)]]`
-/

namespace A373937.P5539722154923826482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373937.P5539722154923826482

namespace A373937

/-- `Δ[Δ[A373912(n)]]` -/
def P5539722154923826482.Spec : Prop :=
  ∀ n, P5539722154923826482.a n = A373937 (n + 1)

end A373937

/-!
# A373940: Expansion of e.g.f. 1/(1 - (exp(x) - 1)^5).

The programs for A373940, there is no canonical definition to state claims against.
-/

/-! ## A373940.P11105071994297783841

`A357868(eq[5, A025581(n)])`
-/

namespace A373940.P11105071994297783841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A373940.P11105071994297783841

/-!
# A373941: Numbers whose base-2 representation is a "nested" palindrome.

The programs for A373941, there is no canonical definition to state claims against.
-/

/-! ## A373941.P3179378425034183647

`A206913(A265537(n²))`
-/

namespace A373941.P3179378425034183647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (A265537 (n ^ 2)).toNat

end

end A373941.P3179378425034183647

/-! ## A373941.P2991845864242991597

`A206914(A265533(A206913(n²)))`
-/

namespace A373941.P2991845864242991597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (A265533 (A206913 (n ^ 2)).toNat).toNat

end

end A373941.P2991845864242991597

/-! ## A373941.P4454360089079693047

`A175298(A206913(A265537(n*n)))`
-/

namespace A373941.P4454360089079693047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A206913 (A265537 (n * n)).toNat).toNat

end

end A373941.P4454360089079693047

/-! ## A373941.P10855843013780288132

`A206914(A265535(A206913(n*n)))`
-/

namespace A373941.P10855843013780288132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (A265535 (A206913 (n * n)).toNat).toNat

end

end A373941.P10855843013780288132

/-! ## A373941.P8372330115365492717

`A006995(lt[A016115(n+1), A270831(2*n+4)])`
-/

namespace A373941.P8372330115365492717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (2 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A373941.P8372330115365492717

/-!
# A373942: Indices of records in A045537.

The programs for A373942, there is no canonical definition to state claims against.
-/

/-! ## A373942.P11734076489754689250

`A339660(A233082(n+1))+A244159(n)`
-/

namespace A373942.P11734076489754689250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339660 (A233082 (n + 1)).toNat + A244159 n

end

end A373942.P11734076489754689250

/-! ## A373942.P5700722734969555296

`A244159(n)+A064272(A234310(2*n+3))`
-/

namespace A373942.P5700722734969555296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n + A064272 (A234310 (2 * n + 3)).toNat

end

end A373942.P5700722734969555296

/-!
# A373943: a(n) is the cardinality of the set containing all rational numbers of the form 2 <= m/2^(bigomega(m) - 1) <= n.

The programs for A373943, there is no canonical definition to state claims against.
-/

/-! ## A373943.P4778386676419947085

`A374022(n+1)+A000720(n+1)`
-/

namespace A373943.P4778386676419947085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374022 (n + 1) + A000720 (n + 1)

end

end A373943.P4778386676419947085

/-! ## A373943.P10011788643198664278

`A374022(n+1)+∑[A010051(n+1)]`
-/

namespace A373943.P10011788643198664278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374022 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373943.P10011788643198664278

/-!
# A373947: Halved and run-compressed first differences of consecutive odd primes.

The programs for A373947, the canonical program `A373947.P8857403306256119126` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373947 has offset 1).

The definition of A373947 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373947.P8857403306256119126

`A037201(n+2)/2`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A373947

/-- `A037201(n+2)/2` -/
def P8857403306256119126.Spec : Prop :=
  ∀ n, P8857403306256119126.a n = (A373947 (n + 1) : ℚ)

end A373947

/-! ## A373947.P9007658963460847248

`A001281(A037201(n+2))`
-/

namespace A373947.P9007658963460847248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A037201 (n + 2)).toNat

end

end A373947.P9007658963460847248

namespace A373947

/-- `A001281(A037201(n+2))` -/
def P9007658963460847248.Spec : Prop :=
  ∀ n, P9007658963460847248.a n = A373947 (n + 1)

end A373947

/-! ## A373947.P2924777398200308698

`A028334(A333214(n+2))`
-/

namespace A373947.P2924777398200308698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A333214 (n + 2)).toNat

end

end A373947.P2924777398200308698

namespace A373947

/-- `A028334(A333214(n+2))` -/
def P2924777398200308698.Spec : Prop :=
  ∀ n, P2924777398200308698.a n = A373947 (n + 1)

end A373947

/-! ## A373947.P16849159798593405842

`A004526(A037201(n+2)+1)`
-/

namespace A373947.P16849159798593405842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A037201 (n + 2) + 1).toNat

end

end A373947.P16849159798593405842

namespace A373947

/-- `A004526(A037201(n+2)+1)` -/
def P16849159798593405842.Spec : Prop :=
  ∀ n, P16849159798593405842.a n = A373947 (n + 1)

end A373947

/-! ## A373947.P16922992618654216679

`A245710(A037201(n+2)+1)`
-/

namespace A373947.P16922992618654216679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 (A037201 (n + 2) + 1).toNat

end

end A373947.P16922992618654216679

namespace A373947

/-- `A245710(A037201(n+2)+1)` -/
def P16922992618654216679.Spec : Prop :=
  ∀ n, P16922992618654216679.a n = A373947 (n + 1)

end A373947

/-! ## A373947.P5870358647418687584

`A001057(A037201(n+2)-1)`
-/

namespace A373947.P5870358647418687584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A037201 (n + 2) - 1).toNat

end

end A373947.P5870358647418687584

namespace A373947

/-- `A001057(A037201(n+2)-1)` -/
def P5870358647418687584.Spec : Prop :=
  ∀ n, P5870358647418687584.a n = A373947 (n + 1)

end A373947

/-! ## A373947.P2434024997935908672

`A008619(A037201(n+2)-1)`
-/

namespace A373947.P2434024997935908672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A037201 (n + 2) - 1).toNat

end

end A373947.P2434024997935908672

namespace A373947

/-- `A008619(A037201(n+2)-1)` -/
def P2434024997935908672.Spec : Prop :=
  ∀ n, P2434024997935908672.a n = A373947 (n + 1)

end A373947

/-! ## A373947.P7327742930732576629

`A065033(A037201(n+2)-1)`
-/

namespace A373947.P7327742930732576629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A037201 (n + 2) - 1).toNat

end

end A373947.P7327742930732576629

namespace A373947

/-- `A065033(A037201(n+2)-1)` -/
def P7327742930732576629.Spec : Prop :=
  ∀ n, P7327742930732576629.a n = A373947 (n + 1)

end A373947

/-! ## A373947.P13960937506924315655

`A002265(2*A037201(n+2))`
-/

namespace A373947.P13960937506924315655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A037201 (n + 2)).toNat

end

end A373947.P13960937506924315655

namespace A373947

/-- `A002265(2*A037201(n+2))` -/
def P13960937506924315655.Spec : Prop :=
  ∀ n, P13960937506924315655.a n = A373947 (n + 1)

end A373947

/-! ## A373947.P10131865191375428256

`A013632(A178943(n+2))/2`
-/

namespace A373947.P10131865191375428256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013632 (A178943 (n + 2)).toNat : ℚ) / 2

end

end A373947.P10131865191375428256

namespace A373947

/-- `A013632(A178943(n+2))/2` -/
def P10131865191375428256.Spec : Prop :=
  ∀ n, P10131865191375428256.a n = (A373947 (n + 1) : ℚ)

end A373947

/-!
# A373948: Run-compression encoded as a transformation of compositions in standard order.

The programs for A373948, there is no canonical definition to state claims against.
-/

/-! ## A373948.P10179281372788460459

`n%A001223(A230551(n+1))`
-/

namespace A373948.P10179281372788460459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A001223 (A230551 (n + 1)).toNat)

end

end A373948.P10179281372788460459

/-!
# A373949: Triangle read by rows where T(n,k) is the number of integer compositions of n such that replacing each run of repeated parts with a single part (run-compression) yields a composition of k.

The programs for A373949, there is no canonical definition to state claims against.
-/

/-! ## A373949.P13078170819475490625

`A373951(∑[2*n]%comp[∑[n]])`
-/

namespace A373949.P13078170819475490625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373951 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A373949.P13078170819475490625

/-! ## A373949.P142126605608762620

`A373951(∑[char[∑[n]]]²-n-1)`
-/

namespace A373949.P142126605608762620
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373951 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A373949.P142126605608762620

/-! ## A373949.P13961588912264020653

`A373951(A061579(n))%A168596(n)`
-/

namespace A373949.P13961588912264020653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373951 (A061579 n).toNat) (A168596 n)

end

end A373949.P13961588912264020653

/-! ## A373949.P16998571464453140841

`gcd(A083927(n), A373951(A061579(n)))`
-/

namespace A373949.P16998571464453140841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083927 n) (A373951 (A061579 n).toNat)

end

end A373949.P16998571464453140841

/-! ## A373949.P9119333938341405846

`A373951(A061579(n))+A000007(n+2)`
-/

namespace A373949.P9119333938341405846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373951 (A061579 n).toNat + A000007 (n + 2)

end

end A373949.P9119333938341405846

/-!
# A373950: Number of integer compositions of n containing two adjacent ones and no other runs.

The programs for A373950, there is no canonical definition to state claims against.
-/

/-! ## A373950.P7991648325345608842

`A373949(abs(2-∑[n+1]))`
-/

namespace A373950.P7991648325345608842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A373950.P7991648325345608842

/-! ## A373950.P9729512151198396739

`A373949(A347553(n+3)-1)-A000007(n)`
-/

namespace A373950.P9729512151198396739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 (A347553 (n + 3) - 1).toNat - A000007 n

end

end A373950.P9729512151198396739

/-! ## A373950.P6316311832000892655

`A373949(A347553(n+3)-1)%A070933(n)`
-/

namespace A373950.P6316311832000892655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373949 (A347553 (n + 3) - 1).toNat) (A070933 n)

end

end A373950.P6316311832000892655

/-! ## A373950.P12331589661002763243

`A373951(A318715(n+1)+∑[n]+1)`
-/

namespace A373950.P12331589661002763243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373951 (A318715 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A373950.P12331589661002763243

/-! ## A373950.P6605107073985282362

`A373951(A028310(n*(n+1)/2)+1)`
-/

namespace A373950.P6605107073985282362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373951 (A028310 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat + 1).toNat

end

end A373950.P6605107073985282362

/-!
# A373951: Triangle read by rows where T(n,k) is the number of integer compositions of n such that replacing each run of repeated parts with a single part (run-compression) yields a composition of n - k.

The programs for A373951, there is no canonical definition to state claims against.
-/

/-! ## A373951.P12917516826817822453

`A373949(∑[2*n]%comp[∑[n]])`
-/

namespace A373951.P12917516826817822453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A373951.P12917516826817822453

/-! ## A373951.P12358926889391883585

`A373949(∑[char[∑[n]]]²-(n+1))`
-/

namespace A373951.P12358926889391883585
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A373951.P12358926889391883585

/-! ## A373951.P9981568545072504851

`A373949(A061579(n))%A109725(n)`
-/

namespace A373951.P9981568545072504851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373949 (A061579 n).toNat) (A109725 n)

end

end A373951.P9981568545072504851

/-! ## A373951.P6958694589787157035

`A373949(A061579(n))+A000035(2*(n+2))`
-/

namespace A373951.P6958694589787157035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 (A061579 n).toNat + A000035 (2 * (n + 2))

end

end A373951.P6958694589787157035

/-! ## A373951.P17930811321638850998

`A033999(2*(n+2))*A373949(A061579(n))`
-/

namespace A373951.P17930811321638850998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 2)) * A373949 (A061579 n).toNat

end

end A373951.P17930811321638850998

/-! ## A373951.P11974399631342442589

`A373949(∑[A198954(n)-1])%A003388(n+1)`
-/

namespace A373951.P11974399631342442589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A003388 (n + 1))

end

end A373951.P11974399631342442589

/-! ## A373951.P1271310145123167644

`A008966(A045320(n+1))*A373949(A061579(n))`
-/

namespace A373951.P1271310145123167644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A045320 (n + 1)).toNat * A373949 (A061579 n).toNat

end

end A373951.P1271310145123167644

/-! ## A373951.P8024578197489106867

`A008966(A136087(n+1))*A373949(A061579(n))`
-/

namespace A373951.P8024578197489106867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A136087 (n + 1)).toNat * A373949 (A061579 n).toNat

end

end A373951.P8024578197489106867

/-! ## A373951.P2419671643440931711

`A373949(A061579(n))*A381635(A265332(n+1))`
-/

namespace A373951.P2419671643440931711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 (A061579 n).toNat * A381635 (A265332 (n + 1)).toNat

end

end A373951.P2419671643440931711

/-! ## A373951.P13890329675597749787

`A373949(A061579(n))*A381635(A353861(n+1))`
-/

namespace A373951.P13890329675597749787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 (A061579 n).toNat * A381635 (A353861 (n + 1)).toNat

end

end A373951.P13890329675597749787

/-!
# A373952: Number of integer compositions of n whose run-compression sums to 3.

The programs for A373952, the canonical program `A373952.P9018593955600060429` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373952 has offset 0).

The definition of A373952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373952.P9018593955600060429

`a(n-2)+3-n%3` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A373952

/-- `a(n-2)+3-n%3` -/
def P9018593955600060429.Spec : Prop :=
  ∀ n, P9018593955600060429.a n = A373952 n

theorem P9018593955600060429.correct : P9018593955600060429.Spec := by
  intro n
  simp only [A373952]

end A373952

/-! ## A373952.P18171787440967062329

`A028310(n)-A117447(n)`
-/

namespace A373952.P18171787440967062329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A117447 n

end

end A373952.P18171787440967062329

namespace A373952

/-- `A028310(n)-A117447(n)` -/
def P18171787440967062329.Spec : Prop :=
  ∀ n, P18171787440967062329.a n = A373952 n

end A373952

/-! ## A373952.P10168045230303119932

`A004277(n)-A235451(n)`
-/

namespace A373952.P10168045230303119932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A235451 n

end

end A373952.P10168045230303119932

namespace A373952

/-- `A004277(n)-A235451(n)` -/
def P10168045230303119932.Spec : Prop :=
  ∀ n, P10168045230303119932.a n = A373952 n

end A373952

/-! ## A373952.P11571002488433046820

`A147534(n+1)-A040001(n)`
-/

namespace A373952.P11571002488433046820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (n + 1) - A040001 n

end

end A373952.P11571002488433046820

namespace A373952

/-- `A147534(n+1)-A040001(n)` -/
def P11571002488433046820.Spec : Prop :=
  ∀ n, P11571002488433046820.a n = A373952 n

end A373952

/-! ## A373952.P18147072962505862119

`A131055(n+1)-A130196(n)`
-/

namespace A373952.P18147072962505862119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (n + 1) - A130196 n

end

end A373952.P18147072962505862119

namespace A373952

/-- `A131055(n+1)-A130196(n)` -/
def P18147072962505862119.Spec : Prop :=
  ∀ n, P18147072962505862119.a n = A373952 n

end A373952

/-! ## A373952.P3013322438197944354

`A047242(n+1)-A063196(n+1)`
-/

namespace A373952.P3013322438197944354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1) - A063196 (n + 1)

end

end A373952.P3013322438197944354

namespace A373952

/-- `A047242(n+1)-A063196(n+1)` -/
def P3013322438197944354.Spec : Prop :=
  ∀ n, P3013322438197944354.a n = A373952 n

end A373952

/-! ## A373952.P7911901223547263012

`A047465(n+1)-A063199(n+1)`
-/

namespace A373952.P7911901223547263012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047465 (n + 1) - A063199 (n + 1)

end

end A373952.P7911901223547263012

namespace A373952

/-- `A047465(n+1)-A063199(n+1)` -/
def P7911901223547263012.Spec : Prop :=
  ∀ n, P7911901223547263012.a n = A373952 n

end A373952

/-! ## A373952.P15853045801580264226

`A083031(n+1)%A047241(n+1)`
-/

namespace A373952.P15853045801580264226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083031 (n + 1)) (A047241 (n + 1))

end

end A373952.P15853045801580264226

namespace A373952

/-- `A083031(n+1)%A047241(n+1)` -/
def P15853045801580264226.Spec : Prop :=
  ∀ n, P15853045801580264226.a n = A373952 n

end A373952

/-! ## A373952.P13131857672831269913

`A264120(n+1)-A335129(n+3)`
-/

namespace A373952.P13131857672831269913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264120 (n + 1) - A335129 (n + 3)

end

end A373952.P13131857672831269913

namespace A373952

/-- `A264120(n+1)-A335129(n+3)` -/
def P13131857672831269913.Spec : Prop :=
  ∀ n, P13131857672831269913.a n = A373952 n

end A373952

/-! ## A373952.P12235431131132919639

`n+1-A239140(A000217(2*n+1))`
-/

namespace A373952.P12235431131132919639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A239140 (A000217 (2 * n + 1)).toNat

end

end A373952.P12235431131132919639

namespace A373952

/-- `n+1-A239140(A000217(2*n+1))` -/
def P12235431131132919639.Spec : Prop :=
  ∀ n, P12235431131132919639.a n = A373952 n

end A373952

/-!
# A373953: Sum of run-compression of the n-th integer composition in standard order.

The programs for A373953, there is no canonical definition to state claims against.
-/

/-! ## A373953.P5318590872349985212

`A029837(A373948(n)+1)`
-/

namespace A373953.P5318590872349985212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A373948 n + 1).toNat

end

end A373953.P5318590872349985212

/-! ## A373953.P7019276668071202883

`ceil(log2(n+1))-A373954(n)`
-/

namespace A373953.P7019276668071202883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ - A373954 n

end

end A373953.P7019276668071202883

/-! ## A373953.P17854021414107713459

`A389600(n)+A124767(n)`
-/

namespace A373953.P17854021414107713459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389600 n + A124767 n

end

end A373953.P17854021414107713459

/-! ## A373953.P15421834062589012995

`A070941(n)-(A373954(n)+1)`
-/

namespace A373953.P15421834062589012995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - (A373954 n + 1)

end

end A373953.P15421834062589012995

/-! ## A373953.P4069249251107471481

`abs(A029837(n+1)-A373954(n))`
-/

namespace A373953.P4069249251107471481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029837 (n + 1) - A373954 n|

end

end A373953.P4069249251107471481

/-! ## A373953.P13241340474777728637

`A070939(2*n)-(A373954(n)+1)`
-/

namespace A373953.P13241340474777728637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n) - (A373954 n + 1)

end

end A373953.P13241340474777728637

/-! ## A373953.P9571469957658872110

`A033865(A029837(n+1)-A373954(n))`
-/

namespace A373953.P9571469957658872110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A029837 (n + 1) - A373954 n).toNat

end

end A373953.P9571469957658872110

/-! ## A373953.P3036180536526152413

`A065039(A029837(n+1)-A373954(n))`
-/

namespace A373953.P3036180536526152413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (A029837 (n + 1) - A373954 n).toNat

end

end A373953.P3036180536526152413

/-! ## A373953.P4769996919789499448

`A050608(A070939(2*n)-A373954(n))`
-/

namespace A373953.P4769996919789499448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050608 (A070939 (2 * n) - A373954 n).toNat

end

end A373953.P4769996919789499448

/-! ## A373953.P18306103511012474885

`A099165(A070939(2*n)-A373954(n))`
-/

namespace A373953.P18306103511012474885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099165 (A070939 (2 * n) - A373954 n).toNat

end

end A373953.P18306103511012474885

/-!
# A373954: Excess run-compression of standard compositions. Sum of all parts minus sum of compressed parts of the n-th integer composition in standard order.

The programs for A373954, there is no canonical definition to state claims against.
-/

/-! ## A373954.P12830915104184185482

`A029837(n+1)-A373953(n)`
-/

namespace A373954.P12830915104184185482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A373953 n

end

end A373954.P12830915104184185482

/-! ## A373954.P18093836607258396491

`A374516(n)-A065120(n)`
-/

namespace A373954.P18093836607258396491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 n - A065120 n

end

end A373954.P18093836607258396491

/-! ## A373954.P16553612231605789907

`A374684(n)-A374630(n)`
-/

namespace A373954.P16553612231605789907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 n - A374630 n

end

end A373954.P16553612231605789907

/-! ## A373954.P13516154855102621990

`A374758(n)-A374741(n)`
-/

namespace A373954.P13516154855102621990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n - A374741 n

end

end A373954.P13516154855102621990

/-! ## A373954.P5690926822285908508

`∑[A209229(n)]-A373953(n)`
-/

namespace A373954.P5690926822285908508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A373953 n

end

end A373954.P5690926822285908508

/-! ## A373954.P16937285146755341364

`∑[char[A011782(n)]]-A373953(n)`
-/

namespace A373954.P16937285146755341364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A373953 n

end

end A373954.P16937285146755341364

/-! ## A373954.P10943672088185766446

`A374516(n)-A374516(A373948(n))`
-/

namespace A373954.P10943672088185766446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 n - A374516 (A373948 n).toNat

end

end A373954.P10943672088185766446

/-! ## A373954.P7504861679775440437

`A374684(n)-A374684(A373948(n))`
-/

namespace A373954.P7504861679775440437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 n - A374684 (A373948 n).toNat

end

end A373954.P7504861679775440437

/-! ## A373954.P1313902148302520539

`A374758(n)-A374758(A373948(n))`
-/

namespace A373954.P1313902148302520539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n - A374758 (A373948 n).toNat

end

end A373954.P1313902148302520539

/-! ## A373954.P6031451636273621000

`A373953(A353855(n))-A373953(n)`
-/

namespace A373954.P6031451636273621000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A353855 n).toNat - A373953 n

end

end A373954.P6031451636273621000

/-!
# A373955: Numbers k such that the k-th integer composition in standard order contains two adjacent ones and no other runs.

The programs for A373955, there is no canonical definition to state claims against.
-/

/-! ## A373955.P15176364171931118326

`eq[1, A373954(n)]`
-/

namespace A373955.P15176364171931118326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373955.P15176364171931118326

/-! ## A373955.P3609934804454436059

`eq[A065120(n)+1, A374516(n)]`
-/

namespace A373955.P3609934804454436059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373955.P3609934804454436059

/-! ## A373955.P3430444343039852440

`eq[A374630(n)+1, A374684(n)]`
-/

namespace A373955.P3430444343039852440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373955.P3430444343039852440

/-! ## A373955.P6999607525211230470

`eq[A374741(n)+1, A374758(n)]`
-/

namespace A373955.P6999607525211230470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373955.P6999607525211230470

/-! ## A373955.P4601460516393496908

`eq[1, A029837(n+1)-A373953(n)]`
-/

namespace A373955.P4601460516393496908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A373953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373955.P4601460516393496908

/-!
# A373956: Greatest sum of run-compression of a permutation of the prime indices of n.

The programs for A373956, there is no canonical definition to state claims against.
-/

/-! ## A373956.P6523372167232620535

`A056239(n+1)-A374248(n+1)`
-/

namespace A373956.P6523372167232620535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A374248 (n + 1)

end

end A373956.P6523372167232620535

/-! ## A373956.P6300850037381192752

`A329622(n+1)+A324888(n+1)-A333842(n+1)*A374246(n+1)`
-/

namespace A373956.P6300850037381192752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (n + 1) + A324888 (n + 1) - A333842 (n + 1) * A374246 (n + 1)

end

end A373956.P6300850037381192752

/-! ## A373956.P324631313477286271

`A356159(n+1)+A355930(n+1)-A333842(n+1)*A374246(n+1)`
-/

namespace A373956.P324631313477286271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356159 (n + 1) + A355930 (n + 1) - A333842 (n + 1) * A374246 (n + 1)

end

end A373956.P324631313477286271

/-! ## A373956.P11193233977758645572

`A319225(n+1)%A171887(n+1)`
-/

namespace A373956.P11193233977758645572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319225 (n + 1)) (A171887 (n + 1))

end

end A373956.P11193233977758645572

/-! ## A373956.P14238293913356024969

`abs(A330415(n+1)%A180403(n+5))`
-/

namespace A373956.P14238293913356024969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A330415 (n + 1)) (A180403 (n + 5))|

end

end A373956.P14238293913356024969

/-!
# A373957: Greatest number of runs in a permutation of the prime factors of n.

The programs for A373957, there is no canonical definition to state claims against.
-/

/-! ## A373957.P4289771660170130199

`A001222(n+1)-A374246(n+1)`
-/

namespace A373957.P4289771660170130199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A374246 (n + 1)

end

end A373957.P4289771660170130199

/-! ## A373957.P7394093663734177477

`A374247(n+1)+∑{p}[n+1, gcd(n, #)]`
-/

namespace A373957.P7394093663734177477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A373957.P7394093663734177477

/-! ## A373957.P4296110508421572186

`A304037(A238745(n+1))`
-/

namespace A373957.P4296110508421572186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304037 (A238745 (n + 1)).toNat

end

end A373957.P4296110508421572186

/-! ## A373957.P7112822352253873079

`A373953(A238745(n+1)-1)`
-/

namespace A373957.P7112822352253873079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A238745 (n + 1) - 1).toNat

end

end A373957.P7112822352253873079

/-! ## A373957.P14013789853027985651

`A374630(A238745(n+1)-1)`
-/

namespace A373957.P14013789853027985651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 (A238745 (n + 1) - 1).toNat

end

end A373957.P14013789853027985651

/-! ## A373957.P17915555585750196325

`Δ[A022559(n)]-A374246(n+1)`
-/

namespace A373957.P17915555585750196325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A374246 (n + 1)

end

end A373957.P17915555585750196325

/-! ## A373957.P667586230713838832

`A374247(n+1)+A001221(n+1)`
-/

namespace A373957.P667586230713838832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) + A001221 (n + 1)

end

end A373957.P667586230713838832

/-! ## A373957.P3120301160168709711

`A374247(n+1)+A001222(∏{p}[n+1, #])`
-/

namespace A373957.P3120301160168709711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A373957.P3120301160168709711

/-! ## A373957.P17304096402827822005

`A374247(n+1)+A001222(A181819(n+1))`
-/

namespace A373957.P17304096402827822005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) + A001222 (A181819 (n + 1)).toNat

end

end A373957.P17304096402827822005

/-! ## A373957.P6177642989043142024

`A374247(n+1)+A355741(A000040(n+1))`
-/

namespace A373957.P6177642989043142024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (n + 1) + A355741 (A000040 (n + 1)).toNat

end

end A373957.P6177642989043142024

/-!
# A373958: Number of compositions of 6*n-3 into parts 1 and 6.

The programs for A373958, the canonical program `A373958.P360899032508483722` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373958 has offset 1).

The definition of A373958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373958.P360899032508483722

`A005708(6*(n+1)-3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373958

/-- `A005708(6*(n+1)-3)` -/
def P360899032508483722.Spec : Prop :=
  ∀ n, P360899032508483722.a n = A373958 (n + 1)

theorem P360899032508483722.correct : P360899032508483722.Spec := by
  intro n
  simp only [A373958, Nat.add_sub_cancel]

end A373958

/-! ## A373958.P12973132884033630806

`A373638(Δ[n²])`
-/

namespace A373958.P12973132884033630806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373638 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A373958.P12973132884033630806

namespace A373958

/-- `A373638(Δ[n²])` -/
def P12973132884033630806.Spec : Prop :=
  ∀ n, P12973132884033630806.a n = A373958 (n + 1)

end A373958

/-! ## A373958.P7080072160978338203

`∑[A373959(n+1)]`
-/

namespace A373958.P7080072160978338203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373958.P7080072160978338203

namespace A373958

/-- `∑[A373959(n+1)]` -/
def P7080072160978338203.Spec : Prop :=
  ∀ n, P7080072160978338203.a n = A373958 (n + 1)

end A373958

/-! ## A373958.P16088456962836723719

`A373654(3*n+2)`
-/

namespace A373958.P16088456962836723719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (3 * n + 2)

end

end A373958.P16088456962836723719

namespace A373958

/-- `A373654(3*n+2)` -/
def P16088456962836723719.Spec : Prop :=
  ∀ n, P16088456962836723719.a n = A373958 (n + 1)

end A373958

/-! ## A373958.P14160926919645052001

`∑[∑[A373960(n+1)]]`
-/

namespace A373958.P14160926919645052001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373958.P14160926919645052001

namespace A373958

/-- `∑[∑[A373960(n+1)]]` -/
def P14160926919645052001.Spec : Prop :=
  ∀ n, P14160926919645052001.a n = A373958 (n + 1)

end A373958

/-! ## A373958.P5802765051163996565

`∑[A373653(2*n+1)]`
-/

namespace A373958.P5802765051163996565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373653 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373958.P5802765051163996565

namespace A373958

/-- `∑[A373653(2*n+1)]` -/
def P5802765051163996565.Spec : Prop :=
  ∀ n, P5802765051163996565.a n = A373958 (n + 1)

end A373958

/-! ## A373958.P11295945575577561608

`A017900(Δ[3*(n+1)²])`
-/

namespace A373958.P11295945575577561608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A373958.P11295945575577561608

namespace A373958

/-- `A017900(Δ[3*(n+1)²])` -/
def P11295945575577561608.Spec : Prop :=
  ∀ n, P11295945575577561608.a n = A373958 (n + 1)

end A373958

/-! ## A373958.P18207837633864303528

`Δ[A017900(A016969(n)-1)]`
-/

namespace A373958.P18207837633864303528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016969 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373958.P18207837633864303528

namespace A373958

/-- `Δ[A017900(A016969(n)-1)]` -/
def P18207837633864303528.Spec : Prop :=
  ∀ n, P18207837633864303528.a n = A373958 (n + 1)

end A373958

/-! ## A373958.P12279094826308922658

`A373302(n+2)-(A373959(n+2)+A373302(n+1))`
-/

namespace A373958.P12279094826308922658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373302 (n + 2) - (A373959 (n + 2) + A373302 (n + 1))

end

end A373958.P12279094826308922658

namespace A373958

/-- `A373302(n+2)-(A373959(n+2)+A373302(n+1))` -/
def P12279094826308922658.Spec : Prop :=
  ∀ n, P12279094826308922658.a n = A373958 (n + 1)

end A373958

/-!
# A373959: Number of compositions of 6*n-4 into parts 1 and 6.

The programs for A373959, the canonical program `A373959.P5461141806012168502` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373959 has offset 1).

The definition of A373959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373959.P5461141806012168502

`A005708(6*(n+1)-4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373959

/-- `A005708(6*(n+1)-4)` -/
def P5461141806012168502.Spec : Prop :=
  ∀ n, P5461141806012168502.a n = A373959 (n + 1)

theorem P5461141806012168502.correct : P5461141806012168502.Spec := by
  intro n
  simp only [A373959, Nat.add_sub_cancel]

end A373959

/-! ## A373959.P11445214460317666905

`A373653(Δ[n²])`
-/

namespace A373959.P11445214460317666905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373653 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A373959.P11445214460317666905

namespace A373959

/-- `A373653(Δ[n²])` -/
def P11445214460317666905.Spec : Prop :=
  ∀ n, P11445214460317666905.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P3913758750231306977

`∑[∑[A371125(n)]]`
-/

namespace A373959.P3913758750231306977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373959.P3913758750231306977

namespace A373959

/-- `∑[∑[A371125(n)]]` -/
def P3913758750231306977.Spec : Prop :=
  ∀ n, P3913758750231306977.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P8812450728348150619

`∑[A373960(n+1)]`
-/

namespace A373959.P8812450728348150619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373959.P8812450728348150619

namespace A373959

/-- `∑[A373960(n+1)]` -/
def P8812450728348150619.Spec : Prop :=
  ∀ n, P8812450728348150619.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P7561727901572727779

`A373639(3*n+1)`
-/

namespace A373959.P7561727901572727779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373639 (3 * n + 1)

end

end A373959.P7561727901572727779

namespace A373959

/-- `A373639(3*n+1)` -/
def P7561727901572727779.Spec : Prop :=
  ∀ n, P7561727901572727779.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P17048579463335416961

`∑[∑[A373638(2*n)]]`
-/

namespace A373959.P17048579463335416961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373638 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373959.P17048579463335416961

namespace A373959

/-- `∑[∑[A373638(2*n)]]` -/
def P17048579463335416961.Spec : Prop :=
  ∀ n, P17048579463335416961.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P11759248469250993884

`A017900(A016933(n+1))`
-/

namespace A373959.P11759248469250993884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016933 (n + 1)).toNat

end

end A373959.P11759248469250993884

namespace A373959

/-- `A017900(A016933(n+1))` -/
def P11759248469250993884.Spec : Prop :=
  ∀ n, P11759248469250993884.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P15078497277190562980

`A017900(A016921(n+1)+1)`
-/

namespace A373959.P15078497277190562980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016921 (n + 1) + 1).toNat

end

end A373959.P15078497277190562980

namespace A373959

/-- `A017900(A016921(n+1)+1)` -/
def P15078497277190562980.Spec : Prop :=
  ∀ n, P15078497277190562980.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P107703043274833171

`A017900(A271114(n+1)+1)`
-/

namespace A373959.P107703043274833171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A271114 (n + 1) + 1).toNat

end

end A373959.P107703043274833171

namespace A373959

/-- `A017900(A271114(n+1)+1)` -/
def P107703043274833171.Spec : Prop :=
  ∀ n, P107703043274833171.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P11873197176860086225

`A017900(A008458(n+1)+2)`
-/

namespace A373959.P11873197176860086225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A008458 (n + 1) + 2).toNat

end

end A373959.P11873197176860086225

namespace A373959

/-- `A017900(A008458(n+1)+2)` -/
def P11873197176860086225.Spec : Prop :=
  ∀ n, P11873197176860086225.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P4174999304293101967

`A017900(A008588(n+1)+2)`
-/

namespace A373959.P4174999304293101967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A008588 (n + 1) + 2).toNat

end

end A373959.P4174999304293101967

namespace A373959

/-- `A017900(A008588(n+1)+2)` -/
def P4174999304293101967.Spec : Prop :=
  ∀ n, P4174999304293101967.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P3417111332864406599

`A017900(A016957(n+1)-2)`
-/

namespace A373959.P3417111332864406599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016957 (n + 1) - 2).toNat

end

end A373959.P3417111332864406599

namespace A373959

/-- `A017900(A016957(n+1)-2)` -/
def P3417111332864406599.Spec : Prop :=
  ∀ n, P3417111332864406599.a n = A373959 (n + 1)

end A373959

/-! ## A373959.P9119643367063989649

`A373958(n+2)-(A373960(n+2)+A373958(n+1))`
-/

namespace A373959.P9119643367063989649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373958 (n + 2) - (A373960 (n + 2) + A373958 (n + 1))

end

end A373959.P9119643367063989649

namespace A373959

/-- `A373958(n+2)-(A373960(n+2)+A373958(n+1))` -/
def P9119643367063989649.Spec : Prop :=
  ∀ n, P9119643367063989649.a n = A373959 (n + 1)

end A373959

/-!
# A373960: Number of compositions of 6*n-5 into parts 1 and 6.

The programs for A373960, the canonical program `A373960.P12350189268790730355` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373960 has offset 1).

The definition of A373960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373960.P12350189268790730355

`A005708(6*(n+1)-5)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373960

/-- `A005708(6*(n+1)-5)` -/
def P12350189268790730355.Spec : Prop :=
  ∀ n, P12350189268790730355.a n = A373960 (n + 1)

theorem P12350189268790730355.correct : P12350189268790730355.Spec := by
  intro n
  simp only [A373960, Nat.add_sub_cancel]

end A373960

/-! ## A373960.P3533744564774357452

`∑[A371125(n)]`
-/

namespace A373960.P3533744564774357452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373960.P3533744564774357452

namespace A373960

/-- `∑[A371125(n)]` -/
def P3533744564774357452.Spec : Prop :=
  ∀ n, P3533744564774357452.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P6861136130454137639

`∑[A373638(2*n)]`
-/

namespace A373960.P6861136130454137639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373638 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373960.P6861136130454137639

namespace A373960

/-- `∑[A373638(2*n)]` -/
def P6861136130454137639.Spec : Prop :=
  ∀ n, P6861136130454137639.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P6196563100018010198

`∑[A373639(3*n)]`
-/

namespace A373960.P6196563100018010198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373639 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373960.P6196563100018010198

namespace A373960

/-- `∑[A373639(3*n)]` -/
def P6196563100018010198.Spec : Prop :=
  ∀ n, P6196563100018010198.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P13723082444626669097

`A373654(3*n+1)`
-/

namespace A373960.P13723082444626669097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (3 * n + 1)

end

end A373960.P13723082444626669097

namespace A373960

/-- `A373654(3*n+1)` -/
def P13723082444626669097.Spec : Prop :=
  ∀ n, P13723082444626669097.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P6064122352340553501

`∑[∑[A373653(2*n)]]`
-/

namespace A373960.P6064122352340553501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373653 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373960.P6064122352340553501

namespace A373960

/-- `∑[∑[A373653(2*n)]]` -/
def P6064122352340553501.Spec : Prop :=
  ∀ n, P6064122352340553501.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P12515203313140783903

`A017900(A016921(n+1))`
-/

namespace A373960.P12515203313140783903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016921 (n + 1)).toNat

end

end A373960.P12515203313140783903

namespace A373960

/-- `A017900(A016921(n+1))` -/
def P12515203313140783903.Spec : Prop :=
  ∀ n, P12515203313140783903.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P15022269812473450328

`A017900(A271114(n+1))`
-/

namespace A373960.P15022269812473450328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A271114 (n + 1)).toNat

end

end A373960.P15022269812473450328

namespace A373960

/-- `A017900(A271114(n+1))` -/
def P15022269812473450328.Spec : Prop :=
  ∀ n, P15022269812473450328.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P12221875527918027167

`A017900(A016969(n)+2)`
-/

namespace A373960.P12221875527918027167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016969 n + 2).toNat

end

end A373960.P12221875527918027167

namespace A373960

/-- `A017900(A016969(n)+2)` -/
def P12221875527918027167.Spec : Prop :=
  ∀ n, P12221875527918027167.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P10186223739332232133

`Δ[A017900(A008458(n)+2)]`
-/

namespace A373960.P10186223739332232133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A008458 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373960.P10186223739332232133

namespace A373960

/-- `Δ[A017900(A008458(n)+2)]` -/
def P10186223739332232133.Spec : Prop :=
  ∀ n, P10186223739332232133.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P8197434160235058795

`A017900(A008458(n+1)+1)`
-/

namespace A373960.P8197434160235058795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A008458 (n + 1) + 1).toNat

end

end A373960.P8197434160235058795

namespace A373960

/-- `A017900(A008458(n+1)+1)` -/
def P8197434160235058795.Spec : Prop :=
  ∀ n, P8197434160235058795.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P14316980540372000398

`A017900(A008588(n+1)+1)`
-/

namespace A373960.P14316980540372000398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A008588 (n + 1) + 1).toNat

end

end A373960.P14316980540372000398

namespace A373960

/-- `A017900(A008588(n+1)+1)` -/
def P14316980540372000398.Spec : Prop :=
  ∀ n, P14316980540372000398.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P3531550864424370972

`A017900(A016933(n+1)-1)`
-/

namespace A373960.P3531550864424370972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016933 (n + 1) - 1).toNat

end

end A373960.P3531550864424370972

namespace A373960

/-- `A017900(A016933(n+1)-1)` -/
def P3531550864424370972.Spec : Prop :=
  ∀ n, P3531550864424370972.a n = A373960 (n + 1)

end A373960

/-! ## A373960.P9646308217864028895

`A373959(n+2)-(A373959(n+1)+A371125(n+1))`
-/

namespace A373960.P9646308217864028895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373959 (n + 2) - (A373959 (n + 1) + A371125 (n + 1))

end

end A373960.P9646308217864028895

namespace A373960

/-- `A373959(n+2)-(A373959(n+1)+A371125(n+1))` -/
def P9646308217864028895.Spec : Prop :=
  ∀ n, P9646308217864028895.a n = A373960 (n + 1)

end A373960

/-!
# A373961: Number of compositions of 6*n-1 into parts 5 and 6.

The programs for A373961, the canonical program `A373961.P18328240497616127407` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373961 has offset 1).

The definition of A373961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373961.P11111870324460355641

`A017837(6*(n+1)-1)`
-/

namespace A373961.P11111870324460355641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (6 * (n + 1) - 1)

end

end A373961.P11111870324460355641

namespace A373961

/-- `A017837(6*(n+1)-1)` -/
def P11111870324460355641.Spec : Prop :=
  ∀ n, P11111870324460355641.a n = A373961 (n + 1)

end A373961

/-! ## A373961.P18328240497616127407

`A373962(n+2)-A373962(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373961

/-- `A373962(n+2)-A373962(n+1)` -/
def P18328240497616127407.Spec : Prop :=
  ∀ n, P18328240497616127407.a n = A373961 (n + 1)

theorem P18328240497616127407.correct : P18328240497616127407.Spec := by
  intro n
  simp only [A373961, Nat.add_sub_cancel]

end A373961

/-! ## A373961.P9086945621400307196

`∑[A107025(n)]`
-/

namespace A373961.P9086945621400307196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373961.P9086945621400307196

namespace A373961

/-- `∑[A107025(n)]` -/
def P9086945621400307196.Spec : Prop :=
  ∀ n, P9086945621400307196.a n = A373961 (n + 1)

end A373961

/-! ## A373961.P4490400482402470217

`A391843(2*n)`
-/

namespace A373961.P4490400482402470217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391843 (2 * n)

end

end A373961.P4490400482402470217

namespace A373961

/-- `A391843(2*n)` -/
def P4490400482402470217.Spec : Prop :=
  ∀ n, P4490400482402470217.a n = A373961 (n + 1)

end A373961

/-! ## A373961.P13761408809019293396

`A390020(3*n)`
-/

namespace A373961.P13761408809019293396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390020 (3 * n)

end

end A373961.P13761408809019293396

namespace A373961

/-- `A390020(3*n)` -/
def P13761408809019293396.Spec : Prop :=
  ∀ n, P13761408809019293396.a n = A373961 (n + 1)

end A373961

/-! ## A373961.P4499409328534712370

`∑[∑[A369794(n)]]`
-/

namespace A373961.P4499409328534712370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373961.P4499409328534712370

namespace A373961

/-- `∑[∑[A369794(n)]]` -/
def P4499409328534712370.Spec : Prop :=
  ∀ n, P4499409328534712370.a n = A373961 (n + 1)

end A373961

/-! ## A373961.P1704967000771681774

`∑[A392271(2*n)]`
-/

namespace A373961.P1704967000771681774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392271 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373961.P1704967000771681774

namespace A373961

/-- `∑[A392271(2*n)]` -/
def P1704967000771681774.Spec : Prop :=
  ∀ n, P1704967000771681774.a n = A373961 (n + 1)

end A373961

/-! ## A373961.P17186385814918345465

`∑[A391265(3*n)]`
-/

namespace A373961.P17186385814918345465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391265 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373961.P17186385814918345465

namespace A373961

/-- `∑[A391265(3*n)]` -/
def P17186385814918345465.Spec : Prop :=
  ∀ n, P17186385814918345465.a n = A373961 (n + 1)

end A373961

/-! ## A373961.P14774458442431006634

`A127840(6*(n+2))`
-/

namespace A373961.P14774458442431006634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (6 * (n + 2))

end

end A373961.P14774458442431006634

namespace A373961

/-- `A127840(6*(n+2))` -/
def P14774458442431006634.Spec : Prop :=
  ∀ n, P14774458442431006634.a n = A373961 (n + 1)

end A373961

/-! ## A373961.P2108323179241339673

`Δ[A373962(n+1)]`
-/

namespace A373961.P2108323179241339673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373961.P2108323179241339673

namespace A373961

/-- `Δ[A373962(n+1)]` -/
def P2108323179241339673.Spec : Prop :=
  ∀ n, P2108323179241339673.a n = A373961 (n + 1)

theorem P2108323179241339673.correct : P2108323179241339673.Spec := by
  intro n
  simp only [A373961, Nat.add_sub_cancel, A373961.P2108323179241339673.f1, A373961.P2108323179241339673.a, A373961.P18328240497616127407.a, SequenceMachineLib.memo_apply]

end A373961

/-! ## A373961.P9450887717752847782

`Δ[Δ[A373963(n+1)]]`
-/

namespace A373961.P9450887717752847782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373961.P9450887717752847782

namespace A373961

/-- `Δ[Δ[A373963(n+1)]]` -/
def P9450887717752847782.Spec : Prop :=
  ∀ n, P9450887717752847782.a n = A373961 (n + 1)

end A373961

/-! ## A373961.P1344543824270143672

`Δ[Δ[A392271(2*n+1)]]`
-/

namespace A373961.P1344543824270143672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392271 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373961.P1344543824270143672

namespace A373961

/-- `Δ[Δ[A392271(2*n+1)]]` -/
def P1344543824270143672.Spec : Prop :=
  ∀ n, P1344543824270143672.a n = A373961 (n + 1)

end A373961

/-!
# A373962: Number of compositions of 6*n-2 into parts 5 and 6.

The programs for A373962, the canonical program `A373962.P14560065925070970160` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373962 has offset 1).

The definition of A373962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373962.P16921386970002411594

`A017837(6*(n+1)-2)`
-/

namespace A373962.P16921386970002411594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (6 * (n + 1) - 2)

end

end A373962.P16921386970002411594

namespace A373962

/-- `A017837(6*(n+1)-2)` -/
def P16921386970002411594.Spec : Prop :=
  ∀ n, P16921386970002411594.a n = A373962 (n + 1)

end A373962

/-! ## A373962.P14560065925070970160

`A373963(n+2)-A373963(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A373962

/-- `A373963(n+2)-A373963(n+1)` -/
def P14560065925070970160.Spec : Prop :=
  ∀ n, P14560065925070970160.a n = A373962 (n + 1)

theorem P14560065925070970160.correct : P14560065925070970160.Spec := by
  intro n
  simp only [A373962, Nat.add_sub_cancel]

end A373962

/-! ## A373962.P1331481037487811837

`A391265(3*n+2)`
-/

namespace A373962.P1331481037487811837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391265 (3 * n + 2)

end

end A373962.P1331481037487811837

namespace A373962

/-- `A391265(3*n+2)` -/
def P1331481037487811837.Spec : Prop :=
  ∀ n, P1331481037487811837.a n = A373962 (n + 1)

end A373962

/-! ## A373962.P14247798253964581418

`A127840(A016969(n+1))`
-/

namespace A373962.P14247798253964581418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A016969 (n + 1)).toNat

end

end A373962.P14247798253964581418

namespace A373962

/-- `A127840(A016969(n+1))` -/
def P14247798253964581418.Spec : Prop :=
  ∀ n, P14247798253964581418.a n = A373962 (n + 1)

end A373962

/-! ## A373962.P5528864935549517855

`A127840(A016957(n+1)+1)`
-/

namespace A373962.P5528864935549517855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A016957 (n + 1) + 1).toNat

end

end A373962.P5528864935549517855

namespace A373962

/-- `A127840(A016957(n+1)+1)` -/
def P5528864935549517855.Spec : Prop :=
  ∀ n, P5528864935549517855.a n = A373962 (n + 1)

end A373962

/-! ## A373962.P17626006362816950425

`∑[∑[A107025(n)]-A107025(n)]`
-/

namespace A373962.P17626006362816950425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A107025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373962.P17626006362816950425

namespace A373962

/-- `∑[∑[A107025(n)]-A107025(n)]` -/
def P17626006362816950425.Spec : Prop :=
  ∀ n, P17626006362816950425.a n = A373962 (n + 1)

end A373962

/-! ## A373962.P12259927016217307491

`Δ[A373963(n+1)]`
-/

namespace A373962.P12259927016217307491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373962.P12259927016217307491

namespace A373962

/-- `Δ[A373963(n+1)]` -/
def P12259927016217307491.Spec : Prop :=
  ∀ n, P12259927016217307491.a n = A373962 (n + 1)

theorem P12259927016217307491.correct : P12259927016217307491.Spec := by
  intro n
  simp only [A373962, Nat.add_sub_cancel, A373962.P12259927016217307491.f1, A373962.P12259927016217307491.a, A373962.P14560065925070970160.a, SequenceMachineLib.memo_apply]

end A373962

/-! ## A373962.P7468166530679335543

`Δ[A392271(2*n+1)]`
-/

namespace A373962.P7468166530679335543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392271 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373962.P7468166530679335543

namespace A373962

/-- `Δ[A392271(2*n+1)]` -/
def P7468166530679335543.Spec : Prop :=
  ∀ n, P7468166530679335543.a n = A373962 (n + 1)

end A373962

/-! ## A373962.P1242174857020783049

`A390034(2*n)-A373961(n+1)`
-/

namespace A373962.P1242174857020783049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390034 (2 * n) - A373961 (n + 1)

end

end A373962.P1242174857020783049

namespace A373962

/-- `A390034(2*n)-A373961(n+1)` -/
def P1242174857020783049.Spec : Prop :=
  ∀ n, P1242174857020783049.a n = A373962 (n + 1)

end A373962

/-! ## A373962.P16964206473255085645

`A390034(2*n)-A391843(2*n)`
-/

namespace A373962.P16964206473255085645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390034 (2 * n) - A391843 (2 * n)

end

end A373962.P16964206473255085645

namespace A373962

/-- `A390034(2*n)-A391843(2*n)` -/
def P16964206473255085645.Spec : Prop :=
  ∀ n, P16964206473255085645.a n = A373962 (n + 1)

end A373962

/-! ## A373962.P7355982659815661435

`Δ[Δ[A373964(n+1)]]`
-/

namespace A373962.P7355982659815661435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373964 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373962.P7355982659815661435

namespace A373962

/-- `Δ[Δ[A373964(n+1)]]` -/
def P7355982659815661435.Spec : Prop :=
  ∀ n, P7355982659815661435.a n = A373962 (n + 1)

end A373962

/-!
# A373963: Number of compositions of 6*n-3 into parts 5 and 6.

The programs for A373963, the canonical program `A373963.P9718531231219531280` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373963 has offset 1).

The definition of A373963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373963.P6450401601692177927

`A017837(6*(n+1)-3)`
-/

namespace A373963.P6450401601692177927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (6 * (n + 1) - 3)

end

end A373963.P6450401601692177927

namespace A373963

/-- `A017837(6*(n+1)-3)` -/
def P6450401601692177927.Spec : Prop :=
  ∀ n, P6450401601692177927.a n = A373963 (n + 1)

end A373963

/-! ## A373963.P9718531231219531280

`A373964(n+2)-A373964(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A373963

/-- `A373964(n+2)-A373964(n+1)` -/
def P9718531231219531280.Spec : Prop :=
  ∀ n, P9718531231219531280.a n = A373963 (n + 1)

theorem P9718531231219531280.correct : P9718531231219531280.Spec := by
  intro n
  simp only [A373963, Nat.add_sub_cancel]

end A373963

/-! ## A373963.P14293422352255108625

`A392271(Δ[n²])`
-/

namespace A373963.P14293422352255108625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392271 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A373963.P14293422352255108625

namespace A373963

/-- `A392271(Δ[n²])` -/
def P14293422352255108625.Spec : Prop :=
  ∀ n, P14293422352255108625.a n = A373963 (n + 1)

end A373963

/-! ## A373963.P5359310927547959877

`A127840(A016957(n+1))`
-/

namespace A373963.P5359310927547959877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A016957 (n + 1)).toNat

end

end A373963.P5359310927547959877

namespace A373963

/-- `A127840(A016957(n+1))` -/
def P5359310927547959877.Spec : Prop :=
  ∀ n, P5359310927547959877.a n = A373963 (n + 1)

end A373963

/-! ## A373963.P3008681479621743648

`A127840(A016969(n+1)-1)`
-/

namespace A373963.P3008681479621743648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A016969 (n + 1) - 1).toNat

end

end A373963.P3008681479621743648

namespace A373963

/-- `A127840(A016969(n+1)-1)` -/
def P3008681479621743648.Spec : Prop :=
  ∀ n, P3008681479621743648.a n = A373963 (n + 1)

end A373963

/-! ## A373963.P1279804785492939118

`Δ[A373964(n+1)]`
-/

namespace A373963.P1279804785492939118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373963.P1279804785492939118

namespace A373963

/-- `Δ[A373964(n+1)]` -/
def P1279804785492939118.Spec : Prop :=
  ∀ n, P1279804785492939118.a n = A373963 (n + 1)

theorem P1279804785492939118.correct : P1279804785492939118.Spec := by
  intro n
  simp only [A373963, Nat.add_sub_cancel, A373963.P1279804785492939118.f1, A373963.P1279804785492939118.a, A373963.P9718531231219531280.a, SequenceMachineLib.memo_apply]

end A373963

/-! ## A373963.P10923542600683019373

`Δ[Δ[A369794(n+1)]]`
-/

namespace A373963.P10923542600683019373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373963.P10923542600683019373

namespace A373963

/-- `Δ[Δ[A369794(n+1)]]` -/
def P10923542600683019373.Spec : Prop :=
  ∀ n, P10923542600683019373.a n = A373963 (n + 1)

end A373963

/-!
# A373964: Number of compositions of 6*n-4 into parts 5 and 6.

The programs for A373964, the canonical program `A373964.P12592844199490846618` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373964 has offset 1).

The definition of A373964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373964.P12592844199490846618

`A017837(6*(n+1)-4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373964

/-- `A017837(6*(n+1)-4)` -/
def P12592844199490846618.Spec : Prop :=
  ∀ n, P12592844199490846618.a n = A373964 (n + 1)

theorem P12592844199490846618.correct : P12592844199490846618.Spec := by
  intro n
  simp only [A373964, Nat.add_sub_cancel]

end A373964

/-! ## A373964.P18254951577188355141

`A369794(n+2)-A369794(n+1)`
-/

namespace A373964.P18254951577188355141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369794 (n + 2) - A369794 (n + 1)

end

end A373964.P18254951577188355141

namespace A373964

/-- `A369794(n+2)-A369794(n+1)` -/
def P18254951577188355141.Spec : Prop :=
  ∀ n, P18254951577188355141.a n = A373964 (n + 1)

end A373964

/-! ## A373964.P10142936655586529531

`A391265(3*n+1)`
-/

namespace A373964.P10142936655586529531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391265 (3 * n + 1)

end

end A373964.P10142936655586529531

namespace A373964

/-- `A391265(3*n+1)` -/
def P10142936655586529531.Spec : Prop :=
  ∀ n, P10142936655586529531.a n = A373964 (n + 1)

end A373964

/-! ## A373964.P3077432470564857388

`A127840(Δ[3*(n+1)²])`
-/

namespace A373964.P3077432470564857388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A373964.P3077432470564857388

namespace A373964

/-- `A127840(Δ[3*(n+1)²])` -/
def P3077432470564857388.Spec : Prop :=
  ∀ n, P3077432470564857388.a n = A373964 (n + 1)

end A373964

/-! ## A373964.P1050354724393783243

`Δ[A369794(n+1)]`
-/

namespace A373964.P1050354724393783243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373964.P1050354724393783243

namespace A373964

/-- `Δ[A369794(n+1)]` -/
def P1050354724393783243.Spec : Prop :=
  ∀ n, P1050354724393783243.a n = A373964 (n + 1)

end A373964

/-! ## A373964.P5080773832526005784

`A391843(2*n+1)-A373963(n+1)`
-/

namespace A373964.P5080773832526005784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391843 (2 * n + 1) - A373963 (n + 1)

end

end A373964.P5080773832526005784

namespace A373964

/-- `A391843(2*n+1)-A373963(n+1)` -/
def P5080773832526005784.Spec : Prop :=
  ∀ n, P5080773832526005784.a n = A373964 (n + 1)

end A373964

/-! ## A373964.P13575169879319094309

`A391843(2*n+1)-A392271(2*n+1)`
-/

namespace A373964.P13575169879319094309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391843 (2 * n + 1) - A392271 (2 * n + 1)

end

end A373964.P13575169879319094309

namespace A373964

/-- `A391843(2*n+1)-A392271(2*n+1)` -/
def P13575169879319094309.Spec : Prop :=
  ∀ n, P13575169879319094309.a n = A373964 (n + 1)

end A373964

/-! ## A373964.P14689152049388353444

`Δ[Δ[A107025(n)]]`
-/

namespace A373964.P14689152049388353444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373964.P14689152049388353444

namespace A373964

/-- `Δ[Δ[A107025(n)]]` -/
def P14689152049388353444.Spec : Prop :=
  ∀ n, P14689152049388353444.a n = A373964 (n + 1)

end A373964

/-! ## A373964.P5322281360826954840

`Δ[Δ[A392271(2*n)]]`
-/

namespace A373964.P5322281360826954840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392271 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373964.P5322281360826954840

namespace A373964

/-- `Δ[Δ[A392271(2*n)]]` -/
def P5322281360826954840.Spec : Prop :=
  ∀ n, P5322281360826954840.a n = A373964 (n + 1)

end A373964

/-!
# A373965: Numbers k such that k^2 is in A086539.

The programs for A373965, there is no canonical definition to state claims against.
-/

/-! ## A373965.P11328722970058606335

`∑[∏{e}[A061214(n+1)-A003577(n), #+1]]`
-/

namespace A373965.P11328722970058606335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061214 (n + 1) - A003577 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373965.P11328722970058606335

/-! ## A373965.P16037382406072686921

`eq[A103631(A206285(n+1)), A281113(n+2)]`
-/

namespace A373965.P16037382406072686921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A206285 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281113 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373965.P16037382406072686921

/-! ## A373965.P5129165343814719174

`A258210(A211316(n+2)*A345469(2*n+1))+A045309(n+1)`
-/

namespace A373965.P5129165343814719174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 (A211316 (n + 2) * A345469 (2 * n + 1)).toNat + A045309 (n + 1)

end

end A373965.P5129165343814719174

/-!
# A373968: a(n) is the number of divisors of n that are Duffinian numbers (A003624).

The programs for A373968, there is no canonical definition to state claims against.
-/

/-! ## A373968.P15644494969120854491

`A046660((n+1)*A079369(n+1))`
-/

namespace A373968.P15644494969120854491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 ((n + 1 : ℤ) * A079369 (n + 1)).toNat

end

end A373968.P15644494969120854491

/-! ## A373968.P16926001951445948113

`A046660(n+1)^A347630(A226517(n+4))`
-/

namespace A373968.P16926001951445948113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046660 (n + 1) : ℚ) ^ (A347630 (A226517 (n + 4)).toNat : ℤ)

end

end A373968.P16926001951445948113

/-! ## A373968.P6894331189177067427

`A151666(A286333(2*(n+2)))+A046660(n+1)`
-/

namespace A373968.P6894331189177067427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A286333 (2 * (n + 2))).toNat + A046660 (n + 1)

end

end A373968.P6894331189177067427

/-! ## A373968.P619678288364397163

`A005361(n+1)-A281871(A098666(3*n+4))`
-/

namespace A373968.P619678288364397163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A281871 (A098666 (3 * n + 4)).toNat

end

end A373968.P619678288364397163

/-! ## A373968.P9129008509426623894

`A277157(A119984(n+4))+A046660(n+1)`
-/

namespace A373968.P9129008509426623894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 (A119984 (n + 4)).toNat + A046660 (n + 1)

end

end A373968.P9129008509426623894

/-!
# A373969: The smallest number k whose divisors include exactly n Duffinian numbers (A003624).

The programs for A373969, there is no canonical definition to state claims against.
-/

/-! ## A373969.P7641250432933601532

`∩[A069049(n+1), A359493(n+1)]`
-/

namespace A373969.P7641250432933601532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373969.P7641250432933601532

/-! ## A373969.P8585494894658608423

`∪[A005940(A018708(2*n+1)), A029746(2*(n+1))]`
-/

namespace A373969.P8585494894658608423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A018708 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373969.P8585494894658608423

/-!
# A373970: Squares equal to the sum of a cube and a factorial number.

The programs for A373970, there is no canonical definition to state claims against.
-/

/-! ## A373970.P9584037083854220063

`A290801(∏[2*n+1])²`
-/

namespace A373970.P9584037083854220063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290801 (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A373970.P9584037083854220063

/-!
# A373971: 

The programs for A373971, there is no canonical definition to state claims against.
-/

/-! ## A373971.P685831938677939456

`char[A024670(n+1)]`
-/

namespace A373971.P685831938677939456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373971.P685831938677939456

/-! ## A373971.P17754140664598828958

`char[A256497(n+1)]`
-/

namespace A373971.P17754140664598828958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373971.P17754140664598828958

/-! ## A373971.P11876586529243563467

`A060838(A175362(n)+1)`
-/

namespace A373971.P11876586529243563467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A175362 n + 1).toNat

end

end A373971.P11876586529243563467

/-! ## A373971.P7701716344806189409

`A264595(A175362(n)+1)`
-/

namespace A373971.P7701716344806189409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264595 (A175362 n + 1).toNat

end

end A373971.P7701716344806189409

/-! ## A373971.P16524975984138949599

`A033665(A175362(n)+2)`
-/

namespace A373971.P16524975984138949599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A175362 n + 2).toNat

end

end A373971.P16524975984138949599

/-! ## A373971.P10425634805132480670

`A033665(2*A175362(n))`
-/

namespace A373971.P10425634805132480670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (2 * A175362 n).toNat

end

end A373971.P10425634805132480670

/-!
# A373972: 

The programs for A373972, there is no canonical definition to state claims against.
-/

/-! ## A373972.P4710472766961764466

`char[A105125(n)]`
-/

namespace A373972.P4710472766961764466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105125 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373972.P4710472766961764466

/-! ## A373972.P5340837891118746552

`char[A004999(n+1)]`
-/

namespace A373972.P5340837891118746552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373972.P5340837891118746552

/-! ## A373972.P17846227432731029299

`A000120(A175362(n))`
-/

namespace A373972.P17846227432731029299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175362 n).toNat

end

end A373972.P17846227432731029299

/-! ## A373972.P15730332242682265558

`A000007(A351338(n))`
-/

namespace A373972.P15730332242682265558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A351338 n).toNat

end

end A373972.P15730332242682265558

/-! ## A373972.P12661272476905911838

`A000007(A351376(n))`
-/

namespace A373972.P12661272476905911838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A351376 n).toNat

end

end A373972.P12661272476905911838

/-! ## A373972.P5655913581920876769

`A002828(A175362(n)²)`
-/

namespace A373972.P5655913581920876769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A175362 n ^ 2).toNat

end

end A373972.P5655913581920876769

/-! ## A373972.P7685481843020458110

`A072860(A175362(n)+1)`
-/

namespace A373972.P7685481843020458110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072860 (A175362 n + 1).toNat

end

end A373972.P7685481843020458110

/-! ## A373972.P15484538846255172245

`A318305(A175362(n)+1)`
-/

namespace A373972.P15484538846255172245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318305 (A175362 n + 1).toNat

end

end A373972.P15484538846255172245

/-! ## A373972.P10537875383378624507

`A134391(A175362(n)+2)`
-/

namespace A373972.P10537875383378624507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134391 (A175362 n + 2).toNat

end

end A373972.P10537875383378624507

/-! ## A373972.P9368551107498927400

`A288002(A175362(n)+2)`
-/

namespace A373972.P9368551107498927400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (A175362 n + 2).toNat

end

end A373972.P9368551107498927400

/-! ## A373972.P13526018874764669696

`A000122(A175362(n)²)-1`
-/

namespace A373972.P13526018874764669696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A175362 n ^ 2).toNat - 1

end

end A373972.P13526018874764669696

/-! ## A373972.P17910322766374270887

`1-A003982(A175362(n)²)`
-/

namespace A373972.P17910322766374270887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003982 (A175362 n ^ 2).toNat

end

end A373972.P17910322766374270887

/-! ## A373972.P9771830200932494156

`A025455(A004018(A175362(n))²)`
-/

namespace A373972.P9771830200932494156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A004018 (A175362 n).toNat ^ 2).toNat

end

end A373972.P9771830200932494156

/-! ## A373972.P9881480911251620597

`A320841(A320841(A175362(n)²))`
-/

namespace A373972.P9881480911251620597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A320841 (A175362 n ^ 2).toNat).toNat

end

end A373972.P9881480911251620597

/-!
# A373973: a(n) = 1 if n can be expressed as (a^3 + b^3)/(a*b) with b > a >= 1, otherwise 0.

The programs for A373973, there is no canonical definition to state claims against.
-/

/-! ## A373973.P8718999658459146073

`char[A359225(n+1)-1]`
-/

namespace A373973.P8718999658459146073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359225 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373973.P8718999658459146073

/-! ## A373973.P1070506332761754426

`A329313(4*A373974(n+1))`
-/

namespace A373973.P1070506332761754426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (4 * A373974 (n + 1)).toNat

end

end A373973.P1070506332761754426

/-! ## A373973.P1834790626538847697

`A373957(2^A373974(n+1))`
-/

namespace A373973.P1834790626538847697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373957 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A373974 (n + 1) : ℤ))).toNat

end

end A373973.P1834790626538847697

/-! ## A373973.P1117536518809637744

`A033665(C(10, A373974(n+1)))`
-/

namespace A373973.P1117536518809637744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (Nat.choose 10 (A373974 (n + 1)).toNat)

end

end A373973.P1117536518809637744

/-! ## A373973.P9323595593142095923

`A000035(A139902(n+1)*A373974(n+1))`
-/

namespace A373973.P9323595593142095923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A139902 (n + 1) * A373974 (n + 1)).toNat

end

end A373973.P9323595593142095923

/-! ## A373973.P12954181662757440878

`A367169(C(A059786(2*(n+2)), A373974(n+1)))`
-/

namespace A373973.P12954181662757440878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (Nat.choose (A059786 (2 * (n + 2))).toNat (A373974 (n + 1)).toNat)

end

end A373973.P12954181662757440878

/-! ## A373973.P2718258574747860713

`and(A003961(A367225(n+1)), A373974(n+1))`
-/

namespace A373973.P2718258574747860713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003961 (A367225 (n + 1)).toNat) (A373974 (n + 1))

end

end A373973.P2718258574747860713

/-! ## A373973.P6142651196789527250

`and(A089998(n), A373974(n+1))`
-/

namespace A373973.P6142651196789527250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089998 n) (A373974 (n + 1))

end

end A373973.P6142651196789527250

/-! ## A373973.P587135494733251997

`A373974(n+1)%A000105(n)`
-/

namespace A373973.P587135494733251997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373974 (n + 1)) (A000105 n)

end

end A373973.P587135494733251997

/-! ## A373973.P10663157142594432929

`and(A037941(n), A373974(n+1))`
-/

namespace A373973.P10663157142594432929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037941 n) (A373974 (n + 1))

end

end A373973.P10663157142594432929

/-!
# A373975: a(n) = 1 if the number of prime factors with multiplicity is a multiple of 3, otherwise 0.

The programs for A373975, the canonical program `A373975.P11632175774384080347` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373975 has offset 1).

The definition of A373975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373975.P11632175774384080347

`4%gcd(3, ∑{e}[n+1, #])`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A373975

/-- `4%gcd(3, ∑{e}[n+1, #])` -/
def P11632175774384080347.Spec : Prop :=
  ∀ n, (P11632175774384080347.a n : ℤ) = A373975 (n + 1)

theorem P11632175774384080347.correct : P11632175774384080347.Spec := by
  intro n
  simp only [A373975, Nat.add_sub_cancel]

end A373975

/-! ## A373975.P12385344956629286951

`1-∑{e}[n+1, #]²%3`
-/

namespace A373975.P12385344956629286951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2 % 3 : ℕ) : ℤ)

end

end A373975.P12385344956629286951

namespace A373975

/-- `1-∑{e}[n+1, #]²%3` -/
def P12385344956629286951.Spec : Prop :=
  ∀ n, P12385344956629286951.a n = A373975 (n + 1)

end A373975

/-! ## A373975.P9986011586347557621

`char[A145784(n+1)-1]`
-/

namespace A373975.P9986011586347557621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373975.P9986011586347557621

namespace A373975

/-- `char[A145784(n+1)-1]` -/
def P9986011586347557621.Spec : Prop :=
  ∀ n, (P9986011586347557621.a n : ℤ) = A373975 (n + 1)

end A373975

/-! ## A373975.P16485234118015565015

`A010057(A061142(n+1))`
-/

namespace A373975.P16485234118015565015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A061142 (n + 1)).toNat

end

end A373975.P16485234118015565015

namespace A373975

/-- `A010057(A061142(n+1))` -/
def P16485234118015565015.Spec : Prop :=
  ∀ n, P16485234118015565015.a n = A373975 (n + 1)

end A373975

/-! ## A373975.P780278188651547639

`A010057(A068794(n+1))`
-/

namespace A373975.P780278188651547639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A068794 (n + 1)).toNat

end

end A373975.P780278188651547639

namespace A373975

/-- `A010057(A068794(n+1))` -/
def P780278188651547639.Spec : Prop :=
  ∀ n, P780278188651547639.a n = A373975 (n + 1)

end A373975

/-! ## A373975.P4767689237776361355

`A079978(A001222(n+1))`
-/

namespace A373975.P4767689237776361355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A001222 (n + 1)).toNat

end

end A373975.P4767689237776361355

namespace A373975

/-- `A079978(A001222(n+1))` -/
def P4767689237776361355.Spec : Prop :=
  ∀ n, P4767689237776361355.a n = A373975 (n + 1)

end A373975

/-! ## A373975.P16640266743606908616

`A057078(A001222(n+1)²)`
-/

namespace A373975.P16640266743606908616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A001222 (n + 1) ^ 2).toNat

end

end A373975.P16640266743606908616

namespace A373975

/-- `A057078(A001222(n+1)²)` -/
def P16640266743606908616.Spec : Prop :=
  ∀ n, P16640266743606908616.a n = A373975 (n + 1)

end A373975

/-! ## A373975.P6710480793385754048

`A267142(A001222(n+1)²)`
-/

namespace A373975.P6710480793385754048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A001222 (n + 1) ^ 2).toNat

end

end A373975.P6710480793385754048

namespace A373975

/-- `A267142(A001222(n+1)²)` -/
def P6710480793385754048.Spec : Prop :=
  ∀ n, P6710480793385754048.a n = A373975 (n + 1)

end A373975

/-! ## A373975.P10557306129246338862

`A079978(A037916(n+1))`
-/

namespace A373975.P10557306129246338862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A037916 (n + 1)).toNat

end

end A373975.P10557306129246338862

namespace A373975

/-- `A079978(A037916(n+1))` -/
def P10557306129246338862.Spec : Prop :=
  ∀ n, P10557306129246338862.a n = A373975 (n + 1)

end A373975

/-! ## A373975.P10196465177031505722

`A010057(A079881(n+1))`
-/

namespace A373975.P10196465177031505722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A079881 (n + 1)).toNat

end

end A373975.P10196465177031505722

namespace A373975

/-- `A010057(A079881(n+1))` -/
def P10196465177031505722.Spec : Prop :=
  ∀ n, P10196465177031505722.a n = A373975 (n + 1)

end A373975

/-!
# A373976: a(n) = A001222(n) - A001222(A001414(n)), where A001222 is bigomega, the number of prime factors with multiplicity, and A001414 is sopfr, sum of prime factors with multiplicity. a(1) = 0 by convention.

The programs for A373976, the canonical program `A373976.P9485791187912278564` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373976 has offset 1).

The definition of A373976 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A342956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373976.P9485791187912278564

`A001222(n+1)-A342956(n+1)`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A373976

/-- `A001222(n+1)-A342956(n+1)` -/
def P9485791187912278564.Spec : Prop :=
  ∀ n, P9485791187912278564.a n = A373976 (n + 1)

theorem P9485791187912278564.correct : P9485791187912278564.Spec := by
  intro n
  simp only [A373976, Nat.add_sub_cancel]

end A373976

/-! ## A373976.P10689755201638572179

`∑{e}[n+1, #]-∑{e}[∑{p}[n+1, #*val(n+1, #)], #]`
-/

namespace A373976.P10689755201638572179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p * SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A373976.P10689755201638572179

namespace A373976

/-- `∑{e}[n+1, #]-∑{e}[∑{p}[n+1, #*val(n+1, #)], #]` -/
def P10689755201638572179.Spec : Prop :=
  ∀ n, P10689755201638572179.a n = A373976 (n + 1)

end A373976

/-! ## A373976.P13520442325994473426

`val(A165835(n+1), 2)-A342956(n+1)`
-/

namespace A373976.P13520442325994473426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2 : ℤ) - A342956 (n + 1)

end

end A373976.P13520442325994473426

namespace A373976

/-- `val(A165835(n+1), 2)-A342956(n+1)` -/
def P13520442325994473426.Spec : Prop :=
  ∀ n, P13520442325994473426.a n = A373976 (n + 1)

end A373976

/-! ## A373976.P7549313179219986907

`A001222(n+1)-∑{e}[A001414(n+1), #]`
-/

namespace A373976.P7549313179219986907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A373976.P7549313179219986907

namespace A373976

/-- `A001222(n+1)-∑{e}[A001414(n+1), #]` -/
def P7549313179219986907.Spec : Prop :=
  ∀ n, P7549313179219986907.a n = A373976 (n + 1)

end A373976

/-! ## A373976.P16882913018211286198

`∑{e}[n+1, #]-A342956(A354547(n+1))`
-/

namespace A373976.P16882913018211286198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A342956 (A354547 (n + 1)).toNat

end

end A373976.P16882913018211286198

namespace A373976

/-- `∑{e}[n+1, #]-A342956(A354547(n+1))` -/
def P16882913018211286198.Spec : Prop :=
  ∀ n, P16882913018211286198.a n = A373976 (n + 1)

end A373976

/-! ## A373976.P5671309224585249830

`A302242(A000040(n+1))-A342956(n+1)`
-/

namespace A373976.P5671309224585249830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A000040 (n + 1)).toNat - A342956 (n + 1)

end

end A373976.P5671309224585249830

namespace A373976

/-- `A302242(A000040(n+1))-A342956(n+1)` -/
def P5671309224585249830.Spec : Prop :=
  ∀ n, P5671309224585249830.a n = A373976 (n + 1)

end A373976

/-!
# A373977: a(n) = 1 if n is a nonprime of the form 3*k + 1, otherwise 0.

The programs for A373977, the canonical program `A373977.P2023498345375672924` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373977 has offset 1).

The definition of A373977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373977.P2085654334128205889

`A005171(n+1)*A079978(n)`
-/

namespace A373977.P2085654334128205889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A079978 n

end

end A373977.P2085654334128205889

namespace A373977

/-- `A005171(n+1)*A079978(n)` -/
def P2085654334128205889.Spec : Prop :=
  ∀ n, P2085654334128205889.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P17193105776171304515

`A005171(n+1)*A329680(n)`
-/

namespace A373977.P17193105776171304515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A329680 n

end

end A373977.P17193105776171304515

namespace A373977

/-- `A005171(n+1)*A329680(n)` -/
def P17193105776171304515.Spec : Prop :=
  ∀ n, P17193105776171304515.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P8925379203166754281

`A014684(n+1)%A109007(n)`
-/

namespace A373977.P8925379203166754281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014684 (n + 1)) (A109007 n)

end

end A373977.P8925379203166754281

namespace A373977

/-- `A014684(n+1)%A109007(n)` -/
def P8925379203166754281.Spec : Prop :=
  ∀ n, P8925379203166754281.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P2023498345375672924

`A073898(n+1)%A087204(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373977

/-- `A073898(n+1)%A087204(n)` -/
def P2023498345375672924.Spec : Prop :=
  ∀ n, P2023498345375672924.a n = A373977 (n + 1)

theorem P2023498345375672924.correct : P2023498345375672924.Spec := by
  intro n
  simp only [A373977, Nat.add_sub_cancel]

end A373977

/-! ## A373977.P8536000399888162369

`and(A005171(n+1), A007729(n))`
-/

namespace A373977.P8536000399888162369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A007729 n)

end

end A373977.P8536000399888162369

namespace A373977

/-- `and(A005171(n+1), A007729(n))` -/
def P8536000399888162369.Spec : Prop :=
  ∀ n, P8536000399888162369.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P1024206214041407231

`and(A005171(n+1), A007980(n))`
-/

namespace A373977.P1024206214041407231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A007980 n)

end

end A373977.P1024206214041407231

namespace A373977

/-- `and(A005171(n+1), A007980(n))` -/
def P1024206214041407231.Spec : Prop :=
  ∀ n, P1024206214041407231.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P11572853104961449407

`and(A005171(n+1), A008796(n))`
-/

namespace A373977.P11572853104961449407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A008796 n)

end

end A373977.P11572853104961449407

namespace A373977

/-- `and(A005171(n+1), A008796(n))` -/
def P11572853104961449407.Spec : Prop :=
  ∀ n, P11572853104961449407.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P5500953079831449751

`(1-A010051(n+1))*A079978(n)`
-/

namespace A373977.P5500953079831449751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A079978 n

end

end A373977.P5500953079831449751

namespace A373977

/-- `(1-A010051(n+1))*A079978(n)` -/
def P5500953079831449751.Spec : Prop :=
  ∀ n, P5500953079831449751.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P2159180331310575175

`A079979(A010051(n+1)+2*n)`
-/

namespace A373977.P2159180331310575175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A010051 (n + 1) + (2 * n : ℤ)).toNat

end

end A373977.P2159180331310575175

namespace A373977

/-- `A079979(A010051(n+1)+2*n)` -/
def P2159180331310575175.Spec : Prop :=
  ∀ n, P2159180331310575175.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P13634921648933872959

`A095130(A175030(n+1))`
-/

namespace A373977.P13634921648933872959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095130 (A175030 (n + 1)).toNat

end

end A373977.P13634921648933872959

namespace A373977

/-- `A095130(A175030(n+1))` -/
def P13634921648933872959.Spec : Prop :=
  ∀ n, P13634921648933872959.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P7153247700514882158

`and(A000792(n), A005171(n+1))`
-/

namespace A373977.P7153247700514882158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000792 n) (A005171 (n + 1))

end

end A373977.P7153247700514882158

namespace A373977

/-- `and(A000792(n), A005171(n+1))` -/
def P7153247700514882158.Spec : Prop :=
  ∀ n, P7153247700514882158.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P852123869025607044

`and(A001611(n), A005171(n+1))`
-/

namespace A373977.P852123869025607044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001611 n) (A005171 (n + 1))

end

end A373977.P852123869025607044

namespace A373977

/-- `and(A001611(n), A005171(n+1))` -/
def P852123869025607044.Spec : Prop :=
  ∀ n, P852123869025607044.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P6735093636689224464

`and(A005171(n+1), A008346(n))`
-/

namespace A373977.P6735093636689224464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A008346 n)

end

end A373977.P6735093636689224464

namespace A373977

/-- `and(A005171(n+1), A008346(n))` -/
def P6735093636689224464.Spec : Prop :=
  ∀ n, P6735093636689224464.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P17102989627053453647

`and(A001612(n), A005171(n+1))`
-/

namespace A373977.P17102989627053453647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001612 n) (A005171 (n + 1))

end

end A373977.P17102989627053453647

namespace A373977

/-- `and(A001612(n), A005171(n+1))` -/
def P17102989627053453647.Spec : Prop :=
  ∀ n, P17102989627053453647.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P9106435861286201991

`and(A005171(n+1), A022318(n))`
-/

namespace A373977.P9106435861286201991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A022318 n)

end

end A373977.P9106435861286201991

namespace A373977

/-- `and(A005171(n+1), A022318(n))` -/
def P9106435861286201991.Spec : Prop :=
  ∀ n, P9106435861286201991.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P15602985712724230209

`and(A005171(n+1), A022320(n))`
-/

namespace A373977.P15602985712724230209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A022320 n)

end

end A373977.P15602985712724230209

namespace A373977

/-- `and(A005171(n+1), A022320(n))` -/
def P15602985712724230209.Spec : Prop :=
  ∀ n, P15602985712724230209.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P1592776858115849625

`and(A005171(n+1), A022322(n))`
-/

namespace A373977.P1592776858115849625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A022322 n)

end

end A373977.P1592776858115849625

namespace A373977

/-- `and(A005171(n+1), A022322(n))` -/
def P1592776858115849625.Spec : Prop :=
  ∀ n, P1592776858115849625.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P3867253208374135928

`and(A005171(n+1), A022407(n))`
-/

namespace A373977.P3867253208374135928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A022407 n)

end

end A373977.P3867253208374135928

namespace A373977

/-- `and(A005171(n+1), A022407(n))` -/
def P3867253208374135928.Spec : Prop :=
  ∀ n, P3867253208374135928.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P89991962080319112

`and(A005171(n+1), A022324(n))`
-/

namespace A373977.P89991962080319112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A022324 n)

end

end A373977.P89991962080319112

namespace A373977

/-- `and(A005171(n+1), A022324(n))` -/
def P89991962080319112.Spec : Prop :=
  ∀ n, P89991962080319112.a n = A373977 (n + 1)

end A373977

/-! ## A373977.P12682192823990458252

`and(A005171(n+1), A022326(n))`
-/

namespace A373977.P12682192823990458252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A022326 n)

end

end A373977.P12682192823990458252

namespace A373977

/-- `and(A005171(n+1), A022326(n))` -/
def P12682192823990458252.Spec : Prop :=
  ∀ n, P12682192823990458252.a n = A373977 (n + 1)

end A373977

/-!
# A373978: a(n) = 1 if n is a nonprime of the form 4*k + 1, otherwise 0.

The programs for A373978, the canonical program `A373978.P17916728233483269752` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373978 has offset 1).

The definition of A373978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373978.P17916728233483269752

`A121262(A113637(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373978

/-- `A121262(A113637(n+1))` -/
def P17916728233483269752.Spec : Prop :=
  ∀ n, P17916728233483269752.a n = A373978 (n + 1)

theorem P17916728233483269752.correct : P17916728233483269752.Spec := by
  intro n
  simp only [A373978, Nat.add_sub_cancel]

end A373978

/-! ## A373978.P1139048898567365555

`A006000(n)%A118136(n)`
-/

namespace A373978.P1139048898567365555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006000 n) (A118136 n)

end

end A373978.P1139048898567365555

namespace A373978

/-- `A006000(n)%A118136(n)` -/
def P1139048898567365555.Spec : Prop :=
  ∀ n, P1139048898567365555.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P8338076735721010752

`A045896(n)%A118136(n)`
-/

namespace A373978.P8338076735721010752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045896 n) (A118136 n)

end

end A373978.P8338076735721010752

namespace A373978

/-- `A045896(n)%A118136(n)` -/
def P8338076735721010752.Spec : Prop :=
  ∀ n, P8338076735721010752.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P15905140143177318930

`A050509(n)%A118136(n)`
-/

namespace A373978.P15905140143177318930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050509 n) (A118136 n)

end

end A373978.P15905140143177318930

namespace A373978

/-- `A050509(n)%A118136(n)` -/
def P15905140143177318930.Spec : Prop :=
  ∀ n, P15905140143177318930.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P16986581050844538039

`A051799(n)%A118136(n)`
-/

namespace A373978.P16986581050844538039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051799 n) (A118136 n)

end

end A373978.P16986581050844538039

namespace A373978

/-- `A051799(n)%A118136(n)` -/
def P16986581050844538039.Spec : Prop :=
  ∀ n, P16986581050844538039.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P1735191571019160314

`A077538(n)%A118136(n)`
-/

namespace A373978.P1735191571019160314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077538 n) (A118136 n)

end

end A373978.P1735191571019160314

namespace A373978

/-- `A077538(n)%A118136(n)` -/
def P1735191571019160314.Spec : Prop :=
  ∀ n, P1735191571019160314.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P7258063734608430873

`A104474(n)%A118136(n)`
-/

namespace A373978.P7258063734608430873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104474 n) (A118136 n)

end

end A373978.P7258063734608430873

namespace A373978

/-- `A104474(n)%A118136(n)` -/
def P7258063734608430873.Spec : Prop :=
  ∀ n, P7258063734608430873.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P7803716430309389163

`A104676(n)%A118136(n)`
-/

namespace A373978.P7803716430309389163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104676 n) (A118136 n)

end

end A373978.P7803716430309389163

namespace A373978

/-- `A104676(n)%A118136(n)` -/
def P7803716430309389163.Spec : Prop :=
  ∀ n, P7803716430309389163.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P8908098818629065833

`A108648(n)%A118136(n)`
-/

namespace A373978.P8908098818629065833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108648 n) (A118136 n)

end

end A373978.P8908098818629065833

namespace A373978

/-- `A108648(n)%A118136(n)` -/
def P8908098818629065833.Spec : Prop :=
  ∀ n, P8908098818629065833.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P13355725437979875690

`A108678(n)%A118136(n)`
-/

namespace A373978.P13355725437979875690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108678 n) (A118136 n)

end

end A373978.P13355725437979875690

namespace A373978

/-- `A108678(n)%A118136(n)` -/
def P13355725437979875690.Spec : Prop :=
  ∀ n, P13355725437979875690.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P7865441691757174391

`A130566(n)%A118136(n)`
-/

namespace A373978.P7865441691757174391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130566 n) (A118136 n)

end

end A373978.P7865441691757174391

namespace A373978

/-- `A130566(n)%A118136(n)` -/
def P7865441691757174391.Spec : Prop :=
  ∀ n, P7865441691757174391.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P4959184101912081897

`A212759(n)%A118136(n)`
-/

namespace A373978.P4959184101912081897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212759 n) (A118136 n)

end

end A373978.P4959184101912081897

namespace A373978

/-- `A212759(n)%A118136(n)` -/
def P4959184101912081897.Spec : Prop :=
  ∀ n, P4959184101912081897.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P11129502728670379146

`A265225(n)%A118136(n)`
-/

namespace A373978.P11129502728670379146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265225 n) (A118136 n)

end

end A373978.P11129502728670379146

namespace A373978

/-- `A265225(n)%A118136(n)` -/
def P11129502728670379146.Spec : Prop :=
  ∀ n, P11129502728670379146.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P4777340484215231600

`A302612(n)%A118136(n)`
-/

namespace A373978.P4777340484215231600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302612 n) (A118136 n)

end

end A373978.P4777340484215231600

namespace A373978

/-- `A302612(n)%A118136(n)` -/
def P4777340484215231600.Spec : Prop :=
  ∀ n, P4777340484215231600.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P11548936261744243288

`A121262(A079260(n+1)+n)`
-/

namespace A373978.P11548936261744243288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A079260 (n + 1) + (n : ℤ)).toNat

end

end A373978.P11548936261744243288

namespace A373978

/-- `A121262(A079260(n+1)+n)` -/
def P11548936261744243288.Spec : Prop :=
  ∀ n, P11548936261744243288.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P11938430940690668790

`A005171(n+1)*A121262(n)`
-/

namespace A373978.P11938430940690668790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A121262 n

end

end A373978.P11938430940690668790

namespace A373978

/-- `A005171(n+1)*A121262(n)` -/
def P11938430940690668790.Spec : Prop :=
  ∀ n, P11938430940690668790.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P437928704754610428

`A121262(n)*A328458(n+1)`
-/

namespace A373978.P437928704754610428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n * A328458 (n + 1)

end

end A373978.P437928704754610428

namespace A373978

/-- `A121262(n)*A328458(n+1)` -/
def P437928704754610428.Spec : Prop :=
  ∀ n, P437928704754610428.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P7519532542387696226

`A250064(n+1)%A118136(n)`
-/

namespace A373978.P7519532542387696226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250064 (n + 1)) (A118136 n)

end

end A373978.P7519532542387696226

namespace A373978

/-- `A250064(n+1)%A118136(n)` -/
def P7519532542387696226.Spec : Prop :=
  ∀ n, P7519532542387696226.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P2790740540299367782

`and(A005171(n+1), A244877(n))`
-/

namespace A373978.P2790740540299367782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A244877 n)

end

end A373978.P2790740540299367782

namespace A373978

/-- `and(A005171(n+1), A244877(n))` -/
def P2790740540299367782.Spec : Prop :=
  ∀ n, P2790740540299367782.a n = A373978 (n + 1)

end A373978

/-! ## A373978.P9744029932051908753

`A121262(A064911(2*(n+1))+n)`
-/

namespace A373978.P9744029932051908753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A064911 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A373978.P9744029932051908753

namespace A373978

/-- `A121262(A064911(2*(n+1))+n)` -/
def P9744029932051908753.Spec : Prop :=
  ∀ n, P9744029932051908753.a n = A373978 (n + 1)

end A373978

/-!
# A373979: a(n) = 1 if n is a nonprime of the form 4*k + 3, otherwise 0.

The programs for A373979, the canonical program `A373979.P3246657904887622498` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373979 has offset 1).

The definition of A373979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373979.P3246657904887622498

`A006002(n)%A118136(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373979

/-- `A006002(n)%A118136(n)` -/
def P3246657904887622498.Spec : Prop :=
  ∀ n, P3246657904887622498.a n = A373979 (n + 1)

theorem P3246657904887622498.correct : P3246657904887622498.Spec := by
  intro n
  simp only [A373979, Nat.add_sub_cancel]

end A373979

/-! ## A373979.P12927921476341540964

`A006011(n)%A118136(n)`
-/

namespace A373979.P12927921476341540964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006011 n) (A118136 n)

end

end A373979.P12927921476341540964

namespace A373979

/-- `A006011(n)%A118136(n)` -/
def P12927921476341540964.Spec : Prop :=
  ∀ n, P12927921476341540964.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P16546129805620246958

`A011197(n)%A118136(n)`
-/

namespace A373979.P16546129805620246958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011197 n) (A118136 n)

end

end A373979.P16546129805620246958

namespace A373979

/-- `A011197(n)%A118136(n)` -/
def P16546129805620246958.Spec : Prop :=
  ∀ n, P16546129805620246958.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P16931443981070284173

`A071237(n)%A118136(n)`
-/

namespace A373979.P16931443981070284173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071237 n) (A118136 n)

end

end A373979.P16931443981070284173

namespace A373979

/-- `A071237(n)%A118136(n)` -/
def P16931443981070284173.Spec : Prop :=
  ∀ n, P16931443981070284173.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P6251699975762485817

`A085742(n)%A118136(n)`
-/

namespace A373979.P6251699975762485817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085742 n) (A118136 n)

end

end A373979.P6251699975762485817

namespace A373979

/-- `A085742(n)%A118136(n)` -/
def P6251699975762485817.Spec : Prop :=
  ∀ n, P6251699975762485817.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P936973554407652386

`A090453(n)%A118136(n)`
-/

namespace A373979.P936973554407652386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090453 n) (A118136 n)

end

end A373979.P936973554407652386

namespace A373979

/-- `A090453(n)%A118136(n)` -/
def P936973554407652386.Spec : Prop :=
  ∀ n, P936973554407652386.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P10156605206089520258

`A093353(n)%A118136(n)`
-/

namespace A373979.P10156605206089520258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093353 n) (A118136 n)

end

end A373979.P10156605206089520258

namespace A373979

/-- `A093353(n)%A118136(n)` -/
def P10156605206089520258.Spec : Prop :=
  ∀ n, P10156605206089520258.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P6131054474088671478

`A108495(n)%A118136(n)`
-/

namespace A373979.P6131054474088671478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108495 n) (A118136 n)

end

end A373979.P6131054474088671478

namespace A373979

/-- `A108495(n)%A118136(n)` -/
def P6131054474088671478.Spec : Prop :=
  ∀ n, P6131054474088671478.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P9983082962488706258

`A135503(n)%A118136(n)`
-/

namespace A373979.P9983082962488706258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135503 n) (A118136 n)

end

end A373979.P9983082962488706258

namespace A373979

/-- `A135503(n)%A118136(n)` -/
def P9983082962488706258.Spec : Prop :=
  ∀ n, P9983082962488706258.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P10369439897985351934

`A212763(n)%A118136(n)`
-/

namespace A373979.P10369439897985351934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212763 n) (A118136 n)

end

end A373979.P10369439897985351934

namespace A373979

/-- `A212763(n)%A118136(n)` -/
def P10369439897985351934.Spec : Prop :=
  ∀ n, P10369439897985351934.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P12816987452600608534

`A213827(n)%A118136(n)`
-/

namespace A373979.P12816987452600608534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213827 n) (A118136 n)

end

end A373979.P12816987452600608534

namespace A373979

/-- `A213827(n)%A118136(n)` -/
def P12816987452600608534.Spec : Prop :=
  ∀ n, P12816987452600608534.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P9539867707833457045

`A227316(n)%A118136(n)`
-/

namespace A373979.P9539867707833457045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227316 n) (A118136 n)

end

end A373979.P9539867707833457045

namespace A373979

/-- `A227316(n)%A118136(n)` -/
def P9539867707833457045.Spec : Prop :=
  ∀ n, P9539867707833457045.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P9884780691162357021

`A267370(n)%A118136(n)`
-/

namespace A373979.P9884780691162357021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267370 n) (A118136 n)

end

end A373979.P9884780691162357021

namespace A373979

/-- `A267370(n)%A118136(n)` -/
def P9884780691162357021.Spec : Prop :=
  ∀ n, P9884780691162357021.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P7733425921350459582

`A269403(n)%A118136(n)`
-/

namespace A373979.P7733425921350459582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269403 n) (A118136 n)

end

end A373979.P7733425921350459582

namespace A373979

/-- `A269403(n)%A118136(n)` -/
def P7733425921350459582.Spec : Prop :=
  ∀ n, P7733425921350459582.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P17025985466334207413

`A322015(n)%A118136(n)`
-/

namespace A373979.P17025985466334207413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322015 n) (A118136 n)

end

end A373979.P17025985466334207413

namespace A373979

/-- `A322015(n)%A118136(n)` -/
def P17025985466334207413.Spec : Prop :=
  ∀ n, P17025985466334207413.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P4400995240563004754

`A350116(n)%A118136(n)`
-/

namespace A373979.P4400995240563004754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350116 n) (A118136 n)

end

end A373979.P4400995240563004754

namespace A373979

/-- `A350116(n)%A118136(n)` -/
def P4400995240563004754.Spec : Prop :=
  ∀ n, P4400995240563004754.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P6326555233339732813

`A379540(n)%A118136(n)`
-/

namespace A373979.P6326555233339732813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379540 n) (A118136 n)

end

end A373979.P6326555233339732813

namespace A373979

/-- `A379540(n)%A118136(n)` -/
def P6326555233339732813.Spec : Prop :=
  ∀ n, P6326555233339732813.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P6926029353718797040

`A014683(n+1)%A014709(n)`
-/

namespace A373979.P6926029353718797040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014683 (n + 1)) (A014709 n)

end

end A373979.P6926029353718797040

namespace A373979

/-- `A014683(n+1)%A014709(n)` -/
def P6926029353718797040.Spec : Prop :=
  ∀ n, P6926029353718797040.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P17877910696185959101

`A014684(n+1)%A014709(n)`
-/

namespace A373979.P17877910696185959101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014684 (n + 1)) (A014709 n)

end

end A373979.P17877910696185959101

namespace A373979

/-- `A014684(n+1)%A014709(n)` -/
def P17877910696185959101.Spec : Prop :=
  ∀ n, P17877910696185959101.a n = A373979 (n + 1)

end A373979

/-! ## A373979.P14082184781360246471

`A014685(n+1)%A014709(n)`
-/

namespace A373979.P14082184781360246471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014685 (n + 1)) (A014709 n)

end

end A373979.P14082184781360246471

namespace A373979

/-- `A014685(n+1)%A014709(n)` -/
def P14082184781360246471.Spec : Prop :=
  ∀ n, P14082184781360246471.a n = A373979 (n + 1)

end A373979

/-!
# A373982: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278226(A328768(i)) = A278226(A328768(j)), for all i, j >= 0.

The programs for A373982, there is no canonical definition to state claims against.
-/

/-! ## A373982.P2261201979137847007

`A328871(n)-A083928(A171515(n))`
-/

namespace A373982.P2261201979137847007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328871 n - A083928 (A171515 n).toNat

end

end A373982.P2261201979137847007

/-! ## A373982.P17094216237983899503

`A373126(n)+A279060(A007677(n))`
-/

namespace A373982.P17094216237983899503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 n + A279060 (A007677 n).toNat

end

end A373982.P17094216237983899503

/-! ## A373982.P6924301547602663913

`A001221(A300227(n+1)+A246349(n+1))`
-/

namespace A373982.P6924301547602663913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A300227 (n + 1) + A246349 (n + 1)).toNat

end

end A373982.P6924301547602663913

/-! ## A373982.P5076883412268889533

`A196437(A007576(n+1))+A082024(n)`
-/

namespace A373982.P5076883412268889533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196437 (A007576 (n + 1)).toNat + A082024 n

end

end A373982.P5076883412268889533

/-! ## A373982.P9152032225363267317

`A329312(or(A006995(n+1), A365730(n)))`
-/

namespace A373982.P9152032225363267317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 (Int.lor (A006995 (n + 1)) (A365730 n)).toNat

end

end A373982.P9152032225363267317

/-!
# A373983: Lexicographically earliest infinite sequence such that a(i) = a(j) = A246277(A324886(i)) = A246277(A324886(j)) and A278226(A328768(i)) = A278226(A328768(j)), for all i, j >= 1.

The programs for A373983, there is no canonical definition to state claims against.
-/

/-! ## A373983.P10621656845442000292

`A300827(n+1)+A112765(A300787(2*(n+2)))`
-/

namespace A373983.P10621656845442000292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) + A112765 (A300787 (2 * (n + 2))).toNat

end

end A373983.P10621656845442000292

/-! ## A373983.P8169040460739252253

`or(A007949(A367893(n+1)), A319353(n+1))`
-/

namespace A373983.P8169040460739252253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007949 (A367893 (n + 1)).toNat) (A319353 (n + 1))

end

end A373983.P8169040460739252253

/-! ## A373983.P1121789206962179300

`A319353(n+1)+A010054(A350949(3*n+4))`
-/

namespace A373983.P1121789206962179300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319353 (n + 1) + A010054 (A350949 (3 * n + 4)).toNat

end

end A373983.P1121789206962179300

/-! ## A373983.P16162163464104195758

`A084506(A356543(n+1))`
-/

namespace A373983.P16162163464104195758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084506 (A356543 (n + 1)).toNat

end

end A373983.P16162163464104195758

/-! ## A373983.P10146969257289513275

`A263111(2*n)+A175126(A187829(n+1))`
-/

namespace A373983.P10146969257289513275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (2 * n) + A175126 (A187829 (n + 1)).toNat

end

end A373983.P10146969257289513275

/-!
# A373984: a(n) = A108951(n) - A373158(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

The programs for A373984, there is no canonical definition to state claims against.
-/

/-! ## A373984.P1990840556673078357

`A108951(n+1)-A373158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373984.P1990840556673078357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A373158 (n + 1)

end

end A373984.P1990840556673078357

/-! ## A373984.P13798951417028632783

`A108951(n+1)-A373985(n+1)*A373986(n+1)`
-/

namespace A373984.P13798951417028632783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A373985 (n + 1) * A373986 (n + 1)

end

end A373984.P13798951417028632783

/-! ## A373984.P9695360834957736684

`A373985(n+1)*A373987(n+1)-A373158(n+1)`
-/

namespace A373984.P9695360834957736684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373985 (n + 1) * A373987 (n + 1) - A373158 (n + 1)

end

end A373984.P9695360834957736684

/-! ## A373984.P15467975009863603487

`(A373987(n+1)-A373986(n+1))*A373985(n+1)`
-/

namespace A373984.P15467975009863603487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A373987 (n + 1) - A373986 (n + 1)) * A373985 (n + 1)

end

end A373984.P15467975009863603487

/-! ## A373984.P9829670031677504878

`A331188(A253560(n+1))-A373158(n+1)`
-/

namespace A373984.P9829670031677504878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A253560 (n + 1)).toNat - A373158 (n + 1)

end

end A373984.P9829670031677504878

/-!
# A373985: a(n) = gcd(A108951(n), A373158(n)), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

The programs for A373985, there is no canonical definition to state claims against.
-/

/-! ## A373985.P13875451483035247394

`A108951(n+1)/A373987(n+1)`
-/

namespace A373985.P13875451483035247394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (A373987 (n + 1) : ℚ)

end

end A373985.P13875451483035247394

/-! ## A373985.P17399683127926261314

`gcd(A108951(n+1), A373158(n+1))`
-/

namespace A373985.P17399683127926261314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108951 (n + 1)) (A373158 (n + 1))

end

end A373985.P17399683127926261314

/-! ## A373985.P5535927817633301074

`(A373984(n+1)+A373158(n+1))/A373987(n+1)`
-/

namespace A373985.P5535927817633301074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373984 (n + 1) + A373158 (n + 1) : ℚ) / (A373987 (n + 1) : ℚ)

end

end A373985.P5535927817633301074

/-! ## A373985.P4901636169453008077

`A181822(A361808(n+1))/A373987(n+1)`
-/

namespace A373985.P4901636169453008077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181822 (A361808 (n + 1)).toNat : ℚ) / (A373987 (n + 1) : ℚ)

end

end A373985.P4901636169453008077

/-! ## A373985.P13391367935512178359

`A331188(A253560(n+1))/A373987(n+1)`
-/

namespace A373985.P13391367935512178359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A253560 (n + 1)).toNat : ℚ) / (A373987 (n + 1) : ℚ)

end

end A373985.P13391367935512178359

/-!
# A373986: Numerator of A373158(n) / A108951(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

The programs for A373986, there is no canonical definition to state claims against.
-/

/-! ## A373986.P8203815680597289083

`A373158(n+1)/A373985(n+1)`
-/

namespace A373986.P8203815680597289083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373158 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373986.P8203815680597289083

/-! ## A373986.P16790703928622148034

`(A108951(n+1)-A373984(n+1))/A373985(n+1)`
-/

namespace A373986.P16790703928622148034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) - A373984 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373986.P16790703928622148034

/-! ## A373986.P13064909124957285423

`A373987(n+1)-A373984(n+1)/A373985(n+1)`
-/

namespace A373986.P13064909124957285423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373987 (n + 1) : ℚ) - (A373984 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373986.P13064909124957285423

/-! ## A373986.P9059580803770224711

`A373158(n+1)/A108951(n+1)*A373987(n+1)`
-/

namespace A373986.P9059580803770224711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373158 (n + 1) : ℚ) / (A108951 (n + 1) : ℚ) * (A373987 (n + 1) : ℚ)

end

end A373986.P9059580803770224711

/-! ## A373986.P17648294734107109517

`A276085(A003961(n+1))/A373985(n+1)`
-/

namespace A373986.P17648294734107109517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276085 (A003961 (n + 1)).toNat : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373986.P17648294734107109517

/-!
# A373987: Denominator of A373158(n) / A108951(n), where A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

The programs for A373987, there is no canonical definition to state claims against.
-/

/-! ## A373987.P5061914862626044472

`A108951(n+1)/A373985(n+1)`
-/

namespace A373987.P5061914862626044472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373987.P5061914862626044472

/-! ## A373987.P1321128053738738667

`(n+1)*A181811(n+1)/A373985(n+1)`
-/

namespace A373987.P1321128053738738667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A181811 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373987.P1321128053738738667

/-! ## A373987.P4622877413909189249

`(A373984(n+1)+A373158(n+1))/A373985(n+1)`
-/

namespace A373987.P4622877413909189249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373984 (n + 1) + A373158 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373987.P4622877413909189249

/-! ## A373987.P13582854744301444796

`A373986(n+1)+A373984(n+1)/A373985(n+1)`
-/

namespace A373987.P13582854744301444796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373986 (n + 1) : ℚ) + (A373984 (n + 1) : ℚ) / (A373985 (n + 1) : ℚ)

end

end A373987.P13582854744301444796

/-! ## A373987.P8679971928330279664

`A108951(n+1)/gcd(A108951(n+1), A373158(n+1))`
-/

namespace A373987.P8679971928330279664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) : ℚ) / (Int.gcd (A108951 (n + 1)) (A373158 (n + 1)) : ℚ)

end

end A373987.P8679971928330279664

/-!
# A373988: Lexicographically earliest infinite sequence such that a(i) = a(j) => A373986(i) = A373986(j), for all i, j >= 1.

The programs for A373988, there is no canonical definition to state claims against.
-/

/-! ## A373988.P1883891687994219343

`A334868(n+1)%A334885(A334861(n+2))`
-/

namespace A373988.P1883891687994219343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334868 (n + 1)) (A334885 (A334861 (n + 2)).toNat)

end

end A373988.P1883891687994219343

/-! ## A373988.P6811513307420546749

`A305979(n+1)%A151719(A008833(2*(n+1)))`
-/

namespace A373988.P6811513307420546749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305979 (n + 1)) (A151719 (A008833 (2 * (n + 1))).toNat)

end

end A373988.P6811513307420546749

/-! ## A373988.P2550654584239682152

`gcd(A112275(A325326(3*n+4)), A305979(n+1))`
-/

namespace A373988.P2550654584239682152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112275 (A325326 (3 * n + 4)).toNat) (A305979 (n + 1))

end

end A373988.P2550654584239682152

/-! ## A373988.P13963104946473691401

`A305979(n+1)%A122407(A102320(n))`
-/

namespace A373988.P13963104946473691401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305979 (n + 1)) (A122407 (A102320 n).toNat)

end

end A373988.P13963104946473691401

/-! ## A373988.P17608440285591077154

`A332963(A107386(n))`
-/

namespace A373988.P17608440285591077154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332963 (A107386 n).toNat

end

end A373988.P17608440285591077154

/-!
# A373989: a(n) = A276150(gcd(A108951(n), A373158(n))), where A276150 is the digit sum in primorial base, A108951 is fully multiplicative and A373158 is fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

The programs for A373989, there is no canonical definition to state claims against.
-/

/-! ## A373989.P17434352081400652092

`gcd(A018189(n), A332423(n+1))`
-/

namespace A373989.P17434352081400652092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018189 n) (A332423 (n + 1))

end

end A373989.P17434352081400652092

/-! ## A373989.P8788503330884736967

`gcd(A001222(n+1), A048272(A245542(n)))`
-/

namespace A373989.P8788503330884736967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A048272 (A245542 n).toNat)

end

end A373989.P8788503330884736967

/-! ## A373989.P6865957161766786311

`gcd(∑{e}[n+1, #], A099768(A000010(n+1)))`
-/

namespace A373989.P6865957161766786311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A099768 (A000010 (n + 1)).toNat)

end

end A373989.P6865957161766786311

/-! ## A373989.P13669209921246419290

`gcd(∑{e}[n+1, #], A102659(A347443(n)))`
-/

namespace A373989.P13669209921246419290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A102659 (A347443 n).toNat)

end

end A373989.P13669209921246419290

/-! ## A373989.P2226049170546794384

`gcd(A086436(n+1), A140759(n+1))`
-/

namespace A373989.P2226049170546794384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086436 (n + 1)) (A140759 (n + 1))

end

end A373989.P2226049170546794384

/-!
# A373990: a(n) = 1 if the binary weight of n is not greater than the 2-adic valuation of 2*n, otherwise 0.

The programs for A373990, the canonical program `A373990.P1245803868984221180` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373990 has offset 1).

The definition of A373990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373990.P1245803868984221180

`char[A335063(n)-1]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373990

/-- `char[A335063(n)-1]` -/
def P1245803868984221180.Spec : Prop :=
  ∀ n, (P1245803868984221180.a n : ℤ) = A373990 (n + 1)

theorem P1245803868984221180.correct : P1245803868984221180.Spec := by
  intro n
  simp only [A373990, Nat.add_sub_cancel]

end A373990

/-! ## A373990.P772525876906138133

`char[or(n, A038573(n))]`
-/

namespace A373990.P772525876906138133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A038573 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373990.P772525876906138133

namespace A373990

/-- `char[or(n, A038573(n))]` -/
def P772525876906138133.Spec : Prop :=
  ∀ n, (P772525876906138133.a n : ℤ) = A373990 (n + 1)

end A373990

/-! ## A373990.P8891644447246318697

`char[A371176(n+1)-1]`
-/

namespace A373990.P8891644447246318697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373990.P8891644447246318697

namespace A373990

/-- `char[A371176(n+1)-1]` -/
def P8891644447246318697.Spec : Prop :=
  ∀ n, (P8891644447246318697.a n : ℤ) = A373990 (n + 1)

end A373990

/-! ## A373990.P13111320610140483515

`A295896(A333777(n))`
-/

namespace A373990.P13111320610140483515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295896 (A333777 n).toNat

end

end A373990.P13111320610140483515

namespace A373990

/-- `A295896(A333777(n))` -/
def P13111320610140483515.Spec : Prop :=
  ∀ n, P13111320610140483515.a n = A373990 (n + 1)

end A373990

/-! ## A373990.P8866751138834133804

`val(A097256(n+1), A097256(A048896(2*n+1)))`
-/

namespace A373990.P8866751138834133804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A097256 (n + 1)).toNat (A097256 (A048896 (2 * n + 1)).toNat).toNat

end

end A373990.P8866751138834133804

namespace A373990

/-- `val(A097256(n+1), A097256(A048896(2*n+1)))` -/
def P8866751138834133804.Spec : Prop :=
  ∀ n, (P8866751138834133804.a n : ℤ) = A373990 (n + 1)

end A373990

/-! ## A373990.P10901417362489681071

`A201058(n+1)%2`
-/

namespace A373990.P10901417362489681071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201058 (n + 1)) 2

end

end A373990.P10901417362489681071

namespace A373990

/-- `A201058(n+1)%2` -/
def P10901417362489681071.Spec : Prop :=
  ∀ n, P10901417362489681071.a n = A373990 (n + 1)

end A373990

/-! ## A373990.P5282551215443269436

`and(A087289(n), A201058(n+1))`
-/

namespace A373990.P5282551215443269436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087289 n) (A201058 (n + 1))

end

end A373990.P5282551215443269436

namespace A373990

/-- `and(A087289(n), A201058(n+1))` -/
def P5282551215443269436.Spec : Prop :=
  ∀ n, P5282551215443269436.a n = A373990 (n + 1)

end A373990

/-! ## A373990.P13564575281147351461

`and(A199116(n), A201058(n+1))`
-/

namespace A373990.P13564575281147351461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199116 n) (A201058 (n + 1))

end

end A373990.P13564575281147351461

namespace A373990

/-- `and(A199116(n), A201058(n+1))` -/
def P13564575281147351461.Spec : Prop :=
  ∀ n, P13564575281147351461.a n = A373990 (n + 1)

end A373990

/-! ## A373990.P11077177157704330867

`and(A050915(n), A201058(n+1))`
-/

namespace A373990.P11077177157704330867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050915 n) (A201058 (n + 1))

end

end A373990.P11077177157704330867

namespace A373990

/-- `and(A050915(n), A201058(n+1))` -/
def P11077177157704330867.Spec : Prop :=
  ∀ n, P11077177157704330867.a n = A373990 (n + 1)

end A373990

/-! ## A373990.P14829370572708518355

`and(1, lcm(n+1, C(2*n+1, n))/(n+1))`
-/

namespace A373990.P14829370572708518355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((Nat.lcm (n + 1) (Nat.choose (2 * n + 1) n) : ℚ) / (n + 1 : ℚ)))

end

end A373990.P14829370572708518355

namespace A373990

/-- `and(1, lcm(n+1, C(2*n+1, n))/(n+1))` -/
def P14829370572708518355.Spec : Prop :=
  ∀ n, P14829370572708518355.a n = A373990 (n + 1)

end A373990

/-! ## A373990.P2246951273413149378

`A133005(n+1)%2`
-/

namespace A373990.P2246951273413149378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133005 (n + 1)) 2

end

end A373990.P2246951273413149378

namespace A373990

/-- `A133005(n+1)%2` -/
def P2246951273413149378.Spec : Prop :=
  ∀ n, P2246951273413149378.a n = A373990 (n + 1)

end A373990

/-! ## A373990.P5222201326461300710

`A070886(A071055(n)+n²)`
-/

namespace A373990.P5222201326461300710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (A071055 n + (n ^ 2 : ℤ)).toNat

end

end A373990.P5222201326461300710

namespace A373990

/-- `A070886(A071055(n)+n²)` -/
def P5222201326461300710.Spec : Prop :=
  ∀ n, P5222201326461300710.a n = A373990 (n + 1)

end A373990

/-!
# A373991: a(n) = 1 if A328768(n) is a multiple of 3, otherwise 0, where A328768 is the first primorial based variant of arithmetic derivative.

The programs for A373991, the canonical program `A373991.P1418235622808596592` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373991 has offset 0).

The definition of A373991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373991.P12335435827845927805

`A079978(A328768(n))`
-/

namespace A373991.P12335435827845927805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A328768 n).toNat

end

end A373991.P12335435827845927805

namespace A373991

/-- `A079978(A328768(n))` -/
def P12335435827845927805.Spec : Prop :=
  ∀ n, P12335435827845927805.a n = A373991 n

end A373991

/-! ## A373991.P1418235622808596592

`char[A373992(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373991

/-- `char[A373992(n+1)]` -/
def P1418235622808596592.Spec : Prop :=
  ∀ n, (P1418235622808596592.a n : ℤ) = A373991 n

theorem P1418235622808596592.correct : P1418235622808596592.Spec := by
  intro n
  simp only [A373991]

end A373991

/-! ## A373991.P12291797001069765738

`A079978(A374123(n))`
-/

namespace A373991.P12291797001069765738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374123 n).toNat

end

end A373991.P12291797001069765738

namespace A373991

/-- `A079978(A374123(n))` -/
def P12291797001069765738.Spec : Prop :=
  ∀ n, P12291797001069765738.a n = A373991 n

end A373991

/-! ## A373991.P10093394965493332500

`A374121(3*A374123(n))`
-/

namespace A373991.P10093394965493332500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374121 (3 * A374123 n).toNat

end

end A373991.P10093394965493332500

namespace A373991

/-- `A374121(3*A374123(n))` -/
def P10093394965493332500.Spec : Prop :=
  ∀ n, P10093394965493332500.a n = A373991 n

end A373991

/-! ## A373991.P12426584422981267517

`A083890(gcd(A001748(n+1), A328768(n)))`
-/

namespace A373991.P12426584422981267517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (Int.gcd (A001748 (n + 1)) (A328768 n))

end

end A373991.P12426584422981267517

namespace A373991

/-- `A083890(gcd(A001748(n+1), A328768(n)))` -/
def P12426584422981267517.Spec : Prop :=
  ∀ n, P12426584422981267517.a n = A373991 n

end A373991

/-!
# A373992: Numbers k such that A328768(k) is a multiple of 3, where A328768 is the first primorial based variant of arithmetic derivative.

The programs for A373992, the canonical program `A373992.P2594044471646967012` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373992 has offset 1).

The definition of A373992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373992.P15677723976392549686

`eq[1, A373991(n)]`
-/

namespace A373992.P15677723976392549686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373992.P15677723976392549686

namespace A373992

/-- `eq[1, A373991(n)]` -/
def P15677723976392549686.Spec : Prop :=
  ∀ n, (P15677723976392549686.a n : ℤ) = A373992 (n + 1)

end A373992

/-! ## A373992.P2594044471646967012

`∪[A374042(n+1), A008591(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373992

/-- `∪[A374042(n+1), A008591(n)]` -/
def P2594044471646967012.Spec : Prop :=
  ∀ n, (P2594044471646967012.a n : ℤ) = A373992 (n + 1)

theorem P2594044471646967012.correct : P2594044471646967012.Spec := by
  intro n
  simp only [A373992, Nat.add_sub_cancel]

end A373992

/-! ## A373992.P5141529865720851455

`∪[A374044(n+1), A008591(n)]`
-/

namespace A373992.P5141529865720851455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373992.P5141529865720851455

namespace A373992

/-- `∪[A374044(n+1), A008591(n)]` -/
def P5141529865720851455.Spec : Prop :=
  ∀ n, (P5141529865720851455.a n : ℤ) = A373992 (n + 1)

end A373992

/-! ## A373992.P1779158352272048443

`∪[A374042(n+1), A374118(n+1)]`
-/

namespace A373992.P1779158352272048443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373992.P1779158352272048443

namespace A373992

/-- `∪[A374042(n+1), A374118(n+1)]` -/
def P1779158352272048443.Spec : Prop :=
  ∀ n, (P1779158352272048443.a n : ℤ) = A373992 (n + 1)

end A373992

/-! ## A373992.P13811356530393428238

`∪[A374044(n+1), A374118(n+1)]`
-/

namespace A373992.P13811356530393428238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373992.P13811356530393428238

namespace A373992

/-- `∪[A374044(n+1), A374118(n+1)]` -/
def P13811356530393428238.Spec : Prop :=
  ∀ n, (P13811356530393428238.a n : ℤ) = A373992 (n + 1)

end A373992

/-! ## A373992.P14948588266654583487

`filter[A282028(n), A373991(#)]`
-/

namespace A373992.P14948588266654583487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A373992.P14948588266654583487

namespace A373992

/-- `filter[A282028(n), A373991(#)]` -/
def P14948588266654583487.Spec : Prop :=
  ∀ n, P14948588266654583487.a n = A373992 (n + 1)

end A373992

/-!
# A373993: a(n) = 1 if the number of divisors of n divides n-1, otherwise 0.

The programs for A373993, the canonical program `A373993.P16686830910054354384` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373993 has offset 1).

The definition of A373993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373993.P16357645755134344332

`C(2, A122377(n+1)+1)`
-/

namespace A373993.P16357645755134344332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A122377 (n + 1) + 1).toNat

end

end A373993.P16357645755134344332

namespace A373993

/-- `C(2, A122377(n+1)+1)` -/
def P16357645755134344332.Spec : Prop :=
  ∀ n, (P16357645755134344332.a n : ℤ) = A373993 (n + 1)

end A373993

/-! ## A373993.P9920102489369664829

`C(A298734(n+1), n+1)`
-/

namespace A373993.P9920102489369664829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A298734 (n + 1)).toNat (n + 1)

end

end A373993.P9920102489369664829

namespace A373993

/-- `C(A298734(n+1), n+1)` -/
def P9920102489369664829.Spec : Prop :=
  ∀ n, (P9920102489369664829.a n : ℤ) = A373993 (n + 1)

end A373993

/-! ## A373993.P16686830910054354384

`C(n, lcm(n, A000005(n+1)))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A373993

/-- `C(n, lcm(n, A000005(n+1)))` -/
def P16686830910054354384.Spec : Prop :=
  ∀ n, (P16686830910054354384.a n : ℤ) = A373993 (n + 1)

theorem P16686830910054354384.correct : P16686830910054354384.Spec := by
  intro n
  simp only [A373993, Nat.add_sub_cancel]

end A373993

/-! ## A373993.P18269376400255308244

`A063524(A122377(n+1))`
-/

namespace A373993.P18269376400255308244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A122377 (n + 1)).toNat

end

end A373993.P18269376400255308244

namespace A373993

/-- `A063524(A122377(n+1))` -/
def P18269376400255308244.Spec : Prop :=
  ∀ n, P18269376400255308244.a n = A373993 (n + 1)

end A373993

/-! ## A373993.P15641900004632718325

`A010051(2*A122377(n+1))`
-/

namespace A373993.P15641900004632718325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A122377 (n + 1)).toNat

end

end A373993.P15641900004632718325

namespace A373993

/-- `A010051(2*A122377(n+1))` -/
def P15641900004632718325.Spec : Prop :=
  ∀ n, P15641900004632718325.a n = A373993 (n + 1)

end A373993

/-! ## A373993.P14153901841512016048

`A010051(A122377(n+1)+A122377(n+1)²)`
-/

namespace A373993.P14153901841512016048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A122377 (n + 1) + A122377 (n + 1) ^ 2).toNat

end

end A373993.P14153901841512016048

namespace A373993

/-- `A010051(A122377(n+1)+A122377(n+1)²)` -/
def P14153901841512016048.Spec : Prop :=
  ∀ n, P14153901841512016048.a n = A373993 (n + 1)

end A373993

/-! ## A373993.P13354283338354282875

`A298426(A359080(A122377(n+1)²))`
-/

namespace A373993.P13354283338354282875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298426 (A359080 (A122377 (n + 1) ^ 2).toNat).toNat

end

end A373993.P13354283338354282875

namespace A373993

/-- `A298426(A359080(A122377(n+1)²))` -/
def P13354283338354282875.Spec : Prop :=
  ∀ n, P13354283338354282875.a n = A373993 (n + 1)

end A373993

/-!
# A373994: a(n) is the largest digit sum of all n-digit sixth powers.

The programs for A373994, there is no canonical definition to state claims against.
-/

/-! ## A373994.P16818323407003687284

`A055567(A380193(n+1))`
-/

namespace A373994.P16818323407003687284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055567 (A380193 (n + 1)).toNat

end

end A373994.P16818323407003687284

/-! ## A373994.P7612962834383910022

`A055567(A380567(n+1))`
-/

namespace A373994.P7612962834383910022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055567 (A380567 (n + 1)).toNat

end

end A373994.P7612962834383910022

/-! ## A373994.P15511671829964646302

`A055567(A018261(n+1)+1-A225641(n))`
-/

namespace A373994.P15511671829964646302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055567 (A018261 (n + 1) + 1 - A225641 n).toNat

end

end A373994.P15511671829964646302

/-! ## A373994.P5842397525697906894

`A055567(A018261(n+1)+1-A047913(n+1))`
-/

namespace A373994.P5842397525697906894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055567 (A018261 (n + 1) + 1 - A047913 (n + 1)).toNat

end

end A373994.P5842397525697906894

/-!
# A373999: a(1) = 1, a(2) = 2, a(3) = 3, a(4) = 5, a(5) = 7; for n > 5, a(n) is the smallest unused positive number that is coprime to a(n-1), a(n-2) and a(n-3) but has a common factor with at least one of a(1)...a(n-4).

The programs for A373999, there is no canonical definition to state claims against.
-/

/-! ## A373999.P8259375992562528446

`filter[A194359(n), A010055(#)]`
-/

namespace A373999.P8259375992562528446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A373999.P8259375992562528446

/-! ## A373999.P9412745658017861483

`filter[A194359(n), A355937(#)]`
-/

namespace A373999.P9412745658017861483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A373999.P9412745658017861483

/-! ## A373999.P14490068316779655591

`A077558(n+2)-A108658(A029804(n+1))`
-/

namespace A373999.P14490068316779655591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077558 (n + 2) - A108658 (A029804 (n + 1)).toNat

end

end A373999.P14490068316779655591

