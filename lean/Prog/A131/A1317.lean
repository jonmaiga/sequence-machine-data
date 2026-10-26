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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A131702: Distances between the locations of new prime gaps (A014320).

The programs for A131702, there is no canonical definition to state claims against.
-/

/-! ## A131702.P11332351337089849142

`Δ[A000720(A335366(n+1))]-1`
-/

namespace A131702.P11332351337089849142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A335366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A131702.P11332351337089849142

/-! ## A131702.P392839762036940087

`Δ[A000720(A335367(n+1))]-1`
-/

namespace A131702.P392839762036940087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A335367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A131702.P392839762036940087

/-! ## A131702.P760999025694846800

`Δ[A001489(n)+A000720(A335366(n+1))]`
-/

namespace A131702.P760999025694846800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000720 (A335366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131702.P760999025694846800

/-! ## A131702.P7080491166499047022

`Δ[A001489(n)+A000720(A335367(n+1))]`
-/

namespace A131702.P7080491166499047022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000720 (A335367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131702.P7080491166499047022

/-! ## A131702.P3858244164289325022

`Δ[A024000(n)+A000720(A335366(n+1))]`
-/

namespace A131702.P3858244164289325022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A000720 (A335366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131702.P3858244164289325022

/-!
# A131705: Phi(binomial(2*n,n)*n^3).

The programs for A131705, there is no canonical definition to state claims against.
-/

/-! ## A131705.P4918105384248188734

`n*A131681(n)`
-/

namespace A131705.P4918105384248188734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131681 n

end

end A131705.P4918105384248188734

/-! ## A131705.P12227474216676923889

`n²*A131928(n)`
-/

namespace A131705.P12227474216676923889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A131928 n

end

end A131705.P12227474216676923889

/-! ## A131705.P8346847336027751975

`A131928(n)*A253909(n)`
-/

namespace A131705.P8346847336027751975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131928 n * A253909 n

end

end A131705.P8346847336027751975

/-! ## A131705.P8985832580363170727

`n*A131928(n)*A028310(n)`
-/

namespace A131705.P8985832580363170727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131928 n * A028310 n

end

end A131705.P8985832580363170727

/-!
# A131706: Squares of the form 4*A014574(n-1) + 1.

The programs for A131706, there is no canonical definition to state claims against.
-/

/-! ## A131706.P6455945082240453357

`4*A088486(n+1)+5`
-/

namespace A131706.P6455945082240453357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088486 (n + 1) + 5

end

end A131706.P6455945082240453357

/-! ## A131706.P1487355710941041404

`4*A265006(Δ[n²])+5`
-/

namespace A131706.P1487355710941041404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A265006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 5

end

end A131706.P1487355710941041404

/-! ## A131706.P17975823891741786559

`(2*A088485(n+1)+1)²`
-/

namespace A131706.P17975823891741786559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A088485 (n + 1) + 1) ^ 2

end

end A131706.P17975823891741786559

/-! ## A131706.P3465989676843471905

`(1-2*A131530(n+1))²`
-/

namespace A131706.P3465989676843471905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A131530 (n + 1)) ^ 2

end

end A131706.P3465989676843471905

/-! ## A131706.P17710015302227753524

`∩[A110013(n+1), A110284(n+1)]`
-/

namespace A131706.P17710015302227753524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131706.P17710015302227753524

/-! ## A131706.P16530705150036135920

`(A131530(n+1)+A088485(n+1))²`
-/

namespace A131706.P16530705150036135920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131530 (n + 1) + A088485 (n + 1)) ^ 2

end

end A131706.P16530705150036135920

/-! ## A131706.P12863531037215944634

`∩[A088502(n+1), A088503(n+1)]²`
-/

namespace A131706.P12863531037215944634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A131706.P12863531037215944634

/-! ## A131706.P13672712016426941088

`A016754(A088485(n+1))`
-/

namespace A131706.P13672712016426941088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A088485 (n + 1)).toNat

end

end A131706.P13672712016426941088

/-! ## A131706.P12040369199472231190

`A004273(A131530(n+1))²`
-/

namespace A131706.P12040369199472231190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A131530 (n + 1)).toNat ^ 2

end

end A131706.P12040369199472231190

/-! ## A131706.P3332297759443881479

`A004273(A088485(n+1)+1)²`
-/

namespace A131706.P3332297759443881479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A088485 (n + 1) + 1).toNat ^ 2

end

end A131706.P3332297759443881479

/-! ## A131706.P68881981886119787

`A004280(A131530(n+1)+1)²`
-/

namespace A131706.P68881981886119787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A131530 (n + 1) + 1).toNat ^ 2

end

end A131706.P68881981886119787

/-! ## A131706.P6736031513834991530

`A060747(A088485(n+1)+1)²`
-/

namespace A131706.P6736031513834991530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A088485 (n + 1) + 1).toNat ^ 2

end

end A131706.P6736031513834991530

/-! ## A131706.P13783301333172788771

`A004442(2*A088485(n+1))²`
-/

namespace A131706.P13783301333172788771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A088485 (n + 1)).toNat ^ 2

end

end A131706.P13783301333172788771

/-! ## A131706.P9966911836973223248

`A020725(2*A088485(n+1))²`
-/

namespace A131706.P9966911836973223248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (2 * A088485 (n + 1)).toNat ^ 2

end

end A131706.P9966911836973223248

/-! ## A131706.P4548317806594031504

`A014681(2*A131530(n+1))²`
-/

namespace A131706.P4548317806594031504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A131530 (n + 1)).toNat ^ 2

end

end A131706.P4548317806594031504

/-! ## A131706.P17912353158846283574

`A023443(2*A131530(n+1))²`
-/

namespace A131706.P17912353158846283574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A131530 (n + 1)).toNat ^ 2

end

end A131706.P17912353158846283574

/-! ## A131706.P6841767133396187169

`A000290(2*A088485(n+1)+1)`
-/

namespace A131706.P6841767133396187169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A088485 (n + 1) + 1).toNat

end

end A131706.P6841767133396187169

/-! ## A131706.P9797311677385030620

`A191871(2*A088485(n+1)+1)`
-/

namespace A131706.P9797311677385030620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191871 (2 * A088485 (n + 1) + 1).toNat

end

end A131706.P9797311677385030620

/-! ## A131706.P4231042370124217470

`A000290(A088485(n+1)+A088485(n+1)+1)`
-/

namespace A131706.P4231042370124217470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A088485 (n + 1) + (A088485 (n + 1) + 1)).toNat

end

end A131706.P4231042370124217470

/-! ## A131706.P17846832384543377339

`A191871(A088485(n+1)+A088485(n+1)+1)`
-/

namespace A131706.P17846832384543377339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191871 (A088485 (n + 1) + (A088485 (n + 1) + 1)).toNat

end

end A131706.P17846832384543377339

/-!
# A131707: Period 12: repeat 1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9 .

The programs for A131707, the canonical program `A131707.P8430542883269119565` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131707 has offset 0).

The definition of A131707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131707.P8430542883269119565

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7, a(4)=7, a(5)=1, a(6)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131707

/-- `a(n-1)-a(n-6)+a(n-7)` -/
def P8430542883269119565.Spec : Prop :=
  ∀ n, P8430542883269119565.a n = A131707 n

theorem P8430542883269119565.correct : P8430542883269119565.Spec := by
  intro n
  simp only [A131707]

end A131707

/-!
# A131708: A024494 prefixed by a 0.

The programs for A131708, the canonical program `A131708.P14691691622728672737` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131708 has offset 0).

The definition of A131708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131708.P14691691622728672737

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131708

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P14691691622728672737.Spec : Prop :=
  ∀ n, P14691691622728672737.a n = A131708 n

theorem P14691691622728672737.correct : P14691691622728672737.Spec := by
  intro n
  simp only [A131708]

end A131708

/-! ## A131708.P5064311569502087316

`ogf((x-x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A131708.P5064311569502087316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -3, 3, -2] n

end

end A131708.P5064311569502087316

namespace A131708

/-- `ogf((x-x^2)/(1-3x+3x^2-2x^3))` -/
def P5064311569502087316.Spec : Prop :=
  ∀ n, P5064311569502087316.a n = A131708 n

end A131708

/-! ## A131708.P5182669076499454213

`round(2*a(n-1))+round(cos(n%6))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A131708.P5182669076499454213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

end

end A131708.P5182669076499454213

namespace A131708

/-- `round(2*a(n-1))+round(cos(n%6))` -/
def P5182669076499454213.Spec : Prop :=
  ∀ n, P5182669076499454213.a n = A131708 n

end A131708

/-! ## A131708.P13306110648288421524

`2^(n-2)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A131708.P13306110648288421524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (a (n - 1) - a (n - 2))

end

end A131708.P13306110648288421524

namespace A131708

/-- `2^(n-2)+a(n-1)-a(n-2)` -/
def P13306110648288421524.Spec : Prop :=
  ∀ n, P13306110648288421524.a n = (A131708 n : ℚ)

end A131708

/-! ## A131708.P10904518354196190308

`2*(a(n-1)+a(n-4))-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A131708.P10904518354196190308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  2 * (a (n - 1) + a (n - 4)) - a (n - 3)

end

end A131708.P10904518354196190308

namespace A131708

/-- `2*(a(n-1)+a(n-4))-a(n-3)` -/
def P10904518354196190308.Spec : Prop :=
  ∀ n, P10904518354196190308.a n = A131708 n

end A131708

/-! ## A131708.P7858618490470329596

`A133806(2*n)`
-/

namespace A131708.P7858618490470329596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133806 (2 * n)

end

end A131708.P7858618490470329596

namespace A131708

/-- `A133806(2*n)` -/
def P7858618490470329596.Spec : Prop :=
  ∀ n, P7858618490470329596.a n = A131708 n

end A131708

/-! ## A131708.P16641288311955895538

`A111926(n)+n`
-/

namespace A131708.P16641288311955895538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111926 n + (n : ℤ)

end

end A131708.P16641288311955895538

namespace A131708

/-- `A111926(n)+n` -/
def P16641288311955895538.Spec : Prop :=
  ∀ n, P16641288311955895538.a n = A131708 n

end A131708

/-! ## A131708.P4877221191110376487

`A138635(3*n+1)`
-/

namespace A131708.P4877221191110376487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (3 * n + 1)

end

end A131708.P4877221191110376487

namespace A131708

/-- `A138635(3*n+1)` -/
def P4877221191110376487.Spec : Prop :=
  ∀ n, P4877221191110376487.a n = A131708 n

end A131708

/-! ## A131708.P14856889620862514679

`2*a(n-1)+A010892(n)` with `a(0)=0`
-/

namespace A131708.P14856889620862514679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + A010892 n

end

end A131708.P14856889620862514679

namespace A131708

/-- `2*a(n-1)+A010892(n)` -/
def P14856889620862514679.Spec : Prop :=
  ∀ n, P14856889620862514679.a n = A131708 n

end A131708

/-! ## A131708.P8675380905381658846

`A133684(A047267(n+1))`
-/

namespace A131708.P8675380905381658846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047267 (n + 1)).toNat

end

end A131708.P8675380905381658846

namespace A131708

/-- `A133684(A047267(n+1))` -/
def P8675380905381658846.Spec : Prop :=
  ∀ n, P8675380905381658846.a n = A131708 n

end A131708

/-! ## A131708.P12594949839227921533

`A128834(n)+A024495(n)`
-/

namespace A131708.P12594949839227921533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + A024495 n

end

end A131708.P12594949839227921533

namespace A131708

/-- `A128834(n)+A024495(n)` -/
def P12594949839227921533.Spec : Prop :=
  ∀ n, P12594949839227921533.a n = A131708 n

end A131708

/-! ## A131708.P390340224985289572

`A130707(n)-A010892(n)`
-/

namespace A131708.P390340224985289572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n - A010892 n

end

end A131708.P390340224985289572

namespace A131708

/-- `A130707(n)-A010892(n)` -/
def P390340224985289572.Spec : Prop :=
  ∀ n, P390340224985289572.a n = A131708 n

end A131708

/-! ## A131708.P14950627025961350032

`A191370(n)-A132367(n)`
-/

namespace A131708.P14950627025961350032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191370 n - A132367 n

end

end A131708.P14950627025961350032

namespace A131708

/-- `A191370(n)-A132367(n)` -/
def P14950627025961350032.Spec : Prop :=
  ∀ n, P14950627025961350032.a n = A131708 n

end A131708

/-! ## A131708.P14107443113805661330

`A133684(∑[A010882(n)]-1)`
-/

namespace A131708.P14107443113805661330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A131708.P14107443113805661330

namespace A131708

/-- `A133684(∑[A010882(n)]-1)` -/
def P14107443113805661330.Spec : Prop :=
  ∀ n, P14107443113805661330.a n = A131708 n

end A131708

/-! ## A131708.P10900164470252726478

`A133684(A047236(n+2)-2)`
-/

namespace A131708.P10900164470252726478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047236 (n + 2) - 2).toNat

end

end A131708.P10900164470252726478

namespace A131708

/-- `A133684(A047236(n+2)-2)` -/
def P10900164470252726478.Spec : Prop :=
  ∀ n, P10900164470252726478.a n = A131708 n

end A131708

/-! ## A131708.P3062012652151890823

`A131531(n+1)+A001045(n)`
-/

namespace A131708.P3062012652151890823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + A001045 n

end

end A131708.P3062012652151890823

namespace A131708

/-- `A131531(n+1)+A001045(n)` -/
def P3062012652151890823.Spec : Prop :=
  ∀ n, P3062012652151890823.a n = A131708 n

end A131708

/-! ## A131708.P14681676509614530142

`A131666(n+1)+A131666(n)`
-/

namespace A131708.P14681676509614530142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) + A131666 n

end

end A131708.P14681676509614530142

namespace A131708

/-- `A131666(n+1)+A131666(n)` -/
def P14681676509614530142.Spec : Prop :=
  ∀ n, P14681676509614530142.a n = A131708 n

end A131708

/-! ## A131708.P10921788249125242890

`A173432(n+1)+A167030(n)`
-/

namespace A131708.P10921788249125242890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173432 (n + 1) + A167030 n

end

end A131708.P10921788249125242890

namespace A131708

/-- `A173432(n+1)+A167030(n)` -/
def P10921788249125242890.Spec : Prop :=
  ∀ n, P10921788249125242890.a n = A131708 n

end A131708

/-! ## A131708.P6710915985934106547

`A024493(n)-A010892(n+1)`
-/

namespace A131708.P6710915985934106547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n - A010892 (n + 1)

end

end A131708.P6710915985934106547

namespace A131708

/-- `A024493(n)-A010892(n+1)` -/
def P6710915985934106547.Spec : Prop :=
  ∀ n, P6710915985934106547.a n = A131708 n

end A131708

/-! ## A131708.P3154380173249367865

`A078008(n)-A092220(n+1)`
-/

namespace A131708.P3154380173249367865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - A092220 (n + 1)

end

end A131708.P3154380173249367865

namespace A131708

/-- `A078008(n)-A092220(n+1)` -/
def P3154380173249367865.Spec : Prop :=
  ∀ n, P3154380173249367865.a n = A131708 n

end A131708

/-!
# A131709: Number of partitions into "bus routes" of an n X 1 grid.

The programs for A131709, the canonical program `A131709.P285307378893322942` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131709 has offset 0).

The definition of A131709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131709.P285307378893322942

`10*(a(n-1)-a(n-2))+4` with `a(0)=1, a(1)=4, a(2)=14`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131709

/-- `10*(a(n-1)-a(n-2))+4` -/
def P285307378893322942.Spec : Prop :=
  ∀ n, P285307378893322942.a n = A131709 n

theorem P285307378893322942.correct : P285307378893322942.Spec := by
  intro n
  simp only [A131709]

end A131709

/-!
# A131710: Overlay of Pell numbers: a(n)=A000129(n)+A000129(n-6).

The programs for A131710, the canonical program `A131710.P16868255567281200361` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131710 has offset 0).

The definition of A131710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131710.P17094985076139702600

`ogf((x+x^7)/(1-2x-x^2))`
-/

namespace A131710.P17094985076139702600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, 0, 0, 0, 1] [1, -2, -1] n

end

end A131710.P17094985076139702600

namespace A131710

/-- `ogf((x+x^7)/(1-2x-x^2))` -/
def P17094985076139702600.Spec : Prop :=
  ∀ n, P17094985076139702600.a n = A131710 n

end A131710

/-! ## A131710.P16868255567281200361

`char[7]+a(n-2)+2*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131710

/-- `char[7]+a(n-2)+2*a(n-1)` -/
def P16868255567281200361.Spec : Prop :=
  ∀ n, (P16868255567281200361.a n : ℤ) = A131710 n

theorem P16868255567281200361.correct : P16868255567281200361.Spec := by
  intro n
  simp only [A131710]

end A131710

/-! ## A131710.P17220862537212756849

`floor(Δ[A131721(n)/2])`
-/

namespace A131710.P17220862537212756849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131721 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A131710.P17220862537212756849

namespace A131710

/-- `floor(Δ[A131721(n)/2])` -/
def P17220862537212756849.Spec : Prop :=
  ∀ n, P17220862537212756849.a n = A131710 n

end A131710

/-! ## A131710.P13866442925050865209

`round(A001652(n)/A131607(n+4))`
-/

namespace A131710.P13866442925050865209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001652 n : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131710.P13866442925050865209

namespace A131710

/-- `round(A001652(n)/A131607(n+4))` -/
def P13866442925050865209.Spec : Prop :=
  ∀ n, P13866442925050865209.a n = A131710 n

end A131710

/-! ## A131710.P14341490685497637112

`round(Δ[A215928(n)²]/A131607(n+4))`
-/

namespace A131710.P14341490685497637112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131710.P14341490685497637112

namespace A131710

/-- `round(Δ[A215928(n)²]/A131607(n+4))` -/
def P14341490685497637112.Spec : Prop :=
  ∀ n, P14341490685497637112.a n = A131710 n

end A131710

/-! ## A131710.P5521839252508872951

`round(A001542(n+1)/Δ[A131607(n+5)])`
-/

namespace A131710.P5521839252508872951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131607 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001542 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A131710.P5521839252508872951

namespace A131710

/-- `round(A001542(n+1)/Δ[A131607(n+5)])` -/
def P5521839252508872951.Spec : Prop :=
  ∀ n, P5521839252508872951.a n = A131710 n

end A131710

/-! ## A131710.P12465429415577487490

`round(Δ[A001109(n+1)/A131607(n+5)])`
-/

namespace A131710.P12465429415577487490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001109 (n + 1) : ℚ) / (A131607 (n + 5) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A131710.P12465429415577487490

namespace A131710

/-- `round(Δ[A001109(n+1)/A131607(n+5)])` -/
def P12465429415577487490.Spec : Prop :=
  ∀ n, P12465429415577487490.a n = A131710 n

end A131710

/-!
# A131711: Period 12: repeat 0, 1, 2, 5, 2, 9, 0, 9, 8, 5, 8, 1.

The programs for A131711, the canonical program `A131711.P3643853937550274514` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131711 has offset 0).

The definition of A131711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131711.P3643853937550274514

`A000129(n)%10`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131711

/-- `A000129(n)%10` -/
def P3643853937550274514.Spec : Prop :=
  ∀ n, P3643853937550274514.a n = A131711 n

theorem P3643853937550274514.correct : P3643853937550274514.Spec := by
  intro n
  simp only [A131711]

end A131711

/-!
# A131712: Period 4: repeat [1, 3, 7, 9].

The programs for A131712, the canonical program `A131712.P12910695439427415637` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131712 has offset 0).

The definition of A131712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131712.P12910695439427415637

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131712

/-- `a(n-4)` -/
def P12910695439427415637.Spec : Prop :=
  ∀ n, (P12910695439427415637.a n : ℤ) = A131712 n

theorem P12910695439427415637.correct : P12910695439427415637.Spec := by
  intro n
  simp only [A131712]

end A131712

/-!
# A131713: Period 3: repeat [1, -2, 1].

The programs for A131713, the canonical program `A131713.P14902708299758432573` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131713 has offset 0).

The definition of A131713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131713.P14902708299758432573

`a(n-3)` with `a(0)=1, a(1)=-2, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131713

/-- `a(n-3)` -/
def P14902708299758432573.Spec : Prop :=
  ∀ n, P14902708299758432573.a n = A131713 n

theorem P14902708299758432573.correct : P14902708299758432573.Spec := by
  intro n
  simp only [A131713]

end A131713

/-!
# A131714: Period 6: repeat [1, -2, 2, -1, 2, -2].

The programs for A131714, the canonical program `A131714.P965059567562823147` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131714 has offset 0).

The definition of A131714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131714.P965059567562823147

`-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131714

/-- `-a(n-3)` -/
def P965059567562823147.Spec : Prop :=
  ∀ n, P965059567562823147.a n = A131714 n

theorem P965059567562823147.correct : P965059567562823147.Spec := by
  intro n
  simp only [A131714]

end A131714

/-!
# A131715: Period 12: repeat 0,2,4,0,-6,8,0,-2,-4,0,6,-8.

The programs for A131715, the canonical program `A131715.P6327802127651957379` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131715 has offset 0).

The definition of A131715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131715.P6327802127651957379

`A131707(n+1)-A131707(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131715

/-- `A131707(n+1)-A131707(n)` -/
def P6327802127651957379.Spec : Prop :=
  ∀ n, P6327802127651957379.a n = A131715 n

theorem P6327802127651957379.correct : P6327802127651957379.Spec := by
  intro n
  simp only [A131715]

end A131715

/-!
# A131716: Period 6: repeat [0, 1, 2, 5, 8, 9].

The programs for A131716, the canonical program `A131716.P9401865175633964874` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131716 has offset 0).

The definition of A131716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131716.P9401865175633964874

`a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=8, a(5)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131716

/-- `a(n-6)` -/
def P9401865175633964874.Spec : Prop :=
  ∀ n, (P9401865175633964874.a n : ℤ) = A131716 n

theorem P9401865175633964874.correct : P9401865175633964874.Spec := by
  intro n
  simp only [A131716]

end A131716

/-!
# A131717: Natural numbers A000027 with 6n+4 and 6n+5 terms swapped.

The programs for A131717, the canonical program `A131717.P15600308203601758111` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131717 has offset 1).

The definition of A131717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131717.P15600308203601758111

`ceil((n+2)%6/4)+n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131717

/-- `ceil((n+2)%6/4)+n` -/
def P15600308203601758111.Spec : Prop :=
  ∀ n, P15600308203601758111.a n = A131717 (n + 1)

theorem P15600308203601758111.correct : P15600308203601758111.Spec := by
  intro n
  simp only [A131717, Nat.add_sub_cancel]

end A131717

/-! ## A131717.P6665803037643542083

`a(n-2)+3-(n*a(n-1))%3` with `a(0)=1, a(1)=2`
-/

namespace A131717.P6665803037643542083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (3 - Int.tmod ((n : ℤ) * a (n - 1)) 3)

end

end A131717.P6665803037643542083

namespace A131717

/-- `a(n-2)+3-(n*a(n-1))%3` -/
def P6665803037643542083.Spec : Prop :=
  ∀ n, P6665803037643542083.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P12824008185939103988

`∑[A131017(abs(1-n))]`
-/

namespace A131717.P12824008185939103988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131017 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131717.P12824008185939103988

namespace A131717

/-- `∑[A131017(abs(1-n))]` -/
def P12824008185939103988.Spec : Prop :=
  ∀ n, P12824008185939103988.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P10293949083948553749

`A131017(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A131717.P10293949083948553749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131017 (n - 1) + a (n - 1)

end

end A131717.P10293949083948553749

namespace A131717

/-- `A131017(n-1)+a(n-1)` -/
def P10293949083948553749.Spec : Prop :=
  ∀ n, P10293949083948553749.a n = A131717 (n + 1)

theorem P10293949083948553749.correct : P10293949083948553749.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131717, Nat.add_sub_cancel, A131717.P10293949083948553749.a, A131717.P15600308203601758111.a, A131017, A131017.P5754187726822427039.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131717, Nat.add_sub_cancel, A131717.P10293949083948553749.a, A131717.P15600308203601758111.a, A131017, A131017.P5754187726822427039.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A131717

/-! ## A131717.P12523049236797746987

`n+2-A093718(a(n-1))` with `a(0)=1`
-/

namespace A131717.P12523049236797746987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - A093718 (a (n - 1)).toNat

end

end A131717.P12523049236797746987

namespace A131717

/-- `n+2-A093718(a(n-1))` -/
def P12523049236797746987.Spec : Prop :=
  ∀ n, P12523049236797746987.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P4412729171796862528

`A103469(n+3)+A004523(n)`
-/

namespace A131717.P4412729171796862528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103469 (n + 3) + A004523 n

end

end A131717.P4412729171796862528

namespace A131717

/-- `A103469(n+3)+A004523(n)` -/
def P4412729171796862528.Spec : Prop :=
  ∀ n, P4412729171796862528.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P15081626740502159888

`∑[A131017(n)]+1-A131017(n)`
-/

namespace A131717.P15081626740502159888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A131017 n)

end

end A131717.P15081626740502159888

namespace A131717

/-- `∑[A131017(n)]+1-A131017(n)` -/
def P15081626740502159888.Spec : Prop :=
  ∀ n, P15081626740502159888.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P1446795198409182285

`A131042(n+1)+1-A131017(n)`
-/

namespace A131717.P1446795198409182285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131042 (n + 1) + (1 - A131017 n)

end

end A131717.P1446795198409182285

namespace A131717

/-- `A131042(n+1)+1-A131017(n)` -/
def P1446795198409182285.Spec : Prop :=
  ∀ n, P1446795198409182285.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P18303185981081549439

`A032766(n+1)-A187321(A004396(n)+1)`
-/

namespace A131717.P18303185981081549439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) - A187321 (A004396 n + 1).toNat

end

end A131717.P18303185981081549439

namespace A131717

/-- `A032766(n+1)-A187321(A004396(n)+1)` -/
def P18303185981081549439.Spec : Prop :=
  ∀ n, P18303185981081549439.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P2957221094940498504

`A131533(n+1)+1+n`
-/

namespace A131717.P2957221094940498504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131533 (n + 1) + 1 + (n : ℤ)

end

end A131717.P2957221094940498504

namespace A131717

/-- `A131533(n+1)+1+n` -/
def P2957221094940498504.Spec : Prop :=
  ∀ n, P2957221094940498504.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P12336036040474508245

`xor(n+1, A131532(n+1))`
-/

namespace A131717.P12336036040474508245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A131532 (n + 1))

end

end A131717.P12336036040474508245

namespace A131717

/-- `xor(n+1, A131532(n+1))` -/
def P12336036040474508245.Spec : Prop :=
  ∀ n, P12336036040474508245.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P617956743366834068

`A064429(a(n-3)+3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A131717.P617956743366834068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A064429 (a (n - 3) + 3).toNat

end

end A131717.P617956743366834068

namespace A131717

/-- `A064429(a(n-3)+3)` -/
def P617956743366834068.Spec : Prop :=
  ∀ n, P617956743366834068.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P15468790716837655689

`n+2-A093718(∑[A093718(n+1)])`
-/

namespace A131717.P15468790716837655689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A093718 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131717.P15468790716837655689

namespace A131717

/-- `n+2-A093718(∑[A093718(n+1)])` -/
def P15468790716837655689.Spec : Prop :=
  ∀ n, P15468790716837655689.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P8031045497945446819

`A110654(A064429(n+1))+A110654(n)`
-/

namespace A131717.P8031045497945446819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A064429 (n + 1)).toNat + A110654 n

end

end A131717.P8031045497945446819

namespace A131717

/-- `A110654(A064429(n+1))+A110654(n)` -/
def P8031045497945446819.Spec : Prop :=
  ∀ n, P8031045497945446819.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P13979056238007003804

`A110654(n)+A110654(A236348(n)+1)`
-/

namespace A131717.P13979056238007003804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A110654 (A236348 n + 1).toNat

end

end A131717.P13979056238007003804

namespace A131717

/-- `A110654(n)+A110654(A236348(n)+1)` -/
def P13979056238007003804.Spec : Prop :=
  ∀ n, P13979056238007003804.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P1523177527644535937

`A123108(n+1)+A123108(A080782(n+2))`
-/

namespace A131717.P1523177527644535937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) + A123108 (A080782 (n + 2)).toNat

end

end A131717.P1523177527644535937

namespace A131717

/-- `A123108(n+1)+A123108(A080782(n+2))` -/
def P1523177527644535937.Spec : Prop :=
  ∀ n, P1523177527644535937.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P6095622199172391471

`A106251(A053438(n))+1`
-/

namespace A131717.P6095622199172391471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A053438 n).toNat + 1

end

end A131717.P6095622199172391471

namespace A131717

/-- `A106251(A053438(n))+1` -/
def P6095622199172391471.Spec : Prop :=
  ∀ n, P6095622199172391471.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P16216437625455698595

`A265428(2*n+1)-A265428(A004523(n+1))`
-/

namespace A131717.P16216437625455698595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265428 (2 * n + 1) - A265428 (A004523 (n + 1)).toNat

end

end A131717.P16216437625455698595

namespace A131717

/-- `A265428(2*n+1)-A265428(A004523(n+1))` -/
def P16216437625455698595.Spec : Prop :=
  ∀ n, P16216437625455698595.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P15363241983798293643

`A004526(A110269(n+2)+2*n+1)`
-/

namespace A131717.P15363241983798293643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110269 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A131717.P15363241983798293643

namespace A131717

/-- `A004526(A110269(n+2)+2*n+1)` -/
def P15363241983798293643.Spec : Prop :=
  ∀ n, P15363241983798293643.a n = A131717 (n + 1)

end A131717

/-! ## A131717.P388769577272924899

`A300068(A300290(n+2)+2*n+1)`
-/

namespace A131717.P388769577272924899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A300290 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A131717.P388769577272924899

namespace A131717

/-- `A300068(A300290(n+2)+2*n+1)` -/
def P388769577272924899.Spec : Prop :=
  ∀ n, P388769577272924899.a n = A131717 (n + 1)

end A131717

/-!
# A131718: Period 6: repeat [1, 1, 2, 1, 2, 1].

The programs for A131718, the canonical program `A131718.P6104350688127780495` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131718 has offset 0).

The definition of A131718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131718.P6104350688127780495

`a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131718

/-- `a(n-6)` -/
def P6104350688127780495.Spec : Prop :=
  ∀ n, (P6104350688127780495.a n : ℤ) = A131718 n

theorem P6104350688127780495.correct : P6104350688127780495.Spec := by
  intro n
  simp only [A131718]

end A131718

/-!
# A131719: Period 6: repeat [0, 1, 1, 1, 1, 0].

The programs for A131719, the canonical program `A131719.P16672368885800405040` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131719 has offset 0).

The definition of A131719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131719.P16672368885800405040

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131719

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P16672368885800405040.Spec : Prop :=
  ∀ n, P16672368885800405040.a n = A131719 n

theorem P16672368885800405040.correct : P16672368885800405040.Spec := by
  intro n
  simp only [A131719]

end A131719

/-!
# A131720: Period 6: repeat [0, 1, -1, 1, -1, 0].

The programs for A131720, the canonical program `A131720.P12431951487258657385` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131720 has offset 0).

The definition of A131720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131720.P12431951487258657385

`Δ[or(-n, n²%3)]+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131720

/-- `Δ[or(-n, n²%3)]+1` -/
def P12431951487258657385.Spec : Prop :=
  ∀ n, P12431951487258657385.a n = A131720 n

theorem P12431951487258657385.correct : P12431951487258657385.Spec := by
  intro n
  simp only [A131720]

end A131720

/-!
# A131721: Overlay of Pell companion numbers: a(n) = A001333(n) + A001333(n-6).

The programs for A131721, the canonical program `A131721.P13343220242422525208` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131721 has offset 0).

The definition of A131721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131721.P15513353007491278804

`ogf((-1+x-x^6+x^7)/(-1+2x+x^2))`
-/

namespace A131721.P15513353007491278804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 0, 0, 0, 1, -1] [1, -2, -1] n

end

end A131721.P15513353007491278804

namespace A131721

/-- `ogf((-1+x-x^6+x^7)/(-1+2x+x^2))` -/
def P15513353007491278804.Spec : Prop :=
  ∀ n, P15513353007491278804.a n = A131721 n

end A131721

/-! ## A131721.P2004442677598409573

`Δ[char[7]+a(n-2)+2*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A131721.P2004442677598409573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + (f1 (n - 2) + 2 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A131721.P2004442677598409573

namespace A131721

/-- `Δ[char[7]+a(n-2)+2*a(n-1)]` -/
def P2004442677598409573.Spec : Prop :=
  ∀ n, P2004442677598409573.a n = A131721 n

end A131721

/-! ## A131721.P13343220242422525208

`Δ[A131710(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131721

/-- `Δ[A131710(n)]` -/
def P13343220242422525208.Spec : Prop :=
  ∀ n, P13343220242422525208.a n = A131721 n

theorem P13343220242422525208.correct : P13343220242422525208.Spec := by
  intro n
  simp only [A131721]

end A131721

/-! ## A131721.P6651062460926382972

`A131710(n+1)-A131710(n)`
-/

namespace A131721.P6651062460926382972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131710 (n + 1) - A131710 n

end

end A131721.P6651062460926382972

namespace A131721

/-- `A131710(n+1)-A131710(n)` -/
def P6651062460926382972.Spec : Prop :=
  ∀ n, P6651062460926382972.a n = A131721 n

theorem P6651062460926382972.correct : P6651062460926382972.Spec := by
  intro n
  simp only [A131721, Nat.add_sub_cancel, A131721.P6651062460926382972.a, A131721.P13343220242422525208.f1, A131721.P13343220242422525208.a, SequenceMachineLib.memo_apply]

end A131721

/-! ## A131721.P4634356658808692962

`round(Δ[A001109(n)]/A131607(n+4))`
-/

namespace A131721.P4634356658808692962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P4634356658808692962

namespace A131721

/-- `round(Δ[A001109(n)]/A131607(n+4))` -/
def P4634356658808692962.Spec : Prop :=
  ∀ n, P4634356658808692962.a n = A131721 n

end A131721

/-! ## A131721.P13020417807322143029

`round(A001653(n+1)/A131607(n+4))`
-/

namespace A131721.P13020417807322143029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001653 (n + 1) : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P13020417807322143029

namespace A131721

/-- `round(A001653(n+1)/A131607(n+4))` -/
def P13020417807322143029.Spec : Prop :=
  ∀ n, P13020417807322143029.a n = A131721 n

end A131721

/-! ## A131721.P1851831580673763976

`round((A182190(n)+1)/A131607(n+4))`
-/

namespace A131721.P1851831580673763976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182190 n + 1 : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P1851831580673763976

namespace A131721

/-- `round((A182190(n)+1)/A131607(n+4))` -/
def P1851831580673763976.Spec : Prop :=
  ∀ n, P1851831580673763976.a n = A131721 n

end A131721

/-! ## A131721.P3316240933157056007

`round(A001542(n+1)/A131607(n+5))`
-/

namespace A131721.P3316240933157056007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001542 (n + 1) : ℚ) / (A131607 (n + 5) : ℚ))

end

end A131721.P3316240933157056007

namespace A131721

/-- `round(A001542(n+1)/A131607(n+5))` -/
def P3316240933157056007.Spec : Prop :=
  ∀ n, P3316240933157056007.a n = A131721 n

end A131721

/-! ## A131721.P8763426746229922256

`round(A182189(n+1)/A131607(n+5))`
-/

namespace A131721.P8763426746229922256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182189 (n + 1) : ℚ) / (A131607 (n + 5) : ℚ))

end

end A131721.P8763426746229922256

namespace A131721

/-- `round(A182189(n+1)/A131607(n+5))` -/
def P8763426746229922256.Spec : Prop :=
  ∀ n, P8763426746229922256.a n = A131721 n

end A131721

/-! ## A131721.P11035110638627130531

`round(A215928(Δ[n²])/A131607(n+4))`
-/

namespace A131721.P11035110638627130531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A215928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P11035110638627130531

namespace A131721

/-- `round(A215928(Δ[n²])/A131607(n+4))` -/
def P11035110638627130531.Spec : Prop :=
  ∀ n, P11035110638627130531.a n = A131721 n

end A131721

/-! ## A131721.P10876179982001861913

`round((2*A011900(n)-1)/A131607(n+4))`
-/

namespace A131721.P10876179982001861913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A011900 n - 1 : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P10876179982001861913

namespace A131721

/-- `round((2*A011900(n)-1)/A131607(n+4))` -/
def P10876179982001861913.Spec : Prop :=
  ∀ n, P10876179982001861913.a n = A131721 n

end A131721

/-! ## A131721.P5492812326624974783

`round((2*(A053141(n)-1)+3)/A131607(n+4))`
-/

namespace A131721.P5492812326624974783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (A053141 n - 1) + 3 : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P5492812326624974783

namespace A131721

/-- `round((2*(A053141(n)-1)+3)/A131607(n+4))` -/
def P5492812326624974783.Spec : Prop :=
  ∀ n, P5492812326624974783.a n = A131721 n

end A131721

/-! ## A131721.P8865678982715496914

`round((A077413(n)-A054488(n))/A131607(n+4))`
-/

namespace A131721.P8865678982715496914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077413 n - A054488 n : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P8865678982715496914

namespace A131721

/-- `round((A077413(n)-A054488(n))/A131607(n+4))` -/
def P8865678982715496914.Spec : Prop :=
  ∀ n, P8865678982715496914.a n = A131721 n

end A131721

/-! ## A131721.P13155957852295070566

`round((A275794(n)-A054489(n))/A131607(n+4))`
-/

namespace A131721.P13155957852295070566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A275794 n - A054489 n : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P13155957852295070566

namespace A131721

/-- `round((A275794(n)-A054489(n))/A131607(n+4))` -/
def P13155957852295070566.Spec : Prop :=
  ∀ n, P13155957852295070566.a n = A131721 n

end A131721

/-! ## A131721.P1370599380622243037

`round((A000129(2*n+1)+A000007(n+1))/A131607(n+4))`
-/

namespace A131721.P1370599380622243037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000129 (2 * n + 1) + A000007 (n + 1) : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P1370599380622243037

namespace A131721

/-- `round((A000129(2*n+1)+A000007(n+1))/A131607(n+4))` -/
def P1370599380622243037.Spec : Prop :=
  ∀ n, P1370599380622243037.a n = A131721 n

end A131721

/-! ## A131721.P3158543911846573366

`round((A007814(2*n+1)+A000129(2*n+1))/A131607(n+4))`
-/

namespace A131721.P3158543911846573366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007814 (2 * n + 1) + A000129 (2 * n + 1) : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P3158543911846573366

namespace A131721

/-- `round((A007814(2*n+1)+A000129(2*n+1))/A131607(n+4))` -/
def P3158543911846573366.Spec : Prop :=
  ∀ n, P3158543911846573366.a n = A131721 n

end A131721

/-! ## A131721.P81027018382614562

`round((A275796(n)-A275794(n))/A131607(n+4))`
-/

namespace A131721.P81027018382614562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A275796 n - A275794 n : ℚ) / (A131607 (n + 4) : ℚ))

end

end A131721.P81027018382614562

namespace A131721

/-- `round((A275796(n)-A275794(n))/A131607(n+4))` -/
def P81027018382614562.Spec : Prop :=
  ∀ n, P81027018382614562.a n = A131721 n

end A131721

/-!
# A131722: Period 6: repeat [0, 10, 10, 10, 10, 10].

The programs for A131722, the canonical program `A131722.P13353158345250265283` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131722 has offset 0).

The definition of A131722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131722.P13353158345250265283

`a(n-6)` with `a(0)=0, a(1)=10, a(2)=10, a(3)=10, a(4)=10, a(5)=10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131722

/-- `a(n-6)` -/
def P13353158345250265283.Spec : Prop :=
  ∀ n, (P13353158345250265283.a n : ℤ) = A131722 n

theorem P13353158345250265283.correct : P13353158345250265283.Spec := by
  intro n
  simp only [A131722]

end A131722

/-!
# A131723: a(2*n) = 1-n^2, a(2*n+1) = n*(n+1).

The programs for A131723, the canonical program `A131723.P12265367540787751061` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131723 has offset 0).

The definition of A131723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131723.P4454248334340703916

`∑[ogf((2x+x^2)/(1+3x+3x^2+x^3))]`
-/

namespace A131723.P4454248334340703916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131723.P4454248334340703916

namespace A131723

/-- `∑[ogf((2x+x^2)/(1+3x+3x^2+x^3))]` -/
def P4454248334340703916.Spec : Prop :=
  ∀ n, P4454248334340703916.a n = A131723 n

end A131723

/-! ## A131723.P12265367540787751061

`∑[-((∑[n]+n)*(-1)^n)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131723

/-- `∑[-((∑[n]+n)*(-1)^n)]` -/
def P12265367540787751061.Spec : Prop :=
  ∀ n, P12265367540787751061.a n = A131723 n

theorem P12265367540787751061.correct : P12265367540787751061.Spec := by
  intro n
  simp only [A131723]

end A131723

/-! ## A131723.P15684428662843646431

`ogf((2x+x^2)/(1+2x-2x^3-x^4))`
-/

namespace A131723.P15684428662843646431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, 2, 0, -2, -1] n

end

end A131723.P15684428662843646431

namespace A131723

/-- `ogf((2x+x^2)/(1+2x-2x^3-x^4))` -/
def P15684428662843646431.Spec : Prop :=
  ∀ n, P15684428662843646431.a n = A131723 n

end A131723

/-! ## A131723.P1577900018180991997

`(-1)^n*∑[a(n-2)-1]` with `a(0)=0, a(1)=-2`
-/

namespace A131723.P1577900018180991997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -2] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131723.P1577900018180991997

namespace A131723

/-- `(-1)^n*∑[a(n-2)-1]` -/
def P1577900018180991997.Spec : Prop :=
  ∀ n, P1577900018180991997.a n = A131723 n

end A131723

/-! ## A131723.P16849815308758714625

`∑[a(n-2)-1]/(-1)^n` with `a(0)=0, a(1)=-2`
-/

namespace A131723.P16849815308758714625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -2] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A131723.P16849815308758714625

namespace A131723

/-- `∑[a(n-2)-1]/(-1)^n` -/
def P16849815308758714625.Spec : Prop :=
  ∀ n, P16849815308758714625.a n = (A131723 n : ℚ)

end A131723

/-! ## A131723.P1333991753767748611

`Δ[lcm(2, n+1)/2]-a(n-1)` with `a(0)=0`
-/

namespace A131723.P1333991753767748611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A131723.P1333991753767748611

namespace A131723

/-- `Δ[lcm(2, n+1)/2]-a(n-1)` -/
def P1333991753767748611.Spec : Prop :=
  ∀ n, P1333991753767748611.a n = (A131723 n : ℚ)

end A131723

/-! ## A131723.P1132053783453446820

`a(n-2)-(n+1)*(-1)^n` with `a(0)=0, a(1)=2`
-/

namespace A131723.P1132053783453446820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) - (n + 1 : ℤ) * (-1) ^ n

end

end A131723.P1132053783453446820

namespace A131723

/-- `a(n-2)-(n+1)*(-1)^n` -/
def P1132053783453446820.Spec : Prop :=
  ∀ n, P1132053783453446820.a n = A131723 n

end A131723

/-! ## A131723.P16123512736192241791

`floor((n-(n+2)*a(n-1))/n)` with `a(0)=0, a(1)=2`
-/

namespace A131723.P16123512736192241791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊((n : ℤ) - (n + 2 : ℤ) * a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A131723.P16123512736192241791

namespace A131723

/-- `floor((n-(n+2)*a(n-1))/n)` -/
def P16123512736192241791.Spec : Prop :=
  ∀ n, P16123512736192241791.a n = A131723 n

end A131723

/-! ## A131723.P12354861424290555273

`floor(a(n-2)-(n+1)/(-1)^n)` with `a(0)=0, a(1)=2`
-/

namespace A131723.P12354861424290555273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) - (n + 1 : ℚ) / ((-1) ^ n : ℚ)⌋

end

end A131723.P12354861424290555273

namespace A131723

/-- `floor(a(n-2)-(n+1)/(-1)^n)` -/
def P12354861424290555273.Spec : Prop :=
  ∀ n, P12354861424290555273.a n = A131723 n

end A131723

/-! ## A131723.P4731817146170576431

`Δ[(n+1)/gcd(2, n+1)]-a(n-1)` with `a(0)=0`
-/

namespace A131723.P4731817146170576431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A131723.P4731817146170576431

namespace A131723

/-- `Δ[(n+1)/gcd(2, n+1)]-a(n-1)` -/
def P4731817146170576431.Spec : Prop :=
  ∀ n, P4731817146170576431.a n = (A131723 n : ℚ)

end A131723

/-! ## A131723.P4162081887252665533

`floor(1-2*a(n-1)/n-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A131723.P4162081887252665533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊1 - 2 * ((a (n - 1) : ℚ) / (n : ℚ)) - (a (n - 1) : ℚ)⌋

end

end A131723.P4162081887252665533

namespace A131723

/-- `floor(1-2*a(n-1)/n-a(n-1))` -/
def P4162081887252665533.Spec : Prop :=
  ∀ n, P4162081887252665533.a n = A131723 n

end A131723

/-! ## A131723.P1924413066043825777

`∑[(-1)^(n+1)-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A131723.P1924413066043825777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (-1) ^ (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A131723.P1924413066043825777

namespace A131723

/-- `∑[(-1)^(n+1)-a(n-1)]-a(n-1)` -/
def P1924413066043825777.Spec : Prop :=
  ∀ n, P1924413066043825777.a n = A131723 n

end A131723

/-! ## A131723.P9942791553534237047

`floor((n-a(n-1)-a(n-1))/n-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A131723.P9942791553534237047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊((n : ℤ) - a (n - 1) - a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A131723.P9942791553534237047

namespace A131723

/-- `floor((n-a(n-1)-a(n-1))/n-a(n-1))` -/
def P9942791553534237047.Spec : Prop :=
  ∀ n, P9942791553534237047.a n = A131723 n

end A131723

/-! ## A131723.P10867627041695524853

`A001057(n)-A083392(n)`
-/

namespace A131723.P10867627041695524853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n - A083392 n

end

end A131723.P10867627041695524853

namespace A131723

/-- `A001057(n)-A083392(n)` -/
def P10867627041695524853.Spec : Prop :=
  ∀ n, P10867627041695524853.a n = A131723 n

end A131723

/-! ## A131723.P13088036242322520887

`A001057(n)*A266977(n)`
-/

namespace A131723.P13088036242322520887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A266977 n

end

end A131723.P13088036242322520887

namespace A131723

/-- `A001057(n)*A266977(n)` -/
def P13088036242322520887.Spec : Prop :=
  ∀ n, P13088036242322520887.a n = A131723 n

end A131723

/-! ## A131723.P2581992093608216517

`A083392(n+1)+A059841(n)`
-/

namespace A131723.P2581992093608216517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 (n + 1) + A059841 n

end

end A131723.P2581992093608216517

namespace A131723

/-- `A083392(n+1)+A059841(n)` -/
def P2581992093608216517.Spec : Prop :=
  ∀ n, P2581992093608216517.a n = A131723 n

end A131723

/-! ## A131723.P5723649699293080824

`A152032(n)+A089594(n+1)`
-/

namespace A131723.P5723649699293080824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 n + A089594 (n + 1)

end

end A131723.P5723649699293080824

namespace A131723

/-- `A152032(n)+A089594(n+1)` -/
def P5723649699293080824.Spec : Prop :=
  ∀ n, P5723649699293080824.a n = A131723 n

end A131723

/-! ## A131723.P2812266625003764878

`A001057(n)*(A008619(n)+1)`
-/

namespace A131723.P2812266625003764878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * (A008619 n + 1)

end

end A131723.P2812266625003764878

namespace A131723

/-- `A001057(n)*(A008619(n)+1)` -/
def P2812266625003764878.Spec : Prop :=
  ∀ n, P2812266625003764878.a n = A131723 n

end A131723

/-! ## A131723.P3523254672020767680

`A035106(n+1)*A062157(n)`
-/

namespace A131723.P3523254672020767680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1) * A062157 n

end

end A131723.P3523254672020767680

namespace A131723

/-- `A035106(n+1)*A062157(n)` -/
def P3523254672020767680.Spec : Prop :=
  ∀ n, P3523254672020767680.a n = A131723 n

end A131723

/-! ## A131723.P16188142321415565925

`(A004526(n)+2)*A001057(n)`
-/

namespace A131723.P16188142321415565925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 2) * A001057 n

end

end A131723.P16188142321415565925

namespace A131723

/-- `(A004526(n)+2)*A001057(n)` -/
def P16188142321415565925.Spec : Prop :=
  ∀ n, P16188142321415565925.a n = A131723 n

end A131723

/-!
# A131724: Period 6: repeat [1, 9, 7, 13, 11, 9].

The programs for A131724, the canonical program `A131724.P16380307986781997553` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131724 has offset 0).

The definition of A131724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131724.P16380307986781997553

`a(n-6)` with `a(0)=1, a(1)=9, a(2)=7, a(3)=13, a(4)=11, a(5)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131724

/-- `a(n-6)` -/
def P16380307986781997553.Spec : Prop :=
  ∀ n, (P16380307986781997553.a n : ℤ) = A131724 n

theorem P16380307986781997553.correct : P16380307986781997553.Spec := by
  intro n
  simp only [A131724]

end A131724

/-!
# A131725: Partial sums of A131711.

The programs for A131725, the canonical program `A131725.P6613344306997403869` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131725 has offset 0).

The definition of A131725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131725.P6613344306997403869

`∑[A131711(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131725

/-- `∑[A131711(n)]` -/
def P6613344306997403869.Spec : Prop :=
  ∀ n, P6613344306997403869.a n = A131725 n

theorem P6613344306997403869.correct : P6613344306997403869.Spec := by
  intro n
  simp only [A131725]

end A131725

/-! ## A131725.P7342124819744694291

`∑[abs(A131201(n))]`
-/

namespace A131725.P7342124819744694291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131201 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131725.P7342124819744694291

namespace A131725

/-- `∑[abs(A131201(n))]` -/
def P7342124819744694291.Spec : Prop :=
  ∀ n, P7342124819744694291.a n = A131725 n

end A131725

/-! ## A131725.P8286620312962870831

`∑[lcm(A057079(3*(n+1)), A131201(n))]`
-/

namespace A131725.P8286620312962870831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057079 (3 * (n + 1))) (A131201 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131725.P8286620312962870831

namespace A131725

/-- `∑[lcm(A057079(3*(n+1)), A131201(n))]` -/
def P8286620312962870831.Spec : Prop :=
  ∀ n, (P8286620312962870831.a n : ℤ) = A131725 n

end A131725

/-! ## A131725.P7062815239090492110

`∑[A000129(n)%10]`
-/

namespace A131725.P7062815239090492110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000129 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131725.P7062815239090492110

namespace A131725

/-- `∑[A000129(n)%10]` -/
def P7062815239090492110.Spec : Prop :=
  ∀ n, P7062815239090492110.a n = A131725 n

end A131725

/-! ## A131725.P2909824810626924131

`∑[A247311(3*n+1)%10]`
-/

namespace A131725.P2909824810626924131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247311 (3 * n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131725.P2909824810626924131

namespace A131725

/-- `∑[A247311(3*n+1)%10]` -/
def P2909824810626924131.Spec : Prop :=
  ∀ n, P2909824810626924131.a n = A131725 n

end A131725

/-! ## A131725.P12841521886481772492

`∑[A015520(n)%10]`
-/

namespace A131725.P12841521886481772492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015520 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131725.P12841521886481772492

namespace A131725

/-- `∑[A015520(n)%10]` -/
def P12841521886481772492.Spec : Prop :=
  ∀ n, P12841521886481772492.a n = A131725 n

end A131725

/-!
# A131726: Pell numbers A000129 with 0 instead of last digit.

The programs for A131726, the canonical program `A131726.P11238477700155309960` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131726 has offset 0).

The definition of A131726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131726.P11238477700155309960

`10*floor(A000129(n)/10)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131726

/-- `10*floor(A000129(n)/10)` -/
def P11238477700155309960.Spec : Prop :=
  ∀ n, P11238477700155309960.a n = A131726 n

theorem P11238477700155309960.correct : P11238477700155309960.Spec := by
  intro n
  simp only [A131726]

end A131726

/-! ## A131726.P8662367795627648368

`10*floor(A135153(2*n)/10)`
-/

namespace A131726.P8662367795627648368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(A135153 (2 * n) : ℚ) / 10⌋

end

end A131726.P8662367795627648368

namespace A131726

/-- `10*floor(A135153(2*n)/10)` -/
def P8662367795627648368.Spec : Prop :=
  ∀ n, P8662367795627648368.a n = A131726 n

end A131726

/-! ## A131726.P8051777062717060730

`10*floor(A116560(6*n)/10)`
-/

namespace A131726.P8051777062717060730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(A116560 (6 * n) : ℚ) / 10⌋

end

end A131726.P8051777062717060730

namespace A131726

/-- `10*floor(A116560(6*n)/10)` -/
def P8051777062717060730.Spec : Prop :=
  ∀ n, P8051777062717060730.a n = A131726 n

end A131726

/-! ## A131726.P12495229798987427642

`A000129(n)-A131711(n)`
-/

namespace A131726.P12495229798987427642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - A131711 n

end

end A131726.P12495229798987427642

namespace A131726

/-- `A000129(n)-A131711(n)` -/
def P12495229798987427642.Spec : Prop :=
  ∀ n, P12495229798987427642.a n = A131726 n

end A131726

/-! ## A131726.P6383024005675684074

`A000129(n)-abs(A131201(n))`
-/

namespace A131726.P6383024005675684074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - |A131201 n|

end

end A131726.P6383024005675684074

namespace A131726

/-- `A000129(n)-abs(A131201(n))` -/
def P6383024005675684074.Spec : Prop :=
  ∀ n, P6383024005675684074.a n = A131726 n

end A131726

/-!
# A131727: Pell numbers A000129 without last digit.

The programs for A131727, the canonical program `A131727.P2999918149424605756` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131727 has offset 4).

The definition of A131727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131727.P2999918149424605756

`floor(A000129(n+4)/10)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131727

/-- `floor(A000129(n+4)/10)` -/
def P2999918149424605756.Spec : Prop :=
  ∀ n, P2999918149424605756.a n = A131727 (n + 4)

theorem P2999918149424605756.correct : P2999918149424605756.Spec := by
  intro n
  simp only [A131727, Nat.add_sub_cancel]

end A131727

/-! ## A131727.P12971504025666811555

`(A000129(n+4)-A131711(n+4))/10`
-/

namespace A131727.P12971504025666811555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 4) - A131711 (n + 4) : ℚ) / 10

end

end A131727.P12971504025666811555

namespace A131727

/-- `(A000129(n+4)-A131711(n+4))/10` -/
def P12971504025666811555.Spec : Prop :=
  ∀ n, P12971504025666811555.a n = (A131727 (n + 4) : ℚ)

end A131727

/-! ## A131727.P1807482123857056583

`floor(A105635(n+3)/5)`
-/

namespace A131727.P1807482123857056583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105635 (n + 3) : ℚ) / 5⌋

end

end A131727.P1807482123857056583

namespace A131727

/-- `floor(A105635(n+3)/5)` -/
def P1807482123857056583.Spec : Prop :=
  ∀ n, P1807482123857056583.a n = A131727 (n + 4)

end A131727

/-! ## A131727.P5384702257131759627

`floor(A069306(n+3)/10)`
-/

namespace A131727.P5384702257131759627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069306 (n + 3) : ℚ) / 10⌋

end

end A131727.P5384702257131759627

namespace A131727

/-- `floor(A069306(n+3)/10)` -/
def P5384702257131759627.Spec : Prop :=
  ∀ n, P5384702257131759627.a n = A131727 (n + 4)

end A131727

/-! ## A131727.P12062108103617623343

`floor(A111954(n+4)/10)`
-/

namespace A131727.P12062108103617623343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111954 (n + 4) : ℚ) / 10⌋

end

end A131727.P12062108103617623343

namespace A131727

/-- `floor(A111954(n+4)/10)` -/
def P12062108103617623343.Spec : Prop :=
  ∀ n, P12062108103617623343.a n = A131727 (n + 4)

end A131727

/-! ## A131727.P9851843466844371294

`floor(A215928(n+4)/10)`
-/

namespace A131727.P9851843466844371294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A215928 (n + 4) : ℚ) / 10⌋

end

end A131727.P9851843466844371294

namespace A131727

/-- `floor(A215928(n+4)/10)` -/
def P9851843466844371294.Spec : Prop :=
  ∀ n, P9851843466844371294.a n = A131727 (n + 4)

end A131727

/-!
# A131728: a(4n) = n, a(4n+1) = 2n+1, a(4n+2) = n+1, a(4n+3) = 0.

The programs for A131728, the canonical program `A131728.P3488711437183404180` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131728 has offset 0).

The definition of A131728 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077814, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131728.P3488711437183404180

`A077814(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131728

/-- `A077814(n+1)` -/
def P3488711437183404180.Spec : Prop :=
  ∀ n, P3488711437183404180.a n = A131728 n

theorem P3488711437183404180.correct : P3488711437183404180.Spec := by
  intro n
  simp only [A131728]

end A131728

/-! ## A131728.P6605051757558998160

`Δ[round(n/2)*round(n/4)]`
-/

namespace A131728.P6605051757558998160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) * SequenceMachineLib.roundAway ((n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131728.P6605051757558998160

namespace A131728

/-- `Δ[round(n/2)*round(n/4)]` -/
def P6605051757558998160.Spec : Prop :=
  ∀ n, P6605051757558998160.a n = A131728 n

end A131728

/-! ## A131728.P12939094273928335607

`round((n+1)*C(2, n%4)/4)`
-/

namespace A131728.P12939094273928335607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) * Nat.choose 2 (n % 4) : ℚ) / 4)

end

end A131728.P12939094273928335607

namespace A131728

/-- `round((n+1)*C(2, n%4)/4)` -/
def P12939094273928335607.Spec : Prop :=
  ∀ n, P12939094273928335607.a n = A131728 n

end A131728

/-! ## A131728.P3910251030610880914

`∑[gcd(2, ∑[n])*∑[n]]%(n+1)`
-/

namespace A131728.P3910251030610880914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A131728.P3910251030610880914

namespace A131728

/-- `∑[gcd(2, ∑[n])*∑[n]]%(n+1)` -/
def P3910251030610880914.Spec : Prop :=
  ∀ n, (P3910251030610880914.a n : ℤ) = A131728 n

end A131728

/-! ## A131728.P5824560196972192828

`xor(a(n-4)+1, and(1, n))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A131728.P5824560196972192828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n a =>
  Nat.xor (a (n - 4) + 1) (Nat.land 1 n)

end

end A131728.P5824560196972192828

namespace A131728

/-- `xor(a(n-4)+1, and(1, n))` -/
def P5824560196972192828.Spec : Prop :=
  ∀ n, (P5824560196972192828.a n : ℤ) = A131728 n

end A131728

/-! ## A131728.P14854156185266241373

`∑[∑[n+1]%2-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A131728.P14854156185266241373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131728.P14854156185266241373

namespace A131728

/-- `∑[∑[n+1]%2-a(n-2)]` -/
def P14854156185266241373.Spec : Prop :=
  ∀ n, P14854156185266241373.a n = A131728 n

end A131728

/-! ## A131728.P5114139579024796513

`∑[and(1, ∑[n+1])-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A131728.P5114139579024796513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131728.P5114139579024796513

namespace A131728

/-- `∑[and(1, ∑[n+1])-a(n-2)]` -/
def P5114139579024796513.Spec : Prop :=
  ∀ n, P5114139579024796513.a n = A131728 n

end A131728

/-! ## A131728.P17667281989654796471

`∑[Δ[n-a(n-2)]-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A131728.P17667281989654796471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f2 (n + 1) - f2 n - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131728.P17667281989654796471

namespace A131728

/-- `∑[Δ[n-a(n-2)]-a(n-2)]` -/
def P17667281989654796471.Spec : Prop :=
  ∀ n, P17667281989654796471.a n = A131728 n

end A131728

/-! ## A131728.P6769045001504499896

`A004525(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A131728.P6769045001504499896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004525 n - a (n - 2)

end

end A131728.P6769045001504499896

namespace A131728

/-- `A004525(n)-a(n-2)` -/
def P6769045001504499896.Spec : Prop :=
  ∀ n, P6769045001504499896.a n = A131728 n

end A131728

/-! ## A131728.P10568535980086648472

`A049206(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A131728.P10568535980086648472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A049206 n - a (n - 2)

end

end A131728.P10568535980086648472

namespace A131728

/-- `A049206(n)-a(n-2)` -/
def P10568535980086648472.Spec : Prop :=
  ∀ n, P10568535980086648472.a n = A131728 n

end A131728

/-! ## A131728.P5781140416046884929

`round(∑[n*A057077(n)+1]/4)`
-/

namespace A131728.P5781140416046884929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057077 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A131728.P5781140416046884929

namespace A131728

/-- `round(∑[n*A057077(n)+1]/4)` -/
def P5781140416046884929.Spec : Prop :=
  ∀ n, P5781140416046884929.a n = A131728 n

end A131728

/-! ## A131728.P17881513117033330664

`A098181(n)-A108355(n)`
-/

namespace A131728.P17881513117033330664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n - A108355 n

end

end A131728.P17881513117033330664

namespace A131728

/-- `A098181(n)-A108355(n)` -/
def P17881513117033330664.Spec : Prop :=
  ∀ n, P17881513117033330664.a n = A131728 n

end A131728

/-! ## A131728.P11313213474653719709

`A108354(n)-A133872(n)`
-/

namespace A131728.P11313213474653719709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n - A133872 n

end

end A131728.P11313213474653719709

namespace A131728

/-- `A108354(n)-A133872(n)` -/
def P11313213474653719709.Spec : Prop :=
  ∀ n, P11313213474653719709.a n = A131728 n

end A131728

/-! ## A131728.P16356115044123030230

`A108354(n)-A128130(n)²`
-/

namespace A131728.P16356115044123030230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n - A128130 n ^ 2

end

end A131728.P16356115044123030230

namespace A131728

/-- `A108354(n)-A128130(n)²` -/
def P16356115044123030230.Spec : Prop :=
  ∀ n, P16356115044123030230.a n = A131728 n

end A131728

/-! ## A131728.P7305200632865624643

`A021913(n)+A108354(n)-1`
-/

namespace A131728.P7305200632865624643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n + (A108354 n - 1)

end

end A131728.P7305200632865624643

namespace A131728

/-- `A021913(n)+A108354(n)-1` -/
def P7305200632865624643.Spec : Prop :=
  ∀ n, P7305200632865624643.a n = A131728 n

end A131728

/-! ## A131728.P7940327847619915487

`A024219(n+1)%A351412(n+1)`
-/

namespace A131728.P7940327847619915487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024219 (n + 1)) (A351412 (n + 1))

end

end A131728.P7940327847619915487

namespace A131728

/-- `A024219(n+1)%A351412(n+1)` -/
def P7940327847619915487.Spec : Prop :=
  ∀ n, P7940327847619915487.a n = A131728 n

end A131728

/-! ## A131728.P10946568219568544162

`(A186813(n+1)-A004525(n+1))/2`
-/

namespace A131728.P10946568219568544162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186813 (n + 1) - A004525 (n + 1) : ℚ) / 2

end

end A131728.P10946568219568544162

namespace A131728

/-- `(A186813(n+1)-A004525(n+1))/2` -/
def P10946568219568544162.Spec : Prop :=
  ∀ n, P10946568219568544162.a n = (A131728 n : ℚ)

end A131728

/-! ## A131728.P5866089345731320317

`(or(2, A016897(n))*A014255(n))%(n+1)`
-/

namespace A131728.P5866089345731320317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 2 (A016897 n) * A014255 n) (n + 1 : ℤ)

end

end A131728.P5866089345731320317

namespace A131728

/-- `(or(2, A016897(n))*A014255(n))%(n+1)` -/
def P5866089345731320317.Spec : Prop :=
  ∀ n, P5866089345731320317.a n = A131728 n

end A131728

/-! ## A131728.P8440732872777678122

`A110654((A117569(n)+1)*A110654(n))`
-/

namespace A131728.P8440732872777678122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((A117569 n + 1) * A110654 n).toNat

end

end A131728.P8440732872777678122

namespace A131728

/-- `A110654((A117569(n)+1)*A110654(n))` -/
def P8440732872777678122.Spec : Prop :=
  ∀ n, P8440732872777678122.a n = A131728 n

end A131728

/-! ## A131728.P4005710643013511428

`A026741(n+2)-A087620(n+1)`
-/

namespace A131728.P4005710643013511428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2) - A087620 (n + 1)

end

end A131728.P4005710643013511428

namespace A131728

/-- `A026741(n+2)-A087620(n+1)` -/
def P4005710643013511428.Spec : Prop :=
  ∀ n, P4005710643013511428.a n = A131728 n

end A131728

/-!
# A131729: Period 4: repeat [0, 1, -1, 1].

The programs for A131729, the canonical program `A131729.P13347403104407387821` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131729 has offset 0).

The definition of A131729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131729.P13347403104407387821

`round(sin(gcd(4, n)²))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131729

/-- `round(sin(gcd(4, n)²))` -/
def P13347403104407387821.Spec : Prop :=
  ∀ n, P13347403104407387821.a n = A131729 n

theorem P13347403104407387821.correct : P13347403104407387821.Spec := by
  intro n
  simp only [A131729]

end A131729

/-!
# A131730: a(4n) = n, a(4n+1) = -n-1, a(4n+2) = n+1, a(4n+3) = -n.

The programs for A131730, the canonical program `A131730.P1665356571764783721` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131730 has offset 0).

The definition of A131730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131730.P1665356571764783721

`(-1)^n*(n-2*floor((n+1)/4)-floor((n+2)/4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131730

/-- `(-1)^n*(n-2*floor((n+1)/4)-floor((n+2)/4))` -/
def P1665356571764783721.Spec : Prop :=
  ∀ n, P1665356571764783721.a n = A131730 n

theorem P1665356571764783721.correct : P1665356571764783721.Spec := by
  intro n
  simp only [A131730]

end A131730

/-! ## A131730.P4854575836942801159

`a(n-4)+(-1)^n` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=0`
-/

namespace A131730.P4854575836942801159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 0] fun n a =>
  a (n - 4) + (-1) ^ n

end

end A131730.P4854575836942801159

namespace A131730

/-- `a(n-4)+(-1)^n` -/
def P4854575836942801159.Spec : Prop :=
  ∀ n, P4854575836942801159.a n = A131730 n

end A131730

/-! ## A131730.P7042564118646336847

`a(n-4)+a(n-5)-a(n-1)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A131730.P7042564118646336847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 0, 1] fun n a =>
  a (n - 4) + a (n - 5) - a (n - 1)

end

end A131730.P7042564118646336847

namespace A131730

/-- `a(n-4)+a(n-5)-a(n-1)` -/
def P7042564118646336847.Spec : Prop :=
  ∀ n, P7042564118646336847.a n = A131730 n

end A131730

/-! ## A131730.P8612563967118991896

`A142888(n+1)%or(3, n)`
-/

namespace A131730.P8612563967118991896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142888 (n + 1)) (Nat.lor 3 n : ℤ)

end

end A131730.P8612563967118991896

namespace A131730

/-- `A142888(n+1)%or(3, n)` -/
def P8612563967118991896.Spec : Prop :=
  ∀ n, P8612563967118991896.a n = A131730 n

end A131730

/-! ## A131730.P8468918254112241824

`A246552(n)-∑[n]%(n+1)`
-/

namespace A131730.P8468918254112241824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 n - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A131730.P8468918254112241824

namespace A131730

/-- `A246552(n)-∑[n]%(n+1)` -/
def P8468918254112241824.Spec : Prop :=
  ∀ n, P8468918254112241824.a n = A131730 n

end A131730

/-! ## A131730.P4051740115620599711

`A265888(n)-A080412(n)`
-/

namespace A131730.P4051740115620599711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265888 n - A080412 n

end

end A131730.P4051740115620599711

namespace A131730

/-- `A265888(n)-A080412(n)` -/
def P4051740115620599711.Spec : Prop :=
  ∀ n, P4051740115620599711.a n = A131730 n

end A131730

/-! ## A131730.P3928939174479813972

`A142888(n+1)%A244584(n)`
-/

namespace A131730.P3928939174479813972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142888 (n + 1)) (A244584 n)

end

end A131730.P3928939174479813972

namespace A131730

/-- `A142888(n+1)%A244584(n)` -/
def P3928939174479813972.Spec : Prop :=
  ∀ n, P3928939174479813972.a n = A131730 n

end A131730

/-! ## A131730.P4337262702874940945

`∑[A003815(n)-A004525(n)]-A004525(n)`
-/

namespace A131730.P4337262702874940945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004525 n

end

end A131730.P4337262702874940945

namespace A131730

/-- `∑[A003815(n)-A004525(n)]-A004525(n)` -/
def P4337262702874940945.Spec : Prop :=
  ∀ n, P4337262702874940945.a n = A131730 n

end A131730

/-! ## A131730.P12893896643081837429

`A109613(A142150(n))-A028242(A028242(n+1))`
-/

namespace A131730.P12893896643081837429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A142150 n).toNat - A028242 (A028242 (n + 1)).toNat

end

end A131730.P12893896643081837429

namespace A131730

/-- `A109613(A142150(n))-A028242(A028242(n+1))` -/
def P12893896643081837429.Spec : Prop :=
  ∀ n, P12893896643081837429.a n = A131730 n

end A131730

/-! ## A131730.P11115558186880242582

`Δ[C(A059169(n+2), A059169(n+1))]`
-/

namespace A131730.P11115558186880242582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059169 (n + 2)).toNat (A059169 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A131730.P11115558186880242582

namespace A131730

/-- `Δ[C(A059169(n+2), A059169(n+1))]` -/
def P11115558186880242582.Spec : Prop :=
  ∀ n, P11115558186880242582.a n = A131730 n

end A131730

/-! ## A131730.P3888757026843733191

`A077814(A004525(2*n+1))-A004525(A077814(2*n))`
-/

namespace A131730.P3888757026843733191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (A004525 (2 * n + 1)).toNat - A004525 (A077814 (2 * n)).toNat

end

end A131730.P3888757026843733191

namespace A131730

/-- `A077814(A004525(2*n+1))-A004525(A077814(2*n))` -/
def P3888757026843733191.Spec : Prop :=
  ∀ n, P3888757026843733191.a n = A131730 n

end A131730

/-!
# A131731: Period 4: repeat [2, -3, 4, -3].

The programs for A131731, the canonical program `A131731.P6730622828570058240` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131731 has offset 0).

The definition of A131731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131731.P6730622828570058240

`-xor(3, 1-gcd(4, n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131731

/-- `-xor(3, 1-gcd(4, n))` -/
def P6730622828570058240.Spec : Prop :=
  ∀ n, P6730622828570058240.a n = A131731 n

theorem P6730622828570058240.correct : P6730622828570058240.Spec := by
  intro n
  simp only [A131731]

end A131731

/-!
# A131732: a(4*k) = 2*k+1, a(4*k+1) = -4*k-3, a(4*k+2) = 2*k+2, a(4*k+3) = 0.

The programs for A131732, the canonical program `A131732.P15685318361730947797` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131732 has offset 0).

The definition of A131732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131732.P5612948234122247976

`(n+2)*(1-gcd(n+3, n-1)/2)`
-/

namespace A131732.P5612948234122247976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (1 - (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℚ) / 2)

end

end A131732.P5612948234122247976

namespace A131732

/-- `(n+2)*(1-gcd(n+3, n-1)/2)` -/
def P5612948234122247976.Spec : Prop :=
  ∀ n, P5612948234122247976.a n = (A131732 n : ℚ)

end A131732

/-! ## A131732.P15685318361730947797

`n+2-gcd(2*(n+2), C(n+3, 2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131732

/-- `n+2-gcd(2*(n+2), C(n+3, 2))` -/
def P15685318361730947797.Spec : Prop :=
  ∀ n, P15685318361730947797.a n = A131732 n

theorem P15685318361730947797.correct : P15685318361730947797.Spec := by
  intro n
  simp only [A131732]

end A131732

/-! ## A131732.P13673507744103268558

`(n+2)/2*A230074(n+1)`
-/

namespace A131732.P13673507744103268558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A230074 (n + 1) : ℚ)

end

end A131732.P13673507744103268558

namespace A131732

/-- `(n+2)/2*A230074(n+1)` -/
def P13673507744103268558.Spec : Prop :=
  ∀ n, P13673507744103268558.a n = (A131732 n : ℚ)

end A131732

/-! ## A131732.P2283699896299571163

`∑[n+1]/(n+1)*A002448(A135481(n))`
-/

namespace A131732.P2283699896299571163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) * (A002448 (A135481 n).toNat : ℚ)

end

end A131732.P2283699896299571163

namespace A131732

/-- `∑[n+1]/(n+1)*A002448(A135481(n))` -/
def P2283699896299571163.Spec : Prop :=
  ∀ n, P2283699896299571163.a n = (A131732 n : ℚ)

end A131732

/-! ## A131732.P17899972434335309309

`A008683((xor(n, n+1)+1)/2)*A176743(n)`
-/

namespace A131732.P17899972434335309309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + 1 : ℚ) / 2)).toNat * A176743 n

end

end A131732.P17899972434335309309

namespace A131732

/-- `A008683((xor(n, n+1)+1)/2)*A176743(n)` -/
def P17899972434335309309.Spec : Prop :=
  ∀ n, P17899972434335309309.a n = A131732 n

end A131732

/-! ## A131732.P7459459316526367671

`A008683(A006519(n+1))*A220466(n+1)`
-/

namespace A131732.P7459459316526367671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006519 (n + 1)).toNat * A220466 (n + 1)

end

end A131732.P7459459316526367671

namespace A131732

/-- `A008683(A006519(n+1))*A220466(n+1)` -/
def P7459459316526367671.Spec : Prop :=
  ∀ n, P7459459316526367671.a n = A131732 n

end A131732

/-! ## A131732.P4016884530696262293

`2-A062828(n+2)+n`
-/

namespace A131732.P4016884530696262293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A062828 (n + 2) + (n : ℤ)

end

end A131732.P4016884530696262293

namespace A131732

/-- `2-A062828(n+2)+n` -/
def P4016884530696262293.Spec : Prop :=
  ∀ n, P4016884530696262293.a n = A131732 n

end A131732

/-! ## A131732.P3527920993996164398

`2-sqrt(A227168(n+2))+n`
-/

namespace A131732.P3527920993996164398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.sqrt (A227168 (n + 2) : ℝ) + (n : ℝ)

end

end A131732.P3527920993996164398

namespace A131732

/-- `2-sqrt(A227168(n+2))+n` -/
def P3527920993996164398.Spec : Prop :=
  ∀ n, P3527920993996164398.a n = (A131732 n : ℝ)

end A131732

/-! ## A131732.P2587638363652678048

`Δ[(A166445(n)-1)*A166445(n+1)]`
-/

namespace A131732.P2587638363652678048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166445 n - 1) * A166445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131732.P2587638363652678048

namespace A131732

/-- `Δ[(A166445(n)-1)*A166445(n+1)]` -/
def P2587638363652678048.Spec : Prop :=
  ∀ n, P2587638363652678048.a n = A131732 n

end A131732

/-! ## A131732.P9972685201949466157

`Δ[A130472((n+1)*and(1, A130472(n)))]`
-/

namespace A131732.P9972685201949466157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 ((n + 1 : ℤ) * Int.land 1 (A130472 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131732.P9972685201949466157

namespace A131732

/-- `Δ[A130472((n+1)*and(1, A130472(n)))]` -/
def P9972685201949466157.Spec : Prop :=
  ∀ n, P9972685201949466157.a n = A131732 n

end A131732

/-! ## A131732.P14278584648499711172

`Δ[n%A026741(A098181(n))-A026741(n+1)]`
-/

namespace A131732.P14278584648499711172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A026741 (A098181 n).toNat) - A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131732.P14278584648499711172

namespace A131732

/-- `Δ[n%A026741(A098181(n))-A026741(n+1)]` -/
def P14278584648499711172.Spec : Prop :=
  ∀ n, P14278584648499711172.a n = A131732 n

end A131732

/-! ## A131732.P7069564906851278020

`A001057(n+1)-2*A001057(A142150(n+1))`
-/

namespace A131732.P7069564906851278020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) - 2 * A001057 (A142150 (n + 1)).toNat

end

end A131732.P7069564906851278020

namespace A131732

/-- `A001057(n+1)-2*A001057(A142150(n+1))` -/
def P7069564906851278020.Spec : Prop :=
  ∀ n, P7069564906851278020.a n = A131732 n

end A131732

/-!
# A131733: Primes (A000040) - odds (A005408).

The programs for A131733, the canonical program `A131733.P2209471722626615476` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131733 has offset 1).

The definition of A131733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131733.P2209471722626615476

`A000040(n+1)-2*(n+1)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131733

/-- `A000040(n+1)-2*(n+1)+1` -/
def P2209471722626615476.Spec : Prop :=
  ∀ n, P2209471722626615476.a n = A131733 (n + 1)

theorem P2209471722626615476.correct : P2209471722626615476.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel]

end A131733

/-! ## A131733.P4900515360923775372

`A173072(n+1)-1`
-/

namespace A131733.P4900515360923775372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) - 1

end

end A131733.P4900515360923775372

namespace A131733

/-- `A173072(n+1)-1` -/
def P4900515360923775372.Spec : Prop :=
  ∀ n, P4900515360923775372.a n = A131733 (n + 1)

theorem P4900515360923775372.correct : P4900515360923775372.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P4900515360923775372.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A173072, A173072.P15776542700832946734.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-! ## A131733.P3401814017374083905

`A014689(n+1)-n`
-/

namespace A131733.P3401814017374083905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - (n : ℤ)

end

end A131733.P3401814017374083905

namespace A131733

/-- `A014689(n+1)-n` -/
def P3401814017374083905.Spec : Prop :=
  ∀ n, P3401814017374083905.a n = A131733 (n + 1)

theorem P3401814017374083905.correct : P3401814017374083905.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P3401814017374083905.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-! ## A131733.P12746298089871708141

`Δ[A007504(n)-n²]`
-/

namespace A131733.P12746298089871708141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131733.P12746298089871708141

namespace A131733

/-- `Δ[A007504(n)-n²]` -/
def P12746298089871708141.Spec : Prop :=
  ∀ n, P12746298089871708141.a n = A131733 (n + 1)

end A131733

/-! ## A131733.P5646848409534319500

`∑[A125266(n+1)-2]`
-/

namespace A131733.P5646848409534319500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131733.P5646848409534319500

namespace A131733

/-- `∑[A125266(n+1)-2]` -/
def P5646848409534319500.Spec : Prop :=
  ∀ n, P5646848409534319500.a n = A131733 (n + 1)

end A131733

/-! ## A131733.P180888541678703548

`n²-A073497(n+1)`
-/

namespace A131733.P180888541678703548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A073497 (n + 1)

end

end A131733.P180888541678703548

namespace A131733

/-- `n²-A073497(n+1)` -/
def P180888541678703548.Spec : Prop :=
  ∀ n, P180888541678703548.a n = A131733 (n + 1)

theorem P180888541678703548.correct : P180888541678703548.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P180888541678703548.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A073497, A073497.P4382820423101221026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-! ## A131733.P334206025568745150

`A014692(n+1)-(n+1)`
-/

namespace A131733.P334206025568745150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - (n + 1 : ℤ)

end

end A131733.P334206025568745150

namespace A131733

/-- `A014692(n+1)-(n+1)` -/
def P334206025568745150.Spec : Prop :=
  ∀ n, P334206025568745150.a n = A131733 (n + 1)

theorem P334206025568745150.correct : P334206025568745150.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P334206025568745150.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-! ## A131733.P2244562185935530557

`A065890(n+1)+1-n`
-/

namespace A131733.P2244562185935530557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + (1 - (n : ℤ))

end

end A131733.P2244562185935530557

namespace A131733

/-- `A065890(n+1)+1-n` -/
def P2244562185935530557.Spec : Prop :=
  ∀ n, P2244562185935530557.a n = A131733 (n + 1)

theorem P2244562185935530557.correct : P2244562185935530557.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P2244562185935530557.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065890, A065890.P15936493256530540462.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-! ## A131733.P17778118845134397302

`A006093(n+1)-2*n`
-/

namespace A131733.P17778118845134397302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (2 * n : ℤ)

end

end A131733.P17778118845134397302

namespace A131733

/-- `A006093(n+1)-2*n` -/
def P17778118845134397302.Spec : Prop :=
  ∀ n, P17778118845134397302.a n = A131733 (n + 1)

theorem P17778118845134397302.correct : P17778118845134397302.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P17778118845134397302.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-! ## A131733.P11403005178062200672

`A000040(n+1)-Δ[n²]`
-/

namespace A131733.P11403005178062200672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A131733.P11403005178062200672

namespace A131733

/-- `A000040(n+1)-Δ[n²]` -/
def P11403005178062200672.Spec : Prop :=
  ∀ n, P11403005178062200672.a n = A131733 (n + 1)

theorem P11403005178062200672.correct : P11403005178062200672.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P11403005178062200672.f1, A131733.P11403005178062200672.a, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A131733

/-! ## A131733.P8434191990213294498

`sqrt(A005722(n+1))-2*n`
-/

namespace A131733.P8434191990213294498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ) - (2 * n : ℝ)

end

end A131733.P8434191990213294498

namespace A131733

/-- `sqrt(A005722(n+1))-2*n` -/
def P8434191990213294498.Spec : Prop :=
  ∀ n, P8434191990213294498.a n = (A131733 (n + 1) : ℝ)

end A131733

/-! ## A131733.P2983759914909133307

`sqrt(A001248(n+1))-Δ[n²]`
-/

namespace A131733.P2983759914909133307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A131733.P2983759914909133307

namespace A131733

/-- `sqrt(A001248(n+1))-Δ[n²]` -/
def P2983759914909133307.Spec : Prop :=
  ∀ n, P2983759914909133307.a n = (A131733 (n + 1) : ℝ)

end A131733

/-! ## A131733.P17737964818045869676

`A008864(n+1)-2*(n+1)`
-/

namespace A131733.P17737964818045869676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (2 * (n + 1) : ℤ)

end

end A131733.P17737964818045869676

namespace A131733

/-- `A008864(n+1)-2*(n+1)` -/
def P17737964818045869676.Spec : Prop :=
  ∀ n, P17737964818045869676.a n = A131733 (n + 1)

theorem P17737964818045869676.correct : P17737964818045869676.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P17737964818045869676.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-! ## A131733.P5730651887597383250

`A040976(n+1)+1-2*n`
-/

namespace A131733.P5730651887597383250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1 - (2 * n : ℤ)

end

end A131733.P5730651887597383250

namespace A131733

/-- `A040976(n+1)+1-2*n` -/
def P5730651887597383250.Spec : Prop :=
  ∀ n, P5730651887597383250.a n = A131733 (n + 1)

theorem P5730651887597383250.correct : P5730651887597383250.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P5730651887597383250.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-! ## A131733.P4725676130549181546

`A014688(n+1)-(3*n+2)`
-/

namespace A131733.P4725676130549181546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (3 * n + 2 : ℤ)

end

end A131733.P4725676130549181546

namespace A131733

/-- `A014688(n+1)-(3*n+2)` -/
def P4725676130549181546.Spec : Prop :=
  ∀ n, P4725676130549181546.a n = A131733 (n + 1)

end A131733

/-! ## A131733.P14585942707055341249

`A052147(n+1)-(2*n+3)`
-/

namespace A131733.P14585942707055341249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (2 * n + 3 : ℤ)

end

end A131733.P14585942707055341249

namespace A131733

/-- `A052147(n+1)-(2*n+3)` -/
def P14585942707055341249.Spec : Prop :=
  ∀ n, P14585942707055341249.a n = A131733 (n + 1)

theorem P14585942707055341249.correct : P14585942707055341249.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P14585942707055341249.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-! ## A131733.P18441245589282267158

`a(n-1)+A046933(n)-1` with `a(0)=1`
-/

namespace A131733.P18441245589282267158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A046933 n - 1)

end

end A131733.P18441245589282267158

namespace A131733

/-- `a(n-1)+A046933(n)-1` -/
def P18441245589282267158.Spec : Prop :=
  ∀ n, P18441245589282267158.a n = A131733 (n + 1)

end A131733

/-! ## A131733.P11321933631198414375

`a(n-1)+A001223(n)-2` with `a(0)=1`
-/

namespace A131733.P11321933631198414375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001223 n - 2)

end

end A131733.P11321933631198414375

namespace A131733

/-- `a(n-1)+A001223(n)-2` -/
def P11321933631198414375.Spec : Prop :=
  ∀ n, P11321933631198414375.a n = A131733 (n + 1)

end A131733

/-! ## A131733.P11847076368220031760

`Δ[A007504(n)]-A005408(n)`
-/

namespace A131733.P11847076368220031760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005408 n

end

end A131733.P11847076368220031760

namespace A131733

/-- `Δ[A007504(n)]-A005408(n)` -/
def P11847076368220031760.Spec : Prop :=
  ∀ n, P11847076368220031760.a n = A131733 (n + 1)

end A131733

/-! ## A131733.P5861387566532798292

`A165747(n)+A040976(n+1)`
-/

namespace A131733.P5861387566532798292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 n + A040976 (n + 1)

end

end A131733.P5861387566532798292

namespace A131733

/-- `A165747(n)+A040976(n+1)` -/
def P5861387566532798292.Spec : Prop :=
  ∀ n, P5861387566532798292.a n = A131733 (n + 1)

theorem P5861387566532798292.correct : P5861387566532798292.Spec := by
  intro n
  simp only [A131733, Nat.add_sub_cancel, A131733.P5861387566532798292.a, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A165747, A165747.P841094423596546419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131733

/-!
# A131734: Period 6: repeat [0, 1, 0, 1, 0, -1].

The programs for A131734, the canonical program `A131734.P3329856933539507283` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131734 has offset 0).

The definition of A131734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131734.P3329856933539507283

`a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131734

/-- `a(n-6)` -/
def P3329856933539507283.Spec : Prop :=
  ∀ n, P3329856933539507283.a n = A131734 n

theorem P3329856933539507283.correct : P3329856933539507283.Spec := by
  intro n
  simp only [A131734]

end A131734

/-!
# A131735: Period 6: repeat [0, 0, 1, 1, 1, 1].

The programs for A131735, the canonical program `A131735.P1260111182493031506` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131735 has offset 0).

The definition of A131735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131735.P1260111182493031506

`floor(atan(n%6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131735

/-- `floor(atan(n%6))` -/
def P1260111182493031506.Spec : Prop :=
  ∀ n, P1260111182493031506.a n = A131735 n

theorem P1260111182493031506.correct : P1260111182493031506.Spec := by
  intro n
  simp only [A131735]

end A131735

/-!
# A131736: Period 6: repeat [0, 0, 1, -1, -1, 1].

The programs for A131736, the canonical program `A131736.P13980456010254172596` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131736 has offset 0).

The definition of A131736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131736.P13980456010254172596

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=-1, a(4)=-1, a(5)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131736

/-- `a(n-6)` -/
def P13980456010254172596.Spec : Prop :=
  ∀ n, P13980456010254172596.a n = A131736 n

theorem P13980456010254172596.correct : P13980456010254172596.Spec := by
  intro n
  simp only [A131736]

end A131736

/-!
# A131737: Essentially even numbers followed by duplicated odd numbers.

The programs for A131737, the canonical program `A131737.P15140696551362271768` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131737 has offset 0).

The definition of A131737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131737.P11108911918753306896

`∑[(char[2]+n)²%3]`
-/

namespace A131737.P11108911918753306896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + n) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P11108911918753306896

namespace A131737

/-- `∑[(char[2]+n)²%3]` -/
def P11108911918753306896.Spec : Prop :=
  ∀ n, (P11108911918753306896.a n : ℤ) = A131737 n

end A131737

/-! ## A131737.P2311872539650884764

`∑[n²%3-char[2]]`
-/

namespace A131737.P2311872539650884764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P2311872539650884764

namespace A131737

/-- `∑[n²%3-char[2]]` -/
def P2311872539650884764.Spec : Prop :=
  ∀ n, P2311872539650884764.a n = A131737 n

end A131737

/-! ## A131737.P9034830846325634960

`ceil(comp[2*(n+2)]/3)`
-/

namespace A131737.P9034830846325634960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 3⌉

end

end A131737.P9034830846325634960

namespace A131737

/-- `ceil(comp[2*(n+2)]/3)` -/
def P9034830846325634960.Spec : Prop :=
  ∀ n, P9034830846325634960.a n = A131737 n

end A131737

/-! ## A131737.P10883061434627469039

`∑[char[4-gcd(3, n)+n]]`
-/

namespace A131737.P10883061434627469039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 3 n : ℤ) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P10883061434627469039

namespace A131737

/-- `∑[char[4-gcd(3, n)+n]]` -/
def P10883061434627469039.Spec : Prop :=
  ∀ n, (P10883061434627469039.a n : ℤ) = A131737 n

end A131737

/-! ## A131737.P15140696551362271768

`a(n-3)+2` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131737

/-- `a(n-3)+2` -/
def P15140696551362271768.Spec : Prop :=
  ∀ n, (P15140696551362271768.a n : ℤ) = A131737 n

theorem P15140696551362271768.correct : P15140696551362271768.Spec := by
  intro n
  simp only [A131737]

end A131737

/-! ## A131737.P12486186548994352166

`∑[a(n-3)²]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A131737.P12486186548994352166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0, 1, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P12486186548994352166

namespace A131737

/-- `∑[a(n-3)²]` -/
def P12486186548994352166.Spec : Prop :=
  ∀ n, (P12486186548994352166.a n : ℤ) = A131737 n

end A131737

/-! ## A131737.P8765661875933993195

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131737.P8765661875933993195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P8765661875933993195

namespace A131737

/-- `∑[floor(a(n-3))]` -/
def P8765661875933993195.Spec : Prop :=
  ∀ n, (P8765661875933993195.a n : ℤ) = A131737 n

end A131737

/-! ## A131737.P155177347651019854

`∑[a(n-3)^3]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A131737.P155177347651019854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0, 1, 1] fun n f1 =>
  f1 (n - 3) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P155177347651019854

namespace A131737

/-- `∑[a(n-3)^3]` -/
def P155177347651019854.Spec : Prop :=
  ∀ n, (P155177347651019854.a n : ℤ) = A131737 n

end A131737

/-! ## A131737.P12514844778987754841

`floor((2*n+1-atan(n-1))/3)`
-/

namespace A131737.P12514844778987754841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℝ) - Real.arctan ((n : ℤ) - 1 : ℝ)) / 3⌋

end

end A131737.P12514844778987754841

namespace A131737

/-- `floor((2*n+1-atan(n-1))/3)` -/
def P12514844778987754841.Spec : Prop :=
  ∀ n, P12514844778987754841.a n = A131737 n

end A131737

/-! ## A131737.P12011390918357916973

`floor(n-1-a(n-1)/2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A131737.P12011390918357916973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊((n : ℤ) - 1 : ℚ) - (a (n - 1) : ℚ) / 2⌋

end

end A131737.P12011390918357916973

namespace A131737

/-- `floor(n-1-a(n-1)/2)` -/
def P12011390918357916973.Spec : Prop :=
  ∀ n, P12011390918357916973.a n = A131737 n

end A131737

/-! ## A131737.P9684010154989781219

`∑[char[3*n-a(n-1)]]-1` with `a(0)=0, a(1)=1`
-/

namespace A131737.P9684010154989781219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (3 * n : ℤ) - f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A131737.P9684010154989781219

namespace A131737

/-- `∑[char[3*n-a(n-1)]]-1` -/
def P9684010154989781219.Spec : Prop :=
  ∀ n, P9684010154989781219.a n = A131737 n

end A131737

/-! ## A131737.P18221717199477270586

`∑[1-a(n-1)*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A131737.P18221717199477270586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0] fun n f1 =>
  1 - f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P18221717199477270586

namespace A131737

/-- `∑[1-a(n-1)*a(n-2)]` -/
def P18221717199477270586.Spec : Prop :=
  ∀ n, P18221717199477270586.a n = A131737 n

end A131737

/-! ## A131737.P15913569288103347953

`2-(a(n-1)%2-a(n-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A131737.P15913569288103347953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  2 - (Int.tmod (a (n - 1)) 2 - a (n - 2))

end

end A131737.P15913569288103347953

namespace A131737

/-- `2-(a(n-1)%2-a(n-2))` -/
def P15913569288103347953.Spec : Prop :=
  ∀ n, P15913569288103347953.a n = A131737 n

end A131737

/-! ## A131737.P2143461240706123526

`2-(gcd(2, a(n-2))-a(n-1))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A131737.P2143461240706123526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  2 - ((Int.gcd 2 (a (n - 2)) : ℤ) - a (n - 1))

end

end A131737.P2143461240706123526

namespace A131737

/-- `2-(gcd(2, a(n-2))-a(n-1))` -/
def P2143461240706123526.Spec : Prop :=
  ∀ n, P2143461240706123526.a n = A131737 n

end A131737

/-! ## A131737.P3605979579895528385

`∑[char[A097482(n+1)]]`
-/

namespace A131737.P3605979579895528385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097482 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P3605979579895528385

namespace A131737

/-- `∑[char[A097482(n+1)]]` -/
def P3605979579895528385.Spec : Prop :=
  ∀ n, (P3605979579895528385.a n : ℤ) = A131737 n

end A131737

/-! ## A131737.P4622130684271927497

`∑[A011655(char[2]+n)]`
-/

namespace A131737.P4622130684271927497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P4622130684271927497

namespace A131737

/-- `∑[A011655(char[2]+n)]` -/
def P4622130684271927497.Spec : Prop :=
  ∀ n, P4622130684271927497.a n = A131737 n

end A131737

/-! ## A131737.P1576838964354470958

`∑[A011655(n)-char[2]]`
-/

namespace A131737.P1576838964354470958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131737.P1576838964354470958

namespace A131737

/-- `∑[A011655(n)-char[2]]` -/
def P1576838964354470958.Spec : Prop :=
  ∀ n, P1576838964354470958.a n = A131737 n

end A131737

/-! ## A131737.P1556596266468900126

`A004396(n-floor(atan(n)))`
-/

namespace A131737.P1556596266468900126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) - ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A131737.P1556596266468900126

namespace A131737

/-- `A004396(n-floor(atan(n)))` -/
def P1556596266468900126.Spec : Prop :=
  ∀ n, P1556596266468900126.a n = A131737 n

end A131737

/-! ## A131737.P10062962048930893176

`A256680(n)%A049625(n)`
-/

namespace A131737.P10062962048930893176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256680 n) (A049625 n)

end

end A131737.P10062962048930893176

namespace A131737

/-- `A256680(n)%A049625(n)` -/
def P10062962048930893176.Spec : Prop :=
  ∀ n, P10062962048930893176.a n = A131737 n

end A131737

/-! ## A131737.P4080258916393576567

`A047399(n+1)-A130773(n)`
-/

namespace A131737.P4080258916393576567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047399 (n + 1) - A130773 n

end

end A131737.P4080258916393576567

namespace A131737

/-- `A047399(n+1)-A130773(n)` -/
def P4080258916393576567.Spec : Prop :=
  ∀ n, P4080258916393576567.a n = A131737 n

end A131737

/-!
# A131738: a(0) = 0. a(n) = (n+1)*(-1)^n, n>0 .

The programs for A131738, the canonical program `A131738.P47329639037151354` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131738 has offset 0).

The definition of A131738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131738.P12222350819659771587

`ogf((-2x-x^2)/(1+2x+x^2))`
-/

namespace A131738.P12222350819659771587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -2, -1] [1, 2, 1] n

end

end A131738.P12222350819659771587

namespace A131738

/-- `ogf((-2x-x^2)/(1+2x+x^2))` -/
def P12222350819659771587.Spec : Prop :=
  ∀ n, P12222350819659771587.a n = A131738 n

end A131738

/-! ## A131738.P47329639037151354

`xor(n, ((-1)^n)%(n+1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131738

/-- `xor(n, ((-1)^n)%(n+1))` -/
def P47329639037151354.Spec : Prop :=
  ∀ n, P47329639037151354.a n = A131738 n

theorem P47329639037151354.correct : P47329639037151354.Spec := by
  intro n
  simp only [A131738]

end A131738

/-! ## A131738.P2042323635821207261

`xor(1, round((-1)^n/acot(n)))`
-/

namespace A131738.P2042323635821207261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (((-1) ^ n : ℝ) / SequenceMachineLib.acot (n : ℝ)))

end

end A131738.P2042323635821207261

namespace A131738

/-- `xor(1, round((-1)^n/acot(n)))` -/
def P2042323635821207261.Spec : Prop :=
  ∀ n, P2042323635821207261.a n = A131738 n

end A131738

/-! ## A131738.P12422180247876790843

`(-1)^n*ceil(sqrt(∑[2*n]))`
-/

namespace A131738.P12422180247876790843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A131738.P12422180247876790843

namespace A131738

/-- `(-1)^n*ceil(sqrt(∑[2*n]))` -/
def P12422180247876790843.Spec : Prop :=
  ∀ n, P12422180247876790843.a n = A131738 n

end A131738

/-! ## A131738.P2405317645505051795

`(-1)^n-a(n-1)` with `a(0)=0, a(1)=-2`
-/

namespace A131738.P2405317645505051795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -2] fun n a =>
  (-1) ^ n - a (n - 1)

end

end A131738.P2405317645505051795

namespace A131738

/-- `(-1)^n-a(n-1)` -/
def P2405317645505051795.Spec : Prop :=
  ∀ n, P2405317645505051795.a n = A131738 n

end A131738

/-! ## A131738.P9987352582714548701

`Δ[and(1, n)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A131738.P9987352582714548701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Nat.land 1 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131738.P9987352582714548701

namespace A131738

/-- `Δ[and(1, n)-a(n-1)]` -/
def P9987352582714548701.Spec : Prop :=
  ∀ n, P9987352582714548701.a n = A131738 n

end A131738

/-! ## A131738.P11460077026675034822

`1-Δ[n²%(2*n+1)]`
-/

namespace A131738.P11460077026675034822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A131738.P11460077026675034822

namespace A131738

/-- `1-Δ[n²%(2*n+1)]` -/
def P11460077026675034822.Spec : Prop :=
  ∀ n, P11460077026675034822.a n = A131738 n

end A131738

/-! ## A131738.P17669741588912898264

`(n²-1)/a(n-2)` with `a(0)=0, a(1)=-2, a(2)=3`
-/

namespace A131738.P17669741588912898264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, -2, 3] fun n a =>
  ((n ^ 2 : ℤ) - 1 : ℚ) / a (n - 2)

end

end A131738.P17669741588912898264

namespace A131738

/-- `(n²-1)/a(n-2)` -/
def P17669741588912898264.Spec : Prop :=
  ∀ n, P17669741588912898264.a n = (A131738 n : ℚ)

end A131738

/-! ## A131738.P16967266511794205341

`n-or(3, a(n-1)+n-1)` with `a(0)=0`
-/

namespace A131738.P16967266511794205341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.lor 3 (a (n - 1) + ((n : ℤ) - 1))

end

end A131738.P16967266511794205341

namespace A131738

/-- `n-or(3, a(n-1)+n-1)` -/
def P16967266511794205341.Spec : Prop :=
  ∀ n, P16967266511794205341.a n = A131738 n

end A131738

/-! ## A131738.P1468510478216380406

`lcm(n+1, a(and(1, n+1)))-(n+1)` with `a(0)=0`
-/

namespace A131738.P1468510478216380406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm (n + 1 : ℤ) (a (Nat.land 1 (n + 1))) : ℤ) - (n + 1 : ℤ)

end

end A131738.P1468510478216380406

namespace A131738

/-- `lcm(n+1, a(and(1, n+1)))-(n+1)` -/
def P1468510478216380406.Spec : Prop :=
  ∀ n, P1468510478216380406.a n = A131738 n

end A131738

/-! ## A131738.P13631699460533514420

`gcd(4, a(n-1)+n)-(a(n-1)+3)` with `a(0)=0`
-/

namespace A131738.P13631699460533514420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.gcd 4 (a (n - 1) + (n : ℤ)) : ℤ) - (a (n - 1) + 3)

end

end A131738.P13631699460533514420

namespace A131738

/-- `gcd(4, a(n-1)+n)-(a(n-1)+3)` -/
def P13631699460533514420.Spec : Prop :=
  ∀ n, P13631699460533514420.a n = A131738 n

end A131738

/-! ## A131738.P3302453911312976325

`n+1-C((n+1)*gcd(2, n+1), 2*n+1)`
-/

namespace A131738.P3302453911312976325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose ((n + 1) * Nat.gcd 2 (n + 1)) (2 * n + 1) : ℤ)

end

end A131738.P3302453911312976325

namespace A131738

/-- `n+1-C((n+1)*gcd(2, n+1), 2*n+1)` -/
def P3302453911312976325.Spec : Prop :=
  ∀ n, P3302453911312976325.a n = A131738 n

end A131738

/-! ## A131738.P18012564472125274638

`xor(1, A274922(n))`
-/

namespace A131738.P18012564472125274638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A274922 n)

end

end A131738.P18012564472125274638

namespace A131738

/-- `xor(1, A274922(n))` -/
def P18012564472125274638.Spec : Prop :=
  ∀ n, P18012564472125274638.a n = A131738 n

end A131738

/-! ## A131738.P17151620187835547823

`or(1, n)-A266437(n)`
-/

namespace A131738.P17151620187835547823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A266437 n

end

end A131738.P17151620187835547823

namespace A131738

/-- `or(1, n)-A266437(n)` -/
def P17151620187835547823.Spec : Prop :=
  ∀ n, P17151620187835547823.a n = A131738 n

end A131738

/-! ## A131738.P17663275602638671117

`xor(n, n-A014681(n))`
-/

namespace A131738.P17663275602638671117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A014681 n)

end

end A131738.P17663275602638671117

namespace A131738

/-- `xor(n, n-A014681(n))` -/
def P17663275602638671117.Spec : Prop :=
  ∀ n, P17663275602638671117.a n = A131738 n

end A131738

/-! ## A131738.P2499251134977654262

`A038608(n)-A062157(n)`
-/

namespace A131738.P2499251134977654262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n - A062157 n

end

end A131738.P2499251134977654262

namespace A131738

/-- `A038608(n)-A062157(n)` -/
def P2499251134977654262.Spec : Prop :=
  ∀ n, P2499251134977654262.a n = A131738 n

end A131738

/-! ## A131738.P13493617059826466836

`A103517(n)-A165998(n)`
-/

namespace A131738.P13493617059826466836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A165998 n

end

end A131738.P13493617059826466836

namespace A131738

/-- `A103517(n)-A165998(n)` -/
def P13493617059826466836.Spec : Prop :=
  ∀ n, P13493617059826466836.a n = A131738 n

end A131738

/-! ## A131738.P10526160122537321532

`A109613(n)-A266437(n)`
-/

namespace A131738.P10526160122537321532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A266437 n

end

end A131738.P10526160122537321532

namespace A131738

/-- `A109613(n)-A266437(n)` -/
def P10526160122537321532.Spec : Prop :=
  ∀ n, P10526160122537321532.a n = A131738 n

end A131738

/-! ## A131738.P13899491246724702642

`A157142(n)-A274922(n)`
-/

namespace A131738.P13899491246724702642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n - A274922 n

end

end A131738.P13899491246724702642

namespace A131738

/-- `A157142(n)-A274922(n)` -/
def P13899491246724702642.Spec : Prop :=
  ∀ n, P13899491246724702642.a n = A131738 n

end A131738

/-! ## A131738.P12375566788513496806

`A274922(n)-A165326(n)`
-/

namespace A131738.P12375566788513496806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n - A165326 n

end

end A131738.P12375566788513496806

namespace A131738

/-- `A274922(n)-A165326(n)` -/
def P12375566788513496806.Spec : Prop :=
  ∀ n, P12375566788513496806.a n = A131738 n

end A131738

/-!
# A131739: a(4n) = a(4n+1) = n, a(4n+2) = 3n+2, a(4n+3) = 3n+3.

The programs for A131739, the canonical program `A131739.P10122436656804867378` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131739 has offset 0).

The definition of A131739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131739.P10122436656804867378

`round(n^3/4)%(n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131739

/-- `round(n^3/4)%(n+1)` -/
def P10122436656804867378.Spec : Prop :=
  ∀ n, P10122436656804867378.a n = A131739 n

theorem P10122436656804867378.correct : P10122436656804867378.Spec := by
  intro n
  simp only [A131739]

end A131739

/-! ## A131739.P1483031339235236302

`floor((and(2, n)+1)*(n+1)/4)`
-/

namespace A131739.P1483031339235236302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.land 2 n + 1) * (n + 1) : ℚ) / 4⌋

end

end A131739.P1483031339235236302

namespace A131739

/-- `floor((and(2, n)+1)*(n+1)/4)` -/
def P1483031339235236302.Spec : Prop :=
  ∀ n, P1483031339235236302.a n = A131739 n

end A131739

/-! ## A131739.P8754417657132781043

`∑[gcd(4, n)%4-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A131739.P8754417657132781043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ((Nat.gcd 4 n % 4 : ℕ) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131739.P8754417657132781043

namespace A131739

/-- `∑[gcd(4, n)%4-a(n-2)]` -/
def P8754417657132781043.Spec : Prop :=
  ∀ n, P8754417657132781043.a n = A131739 n

end A131739

/-! ## A131739.P12179978444066748855

`∑[floor(Δ[n/gcd(2, floor(a(n-1)))])]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A131739.P12179978444066748855
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℚ) / (Int.gcd 2 ⌊f2 (n - 1)⌋ : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131739.P12179978444066748855

namespace A131739

/-- `∑[floor(Δ[n/gcd(2, floor(a(n-1)))])]` -/
def P12179978444066748855.Spec : Prop :=
  ∀ n, P12179978444066748855.a n = A131739 n

end A131739

/-! ## A131739.P9458841318357340348

`and(2, n)+a(n-4)+1` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A131739.P9458841318357340348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 3] fun n a =>
  Nat.land 2 n + (a (n - 4) + 1)

end

end A131739.P9458841318357340348

namespace A131739

/-- `and(2, n)+a(n-4)+1` -/
def P9458841318357340348.Spec : Prop :=
  ∀ n, (P9458841318357340348.a n : ℤ) = A131739 n

end A131739

/-! ## A131739.P11870163533022727213

`floor((n+1)/4*gcd(3, (n+1)%4))`
-/

namespace A131739.P11870163533022727213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 4 * (Nat.gcd 3 ((n + 1) % 4) : ℚ)⌋

end

end A131739.P11870163533022727213

namespace A131739

/-- `floor((n+1)/4*gcd(3, (n+1)%4))` -/
def P11870163533022727213.Spec : Prop :=
  ∀ n, P11870163533022727213.a n = A131739 n

end A131739

/-! ## A131739.P13962555956706251531

`n-(∑[n]+a(n-1))%(n+1)` with `a(0)=0`
-/

namespace A131739.P13962555956706251531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1)) (n + 1 : ℤ)

end

end A131739.P13962555956706251531

namespace A131739

/-- `n-(∑[n]+a(n-1))%(n+1)` -/
def P13962555956706251531.Spec : Prop :=
  ∀ n, P13962555956706251531.a n = A131739 n

end A131739

/-! ## A131739.P2488182748825878466

`char[or(2, n)]-a(n-2)-1+n` with `a(0)=0, a(1)=0`
-/

namespace A131739.P2488182748825878466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2) - 1 + (n : ℤ)

end

end A131739.P2488182748825878466

namespace A131739

/-- `char[or(2, n)]-a(n-2)-1+n` -/
def P2488182748825878466.Spec : Prop :=
  ∀ n, P2488182748825878466.a n = A131739 n

end A131739

/-! ## A131739.P12832524230337107412

`char[or(2, n)]-a(n-2)-(1-n)` with `a(0)=0, a(1)=0`
-/

namespace A131739.P12832524230337107412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2) - (1 - (n : ℤ))

end

end A131739.P12832524230337107412

namespace A131739

/-- `char[or(2, n)]-a(n-2)-(1-n)` -/
def P12832524230337107412.Spec : Prop :=
  ∀ n, P12832524230337107412.a n = A131739 n

end A131739

/-! ## A131739.P182161333777810712

`and(2, n)/2-a(n-2)-(1-n)` with `a(0)=0, a(1)=0`
-/

namespace A131739.P182161333777810712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Nat.land 2 n : ℚ) / 2 - a (n - 2) - (1 - (n : ℤ) : ℚ)

end

end A131739.P182161333777810712

namespace A131739

/-- `and(2, n)/2-a(n-2)-(1-n)` -/
def P182161333777810712.Spec : Prop :=
  ∀ n, P182161333777810712.a n = (A131739 n : ℚ)

end A131739

/-! ## A131739.P12367239060060290189

`(2*n+1-(n+1)*cos(π*n/2)-(n+2)*sin(π*n/2))/4`
-/

namespace A131739.P12367239060060290189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℝ) + (1 - (n + 1 : ℝ) * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) - (n + 2 : ℝ) * Real.sin (Real.pi * ((n : ℚ) / 2 : ℝ))) / 4

end

end A131739.P12367239060060290189

namespace A131739

/-- `(2*n+1-(n+1)*cos(π*n/2)-(n+2)*sin(π*n/2))/4` -/
def P12367239060060290189.Spec : Prop :=
  ∀ n, P12367239060060290189.a n = (A131739 n : ℝ)

end A131739

/-! ## A131739.P7548780464217629322

`A134172(n)+A021913(n)`
-/

namespace A131739.P7548780464217629322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 n + A021913 n

end

end A131739.P7548780464217629322

namespace A131739

/-- `A134172(n)+A021913(n)` -/
def P7548780464217629322.Spec : Prop :=
  ∀ n, P7548780464217629322.a n = A131739 n

end A131739

/-! ## A131739.P12165025671212258490

`gcd(A211539(n), A296805(n+1))`
-/

namespace A131739.P12165025671212258490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211539 n) (A296805 (n + 1))

end

end A131739.P12165025671212258490

namespace A131739

/-- `gcd(A211539(n), A296805(n+1))` -/
def P12165025671212258490.Spec : Prop :=
  ∀ n, (P12165025671212258490.a n : ℤ) = A131739 n

end A131739

/-! ## A131739.P11434548800171050349

`∑[2*A077814(n)-A004524(n)]`
-/

namespace A131739.P11434548800171050349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077814 n - A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131739.P11434548800171050349

namespace A131739

/-- `∑[2*A077814(n)-A004524(n)]` -/
def P11434548800171050349.Spec : Prop :=
  ∀ n, P11434548800171050349.a n = A131739 n

end A131739

/-! ## A131739.P12963619551636415869

`∑[2*A077814(n)]-A011848(n)`
-/

namespace A131739.P12963619551636415869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011848 n

end

end A131739.P12963619551636415869

namespace A131739

/-- `∑[2*A077814(n)]-A011848(n)` -/
def P12963619551636415869.Spec : Prop :=
  ∀ n, P12963619551636415869.a n = A131739 n

end A131739

/-! ## A131739.P12293831697489725873

`A004524(n)+1-A001057(A008619(n))`
-/

namespace A131739.P12293831697489725873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n + (1 - A001057 (A008619 n).toNat)

end

end A131739.P12293831697489725873

namespace A131739

/-- `A004524(n)+1-A001057(A008619(n))` -/
def P12293831697489725873.Spec : Prop :=
  ∀ n, P12293831697489725873.a n = A131739 n

end A131739

/-! ## A131739.P9935448506700064412

`A246552(n)+A004525(A266491(n)-n)`
-/

namespace A131739.P9935448506700064412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 n + A004525 (A266491 n - (n : ℤ)).toNat

end

end A131739.P9935448506700064412

namespace A131739

/-- `A246552(n)+A004525(A266491(n)-n)` -/
def P9935448506700064412.Spec : Prop :=
  ∀ n, P9935448506700064412.a n = A131739 n

end A131739

/-! ## A131739.P704336597708355562

`A242601(n)+A004524(n+1)`
-/

namespace A131739.P704336597708355562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242601 n + A004524 (n + 1)

end

end A131739.P704336597708355562

namespace A131739

/-- `A242601(n)+A004524(n+1)` -/
def P704336597708355562.Spec : Prop :=
  ∀ n, P704336597708355562.a n = A131739 n

end A131739

/-! ## A131739.P15497030069231696395

`A296160(n+2)/(A296161(n+2)-A296160(n+2))`
-/

namespace A131739.P15497030069231696395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296160 (n + 2) : ℚ) / (A296161 (n + 2) - A296160 (n + 2) : ℚ)

end

end A131739.P15497030069231696395

namespace A131739

/-- `A296160(n+2)/(A296161(n+2)-A296160(n+2))` -/
def P15497030069231696395.Spec : Prop :=
  ∀ n, P15497030069231696395.a n = (A131739 n : ℚ)

end A131739

/-! ## A131739.P12571949275841722687

`1-A134172(n+2)+n`
-/

namespace A131739.P12571949275841722687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A134172 (n + 2) + (n : ℤ)

end

end A131739.P12571949275841722687

namespace A131739

/-- `1-A134172(n+2)+n` -/
def P12571949275841722687.Spec : Prop :=
  ∀ n, P12571949275841722687.a n = A131739 n

end A131739

/-!
# A131740: a(n) = sum of n successive primes after the n-th prime.

The programs for A131740, the canonical program `A131740.P10215158765622913185` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131740 has offset 1).

The definition of A131740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131740.P2118214934704159526

`A077354(n+1)+A007504(n+1)`
-/

namespace A131740.P2118214934704159526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077354 (n + 1) + A007504 (n + 1)

end

end A131740.P2118214934704159526

namespace A131740

/-- `A077354(n+1)+A007504(n+1)` -/
def P2118214934704159526.Spec : Prop :=
  ∀ n, P2118214934704159526.a n = A131740 (n + 1)

theorem P2118214934704159526.correct : P2118214934704159526.Spec := by
  intro n
  simp only [A131740, Nat.add_sub_cancel, A131740.P2118214934704159526.a, A131740.P10215158765622913185.f1, A131740.P10215158765622913185.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P14310834286015847203.a, A077354, A077354.P15018745007241807855.a, A100479, A100479.P2671842593850112912.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131740

/-! ## A131740.P12871086749113819490

`A109722(n+1)-A007504(n+1)`
-/

namespace A131740.P12871086749113819490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (n + 1) - A007504 (n + 1)

end

end A131740.P12871086749113819490

namespace A131740

/-- `A109722(n+1)-A007504(n+1)` -/
def P12871086749113819490.Spec : Prop :=
  ∀ n, P12871086749113819490.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P10215158765622913185

`∑[A100479(n+1)-A000040(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131740

/-- `∑[A100479(n+1)-A000040(n+1)]` -/
def P10215158765622913185.Spec : Prop :=
  ∀ n, P10215158765622913185.a n = A131740 (n + 1)

theorem P10215158765622913185.correct : P10215158765622913185.Spec := by
  intro n
  simp only [A131740, Nat.add_sub_cancel]

end A131740

/-! ## A131740.P11943257806048311003

`A007504(2*(n+1))-A007504(n+1)`
-/

namespace A131740.P11943257806048311003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * (n + 1)) - A007504 (n + 1)

end

end A131740.P11943257806048311003

namespace A131740

/-- `A007504(2*(n+1))-A007504(n+1)` -/
def P11943257806048311003.Spec : Prop :=
  ∀ n, P11943257806048311003.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P4171329023173765058

`A077354(n+1)+A362419(n+1)/2`
-/

namespace A131740.P4171329023173765058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077354 (n + 1) : ℚ) + (A362419 (n + 1) : ℚ) / 2

end

end A131740.P4171329023173765058

namespace A131740

/-- `A077354(n+1)+A362419(n+1)/2` -/
def P4171329023173765058.Spec : Prop :=
  ∀ n, P4171329023173765058.a n = (A131740 (n + 1) : ℚ)

theorem P4171329023173765058.correct : P4171329023173765058.Spec := by
  intro n
  simp only [A131740, Nat.add_sub_cancel, A131740.P4171329023173765058.a, A131740.P10215158765622913185.f1, A131740.P10215158765622913185.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A077354, A077354.P15018745007241807855.a, A100479, A100479.P2671842593850112912.a, A362419, A362419.P12067227853908555658.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131740

/-! ## A131740.P16612394817927695771

`A077126(n+1)+A077131(n+1)-A007504(n+1)`
-/

namespace A131740.P16612394817927695771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077126 (n + 1) + (A077131 (n + 1) - A007504 (n + 1))

end

end A131740.P16612394817927695771

namespace A131740

/-- `A077126(n+1)+A077131(n+1)-A007504(n+1)` -/
def P16612394817927695771.Spec : Prop :=
  ∀ n, P16612394817927695771.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P12769700478142979626

`A072475(n+1)+A077354(n+1)-A024850(n+1)`
-/

namespace A131740.P12769700478142979626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072475 (n + 1) + (A077354 (n + 1) - A024850 (n + 1))

end

end A131740.P12769700478142979626

namespace A131740

/-- `A072475(n+1)+A077354(n+1)-A024850(n+1)` -/
def P12769700478142979626.Spec : Prop :=
  ∀ n, P12769700478142979626.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P7213071431883206927

`record[Δ[A007504(lcm(2, n)/2+1)]]`
-/

namespace A131740.P7213071431883206927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2 + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131740.P7213071431883206927

namespace A131740

/-- `record[Δ[A007504(lcm(2, n)/2+1)]]` -/
def P7213071431883206927.Spec : Prop :=
  ∀ n, P7213071431883206927.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P11116263790876487997

`∑[A001043(Δ[n²])-A000040(n+1)]`
-/

namespace A131740.P11116263790876487997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131740.P11116263790876487997

namespace A131740

/-- `∑[A001043(Δ[n²])-A000040(n+1)]` -/
def P11116263790876487997.Spec : Prop :=
  ∀ n, P11116263790876487997.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P10245502487610839849

`A237589(2*(n+1))-A237589(n+1)`
-/

namespace A131740.P10245502487610839849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (2 * (n + 1)) - A237589 (n + 1)

end

end A131740.P10245502487610839849

namespace A131740

/-- `A237589(2*(n+1))-A237589(n+1)` -/
def P10245502487610839849.Spec : Prop :=
  ∀ n, P10245502487610839849.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P13563381058519044190

`A024377(2*(n+1))+A024328(2*(n+1))`
-/

namespace A131740.P13563381058519044190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024377 (2 * (n + 1)) + A024328 (2 * (n + 1))

end

end A131740.P13563381058519044190

namespace A131740

/-- `A024377(2*(n+1))+A024328(2*(n+1))` -/
def P13563381058519044190.Spec : Prop :=
  ∀ n, P13563381058519044190.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P8151681401073031078

`A025077(2*n+1)+A024328(2*(n+1))`
-/

namespace A131740.P8151681401073031078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025077 (2 * n + 1) + A024328 (2 * (n + 1))

end

end A131740.P8151681401073031078

namespace A131740

/-- `A025077(2*n+1)+A024328(2*(n+1))` -/
def P8151681401073031078.Spec : Prop :=
  ∀ n, P8151681401073031078.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P6380581869542390797

`∑[A001043(2*n+1)-p?[A206074(n+1)]]`
-/

namespace A131740.P6380581869542390797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (2 * n + 1) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131740.P6380581869542390797

namespace A131740

/-- `∑[A001043(2*n+1)-p?[A206074(n+1)]]` -/
def P6380581869542390797.Spec : Prop :=
  ∀ n, P6380581869542390797.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P14476533371539924350

`A262392(2*(n+1))-A036439(n+2)`
-/

namespace A131740.P14476533371539924350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (2 * (n + 1)) - A036439 (n + 2)

end

end A131740.P14476533371539924350

namespace A131740

/-- `A262392(2*(n+1))-A036439(n+2)` -/
def P14476533371539924350.Spec : Prop :=
  ∀ n, P14476533371539924350.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P3170803120329331676

`A262392(2*(n+1))-A175965(n+3)`
-/

namespace A131740.P3170803120329331676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (2 * (n + 1)) - A175965 (n + 3)

end

end A131740.P3170803120329331676

namespace A131740

/-- `A262392(2*(n+1))-A175965(n+3)` -/
def P3170803120329331676.Spec : Prop :=
  ∀ n, P3170803120329331676.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P12118685361472182849

`A014284(2*n+3)-A014284(n+2)`
-/

namespace A131740.P12118685361472182849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (2 * n + 3) - A014284 (n + 2)

end

end A131740.P12118685361472182849

namespace A131740

/-- `A014284(2*n+3)-A014284(n+2)` -/
def P12118685361472182849.Spec : Prop :=
  ∀ n, P12118685361472182849.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P3341842437427752265

`A036439(2*n+3)-A036439(n+2)`
-/

namespace A131740.P3341842437427752265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * n + 3) - A036439 (n + 2)

end

end A131740.P3341842437427752265

namespace A131740

/-- `A036439(2*n+3)-A036439(n+2)` -/
def P3341842437427752265.Spec : Prop :=
  ∀ n, P3341842437427752265.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P6594575885066934633

`A175965(2*(n+2))-A175965(n+3)`
-/

namespace A131740.P6594575885066934633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (2 * (n + 2)) - A175965 (n + 3)

end

end A131740.P6594575885066934633

namespace A131740

/-- `A175965(2*(n+2))-A175965(n+3)` -/
def P6594575885066934633.Spec : Prop :=
  ∀ n, P6594575885066934633.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P2967453170520151015

`A161463(n+1)+A072473(n+1)`
-/

namespace A131740.P2967453170520151015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161463 (n + 1) + A072473 (n + 1)

end

end A131740.P2967453170520151015

namespace A131740

/-- `A161463(n+1)+A072473(n+1)` -/
def P2967453170520151015.Spec : Prop :=
  ∀ n, P2967453170520151015.a n = A131740 (n + 1)

end A131740

/-! ## A131740.P12638862898390162765

`A105720(n+1)-A000040(n+1)`
-/

namespace A131740.P12638862898390162765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) - A000040 (n + 1)

end

end A131740.P12638862898390162765

namespace A131740

/-- `A105720(n+1)-A000040(n+1)` -/
def P12638862898390162765.Spec : Prop :=
  ∀ n, P12638862898390162765.a n = A131740 (n + 1)

end A131740

/-!
# A131741: a(n) is least prime (not already in list) such that no 3-term subset forms an arithmetic progression.

The programs for A131741, there is no canonical definition to state claims against.
-/

/-! ## A131741.P12278745480282241091

`A236697(n)+a(n-1)` with `a(0)=2`
-/

namespace A131741.P12278745480282241091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A236697 n + a (n - 1)

end

end A131741.P12278745480282241091

/-! ## A131741.P14542476815583523206

`∑[A236697(A028310(n))]+1`
-/

namespace A131741.P14542476815583523206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236697 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131741.P14542476815583523206

/-! ## A131741.P12403960502227502936

`∑[A236697(A000038(n)+n)]`
-/

namespace A131741.P12403960502227502936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236697 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131741.P12403960502227502936

/-! ## A131741.P7325752714796319303

`∑[A236697(xor(n, A000038(n)))]`
-/

namespace A131741.P7325752714796319303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236697 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131741.P7325752714796319303

/-! ## A131741.P15972499782123607375

`∑[A236697(n+1)]+2-A236697(n+1)`
-/

namespace A131741.P15972499782123607375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A236697 (n + 1))

end

end A131741.P15972499782123607375

/-! ## A131741.P14474494760518379654

`A151800(∑[A236697(A028310(n))])`
-/

namespace A131741.P14474494760518379654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236697 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131741.P14474494760518379654

/-! ## A131741.P2227302758596975874

`∑[A236697(A233583(2*n+1)-n)]`
-/

namespace A131741.P2227302758596975874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236697 (A233583 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131741.P2227302758596975874

/-!
# A131742: a(4n) = a(4n+1) = 0, a(4n+2) = 3n+1, a(4n+3) = 3n+2.

The programs for A131742, the canonical program `A131742.P6233355253360140700` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131742 has offset 0).

The definition of A131742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131742.P6233355253360140700

`A057353(and(n, 1-and(2, n)))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131742

/-- `A057353(and(n, 1-and(2, n)))` -/
def P6233355253360140700.Spec : Prop :=
  ∀ n, P6233355253360140700.a n = A131742 n

theorem P6233355253360140700.correct : P6233355253360140700.Spec := by
  intro n
  simp only [A131742]

end A131742

/-! ## A131742.P11802139732802852094

`A091684(A057353(n))`
-/

namespace A131742.P11802139732802852094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A057353 n).toNat

end

end A131742.P11802139732802852094

namespace A131742

/-- `A091684(A057353(n))` -/
def P11802139732802852094.Spec : Prop :=
  ∀ n, P11802139732802852094.a n = A131742 n

end A131742

/-! ## A131742.P16643391984861024924

`A057353(n*A021913(n))`
-/

namespace A131742.P16643391984861024924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((n : ℤ) * A021913 n).toNat

end

end A131742.P16643391984861024924

namespace A131742

/-- `A057353(n*A021913(n))` -/
def P16643391984861024924.Spec : Prop :=
  ∀ n, P16643391984861024924.a n = A131742 n

end A131742

/-! ## A131742.P2577474132066616265

`A021913(n)*A130766(n)`
-/

namespace A131742.P2577474132066616265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n * A130766 n

end

end A131742.P2577474132066616265

namespace A131742

/-- `A021913(n)*A130766(n)` -/
def P2577474132066616265.Spec : Prop :=
  ∀ n, P2577474132066616265.a n = A131742 n

end A131742

/-! ## A131742.P7374420755216801629

`A134172(n*A021913(n))`
-/

namespace A131742.P7374420755216801629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 ((n : ℤ) * A021913 n).toNat

end

end A131742.P7374420755216801629

namespace A131742

/-- `A134172(n*A021913(n))` -/
def P7374420755216801629.Spec : Prop :=
  ∀ n, P7374420755216801629.a n = A131742 n

end A131742

/-! ## A131742.P1834015159512059837

`A130766(n)%A037915(n)`
-/

namespace A131742.P1834015159512059837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130766 n) (A037915 n)

end

end A131742.P1834015159512059837

namespace A131742

/-- `A130766(n)%A037915(n)` -/
def P1834015159512059837.Spec : Prop :=
  ∀ n, P1834015159512059837.a n = A131742 n

end A131742

/-! ## A131742.P3217085022267834487

`A145910(n)%A037915(n)`
-/

namespace A131742.P3217085022267834487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145910 n) (A037915 n)

end

end A131742.P3217085022267834487

namespace A131742

/-- `A145910(n)%A037915(n)` -/
def P3217085022267834487.Spec : Prop :=
  ∀ n, P3217085022267834487.a n = A131742 n

end A131742

/-! ## A131742.P2403620442991911160

`A057353(lcm(n, A132380(n)))`
-/

namespace A131742.P2403620442991911160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Int.lcm (n : ℤ) (A132380 n))

end

end A131742.P2403620442991911160

namespace A131742

/-- `A057353(lcm(n, A132380(n)))` -/
def P2403620442991911160.Spec : Prop :=
  ∀ n, P2403620442991911160.a n = A131742 n

end A131742

/-! ## A131742.P999370333321697132

`A057353(n*A132380(n)²)`
-/

namespace A131742.P999370333321697132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((n : ℤ) * A132380 n ^ 2).toNat

end

end A131742.P999370333321697132

namespace A131742

/-- `A057353(n*A132380(n)²)` -/
def P999370333321697132.Spec : Prop :=
  ∀ n, P999370333321697132.a n = A131742 n

end A131742

/-! ## A131742.P13142881991627292480

`(A131739(n)-1)*A021913(n)`
-/

namespace A131742.P13142881991627292480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131739 n - 1) * A021913 n

end

end A131742.P13142881991627292480

namespace A131742

/-- `(A131739(n)-1)*A021913(n)` -/
def P13142881991627292480.Spec : Prop :=
  ∀ n, P13142881991627292480.a n = A131742 n

end A131742

/-! ## A131742.P16502967862520807699

`(1-A133872(n))*A057353(n)`
-/

namespace A131742.P16502967862520807699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A133872 n) * A057353 n

end

end A131742.P16502967862520807699

namespace A131742

/-- `(1-A133872(n))*A057353(n)` -/
def P16502967862520807699.Spec : Prop :=
  ∀ n, P16502967862520807699.a n = A131742 n

end A131742

/-! ## A131742.P7845671373253206563

`(A047392(n+1)-n)*A021913(n)`
-/

namespace A131742.P7845671373253206563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047392 (n + 1) - (n : ℤ)) * A021913 n

end

end A131742.P7845671373253206563

namespace A131742

/-- `(A047392(n+1)-n)*A021913(n)` -/
def P7845671373253206563.Spec : Prop :=
  ∀ n, P7845671373253206563.a n = A131742 n

end A131742

/-! ## A131742.P11467099803980241032

`A057353(n*A000035(A004526(n)))`
-/

namespace A131742.P11467099803980241032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((n : ℤ) * A000035 (A004526 n).toNat).toNat

end

end A131742.P11467099803980241032

namespace A131742

/-- `A057353(n*A000035(A004526(n)))` -/
def P11467099803980241032.Spec : Prop :=
  ∀ n, P11467099803980241032.a n = A131742 n

end A131742

/-! ## A131742.P12044363103200023358

`A134172(2*A134172(n)-A004524(n))`
-/

namespace A131742.P12044363103200023358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 (2 * A134172 n - A004524 n).toNat

end

end A131742.P12044363103200023358

namespace A131742

/-- `A134172(2*A134172(n)-A004524(n))` -/
def P12044363103200023358.Spec : Prop :=
  ∀ n, P12044363103200023358.a n = A131742 n

end A131742

/-! ## A131742.P12270403022401593782

`(n-A065033(A065033(n)))*A021913(n)`
-/

namespace A131742.P12270403022401593782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A065033 (A065033 n).toNat) * A021913 n

end

end A131742.P12270403022401593782

namespace A131742

/-- `(n-A065033(A065033(n)))*A021913(n)` -/
def P12270403022401593782.Spec : Prop :=
  ∀ n, P12270403022401593782.a n = A131742 n

end A131742

/-! ## A131742.P69373789258531392

`A057353(n*A132380(n)*A132380(n))`
-/

namespace A131742.P69373789258531392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((n : ℤ) * A132380 n * A132380 n).toNat

end

end A131742.P69373789258531392

namespace A131742

/-- `A057353(n*A132380(n)*A132380(n))` -/
def P69373789258531392.Spec : Prop :=
  ∀ n, P69373789258531392.a n = A131742 n

end A131742

/-! ## A131742.P5593482082780927877

`(A047613(n+1)-A047454(n+1))*A130766(n)`
-/

namespace A131742.P5593482082780927877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047613 (n + 1) - A047454 (n + 1)) * A130766 n

end

end A131742.P5593482082780927877

namespace A131742

/-- `(A047613(n+1)-A047454(n+1))*A130766(n)` -/
def P5593482082780927877.Spec : Prop :=
  ∀ n, P5593482082780927877.a n = A131742 n

end A131742

/-! ## A131742.P12633644053604636494

`A047237(n+1)-A047237(n+1)/Δ[A047237(n+1)]`
-/

namespace A131742.P12633644053604636494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047237 (n + 1) : ℚ) - (A047237 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A131742.P12633644053604636494

namespace A131742

/-- `A047237(n+1)-A047237(n+1)/Δ[A047237(n+1)]` -/
def P12633644053604636494.Spec : Prop :=
  ∀ n, P12633644053604636494.a n = (A131742 n : ℚ)

end A131742

/-! ## A131742.P14810498807709692790

`Δ[A331952(comp[or(1, 3*n-1)]-n)]`
-/

namespace A131742.P14810498807709692790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131742.P14810498807709692790

namespace A131742

/-- `Δ[A331952(comp[or(1, 3*n-1)]-n)]` -/
def P14810498807709692790.Spec : Prop :=
  ∀ n, P14810498807709692790.a n = A131742 n

end A131742

/-! ## A131742.P16087108622564263197

`A006368(Δ[A004524(n)²])`
-/

namespace A131742.P16087108622564263197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (f1 (n + 1) - f1 n).toNat

end

end A131742.P16087108622564263197

namespace A131742

/-- `A006368(Δ[A004524(n)²])` -/
def P16087108622564263197.Spec : Prop :=
  ∀ n, P16087108622564263197.a n = A131742 n

end A131742

/-!
# A131743: Period 4: repeat [0, 1, 0, 2].

The programs for A131743, the canonical program `A131743.P15251528054321007648` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131743 has offset 0).

The definition of A131743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131743.P15251528054321007648

`a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131743

/-- `a(n-4)` -/
def P15251528054321007648.Spec : Prop :=
  ∀ n, (P15251528054321007648.a n : ℤ) = A131743 n

theorem P15251528054321007648.correct : P15251528054321007648.Spec := by
  intro n
  simp only [A131743]

end A131743

/-!
# A131747: Number of morphically primitive words w in {1,2,3,...}^* of length n (modulo renaming), also the number of words (length n) which are fixed points of nontrivial morphisms, also the number of succinct patterns of length n in canonical form, also the number of words which have an unambiguous morphic image in {a,b}^*.

The programs for A131747, there is no canonical definition to state claims against.
-/

/-! ## A131747.P15124241999765204906

`A025453(A255280(n))`
-/

namespace A131747.P15124241999765204906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A255280 n).toNat

end

end A131747.P15124241999765204906

/-! ## A131747.P14048079941983718341

`A351629(A102916(∑[n]))`
-/

namespace A131747.P14048079941983718341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351629 (A102916 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A131747.P14048079941983718341

/-! ## A131747.P13409382185636954470

`A162232(A148638(n+1))`
-/

namespace A131747.P13409382185636954470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162232 (A148638 (n + 1)).toNat

end

end A131747.P13409382185636954470

/-!
# A131750: Numbers that are both centered triangular and centered square.

The programs for A131750, there is no canonical definition to state claims against.
-/

/-! ## A131750.P16716381601964091091

`3*A200999(n)+1`
-/

namespace A131750.P16716381601964091091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A200999 n + 1

end

end A131750.P16716381601964091091

/-! ## A131750.P335935039452380074

`4*A200998(n)+1`
-/

namespace A131750.P335935039452380074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A200998 n + 1

end

end A131750.P335935039452380074

/-! ## A131750.P18073415679118260794

`ceil(A006051(n+1)/2)`
-/

namespace A131750.P18073415679118260794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006051 (n + 1) : ℚ) / 2⌉

end

end A131750.P18073415679118260794

/-! ## A131750.P9304944790659829434

`ceil(A006060(n+1)/3)`
-/

namespace A131750.P9304944790659829434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006060 (n + 1) : ℚ) / 3⌉

end

end A131750.P9304944790659829434

/-! ## A131750.P697343771025381955

`ceil(A084231(n+1)/4)`
-/

namespace A131750.P697343771025381955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084231 (n + 1) : ℚ) / 4⌉

end

end A131750.P697343771025381955

/-!
# A131751: Numbers that are both centered triangular and centered pentagonal.

The programs for A131751, there is no canonical definition to state claims against.
-/

/-! ## A131751.P3813953324147440486

`ceil(A302329(n)/2)`
-/

namespace A131751.P3813953324147440486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A302329 n : ℚ) / 2⌉

end

end A131751.P3813953324147440486

/-! ## A131751.P9550780571076055748

`ceil(A041449(2*n)/2)`
-/

namespace A131751.P9550780571076055748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041449 (2 * n) : ℚ) / 2⌉

end

end A131751.P9550780571076055748

/-! ## A131751.P12800679567162167184

`(A042859(2*n)+1)/2`
-/

namespace A131751.P12800679567162167184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042859 (2 * n) + 1 : ℚ) / 2

end

end A131751.P12800679567162167184

/-! ## A131751.P1281255620903520313

`A180920(n+1)-2*A180926(n+1)`
-/

namespace A131751.P1281255620903520313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180920 (n + 1) - 2 * A180926 (n + 1)

end

end A131751.P1281255620903520313

/-! ## A131751.P17193839229083263527

`round(A302329(n)/A040224(A062786(n+1)))`
-/

namespace A131751.P17193839229083263527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A302329 n : ℚ) / (A040224 (A062786 (n + 1)).toNat : ℚ))

end

end A131751.P17193839229083263527

/-!
# A131752: Number of ways of choosing the largest subset of {1,2,...,n} such that no two distinct elements differ by a perfect square.

The programs for A131752, there is no canonical definition to state claims against.
-/

/-! ## A131752.P11298248607980664665

`A341620(A332393(n))+A137414(n)`
-/

namespace A131752.P11298248607980664665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (A332393 n).toNat + A137414 n

end

end A131752.P11298248607980664665

/-! ## A131752.P1286438628106486183

`A122313(∑[A018129(n)])`
-/

namespace A131752.P1286438628106486183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131752.P1286438628106486183

/-! ## A131752.P4047480975479872914

`A048263(A218004(n+1))`
-/

namespace A131752.P4047480975479872914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048263 (A218004 (n + 1)).toNat

end

end A131752.P4047480975479872914

/-! ## A131752.P17911639488989577951

`A251719(A119915(n+1))`
-/

namespace A131752.P17911639488989577951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 (A119915 (n + 1)).toNat

end

end A131752.P17911639488989577951

/-! ## A131752.P6726828630436564409

`A048263(A328863(n+1))`
-/

namespace A131752.P6726828630436564409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048263 (A328863 (n + 1)).toNat

end

end A131752.P6726828630436564409

/-!
# A131753: Number of ways of choosing the largest subset of {1,2,...,n} such that no two distinct elements differ by a perfect square > 1.

The programs for A131753, there is no canonical definition to state claims against.
-/

/-! ## A131753.P1891236210147944973

`A031923(A351870(n+2))-1`
-/

namespace A131753.P1891236210147944973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (A351870 (n + 2)).toNat - 1

end

end A131753.P1891236210147944973

/-! ## A131753.P4251319018905541989

`∑[A085736(Δ[A031923(n+1)])]`
-/

namespace A131753.P4251319018905541989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131753.P4251319018905541989

/-! ## A131753.P11199880947366988827

`∑[A089867(Δ[A031923(n+1)])]`
-/

namespace A131753.P11199880947366988827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131753.P11199880947366988827

/-! ## A131753.P2711817432649083582

`∑[A089868(Δ[A031923(n+1)])]`
-/

namespace A131753.P2711817432649083582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131753.P2711817432649083582

/-! ## A131753.P15822505215153739949

`A031923(n+2)-A001222(A048400(n+1))`
-/

namespace A131753.P15822505215153739949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (n + 2) - A001222 (A048400 (n + 1)).toNat

end

end A131753.P15822505215153739949

/-!
# A131754: Size of the largest subset of {1,2,...,n} such that no two distinct elements differ by a perfect square > 1.

The programs for A131754, there is no canonical definition to state claims against.
-/

/-! ## A131754.P6971460305594202144

`∑[A010060(A011928(n)+A000069(n+1))]`
-/

namespace A131754.P6971460305594202144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A011928 n + A000069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131754.P6971460305594202144

/-!
# A131755: a(n) = floor of the average of distances between consecutive positive divisors of n. Also, a(n) = floor((n-1)/(d(n)-1)), where d(n) = A000005(n).

The programs for A131755, there is no canonical definition to state claims against.
-/

/-! ## A131755.P3239383979294789442

`A096736(n+2)-(n+2)`
-/

namespace A131755.P3239383979294789442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096736 (n + 2) - (n + 2 : ℤ)

end

end A131755.P3239383979294789442

/-! ## A131755.P17488681036634711479

`floor((n+1)/A325765(n+1))`
-/

namespace A131755.P17488681036634711479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A325765 (n + 1) : ℚ)⌋

end

end A131755.P17488681036634711479

/-! ## A131755.P6448657860354816263

`floor((n+1)/A032741(n+2))`
-/

namespace A131755.P6448657860354816263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A032741 (n + 2) : ℚ)⌋

end

end A131755.P6448657860354816263

/-! ## A131755.P9859479177556552018

`floor((n+1)/Δ[A002541(n+1)])`
-/

namespace A131755.P9859479177556552018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A131755.P9859479177556552018

/-! ## A131755.P9442331768252668458

`floor((n+1)/∑[A051950(n+2)])`
-/

namespace A131755.P9442331768252668458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A131755.P9442331768252668458

/-! ## A131755.P12077238300956175206

`floor((n+1)/(A000005(n+2)-1))`
-/

namespace A131755.P12077238300956175206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A000005 (n + 2) - 1 : ℚ)⌋

end

end A131755.P12077238300956175206

/-! ## A131755.P5479754193639892801

`val(A000079(n+1), A100577(n+2))`
-/

namespace A131755.P5479754193639892801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 1)).toNat (A100577 (n + 2)).toNat

end

end A131755.P5479754193639892801

/-! ## A131755.P13755191084711523141

`floor((n+1)/A008554(A000005(n+2)))`
-/

namespace A131755.P13755191084711523141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A008554 (A000005 (n + 2)).toNat : ℚ)⌋

end

end A131755.P13755191084711523141

/-! ## A131755.P3961444552862407601

`floor(A096736(n+2)/A000005(n+2))`
-/

namespace A131755.P3961444552862407601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096736 (n + 2) : ℚ) / (A000005 (n + 2) : ℚ)⌋

end

end A131755.P3961444552862407601

/-! ## A131755.P15392053992769743156

`floor((n+1)/A001222(∏{d}[n+2, A020639(#)]))`
-/

namespace A131755.P15392053992769743156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A001222 (∏ d ∈ Nat.divisors (f1 n), A020639 d).toNat : ℚ)⌋

end

end A131755.P15392053992769743156

/-!
# A131756: Period 3: repeat [2, -1, 3].

The programs for A131756, the canonical program `A131756.P9805253837703714017` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131756 has offset 0).

The definition of A131756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131756.P9805253837703714017

`a(n-3)` with `a(0)=2, a(1)=-1, a(2)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131756

/-- `a(n-3)` -/
def P9805253837703714017.Spec : Prop :=
  ∀ n, P9805253837703714017.a n = A131756 n

theorem P9805253837703714017.correct : P9805253837703714017.Spec := by
  intro n
  simp only [A131756]

end A131756

/-!
# A131757: Period 10: repeat 3, 3, 3, -7, 3, 3, -7, 3, 3, -7.

The programs for A131757, the canonical program `A131757.P13180496036936591287` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131757 has offset 0).

The definition of A131757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131757.P13180496036936591287

`A131579(n+1)-A131579(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131757

/-- `A131579(n+1)-A131579(n)` -/
def P13180496036936591287.Spec : Prop :=
  ∀ n, P13180496036936591287.a n = A131757 n

theorem P13180496036936591287.correct : P13180496036936591287.Spec := by
  intro n
  simp only [A131757]

end A131757

/-!
# A131760: Numbers n such that n multiplied by its reverse yields a fourth power.

The programs for A131760, there is no canonical definition to state claims against.
-/

/-! ## A131760.P10541909556123593033

`record[A055483(A096076(n)²)]`
-/

namespace A131760.P10541909556123593033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A096076 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131760.P10541909556123593033

/-! ## A131760.P8107133950859148964

`record[A055483(A199017(n)²)]`
-/

namespace A131760.P8107133950859148964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A199017 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131760.P8107133950859148964

/-! ## A131760.P16148786145086906663

`record[A055483(A309049(n)²)]`
-/

namespace A131760.P16148786145086906663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A309049 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131760.P16148786145086906663

/-!
# A131761: a(3n) = 3a(3n-1)-3a(3n-2)+2a(3n-3), a(3n+1) = 3a(3n)-3a(3n-1)+2a(3n-2), a(3n+2) = 3a(3n+1)-3a(3n), a(0) = 0, a(1) = 1, a(2) = 2.

The programs for A131761, the canonical program `A131761.P3501731393783360799` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131761 has offset 0).

The definition of A131761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131761.P3501731393783360799

`a(n-1)-a(n-2)+5*a(n-3)-5*a(n-4)+5*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6, a(6)=9, a(7)=19`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131761

/-- `a(n-1)-a(n-2)+5*a(n-3)-5*a(n-4)+5*a(n-5)` -/
def P3501731393783360799.Spec : Prop :=
  ∀ n, P3501731393783360799.a n = A131761 n

theorem P3501731393783360799.correct : P3501731393783360799.Spec := by
  intro n
  simp only [A131761]

end A131761

/-! ## A131761.P16584178827272514627

`A132158(n)+A133335(n)-A138278(n)`
-/

namespace A131761.P16584178827272514627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132158 n + (A133335 n - A138278 n)

end

end A131761.P16584178827272514627

namespace A131761

/-- `A132158(n)+A133335(n)-A138278(n)` -/
def P16584178827272514627.Spec : Prop :=
  ∀ n, P16584178827272514627.a n = A131761 n

end A131761

/-! ## A131761.P18062973006692395330

`eq[A077028(n), A326123(A065648(n))]`
-/

namespace A131761.P18062973006692395330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326123 (A065648 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131761.P18062973006692395330

namespace A131761

/-- `eq[A077028(n), A326123(A065648(n))]` -/
def P18062973006692395330.Spec : Prop :=
  ∀ n, (P18062973006692395330.a n : ℤ) = A131761 n

end A131761

/-! ## A131761.P2215712046846608688

`eq[A157905(A000010(n+1)), A193592(n)]`
-/

namespace A131761.P2215712046846608688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157905 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131761.P2215712046846608688

namespace A131761

/-- `eq[A157905(A000010(n+1)), A193592(n)]` -/
def P2215712046846608688.Spec : Prop :=
  ∀ n, (P2215712046846608688.a n : ℤ) = A131761 n

end A131761

/-!
# A131762: Number of 1s in the 1's complement of the 32-bit binary representation of n.

The programs for A131762, the canonical program `A131762.P2142285092514220910` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131762 has offset 0).

The definition of A131762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131762.P2142285092514220910

`32-A000120(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131762

/-- `32-A000120(n)` -/
def P2142285092514220910.Spec : Prop :=
  ∀ n, P2142285092514220910.a n = A131762 n

theorem P2142285092514220910.correct : P2142285092514220910.Spec := by
  intro n
  simp only [A131762]

end A131762

/-! ## A131762.P18056195473420741819

`32-∑[1-val(abs(1-n)+1, 2)]`
-/

namespace A131762.P18056195473420741819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131762.P18056195473420741819

namespace A131762

/-- `32-∑[1-val(abs(1-n)+1, 2)]` -/
def P18056195473420741819.Spec : Prop :=
  ∀ n, P18056195473420741819.a n = A131762 n

end A131762

/-! ## A131762.P12409623414167681254

`32-∑{e}[2*a(and(n, n-1)), #]` with `a(0)=1`
-/

namespace A131762.P12409623414167681254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A131762.P12409623414167681254

namespace A131762

/-- `32-∑{e}[2*a(and(n, n-1)), #]` -/
def P12409623414167681254.Spec : Prop :=
  ∀ n, P12409623414167681254.a n = A131762 n

end A131762

/-! ## A131762.P5515765972676680963

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=32, a(1)=-1`
-/

namespace A131762.P5515765972676680963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32, -1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131762.P5515765972676680963

namespace A131762

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P5515765972676680963.Spec : Prop :=
  ∀ n, P5515765972676680963.a n = A131762 n

end A131762

/-! ## A131762.P15188644690217642811

`32-(n-(∑[val(n+1, 2)]-val(n+1, 2)))`
-/

namespace A131762.P15188644690217642811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)))

end

end A131762.P15188644690217642811

namespace A131762

/-- `32-(n-(∑[val(n+1, 2)]-val(n+1, 2)))` -/
def P15188644690217642811.Spec : Prop :=
  ∀ n, P15188644690217642811.a n = A131762 n

end A131762

/-! ## A131762.P4412244319906629014

`2*a(and(n, n-1))-(a(and(n, n-1))+1)` with `a(0)=32`
-/

namespace A131762.P4412244319906629014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

end

end A131762.P4412244319906629014

namespace A131762

/-- `2*a(and(n, n-1))-(a(and(n, n-1))+1)` -/
def P4412244319906629014.Spec : Prop :=
  ∀ n, P4412244319906629014.a n = A131762 n

end A131762

/-! ## A131762.P12801888542076308959

`a(A006257(n)-1)-1` with `a(0)=32`
-/

namespace A131762.P12801888542076308959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  a (A006257 n - 1).toNat - 1

end

end A131762.P12801888542076308959

namespace A131762

/-- `a(A006257(n)-1)-1` -/
def P12801888542076308959.Spec : Prop :=
  ∀ n, P12801888542076308959.a n = A131762 n

end A131762

/-! ## A131762.P2473282187068519812

`a(n-A053644(n))-1` with `a(0)=32`
-/

namespace A131762.P2473282187068519812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  a ((n : ℤ) - A053644 n).toNat - 1

end

end A131762.P2473282187068519812

namespace A131762

/-- `a(n-A053644(n))-1` -/
def P2473282187068519812.Spec : Prop :=
  ∀ n, P2473282187068519812.a n = A131762 n

end A131762

/-! ## A131762.P15210804277344375554

`A022988(A000120(n))`
-/

namespace A131762.P15210804277344375554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022988 (A000120 n).toNat

end

end A131762.P15210804277344375554

namespace A131762

/-- `A022988(A000120(n))` -/
def P15210804277344375554.Spec : Prop :=
  ∀ n, P15210804277344375554.a n = A131762 n

end A131762

/-! ## A131762.P3303755337516842459

`A022989(A063787(n+1))`
-/

namespace A131762.P3303755337516842459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022989 (A063787 (n + 1)).toNat

end

end A131762.P3303755337516842459

namespace A131762

/-- `A022989(A063787(n+1))` -/
def P3303755337516842459.Spec : Prop :=
  ∀ n, P3303755337516842459.a n = A131762 n

end A131762

/-! ## A131762.P9926740638296004801

`32-A073642(A001316(n))`
-/

namespace A131762.P9926740638296004801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A073642 (A001316 n).toNat

end

end A131762.P9926740638296004801

namespace A131762

/-- `32-A073642(A001316(n))` -/
def P9926740638296004801.Spec : Prop :=
  ∀ n, P9926740638296004801.a n = A131762 n

end A131762

/-! ## A131762.P9743445309292811420

`A022988(n)+A011371(n)`
-/

namespace A131762.P9743445309292811420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022988 n + A011371 n

end

end A131762.P9743445309292811420

namespace A131762

/-- `A022988(n)+A011371(n)` -/
def P9743445309292811420.Spec : Prop :=
  ∀ n, P9743445309292811420.a n = A131762 n

end A131762

/-! ## A131762.P8212268759982384389

`A022988(n-A011371(n))`
-/

namespace A131762.P8212268759982384389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022988 ((n : ℤ) - A011371 n).toNat

end

end A131762.P8212268759982384389

namespace A131762

/-- `A022988(n-A011371(n))` -/
def P8212268759982384389.Spec : Prop :=
  ∀ n, P8212268759982384389.a n = A131762 n

end A131762

/-! ## A131762.P7174729036020686649

`A011371(n)-A023474(n)`
-/

namespace A131762.P7174729036020686649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A023474 n

end

end A131762.P7174729036020686649

namespace A131762

/-- `A011371(n)-A023474(n)` -/
def P7174729036020686649.Spec : Prop :=
  ∀ n, P7174729036020686649.a n = A131762 n

end A131762

/-! ## A131762.P11348446433681949079

`A054429(A000120(n)+18)+3`
-/

namespace A131762.P11348446433681949079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A000120 n + 18).toNat + 3

end

end A131762.P11348446433681949079

namespace A131762

/-- `A054429(A000120(n)+18)+3` -/
def P11348446433681949079.Spec : Prop :=
  ∀ n, P11348446433681949079.a n = A131762 n

end A131762

/-! ## A131762.P4502434621673607086

`a(A004442(A325401(n)))-1` with `a(0)=32`
-/

namespace A131762.P4502434621673607086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  a (A004442 (A325401 n).toNat).toNat - 1

end

end A131762.P4502434621673607086

namespace A131762

/-- `a(A004442(A325401(n)))-1` -/
def P4502434621673607086.Spec : Prop :=
  ∀ n, P4502434621673607086.a n = A131762 n

end A131762

/-! ## A131762.P17526408868666290288

`32-A001222(A278222(n))`
-/

namespace A131762.P17526408868666290288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A001222 (A278222 n).toNat

end

end A131762.P17526408868666290288

namespace A131762

/-- `32-A001222(A278222(n))` -/
def P17526408868666290288.Spec : Prop :=
  ∀ n, P17526408868666290288.a n = A131762 n

end A131762

/-! ## A131762.P5627752480544630157

`32-A001222(A005940(n+1))`
-/

namespace A131762.P5627752480544630157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A001222 (A005940 (n + 1)).toNat

end

end A131762.P5627752480544630157

namespace A131762

/-- `32-A001222(A005940(n+1))` -/
def P5627752480544630157.Spec : Prop :=
  ∀ n, P5627752480544630157.a n = A131762 n

end A131762

/-!
# A131763: Series reversion of x*(1-4*x)/(1-x) is x*A(x) where A(x) is the generating function.

The programs for A131763, there is no canonical definition to state claims against.
-/

/-! ## A131763.P15584447584624423698

`∏{p}[A103211(n), A109613(#)]`
-/

namespace A131763.P15584447584624423698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A109613 p

end

end A131763.P15584447584624423698

/-! ## A131763.P14724548587735434379

`A055653(A103211(n))`
-/

namespace A131763.P14724548587735434379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (A103211 n).toNat

end

end A131763.P14724548587735434379

/-!
# A131764: Inverse Euler transform of central binomial coefficients A000984.

The programs for A131764, there is no canonical definition to state claims against.
-/

/-! ## A131764.P9058270560594488738

`ceil(A027377(n)/2)`
-/

namespace A131764.P9058270560594488738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027377 n : ℚ) / 2⌉

end

end A131764.P9058270560594488738

/-! ## A131764.P12905273120999451381

`A027377(n*a(1-floor(atan(n+1))))/2` with `a(0)=1`
-/

namespace A131764.P12905273120999451381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A027377 (SequenceMachineLib.roundAway ((n : ℚ) * a (1 - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat)).toNat : ℚ) / 2

end

end A131764.P12905273120999451381

/-! ## A131764.P4634858711826588400

`A027377((n-1)%a(n-1)+1)/2` with `a(0)=1, a(1)=2`
-/

namespace A131764.P4634858711826588400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A027377 (Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway (a (n - 1))) + 1).toNat : ℚ) / 2

end

end A131764.P4634858711826588400

/-! ## A131764.P10487785507510076770

`A027377(n)/A036453(n+1)`
-/

namespace A131764.P10487785507510076770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027377 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A131764.P10487785507510076770

/-! ## A131764.P7058419985555746218

`(A027377(n)+A000007(n))/2`
-/

namespace A131764.P7058419985555746218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027377 n + A000007 n : ℚ) / 2

end

end A131764.P7058419985555746218

/-! ## A131764.P14974055985392989915

`A027377(n)/gcd(2, A298026(n))`
-/

namespace A131764.P14974055985392989915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027377 n : ℚ) / (Int.gcd 2 (A298026 n) : ℚ)

end

end A131764.P14974055985392989915

/-! ## A131764.P2692039145245522235

`A027377(n)/A014963(A001316(n))`
-/

namespace A131764.P2692039145245522235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027377 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A131764.P2692039145245522235

/-! ## A131764.P11733394050382378513

`A027377(n)/A020639(A008574(n))`
-/

namespace A131764.P11733394050382378513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027377 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A131764.P11733394050382378513

/-! ## A131764.P16519583052145663149

`A027377(n)/A020639(A000010(n+2))`
-/

namespace A131764.P16519583052145663149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027377 n : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A131764.P16519583052145663149

/-! ## A131764.P16550809089563025888

`(A049283(A005408(n))+A027377(n))/2`
-/

namespace A131764.P16550809089563025888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049283 (A005408 n).toNat + A027377 n : ℚ) / 2

end

end A131764.P16550809089563025888

/-! ## A131764.P4409754881664297541

`A054719(n)/A004277(n)`
-/

namespace A131764.P4409754881664297541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 n : ℚ) / (A004277 n : ℚ)

end

end A131764.P4409754881664297541

/-! ## A131764.P10554272662829799891

`A054719(n)/A028310(2*n)`
-/

namespace A131764.P10554272662829799891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 n : ℚ) / (A028310 (2 * n) : ℚ)

end

end A131764.P10554272662829799891

/-! ## A131764.P9696794514049854211

`A054719(n)/(A028310(n)+n)`
-/

namespace A131764.P9696794514049854211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 n : ℚ) / (A028310 n + (n : ℤ) : ℚ)

end

end A131764.P9696794514049854211

/-! ## A131764.P12766075728409554690

`A054719(n)/A153151(2*n+1)`
-/

namespace A131764.P12766075728409554690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 n : ℚ) / (A153151 (2 * n + 1) : ℚ)

end

end A131764.P12766075728409554690

/-! ## A131764.P1384375428530006326

`A054719(n)/A000267(n²)`
-/

namespace A131764.P1384375428530006326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 n : ℚ) / (A000267 (n ^ 2) : ℚ)

end

end A131764.P1384375428530006326

/-!
# A131765: Series reversion of x*(1-5x)/(1-x) .

The programs for A131765, there is no canonical definition to state claims against.
-/

/-! ## A131765.P17556235728596822615

`ceil(xor(2, A227144(A133305(n)))/6)`
-/

namespace A131765.P17556235728596822615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 2 (A227144 (A133305 n).toNat) : ℚ) / 6⌉

end

end A131765.P17556235728596822615

/-!
# A131766: a(n) = A131668(n) - (2*n+1).

The programs for A131766, the canonical program `A131766.P8582196171941111563` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131766 has offset 0).

The definition of A131766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131766.P5067025101259664280

`18*A131871(n)`
-/

namespace A131766.P5067025101259664280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A131871 n

end

end A131766.P5067025101259664280

namespace A131766

/-- `18*A131871(n)` -/
def P5067025101259664280.Spec : Prop :=
  ∀ n, P5067025101259664280.a n = A131766 n

end A131766

/-! ## A131766.P8582196171941111563

`A131668(n)-(2*n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131766

/-- `A131668(n)-(2*n+1)` -/
def P8582196171941111563.Spec : Prop :=
  ∀ n, P8582196171941111563.a n = A131766 n

theorem P8582196171941111563.correct : P8582196171941111563.Spec := by
  intro n
  simp only [A131766]

end A131766

/-! ## A131766.P782940996982944840

`A051885(2*n+1)-(2*n+1)`
-/

namespace A131766.P782940996982944840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A131766.P782940996982944840

namespace A131766

/-- `A051885(2*n+1)-(2*n+1)` -/
def P782940996982944840.Spec : Prop :=
  ∀ n, P782940996982944840.a n = A131766 n

end A131766

/-! ## A131766.P4498609426197709472

`A205960(2*n+1)-(2*n+1)`
-/

namespace A131766.P4498609426197709472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205960 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A131766.P4498609426197709472

namespace A131766

/-- `A205960(2*n+1)-(2*n+1)` -/
def P4498609426197709472.Spec : Prop :=
  ∀ n, P4498609426197709472.a n = A131766 n

end A131766

/-! ## A131766.P15872012092449705407

`A000007(C(n, 2)+1)+A131668(n)-Δ[n²]`
-/

namespace A131766.P15872012092449705407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose n 2 + 1) + (A131668 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A131766.P15872012092449705407

namespace A131766

/-- `A000007(C(n, 2)+1)+A131668(n)-Δ[n²]` -/
def P15872012092449705407.Spec : Prop :=
  ∀ n, P15872012092449705407.a n = A131766 n

theorem P15872012092449705407.correct : P15872012092449705407.Spec := by
  intro n
  simp only [A131766, Nat.add_sub_cancel, A131766.P15872012092449705407.f1, A131766.P15872012092449705407.a, A131766.P8582196171941111563.a, A000007, A000007.P6599383543502402472.a, A131668, A131668.P2464046413389403191.a, A051885, A051885.P11585152797781986562.a, A037124, A037124.P10531659379818548989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131766

/-!
# A131767: 2*A007318 - A065941.

The programs for A131767, the canonical program `A131767.P10537554993916066764` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131767 has offset 0).

The definition of A131767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131767.P17245165974591467893

`A028326(n)-A065941(n)`
-/

namespace A131767.P17245165974591467893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A065941 n

end

end A131767.P17245165974591467893

namespace A131767

/-- `A028326(n)-A065941(n)` -/
def P17245165974591467893.Spec : Prop :=
  ∀ n, P17245165974591467893.a n = A131767 n

end A131767

/-! ## A131767.P10537554993916066764

`A028326(n)-abs(A108299(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131767

/-- `A028326(n)-abs(A108299(n))` -/
def P10537554993916066764.Spec : Prop :=
  ∀ n, P10537554993916066764.a n = A131767 n

theorem P10537554993916066764.correct : P10537554993916066764.Spec := by
  intro n
  simp only [A131767]

end A131767

/-! ## A131767.P13406082607655133011

`A109128(n)+1-A065941(n)`
-/

namespace A131767.P13406082607655133011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A065941 n)

end

end A131767.P13406082607655133011

namespace A131767

/-- `A109128(n)+1-A065941(n)` -/
def P13406082607655133011.Spec : Prop :=
  ∀ n, P13406082607655133011.a n = A131767 n

end A131767

/-! ## A131767.P16106533948248064050

`A046854(n)+A131402(n)-1`
-/

namespace A131767.P16106533948248064050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131402 n - 1)

end

end A131767.P16106533948248064050

namespace A131767

/-- `A046854(n)+A131402(n)-1` -/
def P16106533948248064050.Spec : Prop :=
  ∀ n, P16106533948248064050.a n = A131767 n

end A131767

/-! ## A131767.P10555613705364623953

`2*A007318(n)-A065941(n)`
-/

namespace A131767.P10555613705364623953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A065941 n

end

end A131767.P10555613705364623953

namespace A131767

/-- `2*A007318(n)-A065941(n)` -/
def P10555613705364623953.Spec : Prop :=
  ∀ n, P10555613705364623953.a n = A131767 n

end A131767

/-! ## A131767.P11153080134260073618

`2*A007318(n)-abs(A108299(n))`
-/

namespace A131767.P11153080134260073618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - |A108299 n|

end

end A131767.P11153080134260073618

namespace A131767

/-- `2*A007318(n)-abs(A108299(n))` -/
def P11153080134260073618.Spec : Prop :=
  ∀ n, P11153080134260073618.a n = A131767 n

theorem P11153080134260073618.correct : P11153080134260073618.Spec := by
  intro n
  simp only [A131767, Nat.add_sub_cancel, A131767.P11153080134260073618.a, A131767.P10537554993916066764.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A108299, A108299.P2669820168723284648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131767

/-! ## A131767.P12281104090456526567

`abs(2*A130595(n))-A065941(n)`
-/

namespace A131767.P12281104090456526567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A130595 n| - A065941 n

end

end A131767.P12281104090456526567

namespace A131767

/-- `abs(2*A130595(n))-A065941(n)` -/
def P12281104090456526567.Spec : Prop :=
  ∀ n, P12281104090456526567.a n = A131767 n

end A131767

/-! ## A131767.P16824306194566420079

`2*sqrt(A008459(n))-A065941(n)`
-/

namespace A131767.P16824306194566420079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A008459 n : ℝ) - (A065941 n : ℝ)

end

end A131767.P16824306194566420079

namespace A131767

/-- `2*sqrt(A008459(n))-A065941(n)` -/
def P16824306194566420079.Spec : Prop :=
  ∀ n, P16824306194566420079.a n = (A131767 n : ℝ)

end A131767

/-! ## A131767.P2125911200174395290

`A134058(A028310(n))-A065941(n)`
-/

namespace A131767.P2125911200174395290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 (A028310 n).toNat - A065941 n

end

end A131767.P2125911200174395290

namespace A131767

/-- `A134058(A028310(n))-A065941(n)` -/
def P2125911200174395290.Spec : Prop :=
  ∀ n, P2125911200174395290.a n = A131767 n

end A131767

/-! ## A131767.P4384043072479037272

`A046854(n)+A131399(n)-A007318(n)`
-/

namespace A131767.P4384043072479037272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131399 n - A007318 n)

end

end A131767.P4384043072479037272

namespace A131767

/-- `A046854(n)+A131399(n)-A007318(n)` -/
def P4384043072479037272.Spec : Prop :=
  ∀ n, P4384043072479037272.a n = A131767 n

end A131767

/-! ## A131767.P2246865462240563940

`A131238(∑[2*n]%comp[∑[n]])`
-/

namespace A131767.P2246865462240563940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131238 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A131767.P2246865462240563940

namespace A131767

/-- `A131238(∑[2*n]%comp[∑[n]])` -/
def P2246865462240563940.Spec : Prop :=
  ∀ n, P2246865462240563940.a n = A131767 n

end A131767

/-! ## A131767.P8432701042371269372

`A131238(∑[char[∑[n]]]²-n-1)`
-/

namespace A131767.P8432701042371269372
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131238 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A131767.P8432701042371269372

namespace A131767

/-- `A131238(∑[char[∑[n]]]²-n-1)` -/
def P8432701042371269372.Spec : Prop :=
  ∀ n, P8432701042371269372.a n = A131767 n

end A131767

/-!
# A131768: 2*(A007318 * A097807) - A000012.

The programs for A131768, the canonical program `A131768.P3623680832176526672` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131768 has offset 0).

The definition of A131768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131768.P340955865551134049

`2*C(row(n)+1, col(n)+1)-1`
-/

namespace A131768.P340955865551134049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℤ) - 1

end

end A131768.P340955865551134049

namespace A131768

/-- `2*C(row(n)+1, col(n)+1)-1` -/
def P340955865551134049.Spec : Prop :=
  ∀ n, P340955865551134049.a n = A131768 n

end A131768

/-! ## A131768.P2961644074947067065

`A109128(comp[∑[n]])`
-/

namespace A131768.P2961644074947067065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A131768.P2961644074947067065

namespace A131768

/-- `A109128(comp[∑[n]])` -/
def P2961644074947067065.Spec : Prop :=
  ∀ n, P2961644074947067065.a n = A131768 n

end A131768

/-! ## A131768.P6792774572624350200

`2*A135278(n)-1`
-/

namespace A131768.P6792774572624350200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - 1

end

end A131768.P6792774572624350200

namespace A131768

/-- `2*A135278(n)-1` -/
def P6792774572624350200.Spec : Prop :=
  ∀ n, P6792774572624350200.a n = A131768 n

end A131768

/-! ## A131768.P8211468074074406437

`A028326(comp[∑[n]])-1`
-/

namespace A131768.P8211468074074406437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A131768.P8211468074074406437

namespace A131768

/-- `A028326(comp[∑[n]])-1` -/
def P8211468074074406437.Spec : Prop :=
  ∀ n, P8211468074074406437.a n = A131768 n

end A131768

/-! ## A131768.P2813088331477112860

`A124927(comp[∑[n]])-1`
-/

namespace A131768.P2813088331477112860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A131768.P2813088331477112860

namespace A131768

/-- `A124927(comp[∑[n]])-1` -/
def P2813088331477112860.Spec : Prop :=
  ∀ n, P2813088331477112860.a n = A131768 n

end A131768

/-! ## A131768.P11531737410422425904

`∑[2*A214292(n)]+1`
-/

namespace A131768.P11531737410422425904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131768.P11531737410422425904

namespace A131768

/-- `∑[2*A214292(n)]+1` -/
def P11531737410422425904.Spec : Prop :=
  ∀ n, P11531737410422425904.a n = A131768 n

end A131768

/-! ## A131768.P3623680832176526672

`2*A074909(n+1)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131768

/-- `2*A074909(n+1)-1` -/
def P3623680832176526672.Spec : Prop :=
  ∀ n, P3623680832176526672.a n = A131768 n

theorem P3623680832176526672.correct : P3623680832176526672.Spec := by
  intro n
  simp only [A131768]

end A131768

/-! ## A131768.P13205209906036288928

`2*A007318(comp[∑[n]])-1`
-/

namespace A131768.P13205209906036288928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A131768.P13205209906036288928

namespace A131768

/-- `2*A007318(comp[∑[n]])-1` -/
def P13205209906036288928.Spec : Prop :=
  ∀ n, P13205209906036288928.a n = A131768 n

end A131768

/-! ## A131768.P12150339075107142064

`2*A014430(n)-a(n-1)` with `a(0)=1`
-/

namespace A131768.P12150339075107142064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A014430 n - a (n - 1)

end

end A131768.P12150339075107142064

namespace A131768

/-- `2*A014430(n)-a(n-1)` -/
def P12150339075107142064.Spec : Prop :=
  ∀ n, P12150339075107142064.a n = A131768 n

end A131768

/-! ## A131768.P16522200978328282019

`A110813(n)+A014473(n)`
-/

namespace A131768.P16522200978328282019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n + A014473 n

end

end A131768.P16522200978328282019

namespace A131768

/-- `A110813(n)+A014473(n)` -/
def P16522200978328282019.Spec : Prop :=
  ∀ n, P16522200978328282019.a n = A131768 n

end A131768

/-! ## A131768.P15740866959879975368

`A214292(n)+A014430(n)`
-/

namespace A131768.P15740866959879975368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n + A014430 n

end

end A131768.P15740866959879975368

namespace A131768

/-- `A214292(n)+A014430(n)` -/
def P15740866959879975368.Spec : Prop :=
  ∀ n, P15740866959879975368.a n = A131768 n

end A131768

/-! ## A131768.P13333979538025117320

`A007318(n)+A110813(n)-1`
-/

namespace A131768.P13333979538025117320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A110813 n - 1)

end

end A131768.P13333979538025117320

namespace A131768

/-- `A007318(n)+A110813(n)-1` -/
def P13333979538025117320.Spec : Prop :=
  ∀ n, P13333979538025117320.a n = A131768 n

end A131768

/-! ## A131768.P14794846316654269055

`A110813(n)+ceil(A134059(n)/3)-1`
-/

namespace A131768.P14794846316654269055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n + (⌈(A134059 n : ℚ) / 3⌉ - 1)

end

end A131768.P14794846316654269055

namespace A131768

/-- `A110813(n)+ceil(A134059(n)/3)-1` -/
def P14794846316654269055.Spec : Prop :=
  ∀ n, P14794846316654269055.a n = A131768 n

end A131768

/-! ## A131768.P2319440509983547692

`A074909(n+1)+A014430(n)-A074909(n)`
-/

namespace A131768.P2319440509983547692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A014430 n - A074909 n)

end

end A131768.P2319440509983547692

namespace A131768

/-- `A074909(n+1)+A014430(n)-A074909(n)` -/
def P2319440509983547692.Spec : Prop :=
  ∀ n, P2319440509983547692.a n = A131768 n

end A131768

/-! ## A131768.P12931215941005357316

`A074909(n+1)+A117670(n+1)-A054143(n)`
-/

namespace A131768.P12931215941005357316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A117670 (n + 1) - A054143 n)

end

end A131768.P12931215941005357316

namespace A131768

/-- `A074909(n+1)+A117670(n+1)-A054143(n)` -/
def P12931215941005357316.Spec : Prop :=
  ∀ n, P12931215941005357316.a n = A131768 n

theorem P12931215941005357316.correct : P12931215941005357316.Spec := by
  intro n
  simp only [A131768, Nat.add_sub_cancel, A131768.P12931215941005357316.a, A131768.P3623680832176526672.a, A054143, A054143.P11222314207562248900.a, A074909, A074909.P6402560185863182536.a, A117670, A117670.P8467400439163998987.a, A140513, A140513.P13579608035938851890.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A010054, A010054.P18347828677204923252.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131768

/-! ## A131768.P2002665634499084889

`or(1, A210042(n+2)-2)`
-/

namespace A131768.P2002665634499084889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210042 (n + 2) - 2)

end

end A131768.P2002665634499084889

namespace A131768

/-- `or(1, A210042(n+2)-2)` -/
def P2002665634499084889.Spec : Prop :=
  ∀ n, P2002665634499084889.a n = A131768 n

end A131768

/-! ## A131768.P2315309207587762989

`A135278(n)+A135278(n)-A054977(n+1)`
-/

namespace A131768.P2315309207587762989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + (A135278 n - A054977 (n + 1))

end

end A131768.P2315309207587762989

namespace A131768

/-- `A135278(n)+A135278(n)-A054977(n+1)` -/
def P2315309207587762989.Spec : Prop :=
  ∀ n, P2315309207587762989.a n = A131768 n

end A131768

/-! ## A131768.P13979321827920024216

`A135278(n)+A135278(n)-A057427(n+1)`
-/

namespace A131768.P13979321827920024216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + (A135278 n - A057427 (n + 1))

end

end A131768.P13979321827920024216

namespace A131768

/-- `A135278(n)+A135278(n)-A057427(n+1)` -/
def P13979321827920024216.Spec : Prop :=
  ∀ n, P13979321827920024216.a n = A131768 n

end A131768

/-! ## A131768.P853063466168440452

`A210042(n+2)-A028326(n)/A124927(n)`
-/

namespace A131768.P853063466168440452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210042 (n + 2) : ℚ) - (A028326 n : ℚ) / (A124927 n : ℚ)

end

end A131768.P853063466168440452

namespace A131768

/-- `A210042(n+2)-A028326(n)/A124927(n)` -/
def P853063466168440452.Spec : Prop :=
  ∀ n, P853063466168440452.a n = (A131768 n : ℚ)

end A131768

/-! ## A131768.P12570227555890511525

`2*A153861(A066182(n+1))-1`
-/

namespace A131768.P12570227555890511525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153861 (A066182 (n + 1)).toNat - 1

end

end A131768.P12570227555890511525

namespace A131768

/-- `2*A153861(A066182(n+1))-1` -/
def P12570227555890511525.Spec : Prop :=
  ∀ n, P12570227555890511525.a n = A131768 n

end A131768

/-!
# A131769: Number of connected components in the double Bruhat cells for simple Lie groups of type B_n (or C_n).

The programs for A131769, the canonical program `A131769.P7281297985010422700` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131769 has offset 2).

The definition of A131769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131769.P7281297985010422700

`4*(a(n-1)-a(n-2))` with `a(0)=8, a(1)=30, a(2)=72, a(3)=160`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131769

/-- `4*(a(n-1)-a(n-2))` -/
def P7281297985010422700.Spec : Prop :=
  ∀ n, P7281297985010422700.a n = A131769 (n + 2)

theorem P7281297985010422700.correct : P7281297985010422700.Spec := by
  intro n
  simp only [A131769, Nat.add_sub_cancel]

end A131769

/-! ## A131769.P12426589910405802294

`a(n-1)+a(n-1)+2^(n+1)` with `a(0)=8, a(1)=30, a(2)=72`
-/

namespace A131769.P12426589910405802294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 30, 72] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ (n + 1))

end

end A131769.P12426589910405802294

namespace A131769

/-- `a(n-1)+a(n-1)+2^(n+1)` -/
def P12426589910405802294.Spec : Prop :=
  ∀ n, (P12426589910405802294.a n : ℤ) = A131769 (n + 2)

end A131769

/-! ## A131769.P13298479640316315390

`A129954(n+3)-and(A001204(n), A129954(n+2))`
-/

namespace A131769.P13298479640316315390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 (n + 3) - Int.land (A001204 n) (A129954 (n + 2))

end

end A131769.P13298479640316315390

namespace A131769

/-- `A129954(n+3)-and(A001204(n), A129954(n+2))` -/
def P13298479640316315390.Spec : Prop :=
  ∀ n, P13298479640316315390.a n = A131769 (n + 2)

end A131769

/-! ## A131769.P4036673262939402446

`Δ[record[A006257(A195858(n))]]`
-/

namespace A131769.P4036673262939402446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A195858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131769.P4036673262939402446

namespace A131769

/-- `Δ[record[A006257(A195858(n))]]` -/
def P4036673262939402446.Spec : Prop :=
  ∀ n, P4036673262939402446.a n = A131769 (n + 2)

end A131769

/-! ## A131769.P15906653287198579314

`A052928(A184114(n+1)+A060602(n))`
-/

namespace A131769.P15906653287198579314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A184114 (n + 1) + A060602 n).toNat

end

end A131769.P15906653287198579314

namespace A131769

/-- `A052928(A184114(n+1)+A060602(n))` -/
def P15906653287198579314.Spec : Prop :=
  ∀ n, P15906653287198579314.a n = A131769 (n + 2)

end A131769

/-!
# A131770: First differences (A131771) equal this sequence with terms repeated at positions: {m*(m+1)/2, m>=0}.

The programs for A131770, there is no canonical definition to state claims against.
-/

/-! ## A131770.P2854012112283125479

`∑[A131771(n)]`
-/

namespace A131770.P2854012112283125479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131770.P2854012112283125479

/-! ## A131770.P18035559906123143209

`∑[∑[A131772(n)]]`
-/

namespace A131770.P18035559906123143209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131772 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131770.P18035559906123143209

/-! ## A131770.P7411968941729694524

`a(A083920(n+2)-1)+a(n-1)` with `a(0)=1`
-/

namespace A131770.P7411968941729694524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A083920 (n + 2) - 1).toNat + a (n - 1)

end

end A131770.P7411968941729694524

/-! ## A131770.P2293529573271535222

`a(n-1)+a(∑[A023532(n+1)]-1)` with `a(0)=1`
-/

namespace A131770.P2293529573271535222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A131770.P2293529573271535222

/-! ## A131770.P4834019095968646518

`a(n-∑[A023531(n+1)])+a(n-1)` with `a(0)=1`
-/

namespace A131770.P4834019095968646518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat + a (n - 1)

end

end A131770.P4834019095968646518

/-!
# A131771: First differences (A131772) equal this sequence with zeros inserted at positions {m*(m+1)/2, m>=0}.

The programs for A131771, there is no canonical definition to state claims against.
-/

/-! ## A131771.P272516164767376648

`∑[A131772(n)]`
-/

namespace A131771.P272516164767376648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131771.P272516164767376648

/-! ## A131771.P11635742136787689386

`A131770(n+2-A002024(n+3))`
-/

namespace A131771.P11635742136787689386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131770 ((n + 2 : ℤ) - A002024 (n + 3)).toNat

end

end A131771.P11635742136787689386

/-! ## A131771.P10948978096210127687

`a(n-1)+A057427(n)*A131772(n)` with `a(0)=1`
-/

namespace A131771.P10948978096210127687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A131772 n

end

end A131771.P10948978096210127687

/-! ## A131771.P15013010065438576889

`a(n-1)+A131772(n)%A000225(n)` with `a(0)=1`
-/

namespace A131771.P15013010065438576889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A131772 n) (A000225 n)

end

end A131771.P15013010065438576889

/-! ## A131771.P6019012118789954473

`A131772(lt[0, A131772(n)])`
-/

namespace A131771.P6019012118789954473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131771.P6019012118789954473

/-!
# A131774: 2*A065941 - A049310.

The programs for A131774, the canonical program `A131774.P17364787788488143153` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131774 has offset 1).

The definition of A131774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131774.P17364787788488143153

`A131268(n)+1-A168561(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131774

/-- `A131268(n)+1-A168561(n)` -/
def P17364787788488143153.Spec : Prop :=
  ∀ n, P17364787788488143153.a n = A131774 (n + 1)

theorem P17364787788488143153.correct : P17364787788488143153.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel]

end A131774

/-! ## A131774.P583492770848701446

`2*A065941(n)-A168561(n)`
-/

namespace A131774.P583492770848701446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065941 n - A168561 n

end

end A131774.P583492770848701446

namespace A131774

/-- `2*A065941(n)-A168561(n)` -/
def P583492770848701446.Spec : Prop :=
  ∀ n, P583492770848701446.a n = A131774 (n + 1)

theorem P583492770848701446.correct : P583492770848701446.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P583492770848701446.a, A131774.P17364787788488143153.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P10199475404515521599

`2*A131376(n)-A131350(n)`
-/

namespace A131774.P10199475404515521599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131376 n - A131350 n

end

end A131774.P10199475404515521599

namespace A131774

/-- `2*A131376(n)-A131350(n)` -/
def P10199475404515521599.Spec : Prop :=
  ∀ n, P10199475404515521599.a n = A131774 (n + 1)

theorem P10199475404515521599.correct : P10199475404515521599.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P10199475404515521599.a, A131774.P17364787788488143153.a, A131268, A131268.P5295787942344132611.a, A131350, A131350.P11902932173127582114.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P3183119596903847201.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A046854, A046854.P6321065027790251998.a, A131374, A131374.P1343424990653634680.a, A131373, A131373.P5409400150504785590.a, A065941, A065941.P15138820981250632951.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P16242272112288193490

`2*A065941(n)-abs(A049310(n))`
-/

namespace A131774.P16242272112288193490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065941 n - |A049310 n|

end

end A131774.P16242272112288193490

namespace A131774

/-- `2*A065941(n)-abs(A049310(n))` -/
def P16242272112288193490.Spec : Prop :=
  ∀ n, P16242272112288193490.a n = A131774 (n + 1)

end A131774

/-! ## A131774.P6887320954921390076

`(A131775(n+1)+A065941(n))/2`
-/

namespace A131774.P6887320954921390076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131775 (n + 1) + A065941 n : ℚ) / 2

end

end A131774.P6887320954921390076

namespace A131774

/-- `(A131775(n+1)+A065941(n))/2` -/
def P6887320954921390076.Spec : Prop :=
  ∀ n, P6887320954921390076.a n = (A131774 (n + 1) : ℚ)

theorem P6887320954921390076.correct : P6887320954921390076.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P6887320954921390076.a, A131774.P17364787788488143153.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P7335083925406950813

`(A168561(n)+A131776(n+1))/2`
-/

namespace A131774.P7335083925406950813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168561 n + A131776 (n + 1) : ℚ) / 2

end

end A131774.P7335083925406950813

namespace A131774

/-- `(A168561(n)+A131776(n+1))/2` -/
def P7335083925406950813.Spec : Prop :=
  ∀ n, P7335083925406950813.a n = (A131774 (n + 1) : ℚ)

theorem P7335083925406950813.correct : P7335083925406950813.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P7335083925406950813.a, A131774.P17364787788488143153.a, A131268, A131268.P5295787942344132611.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P11105992650866426146

`2*A131775(n+1)-A131776(n+1)`
-/

namespace A131774.P11105992650866426146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131775 (n + 1) - A131776 (n + 1)

end

end A131774.P11105992650866426146

namespace A131774

/-- `2*A131775(n+1)-A131776(n+1)` -/
def P11105992650866426146.Spec : Prop :=
  ∀ n, P11105992650866426146.a n = A131774 (n + 1)

theorem P11105992650866426146.correct : P11105992650866426146.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P11105992650866426146.a, A131774.P17364787788488143153.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P5240469708300464835

`2*A131776(n+1)-A131778(n+1)`
-/

namespace A131774.P5240469708300464835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131776 (n + 1) - A131778 (n + 1)

end

end A131774.P5240469708300464835

namespace A131774

/-- `2*A131776(n+1)-A131778(n+1)` -/
def P5240469708300464835.Spec : Prop :=
  ∀ n, P5240469708300464835.a n = A131774 (n + 1)

theorem P5240469708300464835.correct : P5240469708300464835.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P5240469708300464835.a, A131774.P17364787788488143153.a, A131268, A131268.P5295787942344132611.a, A131776, A131776.P11657725690283460329.a, A131778, A131778.P8822641819976216554.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P8694093412562305943

`A065941(n)+A131376(n)-A007318(n)`
-/

namespace A131774.P8694093412562305943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131376 n - A007318 n)

end

end A131774.P8694093412562305943

namespace A131774

/-- `A065941(n)+A131376(n)-A007318(n)` -/
def P8694093412562305943.Spec : Prop :=
  ∀ n, P8694093412562305943.a n = A131774 (n + 1)

theorem P8694093412562305943.correct : P8694093412562305943.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P8694093412562305943.a, A131774.P17364787788488143153.a, A007318, A007318.P11755526479805562006.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P3183119596903847201.a, A046854, A046854.P6321065027790251998.a, A131374, A131374.P1343424990653634680.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P4966291823466307206

`A065941(n)+A131374(n)-A046854(n)`
-/

namespace A131774.P4966291823466307206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131374 n - A046854 n)

end

end A131774.P4966291823466307206

namespace A131774

/-- `A065941(n)+A131374(n)-A046854(n)` -/
def P4966291823466307206.Spec : Prop :=
  ∀ n, P4966291823466307206.a n = A131774 (n + 1)

theorem P4966291823466307206.correct : P4966291823466307206.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P4966291823466307206.a, A131774.P17364787788488143153.a, A046854, A046854.P6321065027790251998.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A131374, A131374.P1343424990653634680.a, A168561, A168561.P3183119596903847201.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P11479398060452112723

`A131775(n+1)+A046854(n)-A131374(n)`
-/

namespace A131774.P11479398060452112723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131775 (n + 1) + (A046854 n - A131374 n)

end

end A131774.P11479398060452112723

namespace A131774

/-- `A131775(n+1)+A046854(n)-A131374(n)` -/
def P11479398060452112723.Spec : Prop :=
  ∀ n, P11479398060452112723.a n = A131774 (n + 1)

theorem P11479398060452112723.correct : P11479398060452112723.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P11479398060452112723.a, A131774.P17364787788488143153.a, A046854, A046854.P6321065027790251998.a, A131268, A131268.P5295787942344132611.a, A131374, A131374.P1343424990653634680.a, A131775, A131775.P7787466996817458597.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P18165448373648938788

`A131776(n+1)+A065941(n)-A131775(n+1)`
-/

namespace A131774.P18165448373648938788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131776 (n + 1) + (A065941 n - A131775 (n + 1))

end

end A131774.P18165448373648938788

namespace A131774

/-- `A131776(n+1)+A065941(n)-A131775(n+1)` -/
def P18165448373648938788.Spec : Prop :=
  ∀ n, P18165448373648938788.a n = A131774 (n + 1)

theorem P18165448373648938788.correct : P18165448373648938788.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P18165448373648938788.a, A131774.P17364787788488143153.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P2249879402101665761

`A131777(n+1)+A065941(n)-A131776(n+1)`
-/

namespace A131774.P2249879402101665761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131777 (n + 1) + (A065941 n - A131776 (n + 1))

end

end A131774.P2249879402101665761

namespace A131774

/-- `A131777(n+1)+A065941(n)-A131776(n+1)` -/
def P2249879402101665761.Spec : Prop :=
  ∀ n, P2249879402101665761.a n = A131774 (n + 1)

theorem P2249879402101665761.correct : P2249879402101665761.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P2249879402101665761.a, A131774.P17364787788488143153.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A168561, A168561.P3183119596903847201.a, A131775, A131775.P7787466996817458597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P16476646011362264516

`A131778(n+1)+A065941(n)-A131777(n+1)`
-/

namespace A131774.P16476646011362264516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131778 (n + 1) + (A065941 n - A131777 (n + 1))

end

end A131774.P16476646011362264516

namespace A131774

/-- `A131778(n+1)+A065941(n)-A131777(n+1)` -/
def P16476646011362264516.Spec : Prop :=
  ∀ n, P16476646011362264516.a n = A131774 (n + 1)

theorem P16476646011362264516.correct : P16476646011362264516.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P16476646011362264516.a, A131774.P17364787788488143153.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A131777, A131777.P18261252755188450248.a, A131778, A131778.P8822641819976216554.a, A168561, A168561.P3183119596903847201.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P10562995480405430873

`A131775(n+1)+A131776(n+1)-A131777(n+1)`
-/

namespace A131774.P10562995480405430873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131775 (n + 1) + (A131776 (n + 1) - A131777 (n + 1))

end

end A131774.P10562995480405430873

namespace A131774

/-- `A131775(n+1)+A131776(n+1)-A131777(n+1)` -/
def P10562995480405430873.Spec : Prop :=
  ∀ n, P10562995480405430873.a n = A131774 (n + 1)

theorem P10562995480405430873.correct : P10562995480405430873.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P10562995480405430873.a, A131774.P17364787788488143153.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P6779107155860780310

`A131775(n+1)+A131777(n+1)-A131778(n+1)`
-/

namespace A131774.P6779107155860780310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131775 (n + 1) + (A131777 (n + 1) - A131778 (n + 1))

end

end A131774.P6779107155860780310

namespace A131774

/-- `A131775(n+1)+A131777(n+1)-A131778(n+1)` -/
def P6779107155860780310.Spec : Prop :=
  ∀ n, P6779107155860780310.a n = A131774 (n + 1)

theorem P6779107155860780310.correct : P6779107155860780310.Spec := by
  intro n
  simp only [A131774, Nat.add_sub_cancel, A131774.P6779107155860780310.a, A131774.P17364787788488143153.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, A131777, A131777.P18261252755188450248.a, A131778, A131778.P8822641819976216554.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, A131776, A131776.P11657725690283460329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131774

/-! ## A131774.P8816230978531807093

`A162515(n+1)+A374439(n)-A168561(n)`
-/

namespace A131774.P8816230978531807093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 (n + 1) + (A374439 n - A168561 n)

end

end A131774.P8816230978531807093

namespace A131774

/-- `A162515(n+1)+A374439(n)-A168561(n)` -/
def P8816230978531807093.Spec : Prop :=
  ∀ n, P8816230978531807093.a n = A131774 (n + 1)

end A131774

/-! ## A131774.P2841003791330891953

`A004277(A065941(n))-A168561(n)`
-/

namespace A131774.P2841003791330891953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A065941 n).toNat - A168561 n

end

end A131774.P2841003791330891953

namespace A131774

/-- `A004277(A065941(n))-A168561(n)` -/
def P2841003791330891953.Spec : Prop :=
  ∀ n, P2841003791330891953.a n = A131774 (n + 1)

end A131774

/-! ## A131774.P10928557846918243906

`A005843(A131376(n))-A131350(n)`
-/

namespace A131774.P10928557846918243906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A131376 n).toNat - A131350 n

end

end A131774.P10928557846918243906

namespace A131774

/-- `A005843(A131376(n))-A131350(n)` -/
def P10928557846918243906.Spec : Prop :=
  ∀ n, P10928557846918243906.a n = A131774 (n + 1)

end A131774

/-!
# A131775: 3*A065941 - 2*A049310.

The programs for A131775, the canonical program `A131775.P7787466996817458597` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131775 has offset 1).

The definition of A131775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131775.P7787466996817458597

`2*A131774(n+1)-A065941(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131775

/-- `2*A131774(n+1)-A065941(n)` -/
def P7787466996817458597.Spec : Prop :=
  ∀ n, P7787466996817458597.a n = A131775 (n + 1)

theorem P7787466996817458597.correct : P7787466996817458597.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel]

end A131775

/-! ## A131775.P8744603624674175589

`(A131777(n+1)+A065941(n))/2`
-/

namespace A131775.P8744603624674175589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131777 (n + 1) + A065941 n : ℚ) / 2

end

end A131775.P8744603624674175589

namespace A131775

/-- `(A131777(n+1)+A065941(n))/2` -/
def P8744603624674175589.Spec : Prop :=
  ∀ n, P8744603624674175589.a n = (A131775 (n + 1) : ℚ)

theorem P8744603624674175589.correct : P8744603624674175589.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P8744603624674175589.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131777, A131777.P18261252755188450248.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P1465955799226031253

`(A168561(n)+A131778(n+1))/2`
-/

namespace A131775.P1465955799226031253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168561 n + A131778 (n + 1) : ℚ) / 2

end

end A131775.P1465955799226031253

namespace A131775

/-- `(A168561(n)+A131778(n+1))/2` -/
def P1465955799226031253.Spec : Prop :=
  ∀ n, P1465955799226031253.a n = (A131775 (n + 1) : ℚ)

theorem P1465955799226031253.correct : P1465955799226031253.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P1465955799226031253.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131778, A131778.P8822641819976216554.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, A131776, A131776.P11657725690283460329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P16414538043850445427

`2*A131776(n+1)-A131777(n+1)`
-/

namespace A131775.P16414538043850445427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131776 (n + 1) - A131777 (n + 1)

end

end A131775.P16414538043850445427

namespace A131775

/-- `2*A131776(n+1)-A131777(n+1)` -/
def P16414538043850445427.Spec : Prop :=
  ∀ n, P16414538043850445427.a n = A131775 (n + 1)

theorem P16414538043850445427.correct : P16414538043850445427.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P16414538043850445427.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P6472378064640655834

`(A131776(n+1)+A131774(n+1))/2`
-/

namespace A131775.P6472378064640655834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131776 (n + 1) + A131774 (n + 1) : ℚ) / 2

end

end A131775.P6472378064640655834

namespace A131775

/-- `(A131776(n+1)+A131774(n+1))/2` -/
def P6472378064640655834.Spec : Prop :=
  ∀ n, P6472378064640655834.a n = (A131775 (n + 1) : ℚ)

theorem P6472378064640655834.correct : P6472378064640655834.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P6472378064640655834.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P18224607011850995693

`A131774(n+1)+A065941(n)-A168561(n)`
-/

namespace A131775.P18224607011850995693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A065941 n - A168561 n)

end

end A131775.P18224607011850995693

namespace A131775

/-- `A131774(n+1)+A065941(n)-A168561(n)` -/
def P18224607011850995693.Spec : Prop :=
  ∀ n, P18224607011850995693.a n = A131775 (n + 1)

theorem P18224607011850995693.correct : P18224607011850995693.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P18224607011850995693.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P15096052369014230881

`A131776(n+1)+A168561(n)-A065941(n)`
-/

namespace A131775.P15096052369014230881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131776 (n + 1) + (A168561 n - A065941 n)

end

end A131775.P15096052369014230881

namespace A131775

/-- `A131776(n+1)+A168561(n)-A065941(n)` -/
def P15096052369014230881.Spec : Prop :=
  ∀ n, P15096052369014230881.a n = A131775 (n + 1)

theorem P15096052369014230881.correct : P15096052369014230881.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P15096052369014230881.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P9883348290228414855

`A131776(n+1)+A065941(n)-A131774(n+1)`
-/

namespace A131775.P9883348290228414855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131776 (n + 1) + (A065941 n - A131774 (n + 1))

end

end A131775.P9883348290228414855

namespace A131775

/-- `A131776(n+1)+A065941(n)-A131774(n+1)` -/
def P9883348290228414855.Spec : Prop :=
  ∀ n, P9883348290228414855.a n = A131775 (n + 1)

theorem P9883348290228414855.correct : P9883348290228414855.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P9883348290228414855.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P3485756852178220849

`A131778(n+1)+A065941(n)-A131776(n+1)`
-/

namespace A131775.P3485756852178220849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131778 (n + 1) + (A065941 n - A131776 (n + 1))

end

end A131775.P3485756852178220849

namespace A131775

/-- `A131778(n+1)+A065941(n)-A131776(n+1)` -/
def P3485756852178220849.Spec : Prop :=
  ∀ n, P3485756852178220849.a n = A131775 (n + 1)

theorem P3485756852178220849.correct : P3485756852178220849.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P3485756852178220849.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131778, A131778.P8822641819976216554.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P10482825323861181557

`A131774(n+1)+A131777(n+1)-A131776(n+1)`
-/

namespace A131775.P10482825323861181557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131777 (n + 1) - A131776 (n + 1))

end

end A131775.P10482825323861181557

namespace A131775

/-- `A131774(n+1)+A131777(n+1)-A131776(n+1)` -/
def P10482825323861181557.Spec : Prop :=
  ∀ n, P10482825323861181557.a n = A131775 (n + 1)

theorem P10482825323861181557.correct : P10482825323861181557.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P10482825323861181557.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P14058284531513387946

`A131774(n+1)+A131778(n+1)-A131777(n+1)`
-/

namespace A131775.P14058284531513387946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131778 (n + 1) - A131777 (n + 1))

end

end A131775.P14058284531513387946

namespace A131775

/-- `A131774(n+1)+A131778(n+1)-A131777(n+1)` -/
def P14058284531513387946.Spec : Prop :=
  ∀ n, P14058284531513387946.a n = A131775 (n + 1)

theorem P14058284531513387946.correct : P14058284531513387946.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P14058284531513387946.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131777, A131777.P18261252755188450248.a, A131778, A131778.P8822641819976216554.a, A131268, A131268.P5295787942344132611.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-! ## A131775.P1809749340265487933

`A131776(n+1)+A131777(n+1)-A131778(n+1)`
-/

namespace A131775.P1809749340265487933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131776 (n + 1) + (A131777 (n + 1) - A131778 (n + 1))

end

end A131775.P1809749340265487933

namespace A131775

/-- `A131776(n+1)+A131777(n+1)-A131778(n+1)` -/
def P1809749340265487933.Spec : Prop :=
  ∀ n, P1809749340265487933.a n = A131775 (n + 1)

theorem P1809749340265487933.correct : P1809749340265487933.Spec := by
  intro n
  simp only [A131775, Nat.add_sub_cancel, A131775.P1809749340265487933.a, A131775.P7787466996817458597.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A131778, A131778.P8822641819976216554.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131775

/-!
# A131776: 4*A065941 - 3*A049310.

The programs for A131776, the canonical program `A131776.P11657725690283460329` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131776 has offset 1).

The definition of A131776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131776.P11657725690283460329

`2*A131774(n+1)-A168561(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131776

/-- `2*A131774(n+1)-A168561(n)` -/
def P11657725690283460329.Spec : Prop :=
  ∀ n, P11657725690283460329.a n = A131776 (n + 1)

theorem P11657725690283460329.correct : P11657725690283460329.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel]

end A131776

/-! ## A131776.P10016394159356682362

`2*A131774(n+1)-abs(A049310(n))`
-/

namespace A131776.P10016394159356682362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131774 (n + 1) - |A049310 n|

end

end A131776.P10016394159356682362

namespace A131776

/-- `2*A131774(n+1)-abs(A049310(n))` -/
def P10016394159356682362.Spec : Prop :=
  ∀ n, P10016394159356682362.a n = A131776 (n + 1)

end A131776

/-! ## A131776.P392035406102028411

`2*A131775(n+1)-A131774(n+1)`
-/

namespace A131776.P392035406102028411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131775 (n + 1) - A131774 (n + 1)

end

end A131776.P392035406102028411

namespace A131776

/-- `2*A131775(n+1)-A131774(n+1)` -/
def P392035406102028411.Spec : Prop :=
  ∀ n, P392035406102028411.a n = A131776 (n + 1)

theorem P392035406102028411.correct : P392035406102028411.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P392035406102028411.a, A131776.P11657725690283460329.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P15977452149112551088

`2*A131777(n+1)-A131778(n+1)`
-/

namespace A131776.P15977452149112551088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131777 (n + 1) - A131778 (n + 1)

end

end A131776.P15977452149112551088

namespace A131776

/-- `2*A131777(n+1)-A131778(n+1)` -/
def P15977452149112551088.Spec : Prop :=
  ∀ n, P15977452149112551088.a n = A131776 (n + 1)

theorem P15977452149112551088.correct : P15977452149112551088.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P15977452149112551088.a, A131776.P11657725690283460329.a, A131774, A131774.P17364787788488143153.a, A131777, A131777.P18261252755188450248.a, A131778, A131778.P8822641819976216554.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P17732515094743772251

`(A131777(n+1)+A131775(n+1))/2`
-/

namespace A131776.P17732515094743772251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131777 (n + 1) + A131775 (n + 1) : ℚ) / 2

end

end A131776.P17732515094743772251

namespace A131776

/-- `(A131777(n+1)+A131775(n+1))/2` -/
def P17732515094743772251.Spec : Prop :=
  ∀ n, P17732515094743772251.a n = (A131776 (n + 1) : ℚ)

theorem P17732515094743772251.correct : P17732515094743772251.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P17732515094743772251.a, A131776.P11657725690283460329.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131777, A131777.P18261252755188450248.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P16755446043130126167

`(A131778(n+1)+A131774(n+1))/2`
-/

namespace A131776.P16755446043130126167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131778 (n + 1) + A131774 (n + 1) : ℚ) / 2

end

end A131776.P16755446043130126167

namespace A131776

/-- `(A131778(n+1)+A131774(n+1))/2` -/
def P16755446043130126167.Spec : Prop :=
  ∀ n, P16755446043130126167.a n = (A131776 (n + 1) : ℚ)

theorem P16755446043130126167.correct : P16755446043130126167.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P16755446043130126167.a, A131776.P11657725690283460329.a, A131774, A131774.P17364787788488143153.a, A131778, A131778.P8822641819976216554.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P8777521498205434636

`A131775(n+1)+A131374(n)-A046854(n)`
-/

namespace A131776.P8777521498205434636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131775 (n + 1) + (A131374 n - A046854 n)

end

end A131776.P8777521498205434636

namespace A131776

/-- `A131775(n+1)+A131374(n)-A046854(n)` -/
def P8777521498205434636.Spec : Prop :=
  ∀ n, P8777521498205434636.a n = A131776 (n + 1)

theorem P8777521498205434636.correct : P8777521498205434636.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P8777521498205434636.a, A131776.P11657725690283460329.a, A046854, A046854.P6321065027790251998.a, A131374, A131374.P1343424990653634680.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P16131876058787630334

`A131777(n+1)+A168561(n)-A065941(n)`
-/

namespace A131776.P16131876058787630334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131777 (n + 1) + (A168561 n - A065941 n)

end

end A131776.P16131876058787630334

namespace A131776

/-- `A131777(n+1)+A168561(n)-A065941(n)` -/
def P16131876058787630334.Spec : Prop :=
  ∀ n, P16131876058787630334.a n = A131776 (n + 1)

theorem P16131876058787630334.correct : P16131876058787630334.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P16131876058787630334.a, A131776.P11657725690283460329.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131777, A131777.P18261252755188450248.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P3730456026475175515

`A131774(n+1)+A131775(n+1)-A065941(n)`
-/

namespace A131776.P3730456026475175515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131775 (n + 1) - A065941 n)

end

end A131776.P3730456026475175515

namespace A131776

/-- `A131774(n+1)+A131775(n+1)-A065941(n)` -/
def P3730456026475175515.Spec : Prop :=
  ∀ n, P3730456026475175515.a n = A131776 (n + 1)

theorem P3730456026475175515.correct : P3730456026475175515.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P3730456026475175515.a, A131776.P11657725690283460329.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P4137785172373001988

`A131777(n+1)+A065941(n)-A131774(n+1)`
-/

namespace A131776.P4137785172373001988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131777 (n + 1) + (A065941 n - A131774 (n + 1))

end

end A131776.P4137785172373001988

namespace A131776

/-- `A131777(n+1)+A065941(n)-A131774(n+1)` -/
def P4137785172373001988.Spec : Prop :=
  ∀ n, P4137785172373001988.a n = A131776 (n + 1)

theorem P4137785172373001988.correct : P4137785172373001988.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P4137785172373001988.a, A131776.P11657725690283460329.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131777, A131777.P18261252755188450248.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P4883413783663131183

`A131778(n+1)+A065941(n)-A131775(n+1)`
-/

namespace A131776.P4883413783663131183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131778 (n + 1) + (A065941 n - A131775 (n + 1))

end

end A131776.P4883413783663131183

namespace A131776

/-- `A131778(n+1)+A065941(n)-A131775(n+1)` -/
def P4883413783663131183.Spec : Prop :=
  ∀ n, P4883413783663131183.a n = A131776 (n + 1)

theorem P4883413783663131183.correct : P4883413783663131183.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P4883413783663131183.a, A131776.P11657725690283460329.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131778, A131778.P8822641819976216554.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P756961652978706148

`A131774(n+1)+A131777(n+1)-A131775(n+1)`
-/

namespace A131776.P756961652978706148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131777 (n + 1) - A131775 (n + 1))

end

end A131776.P756961652978706148

namespace A131776

/-- `A131774(n+1)+A131777(n+1)-A131775(n+1)` -/
def P756961652978706148.Spec : Prop :=
  ∀ n, P756961652978706148.a n = A131776 (n + 1)

theorem P756961652978706148.correct : P756961652978706148.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P756961652978706148.a, A131776.P11657725690283460329.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131777, A131777.P18261252755188450248.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P12456688956668809230

`A131775(n+1)+A131778(n+1)-A131777(n+1)`
-/

namespace A131776.P12456688956668809230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131775 (n + 1) + (A131778 (n + 1) - A131777 (n + 1))

end

end A131776.P12456688956668809230

namespace A131776

/-- `A131775(n+1)+A131778(n+1)-A131777(n+1)` -/
def P12456688956668809230.Spec : Prop :=
  ∀ n, P12456688956668809230.a n = A131776 (n + 1)

theorem P12456688956668809230.correct : P12456688956668809230.Spec := by
  intro n
  simp only [A131776, Nat.add_sub_cancel, A131776.P12456688956668809230.a, A131776.P11657725690283460329.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131777, A131777.P18261252755188450248.a, A131778, A131778.P8822641819976216554.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131776

/-! ## A131776.P10536032706626919233

`2*A131779(n+1)-A131325(n)`
-/

namespace A131776.P10536032706626919233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131779 (n + 1) - A131325 n

end

end A131776.P10536032706626919233

namespace A131776

/-- `2*A131779(n+1)-A131325(n)` -/
def P10536032706626919233.Spec : Prop :=
  ∀ n, P10536032706626919233.a n = A131776 (n + 1)

end A131776

/-! ## A131776.P1076498453743228861

`A004277(A131779(n+1))-A131325(n)`
-/

namespace A131776.P1076498453743228861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A131779 (n + 1)).toNat - A131325 n

end

end A131776.P1076498453743228861

namespace A131776

/-- `A004277(A131779(n+1))-A131325(n)` -/
def P1076498453743228861.Spec : Prop :=
  ∀ n, P1076498453743228861.a n = A131776 (n + 1)

end A131776

/-!
# A131777: 5*A065941 - 4*A049310.

The programs for A131777, the canonical program `A131777.P18261252755188450248` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131777 has offset 1).

The definition of A131777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131777.P18261252755188450248

`2*A131775(n+1)-A065941(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131777

/-- `2*A131775(n+1)-A065941(n)` -/
def P18261252755188450248.Spec : Prop :=
  ∀ n, P18261252755188450248.a n = A131777 (n + 1)

theorem P18261252755188450248.correct : P18261252755188450248.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel]

end A131777

/-! ## A131777.P5829249430571648717

`2*A131776(n+1)-A131775(n+1)`
-/

namespace A131777.P5829249430571648717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131776 (n + 1) - A131775 (n + 1)

end

end A131777.P5829249430571648717

namespace A131777

/-- `2*A131776(n+1)-A131775(n+1)` -/
def P5829249430571648717.Spec : Prop :=
  ∀ n, P5829249430571648717.a n = A131777 (n + 1)

theorem P5829249430571648717.correct : P5829249430571648717.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel, A131777.P5829249430571648717.a, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A131774, A131774.P17364787788488143153.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131777

/-! ## A131777.P5864110961560056955

`(A131778(n+1)+A131776(n+1))/2`
-/

namespace A131777.P5864110961560056955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131778 (n + 1) + A131776 (n + 1) : ℚ) / 2

end

end A131777.P5864110961560056955

namespace A131777

/-- `(A131778(n+1)+A131776(n+1))/2` -/
def P5864110961560056955.Spec : Prop :=
  ∀ n, P5864110961560056955.a n = (A131777 (n + 1) : ℚ)

theorem P5864110961560056955.correct : P5864110961560056955.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel, A131777.P5864110961560056955.a, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A131778, A131778.P8822641819976216554.a, A131774, A131774.P17364787788488143153.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131777

/-! ## A131777.P18369078894932370785

`A131776(n+1)+A065941(n)-A168561(n)`
-/

namespace A131777.P18369078894932370785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131776 (n + 1) + (A065941 n - A168561 n)

end

end A131777.P18369078894932370785

namespace A131777

/-- `A131776(n+1)+A065941(n)-A168561(n)` -/
def P18369078894932370785.Spec : Prop :=
  ∀ n, P18369078894932370785.a n = A131777 (n + 1)

theorem P18369078894932370785.correct : P18369078894932370785.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel, A131777.P18369078894932370785.a, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, A131774, A131774.P17364787788488143153.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131777

/-! ## A131777.P8570848445335651306

`A131778(n+1)+A168561(n)-A065941(n)`
-/

namespace A131777.P8570848445335651306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131778 (n + 1) + (A168561 n - A065941 n)

end

end A131777.P8570848445335651306

namespace A131777

/-- `A131778(n+1)+A168561(n)-A065941(n)` -/
def P8570848445335651306.Spec : Prop :=
  ∀ n, P8570848445335651306.a n = A131777 (n + 1)

theorem P8570848445335651306.correct : P8570848445335651306.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel, A131777.P8570848445335651306.a, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131775, A131775.P7787466996817458597.a, A131778, A131778.P8822641819976216554.a, A168561, A168561.P3183119596903847201.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131777

/-! ## A131777.P10644934506674380191

`A131774(n+1)+A131776(n+1)-A065941(n)`
-/

namespace A131777.P10644934506674380191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131776 (n + 1) - A065941 n)

end

end A131777.P10644934506674380191

namespace A131777

/-- `A131774(n+1)+A131776(n+1)-A065941(n)` -/
def P10644934506674380191.Spec : Prop :=
  ∀ n, P10644934506674380191.a n = A131777 (n + 1)

theorem P10644934506674380191.correct : P10644934506674380191.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel, A131777.P10644934506674380191.a, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131777

/-! ## A131777.P2477216800639975429

`A131778(n+1)+A065941(n)-A131774(n+1)`
-/

namespace A131777.P2477216800639975429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131778 (n + 1) + (A065941 n - A131774 (n + 1))

end

end A131777.P2477216800639975429

namespace A131777

/-- `A131778(n+1)+A065941(n)-A131774(n+1)` -/
def P2477216800639975429.Spec : Prop :=
  ∀ n, P2477216800639975429.a n = A131777 (n + 1)

theorem P2477216800639975429.correct : P2477216800639975429.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel, A131777.P2477216800639975429.a, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131778, A131778.P8822641819976216554.a, A131268, A131268.P5295787942344132611.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131777

/-! ## A131777.P3157399363814828847

`A131774(n+1)+A131778(n+1)-A131775(n+1)`
-/

namespace A131777.P3157399363814828847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131778 (n + 1) - A131775 (n + 1))

end

end A131777.P3157399363814828847

namespace A131777

/-- `A131774(n+1)+A131778(n+1)-A131775(n+1)` -/
def P3157399363814828847.Spec : Prop :=
  ∀ n, P3157399363814828847.a n = A131777 (n + 1)

theorem P3157399363814828847.correct : P3157399363814828847.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel, A131777.P3157399363814828847.a, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131778, A131778.P8822641819976216554.a, A131268, A131268.P5295787942344132611.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131777

/-! ## A131777.P5161270465772064375

`A131775(n+1)+A131776(n+1)-A131774(n+1)`
-/

namespace A131777.P5161270465772064375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131775 (n + 1) + (A131776 (n + 1) - A131774 (n + 1))

end

end A131777.P5161270465772064375

namespace A131777

/-- `A131775(n+1)+A131776(n+1)-A131774(n+1)` -/
def P5161270465772064375.Spec : Prop :=
  ∀ n, P5161270465772064375.a n = A131777 (n + 1)

theorem P5161270465772064375.correct : P5161270465772064375.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel, A131777.P5161270465772064375.a, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131777

/-! ## A131777.P9145570170962117162

`A131775(n+1)+A131778(n+1)-A131776(n+1)`
-/

namespace A131777.P9145570170962117162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131775 (n + 1) + (A131778 (n + 1) - A131776 (n + 1))

end

end A131777.P9145570170962117162

namespace A131777

/-- `A131775(n+1)+A131778(n+1)-A131776(n+1)` -/
def P9145570170962117162.Spec : Prop :=
  ∀ n, P9145570170962117162.a n = A131777 (n + 1)

theorem P9145570170962117162.correct : P9145570170962117162.Spec := by
  intro n
  simp only [A131777, Nat.add_sub_cancel, A131777.P9145570170962117162.a, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A131778, A131778.P8822641819976216554.a, A131774, A131774.P17364787788488143153.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131777

/-!
# A131778: 6*A065941 - 5*A049310.

The programs for A131778, the canonical program `A131778.P8822641819976216554` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131778 has offset 1).

The definition of A131778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131778.P6815564383078191279

`2*A131775(n+1)-A168561(n)`
-/

namespace A131778.P6815564383078191279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131775 (n + 1) - A168561 n

end

end A131778.P6815564383078191279

namespace A131778

/-- `2*A131775(n+1)-A168561(n)` -/
def P6815564383078191279.Spec : Prop :=
  ∀ n, P6815564383078191279.a n = A131778 (n + 1)

theorem P6815564383078191279.correct : P6815564383078191279.Spec := by
  intro n
  simp only [A131778, Nat.add_sub_cancel, A131778.P6815564383078191279.a, A131778.P8822641819976216554.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131778

/-! ## A131778.P8822641819976216554

`2*A131776(n+1)-A131774(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131778

/-- `2*A131776(n+1)-A131774(n+1)` -/
def P8822641819976216554.Spec : Prop :=
  ∀ n, P8822641819976216554.a n = A131778 (n + 1)

theorem P8822641819976216554.correct : P8822641819976216554.Spec := by
  intro n
  simp only [A131778, Nat.add_sub_cancel]

end A131778

/-! ## A131778.P3640308215017576929

`2*A131777(n+1)-A131776(n+1)`
-/

namespace A131778.P3640308215017576929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131777 (n + 1) - A131776 (n + 1)

end

end A131778.P3640308215017576929

namespace A131778

/-- `2*A131777(n+1)-A131776(n+1)` -/
def P3640308215017576929.Spec : Prop :=
  ∀ n, P3640308215017576929.a n = A131778 (n + 1)

theorem P3640308215017576929.correct : P3640308215017576929.Spec := by
  intro n
  simp only [A131778, Nat.add_sub_cancel, A131778.P3640308215017576929.a, A131778.P8822641819976216554.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131778

/-! ## A131778.P517097735827463148

`A131777(n+1)+A065941(n)-A168561(n)`
-/

namespace A131778.P517097735827463148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131777 (n + 1) + (A065941 n - A168561 n)

end

end A131778.P517097735827463148

namespace A131778

/-- `A131777(n+1)+A065941(n)-A168561(n)` -/
def P517097735827463148.Spec : Prop :=
  ∀ n, P517097735827463148.a n = A131778 (n + 1)

theorem P517097735827463148.correct : P517097735827463148.Spec := by
  intro n
  simp only [A131778, Nat.add_sub_cancel, A131778.P517097735827463148.a, A131778.P8822641819976216554.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131778

/-! ## A131778.P6070293716699151208

`A131774(n+1)+A131777(n+1)-A065941(n)`
-/

namespace A131778.P6070293716699151208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131777 (n + 1) - A065941 n)

end

end A131778.P6070293716699151208

namespace A131778

/-- `A131774(n+1)+A131777(n+1)-A065941(n)` -/
def P6070293716699151208.Spec : Prop :=
  ∀ n, P6070293716699151208.a n = A131778 (n + 1)

theorem P6070293716699151208.correct : P6070293716699151208.Spec := by
  intro n
  simp only [A131778, Nat.add_sub_cancel, A131778.P6070293716699151208.a, A131778.P8822641819976216554.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A131268, A131268.P5295787942344132611.a, A131775, A131775.P7787466996817458597.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131778

/-! ## A131778.P17592503183124830565

`A131775(n+1)+A131776(n+1)-A065941(n)`
-/

namespace A131778.P17592503183124830565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131775 (n + 1) + (A131776 (n + 1) - A065941 n)

end

end A131778.P17592503183124830565

namespace A131778

/-- `A131775(n+1)+A131776(n+1)-A065941(n)` -/
def P17592503183124830565.Spec : Prop :=
  ∀ n, P17592503183124830565.a n = A131778 (n + 1)

theorem P17592503183124830565.correct : P17592503183124830565.Spec := by
  intro n
  simp only [A131778, Nat.add_sub_cancel, A131778.P17592503183124830565.a, A131778.P8822641819976216554.a, A065941, A065941.P15138820981250632951.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131778

/-! ## A131778.P1896008702533557813

`A131774(n+1)+A131776(n+1)-A168561(n)`
-/

namespace A131778.P1896008702533557813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131774 (n + 1) + (A131776 (n + 1) - A168561 n)

end

end A131778.P1896008702533557813

namespace A131778

/-- `A131774(n+1)+A131776(n+1)-A168561(n)` -/
def P1896008702533557813.Spec : Prop :=
  ∀ n, P1896008702533557813.a n = A131778 (n + 1)

theorem P1896008702533557813.correct : P1896008702533557813.Spec := by
  intro n
  simp only [A131778, Nat.add_sub_cancel, A131778.P1896008702533557813.a, A131778.P8822641819976216554.a, A131774, A131774.P17364787788488143153.a, A131776, A131776.P11657725690283460329.a, A168561, A168561.P3183119596903847201.a, A131268, A131268.P5295787942344132611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131778

/-! ## A131778.P9717301870031925254

`A131775(n+1)+A131777(n+1)-A131774(n+1)`
-/

namespace A131778.P9717301870031925254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131775 (n + 1) + (A131777 (n + 1) - A131774 (n + 1))

end

end A131778.P9717301870031925254

namespace A131778

/-- `A131775(n+1)+A131777(n+1)-A131774(n+1)` -/
def P9717301870031925254.Spec : Prop :=
  ∀ n, P9717301870031925254.a n = A131778 (n + 1)

theorem P9717301870031925254.correct : P9717301870031925254.Spec := by
  intro n
  simp only [A131778, Nat.add_sub_cancel, A131778.P9717301870031925254.a, A131778.P8822641819976216554.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131778

/-! ## A131778.P1719162737139214645

`A131776(n+1)+A131777(n+1)-A131775(n+1)`
-/

namespace A131778.P1719162737139214645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131776 (n + 1) + (A131777 (n + 1) - A131775 (n + 1))

end

end A131778.P1719162737139214645

namespace A131778

/-- `A131776(n+1)+A131777(n+1)-A131775(n+1)` -/
def P1719162737139214645.Spec : Prop :=
  ∀ n, P1719162737139214645.a n = A131778 (n + 1)

theorem P1719162737139214645.correct : P1719162737139214645.Spec := by
  intro n
  simp only [A131778, Nat.add_sub_cancel, A131778.P1719162737139214645.a, A131778.P8822641819976216554.a, A131774, A131774.P17364787788488143153.a, A131775, A131775.P7787466996817458597.a, A131776, A131776.P11657725690283460329.a, A131777, A131777.P18261252755188450248.a, A065941, A065941.P15138820981250632951.a, A131268, A131268.P5295787942344132611.a, A168561, A168561.P3183119596903847201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131778

/-!
# A131779: Triangle read by rows: T(n,k) = 2*A065941(n-1,k-1) - (-1)^(n+k).

The programs for A131779, the canonical program `A131779.P10303369782300480533` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131779 has offset 1).

The definition of A131779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131779.P16716473086099582689

`2*A065941(n)-A097807(n)`
-/

namespace A131779.P16716473086099582689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065941 n - A097807 n

end

end A131779.P16716473086099582689

namespace A131779

/-- `2*A065941(n)-A097807(n)` -/
def P16716473086099582689.Spec : Prop :=
  ∀ n, P16716473086099582689.a n = A131779 (n + 1)

end A131779

/-! ## A131779.P10303369782300480533

`A131268(n)+A010673(A025581(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131779

/-- `A131268(n)+A010673(A025581(n))` -/
def P10303369782300480533.Spec : Prop :=
  ∀ n, P10303369782300480533.a n = A131779 (n + 1)

theorem P10303369782300480533.correct : P10303369782300480533.Spec := by
  intro n
  simp only [A131779, Nat.add_sub_cancel]

end A131779

/-! ## A131779.P12900051947452348460

`A131268(n)+A010673(A051933(n))`
-/

namespace A131779.P12900051947452348460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 n + A010673 (A051933 n).toNat

end

end A131779.P12900051947452348460

namespace A131779

/-- `A131268(n)+A010673(A051933(n))` -/
def P12900051947452348460.Spec : Prop :=
  ∀ n, P12900051947452348460.a n = A131779 (n + 1)

end A131779

/-! ## A131779.P482910513481284974

`A005408(A065941(n)-A128174(n+1))`
-/

namespace A131779.P482910513481284974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A065941 n - A128174 (n + 1)).toNat

end

end A131779.P482910513481284974

namespace A131779

/-- `A005408(A065941(n)-A128174(n+1))` -/
def P482910513481284974.Spec : Prop :=
  ∀ n, P482910513481284974.a n = A131779 (n + 1)

end A131779

/-! ## A131779.P12321045567580258241

`A010673(A025581(n))+A004273(A065941(n))`
-/

namespace A131779.P12321045567580258241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A025581 n).toNat + A004273 (A065941 n).toNat

end

end A131779.P12321045567580258241

namespace A131779

/-- `A010673(A025581(n))+A004273(A065941(n))` -/
def P12321045567580258241.Spec : Prop :=
  ∀ n, P12321045567580258241.a n = A131779 (n + 1)

end A131779

/-! ## A131779.P2709519628494807318

`A131268(n)+A000038(A168561(n))`
-/

namespace A131779.P2709519628494807318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 n + A000038 (A168561 n).toNat

end

end A131779.P2709519628494807318

namespace A131779

/-- `A131268(n)+A000038(A168561(n))` -/
def P2709519628494807318.Spec : Prop :=
  ∀ n, P2709519628494807318.a n = A131779 (n + 1)

end A131779

/-! ## A131779.P15003389360100218115

`A131268(n)+A000038(A114525(n))`
-/

namespace A131779.P15003389360100218115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 n + A000038 (A114525 n).toNat

end

end A131779.P15003389360100218115

namespace A131779

/-- `A131268(n)+A000038(A114525(n))` -/
def P15003389360100218115.Spec : Prop :=
  ∀ n, P15003389360100218115.a n = A131779 (n + 1)

end A131779

/-! ## A131779.P11321699220385967068

`A131268(n)+A000038(A130125(n))`
-/

namespace A131779.P11321699220385967068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 n + A000038 (A130125 n).toNat

end

end A131779.P11321699220385967068

namespace A131779

/-- `A131268(n)+A000038(A130125(n))` -/
def P11321699220385967068.Spec : Prop :=
  ∀ n, P11321699220385967068.a n = A131779 (n + 1)

end A131779

/-! ## A131779.P12835322627300312377

`A131268(n)+A000038(A049310(n)²)`
-/

namespace A131779.P12835322627300312377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 n + A000038 (A049310 n ^ 2).toNat

end

end A131779.P12835322627300312377

namespace A131779

/-- `A131268(n)+A000038(A049310(n)²)` -/
def P12835322627300312377.Spec : Prop :=
  ∀ n, P12835322627300312377.a n = A131779 (n + 1)

end A131779

/-! ## A131779.P3686916889295074425

`A131268(n)+A000038(A136689(n+1))`
-/

namespace A131779.P3686916889295074425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 n + A000038 (A136689 (n + 1)).toNat

end

end A131779.P3686916889295074425

namespace A131779

/-- `A131268(n)+A000038(A136689(n+1))` -/
def P3686916889295074425.Spec : Prop :=
  ∀ n, P3686916889295074425.a n = A131779 (n + 1)

end A131779

/-!
# A131780: Row sums of triangle A131779.

The programs for A131780, the canonical program `A131780.P1856131962669182499` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131780 has offset 1).

The definition of A131780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131780.P1856131962669182499

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131780

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P1856131962669182499.Spec : Prop :=
  ∀ n, P1856131962669182499.a n = A131780 (n + 1)

theorem P1856131962669182499.correct : P1856131962669182499.Spec := by
  intro n
  simp only [A131780, Nat.add_sub_cancel]

end A131780

/-! ## A131780.P3484513649998401654

`2*A000045(n+2)-(1-(-1)^(n+1))/2`
-/

namespace A131780.P3484513649998401654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (n + 2) : ℚ) - (1 - (-1) ^ (n + 1) : ℚ) / 2

end

end A131780.P3484513649998401654

namespace A131780

/-- `2*A000045(n+2)-(1-(-1)^(n+1))/2` -/
def P3484513649998401654.Spec : Prop :=
  ∀ n, P3484513649998401654.a n = (A131780 (n + 1) : ℚ)

end A131780

/-! ## A131780.P2875721419886336531

`ogf((1+3x-x^2-2x^3)/(1-x-2x^2+x^3+x^4))`
-/

namespace A131780.P2875721419886336531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1, -2] [1, -1, -2, 1, 1] n

end

end A131780.P2875721419886336531

namespace A131780

/-- `ogf((1+3x-x^2-2x^3)/(1-x-2x^2+x^3+x^4))` -/
def P2875721419886336531.Spec : Prop :=
  ∀ n, P2875721419886336531.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P6492629738019621122

`a(n-1)+or(1, a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A131780.P6492629738019621122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + Nat.lor 1 (a (n - 2))

end

end A131780.P6492629738019621122

namespace A131780

/-- `a(n-1)+or(1, a(n-2))` -/
def P6492629738019621122.Spec : Prop :=
  ∀ n, (P6492629738019621122.a n : ℤ) = A131780 (n + 1)

end A131780

/-! ## A131780.P4844758030430149122

`a(n-1)+a(n-2)+n%2` with `a(0)=1, a(1)=4`
-/

namespace A131780.P4844758030430149122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 2) + n % 2)

end

end A131780.P4844758030430149122

namespace A131780

/-- `a(n-1)+a(n-2)+n%2` -/
def P4844758030430149122.Spec : Prop :=
  ∀ n, (P4844758030430149122.a n : ℤ) = A131780 (n + 1)

end A131780

/-! ## A131780.P5054205806306401744

`2*a(n-2)+a(n-3)+1` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A131780.P5054205806306401744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  2 * a (n - 2) + (a (n - 3) + 1)

end

end A131780.P5054205806306401744

namespace A131780

/-- `2*a(n-2)+a(n-3)+1` -/
def P5054205806306401744.Spec : Prop :=
  ∀ n, (P5054205806306401744.a n : ℤ) = A131780 (n + 1)

end A131780

/-! ## A131780.P10972786627880439760

`2-gcd(2, n)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A131780.P10972786627880439760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 - (Nat.gcd 2 n : ℤ) + (a (n - 1) + a (n - 2))

end

end A131780.P10972786627880439760

namespace A131780

/-- `2-gcd(2, n)+a(n-1)+a(n-2)` -/
def P10972786627880439760.Spec : Prop :=
  ∀ n, P10972786627880439760.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P1575277055831551153

`a(n-1)-((2-n)%2-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A131780.P1575277055831551153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (Int.tmod (2 - (n : ℤ)) 2 - a (n - 2))

end

end A131780.P1575277055831551153

namespace A131780

/-- `a(n-1)-((2-n)%2-a(n-2))` -/
def P1575277055831551153.Spec : Prop :=
  ∀ n, P1575277055831551153.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P17794323347167415500

`a(n-2)+1+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A131780.P17794323347167415500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  a (n - 2) + 1 + (a (n - 2) + a (n - 3))

end

end A131780.P17794323347167415500

namespace A131780

/-- `a(n-2)+1+a(n-2)+a(n-3)` -/
def P17794323347167415500.Spec : Prop :=
  ∀ n, (P17794323347167415500.a n : ℤ) = A131780 (n + 1)

end A131780

/-! ## A131780.P1701230231850519286

`A001595(n+1)+and(1, n)`
-/

namespace A131780.P1701230231850519286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1) + (Nat.land 1 n : ℤ)

end

end A131780.P1701230231850519286

namespace A131780

/-- `A001595(n+1)+and(1, n)` -/
def P1701230231850519286.Spec : Prop :=
  ∀ n, P1701230231850519286.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P7505890538984267561

`A006355(n+3)-(n+1)%2`
-/

namespace A131780.P7505890538984267561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 3) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A131780.P7505890538984267561

namespace A131780

/-- `A006355(n+3)-(n+1)%2` -/
def P7505890538984267561.Spec : Prop :=
  ∀ n, P7505890538984267561.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P5191078556424280023

`gcd(2, n+1)+∑[2*A000045(n)]`
-/

namespace A131780.P5191078556424280023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131780.P5191078556424280023

namespace A131780

/-- `gcd(2, n+1)+∑[2*A000045(n)]` -/
def P5191078556424280023.Spec : Prop :=
  ∀ n, P5191078556424280023.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P8044217305473286801

`a(n-2)+2*A000045(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A131780.P8044217305473286801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 2 * A000045 (n + 1)

end

end A131780.P8044217305473286801

namespace A131780

/-- `a(n-2)+2*A000045(n+1)` -/
def P8044217305473286801.Spec : Prop :=
  ∀ n, P8044217305473286801.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P6648689917662557825

`A022086(n)+A014217(n)`
-/

namespace A131780.P6648689917662557825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A014217 n

end

end A131780.P6648689917662557825

namespace A131780

/-- `A022086(n)+A014217(n)` -/
def P6648689917662557825.Spec : Prop :=
  ∀ n, P6648689917662557825.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P976943806120255771

`A066629(n)+A010673(n)`
-/

namespace A131780.P976943806120255771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 n + A010673 n

end

end A131780.P976943806120255771

namespace A131780

/-- `A066629(n)+A010673(n)` -/
def P976943806120255771.Spec : Prop :=
  ∀ n, P976943806120255771.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P13337850723546859133

`A127968(n)+A001610(n)`
-/

namespace A131780.P13337850723546859133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 n + A001610 n

end

end A131780.P13337850723546859133

namespace A131780

/-- `A127968(n)+A001610(n)` -/
def P13337850723546859133.Spec : Prop :=
  ∀ n, P13337850723546859133.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P1415673032031067293

`A215005(n)+A052938(n)`
-/

namespace A131780.P1415673032031067293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215005 n + A052938 n

end

end A131780.P1415673032031067293

namespace A131780

/-- `A215005(n)+A052938(n)` -/
def P1415673032031067293.Spec : Prop :=
  ∀ n, P1415673032031067293.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P16635683738718989492

`A281362(n)+A030451(n)`
-/

namespace A131780.P16635683738718989492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281362 n + A030451 n

end

end A131780.P16635683738718989492

namespace A131780

/-- `A281362(n)+A030451(n)` -/
def P16635683738718989492.Spec : Prop :=
  ∀ n, P16635683738718989492.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P4811096696527200911

`A020701(n)-A052959(n)`
-/

namespace A131780.P4811096696527200911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A052959 n

end

end A131780.P4811096696527200911

namespace A131780

/-- `A020701(n)-A052959(n)` -/
def P4811096696527200911.Spec : Prop :=
  ∀ n, P4811096696527200911.a n = A131780 (n + 1)

end A131780

/-! ## A131780.P15806804452296816336

`A022319(n)-A062114(n)`
-/

namespace A131780.P15806804452296816336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n - A062114 n

end

end A131780.P15806804452296816336

namespace A131780

/-- `A022319(n)-A062114(n)` -/
def P15806804452296816336.Spec : Prop :=
  ∀ n, P15806804452296816336.a n = A131780 (n + 1)

end A131780

/-!
# A131781: 2*A046854 - A000012 (signed by columns + - + -, ...).

The programs for A131781, the canonical program `A131781.P11903417677959677227` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131781 has offset 1).

The definition of A131781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131781.P11903417677959677227

`A131270(n)+1-A097807(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131781

/-- `A131270(n)+1-A097807(n)` -/
def P11903417677959677227.Spec : Prop :=
  ∀ n, P11903417677959677227.a n = A131781 (n + 1)

theorem P11903417677959677227.correct : P11903417677959677227.Spec := by
  intro n
  simp only [A131781, Nat.add_sub_cancel]

end A131781

/-! ## A131781.P4117696138958374608

`2*A046854(n)-A097807(n)`
-/

namespace A131781.P4117696138958374608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046854 n - A097807 n

end

end A131781.P4117696138958374608

namespace A131781

/-- `2*A046854(n)-A097807(n)` -/
def P4117696138958374608.Spec : Prop :=
  ∀ n, P4117696138958374608.a n = A131781 (n + 1)

theorem P4117696138958374608.correct : P4117696138958374608.Spec := by
  intro n
  simp only [A131781, Nat.add_sub_cancel, A131781.P4117696138958374608.a, A131781.P11903417677959677227.a, A046854, A046854.P6321065027790251998.a, A097807, A097807.P13019751470320389249.a, A131270, A131270.P17225762557638996417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131781

/-! ## A131781.P18094628235187031124

`abs(2*A130777(n))-A097807(n)`
-/

namespace A131781.P18094628235187031124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A130777 n| - A097807 n

end

end A131781.P18094628235187031124

namespace A131781

/-- `abs(2*A130777(n))-A097807(n)` -/
def P18094628235187031124.Spec : Prop :=
  ∀ n, P18094628235187031124.a n = A131781 (n + 1)

end A131781

/-! ## A131781.P10537822693309968527

`2*(A046854(n)-A128174(n+1))+1`
-/

namespace A131781.P10537822693309968527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046854 n - A128174 (n + 1)) + 1

end

end A131781.P10537822693309968527

namespace A131781

/-- `2*(A046854(n)-A128174(n+1))+1` -/
def P10537822693309968527.Spec : Prop :=
  ∀ n, P10537822693309968527.a n = A131781 (n + 1)

end A131781

/-! ## A131781.P13239914631046677745

`A131270(n)+A010673(A025581(n))`
-/

namespace A131781.P13239914631046677745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 n + A010673 (A025581 n).toNat

end

end A131781.P13239914631046677745

namespace A131781

/-- `A131270(n)+A010673(A025581(n))` -/
def P13239914631046677745.Spec : Prop :=
  ∀ n, P13239914631046677745.a n = A131781 (n + 1)

end A131781

/-! ## A131781.P4106917596435635198

`A131270(n)+A010673(A051162(n))`
-/

namespace A131781.P4106917596435635198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 n + A010673 (A051162 n).toNat

end

end A131781.P4106917596435635198

namespace A131781

/-- `A131270(n)+A010673(A051162(n))` -/
def P4106917596435635198.Spec : Prop :=
  ∀ n, P4106917596435635198.a n = A131781 (n + 1)

end A131781

/-! ## A131781.P8255730647546543260

`lcm(2, A131240(n))-A097807(n)`
-/

namespace A131781.P8255730647546543260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A131240 n) : ℤ) - A097807 n

end

end A131781.P8255730647546543260

namespace A131781

/-- `lcm(2, A131240(n))-A097807(n)` -/
def P8255730647546543260.Spec : Prop :=
  ∀ n, P8255730647546543260.a n = A131781 (n + 1)

end A131781

/-! ## A131781.P6267011596573155474

`or(1, A131240(n)-A128174(n+1))`
-/

namespace A131781.P6267011596573155474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A131240 n - A128174 (n + 1))

end

end A131781.P6267011596573155474

namespace A131781

/-- `or(1, A131240(n)-A128174(n+1))` -/
def P6267011596573155474.Spec : Prop :=
  ∀ n, P6267011596573155474.a n = A131781 (n + 1)

end A131781

/-! ## A131781.P8128273007043662757

`A004277(A046854(n))-A097807(n)`
-/

namespace A131781.P8128273007043662757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A046854 n).toNat - A097807 n

end

end A131781.P8128273007043662757

namespace A131781

/-- `A004277(A046854(n))-A097807(n)` -/
def P8128273007043662757.Spec : Prop :=
  ∀ n, P8128273007043662757.a n = A131781 (n + 1)

end A131781

/-! ## A131781.P12601030793342247831

`A131270(n)+A000038(A053121(n))`
-/

namespace A131781.P12601030793342247831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 n + A000038 (A053121 n).toNat

end

end A131781.P12601030793342247831

namespace A131781

/-- `A131270(n)+A000038(A053121(n))` -/
def P12601030793342247831.Spec : Prop :=
  ∀ n, P12601030793342247831.a n = A131781 (n + 1)

end A131781

/-!
# A131782: Triangle read by rows: (A004736 * A000012) + (A000012 * A004736) - A000012 as infinite lower triangular matrices.

The programs for A131782, the canonical program `A131782.P7183273397705194591` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131782 has offset 1).

The definition of A131782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131782.P9594375876300373961

`(row(n)-col(n)+1)²-col(n)+row(n)`
-/

namespace A131782.P9594375876300373961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ 2 - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ)

end

end A131782.P9594375876300373961

namespace A131782

/-- `(row(n)-col(n)+1)²-col(n)+row(n)` -/
def P9594375876300373961.Spec : Prop :=
  ∀ n, P9594375876300373961.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P7183273397705194591

`A028387(A025581(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131782

/-- `A028387(A025581(n))` -/
def P7183273397705194591.Spec : Prop :=
  ∀ n, P7183273397705194591.a n = A131782 (n + 1)

theorem P7183273397705194591.correct : P7183273397705194591.Spec := by
  intro n
  simp only [A131782, Nat.add_sub_cancel]

end A131782

/-! ## A131782.P18036237064633368269

`A140144(A099375(n))`
-/

namespace A131782.P18036237064633368269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (A099375 n).toNat

end

end A131782.P18036237064633368269

namespace A131782

/-- `A140144(A099375(n))` -/
def P18036237064633368269.Spec : Prop :=
  ∀ n, P18036237064633368269.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P9599228239347870248

`A024206(A212012(n+1))`
-/

namespace A131782.P9599228239347870248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (A212012 (n + 1)).toNat

end

end A131782.P9599228239347870248

namespace A131782

/-- `A024206(A212012(n+1))` -/
def P9599228239347870248.Spec : Prop :=
  ∀ n, P9599228239347870248.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P6157618903611710353

`A228941(A143971(n+1))`
-/

namespace A131782.P6157618903611710353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228941 (A143971 (n + 1)).toNat

end

end A131782.P6157618903611710353

namespace A131782

/-- `A228941(A143971(n+1))` -/
def P6157618903611710353.Spec : Prop :=
  ∀ n, P6157618903611710353.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P13678742472951690869

`A002378(A004736(n+1))-1`
-/

namespace A131782.P13678742472951690869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A004736 (n + 1)).toNat - 1

end

end A131782.P13678742472951690869

namespace A131782

/-- `A002378(A004736(n+1))-1` -/
def P13678742472951690869.Spec : Prop :=
  ∀ n, P13678742472951690869.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P18344029832220646505

`A028387(A004736(n+1)-1)`
-/

namespace A131782.P18344029832220646505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A004736 (n + 1) - 1).toNat

end

end A131782.P18344029832220646505

namespace A131782

/-- `A028387(A004736(n+1)-1)` -/
def P18344029832220646505.Spec : Prop :=
  ∀ n, P18344029832220646505.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P5484767418820366866

`A024206(2*A004736(n+1))`
-/

namespace A131782.P5484767418820366866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (2 * A004736 (n + 1)).toNat

end

end A131782.P5484767418820366866

namespace A131782

/-- `A024206(2*A004736(n+1))` -/
def P5484767418820366866.Spec : Prop :=
  ∀ n, P5484767418820366866.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P14078110765005762002

`A055461(n+1)+A025581(n)`
-/

namespace A131782.P14078110765005762002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + A025581 n

end

end A131782.P14078110765005762002

namespace A131782

/-- `A055461(n+1)+A025581(n)` -/
def P14078110765005762002.Spec : Prop :=
  ∀ n, P14078110765005762002.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P16983037594741265539

`A099375(n)+A095832(n+1)`
-/

namespace A131782.P16983037594741265539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + A095832 (n + 1)

end

end A131782.P16983037594741265539

namespace A131782

/-- `A099375(n)+A095832(n+1)` -/
def P16983037594741265539.Spec : Prop :=
  ∀ n, P16983037594741265539.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P17763718395244062019

`A063929(n+1)-A128139(n)`
-/

namespace A131782.P17763718395244062019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) - A128139 n

end

end A131782.P17763718395244062019

namespace A131782

/-- `A063929(n+1)-A128139(n)` -/
def P17763718395244062019.Spec : Prop :=
  ∀ n, P17763718395244062019.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P5850713717001302436

`A103217(n)-A095831(n+1)`
-/

namespace A131782.P5850713717001302436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n - A095831 (n + 1)

end

end A131782.P5850713717001302436

namespace A131782

/-- `A103217(n)-A095831(n+1)` -/
def P5850713717001302436.Spec : Prop :=
  ∀ n, P5850713717001302436.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P8574299120640991383

`A025581(n)+A004736(n+1)²`
-/

namespace A131782.P8574299120640991383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A004736 (n + 1) ^ 2

end

end A131782.P8574299120640991383

namespace A131782

/-- `A025581(n)+A004736(n+1)²` -/
def P8574299120640991383.Spec : Prop :=
  ∀ n, P8574299120640991383.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P17583891998558459669

`A143971(n+1)+A095831(n+1)`
-/

namespace A131782.P17583891998558459669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143971 (n + 1) + A095831 (n + 1)

end

end A131782.P17583891998558459669

namespace A131782

/-- `A143971(n+1)+A095831(n+1)` -/
def P17583891998558459669.Spec : Prop :=
  ∀ n, P17583891998558459669.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P17530565762805285267

`A004736(n+1)+A055461(n+1)-1`
-/

namespace A131782.P17530565762805285267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A055461 (n + 1) - 1)

end

end A131782.P17530565762805285267

namespace A131782

/-- `A004736(n+1)+A055461(n+1)-1` -/
def P17530565762805285267.Spec : Prop :=
  ∀ n, P17530565762805285267.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P14761644135479765837

`A028387(A064801(n+1)-(2*n+1))`
-/

namespace A131782.P14761644135479765837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A064801 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A131782.P14761644135479765837

namespace A131782

/-- `A028387(A064801(n+1)-(2*n+1))` -/
def P14761644135479765837.Spec : Prop :=
  ∀ n, P14761644135479765837.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P18233939571557819654

`A028387(A002260(n+1)-A127948(n))`
-/

namespace A131782.P18233939571557819654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A002260 (n + 1) - A127948 n).toNat

end

end A131782.P18233939571557819654

namespace A131782

/-- `A028387(A002260(n+1)-A127948(n))` -/
def P18233939571557819654.Spec : Prop :=
  ∀ n, P18233939571557819654.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P7110759426876724896

`A024206(A004736(n+1)+A004736(n+1))`
-/

namespace A131782.P7110759426876724896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (A004736 (n + 1) + A004736 (n + 1)).toNat

end

end A131782.P7110759426876724896

namespace A131782

/-- `A024206(A004736(n+1)+A004736(n+1))` -/
def P7110759426876724896.Spec : Prop :=
  ∀ n, P7110759426876724896.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P14205132243566296763

`A028387(A130303(n+1)-A130296(n+1))`
-/

namespace A131782.P14205132243566296763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A130303 (n + 1) - A130296 (n + 1)).toNat

end

end A131782.P14205132243566296763

namespace A131782

/-- `A028387(A130303(n+1)-A130296(n+1))` -/
def P14205132243566296763.Spec : Prop :=
  ∀ n, P14205132243566296763.a n = A131782 (n + 1)

end A131782

/-! ## A131782.P7612896540578403432

`A055461(n+1)+A095831(n+1)/A004736(n+2)`
-/

namespace A131782.P7612896540578403432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055461 (n + 1) : ℚ) + (A095831 (n + 1) : ℚ) / (A004736 (n + 2) : ℚ)

end

end A131782.P7612896540578403432

namespace A131782

/-- `A055461(n+1)+A095831(n+1)/A004736(n+2)` -/
def P7612896540578403432.Spec : Prop :=
  ∀ n, P7612896540578403432.a n = (A131782 (n + 1) : ℚ)

end A131782

/-!
# A131783: A000012 * (A004736 + A002260 - I).

The programs for A131783, the canonical program `A131783.P16711198060458241591` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131783 has offset 1).

The definition of A131783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131783.P9456800347123405804

`A193974(n)-1`
-/

namespace A131783.P9456800347123405804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - 1

end

end A131783.P9456800347123405804

namespace A131783

/-- `A193974(n)-1` -/
def P9456800347123405804.Spec : Prop :=
  ∀ n, P9456800347123405804.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P8309706305956403939

`floor(sinh(log(A205016(n+1))))`
-/

namespace A131783.P8309706305956403939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A205016 (n + 1) : ℝ))⌋

end

end A131783.P8309706305956403939

namespace A131783

/-- `floor(sinh(log(A205016(n+1))))` -/
def P8309706305956403939.Spec : Prop :=
  ∀ n, P8309706305956403939.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P10403908392583795198

`A271668(n)+round(sqrt(2*(n+1)))²-(2*n+1)`
-/

namespace A131783.P10403908392583795198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ))

end

end A131783.P10403908392583795198

namespace A131783

/-- `A271668(n)+round(sqrt(2*(n+1)))²-(2*n+1)` -/
def P10403908392583795198.Spec : Prop :=
  ∀ n, P10403908392583795198.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P16711198060458241591

`A049777(n+1)+A025581(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131783

/-- `A049777(n+1)+A025581(n)` -/
def P16711198060458241591.Spec : Prop :=
  ∀ n, P16711198060458241591.a n = A131783 (n + 1)

theorem P16711198060458241591.correct : P16711198060458241591.Spec := by
  intro n
  simp only [A131783, Nat.add_sub_cancel]

end A131783

/-! ## A131783.P15293539270102784147

`A128076(n+1)+A049780(n)`
-/

namespace A131783.P15293539270102784147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + A049780 n

end

end A131783.P15293539270102784147

namespace A131783

/-- `A128076(n+1)+A049780(n)` -/
def P15293539270102784147.Spec : Prop :=
  ∀ n, P15293539270102784147.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P1059462855013851734

`A365904(n+1)-A083920(n)`
-/

namespace A131783.P1059462855013851734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365904 (n + 1) - A083920 n

end

end A131783.P1059462855013851734

namespace A131783

/-- `A365904(n+1)-A083920(n)` -/
def P1059462855013851734.Spec : Prop :=
  ∀ n, P1059462855013851734.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P2980282129733176913

`A099375(n)+n-A112367(n)`
-/

namespace A131783.P2980282129733176913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + ((n : ℤ) - A112367 n)

end

end A131783.P2980282129733176913

namespace A131783

/-- `A099375(n)+n-A112367(n)` -/
def P2980282129733176913.Spec : Prop :=
  ∀ n, P2980282129733176913.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P15460431530203635406

`A128116(n+1)-A095831(n+1)`
-/

namespace A131783.P15460431530203635406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128116 (n + 1) - A095831 (n + 1)

end

end A131783.P15460431530203635406

namespace A131783

/-- `A128116(n+1)-A095831(n+1)` -/
def P15460431530203635406.Spec : Prop :=
  ∀ n, P15460431530203635406.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P3677977372343015219

`A143595(n+1)+A158822(n)-1`
-/

namespace A131783.P3677977372343015219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143595 (n + 1) + (A158822 n - 1)

end

end A131783.P3677977372343015219

namespace A131783

/-- `A143595(n+1)+A158822(n)-1` -/
def P3677977372343015219.Spec : Prop :=
  ∀ n, P3677977372343015219.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P17763624744482709938

`A131819(n+1)+A193592(n)-1`
-/

namespace A131783.P17763624744482709938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131819 (n + 1) + (A193592 n - 1)

end

end A131783.P17763624744482709938

namespace A131783

/-- `A131819(n+1)+A193592(n)-1` -/
def P17763624744482709938.Spec : Prop :=
  ∀ n, P17763624744482709938.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P8435489079964571882

`A131914(n+1)+A329854(n)-1`
-/

namespace A131783.P8435489079964571882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (n + 1) + (A329854 n - 1)

end

end A131783.P8435489079964571882

namespace A131783

/-- `A131914(n+1)+A329854(n)-1` -/
def P8435489079964571882.Spec : Prop :=
  ∀ n, P8435489079964571882.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P9930536859278635741

`A004736(n+1)+A049777(n+1)-1`
-/

namespace A131783.P9930536859278635741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A049777 (n + 1) - 1)

end

end A131783.P9930536859278635741

namespace A131783

/-- `A004736(n+1)+A049777(n+1)-1` -/
def P9930536859278635741.Spec : Prop :=
  ∀ n, P9930536859278635741.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P884865893405865438

`A120070(n+2)-(A049777(n+1)+1)`
-/

namespace A131783.P884865893405865438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) - (A049777 (n + 1) + 1)

end

end A131783.P884865893405865438

namespace A131783

/-- `A120070(n+2)-(A049777(n+1)+1)` -/
def P884865893405865438.Spec : Prop :=
  ∀ n, P884865893405865438.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P7552583482496444954

`A127738(n+1)+A095832(n+1)/2`
-/

namespace A131783.P7552583482496444954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127738 (n + 1) : ℚ) + (A095832 (n + 1) : ℚ) / 2

end

end A131783.P7552583482496444954

namespace A131783

/-- `A127738(n+1)+A095832(n+1)/2` -/
def P7552583482496444954.Spec : Prop :=
  ∀ n, P7552583482496444954.a n = (A131783 (n + 1) : ℚ)

end A131783

/-! ## A131783.P1848876114010950987

`A127738(n+1)+C(A004736(n+1), 2)`
-/

namespace A131783.P1848876114010950987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127738 (n + 1) + (Nat.choose (A004736 (n + 1)).toNat 2 : ℤ)

end

end A131783.P1848876114010950987

namespace A131783

/-- `A127738(n+1)+C(A004736(n+1), 2)` -/
def P1848876114010950987.Spec : Prop :=
  ∀ n, P1848876114010950987.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P14479172719412808732

`A193973(∑[2*n]%comp[∑[n]])-1`
-/

namespace A131783.P14479172719412808732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

end

end A131783.P14479172719412808732

namespace A131783

/-- `A193973(∑[2*n]%comp[∑[n]])-1` -/
def P14479172719412808732.Spec : Prop :=
  ∀ n, P14479172719412808732.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P16421426714081865726

`A193973(A061579(n))-1`
-/

namespace A131783.P16421426714081865726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 (A061579 n).toNat - 1

end

end A131783.P16421426714081865726

namespace A131783

/-- `A193973(A061579(n))-1` -/
def P16421426714081865726.Spec : Prop :=
  ∀ n, P16421426714081865726.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P5560976472693740518

`A049777(comp[∑[n]]+1)-1`
-/

namespace A131783.P5560976472693740518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A131783.P5560976472693740518

namespace A131783

/-- `A049777(comp[∑[n]]+1)-1` -/
def P5560976472693740518.Spec : Prop :=
  ∀ n, P5560976472693740518.a n = A131783 (n + 1)

end A131783

/-! ## A131783.P167781866613165351

`A205376(comp[∑[n]]+1)/8-1`
-/

namespace A131783.P167781866613165351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205376 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 8 - 1

end

end A131783.P167781866613165351

namespace A131783

/-- `A205376(comp[∑[n]]+1)/8-1` -/
def P167781866613165351.Spec : Prop :=
  ∀ n, P167781866613165351.a n = (A131783 (n + 1) : ℚ)

end A131783

/-! ## A131783.P13513605695297680485

`A023443(A193974(n))`
-/

namespace A131783.P13513605695297680485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A193974 n).toNat

end

end A131783.P13513605695297680485

namespace A131783

/-- `A023443(A193974(n))` -/
def P13513605695297680485.Spec : Prop :=
  ∀ n, P13513605695297680485.a n = A131783 (n + 1)

end A131783

/-!
# A131784: Triangle read by rows: (A004736 + A002260 - I) * A000012.

The programs for A131784, the canonical program `A131784.P3551853482120838731` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131784 has offset 1).

The definition of A131784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131784.P12614780041952989139

`(C(comp[∑[n]]-n, 2)-n)*(comp[∑[n]]-n)-1`
-/

namespace A131784.P12614780041952989139
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
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)) - 1

end

end A131784.P12614780041952989139

namespace A131784

/-- `(C(comp[∑[n]]-n, 2)-n)*(comp[∑[n]]-n)-1` -/
def P12614780041952989139.Spec : Prop :=
  ∀ n, P12614780041952989139.a n = A131784 (n + 1)

end A131784

/-! ## A131784.P3551853482120838731

`A063929(n+1)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A131784

/-- `A063929(n+1)-1` -/
def P3551853482120838731.Spec : Prop :=
  ∀ n, P3551853482120838731.a n = A131784 (n + 1)

theorem P3551853482120838731.correct : P3551853482120838731.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel]

end A131784

/-! ## A131784.P13119665305180237298

`A059036(n)+A055461(n+1)`
-/

namespace A131784.P13119665305180237298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A055461 (n + 1)

end

end A131784.P13119665305180237298

namespace A131784

/-- `A059036(n)+A055461(n+1)` -/
def P13119665305180237298.Spec : Prop :=
  ∀ n, P13119665305180237298.a n = A131784 (n + 1)

theorem P13119665305180237298.correct : P13119665305180237298.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel, A131784.P13119665305180237298.a, A131784.P3551853482120838731.a, A055461, A055461.P13333228572909301680.a, A059036, A059036.P14090632459187506294.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131784

/-! ## A131784.P14491734637473721666

`A095833(n+1)+A025581(n)`
-/

namespace A131784.P14491734637473721666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) + A025581 n

end

end A131784.P14491734637473721666

namespace A131784

/-- `A095833(n+1)+A025581(n)` -/
def P14491734637473721666.Spec : Prop :=
  ∀ n, P14491734637473721666.a n = A131784 (n + 1)

theorem P14491734637473721666.correct : P14491734637473721666.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel, A131784.P14491734637473721666.a, A131784.P3551853482120838731.a, A025581, A025581.P16112744757063613497.a, A063929, A063929.P16215468638992499542.a, A095833, A095833.P14663800684524425914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131784

/-! ## A131784.P13227406514921980308

`A131914(n+1)+A091435(n)`
-/

namespace A131784.P13227406514921980308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (n + 1) + A091435 n

end

end A131784.P13227406514921980308

namespace A131784

/-- `A131914(n+1)+A091435(n)` -/
def P13227406514921980308.Spec : Prop :=
  ∀ n, P13227406514921980308.a n = A131784 (n + 1)

end A131784

/-! ## A131784.P7818443147814367958

`A323956(n+1)+A294317(n)`
-/

namespace A131784.P7818443147814367958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (n + 1) + A294317 n

end

end A131784.P7818443147814367958

namespace A131784

/-- `A323956(n+1)+A294317(n)` -/
def P7818443147814367958.Spec : Prop :=
  ∀ n, P7818443147814367958.a n = A131784 (n + 1)

theorem P7818443147814367958.correct : P7818443147814367958.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel, A131784.P7818443147814367958.a, A131784.P3551853482120838731.a, A063929, A063929.P16215468638992499542.a, A294317, A294317.P6597418737474744620.a, A323956, A323956.P11197926771404492179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131784

/-! ## A131784.P4965613115126534303

`A140880(n)/A074909(n)-1`
-/

namespace A131784.P4965613115126534303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140880 n : ℚ) / (A074909 n : ℚ) - 1

end

end A131784.P4965613115126534303

namespace A131784

/-- `A140880(n)/A074909(n)-1` -/
def P4965613115126534303.Spec : Prop :=
  ∀ n, P4965613115126534303.a n = (A131784 (n + 1) : ℚ)

end A131784

/-! ## A131784.P7947544169517662973

`A059036(n)+A004736(n+1)²`
-/

namespace A131784.P7947544169517662973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A004736 (n + 1) ^ 2

end

end A131784.P7947544169517662973

namespace A131784

/-- `A059036(n)+A004736(n+1)²` -/
def P7947544169517662973.Spec : Prop :=
  ∀ n, P7947544169517662973.a n = A131784 (n + 1)

end A131784

/-! ## A131784.P12941856872939202755

`A127738(n+1)+A095832(n+1)`
-/

namespace A131784.P12941856872939202755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127738 (n + 1) + A095832 (n + 1)

end

end A131784.P12941856872939202755

namespace A131784

/-- `A127738(n+1)+A095832(n+1)` -/
def P12941856872939202755.Spec : Prop :=
  ∀ n, P12941856872939202755.a n = A131784 (n + 1)

theorem P12941856872939202755.correct : P12941856872939202755.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel, A131784.P12941856872939202755.a, A131784.P3551853482120838731.a, A063929, A063929.P16215468638992499542.a, A095832, A095832.P7706533872419013118.a, A127738, A127738.P13771444761042262108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131784

/-! ## A131784.P11503806390840677852

`A128076(n+1)+A095834(n+1)`
-/

namespace A131784.P11503806390840677852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + A095834 (n + 1)

end

end A131784.P11503806390840677852

namespace A131784

/-- `A128076(n+1)+A095834(n+1)` -/
def P11503806390840677852.Spec : Prop :=
  ∀ n, P11503806390840677852.a n = A131784 (n + 1)

theorem P11503806390840677852.correct : P11503806390840677852.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel, A131784.P11503806390840677852.a, A131784.P3551853482120838731.a, A063929, A063929.P16215468638992499542.a, A095834, A095834.P817103610530576889.a, A128076, A128076.P18422387938473498740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131784

/-! ## A131784.P17537528637076437688

`A128140(n+1)+A099375(n)-1`
-/

namespace A131784.P17537528637076437688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) + (A099375 n - 1)

end

end A131784.P17537528637076437688

namespace A131784

/-- `A128140(n+1)+A099375(n)-1` -/
def P17537528637076437688.Spec : Prop :=
  ∀ n, P17537528637076437688.a n = A131784 (n + 1)

end A131784

/-! ## A131784.P4869052874269879643

`A131782(n+1)+A128139(n)-1`
-/

namespace A131784.P4869052874269879643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131782 (n + 1) + (A128139 n - 1)

end

end A131784.P4869052874269879643

namespace A131784

/-- `A131782(n+1)+A128139(n)-1` -/
def P4869052874269879643.Spec : Prop :=
  ∀ n, P4869052874269879643.a n = A131784 (n + 1)

end A131784

/-! ## A131784.P7296207833725490905

`A128140(n+1)+2*A025581(n)`
-/

namespace A131784.P7296207833725490905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) + 2 * A025581 n

end

end A131784.P7296207833725490905

namespace A131784

/-- `A128140(n+1)+2*A025581(n)` -/
def P7296207833725490905.Spec : Prop :=
  ∀ n, P7296207833725490905.a n = A131784 (n + 1)

end A131784

/-! ## A131784.P4179969379701526576

`A120070(n+2)-(A059036(n)+2)`
-/

namespace A131784.P4179969379701526576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) - (A059036 n + 2)

end

end A131784.P4179969379701526576

namespace A131784

/-- `A120070(n+2)-(A059036(n)+2)` -/
def P4179969379701526576.Spec : Prop :=
  ∀ n, P4179969379701526576.a n = A131784 (n + 1)

theorem P4179969379701526576.correct : P4179969379701526576.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel, A131784.P4179969379701526576.a, A131784.P3551853482120838731.a, A059036, A059036.P14090632459187506294.a, A063929, A063929.P16215468638992499542.a, A120070, A120070.P8418683465396432844.a, A003991, A003991.P6365127437582401781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131784

/-! ## A131784.P6418960159583454952

`A003991(n+1)+A055461(n+1)-1`
-/

namespace A131784.P6418960159583454952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A055461 (n + 1) - 1)

end

end A131784.P6418960159583454952

namespace A131784

/-- `A003991(n+1)+A055461(n+1)-1` -/
def P6418960159583454952.Spec : Prop :=
  ∀ n, P6418960159583454952.a n = A131784 (n + 1)

theorem P6418960159583454952.correct : P6418960159583454952.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel, A131784.P6418960159583454952.a, A131784.P3551853482120838731.a, A003991, A003991.P6365127437582401781.a, A055461, A055461.P13333228572909301680.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131784

/-! ## A131784.P6509477112774237821

`A004736(n+1)+A095833(n+1)-1`
-/

namespace A131784.P6509477112774237821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A095833 (n + 1) - 1)

end

end A131784.P6509477112774237821

namespace A131784

/-- `A004736(n+1)+A095833(n+1)-1` -/
def P6509477112774237821.Spec : Prop :=
  ∀ n, P6509477112774237821.a n = A131784 (n + 1)

end A131784

/-! ## A131784.P17394097522506965434

`A063930(n+1)-(A057105(n+1)+1)`
-/

namespace A131784.P17394097522506965434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063930 (n + 1) - (A057105 (n + 1) + 1)

end

end A131784.P17394097522506965434

namespace A131784

/-- `A063930(n+1)-(A057105(n+1)+1)` -/
def P17394097522506965434.Spec : Prop :=
  ∀ n, P17394097522506965434.a n = A131784 (n + 1)

theorem P17394097522506965434.correct : P17394097522506965434.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel, A131784.P17394097522506965434.a, A131784.P3551853482120838731.a, A057105, A057105.P18280102893373418042.a, A063929, A063929.P16215468638992499542.a, A063930, A063930.P17082922277373076399.a, A002260, A002260.P9170571874073898642.a, A055461, A055461.P13333228572909301680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131784

/-! ## A131784.P9720462806944547794

`A095832(n+1)+A141429(n+1)-1`
-/

namespace A131784.P9720462806944547794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) + (A141429 (n + 1) - 1)

end

end A131784.P9720462806944547794

namespace A131784

/-- `A095832(n+1)+A141429(n+1)-1` -/
def P9720462806944547794.Spec : Prop :=
  ∀ n, P9720462806944547794.a n = A131784 (n + 1)

theorem P9720462806944547794.correct : P9720462806944547794.Spec := by
  intro n
  simp only [A131784, Nat.add_sub_cancel, A131784.P9720462806944547794.a, A131784.P3551853482120838731.a, A063929, A063929.P16215468638992499542.a, A095832, A095832.P7706533872419013118.a, A141429, A141429.P3778980955938111992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131784

/-! ## A131784.P10105914028270449384

`A143956(n+1)+A158841(n+1)-1`
-/

namespace A131784.P10105914028270449384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143956 (n + 1) + (A158841 (n + 1) - 1)

end

end A131784.P10105914028270449384

namespace A131784

/-- `A143956(n+1)+A158841(n+1)-1` -/
def P10105914028270449384.Spec : Prop :=
  ∀ n, P10105914028270449384.a n = A131784 (n + 1)

end A131784

/-! ## A131784.P4692401389753561074

`A205016(n+1)-(A141429(n+1)+1)`
-/

namespace A131784.P4692401389753561074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205016 (n + 1) - (A141429 (n + 1) + 1)

end

end A131784.P4692401389753561074

namespace A131784

/-- `A205016(n+1)-(A141429(n+1)+1)` -/
def P4692401389753561074.Spec : Prop :=
  ∀ n, P4692401389753561074.a n = A131784 (n + 1)

end A131784

/-!
# A131785: a(n) = A131770( n*(n+1)/2 ) for n>=0.

The programs for A131785, there is no canonical definition to state claims against.
-/

/-! ## A131785.P17797336078347311900

`A131770(n*(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131785.P17797336078347311900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131770 (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2)).toNat

end

end A131785.P17797336078347311900

/-! ## A131785.P11271669917665417888

`A131771(∑[n]+n)`
-/

namespace A131785.P11271669917665417888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131771 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A131785.P11271669917665417888

/-! ## A131785.P3398408069965499715

`record[char[∑[n-1]]*A131771(n)]`
-/

namespace A131785.P3398408069965499715
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A131771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131785.P3398408069965499715

/-! ## A131785.P16667370100396486306

`A000027(A131770(∑[n]))`
-/

namespace A131785.P16667370100396486306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A131770 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A131785.P16667370100396486306

/-!
# A131786: Repeated terms in A131771; a(n) = A131770( (n+1)*(n+2)/2 - 1 ) for n>=0.

The programs for A131786, there is no canonical definition to state claims against.
-/

/-! ## A131786.P5576760406839495936

`A131770((n+1)*(n+2)/2-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131786.P5576760406839495936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131770 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2 - 1)).toNat

end

end A131786.P5576760406839495936

/-! ## A131786.P8651406564122019337

`record[∑[A131771(n)]/A039757(n)]`
-/

namespace A131786.P8651406564122019337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131771 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A039757 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131786.P8651406564122019337

/-! ## A131786.P5022842803828872936

`record[∑[A131771(n)]/A093561(n)]`
-/

namespace A131786.P5022842803828872936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131771 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A093561 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131786.P5022842803828872936

/-! ## A131786.P4295838769197986748

`record[∑[A131771(n)]/A093563(n)]`
-/

namespace A131786.P4295838769197986748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131771 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A093563 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131786.P4295838769197986748

/-!
# A131787: a(n) = a(n-1) + (number of terms, from among the first (n-1) terms of the sequence, which are coprime to the n-th Fibonacci number).

The programs for A131787, there is no canonical definition to state claims against.
-/

/-! ## A131787.P17723048459994105376

`A033104(3*(n+1))+A001221(A035064(3*n+5))`
-/

namespace A131787.P17723048459994105376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033104 (3 * (n + 1)) + A001221 (A035064 (3 * n + 5)).toNat

end

end A131787.P17723048459994105376

/-! ## A131787.P18237935410592149001

`∑[A000120(A294800(n))]`
-/

namespace A131787.P18237935410592149001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A294800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131787.P18237935410592149001

/-! ## A131787.P3724927535419209426

`∑[A000120(A089404(n+1))]`
-/

namespace A131787.P3724927535419209426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A089404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131787.P3724927535419209426

/-! ## A131787.P15909530177158959997

`A091863(∑[A078510(2*(n+1))])`
-/

namespace A131787.P15909530177158959997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131787.P15909530177158959997

/-!
# A131789: The length of the n-th run of identical consecutive values in the sequence A000005, where A000005(k) is the number of divisors of k.

The programs for A131789, the canonical program `A131789.P1774439132879897327` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131789 has offset 1).

The definition of A131789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131789.P1774439132879897327

`Δ[A083794(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A131789

/-- `Δ[A083794(n+1)]` -/
def P1774439132879897327.Spec : Prop :=
  ∀ n, P1774439132879897327.a n = A131789 (n + 1)

theorem P1774439132879897327.correct : P1774439132879897327.Spec := by
  intro n
  simp only [A131789, Nat.add_sub_cancel]

end A131789

/-! ## A131789.P4294132332128426274

`Δ[comp[A005237(n+1)]]`
-/

namespace A131789.P4294132332128426274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A131789.P4294132332128426274

namespace A131789

/-- `Δ[comp[A005237(n+1)]]` -/
def P4294132332128426274.Spec : Prop :=
  ∀ n, P4294132332128426274.a n = A131789 (n + 1)

end A131789

/-! ## A131789.P16948841896547607075

`A083794(n+2)-A083794(n+1)`
-/

namespace A131789.P16948841896547607075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 2) - A083794 (n + 1)

end

end A131789.P16948841896547607075

namespace A131789

/-- `A083794(n+2)-A083794(n+1)` -/
def P16948841896547607075.Spec : Prop :=
  ∀ n, P16948841896547607075.a n = A131789 (n + 1)

theorem P16948841896547607075.correct : P16948841896547607075.Spec := by
  intro n
  simp only [A131789, Nat.add_sub_cancel, A131789.P16948841896547607075.a, A131789.P1774439132879897327.f1, A131789.P1774439132879897327.a, SequenceMachineLib.memo_apply]

end A131789

/-!
# A131791: Triangle read by rows of 2^n terms for n>=0: let S(n) denote the initial 2^n terms of the partial sums of row n; starting with a single '1' in row 0, generate row n+1 by concatenating S(n) with the terms of S(n) when read in reverse order.

The programs for A131791, there is no canonical definition to state claims against.
-/

/-! ## A131791.P6749337783255131886

`A008302(A356991(n+2)%A207669(3*n+4))`
-/

namespace A131791.P6749337783255131886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (Int.tmod (A356991 (n + 2)) (A207669 (3 * n + 4))).toNat

end

end A131791.P6749337783255131886

/-! ## A131791.P13761298515468940285

`A008302(A178787(n)%A108373(3*n+2))`
-/

namespace A131791.P13761298515468940285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (Int.tmod (A178787 n) (A108373 (3 * n + 2))).toNat

end

end A131791.P13761298515468940285

/-! ## A131791.P4895478242905143838

`A175470(A147988(2*(n+1)))`
-/

namespace A131791.P4895478242905143838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175470 (A147988 (2 * (n + 1))).toNat

end

end A131791.P4895478242905143838

/-! ## A131791.P13456733684328818937

`A008302(∑[A059841(floor(2^(n+1)/(n+1)))])`
-/

namespace A131791.P13456733684328818937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131791.P13456733684328818937

/-! ## A131791.P3370520409645490461

`A068063(A059674(∑[A153152(n)]))`
-/

namespace A131791.P3370520409645490461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A059674 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A131791.P3370520409645490461

/-!
# A131792: Main diagonal of triangle A131791: a(n) = A131791(n,n) for n>=0.

The programs for A131792, there is no canonical definition to state claims against.
-/

/-! ## A131792.P140903691363684165

`A131791(∑[2^n-1])`
-/

namespace A131792.P140903691363684165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131791 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131792.P140903691363684165

/-! ## A131792.P14406286451803000450

`A131791(or(abs(1-n), 2^n))%A237742(n+1)`
-/

namespace A131792.P14406286451803000450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131791 (Int.lor |1 - (n : ℤ)| (2 ^ n : ℤ)).toNat) (A237742 (n + 1))

end

end A131792.P14406286451803000450

/-! ## A131792.P11717559767013880667

`A028310(A144904(n)-A047753(n+1))`
-/

namespace A131792.P11717559767013880667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A144904 n - A047753 (n + 1)).toNat

end

end A131792.P11717559767013880667

/-! ## A131792.P1499060430296989345

`A028310(A144904(n)-A338652(n+1))`
-/

namespace A131792.P1499060430296989345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A144904 n - A338652 (n + 1)).toNat

end

end A131792.P1499060430296989345

/-! ## A131792.P1645972168980937839

`xor(A010051(A144904(n+2)), A144904(n))`
-/

namespace A131792.P1645972168980937839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A144904 (n + 2)).toNat) (A144904 n)

end

end A131792.P1645972168980937839

/-!
# A131793: 3 odds, 3 evens.

The programs for A131793, the canonical program `A131793.P840166825862911967` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131793 has offset 1).

The definition of A131793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131793.P840166825862911967

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=2, a(4)=4, a(5)=6, a(6)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131793

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P840166825862911967.Spec : Prop :=
  ∀ n, P840166825862911967.a n = A131793 (n + 1)

theorem P840166825862911967.correct : P840166825862911967.Spec := by
  intro n
  simp only [A131793, Nat.add_sub_cancel]

end A131793

/-! ## A131793.P5794255544763442641

`2*(3*floor(n/6)+n%3+1)-floor((n+3)/3)%2`
-/

namespace A131793.P5794255544763442641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * ⌊(n : ℚ) / 6⌋ + ((n % 3 : ℕ) : ℤ) + 1) - Int.tmod ⌊(n + 3 : ℚ) / 3⌋ 2

end

end A131793.P5794255544763442641

namespace A131793

/-- `2*(3*floor(n/6)+n%3+1)-floor((n+3)/3)%2` -/
def P5794255544763442641.Spec : Prop :=
  ∀ n, P5794255544763442641.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P3302891610551232394

`xor(1, n%3+n)`
-/

namespace A131793.P3302891610551232394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n % 3 + n)

end

end A131793.P3302891610551232394

namespace A131793

/-- `xor(1, n%3+n)` -/
def P3302891610551232394.Spec : Prop :=
  ∀ n, (P3302891610551232394.a n : ℤ) = A131793 (n + 1)

end A131793

/-! ## A131793.P15804302729765187800

`xor(1, n--n%3)`
-/

namespace A131793.P15804302729765187800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - Int.tmod (-(n : ℤ)) 3)

end

end A131793.P15804302729765187800

namespace A131793

/-- `xor(1, n--n%3)` -/
def P15804302729765187800.Spec : Prop :=
  ∀ n, P15804302729765187800.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P17391217615677670157

`a(n-3)+gcd(5, a(n-3)%2)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A131793.P17391217615677670157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 3) + Nat.gcd 5 (a (n - 3) % 2)

end

end A131793.P17391217615677670157

namespace A131793

/-- `a(n-3)+gcd(5, a(n-3)%2)` -/
def P17391217615677670157.Spec : Prop :=
  ∀ n, (P17391217615677670157.a n : ℤ) = A131793 (n + 1)

end A131793

/-! ## A131793.P12229178457508705353

`xor(1, A010872(n)+n)`
-/

namespace A131793.P12229178457508705353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A010872 n + (n : ℤ))

end

end A131793.P12229178457508705353

namespace A131793

/-- `xor(1, A010872(n)+n)` -/
def P12229178457508705353.Spec : Prop :=
  ∀ n, P12229178457508705353.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P15417022594318075590

`A065168(a(n-3)+3)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A131793.P15417022594318075590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A065168 (a (n - 3) + 3).toNat

end

end A131793.P15417022594318075590

namespace A131793

/-- `A065168(a(n-3)+3)` -/
def P15417022594318075590.Spec : Prop :=
  ∀ n, P15417022594318075590.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P14280307126339074521

`A065190(A143097(n+1))`
-/

namespace A131793.P14280307126339074521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A143097 (n + 1)).toNat

end

end A131793.P14280307126339074521

namespace A131793

/-- `A065190(A143097(n+1))` -/
def P14280307126339074521.Spec : Prop :=
  ∀ n, P14280307126339074521.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P990686312027801697

`A004442(A010872(n)+n)`
-/

namespace A131793.P990686312027801697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A010872 n + (n : ℤ)).toNat

end

end A131793.P990686312027801697

namespace A131793

/-- `A004442(A010872(n)+n)` -/
def P990686312027801697.Spec : Prop :=
  ∀ n, P990686312027801697.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P9976203187641673412

`xor(A057427(n), A143097(n+1))`
-/

namespace A131793.P9976203187641673412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A143097 (n + 1))

end

end A131793.P9976203187641673412

namespace A131793

/-- `xor(A057427(n), A143097(n+1))` -/
def P9976203187641673412.Spec : Prop :=
  ∀ n, P9976203187641673412.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P17818839265563142185

`xor(A131042(n+1), A131719(n))`
-/

namespace A131793.P17818839265563142185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131042 (n + 1)) (A131719 n)

end

end A131793.P17818839265563142185

namespace A131793

/-- `xor(A131042(n+1), A131719(n))` -/
def P17818839265563142185.Spec : Prop :=
  ∀ n, P17818839265563142185.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P1074505941305901124

`A004442(A080425(A064429(n))+n)`
-/

namespace A131793.P1074505941305901124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A080425 (A064429 n).toNat + (n : ℤ)).toNat

end

end A131793.P1074505941305901124

namespace A131793

/-- `A004442(A080425(A064429(n))+n)` -/
def P1074505941305901124.Spec : Prop :=
  ∀ n, P1074505941305901124.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P13626894848239959082

`A143097(n+1)+A062157(A143097(n+1)-1)`
-/

namespace A131793.P13626894848239959082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (n + 1) + A062157 (A143097 (n + 1) - 1).toNat

end

end A131793.P13626894848239959082

namespace A131793

/-- `A143097(n+1)+A062157(A143097(n+1)-1)` -/
def P13626894848239959082.Spec : Prop :=
  ∀ n, P13626894848239959082.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P7556066024031077843

`A373546(n+2)-1`
-/

namespace A131793.P7556066024031077843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373546 (n + 2) - 1

end

end A131793.P7556066024031077843

namespace A131793

/-- `A373546(n+2)-1` -/
def P7556066024031077843.Spec : Prop :=
  ∀ n, P7556066024031077843.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P34850691750161099

`xor(1, A236348(n+1))`
-/

namespace A131793.P34850691750161099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A236348 (n + 1))

end

end A131793.P34850691750161099

namespace A131793

/-- `xor(1, A236348(n+1))` -/
def P34850691750161099.Spec : Prop :=
  ∀ n, P34850691750161099.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P1246520474731804516

`A004442(A236348(n+1))`
-/

namespace A131793.P1246520474731804516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A236348 (n + 1)).toNat

end

end A131793.P1246520474731804516

namespace A131793

/-- `A004442(A236348(n+1))` -/
def P1246520474731804516.Spec : Prop :=
  ∀ n, P1246520474731804516.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P1579130299669124380

`A004442(n+2-A080425(n+1))`
-/

namespace A131793.P1579130299669124380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n + 2 : ℤ) - A080425 (n + 1)).toNat

end

end A131793.P1579130299669124380

namespace A131793

/-- `A004442(n+2-A080425(n+1))` -/
def P1579130299669124380.Spec : Prop :=
  ∀ n, P1579130299669124380.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P14955653024552274099

`A004442(A064429(n+2)-1)`
-/

namespace A131793.P14955653024552274099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A064429 (n + 2) - 1).toNat

end

end A131793.P14955653024552274099

namespace A131793

/-- `A004442(A064429(n+2)-1)` -/
def P14955653024552274099.Spec : Prop :=
  ∀ n, P14955653024552274099.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P15652217713075320227

`A366619(A130508(n+2))-1`
-/

namespace A131793.P15652217713075320227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366619 (A130508 (n + 2)).toNat - 1

end

end A131793.P15652217713075320227

namespace A131793

/-- `A366619(A130508(n+2))-1` -/
def P15652217713075320227.Spec : Prop :=
  ∀ n, P15652217713075320227.a n = A131793 (n + 1)

end A131793

/-! ## A131793.P13920833021580194300

`A004442(A080782(n+3)-2)`
-/

namespace A131793.P13920833021580194300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A080782 (n + 3) - 2).toNat

end

end A131793.P13920833021580194300

namespace A131793

/-- `A004442(A080782(n+3)-2)` -/
def P13920833021580194300.Spec : Prop :=
  ∀ n, P13920833021580194300.a n = A131793 (n + 1)

end A131793

/-!
# A131794: Expansion of q * psi(q) * psi(q^15) / (psi(q^3) * psi(q^5)) in powers of q where psi() is a Ramanujan theta function.

The programs for A131794, there is no canonical definition to state claims against.
-/

/-! ## A131794.P9268145339238589739

`-A131797(n+1)`
-/

namespace A131794.P9268145339238589739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131797 (n + 1)

end

end A131794.P9268145339238589739

/-! ## A131794.P9329752870542507572

`A131796(n+1)`
-/

namespace A131794.P9329752870542507572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131796 (n + 1)

end

end A131794.P9329752870542507572

/-! ## A131794.P14730463009500226651

`Δ[a(n-1)-A131797(n)]` with `a(0)=1`
-/

namespace A131794.P14730463009500226651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A131797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131794.P14730463009500226651

/-! ## A131794.P5018415834523947220

`A033999(n)*A145726(n+1)`
-/

namespace A131794.P5018415834523947220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145726 (n + 1)

end

end A131794.P5018415834523947220

/-! ## A131794.P9866064340081899786

`A000038(n+1)-A131797(n+1)`
-/

namespace A131794.P9866064340081899786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A131797 (n + 1)

end

end A131794.P9866064340081899786

/-! ## A131794.P7345023712874187739

`A094023(n+1)-(A131797(n+1)+A123630(n+1))`
-/

namespace A131794.P7345023712874187739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 (n + 1) - (A131797 (n + 1) + A123630 (n + 1))

end

end A131794.P7345023712874187739

/-! ## A131794.P7129528498279539071

`Δ[-∑[A131797(n)]]`
-/

namespace A131794.P7129528498279539071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131794.P7129528498279539071

/-! ## A131794.P3659398780237085564

`A033999(n)*A145727(n+1)`
-/

namespace A131794.P3659398780237085564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145727 (n + 1)

end

end A131794.P3659398780237085564

/-! ## A131794.P18032539219636795628

`A000007(n+1)-A131797(n+1)`
-/

namespace A131794.P18032539219636795628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A131797 (n + 1)

end

end A131794.P18032539219636795628

/-! ## A131794.P11551234361769408016

`A033999(n+1)*A145782(n+1)`
-/

namespace A131794.P11551234361769408016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A145782 (n + 1)

end

end A131794.P11551234361769408016

/-! ## A131794.P14177166051556871298

`A145727(n+1)*A165326(n+1)`
-/

namespace A131794.P14177166051556871298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145727 (n + 1) * A165326 (n + 1)

end

end A131794.P14177166051556871298

/-! ## A131794.P14497675274102167470

`A131797(n+1)*A153881(n+2)`
-/

namespace A131794.P14497675274102167470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 (n + 1) * A153881 (n + 2)

end

end A131794.P14497675274102167470

/-! ## A131794.P7627775751142780710

`A145726(n+1)-(A145727(n+1)+A131797(n+1))`
-/

namespace A131794.P7627775751142780710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145726 (n + 1) - (A145727 (n + 1) + A131797 (n + 1))

end

end A131794.P7627775751142780710

/-! ## A131794.P17884087428227751409

`A145726(n+1)+A145782(n+1)-A131797(n+1)`
-/

namespace A131794.P17884087428227751409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145726 (n + 1) + (A145782 (n + 1) - A131797 (n + 1))

end

end A131794.P17884087428227751409

/-! ## A131794.P10291384912862341945

`A145783(n+1)-(A145785(n+1)+A131797(n+1))`
-/

namespace A131794.P10291384912862341945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145783 (n + 1) - (A145785 (n + 1) + A131797 (n + 1))

end

end A131794.P10291384912862341945

/-!
# A131795: G.f.: Product_{k>0} (1-x^(4k-1)) / (1-x^(4k-2)).

The programs for A131795, there is no canonical definition to state claims against.
-/

/-! ## A131795.P5909342721127046524

`A033999(n)*A398724(n)`
-/

namespace A131795.P5909342721127046524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A398724 n

end

end A131795.P5909342721127046524

/-! ## A131795.P3542185182913490564

`A036016(n)/A258741(n)*A398724(n)`
-/

namespace A131795.P3542185182913490564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036016 n : ℚ) / (A258741 n : ℚ) * (A398724 n : ℚ)

end

end A131795.P3542185182913490564

/-! ## A131795.P10801344461534395810

`A132968(n)+A010054(A024735(n+1))`
-/

namespace A131795.P10801344461534395810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132968 n + A010054 (A024735 (n + 1)).toNat

end

end A131795.P10801344461534395810

/-! ## A131795.P1457462601819030144

`A132968(n)+A010815(A282632(n+1))`
-/

namespace A131795.P1457462601819030144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132968 n + A010815 (A282632 (n + 1)).toNat

end

end A131795.P1457462601819030144

/-! ## A131795.P5229182342633988314

`A132968(n)+A010054(A309874(n+2))`
-/

namespace A131795.P5229182342633988314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132968 n + A010054 (A309874 (n + 2)).toNat

end

end A131795.P5229182342633988314

/-!
# A131796: Expansion of chi(-q^3)^2 * chi(-q^5)^2 / (chi(-q) * chi(-q^15)) in powers of q where chi() is a Ramanujan theta function.

The programs for A131796, there is no canonical definition to state claims against.
-/

/-! ## A131796.P15910064223154068182

`(-1)^n*A145782(n)`
-/

namespace A131796.P15910064223154068182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A145782 n

end

end A131796.P15910064223154068182

/-! ## A131796.P432578207267678898

`A131794((2*n)%(n+1)+1)`
-/

namespace A131796.P432578207267678898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131794 (2 * n % (n + 1) + 1)

end

end A131796.P432578207267678898

/-! ## A131796.P12425092803081701305

`A131794(A028310(n))`
-/

namespace A131796.P12425092803081701305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131794 (A028310 n).toNat

end

end A131796.P12425092803081701305

/-! ## A131796.P12755232387062383895

`A131794(A000007(n)+n)`
-/

namespace A131796.P12755232387062383895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131794 (A000007 n + (n : ℤ)).toNat

end

end A131796.P12755232387062383895

/-! ## A131796.P7180382950508355544

`A000038(n)-A131797(n)`
-/

namespace A131796.P7180382950508355544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A131797 n

end

end A131796.P7180382950508355544

/-! ## A131796.P5755072868577430037

`A145727(n)*A165326(n)`
-/

namespace A131796.P5755072868577430037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145727 n * A165326 n

end

end A131796.P5755072868577430037

/-! ## A131796.P7181999748472159958

`A145782(n)/A033999(n)`
-/

namespace A131796.P7181999748472159958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145782 n : ℚ) / (A033999 n : ℚ)

end

end A131796.P7181999748472159958

/-! ## A131796.P17602526247184625118

`A131797(n)*A153881(n+1)`
-/

namespace A131796.P17602526247184625118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 n * A153881 (n + 1)

end

end A131796.P17602526247184625118

/-! ## A131796.P15615987444207357867

`2*A000007(n)-A131797(n)`
-/

namespace A131796.P15615987444207357867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A131797 n

end

end A131796.P15615987444207357867

/-! ## A131796.P8048946786956442726

`∏{e}[A008578(n+1), A131794(n*#)]`
-/

namespace A131796.P8048946786956442726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A131794 (n * Nat.factorization (f1 n).natAbs p)

end

end A131796.P8048946786956442726

/-! ## A131796.P16230309757931257555

`∏{e}[A008578(n+1), A131794(n)/#]`
-/

namespace A131796.P16230309757931257555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A131794 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A131796.P16230309757931257555

/-! ## A131796.P932206714962105532

`A131797(n)*A131797(n²%(n+1))`
-/

namespace A131796.P932206714962105532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 n * A131797 (n ^ 2 % (n + 1))

end

end A131796.P932206714962105532

/-! ## A131796.P1157383506864640407

`A000122(A000122(n)+n)-A131797(n)`
-/

namespace A131796.P1157383506864640407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A131797 n

end

end A131796.P1157383506864640407

/-! ## A131796.P9130663432879344377

`A145727(n)+A145782(n)-A131797(n)`
-/

namespace A131796.P9130663432879344377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145727 n + (A145782 n - A131797 n)

end

end A131796.P9130663432879344377

/-! ## A131796.P2582085205923255135

`A145782(n)*A165326(n+1)`
-/

namespace A131796.P2582085205923255135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145782 n * A165326 (n + 1)

end

end A131796.P2582085205923255135

/-! ## A131796.P8008934988554454290

`A145782(n)/A165326(A165326(n)+n)`
-/

namespace A131796.P8008934988554454290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145782 n : ℚ) / (A165326 (A165326 n + (n : ℤ)).toNat : ℚ)

end

end A131796.P8008934988554454290

/-! ## A131796.P13960574373022871251

`A131797(n)*A165326(2*n)`
-/

namespace A131796.P13960574373022871251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 n * A165326 (2 * n)

end

end A131796.P13960574373022871251

/-! ## A131796.P3139325069599911868

`A131794(A233583(n+1))`
-/

namespace A131796.P3139325069599911868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131794 (A233583 (n + 1)).toNat

end

end A131796.P3139325069599911868

/-!
# A131797: Expansion of eta(q) * eta(q^15) / (eta(q^6) * eta(q^10)) in powers of q.

The programs for A131797, there is no canonical definition to state claims against.
-/

/-! ## A131797.P2174844713834864154

`(-1)^n*A145727(n)`
-/

namespace A131797.P2174844713834864154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A145727 n

end

end A131797.P2174844713834864154

/-! ## A131797.P17801191950091937879

`A000038(n)-A131796(n)`
-/

namespace A131797.P17801191950091937879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A131796 n

end

end A131797.P17801191950091937879

/-! ## A131797.P2348331892449246801

`A145782(n)*A165326(n)`
-/

namespace A131797.P2348331892449246801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145782 n * A165326 n

end

end A131797.P2348331892449246801

/-! ## A131797.P2960871146389659041

`A145727(n)/A033999(n)`
-/

namespace A131797.P2960871146389659041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145727 n : ℚ) / (A033999 n : ℚ)

end

end A131797.P2960871146389659041

/-! ## A131797.P10287768111830235236

`A131796(n)*A153881(n+1)`
-/

namespace A131797.P10287768111830235236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131796 n * A153881 (n + 1)

end

end A131797.P10287768111830235236

/-! ## A131797.P864874092808347543

`A000122(A000122(n)+n)-A131796(n)`
-/

namespace A131797.P864874092808347543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A131796 n

end

end A131797.P864874092808347543

/-! ## A131797.P8569738623241867943

`A000122(or(n, A000122(n)))-A131796(n)`
-/

namespace A131797.P8569738623241867943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.lor (n : ℤ) (A000122 n)).toNat - A131796 n

end

end A131797.P8569738623241867943

/-! ## A131797.P5595160070905454393

`∏{e}[A008578(n+1), A167193(#)-A131794(n)]`
-/

namespace A131797.P5595160070905454393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A167193 (Nat.factorization (f1 n).natAbs p) - A131794 n)

end

end A131797.P5595160070905454393

/-! ## A131797.P12763625196872890036

`A002483(A113925(n+1)+n+1)-A131796(n)`
-/

namespace A131797.P12763625196872890036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 (A113925 (n + 1) + (n + 1 : ℤ)).toNat - A131796 n

end

end A131797.P12763625196872890036

/-! ## A131797.P17599098978942553520

`A145727(n)*A165326(n+1)`
-/

namespace A131797.P17599098978942553520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145727 n * A165326 (n + 1)

end

end A131797.P17599098978942553520

/-! ## A131797.P3474532616928031833

`A002483(A003642(n+2))-A131796(n)`
-/

namespace A131797.P3474532616928031833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 (A003642 (n + 2)).toNat - A131796 n

end

end A131797.P3474532616928031833

/-! ## A131797.P4547556818207393692

`A145727(n)/A165326(A165326(n)+n)`
-/

namespace A131797.P4547556818207393692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145727 n : ℚ) / (A165326 (A165326 n + (n : ℤ)).toNat : ℚ)

end

end A131797.P4547556818207393692

/-! ## A131797.P5747105521269750667

`A094023(n)*A145727(n)/A145728(n)`
-/

namespace A131797.P5747105521269750667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094023 n * A145727 n : ℚ) / (A145728 n : ℚ)

end

end A131797.P5747105521269750667

/-! ## A131797.P15895261872423825700

`A131796(n)*A165326(2*n)`
-/

namespace A131797.P15895261872423825700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131796 n * A165326 (2 * n)

end

end A131797.P15895261872423825700

/-! ## A131797.P921437826837722256

`A033999(A103517(n)-1)*A131796(n)`
-/

namespace A131797.P921437826837722256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A103517 n - 1).toNat * A131796 n

end

end A131797.P921437826837722256

/-! ## A131797.P159675765312155088

`A131796(n)/A033999(A103517(n)+1)`
-/

namespace A131797.P159675765312155088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131796 n : ℚ) / (A033999 (A103517 n + 1).toNat : ℚ)

end

end A131797.P159675765312155088

/-! ## A131797.P7895311498512206176

`A002483(n²+1)-A131796(n)`
-/

namespace A131797.P7895311498512206176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 (n ^ 2 + 1) - A131796 n

end

end A131797.P7895311498512206176

/-!
# A131798: a(n) = the maximum value from among (d(n+1),d(n+2),d(n+3),...,d(2n)), where d(m) is the number of positive divisors of m.

The programs for A131798, there is no canonical definition to state claims against.
-/

/-! ## A131798.P15919697481064457809

`A068509(2*(n+1))`
-/

namespace A131798.P15919697481064457809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (2 * (n + 1))

end

end A131798.P15919697481064457809

/-! ## A131798.P15119404375247455443

`A068509(∑[gcd(3, n%2)])%17`
-/

namespace A131798.P15119404375247455443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068509 (∑ j ∈ Finset.range (n + 1), f1 j)) 17

end

end A131798.P15119404375247455443

/-! ## A131798.P18359414563856665560

`A068509(Δ[A002378(n)])%38`
-/

namespace A131798.P18359414563856665560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068509 (f1 (n + 1) - f1 n).toNat) 38

end

end A131798.P18359414563856665560

/-! ## A131798.P1797035542889916958

`A002183(A261100(2*(n+1)))`
-/

namespace A131798.P1797035542889916958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (A261100 (2 * (n + 1))).toNat

end

end A131798.P1797035542889916958

/-! ## A131798.P12600414009485758052

`A000005(A329004(2*(n+1)))`
-/

namespace A131798.P12600414009485758052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329004 (2 * (n + 1))).toNat

end

end A131798.P12600414009485758052

/-! ## A131798.P5419162132294653979

`∏{e}[A329004(2*(n+1)), A020725(#)]`
-/

namespace A131798.P5419162132294653979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020725 (Nat.factorization (f1 n).natAbs p)

end

end A131798.P5419162132294653979

/-!
# A131799: Number of partitions of n into parts that are squares or cubes.

The programs for A131799, there is no canonical definition to state claims against.
-/

/-! ## A131799.P18137727553645322055

`A078635(n)+A010815((3*(n+1))²)`
-/

namespace A131799.P18137727553645322055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078635 n + A010815 ((3 * (n + 1)) ^ 2)

end

end A131799.P18137727553645322055

/-! ## A131799.P5697848697215658993

`A078635(n)-A184198(Δ[A346132(n+1)])`
-/

namespace A131799.P5697848697215658993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078635 n - A184198 (f1 (n + 1) - f1 n).toNat

end

end A131799.P5697848697215658993

